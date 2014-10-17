<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a  href="<?php echo $banner['link']; ?>"><img title="<?php echo $banner['title']; ?>" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>

    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
        $('#slideshow<?php echo $module; ?>').nivoSlider({
        	effect: 'random',
		animSpeed: 500 ,
        pauseTime:8000,
		slices:20,
		captionOpacity:1,
		controlNavThumbs:false,
        controlNavThumbsFromRel:false,
		controlNavThumbsSearch: '.jpg',
		controlNavThumbsReplace: '_thumb.jpg',
		directionNav:true,
		controlNav: true,
		prevText: 'Prev',
		nextText: 'Next'
        });
});
</script>
