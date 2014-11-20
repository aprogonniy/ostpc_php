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
?>
<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a
            href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="view/image/payment.png"><?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();"
                                    class="button"><span><?php echo $button_save; ?></span></a><a
                    onclick="location='<?php echo $cancel; ?>';"
                    class="button"><span><?php echo $button_cancel; ?></span></a></div>
        </div>
        <div class="content">
        <div id="tabs" class="htabs">
            <a href="#tab_general"><?php echo $tab_general; ?></a>
            <a href="#tab_log"><?php echo $tab_log; ?></a>
        </div>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
              <div id="tab_general">
                <table class="form">
                    <tr>
                        <td><?php echo $entry_status; ?></td>
                        <td><select name="shoputils_ik_status">
                            <?php if ($shoputils_ik_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_order_status; ?></td>
                        <td><select name="shoputils_ik_order_status_id">
                            <?php foreach ($order_statuses as $order_status) { ?>
                            <?php if (!isset($order_status['order_status_id'])) continue; ?>
                            <?php if ($order_status['order_status_id'] == $shoputils_ik_order_status_id) { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>"
                                    selected="selected"><?php echo $order_status['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_geo_zone; ?></td>
                        <td><select name="shoputils_ik_geo_zone_id">
                            <option value="0"><?php echo $text_all_zones; ?></option>
                            <?php foreach ($geo_zones as $geo_zone) { ?>
                            <?php if ($geo_zone['geo_zone_id'] == $shoputils_ik_geo_zone_id) { ?>
                            <option value="<?php echo $geo_zone['geo_zone_id']; ?>"
                                    selected="selected"><?php echo $geo_zone['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select></td>
                    </tr>
                    <tr>
                        <td><?php echo $entry_sort_order; ?></td>
                        <td><input type="text" name="shoputils_ik_sort_order"
                                   value="<?php echo $shoputils_ik_sort_order; ?>"
                                   size="1"/>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2"><strong><?php echo $text_ik_parameters; ?></strong></td>
                    </tr>

                    <tr>
                        <td>
                            <span class="required">*</span>
                            <?php echo $entry_ik_shop_id ?>
                            <div class="help"><?php echo $entry_ik_shop_id_help; ?></div>
                        </td>
                        <td><input type="text" name="shoputils_ik_shop_id" value="<?php echo $shoputils_ik_shop_id; ?>"
                                   style="width:300px"/>
                            <?php if ($error_ik_shop_id) { ?>
                            <span class="error"><?php echo $error_ik_shop_id; ?></span>
                            <?php } ?></td>
                    </tr>
                    <tr>
                        <td>
                            <span class="required">*</span>
                            <?php echo $entry_ik_sign_hash ?>
                            <div class="help"><?php echo $entry_ik_sign_hash_help; ?></div>
                        </td>
                        <td><input type="text" name="shoputils_ik_sign_hash" value="<?php echo $shoputils_ik_sign_hash; ?>"
                                   style="width:300px"/>
                            <?php if ($error_ik_sign_hash) { ?>
                            <span class="error"><?php echo $error_ik_sign_hash; ?></span>
                            <?php } ?></td>
                    </tr>
                    <tr>
                        <td>
                            <span class="required">*</span>
                            <?php echo $entry_ik_sign_test_key ?>
                            <div class="help"><?php echo $entry_ik_sign_test_key_help; ?></div>
                        </td>
                        <td><input type="text" name="shoputils_ik_sign_test_key" value="<?php echo $shoputils_ik_sign_test_key; ?>"
                                   style="width:300px"/>
                            <?php if ($error_ik_sign_test_key) { ?>
                            <span class="error"><?php echo $error_ik_sign_test_key; ?></span>
                            <?php } ?></td>
                    </tr>
                    <tr>
                        <td>
                            <?php echo $entry_ik_test_mode ?>
                            <div class="help"><?php echo $entry_ik_test_mode_help; ?></div>
                        </td>
                      <td><?php if ($shoputils_ik_test_mode) { ?>
                        <input type="radio" name="shoputils_ik_test_mode" value="1" checked="checked" />
                        <?php echo $text_yes; ?>
                        <input type="radio" name="shoputils_ik_test_mode" value="0" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="shoputils_ik_test_mode" value="1" />
                        <?php echo $text_yes; ?>
                        <input type="radio" name="shoputils_ik_test_mode" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } ?></td>
                    </tr>
                    <tr>
                        <td>
                            <?php echo $entry_ik_currency; ?>
                            <div class="help"><?php echo $entry_ik_currency_help; ?></div>
                        </td>
                        <td><select name="shoputils_ik_currency">
                            <?php foreach ($currencies as $currency) { ?>
                            <?php if ($currency['code'] == $shoputils_ik_currency) { ?>
                            <option value="<?php echo $currency['code']; ?>"
                                    selected="selected"><?php echo $currency['title']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="help"><?php echo $text_ik_urls ?></div>
                        </td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_ik_success_url; ?></td>
                      <td><?php echo $shoputils_ik_success_url; ?></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_ik_fail_url; ?></td>
                      <td><?php echo $shoputils_ik_fail_url; ?></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_ik_pending_url; ?></td>
                      <td><?php echo $shoputils_ik_pending_url; ?></td>
                    </tr>
                    </tr>
                    <tr>
                      <td><?php echo $entry_ik_status_url; ?></td>
                      <td><?php echo $shoputils_ik_status_url; ?></td>
                    </tr>
                </table>
            </div><!-- </div id="tab_general">  -->
            <div id="tab_log">
                <table class="form">
                    <tr>
                        <td>
                            <?php echo $entry_ik_log; ?>
                            <div class="help"><?php echo $entry_ik_log_help; ?></div>
                        </td>
                        <td><select name="shoputils_ik_log">
                            <?php foreach ($logs as $key => $log) { ?>
                            <?php if ($key == $shoputils_ik_log) { ?>
                            <option value="<?php echo $key; ?>"
                                    selected="selected"><?php echo $log; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $key; ?>"><?php echo $log; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select></td>
                    </tr>
                        <td>
                            <?php echo $entry_log_file; ?>
                            <div class="help"><?php echo $entry_log_file_help; ?></div>
                        </td>
                        <td>
                             <div class="scrollbox" style="height:300px; width:700px">
                             <pre style="font-size:11px; margin-left: -470px;">
                                <?php foreach ($log_lines as $log_line) { ?>
                                    <?php echo $log_line; ?>
                                <?php } ?>
                            </pre>
                            </div>
                        </td>
                    </tr>
                </table>
            </div><!-- </div id="tab_log">  -->
            </form>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>
<?php echo $footer; ?>