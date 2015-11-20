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
$http_type = "https:";
    } else {
    $http_type = "http:";
    }
 ?><link href='<?php if(isset($http_type)) { echo $http_type; } ?>//fonts.googleapis.com/css?family=Marcellus' rel='stylesheet' type='text/css'>
<link href='<?php if(isset($http_type)) { echo $http_type; } ?>//fonts.googleapis.com/css?family=Della+Respira' rel='stylesheet' type='text/css'>
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
</head>
<body class="<?php if(isset($body_class)) {echo $body_class;} ?>">

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-546e6f083234f682" async="async"></script>

    <!-- Start SiteHeart code -->
    <script>
    (function(){
    var widget_id = 777848;
    _shcp =[{widget_id : widget_id}];
    var lang =(navigator.language || navigator.systemLanguage
    || navigator.userLanguage ||"en")
    .substr(0,2).toLowerCase();
    var url ="widget.siteheart.com/widget/sh/"+ widget_id +"/"+ lang +"/widget.js";
    var hcc = document.createElement("script");
    hcc.type ="text/javascript";
    hcc.async =true;
    hcc.src =("https:"== document.location.protocol ?"https":"http")
    +"://"+ url;
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hcc, s.nextSibling);
    })();
    </script>
    <!-- End SiteHeart code -->

<div id="container">
<header id="header-container_main">
<header id="header-container">
	<div id="header">
        <div class="header-top-phones">
            <div>
                <i class="sprite sprite-kharkiv"></i>
                <span>+38 (057) 713 7244</span>
            </div>
            <div>
                <i class="sprite sprite-kyiv"></i>
                <span>+38 (044) 209 4022</span>
            </div>
            <div>
                <i class="sprite sprite-kievstar"></i>
                <span>+38 (097) 979 3829</span>
            </div>
            <div>
                <i class="sprite sprite-life1"></i>
                <span>+38 (063) 273 1963</span>
            </div>
            <div>
                <i class="sprite sprite-mts1"></i>
                <span>+38 (066) 055 4401</span>
            </div>
        </div>
		<div class="header-left">  <!--megnor 'header-left' start -->
		<div class="custom_footer_main column">
			<?php //if($content_header_block) echo $content_header_block; ?>
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
</header>
  
<nav class="nav-container" role="navigation">
<div class="nav-inner">
<!-- ======= Menu Code START ========= -->

<!-- Opencart 3 level Category Menu-->
<div id="menu" class="main-menu">
<div class="nav-responsive"><span>Меню</span><div class="expandable"></div></div>
  <ul class="main-navigation">
    <li><a href="<?php echo $home; ?>"><?php echo "Главная"; ?></a></li>
    <li><a href="<?php echo '#'; ?>" onclick="return false;" style="cursor: default;"><?php echo "Каталог товаров"; ?></a>

          <?php if ($categories) { ?>

          <ul>
              <?php $k=0; foreach ($categories as $category) {$k++; ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <?php } ?>
          </ul>

          <?php } ?>
    </li>
    <li><a href="<?php echo '/product/special.html'; ?>"><?php echo "Акции"; ?></a></li>
    <li><a href="<?php echo '/O-nas-i4.html'; ?>"><?php echo "О нас" ?></a></li>
    <li><a href="<?php echo '/Dostavka-i-oplata-i6.html'; ?>"><?php echo "Доставка и оплата" ?></a></li>
    <li><a href="<?php echo '/Kak-stat-partnyerom-i3.html'; ?>"><?php echo "Партнерам" ?></a></li>
    <li class="last"><a href="<?php echo '/information/contact.html'; ?>"><?php echo "Контакты"; ?></a></li>
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