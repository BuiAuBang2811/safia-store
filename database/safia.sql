-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2024 lúc 05:43 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `safia`
--
CREATE DATABASE IF NOT EXISTS `safia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `safia`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(1, 'nguyen quoc', 'e10adc3949ba59abbe56e057f20f883e', 'nguyenquoc.120301@gmail.com', '0376883020', 2, -1),
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '', 2, 0),
(14, 'Chung', '7d0febc02cda5682327991a3f6ade711', 'dgchung2k@gmail.com', '', 0, 0),
(15, 'Thịnh', '7d0febc02cda5682327991a3f6ade711', 'dhthinh.cntt@gmail.com', '', 1, 0),
(16, 'nhung', '7d0febc02cda5682327991a3f6ade711', 'nhungkiuu01@gmail.com', '', 0, 0),
(18, 'Bùi Bằng', '7e3980d97a163ac64999570852535129', 'buibang147@gmail.com', '0383602034', 0, 0),
(19, 'Nguyễn Văn Nam', 'e10adc3949ba59abbe56e057f20f883e', 'buibang148@gmail.com', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(255) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(255) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(2, 'Safia Store', 'Những ảnh hưởng của mùi hương lên não bộ', '<p>Trước khi t&igrave;m hiểu c&aacute;ch thư gi&atilde;n đầu &oacute;c, bạn cần biết những ảnh hưởng của m&ugrave;i hương l&ecirc;n n&atilde;o bộ của con người như thế n&agrave;o.</p>\r\n', '<h3><strong>T&aacute;c động của m&ugrave;i hương l&ecirc;n bộ n&atilde;o con người</strong></h3>\r\n\r\n<p>Trước khi t&igrave;m hiểu c&aacute;ch thư gi&atilde;n đầu &oacute;c, bạn cần biết những ảnh hưởng của m&ugrave;i hương l&ecirc;n n&atilde;o bộ của con người như thế n&agrave;o.</p>\r\n\r\n<ul>\r\n	<li>M&ugrave;i hương ảnh hưởng đến việc đ&aacute;nh gi&aacute; m&oacute;n ăn: Kh&ocirc;ng chỉ vị gi&aacute;c, khứu gi&aacute;c cũng c&oacute; thể gửi t&iacute;n hiệu để đ&aacute;nh gi&aacute; m&oacute;n ăn l&ecirc;n n&atilde;o bộ th&ocirc;ng qua m&ugrave;i hương. Nếu như lưỡi cho biết vị ngọt, đắng, mặn của m&oacute;n ăn th&igrave; m&ugrave;i hương sẽ gi&uacute;p n&atilde;o bộ quyết định m&oacute;n ăn đ&oacute; c&oacute; ngon hay kh&ocirc;ng.</li>\r\n	<li>M&ugrave;i hương hấp dẫn người kh&aacute;c: Bạn c&oacute; biết rằng, m&ugrave;i hương cơ thể của người n&agrave;y ch&iacute;nh l&agrave; một ma lực đối với người kh&aacute;c? Nghi&ecirc;n cứu n&agrave;y đ&atilde; được chứng thực bởi c&aacute;c chuy&ecirc;n gia h&agrave;ng đầu thế giới. Nếu như nam giới thường bị cuốn h&uacute;t bởi m&ugrave;i hương nước hoa tr&ecirc;n người phụ nữ, th&igrave; phụ nữ lại bị cuốn bởi m&ugrave;i cơ thể của ph&aacute;i mạnh.</li>\r\n	<li>M&ugrave;i hương gợi nhớ qu&aacute; khứ: Một m&ugrave;i hương quen thuộc sẽ k&iacute;ch th&iacute;ch bộ n&atilde;o nhớ về những kỉ niệm đ&atilde; qua. Một điều nữa m&agrave; bạn vẫn chưa biết đ&oacute; l&agrave; so với những h&igrave;nh ảnh được lưu lại trong qu&aacute; khứ, th&igrave; m&ugrave;i hương được xem l&agrave; &ldquo;bộ nhớ&rdquo; lưu trữ l&acirc;u hơn. V&igrave; vậy, c&oacute; người cho rằng m&ugrave;i hương ch&iacute;nh l&agrave; cỗ m&aacute;y du h&agrave;nh gi&uacute;p bạn c&oacute; thể quay ngược về qu&aacute; khứ.</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i ra, m&ugrave;i hương c&ograve;n t&aacute;c động l&ecirc;n n&atilde;o bộ con người như chi phối v&agrave; truyền tải cảm x&uacute;c. Qua đ&oacute; bạn c&oacute; thể cảm nhận được t&acirc;m trạng vui, buồn của người kh&aacute;c m&agrave; kh&ocirc;ng cần phải nh&igrave;n n&eacute;t mặt họ. Lại n&oacute;i về c&aacute;ch thư gi&atilde;n đầu &oacute;c, liệu bạn c&oacute; biết m&ugrave;i hương c&ograve;n c&oacute; một c&ocirc;ng dụng nữa v&ocirc; c&ugrave;ng đặc biệt?</p>\r\n\r\n<h3><strong>C&aacute;ch thư gi&atilde;n đầu &oacute;c cho ng&agrave;y mới l&agrave;m việc thật hiệu quả</strong></h3>\r\n\r\n<p>M&ugrave;i hương hoa nh&agrave;i: Đ&acirc;y được xem l&agrave; ứng cử vi&ecirc;n h&agrave;ng đầu khi bạn cần t&igrave;m kiếm c&aacute;ch thư gi&atilde;n đầu &oacute;c, giải tỏa stress v&agrave; mong muốn c&oacute; một giấc ngủ s&acirc;u. Tuy nhi&ecirc;n, m&ugrave;i hoa nh&agrave;i kh&aacute; nồng v&agrave; k&iacute;ch th&iacute;ch khứu gi&aacute;c mạnh, n&ecirc;n bạn cần sử dụng một c&aacute;ch c&oacute; chọn lọc nh&eacute;.&nbsp;</p>\r\n\r\n<p>M&ugrave;i hương chanh, cam: Kh&ocirc;ng chỉ l&agrave; những loại tr&aacute;i c&acirc;y chứa rất nhiều dinh dưỡng cho cơ thể, m&ugrave;i hương của ch&uacute;ng c&ograve;n c&oacute; thể gi&uacute;p thanh lọc kh&ocirc;ng kh&iacute;, mang đến một kh&ocirc;ng gian thanh m&aacute;t, l&agrave;m dịu căng thẳng v&agrave; mang đến sự sảng kho&aacute;i.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1715526530_image-1.png', '2024-05-12', 1),
(3, 'TONY', '4 Tác dụng của nến thơm & Những lưu ý khi sử dụng', '<p>Tại sao phải sử dụng nến thơm? Vậy, t&aacute;c dụng của nến thơm đến sức khỏe v&agrave; cuộc sống của người sử dụng như thế n&agrave;o?</p>\r\n', '<h3><strong>Những lợi &iacute;ch bất ngờ v&agrave; t&aacute;c dụng của nến thơm</strong></h3>\r\n\r\n<p>Tại sao phải sử dụng nến thơm? Vậy, t&aacute;c dụng của nến thơm đến sức khỏe v&agrave; cuộc sống của người sử dụng như thế n&agrave;o? C&ugrave;ng t&igrave;m hiểu ngay:</p>\r\n\r\n<h3><strong><em>1. T&aacute;c dụng của nến thơm gi&uacute;p tạo sự ấm &aacute;p cho căn ph&ograve;ng của bạn</em></strong></h3>\r\n\r\n<p>Để kh&ocirc;ng gian sống th&ecirc;m phần lung linh v&agrave; ấm &aacute;p hơn, bạn c&oacute; thể bố tr&iacute; ph&ograve;ng ngủ nhỏ của m&igrave;nh bằng một v&agrave;i c&acirc;y nến thơm khử m&ugrave;i tại một số g&oacute;c. Kh&ocirc;ng chỉ gi&uacute;p căn ph&ograve;ng tươi mới, độc đ&aacute;o, t&aacute;c dụng của nến thơm c&ograve;n mang tới một m&ugrave;i hương dịu nhẹ, gi&uacute;p tạo cảm gi&aacute;c ấm c&uacute;ng v&agrave; dễ chịu hơn.</p>\r\n\r\n<p>&Aacute;nh lửa từ nến thơm sẽ lan tỏa khắp căn ph&ograve;ng, xua tan đi những kh&ocirc;ng kh&iacute; lạnh lẽo, mang đến cho kh&ocirc;ng gian của bạn một nguồn năng lượng dồi d&agrave;o.</p>\r\n\r\n<h3><strong><em>2. Nến thơm khử m&ugrave;i c&oacute; t&aacute;c dụng thể hiện t&iacute;nh c&aacute;ch của c&aacute; nh&acirc;n</em></strong></h3>\r\n\r\n<p>Ngọn lửa tr&ecirc;n c&acirc;y nến thơm kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng mang đến sự ấm &aacute;p cho căn ph&ograve;ng m&agrave; n&oacute; c&ograve;n l&agrave; n&eacute;t đặc trưng thể hiện c&aacute; t&iacute;nh, phong c&aacute;ch của bạn. Bạn sẽ cảm thấy tinh thần được thư gi&atilde;n, thoải m&aacute;i khi được đắm m&igrave;nh trong m&ugrave;i hương m&agrave; bạn y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Bạn l&agrave; một người y&ecirc;u th&iacute;ch sự c&aacute; t&iacute;nh, mạnh mẽ hay l&agrave; sự dịu d&agrave;ng, s&acirc;u lắng. Một m&ugrave;i hương nồng đậm sẽ thể hiện phong c&aacute;ch c&aacute; t&iacute;nh, độc lập, mạnh mẽ của bạn. C&ograve;n m&ugrave;i hương dịu nhẹ, thanh tho&aacute;t sẽ thể hiện phong c&aacute;ch thật dịu d&agrave;ng, tinh tế. Vậy bạn sẽ chọn nến thơm c&oacute; m&ugrave;i hương n&agrave;o để thể hiện c&aacute; t&iacute;nh của m&igrave;nh?</p>\r\n\r\n<h3><strong><em>3. T&aacute;c dụng của nến thơm gi&uacute;p k&iacute;ch th&iacute;ch sự tập trung</em></strong></h3>\r\n\r\n<p>Khi bạn bị đ&egrave; n&eacute;n bởi &aacute;p lực từ c&ocirc;ng việc, gia đ&igrave;nh, x&atilde; hội v&agrave; l&uacute;c n&agrave;y đ&acirc;y, bạn cần được nghỉ ngơi, thư gi&atilde;n đầu &oacute;c, tinh thần. Những &aacute;nh s&aacute;ng v&agrave; hương thơm dịu nhẹ của nến thơm sẽ mang đến sự thoải m&aacute;i, gi&uacute;p bạn giải tỏa mọi bực tức, căng thẳng v&agrave; sự kh&oacute; chịu trong người. Đồng thời, t&aacute;c dụng của nến thơm khử m&ugrave;i sẽ k&iacute;ch th&iacute;ch tinh thần tập trung ở mức tối đa, gi&uacute;p bạn l&agrave;m việc hiệu quả v&agrave; năng suất hơn.</p>\r\n\r\n<h3><strong><em>4. Nến thơm c&oacute; t&aacute;c dụng gi&uacute;p thư gi&atilde;n, mang lại giấc ngủ ngon</em></strong></h3>\r\n\r\n<p>Nếu bạn thường xuy&ecirc;n bị mất ngủ, ngủ kh&ocirc;ng s&acirc;u giấc th&igrave; nến thơm khử m&ugrave;i ch&iacute;nh l&agrave; một giải ph&aacute;p l&yacute; tưởng gi&uacute;p bạn c&oacute; giấc ngủ ngon hơn. Ngo&agrave;i t&aacute;c dụng của nến thơm l&agrave; c&aacute;ch khử m&ugrave;i ph&ograve;ng ngủ, nến thơm c&ograve;n được biết đến với khả năng cải thiện chất lượng giấc ngủ. Bạn c&oacute; thể khắc phục hiện tượng mất ngủ bằng c&aacute;ch đốt nến thơm trong ph&ograve;ng. Điều n&agrave;y sẽ gi&uacute;p bạn lấy lại tinh thần, ổn định t&acirc;m trạng. Từ đ&oacute; gi&uacute;p bạn dễ đi v&agrave;o giấc ngủ v&agrave; ngủ s&acirc;u giấc hơn.</p>\r\n\r\n<p>T&aacute;c dụng của nến thơm c&oacute; nhiều lợi &iacute;ch tuyệt vời. Tuy nhi&ecirc;n, nếu sử dụng sai c&aacute;ch ch&uacute;ng c&oacute; thể ảnh hưởng đến sức khỏe của bạn. Ch&iacute;nh v&igrave; vậy, khi sử dụng nến thơm bạn cần ch&uacute; &yacute; những điều sau:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng đốt nến thơm trong c&aacute;c kh&ocirc;ng gian k&iacute;n như: ph&ograve;ng tắm, ph&ograve;ng ngủ&hellip;</li>\r\n	<li>Nến thơm cần phải sử dụng đ&uacute;ng thời điểm để ph&aacute;t huy đ&uacute;ng t&aacute;c dụng của nến thơm.</li>\r\n	<li>Kh&ocirc;ng n&ecirc;n lạm dụng nến thơm qu&aacute; mức sẽ g&acirc;y ra một số t&aacute;c dụng phụ như dị ứng hay ảnh hưởng đến hệ h&ocirc; hấp&hellip;.</li>\r\n	<li>Khi sử dụng nến thơm cho căn ph&ograve;ng bạn n&ecirc;n để ở khu vực an to&agrave;n, tr&aacute;nh xa c&aacute;c khu vực c&oacute; c&aacute;c vật dụng dễ bắt ch&aacute;y như chăn, r&egrave;m, giấy, quần &aacute;o&hellip;</li>\r\n	<li>Kh&ocirc;ng sử dụng nến thơm với những đối tượng mắc c&aacute;c bệnh dị ứng, suy h&ocirc; hấp.</li>\r\n</ul>\r\n', '1715526251_bg5-1024x886.jpg', '2024-05-12', 1),
(4, 'Safia Store', 'Những lợi ích khi dùng Nến làm thơm', '<p>Nến được d&ugrave;ng cho nhiều mục đ&iacute;ch kh&aacute;c nhau trong cuộc sống. Đầu ti&ecirc;n, nến được d&ugrave;ng để tạo ra nguồn.....</p>\r\n', '<h3><strong>An to&agrave;n cho sức khỏe:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sức khỏe l&agrave; yếu tố đầu ti&ecirc;n phải kể đến khi đề cập đến t&iacute;nh an to&agrave;n sản phẩm. Nến thơm c&oacute; th&agrave;nh phần l&agrave; c&aacute;c loại s&aacute;p thực vật như s&aacute;p ong, s&aacute;p bơ&hellip; l&agrave; những loại s&aacute;p c&oacute; nguồn gốc hữu cơ n&ecirc;n khi đốt sẽ an to&agrave;n, kh&ocirc;ng độc hại cho cơ thể như c&aacute;c loại nến được l&agrave;m từ th&agrave;nh phần ch&iacute;nh l&agrave; parafin c&ocirc;ng nghiệp.</li>\r\n	<li>Hương liệu l&agrave; từ ngữ chỉ m&ugrave;i hương được tạo ra từ c&aacute;c h&oacute;a chất qua tổng hợp bằng phản ứng h&oacute;a học. Trong th&agrave;nh phần của hương liệu đều chứa c&aacute;c hợp chất c&oacute; nh&acirc;n v&ograve;ng thơm Benzen v&agrave; dẫn xuất của Benzen. Nhiều khuyến c&aacute;o của c&aacute;c nh&agrave; khoa học c&oacute; chuy&ecirc;n m&ocirc;n đ&atilde; khuyến c&aacute;o ngửi hương liệu thường xuy&ecirc;n g&acirc;y độc hại cho cơ thể do c&aacute;c hợp chất của v&ograve;ng thơm l&agrave; t&aacute;c nh&acirc;n g&acirc;y ra bệnh ung thư.</li>\r\n	<li>Tinh dầu l&agrave; tổng hợp c&aacute;c th&agrave;nh phần dễ bay hơi được tr&iacute;ch chiết từ nguồn nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n. Tinh dầu c&oacute; hương thơm tự nhi&ecirc;n của đ&uacute;ng loại nguy&ecirc;n liệu d&ugrave;ng để t&aacute;ch chiết tinh dầu. Tinh dầu thi&ecirc;n nhi&ecirc;n kh&ocirc;ng những cho m&ugrave;i thơm tự nhi&ecirc;n kh&aacute; mềm mại, dịu nhẹ m&agrave; c&ograve;n c&oacute; t&aacute;c dụng trị liệu v&agrave; rất tốt cho sức khỏe.</li>\r\n</ul>\r\n\r\n<p>Vậy n&ecirc;n khi đốt nến thơm tinh dầu bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về t&iacute;nh an to&agrave;n, kh&ocirc;ng g&acirc;y hại cho sức khỏe như c&aacute;c loại nến được d&ugrave;ng từ m&ugrave;i thơm của hương liệu.</p>\r\n\r\n<h3><strong>M&ugrave;i thơm tự nhi&ecirc;n:</strong></h3>\r\n\r\n<ul>\r\n	<li>M&ugrave;i thơm của hương liệu khi ngửi thường rất mạnh v&agrave; c&oacute; vị ngọt ng&agrave;o, một số loại c&oacute; m&ugrave;i thơm sựt nức. Ngửi l&acirc;u m&ugrave;i hương liệu nồng gắt v&agrave; g&acirc;y đau đầu, kh&oacute; chịu. Ngửi trực tiếp loại nến thơm c&oacute; m&ugrave;i rất mạnh. Ngo&agrave;i ra, nến được tạo ra từ m&ugrave;i hương liệu rất phong ph&uacute; v&agrave; đa dạng m&ugrave;i.</li>\r\n	<li>Hương thơm của nến tinh dầu khi ngửi bạn cảm thấy rất tự nhi&ecirc;n v&agrave; giống m&ugrave;i của nguy&ecirc;n liệu gốc tr&iacute;ch chiết ra n&oacute;. Hương thơm thi&ecirc;n nhi&ecirc;n lu&ocirc;n nhẹ nh&agrave;ng, dễ chịu v&agrave; mang t&iacute;nh thư gi&atilde;n. Khi đốt nến m&ugrave;i thơm tỏa ra tươi mới c&oacute; vị thanh m&aacute;t. Đốt nến tinh dầu thời gian l&acirc;u vẫn giữ được hương thơm nhẹ nh&agrave;ng như l&uacute;c đầu đốt nến m&agrave; kh&ocirc;ng bị nồng gắt, kh&oacute; chịu.</li>\r\n</ul>\r\n', '1715525633_vn-11134207-7qukw-li5s2ryxtwpe33-edited.jpg', '2024-05-16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Citta'),
(3, 'Pervest'),
(4, 'CrabTree & Evelyn'),
(6, 'Akemi'),
(8, 'Fresh Home Lab'),
(9, 'Éternal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'Tinh dầu', 'Tinh dầu nước hoa', '1715477283_Crystal Stone.jpeg'),
(2, 'Nến thơm', 'Nến thơm', '1715477236_nen-thom-1-14.jpg'),
(3, 'Túi thơm', 'Túi thơm', '1715477209_vn-11134207-7r98o-ltf1jk15v7kab1.jpg'),
(6, 'Sáp thơm', 'Sáp thơm', '1716631213_O1CN01VyqFTx2L7vC4SUJ59_2200563839646-0-cib.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `article_id`, `comment_name`, `comment_email`, `comment_content`, `comment_date`, `comment_status`) VALUES
(2, 4, 'Bằng', 'buibang147@gmail.com', 'Ngoài ra nến thơm còn sử dụng để trị liệu 1 số loại bệnh như đau đầu, bệnh liên quan đến đường hô hấp', '2024-05-25', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`, `customer_status`) VALUES
(17, 15, 'Thịnh', 1, 'dhthinh.cntt@gmail.com', 2147483647, 'Hà Nội', -1),
(18, 16, 'nhung', 2, 'nhungkiuu01@gmail.com', 878398141, 'hà nội', 1),
(20, 18, 'Bùi Bằng', 1, 'buibang147@gmail.com', 383602034, 'Số 35 Trần Phú, Hà Đông, Hà Nội', 1),
(21, 0, 'Nguyễn Minh Long', 1, 'long458@gmail.com', 568496325, 'Số 45 Nguyễn Cư Lộc', 1),
(22, 19, 'Nguyễn Văn Nam', 1, 'buibang148@gmail.com', 325486215, 'Số 24 Cầu Giấy Hà Nội', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_phone` varchar(100) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(1, 1, 'kiet', '0686541616', 'quan7', 'Đơn hàng mua trực tiếp'),
(17, 1, 'phong', '4848422', 'Thủ Đức', 'Đơn hàng mua trực tiếp'),
(292, 2, 'Nguyễn Minh Hoàng', '0953265489', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(509, 5, 'thai', '466646464', 'Tp HCM', ''),
(660, 1, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(740, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(775, 2, 'Thịnh', '05454212225', 'hà nội', 'Đơn hàng mua trực tiếp'),
(823, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(1155, 2, 'Nguyễn Minh Hoàng', '0953265489', 'Số 35 Trần Phú, Hà Đông, Hà Nội', 'Đơn hàng mua trực tiếp'),
(1165, 1, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(1219, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(1348, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(1573, 17, 'Bùi Bằng', '383602034', 'M13 Ngô Thì Nhậm', ''),
(1671, 2, 'Nguyễn Minh Hoàng', '0985642356', 'Số 5 Quang Trung', 'Đơn hàng mua trực tiếp'),
(1702, 18, 'Bùi Bằng', '383602034', 'Số 58 Trần Phú, Hà Đông, Hà Nội', ''),
(2013, 3, 'sơn nguyen', '5344649', 'quan 9', ''),
(2187, 2, 'Nguyễn Minh Hoàng', '0953265489', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(2283, 17, 'Bùi Bằng', '383602034', 'M13 Ngô Thì Nhậm', ''),
(2444, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(2478, 2, 'Nguyễn Minh Hoàng', '0953265489', 'M34 NTN', 'Đơn hàng mua trực tiếp'),
(2589, 11, 'sơn nguyen', '858525', 'Tp HCM', ''),
(2878, 11, 'sơn nguyen', '858525', 'Tp HCM', ''),
(3116, 1, 'phong', '4848422', 'Thủ Đức', 'Đơn hàng mua trực tiếp'),
(3163, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(3242, 1, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(3262, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(3292, 2, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(3584, 5, 'thai', '466646464', 'Tp HCM', ''),
(3656, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(3761, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(4049, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(4172, 2, 'Nguyễn Minh Hoàng', '0953265489', 'Số 35 Trần Phú, Hà Đông, Hà Nội', 'Đơn hàng mua trực tiếp'),
(4541, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(4952, 9, 'nguyen quoc', '52626262', 'Tp HCM', ''),
(5107, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(5123, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(5282, 17, 'Bùi Bằng', '383602034', 'M13 Ngô Thì Nhậm', ''),
(5310, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(5564, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(5985, 15, 'Thịnh', '2147483647', 'Hà Nội', ''),
(6041, 15, 'Thịnh', '2147483647', 'Hà Nội', ''),
(6205, 4, 'phong', '99862989', 'Hồ Chí Minh', ''),
(6211, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(6338, 2, 'Nguyễn Minh Hoàng', '0985642356', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(6519, 2, 'Nguyễn Minh Hoàng', '0953265489', 'M34 NTN', 'Đơn hàng mua trực tiếp'),
(6630, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(6670, 2, 'Thanh', '0458642258', 'Hà Nội', 'Đơn hàng mua trực tiếp'),
(6694, 17, 'Bùi Bằng', '383602034', 'M13 Ngô Thì Nhậm', ''),
(6746, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(6960, 2, 'Nguyễn Khánh', '0985642356', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(7004, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(7144, 15, 'Đặng Hữu Thịnh', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội', 'Cẩn hận giúp mình nhé'),
(7146, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(7274, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(7498, 1, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(7563, 17, 'Bùi Bằng', '383602034', 'M13 Ngô Thì Nhậm', ''),
(7650, 9, 'nguyen quoc', '52626262', 'Tp HCM', ''),
(7683, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(7787, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(7977, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(7996, 16, 'nhung', '878398141', 'hà nội', ''),
(8131, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(8153, 2, 'Thịnh', '05454212225', 'hà nội', 'Đơn hàng mua trực tiếp'),
(8203, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(8415, 2, 'Nguyễn Minh Hoàng', '0568496325', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(8491, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(8744, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(8929, 2, 'Nguyễn Minh Hoàng', '0953265489', 'M13 Ngô Thì Nhậm', 'Đơn hàng mua trực tiếp'),
(8959, 2, 'Nguyễn Minh Hoàng', '0953265489', 'Số 35 Trần Phú, Hà Đông, Hà Nội', 'Đơn hàng mua trực tiếp'),
(8973, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(9001, 15, 'Thịnh', '2147483647', 'Hà Nội', ''),
(9132, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(9140, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(9157, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(9167, 1, 'nguyen quoc', '376883020', 'Tp HCM', ''),
(9268, 1, 'Quốc', '18496262', 'Tp HCM', 'Đơn hàng mua trực tiếp'),
(9443, 2, 'Nguyễn Minh Hoàng', '0985642356', 'Số 64 Phùng Hưng,Hà Đông,Hà Nội', 'Đơn hàng mua trực tiếp'),
(9472, 1, 'nguyen quoc', '257878777', 'Tp HCM', ''),
(9705, 18, 'Bùi Bằng', '383602034', 'Số 35 Trần Phú, Hà Đông, Hà Nội', ''),
(9741, 1, 'nguyen quoc', '376883020', 'Tp HCM', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` date NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(1, 1, 5, 'nguyen quoc', 5, 'thơm', '2024-01-01', 1),
(2, 1, 8, 'nguyen quoc', 5, 'tuyệt vời', '2024-01-01', 1),
(3, 1, 10, 'nguyen quoc', 5, 'tốt', '2024-01-01', 1),
(4, 1, 5, 'nguyen quoc', 5, 'good', '2024-01-03', 1),
(5, 1, 22, 'nguyen quoc', 4, 'tot\r\n', '2024-01-03', 1),
(6, 15, 35, 'Thịnh', 4, 'Sản phẩm tuyệt quá!', '2024-01-28', 1),
(7, 17, 26, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(8, 17, 30, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(9, 17, 25, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(10, 17, 27, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(11, 17, 28, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(12, 17, 29, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(13, 17, 32, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(14, 17, 33, 'Bùi Bằng', 2, '', '2024-05-11', 1),
(15, 17, 34, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(16, 17, 36, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(17, 17, 67, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(18, 17, 68, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(19, 17, 69, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(20, 17, 70, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(21, 17, 71, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(22, 17, 72, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(23, 17, 73, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(24, 17, 74, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(25, 17, 75, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(26, 17, 76, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(27, 17, 77, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(28, 17, 79, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(29, 17, 80, 'Bùi Bằng', 3, '', '2024-05-11', 1),
(30, 17, 81, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(31, 17, 84, 'Bùi Bằng', 4, '', '2024-05-11', 1),
(32, 17, 85, 'Bùi Bằng', 5, '', '2024-05-11', 1),
(33, 17, 82, 'Bùi Bằng', 4, '', '2024-05-12', 1),
(34, 17, 83, 'Bùi Bằng', 3, '', '2024-05-12', 1),
(35, 17, 86, 'Bùi Bằng', 5, '', '2024-05-12', 1),
(36, 18, 25, 'Bùi Bằng', 5, 'Sản phẩm có mùi hơi nồng và nến rất nhanh cháy ', '2024-05-25', 1),
(37, 19, 86, 'Nguyễn Văn Nam', 3, 'Sản phẩm có hương thơm rất dễ chịu ', '2024-05-27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(10, 15, 'thinh', 'safia', '0547827852', 'Nhập hàng vào kho', '4590', '2024-01-28', 120000, 0),
(11, 15, 'thinh', 'safia', '0547827852', 'Nhập hàng vào kho', '7028', '2024-01-29', 5760000, 0),
(12, 0, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '8308', '2024-05-12', 7500000, 0),
(13, 0, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '6034', '2024-05-12', 4000000, 0),
(14, 0, 'Phương', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0593215064', 'Thiếu hàng', '8702', '2024-05-12', 3500000, 0),
(15, 0, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '9734', '2024-05-12', 6000000, 0),
(16, 0, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '549', '2024-05-12', 5500000, 0),
(17, 0, 'Hoàng', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '2487', '2024-05-12', 7500000, 0),
(18, 0, 'Phương', 'Số 3 Văn Phú,Hà Đông', '0984263021', 'Thiếu hàng', '8351', '2024-05-12', 6000000, 0),
(19, 0, 'Long', 'Số 1 Trần Phú', '0984263021', 'Thiếu hàng', '9450', '2024-05-12', 11500000, 0),
(20, 0, 'Long', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '4956', '2024-05-12', 6000000, 0),
(21, 0, 'Long', 'Số 3 Văn Phú,Hà Đông', '0593215064', 'Thiếu hàng', '2117', '2024-05-12', 5000000, 0),
(22, 17, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '7794', '2024-05-12', 7500000, 0),
(23, 17, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '4332', '2024-05-12', 11500000, 0),
(24, 17, 'Phương', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '8500', '2024-05-12', 12000000, 0),
(25, 17, 'Hoàng', 'Số 3 Văn Phú,Hà Đông', '0984263021', 'Thiếu hàng', '4040', '2024-05-12', 15000000, 0),
(26, 17, 'Phương', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '1081', '2024-05-12', 15000000, 0),
(27, 17, 'Phương', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '3119', '2024-05-12', 27500000, 0),
(28, 17, 'Long', 'Số 3 Văn Phú,Hà Đông', '0984263021', 'Thiếu hàng', '5380', '2024-05-12', 7500000, 0),
(29, 17, 'Hoàng', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0593215064', 'Thiếu hàng', '6221', '2024-05-12', 6000000, 0),
(30, 17, 'Long', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '566', '2024-05-12', 9000000, 0),
(31, 17, 'Phương', 'Số 3 Văn Phú,Hà Đông', '0984263021', 'Thiếu hàng', '9656', '2024-05-12', 12000000, 0),
(32, 17, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0984263021', 'Thiếu hàng', '5227', '2024-05-12', 24000000, 0),
(33, 17, 'Long', 'Số 5 Quan Hoa, Cầu Giấy , Hà Nội', '0984263021', 'Thiếu hàng', '6745', '2024-05-12', 25000000, 0),
(36, 18, 'Long', 'Số 14 Xuân Thủy,Cầu Giấy,Hà Nội', '0593215064', 'Thiếu hàng', '9161', '2024-05-25', 4400000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '718', 1, 10, 4000000),
(2, '2216', 10, 10, 4000000),
(3, '2216', 9, 10, 435435),
(4, '2216', 8, 10, 7000000),
(5, '2216', 7, 10, 600000),
(6, '2216', 6, 10, 3000000),
(7, '2216', 5, 10, 7000050),
(8, '2216', 4, 10, 5634810),
(9, '2216', 3, 18, 4575760),
(10, '8933', 2, 15, 3500000),
(11, '5953', 8, 5, 3000000),
(12, '5014', 8, 5, 3500000),
(13, '7881', 22, 20, 3000000),
(14, '7881', 21, 20, 1750000),
(15, '7881', 20, 20, 6342000),
(16, '7881', 19, 20, 1200000),
(17, '7881', 18, 20, 800000),
(18, '7881', 17, 20, 900000),
(19, '7881', 16, 20, 1200000),
(20, '7881', 15, 20, 3000000),
(21, '7881', 14, 20, 1500000),
(22, '7881', 13, 20, 3610000),
(23, '928', 9, 5, 3500000),
(24, '928', 4, 10, 6000000),
(25, '4180', 4, 10, 3000000),
(26, '8147', 21, 4, 3434370000),
(27, '4590', 36, 1, 120000),
(28, '7028', 35, 10, 120000),
(29, '7028', 34, 5, 120000),
(30, '7028', 33, 8, 120000),
(31, '7028', 32, 5, 120000),
(32, '7028', 30, 10, 120000),
(33, '7028', 29, 10, 120000),
(34, '8308', 26, 50, 150000),
(35, '6034', 80, 50, 80000),
(36, '8702', 79, 50, 70000),
(37, '9734', 84, 50, 120000),
(38, '549', 85, 50, 110000),
(39, '2487', 30, 50, 150000),
(40, '8351', 33, 40, 150000),
(41, '9450', 86, 50, 230000),
(42, '4956', 82, 50, 120000),
(43, '2117', 83, 50, 100000),
(44, '7794', 34, 50, 150000),
(45, '4332', 25, 50, 230000),
(46, '8500', 69, 50, 240000),
(47, '4040', 28, 50, 300000),
(48, '1081', 70, 50, 300000),
(49, '3119', 73, 50, 550000),
(50, '5380', 27, 50, 150000),
(51, '6221', 36, 40, 150000),
(52, '566', 75, 50, 180000),
(53, '9656', 35, 50, 240000),
(54, '5227', 77, 50, 480000),
(55, '6745', 68, 50, 500000),
(56, '625', 81, 50, 50000),
(57, '6729', 71, 100, 600000),
(58, '9161', 86, 20, 220000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(255) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2024-01-01', 8, '62197500', 11),
(2, '2024-01-02', 6, '47046500', 8),
(3, '2024-01-03', 8, '112505200', 15),
(4, '2024-01-04', 10, '66354190', 11),
(5, '2024-01-29', 3, '752000', 4),
(6, '2024-01-30', 3, '582000', 3),
(7, '2024-05-11', 1, '650000', 1),
(8, '2024-05-12', 9, '1778000', 14),
(9, '2024-05-13', 2, '430000', 2),
(10, '2024-05-15', 7, '2025000', 9),
(11, '2024-05-16', 1, '560000', 2),
(12, '2024-05-21', 5, '855000', 6),
(13, '2024-05-24', 4, '2800000', 7),
(14, '2024-05-25', 5, '1296000', 8),
(15, '2024-05-27', 8, '3612000', 12),
(16, '2024-05-28', 2, '770000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `momo_id` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`momo_id`, `partner_code`, `order_code`, `momo_amount`, `order_info`, `order_type`, `trans_id`, `payment_date`, `pay_type`, `payment_status`) VALUES
(1, 'MOMOBKUN20180529', 6017, '3800000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2024-01-03 08:27:38', 'napas', 0),
(2, 'MOMOBKUN20180529', 2296, '3800000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2024-01-04 08:59:12', 'napas', 0),
(3, 'MOMOBKUN20180529', 1839, '3800000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2024-01-04 10:42:00', 'napas', 0),
(4, 'MOMOBKUN20180529', 6558, '7990000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2024-01-04 12:37:41', 'napas', 0),
(5, 'MOMOBKUN20180529', 333, '8460000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2024-01-04 15:56:28', 'napas', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(34, 333, '2024-01-04 15:56:28', 11, 2589, 8460000, 3, 1),
(35, 8466, '2024-01-29 11:42:20', 15, 9001, 170000, 1, 3),
(36, 3621, '2024-01-29 12:00:18', 15, 6041, 388000, 1, 3),
(37, 399, '2024-01-29 15:56:19', 2, 6670, 388000, 5, -1),
(38, 8427, '2024-01-29 16:28:21', 15, 7144, 194000, 4, 3),
(39, 9711, '2024-01-29 23:57:23', 15, 5985, 776000, 1, -1),
(40, 2570, '2024-01-30 00:11:18', 16, 7996, 194000, 4, 3),
(41, 5446, '2024-01-30 00:15:16', 2, 775, 194000, 5, -1),
(42, 5556, '2024-01-30 10:51:26', 2, 8153, 194000, 5, -1),
(43, 4592, '2024-05-11 12:38:05', 17, 1573, 650000, 1, 3),
(44, 3520, '2024-05-12 22:10:03', 2, 1155, 150000, 5, -1),
(45, 7198, '2024-05-12 22:16:10', 17, 5282, 400000, 1, 3),
(46, 3123, '2024-05-12 22:20:54', 2, 6960, 130000, 5, -1),
(47, 4426, '2024-05-12 22:28:55', 17, 2283, 130000, 1, 3),
(48, 9433, '2024-05-12 23:40:19', 2, 8929, 150000, 5, 3),
(49, 1101, '2024-05-13 08:36:05', 17, 7563, 180000, 1, -1),
(50, 8564, '2024-05-13 08:36:23', 2, 4172, 150000, 5, -1),
(51, 7310, '2024-05-13 09:16:27', 17, 6694, 280000, 1, -1),
(52, 2177, '2024-05-15 09:38:35', 18, 7787, 560000, 1, 5),
(53, 2153, '2024-05-15 09:39:33', 2, 6519, 280000, 5, 3),
(54, 2677, '2024-05-15 17:02:59', 2, 2478, 150000, 5, -1),
(55, 308, '2024-05-15 17:17:58', 2, 2187, 150000, 5, -1),
(56, 9227, '2024-05-15 22:01:23', 18, 9140, 100000, 4, 3),
(57, 8348, '2024-05-15 22:14:21', 18, 2444, 500000, 4, 3),
(58, 7610, '2024-05-15 22:27:29', 18, 8203, 285000, 4, 3),
(59, 6775, '2024-05-16 08:39:05', 18, 9157, 560000, 4, 3),
(60, 6621, '2024-05-21 10:01:47', 2, 1671, 150000, 5, 3),
(61, 9628, '2024-05-21 11:51:30', 18, 5123, 240000, 1, 3),
(62, 7225, '2024-05-21 11:51:52', 2, 8959, 80000, 5, -1),
(63, 9953, '2024-05-21 12:08:10', 18, 3656, 285000, 4, 3),
(64, 7764, '2024-05-21 12:12:28', 18, 9705, 100000, 4, -1),
(65, 4719, '2024-05-24 22:28:16', 18, 7683, 1045000, 1, 3),
(66, 8641, '2024-05-24 22:39:32', 2, 292, 150000, 5, -1),
(67, 8863, '2024-05-24 23:30:42', 18, 8744, 560000, 1, 3),
(68, 5407, '2024-05-25 10:23:40', 18, 6211, 266000, 1, -1),
(69, 8179, '2024-05-25 10:29:01', 18, 5310, 150000, 4, -1),
(70, 4646, '2024-05-25 10:36:42', 18, 3163, 200000, 4, 3),
(71, 4760, '2024-05-25 12:53:53', 18, 5107, 380000, 4, 3),
(72, 3490, '2024-05-25 17:05:32', 2, 9443, 300000, 5, -1),
(73, 7939, '2024-05-27 08:22:50', 18, 7146, 650000, 4, 3),
(74, 3603, '2024-05-27 08:26:22', 18, 1702, 650000, 1, 3),
(75, 8225, '2024-05-27 08:35:04', 2, 8415, 150000, 5, -1),
(76, 9554, '2024-05-27 09:16:30', 18, 7977, 266000, 1, 3),
(77, 9119, '2024-05-27 09:42:42', 18, 6630, 80000, 4, 3),
(78, 454, '2024-05-27 09:45:51', 2, 6338, 1400000, 5, -1),
(79, 1394, '2024-05-28 11:29:07', 18, 5564, 650000, 4, 3),
(80, 689, '2024-05-28 11:31:29', 18, 7274, 120000, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `variant_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(43, 8466, 36, 58, 1, 200000, 15),
(44, 3621, 35, 49, 2, 200000, 3),
(45, 399, 35, 50, 1, 200000, 3),
(46, 399, 35, 50, 1, 200000, 3),
(47, 8427, 35, 49, 1, 200000, 3),
(48, 9711, 35, 50, 4, 200000, 3),
(49, 2570, 35, 50, 1, 200000, 3),
(50, 5446, 35, 50, 1, 200000, 3),
(51, 5556, 35, 49, 1, 200000, 3),
(52, 4592, 29, 181, 1, 650000, 0),
(53, 3520, 85, 207, 1, 150000, 0),
(54, 7198, 81, 209, 5, 80000, 0),
(55, 3123, 83, 233, 1, 130000, 0),
(56, 4426, 83, 232, 1, 130000, 0),
(57, 9433, 85, 208, 1, 150000, 0),
(58, 1101, 27, 279, 1, 200000, 10),
(59, 8564, 85, 208, 1, 150000, 0),
(60, 7310, 86, 223, 1, 280000, 0),
(61, 2177, 69, 244, 2, 280000, 0),
(62, 2153, 86, 223, 1, 280000, 0),
(63, 2677, 85, 208, 1, 150000, 0),
(64, 308, 85, 207, 1, 150000, 0),
(65, 9227, 79, 114, 1, 100000, 0),
(66, 8348, 75, 273, 2, 250000, 0),
(67, 7610, 35, 270, 1, 300000, 5),
(68, 6775, 86, 292, 2, 280000, 0),
(69, 6621, 85, 208, 1, 150000, 0),
(70, 9628, 80, 219, 2, 120000, 0),
(71, 7225, 81, 210, 1, 80000, 0),
(72, 9953, 35, 270, 1, 300000, 5),
(73, 7764, 79, 114, 1, 100000, 0),
(74, 4719, 77, 281, 2, 550000, 5),
(75, 8641, 84, 197, 1, 150000, 0),
(76, 8863, 86, 292, 2, 280000, 0),
(77, 5407, 25, 307, 1, 280000, 5),
(78, 8179, 82, 229, 1, 150000, 0),
(79, 4646, 79, 114, 2, 100000, 0),
(80, 4760, 33, 205, 2, 200000, 5),
(81, 3490, 85, 345, 2, 150000, 0),
(82, 7939, 73, 327, 1, 650000, 0),
(83, 3603, 73, 327, 1, 650000, 0),
(84, 8225, 85, 346, 1, 150000, 0),
(85, 9554, 25, 307, 1, 280000, 5),
(86, 9119, 81, 362, 1, 80000, 0),
(87, 454, 86, 313, 5, 280000, 0),
(88, 1394, 73, 327, 1, 650000, 0),
(89, 689, 80, 352, 1, 120000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` int(11) NOT NULL DEFAULT 0,
  `product_brand` int(11) NOT NULL DEFAULT 0,
  `product_quantity` int(11) NOT NULL DEFAULT 0,
  `quantity_sales` int(11) NOT NULL DEFAULT 0,
  `product_summary` varchar(255) DEFAULT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `product_quantity`, `quantity_sales`, `product_summary`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(25, 'Nến thơm Citta Mori', 2, 1, 50, 0, ' KHỐI LƯỢNG: 300G | KT: 7cm x 9cm | 40H CHÁY', 230000, 280000, 5, '<p><strong>Nến thơm Citta Mori</strong></p>\r\n\r\n<p>TH&Agrave;NH PHẦN: S&aacute;p đậu n&agrave;nh, trang tr&iacute; hoa kh&ocirc; tự nhi&ecirc;n.</p>\r\n\r\n<p>&nbsp;KHỐI LƯỢNG: 300G | KT: 7cm x 9cm | 40H CH&Aacute;Y</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nến thơm d&ugrave;ng trang tr&iacute; cũng đ&atilde; rất thơm. Tuy nhi&ecirc;n nếu muốn đốt: Cắt bấc nến trước khi đốt c&ograve;n khoảng 5mm, Cắt bớt những nh&aacute;nh hoa hoa gần bấc (hạn chế bấc b&eacute;n lửa l&agrave;m ch&aacute;y hoa), Chỉ đốt ở khu vực đứng gi&oacute; (tr&aacute;nh gi&oacute; quạt v&agrave; gi&oacute; điều ho&agrave;) để lửa kh&ocirc;ng b&eacute;n l&ecirc;n hoa kh&ocirc;.</p>\r\n', '1715398156_shopping.webp', 1),
(26, 'Sáp thơm exquisite life', 6, 1, 50, 0, 'KL: 50G-35G-37G | 365 NGÀY | SÁP ONG', 150000, 200000, 5, '<p><strong>S&aacute;p thơm exquisite life</strong></p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1706427674_sapthom1.jpg', 1),
(27, 'Tinh dầu cho ô tô cita car', 1, 1, 50, 0, 'TINH DẦU: 50ML | 40 NGÀY | 4.8×4.8×6.5 CM', 150000, 200000, 10, '<p><strong>Tinh dầu cho &ocirc; t&ocirc; cita car</strong></p>\r\n\r\n<p>&ndash; Thể t&iacute;ch:&nbsp;50ML | 40 NG&Agrave;Y | 4.8&times;4.8&times;6.5 CM</p>\r\n\r\n<p>&ndash; K&iacute;ch thước hộp: 5.5&times;5.5x9CM | Khối lượng: 159G</p>\r\n\r\n<p>&ndash; Bao gồm: 01 lọ tinh dầu | 01 Bộ que khuếch t&aacute;n | 01 đế chống trơn trượt</p>\r\n\r\n<p><strong>HDSD: B1:&nbsp;</strong>Mở nắp chai.&nbsp;<strong>B2:</strong>&nbsp;Cho que khuếch t&aacute;n tinh dầu v&agrave;o chai.&nbsp;<strong>B3:</strong>&nbsp;Lật ngược que khuếch t&aacute;n lại để cho tinh dầu ngấm đều.&nbsp;<strong>B4</strong>: Sau 1 tuần lại lật ngược que khuếch t&aacute;n.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Sản phẩm ho&agrave;n to&agrave;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Ph&ugrave; hợp cho &Ocirc; t&ocirc;, Ph&ograve;ng ngủ, ph&ograve;ng tắm&hellip; Với hương thơm toả đều, lưu hương l&acirc;u gi&uacute;p cho kh&ocirc;ng gian lu&ocirc;n thơm tho, tươi m&aacute;t. Tinh dầu l&agrave; m&oacute;n qu&agrave; cực kỳ &yacute; nghĩa v&agrave; ph&ugrave; hợp để d&agrave;nh tặng cho bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n', '1706427746_tinhdau1.jpg', 1),
(28, 'Nến thơm Cita', 2, 1, 50, 0, 'KL SÁP: 90G | 15H CHÁY | BẤC COTTON', 300000, 350000, 0, '<p><strong>Nến thơm Cita</strong></p>\r\n\r\n<p>Thiết kế đơn giản với hoa hồng bằng lụa bao quanh hũ nến thơm mang lại cảm gi&aacute;c tinh tế, trang nh&atilde; Hộp qu&agrave; cứng c&aacute;p, đi k&egrave;m d&acirc;y x&aacute;ch bằng vải L&agrave; m&oacute;n qu&agrave; &yacute; nghĩa d&agrave;nh tặng cho người th&acirc;n v&agrave; bạn b&egrave;.</p>\r\n\r\n<p>KL S&Aacute;P: 90G | 15H CH&Aacute;Y | BẤC COTTON</p>\r\n\r\n<p>HỘP QU&Agrave;: 24.5&times;12.5&times;12.5CM | KL&nbsp;600G</p>\r\n\r\n<p>CHẤT LIỆU: S&aacute;p nến từ s&aacute;p đậu n&agrave;nh thi&ecirc;n nhi&ecirc;n, D&eacute;cor hoa hồng bằng lụa.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nến thơm d&ugrave;ng trang tr&iacute; cũng đ&atilde; rất thơm. Tuy nhi&ecirc;n nếu muốn đốt: Cắt bấc nến trước khi đốt c&ograve;n khoảng 5mm, Cắt bớt những nh&aacute;nh hoa hoa gần bấc (hạn chế bấc b&eacute;n lửa l&agrave;m ch&aacute;y hoa), Chỉ đốt ở khu vực đứng gi&oacute; (tr&aacute;nh gi&oacute; quạt v&agrave; gi&oacute; điều ho&agrave;) để lửa kh&ocirc;ng b&eacute;n l&ecirc;n hoa kh&ocirc;.</p>\r\n', '1715785903_O1CN01C0zcxo2L7v8ibSGFP_2200563839646-0-cib.jpg', 1),
(29, 'Tinh dầu Crystal Stone Summer', 1, 1, 9, 1, '', 550000, 650000, 0, '', '1706427921_tinhdau2.webp', 1),
(30, 'Sáp thơm Citta New Wax', 6, 1, 60, 0, 'KL: 67G | 365 NGÀY | 9x5x1 CM | SÁP ONG.', 150000, 200000, 0, '<p><strong>S&aacute;p thơm Citta New Wax</strong></p>\r\n\r\n<p>THỜI GIAN: 37G | 365 NG&Agrave;Y | 9x5x1 CM</p>\r\n\r\n<p>Hộp qu&agrave;: 170G | 20.5 x 12.5 x 4CM</p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1706427979_sapthom2.webp', 1),
(32, 'Tinh dầu Crystal Stone Winter', 1, 1, 5, 0, '', 550000, 650000, 10, '', '1706428201_tinhdau3.png', 1),
(33, 'Sáp thơm Wardrode', 6, 1, 46, 2, 'KL: 67G | 365 NGÀY | 9x5x1 CM | SÁP ONG.', 150000, 200000, 5, '<p><strong>S&aacute;p thơm Wardrode</strong></p>\r\n\r\n<p>THỜI GIAN: 37G | 365 NG&Agrave;Y | 9x5x1 CM</p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1706428267_sapthom3.jpg', 1),
(34, 'Nến thơm Citta Jane Eyre spar', 2, 1, 55, 0, 'KL: 254G | 12H CHÁY | BẤC COTTON.', 150000, 200000, 10, '<p><strong>Nến thơm Citta Jane Eyre spar</strong></p>\r\n\r\n<p>KL S&Aacute;P: 65G | 12H CH&Aacute;Y | BẤC COTTON</p>\r\n\r\n<p>K&Iacute;CH THƯỚC: 254G | 7.4 x 7.4 x 4.9CM</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nến thơm d&ugrave;ng trang tr&iacute; cũng đ&atilde; rất thơm. Tuy nhi&ecirc;n nếu muốn đốt: Cắt bấc nến trước khi đốt c&ograve;n khoảng 5mm, Cắt bớt những nh&aacute;nh hoa hoa gần bấc (hạn chế bấc b&eacute;n lửa l&agrave;m ch&aacute;y hoa), Chỉ đốt ở khu vực đứng gi&oacute; (tr&aacute;nh gi&oacute; quạt v&agrave; gi&oacute; điều ho&agrave;) để lửa kh&ocirc;ng b&eacute;n l&ecirc;n hoa kh&ocirc;.</p>\r\n', '1706428333_nenthom5.jpg', 1),
(35, 'Tinh dầu Gold Leaf', 1, 3, 54, 6, 'TINH DẦU: 150ML | 80 NGÀY | 7×11.5×4 CM', 240000, 300000, 5, '<p><strong>Tinh dầu Gold Leaf</strong></p>\r\n\r\n<p>&ndash; Sản phẩm đơn:&nbsp;150ML | 80 NG&Agrave;Y | 7&times;11.5&times;4 CM</p>\r\n\r\n<p>&ndash; K&iacute;ch thước hộp: 21x13x5CM | Khối lượng: 550G</p>\r\n\r\n<p><strong>HDSD: B1:&nbsp;</strong>Mở nắp chai.&nbsp;<strong>B2:</strong>&nbsp;Cho que khuếch t&aacute;n tinh dầu v&agrave;o chai.&nbsp;<strong>B3:</strong>&nbsp;Lật ngược que khuếch t&aacute;n lại để cho tinh dầu ngấm đều.&nbsp;<strong>B4</strong>: Sau 1 th&aacute;ng lại lật ngược que khuếch t&aacute;n.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Sản phẩm ho&agrave;n to&agrave;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Ph&ugrave; hợp với mọi kh&ocirc;ng gian trong nh&agrave; từ Ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, ph&ograve;ng tắm. Với hương thơm toả đều, lưu hương l&acirc;u gi&uacute;p cho kh&ocirc;ng gian lu&ocirc;n thơm tho, tươi m&aacute;t. Tinh dầu l&agrave; m&oacute;n qu&agrave; cực kỳ &yacute; nghĩa v&agrave; ph&ugrave; hợp để d&agrave;nh tặng cho bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n', '1706428404_tinhdau4.jpeg', 1),
(36, 'Tinh Dầu Treo ÔTô Wooden', 1, 1, 40, 1, 'TINH DẦU: 112G | 60 NGÀY | 4×1.7×5.5 CM', 150000, 200000, 15, '<p><strong>Tinh Dầu Treo &Ocirc;T&ocirc; Wooden</strong></p>\r\n\r\n<p>&ndash; Thể t&iacute;ch:&nbsp;112G | 60 NG&Agrave;Y | 4&times;1.7&times;5.5 CM</p>\r\n\r\n<p>&ndash; K&iacute;ch thước hộp: 8.5x10x3 CM</p>\r\n\r\n<p><strong>SỬ DỤNG:</strong>&nbsp;Mở n&uacute;t nhỏ b&ecirc;n trong, vặn nắp v&agrave; &uacute;p ngược trong v&agrave;i gi&acirc;y để nước hoa thấm v&agrave;o nắp gỗ v&agrave; đợi hương thơm tr&agrave;n ra ngo&agrave;i.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Sản phẩm ho&agrave;n to&agrave;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Ph&ugrave; hợp cho &Ocirc; t&ocirc;, Ph&ograve;ng ngủ, ph&ograve;ng tắm&hellip; Với hương thơm toả đều, lưu hương l&acirc;u gi&uacute;p cho kh&ocirc;ng gian lu&ocirc;n thơm tho, tươi m&aacute;t. Tinh dầu l&agrave; m&oacute;n qu&agrave; cực kỳ &yacute; nghĩa v&agrave; ph&ugrave; hợp để d&agrave;nh tặng cho bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1706428525_tinhdau7.jpg', 1),
(67, 'TInh dầu cao cấp  Evelyn Rose', 1, 4, 0, 0, '', 1400000, 1550000, 0, '', '1715396514_Tinh dầu Evelyn Rose.webp', 1),
(68, 'Tinh dầu Snow Orange', 1, 1, 50, 0, 'TRỌNG LƯỢNG: 1200G | 03 OIL | 28.5×17.5x13CM', 500000, 580000, 0, '<p><strong>Tinh dầu Snow Orange</strong></p>\r\n\r\n<p>&ndash; 01 Lọ thủ tinh k&egrave;m lắp chụp: 256G | 10 x 10 x 15.5CM.</p>\r\n\r\n<p>&ndash; Đ&aacute; Thạch Anh/ Muối Hymalaya: 500G</p>\r\n\r\n<p>&ndash; 03 chai tinh dầu 10ML</p>\r\n\r\n<p>K&iacute;ch thước hộp: 1200G | 28.5 x 17.5 x 13CM</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong>:&nbsp;<strong>B1:</strong>&nbsp;Đặt đ&aacute; khuếch t&aacute;n v&agrave;o cốc thủy tinh.&nbsp;<strong>B2:</strong>&nbsp;Nhỏ 5-8 giọt tinh dầu t&ugrave;y theo nồng độ m&ugrave;i hương.&nbsp;<strong>B3:</strong>&nbsp;Đậy nắp trong 1-2 ph&uacute;t để tinh dầu thấm v&agrave;o c&aacute;c khe đ&aacute;.&nbsp;<strong>B4:</strong>&nbsp;Mở nắp v&agrave; sử dụng, đậy lại khi kh&ocirc;ng sử dụng.</p>\r\n', '1715397171_Crystal Stone.jpeg', 1),
(69, 'Nến thơm Amber Dream', 2, 3, 48, 2, 'KHỐI LƯỢNG: 130G | KT:5cm x 7cm | 25H CHÁY', 240000, 280000, 0, '<p><strong>Nến thơm Amber Dream</strong></p>\r\n\r\n<p>Nến thơm tinh dầu cao cấp Purevess kh&ocirc;ng kh&oacute;i an to&agrave;n gi&uacute;p thơm ph&ograve;ng, thư gi&atilde;n</p>\r\n\r\n<p>Th&agrave;nh phần Nến thơm tinh dầu cao cấp Purevess kh&ocirc;ng kh&oacute;i an to&agrave;n gi&uacute;p thơm ph&ograve;ng, thư gi&atilde;n: s&aacute;p n&agrave;nh, s&aacute;p cọ v&agrave; tinh dầu h&agrave;m lượng cao (18%)</p>\r\n\r\n<p>Khối lượng NET: 130 gram (kh&ocirc;ng gian 10-15 m2)</p>\r\n\r\n<p>Thời gian đốt: 25 tiếng</p>\r\n\r\n<p>M&ugrave;i hương:gỗ cashmere v&agrave; xạ hương,Hương gỗ &amp; đậu n&agrave;nh,French Block</p>\r\n', '1715397370_5572de931465786e93a2bfb0da2a55fd.jpg', 1),
(70, 'Nến thơm Amber Glass', 2, 3, 50, 0, 'KHỐI LƯỢNG: 130G | KT:5cm x 7cm | 25H CHÁY', 300000, 360000, 5, '<p><strong>Nến thơm Amber Dream</strong></p>\r\n\r\n<p>Nến thơm tinh dầu cao cấp Purevess kh&ocirc;ng kh&oacute;i an to&agrave;n gi&uacute;p thơm ph&ograve;ng, thư gi&atilde;n</p>\r\n\r\n<p>Th&agrave;nh phần Nến thơm tinh dầu cao cấp Purevess kh&ocirc;ng kh&oacute;i an to&agrave;n gi&uacute;p thơm ph&ograve;ng, thư gi&atilde;n: s&aacute;p n&agrave;nh, s&aacute;p cọ v&agrave; tinh dầu h&agrave;m lượng cao (18%)</p>\r\n\r\n<p>Khối lượng NET: 130 gram (kh&ocirc;ng gian 10-15 m2)</p>\r\n\r\n<p>Thời gian đốt: 25 tiếng</p>\r\n\r\n<p>M&ugrave;i hương:Chanh &Yacute; &amp;Trầm Hương,hoa hồng &amp; cam bergamot,Snow orange</p>\r\n', '1715397499_Nến thơm Amber Glas.jpg', 1),
(71, 'Nến thơm Evelyn Rose', 2, 4, 100, 0, '', 600000, 700000, 0, '', '1715397695_Nến thơm Crabtree Evelyn.webp', 1),
(72, 'Nến thơm Herb Candle', 2, 4, 0, 0, '', 650000, 750000, 0, '', '1715397764_herb candle.webp', 1),
(73, 'Nến thơm Whisper Wind', 2, 9, 47, 3, 'KHỐI LƯỢNG: 310G | KT:7cm x 9cm | 45H CHÁY', 550000, 650000, 0, '<p><strong>Nến thơm Whisper Wind</strong></p>\r\n\r\n<p>Hương nến&nbsp;<strong>Whisper Wind&nbsp;</strong>mang đến kh&ocirc;ng gian thư gi&atilde;n v&agrave; &ecirc;m dịu, tạo n&ecirc;n một kh&ocirc;ng gian ấm c&uacute;ng v&agrave; th&acirc;n thuộc. M&ugrave;i hương của nến mang đến sự thư th&aacute;i v&agrave; gi&uacute;p bạn tận hưởng những gi&acirc;y ph&uacute;t thảnh thơi sau một ng&agrave;y d&agrave;i căng thẳng. Hương nến&nbsp;<strong>Whisper Wind</strong> kh&ocirc;ng chỉ đơn thuần l&agrave; một sản phẩm nến thủ c&ocirc;ng, m&agrave; c&ograve;n l&agrave; một t&aacute;c phẩm nghệ thuật được tạo ra bởi những người nghệ sĩ t&agrave;i ba</p>\r\n\r\n<p><strong>LƯU &Yacute; KHI SỬ DỤNG NẾN THƠM</strong></p>\r\n\r\n<ul>\r\n	<li>Lu&ocirc;n giữ nến đang ch&aacute;y trong tầm nh&igrave;n.</li>\r\n	<li>Kh&ocirc;ng bao giờ đốt nến tr&ecirc;n hoặc để nến gần bất cứ thứ g&igrave; c&oacute; thể bắt lửa.</li>\r\n	<li>Cắt nhỏ bấc xuống 1/4 trước khi đặt nến xuống để tr&aacute;nh bấc qu&aacute; cao g&acirc;y vỡ bấc l&agrave;m s&aacute;p chảy ra g&acirc;y m&ugrave;i kh&eacute;t.</li>\r\n</ul>\r\n', '1715397894_nen-thom-1-14.jpg', 1),
(74, 'Tinh dầu thơm  EverSense II Reed Diffuser', 1, 6, 0, 0, '', 1100000, 1300000, 5, '', '1715398453_9bc3397c8804b03299331621ffca47c4.JPG.webp', 1),
(75, 'Tinh Dầu Warm Winter', 1, 1, 48, 2, 'TINH DẦU: 120ML | 70 NGÀY | 9×3.5×11 CM', 180000, 250000, 0, '<p><strong>Tinh Dầu Citta Warm Winter</strong></p>\r\n\r\n<p>&ndash; Thể t&iacute;ch:&nbsp;120ML | 70 NG&Agrave;Y | 9&times;3.5&times;11 CM</p>\r\n\r\n<p>&ndash; Hộp Qu&agrave;: 11&times;5.8&times;20.3CM | Khối lượng: 456G.</p>\r\n\r\n<p><strong>HDSD: B1:&nbsp;</strong>Mở nắp chai.&nbsp;<strong>B2:</strong>&nbsp;Cho que khuếch t&aacute;n tinh dầu v&agrave;o chai.&nbsp;<strong>B3:</strong>&nbsp;Lật ngược que khuếch t&aacute;n lại để cho tinh dầu ngấm đều.&nbsp;<strong>B4</strong>: Sau 1 th&aacute;ng lại lật ngược que khuếch t&aacute;n.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Sản phẩm ho&agrave;n to&agrave;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Ph&ugrave; hợp với mọi kh&ocirc;ng gian trong nh&agrave; từ Ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, ph&ograve;ng tắm. Với hương thơm toả đều, lưu hương l&acirc;u gi&uacute;p cho kh&ocirc;ng gian lu&ocirc;n thơm tho, tươi m&aacute;t. Tinh dầu l&agrave; m&oacute;n qu&agrave; cực kỳ &yacute; nghĩa v&agrave; ph&ugrave; hợp để d&agrave;nh tặng cho bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n', '1715487384_sg-11134201-22110-c9eydviin0jvf6.jpg', 1),
(76, 'Nến thơm Luxurious Cedar', 2, 9, 0, 0, '', 1500000, 1700000, 5, '', '1715399210_84c9b3be-e05f-4db0-bb27-2195eea693ee.webp', 1),
(77, 'Tinh dầu thơm Charmed Reed Diffuser', 1, 6, 50, 0, 'TINH DẦU: 100ML | 50 NGÀY | 5×10.5×3 CM', 480000, 550000, 5, '<p><strong>Tinh dầu thơm Charmed Reed Diffuser</strong></p>\r\n\r\n<p>&ndash; Sản phẩm đơn:&nbsp;100ML | 50 NG&Agrave;Y | 5&times;10.5&times;3 CM</p>\r\n\r\n<p>&ndash; K&iacute;ch thước hộp: 21x13x5CM | Khối lượng: 400G</p>\r\n\r\n<p><strong>HDSD: B1:&nbsp;</strong>Mở nắp chai.&nbsp;<strong>B2:</strong>&nbsp;Cho que khuếch t&aacute;n tinh dầu v&agrave;o chai.&nbsp;<strong>B3:</strong>&nbsp;Lật ngược que khuếch t&aacute;n lại để cho tinh dầu ngấm đều.&nbsp;<strong>B4</strong>: Sau 1 th&aacute;ng lại lật ngược que khuếch t&aacute;n.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Sản phẩm ho&agrave;n to&agrave;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Ph&ugrave; hợp với mọi kh&ocirc;ng gian trong nh&agrave; từ Ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, ph&ograve;ng tắm. Với hương thơm toả đều, lưu hương l&acirc;u gi&uacute;p cho kh&ocirc;ng gian lu&ocirc;n thơm tho, tươi m&aacute;t. Tinh dầu l&agrave; m&oacute;n qu&agrave; cực kỳ &yacute; nghĩa v&agrave; ph&ugrave; hợp để d&agrave;nh tặng cho bạn b&egrave; v&agrave; người th&acirc;n.</p>\r\n', '1715399991_sg-11134201-7qve5-lgu8ywr7w12cc3.jpg', 1),
(79, 'Sáp thơm Handmade', 6, 8, 49, 1, '', 70000, 100000, 0, '', '1715400904_z4421348049660_dec5f54947f53316c886e2b73a4597e9_bc2e5b7df746409190b486e2fa7c9d29_master.webp', 1),
(80, 'Sáp thơm phong thủy', 6, 8, 47, 3, 'KL: 70G | 365 NGÀY | 9x5x1 CM | SÁP ONG.', 80000, 120000, 0, '<p><strong>S&aacute;p thơm phong thủy</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;u đỏ đại diện cho mệnh hỏa, tương sinh với người mệnh mộc v&agrave; thổ</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u xanh l&aacute;&nbsp;đại diện cho mệnh mộc, tương sinh với người mệnh thủy&nbsp;v&agrave; hỏa</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u xanh dương&nbsp;đại diện cho mệnh thủy, tương sinh với người mệnh kim&nbsp;v&agrave; mộc</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u trắng&nbsp;đại diện cho mệnh kim, tương sinh với người mệnh thổ&nbsp;v&agrave; thủy</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u v&agrave;ng đại diện cho mệnh thổ, tương sinh với người mệnh hỏa&nbsp;v&agrave;&nbsp;kim</p>\r\n\r\n	<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n	<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n	</li>\r\n</ul>\r\n', '1715401082_1_vuong_c25eb881c8434bb3bfb2fbf362ffb5ec_master.webp', 1),
(81, 'Sáp Thơm Citta Pine Tree', 6, 1, 44, 6, 'KL: 28G | 365 NGÀY | 9×8.5×1 CM | SÁP ONG.', 50000, 80000, 0, '<p><strong>S&aacute;p Thơm Citta Pine Tree</strong></p>\r\n\r\n<p>THỜI GIAN:&nbsp;28G | 365 NG&Agrave;Y | 9&times;8.5&times;1 CM</p>\r\n\r\n<p>Hộp qu&agrave;: 180G | 29x12x4.3CM</p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1715401429_Christmas-tree1.png', 1),
(82, 'Túi Thơm Citta Literary', 3, 1, 51, -1, 'THỜI GIAN: 60 NGÀY | 12.8×8 CM', 120000, 150000, 0, '<p><strong>T&uacute;i Thơm Citta Literary</strong></p>\r\n\r\n<p>THỜI GIAN: 60 NG&Agrave;Y | 12.8&times;8 CM</p>\r\n\r\n<p>K&iacute;ch thước hộp: 20 x 12.5 x 4CM</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i: t&uacute;i thơm vải cotton + t&uacute;i thơm dự ph&ograve;ng + gim d&acirc;y treo, ticket.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong>:&nbsp;<strong>B1:</strong>&nbsp;Khui hộp sản phẩm.&nbsp;<strong>B2:</strong>&nbsp;Lắp t&uacute;i thơm, đồ decor, d&acirc;y treo v&agrave;o m&oacute;c treo.&nbsp;<strong>B3:</strong>&nbsp;Treo v&agrave;o vị tr&iacute; mong muốn như: Oto, t&uacute;i x&aacute;ch, balo, tủ quần &aacute;o.</p>\r\n\r\n<p><strong>LƯU &Yacute;: 1.</strong>Kh&ocirc;ng ăn được.&nbsp;<strong>2.</strong>Tr&aacute;nh xa lửa.&nbsp;<strong>3.</strong>Nhiệt độ cao trong &ocirc; t&ocirc; hoặc &aacute;nh nắng n&oacute;ng sẽ l&agrave;m tăng tốc độ bay hơi của hương thơm trong g&oacute;i.</p>\r\n', '1715402796_O1CN01llhV2d1gZ2UiS0dMT_2209928604155-e1692081104580.jpeg', 1),
(83, 'Túi thơm Nature Journey', 3, 1, 50, 0, 'THỜI GIAN: 60 NGÀY | 7×7 CM', 100000, 130000, 0, '<p><strong>T&uacute;i thơm Nature Journey</strong></p>\r\n\r\n<p>THỜI GIAN: 60 NG&Agrave;Y | 7&times;7 CM</p>\r\n\r\n<p>K&iacute;ch thước hộp: 18 x 10 x 4CM</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i: t&uacute;i thơm vải cotton + t&uacute;i thơm dự ph&ograve;ng + gim d&acirc;y treo, ticket.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong>:&nbsp;<strong>B1:</strong>&nbsp;Khui hộp sản phẩm.&nbsp;<strong>B2:</strong>&nbsp;Lắp t&uacute;i thơm, đồ decor, d&acirc;y treo v&agrave;o m&oacute;c treo.&nbsp;<strong>B3:</strong>&nbsp;Treo v&agrave;o vị tr&iacute; mong muốn như: Oto, t&uacute;i x&aacute;ch, balo, tủ quần &aacute;o.</p>\r\n\r\n<p><strong>LƯU &Yacute;: 1.</strong>Kh&ocirc;ng ăn được.&nbsp;<strong>2.</strong>Tr&aacute;nh xa lửa.&nbsp;<strong>3.</strong>Nhiệt độ cao trong &ocirc; t&ocirc; hoặc &aacute;nh nắng n&oacute;ng sẽ l&agrave;m tăng tốc độ bay hơi của hương thơm trong g&oacute;i.</p>\r\n', '1715402938_O1CN01lrpT102DX68BJHNwh_2212035208618-e1692118783728.jpeg', 1),
(84, 'Sáp Thơm Citta Jade Rabbit', 6, 1, 50, 0, 'KL: 70G | 365 NGÀY | 7 x 10CM | SÁP ONG.', 120000, 150000, 0, '<p>S&aacute;p Thơm Citta Jade Rabbit</p>\r\n\r\n<p>THỜI GIAN:&nbsp; 70G | 365 NG&Agrave;Y | 7 x 10CM</p>\r\n\r\n<p>K&iacute;ch thước hộp: 134G | 10.2&times;10.2x3CM</p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1715403051_O1CN01NBcFOU2L7vHLOI0o8_2200563839646-0-cib.jpg', 1),
(85, 'Sáp Thơm Citta Cosmic Starry', 6, 1, 59, -9, 'KL: 82G | 365 NGÀY | 7 x 10CM | SÁP ONG.', 110000, 150000, 0, '<p><strong>S&aacute;p Thơm Citta Cosmic Starry</strong></p>\r\n\r\n<p>THỜI GIAN: &nbsp;82G | 365 NG&Agrave;Y | 7 x 10CM</p>\r\n\r\n<p>K&iacute;ch thước hộp: 146G | 10.2&times;10.2x3CM</p>\r\n\r\n<p><strong>KHUYẾN NGHỊ:</strong>&nbsp;S&aacute;p l&agrave; thiết bị khuếch t&aacute;n kh&ocirc;ng gian nhỏ, sẽ từ từ giải ph&oacute;ng hương thơm, n&ecirc;n sử dụng trong kh&ocirc;ng gian nhỏ như tủ quần &aacute;o, ngăn k&eacute;o, ph&ograve;ng tắm, t&uacute;i x&aacute;ch.</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong>&nbsp;Nhiệt độ bảo quản v&agrave; sử dụng s&aacute;p ong kh&ocirc;ng được vượt qu&aacute; 45&deg;, nếu kh&ocirc;ng s&aacute;p sẽ bị mềm v&agrave; chảy.</p>\r\n', '1715403113_O1CN01VyqFTx2L7vC4SUJ59_2200563839646-0-cib.jpg', 1),
(86, 'Túi thơm White Sunshine', 3, 6, 65, 5, 'THỜI GIAN: 60 NGÀY | 14×9 CM', 220000, 280000, 5, '<p><strong>T&uacute;i thơm White Sunshine</strong></p>\r\n\r\n<p>THỜI GIAN: 60 NG&Agrave;Y | 14&times;9 CM</p>\r\n\r\n<p>K&iacute;ch thước hộp: 25 x 14 x 5CM</p>\r\n\r\n<p>Đ&oacute;ng g&oacute;i: t&uacute;i thơm vải cotton + t&uacute;i thơm dự ph&ograve;ng + gim d&acirc;y treo, ticket.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG</strong>:&nbsp;<strong>B1:</strong>&nbsp;Khui hộp sản phẩm.&nbsp;<strong>B2:</strong>&nbsp;Lắp t&uacute;i thơm, đồ decor, d&acirc;y treo v&agrave;o m&oacute;c treo.&nbsp;<strong>B3:</strong>&nbsp;Treo v&agrave;o vị tr&iacute; mong muốn như: Oto, t&uacute;i x&aacute;ch, balo, tủ quần &aacute;o.</p>\r\n\r\n<p><strong>LƯU &Yacute;: 1.</strong>Kh&ocirc;ng ăn được.&nbsp;<strong>2.</strong>Tr&aacute;nh xa lửa.&nbsp;<strong>3.</strong>Nhiệt độ cao trong &ocirc; t&ocirc; hoặc &aacute;nh nắng n&oacute;ng sẽ l&agrave;m tăng tốc độ bay hơi của hương thơm trong g&oacute;i.</p>\r\n', '1715403690_vn-11134207-7r98o-ltf1jk15v7kab1.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variant`
--

CREATE TABLE `product_variant` (
  `variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `scent_id` int(11) NOT NULL,
  `variant_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_variant`
--

INSERT INTO `product_variant` (`variant_id`, `product_id`, `scent_id`, `variant_name`, `quantity`, `status`) VALUES
(181, 29, 3, 'Peach Ôlong', 0, 1),
(182, 29, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(183, 29, 8, 'hoa hồng & cam bergamot', 0, 1),
(238, 34, 1, 'Zen & Tea', 0, 1),
(239, 34, 2, 'Tea White', 0, 1),
(240, 34, 3, 'Peach Ôlong', 0, 1),
(244, 69, 4, 'gỗ cashmere và xạ hương', 0, 1),
(245, 69, 6, 'Hương gỗ & đậu nành', 0, 1),
(246, 69, 11, 'French Block', 0, 1),
(247, 70, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(248, 70, 8, 'hoa hồng & cam bergamot', 0, 1),
(249, 70, 13, 'Snow orange', 0, 1),
(273, 75, 3, 'Peach Ôlong', 0, 1),
(274, 75, 4, 'gỗ cashmere và xạ hương', 0, 1),
(275, 75, 8, 'hoa hồng & cam bergamot', 0, 1),
(279, 27, 1, 'Zen & Tea', 0, 1),
(280, 27, 2, 'Tea White', 0, 1),
(283, 68, 3, 'Peach Ôlong', 0, 1),
(284, 68, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(285, 68, 13, 'Snow orange', 0, 1),
(295, 28, 2, 'Tea White', 0, 1),
(296, 28, 4, 'gỗ cashmere và xạ hương', 0, 1),
(297, 28, 6, 'Hương gỗ & đậu nành', 0, 1),
(304, 71, 4, 'gỗ cashmere và xạ hương ', 0, 1),
(305, 71, 6, 'Hương gỗ & đậu nành', 0, 1),
(306, 71, 8, 'hoa hồng & cam bergamot', 0, 1),
(307, 25, 2, 'Tea White', 0, 1),
(308, 25, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(309, 25, 6, 'Hương gỗ & đậu nành', 0, 1),
(316, 83, 1, 'Zen & Tea', 0, 1),
(317, 83, 2, 'Tea White', 0, 1),
(318, 83, 3, 'Peach Ôlong', 0, 1),
(319, 77, 1, 'Zen & Tea', 0, 1),
(320, 77, 2, 'Tea White', 0, 1),
(321, 76, 1, 'Zen & Tea', 0, 1),
(322, 76, 4, 'gỗ cashmere và xạ hương ', 0, 1),
(323, 76, 11, 'French Block', 0, 1),
(324, 74, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(325, 74, 6, 'Hương gỗ & đậu nành', 0, 1),
(326, 74, 9, 'hoa anh đào', 0, 1),
(327, 73, 1, 'Zen & Tea', 0, 1),
(328, 73, 2, 'Tea White', 0, 1),
(329, 72, 8, 'hoa hồng & cam bergamot', 0, 1),
(330, 72, 9, 'hoa anh đào', 0, 1),
(331, 72, 11, 'French Block', 0, 1),
(332, 36, 1, 'Zen & Tea', 0, 1),
(333, 36, 2, 'Tea White', 0, 1),
(334, 36, 3, 'Peach Ôlong', 0, 1),
(337, 32, 1, 'Zen & Tea', 0, 1),
(338, 32, 2, 'Tea White', 0, 1),
(339, 35, 1, 'Zen & Tea', 0, 1),
(340, 35, 2, 'Tea White', 0, 1),
(341, 35, 3, 'Peach Ôlong', 0, 1),
(347, 84, 1, 'Zen & Tea', 0, 1),
(348, 84, 2, 'Tea White', 0, 1),
(349, 84, 9, 'hoa anh đào', 0, 1),
(352, 80, 3, 'Peach Ôlong', 0, 1),
(353, 80, 4, 'gỗ cashmere và xạ hương ', 0, 1),
(354, 80, 6, 'Hương gỗ & đậu nành', 0, 1),
(355, 80, 9, 'hoa anh đào', 0, 1),
(356, 79, 1, 'Zen & Tea', 0, 1),
(357, 79, 2, 'Tea White', 0, 1),
(358, 79, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(359, 79, 6, 'Hương gỗ & đậu nành', 0, 1),
(360, 33, 1, 'Zen & Tea', 0, 1),
(361, 33, 2, 'Tea White', 0, 1),
(362, 81, 1, 'Zen & Tea', 0, 1),
(363, 81, 2, 'Tea White', 0, 1),
(364, 30, 1, 'Zen & Tea', 0, 1),
(365, 30, 2, 'Tea White', 0, 1),
(366, 30, 3, 'Peach Ôlong', 0, 1),
(367, 26, 1, 'Zen & Tea', 0, 1),
(368, 26, 2, 'Tea White', 0, 1),
(369, 26, 3, 'Peach Ôlong', 0, 1),
(399, 82, 1, 'Zen & Tea', 0, 1),
(400, 82, 4, 'gỗ cashmere và xạ hương ', 0, 1),
(401, 82, 11, 'French Block', 0, 1),
(409, 85, 1, 'Zen & Tea', 0, 1),
(410, 85, 2, 'Tea White', 0, 1),
(411, 67, 8, 'hoa hồng & cam bergamot', 0, 1),
(412, 67, 9, 'hoa anh đào', 0, 1),
(413, 67, 11, 'French Block', 0, 1),
(418, 86, 4, 'gỗ cashmere và xạ hương ', 0, 1),
(419, 86, 5, 'Chanh Ý , Trầm Hương', 0, 1),
(420, 86, 8, 'hoa hồng & cam bergamot', 0, 1),
(421, 86, 9, 'hoa anh đào', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scent`
--

CREATE TABLE `scent` (
  `scent_id` int(11) NOT NULL,
  `scent_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `scent`
--

INSERT INTO `scent` (`scent_id`, `scent_name`) VALUES
(1, 'Zen & Tea'),
(2, 'Tea White'),
(3, 'Peach Ôlong'),
(4, 'gỗ cashmere và xạ hương '),
(5, 'Chanh Ý , Trầm Hương'),
(6, 'Hương gỗ & đậu nành'),
(8, 'hoa hồng & cam bergamot'),
(9, 'hoa anh đào'),
(11, 'French Block'),
(13, 'Snow orange');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int(11) NOT NULL,
  `vnp_amount` varchar(255) NOT NULL,
  `vnp_bankcode` varchar(255) NOT NULL,
  `vnp_banktranno` varchar(255) NOT NULL,
  `vnp_cardtype` varchar(255) NOT NULL,
  `vnp_orderinfo` varchar(255) NOT NULL,
  `vnp_paydate` varchar(255) NOT NULL,
  `vnp_tmncode` varchar(255) NOT NULL,
  `vnp_transactionno` varchar(255) NOT NULL,
  `order_code` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vnpay`
--

INSERT INTO `vnpay` (`vnp_id`, `vnp_amount`, `vnp_bankcode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `order_code`, `payment_status`) VALUES
(1, '2125050000', 'NCB', 'VNP14266484', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240101124109', 'ZRDDOFB2', '14266484', 1840, 0),
(2, '418600000', 'NCB', 'VNP14266489', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240101125109', 'ZRDDOFB2', '14266489', 67, 0),
(3, '705000000', 'NCB', 'VNP14266662', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240101190654', 'ZRDDOFB2', '14266662', 1252, 0),
(4, '705000000', 'NCB', 'VNP14267320', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240102135541', 'ZRDDOFB2', '14267320', 3525, 0),
(5, '1288050000', 'NCB', 'VNP14267324', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240102140130', 'ZRDDOFB2', '14267324', 7573, 0),
(6, '705000000', 'NCB', 'VNP14268089', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240103081558', 'ZRDDOFB2', '14268089', 2862, 0),
(7, '712500000', 'NCB', 'VNP14269685', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240104083856', 'ZRDDOFB2', '14269685', 2172, 0),
(8, '799000000', 'NCB', 'VNP14269693', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240104084546', 'ZRDDOFB2', '14269693', 5677, 0),
(9, '900519000', 'NCB', 'VNP14269964', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240104104046', 'ZRDDOFB2', '14269964', 2979, 0),
(10, '19400000', 'NCB', 'VNP14295012', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240129162816', 'MCG9RE1Q', '14295012', 8427, 0),
(11, '19400000', 'NCB', 'VNP14295239', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240130001113', 'MCG9RE1Q', '14295239', 2570, 0),
(12, '10000000', 'NCB', 'VNP14416182', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240515220116', '7K3QNIEI', '14416182', 9227, 0),
(13, '50000000', 'NCB', 'VNP14416194', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240515221410', '7K3QNIEI', '14416194', 8348, 0),
(14, '28500000', 'NCB', 'VNP14416217', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240515222722', '7K3QNIEI', '14416217', 7610, 0),
(15, '30000000', 'NCB', 'VNP14416404', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240516083630', '7K3QNIEI', '14416404', 0, 0),
(16, '56000000', 'NCB', 'VNP14416408', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240516083859', '7K3QNIEI', '14416408', 6775, 0),
(17, '56000000', 'NCB', 'VNP14416408', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240516083859', '7K3QNIEI', '14416408', 0, 0),
(18, '52250000', 'NCB', 'VNP14422954', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240521120632', '7K3QNIEI', '14422954', 0, 0),
(19, '28500000', 'NCB', 'VNP14422958', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240521120801', '7K3QNIEI', '14422958', 9953, 0),
(20, '10000000', 'NCB', 'VNP14422961', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240521121222', '7K3QNIEI', '14422961', 7764, 0),
(21, '26600000', 'NCB', 'VNP14428943', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240525102244', '7K3QNIEI', '14428943', 0, 0),
(22, '26600000', 'NCB', 'VNP14428943', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240525102244', '7K3QNIEI', '14428943', 0, 0),
(23, '12000000', 'NCB', 'VNP14428944', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240525102425', '7K3QNIEI', '14428944', 0, 0),
(24, '15000000', 'NCB', 'VNP14428947', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240525102855', '7K3QNIEI', '14428947', 8179, 0),
(25, '20000000', 'NCB', 'VNP14428960', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20240525103637', '7K3QNIEI', '14428960', 4646, 0),
(26, '38000000', 'NCB', 'VNP14429076', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240525125348', '7K3QNIEI', '14429076', 4760, 0),
(27, '52250000', 'NCB', 'VNP14430965', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240527082026', '7K3QNIEI', '14430965', 0, 0),
(28, '65000000', 'NCB', 'VNP14430966', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240527082243', '7K3QNIEI', '14430966', 7939, 0),
(29, '8000000', 'NCB', 'VNP14431048', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240527094237', '7K3QNIEI', '14431048', 9119, 0),
(30, '8000000', 'NCB', 'VNP14432870', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240528112750', '7K3QNIEI', '14432870', 0, 0),
(31, '65000000', 'NCB', 'VNP14432873', 'ATM', 'Thanh toán đơn hàng Safia Store', '20240528112903', '7K3QNIEI', '14432873', 1394, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Chỉ mục cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`);

--
-- Chỉ mục cho bảng `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- Chỉ mục cho bảng `scent`
--
ALTER TABLE `scent`
  ADD PRIMARY KEY (`scent_id`);

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9742;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT cho bảng `scent`
--
ALTER TABLE `scent`
  MODIFY `scent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
