<?php

/**
 * @file
 * Implementation to display a single Drupal page while offline.
 *
 * All the available variables are mirrored in page.tpl.php.
 *
 * @see template_preprocess()
 * @see template_preprocess_maintenance_page()
 * @see bartik_process_maintenance_page()
 */
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
	<?php print $head; ?>
	<title><?php print $head_title; ?></title>

<!--	--><?php //print $styles; ?>
<!--	--><?php //print $scripts; ?>

	<style type="text/css">
		body { text-align: center; padding: 150px; }
		h1 { font-size: 50px; }
		body { font: 20px Helvetica, sans-serif; color: #333; }
		#article { display: block; text-align: left; width: 650px; margin: 0 auto; }
		a { color: #dc8100; text-decoration: none; }
		a:hover { color: #333; text-decoration: none; }
	</style>

</head>
<body>
<div id="article">
	<h1><?php print $title; ?></h1>
	<div>
		<p><?php print $content; ?></p>
		<p>&mdash; Команда UniqDes</p>
	</div>
</div>
</body>
</html>
