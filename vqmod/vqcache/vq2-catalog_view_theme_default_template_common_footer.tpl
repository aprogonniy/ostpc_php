<div id="footer">
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
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
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
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered"><?php echo $powered; ?></div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>

							<script>
								$(function(){
									var i = (!!$("#livesearch").length ? $("#livesearch") : $("<ul id='livesearch'></ul>") ), s = $("#header [name=search]");
									function repositionLivesearch() { i.css({ top: (s.offset().top+s.outerHeight()), left:s.offset().left, width: s.outerWidth() }); }
									$(window).resize(function(){ repositionLivesearch(); });
									s.keyup(function(e){
										switch (e.keyCode) {
											case 13:
												$(".active", i).length && (window.location = $(".active a", i).attr("href"));
												return false;
											break;
											case 40:
												($(".active", i).length ? $(".active", i).removeClass("active").next().addClass("active") : $("li:first", i).addClass("active"))
												return false;
											break;
											case 38:
												($(".active", i).length ? $(".active", i).removeClass("active").prev().addClass("active") : $("li:last", i).addClass("active"))
												return false;
											break;
											default:
												var query = s.val();
												if (query.length > 2) {
													$.getJSON(
														"<?php echo HTTP_SERVER; ?>?route=product/search/livesearch&search=" + query,
														function(data) {
															i.empty();
															$.each(data, function( k, v ) { i.append("<li><a href='"+v.href+"'><img src='"+v.img+"' alt='"+v.name+"'><span>"+v.name+"</span><em>"+(v.price ? v.price : '')+"</em></a></li>") });
															i.remove(); $("body").prepend(i); repositionLivesearch();
														}
													);
												} else {
													i.empty();
												}
										}
									}).blur(function(){ setTimeout(function(){ i.hide() },500); }).focus(function(){ repositionLivesearch(); i.show(); });
								});
							</script>
							<style>
								[name=search] {
									outline: none;
								}
								#livesearch, #livesearch * {
									margin: 0;
									padding: 0;
									list-style: none;
								}
								#livesearch {
									position: absolute;
									width: 200px;
									top: 0px;
									background: #ffffff;
									z-index: 100;
									box-shadow: 0px 10px 30px rgba(0,0,0,.5);
								}
								#livesearch li {
									border-top: 1px solid #eeeeee;
								}
								#livesearch a {
									display: block;
									clear: both;
									overflow: hidden;
									line-height: 25px;
									padding: 10px;
									text-decoration: none;
								}
								#livesearch a:hover, #livesearch li.active a {
									background: #38B0E3;
									color: #ffffff;
								}
								#livesearch img {
									float: left;
									width: 50px;
									height: 50px;
									margin-right: 10px;
								}
								#livesearch img[src=''] {
									display: none;
								}
								.more {
									text-align: center;
								}
								#livesearch a em {
									display: block;
									color: #888888;
									font-style: normal;
									font-weight: bold;
								}
								#livesearch a:hover em, #livesearch li.active a em {
									color: white;
								}
								#livesearch strike {
									color: #aaaaaa;
								}
								#livesearch a:hover strike {
									color: lightblue;
								}
							</style>
							</body></html>
                        