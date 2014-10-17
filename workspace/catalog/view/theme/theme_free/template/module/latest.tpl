<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight").length){
		$(".maxheight").equalHeights()}
	})
</script>

<script type="text/javascript">
$(document).ready(function(){
$(function(){
$('.new-products  li ').last().addClass('last');
});
}); 
</script>
<div class="clear"></div>
<div class="wrapper">
    <div class="box new-products">
      <div class="box-heading"><?php echo $heading_title; ?></div>
      <div class="box-content">
            
            <div class="box-product">
                <ul>
                      <?php $i=0; foreach ($products as $product) { $i++ ?>
                      <?php 
                            if ($i%5==0) {
                                $a='class="first-in-line"';
                            }
                            elseif ($i%4==0) {
                                $a='class="last-in-line"';
                            }
                            else {
                                $a='';
                            }
                        ?>
                        <li>
                        
                            <?php if ($product['thumb']) { ?>
                            <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                            <?php } ?>
                            <div class="name maxheight"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                            
                        <div class="wrapper">
                         <?php if ($product['price']) { ?>
                            <div class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span> 
                              <?php } ?>
                            </div>
                            <?php } ?>
                            
                        <div class="cart"><a data-id="<?php echo $product['product_id']; ?>;" class="button addToCart" /><span><?php echo $button_cart; ?></span></a></div>
                        </div>
                    </li>
                      <?php } ?>
                    
                </ul>
            </div>
      </div>
    </div>
</div>