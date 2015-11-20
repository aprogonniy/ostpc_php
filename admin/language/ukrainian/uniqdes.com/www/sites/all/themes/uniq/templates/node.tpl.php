<?php

/**
 * @file
 * Bartik's theme implementation to display a node.
 *
 * Available variables:
 * - $title: the (sanitized) title of the node.
 * - $content: An array of node items. Use render($content) to print them all,
 *   or print a subset such as render($content['field_example']). Use
 *   hide($content['field_example']) to temporarily suppress the printing of a
 *   given element.
 * - $user_picture: The node author's picture from user-picture.tpl.php.
 * - $date: Formatted creation date. Preprocess functions can reformat it by
 *   calling format_date() with the desired parameters on the $created variable.
 * - $name: Themed username of node author output from theme_username().
 * - $node_url: Direct URL of the current node.
 * - $display_submitted: Whether submission information should be displayed.
 * - $submitted: Submission information created from $name and $date during
 *   template_preprocess_node().
 * - $classes: String of classes that can be used to style contextually through
 *   CSS. It can be manipulated through the variable $classes_array from
 *   preprocess functions. The default values can be one or more of the
 *   following:
 *   - node: The current template type; for example, "theming hook".
 *   - node-[type]: The current node type. For example, if the node is a
 *     "Blog entry" it would result in "node-blog". Note that the machine
 *     name will often be in a short form of the human readable label.
 *   - node-teaser: Nodes in teaser form.
 *   - node-preview: Nodes in preview mode.
 *   The following are controlled through the node publishing options.
 *   - node-promoted: Nodes promoted to the front page.
 *   - node-sticky: Nodes ordered above other non-sticky nodes in teaser
 *     listings.
 *   - node-unpublished: Unpublished nodes visible only to administrators.
 * - $title_prefix (array): An array containing additional output populated by
 *   modules, intended to be displayed in front of the main title tag that
 *   appears in the template.
 * - $title_suffix (array): An array containing additional output populated by
 *   modules, intended to be displayed after the main title tag that appears in
 *   the template.
 *
 * Other variables:
 * - $node: Full node object. Contains data that may not be safe.
 * - $type: Node type; for example, story, page, blog, etc.
 * - $comment_count: Number of comments attached to the node.
 * - $uid: User ID of the node author.
 * - $created: Time the node was published formatted in Unix timestamp.
 * - $classes_array: Array of html class attribute values. It is flattened
 *   into a string within the variable $classes.
 * - $zebra: Outputs either "even" or "odd". Useful for zebra striping in
 *   teaser listings.
 * - $id: Position of the node. Increments each time it's output.
 *
 * Node status variables:
 * - $view_mode: View mode; for example, "full", "teaser".
 * - $teaser: Flag for the teaser state (shortcut for $view_mode == 'teaser').
 * - $page: Flag for the full page state.
 * - $promote: Flag for front page promotion state.
 * - $sticky: Flags for sticky post setting.
 * - $status: Flag for published status.
 * - $comment: State of comment settings for the node.
 * - $readmore: Flags true if the teaser content of the node cannot hold the
 *   main body content.
 * - $is_front: Flags true when presented in the front page.
 * - $logged_in: Flags true when the current user is a logged-in member.
 * - $is_admin: Flags true when the current user is an administrator.
 *
 * Field variables: for each field instance attached to the node a corresponding
 * variable is defined; for example, $node->body becomes $body. When needing to
 * access a field's raw values, developers/themers are strongly encouraged to
 * use these variables. Otherwise they will have to explicitly specify the
 * desired field language; for example, $node->body['en'], thus overriding any
 * language negotiation rule that was previously applied.
 *
 * @see template_preprocess()
 * @see template_preprocess_node()
 * @see template_process()
 */
?>

<?php if($type == 'portfolio_item'): ?>
    <!-- Start Left Section -->
    <div class="leftsection">
      <!-- Start Blog Post -->
      <div class="blogwrapstart">
        <div class="blogtitle">
          <h3 style="color: #da620b;font-weight: normal;">Подробное описание</h3>
        </div>
        <div class="blogbody">
          <!-- Start Blog Image -->
          <div class="blogimage"><img src="/<?php print variable_get('file_public_path') . '/portfolio/full/' . $content['field_port_img'][0]['#item']['filename']; ?>" alt="<?php print $content['field_port_img']['#object']->title; ?>"></div>
          <!-- End Blog Text -->
          <!-- Start Blog Text -->
          <div class="blogtext">
            <?php print $content['field_port_text'][0]['#markup']; ?>
          </div>
          <!-- End Blog Text -->
        </div>
        </div>
      <!-- End Blog Post -->
    </div>
    <!-- End Left Section -->
    <!-- Start Right Section -->
    <div class="rightsection">
        <!-- Start Blog Widget -->
        <div class="blogwidgetstart">
            <!-- Start Advertising Widget -->
            <div class="widgettitle">
                <h4 style="font-size:19px;font-weight: normal;">Мы в социальных сетях</h4>
            </div>
            <div class="widgetbody" style="padding: 10px !important;">
                <div class="blogadvertising">

                    <?php print uniq_vk_group(); ?>

                </div>
            </div>
            <!-- End Advertising Widget -->
        </div>
        <!-- End Blog Widget -->
    </div>
    <!-- End Right Section -->






<?php elseif($type == 'news_item'): ?>
    <!-- Start Left Section -->
    <div class="leftsection">
        <!-- Start Blog Post -->
        <div class="blogwrapstart">
            <div class="blogtitle">
                <h3 style="color: #da620b;font-weight: normal;">Подробное описание</h3>
            </div>
            <div class="blogbody" style="padding-top:0">
                <!-- Start Blog Text -->
                <div class="blogtext">
                    <?php print $content['body']["#object"]->body["und"][0]['value']; ?>
                </div>
                <!-- End Blog Text -->
            </div>
        </div>
        <!-- End Blog Post -->
    </div>
    <!-- End Left Section -->
    <div class="rightsection">
        <!-- Start Blog Widget -->
        <div class="blogwidgetstart">

            <?php $terms = taxonomy_get_tree(3);?>
            <!-- Start Categories Widget -->
            <div class="widgettitle">
                <h4 style="font-size:19px;font-weight: normal;">Категории</h4>
            </div>
            <div class="widgetbody">
                <div class="blogcategories">
                    <ul>
                        <?php foreach($terms as $term): ?>
                            <?php
                            $term_obj  = taxonomy_term_load($term->tid);
                            $term_uri  = taxonomy_term_uri($term_obj);
                            $term_path = drupal_get_path_alias($term_uri['path']);
                            ?>
                            <li><a href="/<?php print $term_path; ?>"><?php print $term->name; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
            <!-- End Categories Widget -->

            <span class="box-arrow"></span> </div>
        <!-- End Blog Widget -->
        <!--                <!-- Start Blog Widget -->
        <!--                <div class="blogwidget">-->
        <!--                    <!-- Start Categories Widget -->
        <!--                    <div class="widgettitle">-->
        <!--                        <h4 style="font-size:19px;font-weight: normal;">Топ 5 новостей</h4>-->
        <!--                    </div>-->
        <!--                    <div class="widgetbody">-->
        <!--                        <div class="blogcategories">-->
        <!--                            <ul>-->
        <!--                                <li><a href="#">Привет мир!</a></li>-->
        <!--                                <li><a href="#">Привет мир2!</a></li>-->
        <!--                                <li><a href="#">Привет мир3!</a></li>-->
        <!--                                <li><a href="#">Привет мир4!</a></li>-->
        <!--                                <li><a href="#">Привет мир5!</a></li>-->
        <!--                            </ul>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <!--                    <!-- End Categories Widget -->
        <!--                    <span class="box-arrow"></span> </div>-->
        <!--                <!-- End Blog Widget -->

        <!-- Start Blog Widget -->
        <div class="blogwidget">
            <!-- Start Advertising Widget -->
            <div class="widgettitle">
                <h4 style="font-size:19px;font-weight: normal;">Мы в социальных сетях</h4>
            </div>
            <div class="widgetbody" style="padding: 10px !important;">
                <div class="blogadvertising">

                    <?php print uniq_vk_group(); ?>

                </div>
            </div>
            <!-- End Advertising Widget -->
        </div>
        <!-- End Blog Widget -->
    </div>
            <!-- End Right Section -->
<?php else: ?>










<!-- Start Full Width -->
    <?php print render($content); ?>
<!-- End Full Width -->
<?php endif; ?>