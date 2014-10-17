<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>
  <div class="box-container">
    <div class="wishlist-product">
      <div class="table-radius">
        <table>

        <thead>
          <tr>
            <td class="remove"> Remove </td>
            <td class="image"><?php echo $column_image; ?></td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="model"><?php echo $column_model; ?></td>
            <td class="stock"><?php echo $column_stock; ?></td>
            <td class="price"><?php echo $column_price; ?></td>
            <td class="action"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <?php foreach ($products as $product) { ?>
        <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
          <tr>
            <td class="remove"><a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/theme_free/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
            <td class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
            <td class="model"><?php echo $product['model']; ?></td>
            <td class="stock"><div class="prod-stock"><?php echo $product['stock']; ?></div></td>
            <td class="price"><?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                <?php } ?>
              </div>
              <?php } ?></td>
            <td class="action"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></td>
          </tr>
        </tbody>
        <?php } ?>
      </table>
    </div>
    </div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button-cont-right"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </div>
  <?php } else { ?>
  <div class="box-container">
    <div class="content"><?php echo $text_empty; ?></div>
    <div class="buttons">
      <div class="right"><a href="<?php echo $continue; ?>" class="button-cont-right"><span><?php echo $button_continue; ?></span></a></div>
    </div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>