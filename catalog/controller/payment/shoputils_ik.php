<?php
/*
 * Shoputils
 *
 * ПРИМЕЧАНИЕ К ЛИЦЕНЗИОННОМУ СОГЛАШЕНИЮ
 *
 * Этот файл связан лицензионным соглашением, которое можно найти в архиве,
 * вместе с этим файлом. Файл лицензии называется: LICENSE.1.5.x.RUS.txt
 * Так же лицензионное соглашение можно найти по адресу:
 * http://opencart.shoputils.ru/LICENSE.1.5.x.RUS.txt
 * 
 * =================================================================
 * OPENCART 1.5.x ПРИМЕЧАНИЕ ПО ИСПОЛЬЗОВАНИЮ
 * =================================================================
 *  Этот файл предназначен для Opencart 1.5.x. Shoputils не
 *  гарантирует правильную работу этого расширения на любой другой 
 *  версии Opencart, кроме Opencart 1.5.x. 
 *  Shoputils не поддерживает программное обеспечение для других 
 *  версий Opencart.
 * =================================================================
*/

class ControllerPaymentShoputilsIk extends Controller {
    private $order;
    private $log;
    private $shoputils = 2907;
    private static $LOG_OFF = 0;
    private static $LOG_SHORT = 1;
    private static $LOG_FULL = 2;

    public function __construct($registry)
    {
        parent::__construct($registry);
        $this->language->load('payment/shoputils_ik');
    }

    protected function index()
    {
        $this->data['text_confirm_title'] = $this->language->get('text_confirm_title');
        $this->data['button_confirm'] = $this->language->get('button_confirm');

        $this->data['continue'] = $this->url->link('checkout/success', '', 'SSL');

        $this->load->model('checkout/order');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        $ik_payment_amount = number_format($this->currency->format($order_info['total'], $this->config->get('shoputils_ik_currency'), $this->currency->getValue($this->config->get('shoputils_ik_currency')), FALSE), 2, '.', '');
        $ik_payment_id = $this->session->data['order_id'];
        $ik_payment_desc = sprintf($this->language->get('text_ik_payment_desc'), $this->session->data['order_id']);
        $ik_shop_id = $this->config->get('shoputils_ik_shop_id');
        $ik_cur = $this->config->get('shoputils_ik_currency');

        $this->_setData(array(
                             'action'             => 'https://sci.interkassa.com', //http://www.interkassa.com/lib/payment.php
                             'ik_shop_id'         => $ik_shop_id,
                             'ik_payment_amount'  => $ik_payment_amount,
                             'ik_payment_id'      => $ik_payment_id,
                             'ik_cur'             => $ik_cur,
                             'ik_payment_desc'    => $ik_payment_desc,
                             'ik_sign_hash'       => base64_encode(md5($ik_payment_amount . ':' .
                                                                       $ik_shop_id . ':' .
                                                                       $ik_cur . ':' .
                                                                       $ik_payment_desc . ':' .
                                                                       $ik_payment_id . ':' .
                                                                       $this->config->get('shoputils_ik_sign_hash'), true))
                        ));

        $this->id = 'payment';

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/shoputils_ik.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/payment/shoputils_ik.tpl';
        } else {
            $this->template = 'default/template/payment/shoputils_ik.tpl';
        }

        $this->render();
    }

    public function status()
    {
        $this->logWrite('StatusURL: ', self::$LOG_FULL);
        $this->logWrite('  POST:' . var_export($this->request->post, true), self::$LOG_FULL);
        $this->logWrite('  GET:' . var_export($this->request->get, true), self::$LOG_FULL);

        if (!$this->validate(true)) {
            return;
        }

        if ($this->request->post['ik_inv_st']) { //ik_payment_state
            if ($this->order['order_status_id']){
                $this->model_checkout_order->update($this->order['order_id'],
                    $this->config->get('shoputils_ik_order_status_id'),
                    sprintf($this->language->get('text_comment'),
                        $this->request->post['ik_pw_via'],  //ik_paysystem_alias
                        $this->request->post['ik_am']  //ik_payment_amount
                        //$this->request->post['???'] //ik_trans_id
                    ),
                    true);
            } else {
                $this->model_checkout_order->confirm($this->order['order_id'],
                    $this->config->get('shoputils_ik_order_status_id'),
                    sprintf($this->language->get('text_comment'),
                        $this->request->post['ik_pw_via'],  //ik_paysystem_alias
                        $this->request->post['ik_am']  //ik_payment_amount
                        //$this->request->post['???'] //ik_trans_id
                    ));
            }

        }
        $this->sendOk();
    }

    public function success()
    {
        $this->logWrite('SuccessURL', self::$LOG_FULL);
        $this->logWrite('  POST:' . var_export($this->request->post, true), self::$LOG_FULL);
        $this->logWrite('  GET:' . var_export($this->request->get, true), self::$LOG_FULL);

        if ($this->validate(false)) {
            $this->redirect($this->url->link('checkout/success', '', 'SSL'));
        } else {
            $this->redirect($this->url->link('checkout/checkout', '', 'SSL'));
        }
        return true;
    }

    public function fail()
    {
        $this->logWrite('FailURL', self::$LOG_FULL);
        $this->logWrite('  POST:' . var_export($this->request->post, true), self::$LOG_FULL);
        $this->logWrite('  GET:' . var_export($this->request->get, true), self::$LOG_FULL);
        $this->redirect($this->url->link('checkout/checkout', '', 'SSL'));
        return true;
    }

    private function validate($check_sign_hash = true)
    {
        $this->load->model('checkout/order');

        if ($this->request->server['REQUEST_METHOD'] != 'POST') {
            $this->sendForbidden($this->language->get('text_error_post'));
            return false;
        }

        if ($check_sign_hash && isset($sign_ik)) {
            $ik_sign_hash_array = $this->request->post;
            unset($ik_sign_hash_array['ik_sign']);
            ksort($ik_sign_hash_array, SORT_STRING);
            array_push($ik_sign_hash_array, $this->config->get('shoputils_ik_test_mode') ? $this->config->get('shoputils_ik_sign_test_key') : $this->config->get('shoputils_ik_sign_hash')); //$this->config->get('shoputils_ik_sign_hash');
            $ik_sign_hash_string = implode(':', $ik_sign_hash_array);
            $ik_sign_hash = base64_encode(md5($ik_sign_hash_string, true));
            if ($this->request->post['ik_sign'] != $ik_sign_hash) {  //ik_sign_hash
                $this->sendForbidden($this->language->get('text_error_ik_sign_hash'));

                $this->logWrite($ik_sign_hash . '=md5(' . $ik_sign_hash_string . ')', self::$LOG_SHORT);

                return false;
            }
        }

        $this->order = $this->model_checkout_order->getOrder($this->request->post['ik_pm_no']); //ik_payment_id

        if (!$this->order) {
            $this->sendForbidden(sprintf($this->language->get('text_error_order_not_found'), $this->request->post['ik_pm_no']));  //ik_payment_id
            return false;
        }

        return true;
    }

    public function view()
    {
        echo $this->shoputils;
    }

    private function sendForbidden($error)
    {
        $this->logWrite('ERROR: ' . $error, self::$LOG_SHORT);

        header('HTTP/1.1 403 Forbidden');

        echo "<html>
                <head>
                   <title>403 Forbidden</title>
                </head>
                <body>
                    <p>$error.</p>
                </body>
        </html>";
    }

    private function sendOk()
    {
        $this->logWrite('OK: ' . http_build_query($this->request->post, '', ','), self::$LOG_SHORT);

        header('HTTP/1.1 200 OK');

        echo "<html><head><title>200 OK</title></head></html>";
    }

    private function _setData($values)
    {
        foreach ($values as $key => $value) {
            if (is_int($key)) {
                $this->data[$value] = $this->language->get($value);
            } else {
                $this->data[$key] = $value;
            }
        }
    }

    private function logWrite($message, $type)
    {
        switch ($this->config->get('shoputils_ik_log')) {
            case self::$LOG_OFF:
                return;
            case self::$LOG_SHORT:
                if ($type == self::$LOG_FULL) {
                    return;
                }
        }

        if (!$this->log) {
            $this->log = new Log('shoputils_ik.log');
        }
        $this->log->Write($message);
    }
}
?>