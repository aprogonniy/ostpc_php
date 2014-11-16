
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
$( window ).ready(function() {
	$('#popup1').hide();
});
function openframe() {
	$('#popup1').show();
	$(function() {
$( "#popup1" ).dialog({
modal: true,

});
});
$( "#popup1" ).dialog({
dialogClass: "no-close",
height: 800,
width : 700 
});
$('#popup1').width("800px");
}

</script>

<style>
.no-close .ui-dialog-titlebar-close {
display: none;
}
#wrap { width: 600px; height: 390px; padding: 0; overflow: hidden; }
#popup1 { width: 1000px; height: 1200px; }
#popup1 {
	-ms-zoom: 0.9;
	-moz-transform: scale(0.9);
	-moz-transform-origin: 0 0;
	-o-transform: scale(0.9);
	-o-transform-origin: 0 0;
	-webkit-transform: scale(0.9);
	-webkit-transform-origin: 0 0;
}
</style>


<form action="<?php echo $action; ?>" method="post" target = "popup1" onsubmit = "openframe()">
  <input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
  <div class="buttons">
    <div class="right">
      <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
    </div>
  </div>
</form>

<iframe id = "popup1" name = "popup1"> </iframe>