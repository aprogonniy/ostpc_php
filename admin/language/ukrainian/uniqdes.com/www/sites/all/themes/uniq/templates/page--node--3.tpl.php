<?php

/**
 * @file
 * Bartik's theme implementation to display a single Drupal page.
 *
 * The doctype, html, head and body tags are not in this template. Instead they
 * can be found in the html.tpl.php template normally located in the
 * modules/system directory.
 *
 * Available variables:
 *
 * General utility variables:
 * - $base_path: The base URL path of the Drupal installation. At the very
 *   least, this will always default to /.
 * - $directory: The directory the template is located in, e.g. modules/system
 *   or themes/bartik.
 * - $is_front: TRUE if the current page is the front page.
 * - $logged_in: TRUE if the user is registered and signed in.
 * - $is_admin: TRUE if the user has permission to access administration pages.
 *
 * Site identity:
 * - $front_page: The URL of the front page. Use this instead of $base_path,
 *   when linking to the front page. This includes the language domain or
 *   prefix.
 * - $logo: The path to the logo image, as defined in theme configuration.
 * - $site_name: The name of the site, empty when display has been disabled
 *   in theme settings.
 * - $site_slogan: The slogan of the site, empty when display has been disabled
 *   in theme settings.
 * - $hide_site_name: TRUE if the site name has been toggled off on the theme
 *   settings page. If hidden, the "element-invisible" class is added to make
 *   the site name visually hidden, but still accessible.
 * - $hide_site_slogan: TRUE if the site slogan has been toggled off on the
 *   theme settings page. If hidden, the "element-invisible" class is added to
 *   make the site slogan visually hidden, but still accessible.
 *
 * Navigation:
 * - $main_menu (array): An array containing the Main menu links for the
 *   site, if they have been configured.
 * - $secondary_menu (array): An array containing the Secondary menu links for
 *   the site, if they have been configured.
 * - $breadcrumb: The breadcrumb trail for the current page.
 *
 * Page content (in order of occurrence in the default page.tpl.php):
 * - $title_prefix (array): An array containing additional output populated by
 *   modules, intended to be displayed in front of the main title tag that
 *   appears in the template.
 * - $title: The page title, for use in the actual HTML content.
 * - $title_suffix (array): An array containing additional output populated by
 *   modules, intended to be displayed after the main title tag that appears in
 *   the template.
 * - $messages: HTML for status and error messages. Should be displayed
 *   prominently.
 * - $tabs (array): Tabs linking to any sub-pages beneath the current page
 *   (e.g., the view and edit tabs when displaying a node).
 * - $action_links (array): Actions local to the page, such as 'Add menu' on the
 *   menu administration interface.
 * - $feed_icons: A string of all feed icons for the current page.
 * - $node: The node object, if there is an automatically-loaded node
 *   associated with the page, and the node ID is the second argument
 *   in the page's path (e.g. node/12345 and node/12345/revisions, but not
 *   comment/reply/12345).
 *
 * Regions:
 * - $page['header']: Items for the header region.
 * - $page['featured']: Items for the featured region.
 * - $page['highlighted']: Items for the highlighted content region.
 * - $page['help']: Dynamic help text, mostly for admin pages.
 * - $page['content']: The main content of the current page.
 * - $page['sidebar_first']: Items for the first sidebar.
 * - $page['triptych_first']: Items for the first triptych.
 * - $page['triptych_middle']: Items for the middle triptych.
 * - $page['triptych_last']: Items for the last triptych.
 * - $page['footer_firstcolumn']: Items for the first footer column.
 * - $page['footer_secondcolumn']: Items for the second footer column.
 * - $page['footer_thirdcolumn']: Items for the third footer column.
 * - $page['footer_fourthcolumn']: Items for the fourth footer column.
 * - $page['footer']: Items for the footer region.
 *
 * @see template_preprocess()
 * @see template_preprocess_page()
 * @see template_process()
 * @see bartik_process_page()
 * @see html.tpl.php
 */
?>

<!DOCTYPE HTML>
<html>
<head>
    <title><?php print $title; ?></title>
    <meta charset="utf-8">
    <link href="<?php print '/' . path_to_theme() . '/'; ?>images/favicon.png" rel="shortcut icon">
    <link href="<?php print '/' . path_to_theme() . '/'; ?>images/favicon.png" rel="bookmark icon">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="grey">
    <!--	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">-->

</head>
<body>
<div id="header">
    <!-- Start navigation area -->
    <div id="navigation">
        <div id="navigation_wrap">
            <!-- Start contact info area -->
            <div id="conteactinfo">
                <?php if(variable_get('site_mail', '') != '') { ?><strong>Email:</strong> <a href="mailto:<?php print variable_get('site_mail', ''); ?>"><?php print variable_get('site_mail', ''); ?></a> | <?php } ?>
                <?php if(variable_get('site_skype', '') != '') { ?><strong>Skype:</strong> <a href="skype:<?php print variable_get('site_skype', ''); ?>?chat"><?php print variable_get('site_skype', ''); ?></a> | <?php } ?>
                <?php if(variable_get('site_phone', '') != '') { ?><strong>Телефон:</strong> <?php print variable_get('site_phone', ''); ?> <?php } ?>
            </div>
            <!-- End contact info area -->
            <!-- Start navigation -->
            <?php print uniq_navigation(3); ?>
            <!-- End navigation -->
        </div>
    </div>
    <!-- End navigation area -->
    <div class="clear"></div>
    <!-- Start Social & Logo area -->
    <div id="header_small">
        <!-- Start Social area -->
        <div id="header-button">
            <a class="header-button" href="/контакты">ЗАДАТЬ ВОПРОС ОНЛАЙН</a>
            <a class="header-button disabled" href="#">СДЕЛАТЬ ЗАКАЗ</a>
        </div>
        <!-- End Socialarea -->
        <!-- Start Logo area -->
        <div class="logo_container"><a href="<?php print $front_page; ?>"><div id="site_logo">&nbsp;</div></a></div>
        <!-- End Logo area -->
    </div>
    <!-- End Social & Logo area -->
</div>

<div id="main">
    <?php if ($title): ?>
        <!-- Start H1 Title -->
        <div class="titlesnormal">
            <h1><?php print $title; ?></h1>
            <span></span> </div>
        <!-- End H1 Title -->
    <?php endif; ?>
    <!-- Start Main Body Wrap -->
    <div id="main-wrap">

        <?php if ($messages): ?>
            <div id="messages"><div class="section clearfix">
                    <?php print $messages; ?>
                </div></div> <!-- /.section, /#messages -->
        <?php endif; ?>

        <!-- Start Box -->
        <div class="boxes-full">
            <div class="boxes-padding fullpadding">
                <!-- Start None Split Section -->
                <div class="splitnone">
                    <!-- Start Portfolio Filter -->
                    <div id="portfolio-filter">
                        <ul>
                            <li><strong>Фильтр: </strong></li>
                            <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter="*">показать все</a></li>

                            <?php

                            $terms = taxonomy_get_tree(2);

                            foreach($terms as $term):

                            ?>

                            <li><a href="#portfolio-filter" class="orangebutton smallrectange" data-filter=".term<?php print $term->tid; ?>"><?php print $term->name; ?></a></li>

                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <!-- End Portfolio Filter -->
                </div>
                <!-- End None Split Section -->
            </div>
            <span class="box-arrow"> </span> </div>
        <!-- End Box -->
        <!-- Start Box -->
        <div class="boxes-full" style="margin:15px 0px 20px 0px">
            <div class="boxes-padding fullpadding">
                <!-- Start None Split Section -->
                <div class="splitnone">
                    <div id="portfolio-container">
                        <!-- Start 4 column portfolio -->

                        <?php

                        $nodes = uniq_get_nodes('portfolio_item');

                        foreach($nodes as $node):

                        $node_uri = drupal_lookup_path('alias','node/' . $node->nid);

                        ?>

                            <div class="element3 term<?php print $node->field_port_categ['und'][0]['tid']; ?>">
                                <a href="<?php print '/' . $node_uri; ?>">
                                    <div class="portfoliowrap">
                                        <div class="title"> <?php print $node->title; ?> <span class="titlearrow"></span></div>
                                        <div class="portfolioimage"><img src="/<?php print variable_get('file_public_path') . '/portfolio/thumb/' . $node->field_port_thumb['und'][0]['filename']; ?>" alt=""></div>
                                        <div class="text"> <?php print $node->field_port_short['und'][0]['value']; ?> <span class="textarrow"></span></div>
                                    </div>
                                </a>
                            </div>

                        <?php endforeach; ?>

                        <!-- End 4 column portfolio -->
                    </div>
                </div>
                <!-- End None Split Section -->
            </div>
        </div>
        <!-- End Box -->

    </div>
    <!-- End Main Body Wrap -->
</div>

<!-- Start Footer -->
<div id="footer">
    <!-- Start Footer Top -->
    <div id="footertop" style="height: 0"></div>
    <div class="clear"></div>
    <!-- Start Footer Bottom -->
    <div id="footerbottom">
        <div class="footerwrap">
            <!-- Start Copyright Div -->
            <div id="copyright"><a target="_blank" href="http://uniqdes.com">uniqdes</a> &copy; 2014. Все права защищены.</div>
            <!-- End Copyright Div -->
            <!-- Start Social area -->
            <div class="socialfooter">
                <?php print uniq_add_this(); ?>
            </div>

            <!-- End Socialarea -->
        </div>
    </div>
    <!-- End Footer Bottom -->
</div>
<!-- End Footer -->
<!-- Start Scroll To Top Div -->
<div id="scrolltab"></div>
<!-- End Scroll To Top Div -->
</body>
</html>