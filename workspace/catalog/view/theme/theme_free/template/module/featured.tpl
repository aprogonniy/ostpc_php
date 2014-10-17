<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-feat").length){
		$(".maxheight-feat").equalHeights()}
	})
</script>
<div class="wrapper"></div>
<div class="box featured">
  <div class="box-heading"><?php echo $heading_title; ?></div>
      <div class="box-content">
        
        <div class="box-product">
            <ul>
                <?php $i=0; ?>
              <?php foreach ($products as $product) { $i++; ?>
              <?php 
                        if ($i%3==1) {
                            $a='class="first-in-line"';
                        }
                        elseif ($i%3==0) {
                            $a='class="last-in-line"';
                        }
                        else {
                            $a='';
                        }
                    ?>
              <li  <?php echo $a?>>
              	<div class="inner-indent">
                     <?php if ($product['thumb']) { ?>
                    <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
                    <?php } ?>
                    <div class="rating">
                        <?php if ($product['rating']) { ?>
                            <img height="13" src="catalog/view/theme/theme_free/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
                        <?php } ?>
                    </div>
                    <div class="name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                   
                    <?php if ($product['description'])?>
                        <div class="description">
                            <?php echo substr($product['description'],0,60).'..';?>
                        </div>
                    <?php ?>
                    
                    <div class="wrapper">
                    	<div class="review-count"><?php echo $product['reviews'].' '.$reviews;?></div>
                        <?php if ($product['special']) { ?>
                        <div class="price">
                          <?php echo $product['special']; ?>
                        </div>
                        <?php } else  {?>
                            <div class="price">
                              <?php echo $product['price']; ?>
                            </div>
                        <?php }?>
                        
                    </div>
                    <div class="cart">
                        <a data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"><span><?php echo $button_cart; ?></span></a>
                        <div class="extra-button">
                        	<div class="wishlist"><a class="tip"  onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a></div>
          					<div class="compare"><a class="tip2"  onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
              </li>
              <?php } ?>
          </ul>
        </div>
  </div>
</div>
