<!DOCTYPE html>
<!--[if lt IE 7]><html class="ie6" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 7]><html class="ie7" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if IE 8]><html class="ie8" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><!--<![endif]-->
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<!-- Palm -->
<meta name="HandheldFriendly" content="True" />
<!-- Windows -->
<meta name="MobileOptimized" content="320" />
<!-- Safari, Android, BB, Opera -->
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<!-- Use the .htaccess and remove these lines to avoid edge case issues. -->

<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!-- Megnor www.templatemela.com - Start-->
<?php if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
$http_type = "https:";} else {$http_type = "http:";} 
 ?><link href='<?php echo $http_type;?>//fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'>
<link href='<?php echo $http_type;?>//fonts.googleapis.com/css?family=Della+Respira' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/carousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/responsive.css" />
<?php if($direction=='rtl'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/stylesheet/megnor/rtl.css">
<?php }?>
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/html5.js"></script><![endif]-->
<!-- Megnor www.templatemela.com  - End -->

<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

<!-- Megnor www.templatemela.com - Start -->
<script type="text/javascript" src="catalog/view/javascript/megnor/carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/megnor.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/custom.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/scrolltop.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/megnor/jquery.formalize.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/jstree.min.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/cloudzoom.js"></script> 
<script type="text/javascript" src="catalog/view/javascript/megnor/fancybox.js"></script> 
<!-- Megnor www.templatemela.com - End -->

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if lt IE 7]>
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
		
			  
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {<?php foreach ($stores as $store) { ?>$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');<?php } ?>});//--></script>
<?php } ?>

<?php echo $google_analytics; ?>
<!-- TemplateMela www.templatemela.com - Start -->
<!--[if lt IE 9]><script type="text/javascript" src="catalog/view/javascript/megnor/respond.min.js"></script><![endif]-->
<!-- TemplateMela www.templatemela.com - End -->

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
															$.each(data, function( k, v ) { i.append("<li><a href='"+v.href+"'><img src='"+v.img+"' alt='"+v.name+"'><span>"+v.name+(v.model ? "<small>"+v.model+"</small>" : '')+"</span><em>"+(v.price ? v.price : '')+"</em></a></li>") });
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
									line-height: 20px;
									padding: 10px;
									text-decoration: none;
								}
								#livesearch a:hover, #livesearch li.active a {
									background: #38B0E3;
									color: #ffffff;
								}
								#livesearch img {
									float: left;
									width: auto;
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
								#livesearch small {
									display: block;
								}
							</style>
                        
</head>
<body class="<?php echo $body_class; ?>">


<div id="container">
<header id="header-container_main">
<header id="header-container">
	<div id="header">
		<div class="header-left">  <!--megnor 'header-left' start -->
		<div class="custom_footer_main column">
			<?php echo $content_header_block; ?>
	</div>
				<!--megnor added -->
		<div class="tm_headerlinkmenu">
				<div class="tm_headerlinks_inner"><div class="headertoggle_img">&nbsp;</div></div>
				<ul class="header_links">
			 	 <li> <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
				</ul> 
		</div>
			
			<?php if ($logo) { ?>
				<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>			
			<?php } ?>
		</div>  <!--megnor 'header-left' end -->	  
		<div class="header-right">  <!--megnor 'header-right' start -->
		   <div class="welcome-links">
			
				<div id="welcome">
				<?php if (!$logged) { ?>
						<?php echo $text_welcome; ?>
					<?php } else { ?>
						<?php echo $text_logged; ?>
					<?php } ?>		
				</div>
			</div>
			<?php echo $cart; ?>
			<div id="search">
				<div class="button-search"></div>
				<input type="text" name="search" onClick="this.placeholder = '';" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
			</div>							
		</div> <!--megnor 'header-right' end -->	   
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
															$.each(data, function( k, v ) { i.append("<li><a href='"+v.href+"'><img src='"+v.img+"' alt='"+v.name+"'><span>"+v.name+(v.model ? "<small>"+v.model+"</small>" : '')+"</span><em>"+(v.price ? v.price : '')+"</em></a></li>") });
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
									line-height: 20px;
									padding: 10px;
									text-decoration: none;
								}
								#livesearch a:hover, #livesearch li.active a {
									background: #38B0E3;
									color: #ffffff;
								}
								#livesearch img {
									float: left;
									width: auto;
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
								#livesearch small {
									display: block;
								}
							</style>
                        
</header>
  
<nav class="nav-container" role="navigation">
<div class="nav-inner">
<!-- ======= Menu Code START ========= -->
<?php if ($categories) { ?>
<!-- Opencart 3 level Category Menu-->
<div id="menu" class="main-menu">
<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
  <ul class="main-navigation">
   <?php $r=0; foreach ($categories as $category) {$r++;} ?>
	<?php $k=0; foreach ($categories as $category) {$k++; ?>  
   <li class="<?php if($r == $k ){echo "last";} ?>"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>

        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>										
				<li>
				<?php if(count($category['children'][$i]['children_level2'])>0){ ?>
					<a href="<?php echo $category['children'][$i]['href']; ?>" class="activSub" <?php /*?>onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'<?php */?>><?php echo $category['children'][$i]['name'];?></a> 					
				<?php } else { ?>				
					<a href="<?php echo $category['children'][$i]['href']; ?>" <?php /*?>onmouseover='JavaScript:closeSubMenu()'<?php */?> ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>

				<?php if ($category['children'][$i]['children_level2']) { ?>
				<?php /*?><div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>"><?php */?>
				<ul>
				<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
					<li><a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></a></li>
				 <?php } ?>
				</ul>
				<?php /*?></div><?php */?>
			  <?php } ?>		  
			</li>		
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>

      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>

<?php /*?>
<!--Default Opencart 2 level Category-->
<div id="menu" class="main-menu">
<div class="nav-responsive"><span>Menu</span><div class="expandable"></div></div>
  <ul class="main-navigation">
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php */?>

<?php } ?>
<!-- ======= Menu Code END ========= -->



</div>
</nav>   
 <div class="header_bottom">
 	<?php echo $language; ?>
		<?php echo $currency; ?>
			<div class="links">												
					<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
					<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
				</div>
 </div>
 
 </div>
<!-- section code start -->
<section id='content-wrapper'>

<div class="content-inner">

<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

<div id="notification"></div>