</div><!-- content inner div end -->
</section>
<!-- section code end -->

 
	  

<footer id="footer-container">
<div class="footer-inner">
	<div id="footer">
	<div class="custom_footer_main column">
			<?php echo $content_footer; ?>
	</div>

	  <?php if ($informations) { ?>
	  <div class="column">
		<h3><?php echo $text_information; ?></h3>
		<ul>
		  <?php foreach ($informations as $information) { ?>
		  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		  <?php } ?>
		</ul>
	  </div>
	  <?php } ?>
	
	  <div class="custom_footer_main_block ">
				<?php echo $content_footer_block; ?>
	 </div>


	<div class="column">
		<h3><?php echo $text_service; ?></h3>
		<ul>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
	  </div>
	  <div class="column">
		<h3><?php echo $text_extra; ?></h3>
		<ul>
		<!--  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li> -->
            <!-- <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li> -->
		  <!--<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>-->
		  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		</ul>
	  </div>
	  <div class="column">
		<h3><?php echo $text_account; ?></h3>
		<ul>
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	  </div>
	 </div>
</div>
<div class="footer_bottom">
	<div class="footer_bottom_inner">
<div id="bottomfooter">
	
 	<ul>
	   
	   <!-- <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		
           <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
    
	   <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
	 
	  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
		
           <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		
           <li class="login-logout"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li> -->
	
	</ul>

</div>
<div class="copyright-container">
<div id="powered"><?php echo $powered; ?></div>
 
 </div>
 </div>
</footer>

</div>

</div>
<span class="grid_default_width" style="display: none; visibility: hidden;" ></span>
<span class="home_products_default_width" style="display:none; visibility:hidden"></span>
<span class="module_default_width" style="display:none; visibility:hidden"></span>

<script>
	 $("#column-left .box-heading").wrap('<div class="title_inner_block"></div>');
	 $("#column-right .box-heading").wrap('<div class="title_inner_block"></div>');
</script>

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
(function (d, w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter30381277 = new Ya.Metrika({id:30381277,
                    clickmap:true,
                    accurateTrackBounce:true});
        } catch(e) { }
    });

    var n = d.getElementsByTagName("script")[0],
        s = d.createElement("script"),
        f = function () { n.parentNode.insertBefore(s, n); };
    s.type = "text/javascript";
    s.async = true;
    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

    if (w.opera == "[object Opera]") {
        d.addEventListener("DOMContentLoaded", f, false);
    } else { f(); }
})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="//mc.yandex.ru/watch/30381277" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</body></html>