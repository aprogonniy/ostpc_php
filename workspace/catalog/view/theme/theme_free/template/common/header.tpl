<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/stylesheet.css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/cloud-zoom.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/simple_menu.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/slideshow.css" rel="stylesheet" type="text/css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<!--[if IE]>
<script type="text/javascript" src="catalog/view/javascript/jquery/fancybox/jquery.fancybox-1.3.4-iefix.js"></script>
<![endif]-->
<!--[if lt IE 8]><div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div><![endif]-->
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/easyTooltip.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jQuery.equalHeights.js"></script>
<script type="text/JavaScript" src="catalog/view/javascript/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jscript_zjquery.anythingslider.js"></script>
<script type="text/javascript" src="catalog/view/javascript/superfish.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery.bxSlider.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/script.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if  IE 8]>
	<style>
        #header #search input {
            padding-top:14px;
             padding-bottom:1px;
        }
        
        .success { border:1px solid #e7e7e7;}
        #currency a  span { padding-top:1px;}
    </style>
<![endif]-->
<!--[if  IE 9]>
	<style>
        #currency a  span { padding-top:1px;}
        a.button { line-height:16px;}
        .product-grid { padding-right:8px;}
    </style>
<![endif]-->
<!--[if  IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<link rel="stylesheet" type="text/css"href="catalog/view/theme/<?php echo $this->config->get('config_template');?>/stylesheet/livesearch.css"/>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo empty($this->request->get['route']) ? 'common-home' : str_replace('/', '-', $this->request->get['route']); ?>">
	<div class="main-shining">
    <div class="row-1">
  <div id="header">
  <div class="header-top">
      <div class="wrapper">
            <ul class="links">
              
              <li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="account/wishlist") {echo "active";} ?>" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                          <li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="account/account") {echo "active";} ?>" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                          <li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="checkout/cart") {echo "active";} ?>" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopcart; ?></a></li>
                          <li><a class="<?php if (isset($this->request->get['route']) && $this->request->get['route']=="checkout/checkout") {echo "active";} ?>" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
            </ul>
      	  <?php echo $language; ?>
          <?php echo $currency; ?>
          
          <div id="welcome">
              <?php if (!$logged) { ?>
              <?php echo $text_welcome; ?>
              <?php } else { ?>
              <?php echo $text_logged; ?>
              <?php } ?>
          </div>
          
      </div>
  </div>
  <div class="header-top1">
        
        <div class="cart-position"><div class="cart-inner"><?php echo $cart; ?></div></div>
       <div class="clear"></div>
  </div>
  
    <?php if ($logo) { ?>
    <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
    <?php } ?>
    <div class="top-menu">
        <div id="search">
                <div class="button-search"></div>
                <?php if ($filter_name) { ?>
                    
                  <span class="search-bg"><input type="text" name="filter_name" value=""  /></span>
                <?php } else { ?>
               
                <span class="search-bg"> <input type="text" name="filter_name" value="" onclick="this.value = '';" onkeydown="this.style.color = '#ccc';" /></span>
                <?php } ?>
              </div>
        <ul class="main-menu">
            <li class="first"><a href="<?php echo $home; ?>"></a></li>
            <?php $i=0;?>
            <?php foreach ($informations as $information) { 
            $i++;
             ?>
              <li class="item-<?php echo $i;?>"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
            
            <li class="item-5"><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            <li class="item-6"><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
            <li class="item-7"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
        <div class="clear"></div>
    </div>
    
  </div>
  
</div>
          
           <?php if ($categories) { ?>
            <div id="menu">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                  <div>
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
                  </div>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </div>
            <div class="clear"></div>
        <?php } ?>
		<div class="main-container">
<p id="back-top"> <a href="#top"><span></span></a> </p>


<div id="container">
<div id="notification"> </div>
