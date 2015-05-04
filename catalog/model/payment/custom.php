<?php
class ModelPaymentCustom extends Model {
  public function getMethod($address, $total) {
    $this->load->language('payment/custom');
  
    $method_data = array(
      'code'     => 'custom',
      'title'    => $this->language->get('text_title'),
      'sort_order' => $this->config->get('custom_sort_order')
    );
  
    return $method_data;
  }
}