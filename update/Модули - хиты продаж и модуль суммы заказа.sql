INSERT INTO `oc_setting` ( `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(0, 'bestseller', 'bestseller_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(0, 'sub_total', 'sub_total_status', '1', 0),
(0, 'sub_total', 'sub_total_sort_order', '', 0);

INSERT INTO `oc_extension` ( `type`, `code`) VALUES
('module', 'bestseller'),
('total', 'sub_total');