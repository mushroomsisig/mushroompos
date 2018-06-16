CREATE TABLE `mushroom_admin` (
  `admin_firstname` varchar(40) NOT NULL,
  `admin_lastname` varchar(40) NOT NULL,
  `admin_email` varchar(40) NOT NULL,
  `admin_username` varchar(40) NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  `admin_picture` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_android_slider` (
  `slider_number` varchar(45) NOT NULL,
  `slider_picture` varchar(190) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_cart` (
  `cart_code` varchar(45) NOT NULL,
  `cart_user` varchar(45) NOT NULL,
  `cart_image` varchar(200) NOT NULL,
  `cart_food` varchar(80) NOT NULL,
  `cart_quantity` varchar(45) NOT NULL,
  `cart_price` varchar(45) NOT NULL,
  `cart_subprice` varchar(45) NOT NULL,
  `cart_status` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_city` (
  `city_code` varchar(45) NOT NULL,
  `city_name` varchar(85) NOT NULL,
  `city_delivery_fee` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_delivery` (
  `delivery_code` varchar(45) NOT NULL,
  `delivery_type` varchar(45) NOT NULL,
  `delivery_table` varchar(45) DEFAULT NULL,
  `delivery_customer` varchar(45) NOT NULL,
  `delivery_username` varchar(45) NOT NULL,
  `delivery_contact` varchar(45) NOT NULL,
  `delivery_date` varchar(45) NOT NULL,
  `delivery_sales_date` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL,
  `delivery_seconds` varchar(45) NOT NULL,
  `delivery_address` varchar(65) NOT NULL,
  `delivery_status` varchar(45) NOT NULL,
  `delivery_archive` varchar(45) NOT NULL,
  `delivery_served` varchar(45) NOT NULL,
  `delivery_notify` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_foods` (
  `food_code` varchar(45) NOT NULL,
  `food_name` varchar(45) NOT NULL,
  `food_category` varchar(45) DEFAULT NULL,
  `food_price` varchar(30) DEFAULT NULL,
  `food_date` varchar(45) NOT NULL,
  `food_image` varchar(95) DEFAULT NULL,
  `food_status` varchar(45) NOT NULL,
  `food_archive` varchar(45) NOT NULL,
  `food_time` varchar(45) NOT NULL,
  KEY `food_category` (`food_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_ip` (
  `ip_address` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_orders` (
  `delivery_code` varchar(45) NOT NULL,
  `order_foods` varchar(45) NOT NULL,
  `order_quantity` varchar(45) NOT NULL,
  `order_price` varchar(45) NOT NULL,
  `order_subtotal` varchar(45) NOT NULL,
  KEY `delivery_code` (`delivery_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_products` (
  `food_category` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` varchar(30) DEFAULT NULL,
  `product_date` varchar(45) NOT NULL,
  `product_status` varchar(45) NOT NULL,
  `product_archive` varchar(45) NOT NULL,
  `product_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_queue` (
  `queue_code` varchar(45) NOT NULL,
  `queue_type` varchar(45) NOT NULL,
  `queue_table` varchar(45) NOT NULL,
  `queue_customer` varchar(45) NOT NULL,
  `queue_username` varchar(45) NOT NULL,
  `queue_contact` varchar(45) NOT NULL,
  `queue_seconds` varchar(45) NOT NULL,
  `queue_address` varchar(65) NOT NULL,
  `queue_paid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_queue_orders` (
  `queue_code` varchar(45) NOT NULL,
  `orders_foods` varchar(45) NOT NULL,
  `orders_quantity` varchar(45) NOT NULL,
  `orders_price` varchar(45) NOT NULL,
  `orders_subtotal` varchar(45) NOT NULL,
  `queue_paid` varchar(45) NOT NULL,
  `queue_discount` varchar(45) NOT NULL,
  KEY `queue_code` (`queue_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_reservation` (
  `reserve_code` varchar(45) NOT NULL,
  `reserve_customer` varchar(45) NOT NULL,
  `reserve_username` varchar(45) NOT NULL,
  `reserve_contact` varchar(45) NOT NULL,
  `reserve_seconds` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_reservation_orders` (
  `reserve_code` varchar(45) NOT NULL,
  `reserve_orders_foods` varchar(45) NOT NULL,
  `reserve_orders_quantity` varchar(45) NOT NULL,
  `reserve_orders_price` varchar(45) NOT NULL,
  `reserve_orders_subtotal` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_slider` (
  `slider_number` varchar(45) NOT NULL,
  `slider_picture` varchar(190) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_staff` (
  `staff_firstname` varchar(45) NOT NULL,
  `staff_lastname` varchar(45) NOT NULL,
  `staff_email` varchar(45) NOT NULL,
  `staff_contact` varchar(45) NOT NULL,
  `staff_gender` varchar(45) NOT NULL,
  `staff_username` varchar(45) NOT NULL,
  `staff_password` varchar(90) NOT NULL,
  `staff_picture` varchar(90) NOT NULL,
  `staff_seconds` varchar(45) NOT NULL,
  `staff_status` varchar(45) NOT NULL,
  `staff_changed` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_summary` (
  `summary_foods` varchar(45) NOT NULL,
  `summary_quantity` varchar(45) NOT NULL,
  `summary_date` varchar(45) NOT NULL,
  `summary_seconds` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_tables` (
  `table_number` varchar(45) NOT NULL,
  `table_status` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_trails` (
  `trail_name` varchar(45) NOT NULL,
  `trail_role` varchar(45) NOT NULL,
  `trail_date` varchar(45) NOT NULL,
  `trail_seconds` varchar(45) NOT NULL,
  `trail_action` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1; 

CREATE TABLE `mushroom_users` (
  `user_fullname` varchar(45) NOT NULL,
  `user_status` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_contact` varchar(45) NOT NULL,
  `user_gender` varchar(45) NOT NULL,
  `user_username` varchar(45) NOT NULL,
  `user_password` varchar(145) NOT NULL,
  `user_address` varchar(65) NOT NULL,
  `user_province` varchar(45) NOT NULL,
  `user_city` varchar(45) NOT NULL,
  `user_picture` varchar(200) NOT NULL,
  `user_seconds` varchar(45) NOT NULL,
  `user_verified` varchar(45) NOT NULL,
  PRIMARY KEY (`user_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
 
INSERT INTO `mushroom_admin` ( `admin_firstname`, `admin_lastname`, `admin_email`, `admin_username`, `admin_password`, `admin_picture`) VALUES 
('Lorenzo', 'Sequitin', 'rensequitin1@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'profile/9sB9R0e.jpg');  


INSERT INTO `mushroom_android_slider` ( `slider_number`, `slider_picture`) VALUES 
('Slider1', 'androidSlider/food1.png'), 
('Slider2', 'androidSlider/food2.png'), 
('Slider3', 'androidSlider/food3.png');  


INSERT INTO `mushroom_cart` ( `cart_code`, `cart_user`, `cart_image`, `cart_food`, `cart_quantity`, `cart_price`, `cart_subprice`, `cart_status`) VALUES 
('57164', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_liemposilog.png', 'Liemposilog', '1', '120', '120', 'Waiting'), 
('11139', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_cornsilog.png', 'Cornsilog', '1', '120', '120', 'Waiting'), 
('21532', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_chicksilog.png', 'Chicksilog', '1', '120', '120', 'Waiting'), 
('94963', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_bangsilog.png', 'Bangsilog', '1', '120', '120', 'Waiting'), 
('38700', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_longbangsilog.png', 'Longbangsilog', '1', '120', '120', 'Waiting'), 
('62003', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_longsilog.png', 'Longsilog', '1', '120', '120', 'Waiting'), 
('5144', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_porkadobosilog.png', 'Pork-adobo-silog', '1', '120', '120', 'Waiting'), 
('67275', 'momorings', 'http://192.168.1.4/mushroomsisig/foods/allday_porksilog.png', 'Porksilog', '1', '120', '120', 'Waiting'), 
('99444', 'harold1', 'http://192.168.1.4/mushroomsisig/foods/allday_chicksilog.png', 'Chicksilog', '2', '120', '240', 'Waiting'), 
('62356', 'harold1', 'http://192.168.1.4/mushroomsisig/foods/allday_cornsilog.png', 'Cornsilog', '1', '120', '120', 'Waiting'), 
('66237', 'harold1', 'http://192.168.1.4/mushroomsisig/foods/allday_liemposilog.png', 'Liemposilog', '2', '120', '240', 'Waiting'), 
('90892', 'harold1', 'http://192.168.1.4/mushroomsisig/foods/allday_longsilog.png', 'Longsilog', '1', '120', '120', 'Waiting'), 
('28681', 'harold1', 'http://192.168.1.4/mushroomsisig/foods/allday_porksilog.png', 'Porksilog', '1', '120', '120', 'Waiting');  


INSERT INTO `mushroom_city` ( `city_code`, `city_name`, `city_delivery_fee`) VALUES 
('CTY-7891223', 'Malolos', '20'), 
('CTY-8795243', 'Plaridel', '30');  


INSERT INTO `mushroom_delivery` ( `delivery_code`, `delivery_type`, `delivery_table`, `delivery_customer`, `delivery_username`, `delivery_contact`, `delivery_date`, `delivery_sales_date`, `delivery_time`, `delivery_seconds`, `delivery_address`, `delivery_status`, `delivery_archive`, `delivery_served`, `delivery_notify`) VALUES 
('TKT280298983', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:12 PM', '1514729536', '', 'Completed', 'No', 'admin', 'No'), 
('TKT230244402', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:20 PM', '1514730032', '', 'Completed', 'No', 'admin', 'No'), 
('TKT105478717', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:27 PM', '1514730436', '', 'Completed', 'No', 'admin', 'No'), 
('TKT311829394', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:28 PM', '1514730508', '', 'Completed', 'No', 'admin', 'No'), 
('TKT994376471', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:44 PM', '1514731495', '', 'Completed', 'No', 'admin', 'No'), 
('TKT646218567', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:46 PM', '1514731609', '', 'Completed', 'No', 'admin', 'No'), 
('TKT195917370', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:47 PM', '1514731645', '', 'Completed', 'No', 'admin', 'No'), 
('TKT354839862', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:47 PM', '1514731647', '', 'Completed', 'No', 'admin', 'No'), 
('TKT481899907', 'Take-out', '', '', '', '', 'December 31, 2017', '171231', '10:48 PM', '1514731720', '', 'Completed', 'No', 'admin', 'No'), 
('ORD229599524', 'Dine-in', '1', '', '', '', 'December 31, 2017', '171231', '10:50 PM', '1514731814', '', 'Completed', 'No', 'admin', 'No'), 
('ORD638446533', 'Dine-in', '2', '', '', '', 'December 31, 2017', '171231', '10:50 PM', '1514731822', '', 'Completed', 'No', 'admin', 'No'), 
('TKT251737903', 'Take-out', '', '', '', '', 'January 01, 2018', '180101', '09:44 PM', '1514814260', '', 'Completed', 'No', 'admin', 'No'), 
('ORD675054453', 'Dine-in', '2', '', '', '', 'January 01, 2018', '180101', '09:44 PM', '1514814296', '', 'Completed', 'No', 'admin', 'No'), 
('ORD693264906', 'Dine-in', '8', '', '', '', 'January 01, 2018', '180101', '09:45 PM', '1514814341', '', 'Completed', 'No', 'admin', 'No'), 
('ORD488877017', 'Dine-in', '9', '', '', '', 'January 01, 2018', '180101', '09:49 PM', '1514814546', '', 'Completed', 'No', 'admin', 'No'), 
('ORD212273606', 'Dine-in', '2', '', '', '', 'January 01, 2018', '180101', '09:51 PM', '1514814669', '', 'Completed', 'No', 'admin', 'No'), 
('ORD801859094', 'Dine-in', '2', '', '', '', 'January 01, 2018', '180101', '09:55 PM', '1514814924', '', 'Completed', 'No', 'admin', 'No'), 
('ORD765224183', 'Dine-in', '2', '', '', '', 'January 02, 2018', '180102', '12:38 AM', '1514824682', '', 'Completed', 'No', 'admin', 'No'), 
('ORD795491581', 'Dine-in', '13', '', '', '', 'March 24, 2018', '180324', '10:54 PM', '1521903293', '', 'Completed', 'No', 'admin', 'No'), 
('TKT355647031', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '11:55 AM', '1521950135', '', 'Completed', 'No', 'admin', 'No'), 
('TKT204591331', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '03:52 PM', '1521964358', '', 'Completed', 'No', 'admin', 'No'), 
('TKT633549585', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '03:57 PM', '1521964636', '', 'Completed', 'No', 'admin', 'No'), 
('TKT311675513', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:07 PM', '1521965243', '', 'Completed', 'No', 'admin', 'No'), 
('TKT561101064', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:13 PM', '1521965610', '', 'Completed', 'No', 'admin', 'No'), 
('TKT873538658', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:16 PM', '1521965780', '', 'Completed', 'No', 'admin', 'No'), 
('TKT342598337', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:21 PM', '1521966109', '', 'Completed', 'No', 'admin', 'No'), 
('TKT722346757', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:23 PM', '1521966191', '', 'Completed', 'No', 'admin', 'No'), 
('TKT155732727', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:23 PM', '1521966213', '', 'Completed', 'No', 'admin', 'No'), 
('TKT938223207', 'Take-out', '', '', '', '', 'March 25, 2018', '180325', '04:23 PM', '1521966226', '', 'Completed', 'No', 'admin', 'No');  


INSERT INTO `mushroom_foods` ( `food_code`, `food_name`, `food_category`, `food_price`, `food_date`, `food_image`, `food_status`, `food_archive`, `food_time`) VALUES 
('allday_bangsilog', 'Bangsilog', 'allday', '120', 'November 20, 2017', 'foods/allday_bangsilog.png', 'Active', 'No', '1506960687'), 
('allday_chicksilog', 'Chicksilog', 'allday', '120', 'November 20, 2017', 'foods/allday_chicksilog.png', 'Active', 'No', '1506960684'), 
('allday_cornsilog', 'Cornsilog', 'allday', '120', 'November 20, 2017', 'foods/allday_cornsilog.png', 'Active', 'No', '1506960685'), 
('allday_liemposilog', 'Liemposilog', 'allday', '120', 'November 20, 2017', 'foods/allday_liemposilog.png', 'Active', 'No', '1506960683'), 
('allday_longbangsilog', 'Longbangsilog', 'allday', '120', 'November 20, 2017', 'foods/allday_longbangsilog.png', 'Active', 'No', '1506960682'), 
('allday_longsilog', 'Longsilog', 'allday', '120', 'November 20, 2017', 'foods/allday_longsilog.png', 'Active', 'No', '1506960681'), 
('allday_porkadobosilog', 'Pork-adobo-silog', 'allday', '120', 'November 20, 2017', 'foods/allday_porkadobosilog.png', 'Active', 'No', '1506960688'), 
('allday_porksilog', 'Porksilog', 'allday', '120', 'November 20, 2017', 'foods/allday_porksilog.png', 'Active', 'No', '1506960686'), 
('chips_banana', 'Banana', 'chips', '85', 'November 20, 2017', 'foods/chips_banana.png', 'Active', 'No', '1506960747'), 
('chips_camote', 'Camote', 'chips', '85', 'November 20, 2017', 'foods/chips_camote.png', 'Active', 'No', '1506960746'), 
('chips_chili', 'Crispy Mushroom (Chili)', 'chips', '85', 'November 20, 2017', 'foods/chips_chili.png', 'Active', 'No', '1506960743'), 
('chips_garlic', 'Crispy Mushroom (Garlic)', 'chips', '85', 'November 20, 2017', 'foods/chips_garlic.png', 'Active', 'No', '1506960742'), 
('chips_mushroom', 'Crispy Mushroom', 'chips', '180', 'November 20, 2017', 'foods/chips_original.png', 'Active', 'No', '1506960741'), 
('chips_taro', 'Taro', 'chips', '85', 'November 20, 2017', 'foods/chips_taro.png', 'Active', 'No', '1506960745'), 
('desserts_buko', 'Buko Pandan', 'desserts', '35', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960749'), 
('desserts_jelly', 'Coffee Jelly', 'desserts', '35', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960748'), 
('desserts_salad', 'Fruit Salad', 'desserts', '35', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960751'), 
('meriendas_batchoy', 'Lapaz Batchoy', 'meriendas', '80', 'November 20, 2017', 'foods/meriendas_lapaz.png', 'Active', 'No', '1506960736'), 
('meriendas_beefmami', 'Beef Mami', 'meriendas', '80', 'November 20, 2017', 'foods/meriendas_beefmami.png', 'Active', 'No', '1506960738'), 
('meriendas_burger', 'Mushroom Burger w/ fries', 'meriendas', '70', 'November 20, 2017', 'foods/meriendas_burger.png', 'Active', 'No', '1506960739'), 
('meriendas_canton', 'Pancit Canton', 'meriendas', '80', 'November 20, 2017', 'foods/meriendas_pancit.png', 'Active', 'No', '1506960735'), 
('meriendas_mami', 'Chicken Mami', 'meriendas', '80', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960737'), 
('meriendas_salmon', 'Carbonara', 'meriendas', '80', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960732'), 
('meriendas_siomai', '5 pcs. Mushroom Siomai', 'meriendas', '40', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960741'), 
('meriendas_spaghetti', 'Spaghetti Meatballs', 'meriendas', '80', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960734'), 
('meriendas_tuna', 'Tuna Pesto', 'meriendas', '80', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960733'), 
('meriendas_turon', '5 pcs. Turon w/ Langka', 'meriendas', '40', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960742'), 
('shortorder_kangkong', 'Crispy Kangkong', 'shortorder', '85', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960705'), 
('shortorder_lumpia', '4 pcs. Mushroom Lumpiang Shanghai', 'shortorder', '40', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960712'), 
('shortorder_onion', 'Onion Rings', 'shortorder', '85', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960706'), 
('shortorder_pumpkin_mushroom', 'Pumpkin Mushroom Soup', 'shortorder', '40', 'November 20, 2017', 'foods/shortorder_pumpkin_mushroom.png', 'Active', 'No', '1506960709'), 
('shortorder_saluyot', 'Crispy Saluyot', 'shortorder', '85', 'November 20, 2017', 'foods/shortorder_saluyot.png', 'Active', 'No', '1506960708'), 
('shortorder_saluyot_mushroom', 'Saluyot w/ Mushroom Soup', 'shortorder', '40', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960710'), 
('shortorder_shrimp', 'Shrimp Tempura', 'shortorder', '140', 'November 20, 2017', 'foods/shortorder_shrimp.png', 'Active', 'No', '1506960704'), 
('shortorder_vegetable', 'Vegetable Tempura', 'shortorder', '85', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960707'), 
('sinigang_bangus', 'Boneless Bangus sa Sampalok', 'sinigang', '170', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960715'), 
('sinigang_hipon', 'Hipon sa Sampalok', 'sinigang', '170', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960714'), 
('sinigang_salmon', 'Pink Salmon Head sa Miso', 'sinigang', '170', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960713'), 
('sizzlingfor3_bangus', 'Sizzling Bangus Sisig', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960728'), 
('sizzlingfor3_beef', 'Sizzling Beef Spicy', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960723'), 
('sizzlingfor3_chicken', 'Sizzling Chicken Sisig', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960729'), 
('sizzlingfor3_oyster', 'Sizzling Oyster Mushroom', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960727'), 
('sizzlingfor3_pork', 'Sizzling Pork Sisig', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960726'), 
('sizzlingfor3_salmon', 'Sizzling Pink Salmon Head w/ mushroom atsara', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960731'), 
('sizzlingfor3_seafood', 'Sizzling Seafood Sisig', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960725'), 
('sizzlingfor3_tofu', 'Sizzling Tofu Sisig', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960730'), 
('sizzlingfor3_tokwa', 'Sizzling Tokwat Baboy', 'sizzlingfor3', '150', 'November 20, 2017', 'foods/sizzlingfor3_tofu.png', 'Active', 'No', '1506960724'), 
('sizzling_bangus', 'Bangus Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sisig_mushroomsisig.png', 'Active', 'No', '1506960719'), 
('sizzling_beef', 'Beef Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sizzling_beef.png', 'Active', 'No', '1506960717'), 
('sizzling_chicken', 'Chicken Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sisig_mushroomsisig.png', 'Active', 'No', '1506960716');  


INSERT INTO `mushroom_foods` ( `food_code`, `food_name`, `food_category`, `food_price`, `food_date`, `food_image`, `food_status`, `food_archive`, `food_time`) VALUES 
('sizzling_mushroom', 'Mushroom Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sizzling_mushroom.png', 'Active', 'No', '1506960715'), 
('sizzling_pork', 'Pork Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sizzling_pork.png', 'Active', 'No', '1506960721'), 
('sizzling_seafood', 'Seafood Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sizzling_seafood.png', 'Active', 'No', '1506960720'), 
('sizzling_tofu', 'Tofu Sisig', 'sizzling', '120', 'November 20, 2017', 'foods/sisig_mushroomsisig.png', 'Active', 'No', '1506960722'), 
('student_finger', 'Chicken Finger', 'student', '50', 'November 20, 2017', 'foods/student_cfinger.png', 'Active', 'No', '1506960692'), 
('student_teriyaki', 'Chicken Teriyaki', 'student', '50', 'November 20, 2017', 'foods/student_teriyaki.png', 'Active', 'No', '1506960701'), 
('student_tongkatsu', 'Chicken Tongkatsu', 'student', '50', 'November 20, 2017', 'foods/student_tongkatsu.png', 'Active', 'No', '1506960703'), 
('student_wings', 'Buffalo Wings', 'student', '50', 'November 20, 2017', 'foods/student_bwings.png', 'Active', 'No', '1506960691'), 
('addon_rice', 'Rice', 'addon', '15', 'December 02, 2017', 'foods/sizzling_mushroom.png', 'Active', 'No', '1512227641'), 
('sizzling_chickens', 'Fried Chicken', 'sizzling', '40', 'December 07, 2017', 'foods/sizzling_mushroom.png', 'Active', 'Yes', '1512622646'), 
('FDS-666476432', 'drinks', 'addon', '12', 'December 18, 2017', 'foods/sizzling_mushroom.png', 'Active', 'Yes', '1513585142'), 
('FDS-708469529', 'new', 'addon', '30', 'March 29, 2018', 'foods/mina.jpg', 'Active', 'No', '1522334087');  


INSERT INTO `mushroom_ip` ( `ip_address`) VALUES 
('192.168.1.5');  


INSERT INTO `mushroom_orders` ( `delivery_code`, `order_foods`, `order_quantity`, `order_price`, `order_subtotal`) VALUES 
('TKT280298983', 'Mushroom Sisig', '1', '120', '120'), 
('TKT280298983', 'Chicken Sisig', '3', '120', '360'), 
('TKT230244402', 'Mushroom Sisig', '1', '120', '120'), 
('TKT230244402', 'Chicken Sisig', '2', '120', '240'), 
('TKT230244402', 'Beef Sisig', '4', '120', '480'), 
('TKT230244402', 'Bangus Sisig', '1', '120', '120'), 
('TKT105478717', 'Mushroom Sisig', '1', '120', '120'), 
('TKT105478717', 'Chicken Sisig', '2', '120', '240'), 
('TKT105478717', 'Beef Sisig(20%)', '4', '120', '384'), 
('TKT105478717', 'Bangus Sisig', '1', '120', '120'), 
('TKT311829394', 'Mushroom Sisig(20%)', '3', '120', '288'), 
('TKT994376471', 'Mushroom Sisig', '1', '120', '120'), 
('TKT994376471', 'Chicken Sisig', '2', '120', '240'), 
('TKT646218567', 'Mushroom Sisig', '2', '120', '240'), 
('TKT195917370', 'Mushroom Sisig', '2', '120', '240'), 
('TKT354839862', 'Mushroom Sisig', '2', '120', '240'), 
('TKT481899907', 'Mushroom Sisig', '1', '120', '120'), 
('ORD229599524', 'Mushroom Sisig', '1', '120', '120'), 
('ORD229599524', 'Chicken Sisig', '2', '120', '192'), 
('ORD638446533', 'Mushroom Sisig', '1', '120', '120'), 
('ORD638446533', 'Chicken Sisig', '4', '120', '384'), 
('TKT251737903', 'Pink Salmon Head sa Miso', '9', '170', '1530'), 
('ORD675054453', 'Mushroom Sisig', '1', '120', '120'), 
('ORD675054453', 'Chicken Sisig', '4', '120', '480'), 
('ORD693264906', 'Mushroom Sisig(20%)', '12', '120', '1152'), 
('ORD693264906', 'Chicken Sisig', '1', '120', '120'), 
('ORD488877017', 'Mushroom Sisig', '1', '120', '120'), 
('ORD488877017', 'Beef Sisig', '2', '120', '240'), 
('ORD488877017', 'Bangus Sisig(20%)', '14', '120', '1344'), 
('ORD212273606', 'Buffalo Wings', '2', '50', '100'), 
('ORD212273606', 'Chicken Finger', '2', '50', '100'), 
('ORD212273606', 'Chicken Teriyaki', '4', '50', '200'), 
('ORD212273606', 'Rice', '6', '15', '90'), 
('ORD801859094', 'Mushroom Sisig', '1', '120', '120'), 
('ORD765224183', 'Crispy Mushroom', '10', '180', '1800'), 
('ORD765224183', 'Crispy Mushroom (Garlic)', '10', '85', '850'), 
('ORD765224183', 'Crispy Mushroom (Chili)', '10', '85', '850'), 
('DLV381646460', 'Mushroom Sisig', '1', '120.00', '120.00'), 
('ORD375023102', 'Mushroom Sisig', '1', '120', '120'), 
('TKT872802940', 'Carbonara(20%)', '2', '80', '128'), 
('TKT223157330', 'Mushroom Sisig', '1', '120', '120'), 
('TKT223157330', 'Carbonara', '2', '80', '160'), 
('TKT202971089', 'Mushroom Sisig', '1', '120', '120'), 
('TKT202971089', 'Carbonara', '2', '80', '160'), 
('TKT466030588', 'Carbonara(20%)', '2', '80', '128'), 
('ORD955657200', 'Onion Rings', '1', '85', '85'), 
('ORD955657200', 'Carbonara(20%)', '2', '80', '128'), 
('ORD955657200', 'Carbonara', '2', '80', '160'), 
('ORD955657200', 'Beef Sisig', '1', '120', '120'), 
('ORD837155396', '5 pcs. Mushroom Siomai', '1', '40', '40');  


INSERT INTO `mushroom_orders` ( `delivery_code`, `order_foods`, `order_quantity`, `order_price`, `order_subtotal`) VALUES 
('ORD795491581', 'Mushroom Sisig(20%)', '2', '120', '192'), 
('ORD795491581', 'Crispy Kangkong(20%)', '1', '85', '68'), 
('ORD795491581', 'Shrimp Tempura', '1', '140', '140'), 
('ORD795491581', 'Mushroom Sisig', '1', '120', '120'), 
('TKT355647031', 'Chicken Sisig', '1', '120', '120'), 
('TKT355647031', 'Pink Salmon Head sa Miso', '1', '170', '170'), 
('TKT355647031', 'Crispy Saluyot', '1', '85', '85'), 
('TKT204591331', 'Mushroom Sisig', '1', '120', '96'), 
('TKT633549585', 'Mushroom Sisig', '1', '120', '96'), 
('TKT633549585', 'Chicken Sisig', '1', '120', '120'), 
('TKT311675513', 'Chicken Sisig', '2', '120', '192'), 
('TKT311675513', 'Onion Rings', '1', '85', '85'), 
('TKT311675513', 'Onion Rings', '2', '85', '136'), 
('TKT311675513', 'Tofu Sisig', '1', '120', '120'), 
('TKT561101064', 'Chicken Sisig(20%)', '2', '120', '192'), 
('TKT561101064', 'Onion Rings', '1', '85', '85'), 
('TKT561101064', 'Onion Rings(20% - 2x)', '2', '85', '136'), 
('TKT561101064', 'Tofu Sisig', '1', '120', '120'), 
('TKT873538658', 'Mushroom Sisig', '1', '120', '120'), 
('TKT873538658', 'Mushroom Sisig(20%)', '1', '120', '96'), 
('TKT342598337', 'Mushroom Sisig', '1', '120', '120'), 
('TKT342598337', 'Mushroom Sisig(20%)', '1', '120', '96'), 
('TKT722346757', 'Mushroom Sisig', '1', '120', '120'), 
('TKT722346757', 'Mushroom Sisig(20%)', '1', '120', '96'), 
('TKT155732727', 'Mushroom Sisig', '1', '120', '120'), 
('TKT155732727', 'Chicken Sisig', '1', '120', '120'), 
('TKT938223207', 'Mushroom Sisig(20%)', '1', '120', '96'), 
('TKT938223207', 'Chicken Sisig', '1', '120', '120');  


INSERT INTO `mushroom_products` ( `food_category`, `product_name`, `product_price`, `product_date`, `product_status`, `product_archive`, `product_time`) VALUES 
('ad', 'ad', '123', 'December 07, 2017', 'Active', 'Yes', '1512621575'), 
('addon', 'Add-ons', '', 'December 02, 2017', 'Active', 'No', '1512204294'), 
('allday', 'All Day Meals', '120', 'November 20, 2017', 'Active', 'No', '1506960687'), 
('chips', 'Chips', '', 'November 20, 2017', 'Active', 'No', '1506960693'), 
('desserts', 'Desserts', '35', 'November 20, 2017', 'Active', 'No', '1506960694'), 
('meriendas', 'Meriendas', '', 'November 20, 2017', 'Active', 'No', '1506960692'), 
('shortorder', 'Short Orders', '', 'November 20, 2017', 'Active', 'No', '1506960690'), 
('sinigang', 'Sinigang', '170', 'November 20, 2017', 'Active', 'No', '1506960689'), 
('sisiw', 'sisiw', '', 'December 08, 2017', 'Active', 'Yes', '1512670616'), 
('sizzling', 'Sizzling Sisig', '120', 'November 20, 2017', 'Active', 'No', '1506960686'), 
('sizzlingfor3', 'Sizzling for 3', '150', 'November 20, 2017', 'Active', 'No', '1506960691'), 
('student', 'Student Meals', '50', 'November 20, 2017', 'Active', 'No', '1506960688'), 
('PRD-359420283', 'sisiws', '12', 'December 18, 2017', 'Active', 'No', '1513578227');  


INSERT INTO `mushroom_queue` ( `queue_code`, `queue_type`, `queue_table`, `queue_customer`, `queue_username`, `queue_contact`, `queue_seconds`, `queue_address`, `queue_paid`) VALUES 
('ORD370413741', 'Dine-in', '1', '', '', '', '1522332704', '', 'No'), 
('ORD184767376', 'Dine-in', '2', '', '', '', '1522386972', '', 'Yes');  


INSERT INTO `mushroom_queue_orders` ( `queue_code`, `orders_foods`, `orders_quantity`, `orders_price`, `orders_subtotal`, `queue_paid`, `queue_discount`) VALUES 
('DLV381646460', 'Mushroom Sisig', '1', '120.00', '120.00', 'No', 'No'), 
('ORD496083500', 'Chicken Sisig', '2', '120', '192', 'Yes', 'Yes'), 
('ORD496083500', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD336291769', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD683991510', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD683991510', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD611317418', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD611317418', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD811249549', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD811249549', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD768230458', 'Mushroom Sisig', '2', '120', '192', 'Yes', 'Yes'), 
('ORD768230458', 'Chicken Sisig', '2', '120', '240', 'Yes', 'No'), 
('ORD768230458', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD371603412', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD158752530', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('TKT204591331', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD158752530', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD546794886', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD546794886', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD546794886', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD675835346', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD675835346', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD490304990', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD948278834', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD42612529', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD42612529', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD784355775', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD784355775', 'Tuna Pesto', '1', '80', '80', 'Yes', 'No'), 
('ORD784355775', 'Tuna Pesto', '1', '80', '64', 'Yes', 'Yes'), 
('ORD784355775', 'Tuna Pesto', '1', '80', '64', 'Yes', 'Yes'), 
('ORD650314008', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD650314008', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD496805428', 'Mushroom Sisig', '2', '120', '240', 'Yes', 'No'), 
('ORD496805428', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD627831611', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD627831611', 'Chicken Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD627831611', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD627831611', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD287543420', 'Mushroom Sisig', '1', '120', '120', 'No', 'No'), 
('ORD287543420', 'Chicken Sisig', '2', '120', '240', 'No', 'No'), 
('ORD287543420', 'Beef Sisig', '1', '120', '120', 'No', 'No'), 
('ORD217034046', 'Mushroom Sisig', '2', '120', '240', 'No', 'No'), 
('ORD101522111', 'Mushroom Sisig', '1', '120', '120', 'No', 'No'), 
('ORD101522111', 'Chicken Sisig', '1', '120', '120', 'No', 'No'), 
('ORD274525747', 'Mushroom Sisig', '1', '120', '120', 'No', 'No'), 
('ORD274525747', 'Chicken Sisig', '1', '120', '120', 'No', 'No'), 
('ORD216184675', 'Mushroom Sisig', '2', '120', '240', 'No', 'No'), 
('ORD990245539', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD990245539', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD990245539', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes');  


INSERT INTO `mushroom_queue_orders` ( `queue_code`, `orders_foods`, `orders_quantity`, `orders_price`, `orders_subtotal`, `queue_paid`, `queue_discount`) VALUES 
('ORD990245539', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD727468488', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD727468488', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD727468488', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD727468488', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD802211383', 'Chicken Sisig', '1', '120', '120', 'No', 'No'), 
('ORD802211383', 'Pink Salmon Head sa Miso', '2', '170', '340', 'No', 'No'), 
('ORD802211383', 'Carbonara', '1', '80', '80', 'No', 'No'), 
('ORD802211383', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD802211383', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD802211383', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD802211383', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD211951551', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD211951551', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD211951551', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD211951551', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD265146646', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD265146646', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD265146646', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD265146646', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD340830838', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD340830838', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD340830838', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD340830838', '', '1', '80', '80', 'Yes', 'No'), 
('ORD535879837', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD535879837', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD535879837', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD535879837', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD584689975', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD584689975', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD584689975', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD584689975', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD362828623', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD362828623', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD362828623', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD362828623', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD953949575', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD953949575', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD953949575', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD953949575', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD262426558', 'Chicken Sisig', '1', '120', '96', 'Yes', 'Yes'), 
('ORD262426558', 'Pink Salmon Head sa Miso', '1', '170', '170', 'Yes', 'No'), 
('ORD262426558', 'Pink Salmon Head sa Miso', '1', '170', '136', 'Yes', 'Yes'), 
('ORD262426558', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD294143200', 'Mushroom Sisig', '1', '120', '120', 'Yes', 'No'), 
('ORD294143200', 'Pink Salmon Head sa Miso', '2', '170', '340', 'Yes', 'No'), 
('ORD294143200', 'Carbonara', '1', '80', '80', 'Yes', 'No'), 
('ORD370413741', 'Mushroom Sisig', '3', '120', '360', 'No', 'No'), 
('ORD370413741', 'Chicken Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Mushroom Sisig', '1', '120', '120', 'No', 'No');  


INSERT INTO `mushroom_queue_orders` ( `queue_code`, `orders_foods`, `orders_quantity`, `orders_price`, `orders_subtotal`, `queue_paid`, `queue_discount`) VALUES 
('ORD518535291', 'Chicken Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Beef Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Bangus Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Seafood Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Pork Sisig', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Tofu Sisig', '2', '120', '240', 'No', 'No'), 
('ORD518535291', 'Longsilog', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Longbangsilog', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Liemposilog', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Chicksilog', '1', '120', '120', 'No', 'No'), 
('ORD518535291', 'Cornsilog', '1', '120', '120', 'No', 'No'), 
('ORD184767376', 'Mushroom Sisig', '1', '120', '96', 'Yes', 'Yes');  


INSERT INTO `mushroom_reservation` ( `reserve_code`, `reserve_customer`, `reserve_username`, `reserve_contact`, `reserve_seconds`) VALUES 
('ORD601945666', 'Duday Sequitin', '', '', '1514918204'), 
('ORD193453450', 'dudss', '', '', '1517294006'), 
('ORD534362899', 'ren', '', '', '1521894097'), 
('ORD51575255', 'DQ', '', '', '1528183464');  


INSERT INTO `mushroom_reservation_orders` ( `reserve_code`, `reserve_orders_foods`, `reserve_orders_quantity`, `reserve_orders_price`, `reserve_orders_subtotal`) VALUES 
('ORD601945666', 'Mushroom Sisig', '3', '120', '360'), 
('ORD193453450', 'Spaghetti Meatballs', '1', '80', '80'), 
('ORD193453450', 'Pancit Canton', '1', '80', '80'), 
('ORD534362899', 'Mushroom Sisig', '1', '120', '120'), 
('ORD534362899', 'Chicken Sisig', '1', '120', '120'), 
('ORD51575255', 'Mushroom Sisig', '1', '120', '120');  


INSERT INTO `mushroom_slider` ( `slider_number`, `slider_picture`) VALUES 
('Slider1', 'images/slide1.png'), 
('Slider2', 'images/slide2.png'), 
('Slider3', 'images/slide3.png');  


INSERT INTO `mushroom_staff` ( `staff_firstname`, `staff_lastname`, `staff_email`, `staff_contact`, `staff_gender`, `staff_username`, `staff_password`, `staff_picture`, `staff_seconds`, `staff_status`, `staff_changed`) VALUES 
('momo', 'hirai', 'momohirai@gmail.com', '09061884076', 'Female', 'momoring', 'cd959478cbeeb6f02a60a38ac72c0d35', 'profile/user.png', '1513035438', 'Active', 'Yes'), 
('Kim', 'Dahyun', 'dahyuna@gmail.com', '09061884076', 'Female', 'dahyuna', '2125ddd664fc08d4d081479053becdc7', 'profile/user.png', '1513781035', 'Active', 'Yes'), 
('Lorenzo', 'Sequitin', 'rensequitin@gmail.com', '09061884076', 'Male', 'rensequitin', '321fd615e0900b1f65b5187c866c02d2', 'profile/user.png', '1515386989', 'Active', 'Yes'), 
('Momo', 'Hirai', 'momoring@gmail.com', '123', 'Female', 'momo123', 'e10adc3949ba59abbe56e057f20f883e', 'profile/TWICE-TT-TEASER.jpg', '1527775033', 'Active', 'Yes');  


INSERT INTO `mushroom_summary` ( `summary_foods`, `summary_quantity`, `summary_date`, `summary_seconds`) VALUES 
('Mushroom Sisig', '7', '171231', '1514730508'), 
('Chicken Sisig', '2', '171231', '1514731495'), 
('Beef Sisig', '2', '180101', '1514814546'), 
('Chicken Sisig', '5', '180101', '1514814296'), 
('Mushroom Sisig', '15', '180101', '1514814296'), 
('Pink Salmon Head sa Miso', '9', '180101', '1514814260'), 
('Bangus Sisig', '14', '180101', '1514814546'), 
('Buffalo Wings', '2', '180101', '1514814669'), 
('Chicken Finger', '2', '180101', '1514814669'), 
('Chicken Teriyaki', '4', '180101', '1514814669'), 
('Rice', '6', '180101', '1514814669'), 
('Crispy Mushroom', '10', '180102', '1514824682'), 
('Crispy Mushroom (Garlic)', '10', '180102', '1514824682'), 
('Crispy Mushroom (Chili)', '10', '180102', '1514824682'), 
('Mushroom Sisig', '3', '180324', '1521903293'), 
('Crispy Kangkong', '1', '180324', '1521903293'), 
('Shrimp Tempura', '1', '180324', '1521903293'), 
('Chicken Sisig', '9', '180325', '1521950135'), 
('Pink Salmon Head sa Miso', '1', '180325', '1521950135'), 
('Crispy Saluyot', '1', '180325', '1521950135'), 
('Mushroom Sisig', '10', '180325', '1521964358'), 
('Onion Rings', '6', '180325', '1521965243'), 
('Tofu Sisig', '2', '180325', '1521965243');  


INSERT INTO `mushroom_tables` ( `table_number`, `table_status`) VALUES 
('1', 'occupied'), 
('2', 'occupied'), 
('3', 'vacant'), 
('4', 'vacant'), 
('5', 'vacant'), 
('6', 'vacant'), 
('7', 'vacant'), 
('8', 'vacant'), 
('9', 'vacant'), 
('10', 'vacant'), 
('11', 'vacant'), 
('12', 'vacant'), 
('13', 'vacant'), 
('14', 'vacant'), 
('15', 'vacant'), 
('16', 'vacant');  


INSERT INTO `mushroom_trails` ( `trail_name`, `trail_role`, `trail_date`, `trail_seconds`, `trail_action`) VALUES 
('Lorenzo Sequitin', 'Admin', '180501', '1525186048', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180501', '1525186771', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180502', '1525237587', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180513', '1526215913', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180514', '1526296611', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180514', '1526306225', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180514', '1526307362', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180530', '1527689109', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527764607', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527766656', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527766672', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527773392', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527775033', 'Added New Employee (momo momo)'), 
('Lorenzo Sequitin', 'Admin', '180531', '1527779347', 'Logged in'), 
('', 'Admin', '180531', '1527780812', 'Logged in'), 
('', 'Admin', '180531', '1527780815', 'Logged in'), 
('', 'Admin', '180531', '1527780820', 'Logged in'), 
('', 'Admin', '180531', '1527781000', 'Logged in'), 
(' ', 'Admin', '180531', '1527781090', 'Logged in'), 
(' ', 'Admin', '180531', '1527781098', 'Logged in'), 
('momo momo', 'Employee', '180531', '1527781186', 'Logged in'), 
('momo momo', 'Employee', '180531', '1527781201', 'Logged in'), 
('momo momo', 'Employee', '180531', '1527781350', 'Logged in'), 
('momo momo', 'Employee', '180605', '1528178248', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528179650', 'Logged in'), 
('momo momo', 'Employee', '180605', '1528183464', 'Reserved order(DQ)'), 
('Momo Hirai', 'Employee', '180605', '1528190859', 'Changed password (Momo Hirai / Employee)'), 
('Momo Hirai', 'Employee', '180605', '1528190868', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528190880', 'Logged out'), 
('Momo Hirai', 'Employee', '180605', '1528190905', 'Logged in'), 
('Momo Hirai', 'Employee', '180605', '1528190927', 'Logged out'), 
('Momo Hirai', 'Employee', '180605', '1528190933', 'Logged in'), 
('Momo Hirai', 'Employee', '180605', '1528191081', 'Logged out'), 
('Momo Hirai', 'Employee', '180605', '1528195007', 'Logged in'), 
('Momo Hirai', 'Employee', '180605', '1528195025', 'Changed product status to Inactive (Sizzling Sisig)'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528195030', 'Logged in'), 
('Momo Hirai', 'Employee', '180605', '1528195045', 'Changed product status to Active (Sizzling Sisig)'), 
('momo hirai', 'Employee', '180605', '1528195957', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528195989', 'Logged out'), 
('Momo Hirai', 'Employee', '180605', '1528196004', 'Logged in'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528202860', 'Logged in'), 
('Momo Hirai', 'Employee', '180605', '1528205423', 'Reserved order(Yoh)'), 
('Momo Hirai', 'Employee', '180605', '1528205449', 'Accepted reserved order (ORD822254195)'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528205467', 'Logged out'), 
('Lorenzo Sequitin', 'Admin', '180605', '1528205480', 'Logged in');  


INSERT INTO `mushroom_users` ( `user_fullname`, `user_status`, `user_email`, `user_contact`, `user_gender`, `user_username`, `user_password`, `user_address`, `user_province`, `user_city`, `user_picture`, `user_seconds`, `user_verified`) VALUES 
('Choco mucho', 'Active', 'choco@gmail.com', '+639123456789', 'Male', 'chocomucho', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Mamen', 'bulacan', 'malolos', 'profile/user.png', '1513010704', 'Yes'), 
('Kim Dahyun', 'Active', 'rensequitin1@gmail.com', '+639061884076', 'Male', 'dahyuna', '2125ddd664fc08d4d081479053becdc7', 'JYP', 'South Korea', 'Seoul', 'profile/user.png', '1512376296', 'Yes'), 
('Myoui Mina', 'Active', 'minamyloves@gmail.com', '+639061884076', 'Female', 'minaring', '2fef4854ce3ba34956011d35651bd489', 'JYP', 'South Korea', 'Seoul', 'profile/minagif.gif', '1512376296', 'Yes'), 
('Momo Hirai', 'Inactive', 'momorings@gmail.com', '+639358900300', 'Male', 'momorings', 'efe6398127928f1b2e9ef3207fb82663', 'Anywhere', 'Bulacan', 'Hagonoy', 'profile/8170_1512876965.jpeg', '1512872455', 'Yes'), 
('Lorenzo Sequitin', 'Active', 'rensequitin@gmail.com', '+639061884076', 'Male', 'rensequitin', '321fd615e0900b1f65b5187c866c02d2', 'Rogers Street Menzyland Subdivision', 'Bulacan', 'Malolos', 'profile/avatar5.png', '1512376296', 'Yes'), 
('Sana Minatozaki', 'Active', 'sanaislife@gmail.com', '+639061884076', 'Female', 'sanasha', 'b5e0de6f01f71ce3db7f659759d9a012', 'JYP', 'South Korea', 'Seoul', 'profile/sanagif.gif', '1512376296', 'Yes'); 