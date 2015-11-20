<?php
class ControllerModuleRelated extends Controller {
    protected function index($setting) {

        if ( isset($this->request->get['product_id']) ) {

            $this->language->load('module/related');

            $this->data['heading_title'] = $this->language->get('heading_title');
            $this->data['button_cart']   = $this->language->get('button_cart');

            $this->load->model('catalog/product');
            $this->load->model('tool/image');

            $this->data['products'] = array();

            // add for Related Products

            // get CACHE
            $cache_filename = 'related.products.module.' . $this->request->get['product_id'] . '.' . $setting['limit'];
            $results = $this->cache->get($cache_filename);
            if (!$results) {

                $results = $this->model_catalog_product->getProductRelated($this->request->get['product_id']);


                // loading product_info
                if ( !isset($product_info) ) {
                    $product_info = $this->model_catalog_product->getProduct( $this->request->get['product_id'] );
                }

                //related by category
                if ( count($results) < $setting['limit'] ) {
                    $temp = $this->model_catalog_product->getProductRelatedByCategory_m( $this->request->get['product_id'], count($results), $setting['limit'] );
                    foreach($temp as $t){
                        if(!empty($t)){
                            $results[] = $t;
                        }
                    }
                }

                //related by manufacturer
                if ( count($results) < $setting['limit'] AND (int)$product_info['manufacturer_id'] > 0 ) {
                    $temp = $this->model_catalog_product->getProductRelatedByManufacturer_m( $product_info['manufacturer_id'], $this->request->get['product_id'], count($results), $setting['limit'] );
                    foreach($temp as $t){
                        if(!empty($t)){
                            $results[] = $t;
                        }
                    }
                }

                //related by randomisation
                if ( count($results) < $setting['limit'] ) {
                    $temp = $this->model_catalog_product->getProductRelatedByNothing_m( $this->request->get['product_id'], count($results), $setting['limit'] );
                    foreach($temp as $t){
                        if(!empty($t)){
                            $results[] = $t;
                        }
                    }
                }

                // set CACHE
                $this->cache->set($cache_filename, $results);

            } // if cache

            // end for Related Products

            foreach ($results as $result) {
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
                } else {
                    $image = false;
                }

                if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $price = false;
                }

                if ((float)$result['special']) {
                    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
                } else {
                    $special = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = $result['rating'];
                } else {
                    $rating = false;
                }

                $this->data['products'][] = array(
                    'product_id' => $result['product_id'],
                    'thumb'   	 => $image,
                    'name'    	 => $result['name'],
                    'price'   	 => $price,
                    'special' 	 => $special,
                    'rating'     => $rating,
                    'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                    'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
                );
            }

            if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/related.tpl')) {
                $this->template = $this->config->get('config_template') . '/template/module/related.tpl';
            } else {
                $this->template = 'default/template/module/related.tpl';
            }

            $this->render();

        } // if product_id

    }
}
?>