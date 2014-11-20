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
<form action="<?php echo $action ?>" method="post" id="checkout">
    <input type="hidden" name="ik_am" value="<?php echo $ik_payment_amount; ?>"/>
    <input type="hidden" name="ik_co_id" value="<?php echo $ik_shop_id; ?>"/>
    <input type="hidden" name="ik_cur" value="<?php echo $ik_cur; ?>" />
    <input type="hidden" name="ik_desc" value="<?php echo $ik_payment_desc; ?>"/>
    <input type="hidden" name="ik_pm_no" value="<?php echo $ik_payment_id; ?>"/>
    <input type="hidden" name="ik_sign" value="<?php echo $ik_sign_hash; ?>"/>
</form>
<div class="buttons">
    <div class="right">
        <a onclick="document.forms['checkout'].submit()" class="button"><span><?php echo $button_confirm; ?></span></a>
    </div>
</div>