<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-spec").length){
		$(".maxheight-spec").equalHeights()}
	})
</script>


<div class="box specials">
  <div class="box-heading special-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
    	<ul>
          <?php $i=0; foreach ($products as $product) { $i++ ?>
          <li>
            <?php if ($product['thumb']) { ?>
            <div class="image2"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
            <?php } ?>
            <div class="extra-wrap">
                <div class="name maxheight-spec"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <?php if ($product['description']) { ?>
                <!--div class="short-description">
                    <span><?php echo $product['description']; ?></span>
                </div-->
                <?php } ?>
                
                <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                   <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                <?php } ?>
                <!--div class="cart"><a data-id="<?php echo $product['product_id']; ?>;" class="button addToCart"><span><?php echo $button_cart; ?></span></a></div-->
            </div>
          </li>
          <?php } ?>
       </ul>
    </div>
  </div>
</div>
