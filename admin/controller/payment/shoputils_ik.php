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
    const MAX_LAST_LOG_LINES = 500;
    private $error = array();

    public function index() {
        $this->load->language('payment/shoputils_ik');

        $this->document->setTitle($this->language->get('heading_title'));
		
        $this->load->model('setting/setting');
			
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
            $this->load->model('setting/setting');
			
            $this->model_setting_setting->editSetting('shoputils_ik', $this->request->post);				
			
            $this->session->data['success'] = $this->language->get('text_success');

            $this->redirect($this->makeUrl('extension/payment'));
        }

        $this->_setData(array(
            'heading_title',
            'button_save',
            'button_cancel',
            'entry_geo_zone',
            'entry_status',
            'entry_sort_order',
            'entry_order_status',
            'entry_ik_log',
            'entry_ik_log_help',
            'entry_ik_shop_id',
            'entry_ik_shop_id_help',
            'entry_ik_sign_hash',
            'entry_ik_sign_hash_help',
            'entry_ik_sign_test_key',
            'entry_ik_sign_test_key_help',
            'entry_ik_currency',
            'entry_ik_currency_help',
            'entry_ik_test_mode',
            'entry_ik_test_mode_help',
            'entry_ik_success_url',
            'entry_ik_fail_url',
            'entry_ik_pending_url',
            'entry_ik_status_url',
            'tab_general',
            'tab_log',
            'text_enabled',
            'text_disabled',
            'text_all_zones',
            'text_yes',
            'text_no',
            'text_ik_urls',
            'text_ik_parameters',
            'entry_log_file',
            'entry_log_file_help'       => sprintf($this->language->get('entry_log_file_help'), self::MAX_LAST_LOG_LINES),
            'action'                    => $this->makeUrl('payment/shoputils_ik'),
            'cancel'                    => $this->makeUrl('extension/payment'),
            'shoputils_ik_success_url'  => HTTP_CATALOG . 'index.php?route=payment/shoputils_ik/success',
            'shoputils_ik_fail_url'     => HTTP_CATALOG . 'index.php?route=payment/shoputils_ik/fail',
            'shoputils_ik_pending_url'  => HTTP_CATALOG . 'index.php?route=payment/shoputils_ik/success',
            'shoputils_ik_status_url'   => HTTP_CATALOG . 'index.php?route=payment/shoputils_ik/status',
            'log_lines'                 => $this->readLastLines(DIR_LOGS . 'shoputils_ik.log', self::MAX_LAST_LOG_LINES)
        ));


        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
		
        if (isset($this->error['ik_shop_id'])) {
            $this->data['error_ik_shop_id'] = $this->error['ik_shop_id'];
        } else {
            $this->data['error_ik_shop_id'] = '';
        }	
		
        if (isset($this->error['ik_sign_hash'])) {
            $this->data['error_ik_sign_hash'] = $this->error['ik_sign_hash'];
        } else {
            $this->data['error_ik_sign_hash'] = '';
        }	

        if (isset($this->error['ik_sign_test_key'])) {
            $this->data['error_ik_sign_test_key'] = $this->error['ik_sign_test_key'];
        } else {
            $this->data['error_ik_sign_test_key'] = '';
        }	
		
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
           'href'      => $this->makeUrl('common/home'),
           'text'      => $this->language->get('text_home'),
           'separator' => FALSE
        );
        
        $this->data['breadcrumbs'][] = array(
           'href'      => $this->makeUrl('extension/payment'),
           'text'      => $this->language->get('text_payment'),
           'separator' => ' :: '
        );
        
        $this->data['breadcrumbs'][] = array(
           'href'      => $this->makeUrl('payment/shoputils_ik'),
           'text'      => $this->language->get('heading_title'),
          'separator' => ' :: '
        );
				
        $this->_updateData(
            array(
                'shoputils_ik_shop_id',
                'shoputils_ik_sign_hash',
                'shoputils_ik_sign_test_key',
                'shoputils_ik_currency',
                'shoputils_ik_test_mode',
                'shoputils_ik_order_status_id',
                'shoputils_ik_geo_zone_id',
                'shoputils_ik_status',
                'shoputils_ik_sort_order',
                'shoputils_ik_log',
            ),
            array()
        );

        $this->data['logs'] = array(
            '0' => $this->language->get('text_ik_log_off'),
            '1' => $this->language->get('text_ik_log_short'),
            '2' => $this->language->get('text_ik_log_full'),
        );

        $this->load->model('localisation/order_status');
        $this->data['order_statuses'] = array_merge(
            array(0 => array(
                'name' => $this->language->get('text_order_status_cart')
            )),
            $this->model_localisation_order_status->getOrderStatuses()
        );

        $this->load->model('localisation/geo_zone');
        $this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
        $this->load->model('setting/store');
        $stores = $this->model_setting_store->getStores();
        foreach ($stores as $store){
            $this->data['stores'][] = $store['url'];
        }
        $this->data['stores'][] = $this->config->get('config_url');

        $this->load->model('localisation/currency');

        $this->data['currencies'] = $this->model_localisation_currency->getCurrencies();

        $this->template = 'payment/shoputils_ik.tpl';
        $this->children = array(
            'common/header',	
            'common/footer'	
        );
		
        $this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'payment/shoputils_ik')) {
            $this->error['warning'] = $this->language->get('error_permission');
        } else {
            if (!isset($this->request->post['shoputils_ik_sign_hash']) || !$this->request->post['shoputils_ik_sign_hash']) {
                $this->error['warning'] = $this->language->get('error_ik_sign_hash');
            }
            if (!isset($this->request->post['shoputils_ik_sign_test_key']) || !$this->request->post['shoputils_ik_sign_test_key']) {
                $this->error['warning'] = $this->language->get('error_ik_sign_test_key');
            }
            if (!isset($this->request->post['shoputils_ik_shop_id']) || !$this->request->post['shoputils_ik_shop_id']) {
                $this->error['warning'] = $this->language->get('error_ik_shop_id');
            }
        }

        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    private function _setData($values) {
        foreach ($values as $key => $value) {
            if (is_int($key)) {
                $this->data[$value] = $this->language->get($value);
            } else {
                $this->data[$key] = $value;
            }
        }
    }

    private function _updateData($keys, $info) {
        foreach ($keys as $key) {
            if (isset($this->request->post[$key])) {
                $this->data[$key] = $this->request->post[$key];
            } elseif (isset($info[$key])) {
                $this->data[$key] = $info[$key];
            } else {
                $this->data[$key] = $this->config->get($key);
            }
        }
    }

    private function readLastLines($filename, $lines) {
        if (!is_file($filename)) {
            return array();
        }
        $handle = @fopen($filename, "r");
        if (!$handle) {
            return array();
        }
        $linecounter = $lines;
        $pos = -1;
        $beginning = false;
        $text = array();

        while ($linecounter > 0) {
            $t = " ";

            while ($t != "\n") {
                /* if fseek() returns -1 we need to break the cycle*/
                if (fseek($handle, $pos, SEEK_END) == -1) {
                    $beginning = true;
                    break;
                }
                $t = fgetc($handle);
                $pos--;
            }

            $linecounter--;

            if ($beginning) {
                rewind($handle);
            }

            $text[$lines - $linecounter - 1] = fgets($handle);

            if ($beginning) {
                break;
            }
        }
        fclose($handle);

        return array_reverse($text);
    }

    function makeUrl($route, $url = '')
    {
        return str_replace('&amp;', '&', $this->url->link($route, $url.'&token=' . $this->session->data['token'], 'SSL'));
    }
}
