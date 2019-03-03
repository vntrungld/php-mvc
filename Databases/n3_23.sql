-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 04:20 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n3_23`
--

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `answers` text COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content`, `answers`, `correct_answers`, `subject_id`) VALUES
(1, 'This is a multiple answers question', '[\"Answer 1\", \"Answer 2\", \"Answer 3\"]', '[0, 2]', 1),
(3, 'This is single answer question', '[\"Answer 1\", \"Answer 2\", \"Answer 3\"]', '1', 1),
(4, 'Hệ thống nhớ của máy tính bao gồm:', '[\"Bộ nhớ trong, Bộ nhớ ngoài\",\"Cache, Bộ nhớ ngoài\" , \"Bộ nhớ ngoài, ROM\", \"Đĩa quang, Bộ nhớ trong\"]', '0', 2),
(5, 'Trong mạng máy tính, thuật ngữ Share có ý nghĩa gì?', '[\"Chia sẻ tài nguyên\",\"Nhãn hiệu của một thiết bị kết nối mạng\",\"Thực hiện lệnh in trong mạng cục bộ\",\"Một phần mềm hỗ trợ sử dụng mạng cục bộ\"]', '0', 2),
(6, 'Bộ nhớ RAM và ROM là bộ nhớ gì?', '[\"Primary memory\",\"Receive memory\",\"Secondary memory\",\"Random access memory\"]', '0', 2),
(7, 'Các thiết bị nào thông dụng nhất hiện nay dùng để cung cấp dữ liệu cho máy xử lý?', '[\"Bàn phím (Keyboard), Chuột (Mouse), Máy in (Printer)\",\"Máy quét ảnh (Scaner).\",\") Bàn phím (Keyboard), Chuột (Mouse) và Máy quét ảnh (Scaner)\",\"Máy quét ảnh (Scaner), Chuột (Mouse)\"]', '2', 2),
(8, 'Khái niệm hệ điều hành là gì ?', '[\"Cung cấp và xử lý các phần cứng và phần mềm\",\"Nghiên cứu phương pháp, kỹ thuật xử lý thông tin bằng máy tính điện tử\",\"Nghiên cứu về công nghệ phần cứng và phần mềm\",\"Là một phần mềm chạy trên máy tính, dùng để điều hành, quản lý các thiết bị phần cứng và các tài nguyên phần mềm trên máy tính\"]', '3', 2),
(9, 'Cho biết cách xóa một tập tin hay thư mục mà không di chuyển vào Recycle Bin:?', '[\"Chọn thư mục hay tâp tin cần xóa -> Delete\",\"Chọn thư mục hay tâp tin cần xóa -> Ctrl + Delete\",\"Chọn thư mục hay tâp tin cần xóa -> Alt + Delete\",\"Chọn thư mục hay tâp tin cần xóa -> Shift + Delete\"]', '3', 2),
(10, 'Danh sách các mục chọn trong thực đơn gọi là :', '[\"Menu pad\",\"Menu options\",\"Menu bar\",\"Tất cả đều sai\"]', '2', 2),
(11, 'Công dụng của phím Print Screen là gì?', '[\"In màn hình hiện hành ra máy in\",\"Không có công dụng gì khi sử dụng 1 mình nó\",\"In văn bản hiện hành ra máy in\",\"Chụp màn hình hiện hành\"]', '3', 2),
(12, 'Nếu bạn muốn làm cho cửa sổ nhỏ hơn (không kín màn hình), bạn nên sử dụng nút nào?', '[\"Maximum\",\"Minimum\",\"Restore down\",\"Close\"]', '2', 2),
(13, 'Trong soạn thảo Word, công dụng của tổ hợp phím Ctrl – S là:', ' [\"Tạo một văn bản mới\",\"Chức năng thay thế nội dung trong soạn thảo\",\"Định dạng chữ hoa\",\"Lưu nội dung tập tin văn bản vào đĩa\"]\r\n', '3', 2),
(14, 'Trong soạn thảo Word, để chèn các kí tự đặc biệt vào văn bản, ta thực hiện:', '[\"View – Symbol\",\"Format – Symbol\",\"Tools – Symbol\",\"Insert – Symbol\"]', '3', 2),
(15, 'Trong soạn thảo Word, để kết thúc 1 đoạn (Paragraph) và muốn sang 1 đoạn mới', '[\"Bấm tổ hợp phím Ctrl – Enter\",\"Bấm phím Enter\",\"Bấm tổ hợp phím Shift – Enter\",\"Word tự động, không cần bấm phím\"]', '1', 2),
(16, 'Trong soạn thảo Word, tổ hợp phím nào cho phép đưa con trỏ về cuối văn bản', '[\"Shift + End\",\"Alt + End\",\"Ctrl + End\",\"Ctrl + Alt + End\"]', '2', 2),
(17, 'Trong soạn thảo Word, sử dụng phím nóng nào để chọn tất cả văn bản', '[\"Alt + A\",\"Ctrl + A\",\"Ctrl + Shift + A\",\"Câu 1 và 2\"]', '1', 2),
(18, 'Trong soạn thảo Word, để chọn một đoạn văn bản ta thực hiện', '[\"Click 1 lần trên đoạn\", \"Click 2 lần trên đoạn\",\"Click 3 lần trên đoạn\", \"Click 4 lần trên đoạn\"]', '2', 2),
(19, 'Trong soạn thảo Word, muốn đánh dấu lựa chọn một từ, ta thực hiện', '[\"Nháy đúp chuột vào từ cần chọn\",\"Bấm tổ hợp phím Ctrl – C\",\"Nháy chuột vào từ cần chọn\",\"Bấm phím Enter\"]', '0', 2),
(20, 'Trong soạn thảo Word, muốn tách một ô trong Table thành nhiều ô, ta thực hiện', '[\"Table – Merge Cells\",\"Table – Split Cells\",\"Tools – Split Cells\",\"Table – Cells\"]', '1', 2),
(21, 'Trong soạn thảo Word, thao tác nào sau đây sẽ kích hoạt lệnh Paste (Chọn nhiều đáp án)', '[\"Tại thẻ Home, nhóm Clipboard, chọn Paste\",\"Bấm tổ hợp phím Ctrl + V\",\"Chọn vào mục trong Office Clipboar\",\"Tất cả đều đúng\"]', '[0,1]', 2),
(22, 'Phần mềm nào có thể soạn thảo văn bản với nội dung và định dạng như sau:\r\n” Công cha như núi Thái Sơn\r\nNghĩa mẹ như nước trong nguồn chảy ra.\r\nMột lòng thờ mẹ kính cha,\r\nCho tròn chữ hiếu mới là đạo con.”\r\n', '[\"Notepad\",\"Microsoft Word\",\"WordPad\"]', '[0,1,2]', 2),
(25, 'Sáng tác của Nguyễn Ái Quốc không bao gồm những thể loại nào trong các thể loại sau đây:', '[\"Văn chính luận\",\"Truyện kí\",\"Thơ ca\",\"Hò vè\"]\r\n', '3', 5),
(26, 'Tuyên ngôn độc lập của Hồ Chí Minh được viết theo thể loại nào sau đây:', '[\"Văn chính luận\",\"Truyện\",\"Kí\"]\r\n', '0', 5),
(27, 'Thể loại nào trong các thể loại văn học sau đây ra đời trong giai đoạn kháng chiến chống Pháp (1946 - 1954) ?', '[\"Truyện ngắn\",\"Kí\",Thơ\",\"Truyện dài\"]\r\n', '1', 5),
(28, 'Quê hương của Quang Dũng ở đâu?', '[\"Hà Nội\",\"Hà Tây\",\"Nam Hà\",\"Hải Dương\"]\r\n', '1', 5),
(29, 'Quang Dũng sinh năm nào ?', '[\"1915\",\"1921\",\"1922\",\"1925\"]\r\n', '1', 5),
(30, 'Đoàn quân Tây tiến được thành lập năm nào sau đây:', '[\"1946\",\"1945\",\"1947\",\"1948\"]\r\n', '2', 5),
(31, 'Cảm hứng chung của bài thơ Tây tiến là:', '[\"Bi\",\"Hùng (hào hùng)\",\"Bi hùng\"]\r\n', '2', 5),
(32, 'Bút pháp tiêu biểu của bài thơ Tây Tiến là:', '[\"Lãng mạn\",\"Hiện thực\",\"Hiện thực XHCN\",\"Trào lộng\"]\r\n', '0', 5),
(33, 'Hoạt động nghệ thuật của Nguyễn Đình Thi nổi bật nhất ở lĩnh vực nào ?', '[\"Viết văn\",\"Soạn nhạc\",\"Viết phê bình\",\"Làm thơ\"]\r\n', '3', 5),
(34, 'Bài thơ Đất nước được in ở tập thơ nào ?', '[\"Bài thơ Hắc Hải\",\"Dòng sông trong xanh\",\"Tia nắng\",\"Người chiến sỹ\"]\r\n', '3', 5),
(35, 'Trong thơ Đất nước khi nói về mùa “thu nay” chủ thể trữ tình đứng ở đâu để bộc lộ cảm xúc ?', '[\"Núi đồi chiến khu Việt Bắc\",\"Phố phường Hà Nội\",\"Miền đồi núi xa xôi\",\"Ở một nơi không xác định\"]\r\n', '0', 5),
(36, 'Hình ảnh nào sau đây có trong bài đất nước thể hiện điểm khác biệt khi cảm nhận về mùa thu của Nguyễn Đình Thi so với các những thơ khác ?', '[\"Thềm nắng lá rơi đầy\",\"xao xác hơi may\",\"Phố dài xao xác\",\"Nói cười thiết tha\"]\r\n', '2', 5),
(37, 'Chọn từ mà tác giả Nguyễn Đình Thi đã dùng để điền vào chỗ trống trong câu thơ sau:\r\nTừ những năm đau thương chiến đấu\r\nĐã….lên nét mặt quê hương', '[\"Bừng\",\"Ngời\",\"Sáng\",\"Ánh\"]\r\n', '1', 5),
(38, 'Năm sinh, năm mất của nhà thơ Chế Lan Viên là năm nào sau đây:', '[\"1920 - 1985\",\"1920 - 1989\",\"1925 - 1989\",\"1925 - 1985\"]\r\n', '1', 5),
(39, 'Quê của nhà thơ Chế Lan Viên ở:', '[\"Nghệ An\",\"Thanh Hoá\",\"Quảng Trị\",\"Bình Định\"]', '2', 5),
(40, 'Trong những tập thơ tiêu biểu của các nhà thơ mới sau đây, tập thơ nào là của Chế Lan Viên ?', '[\"Đau thương\",\"Thơ thơ\",\"Lửa thiêng\",\"Điêu tàn\"]\r\n', '3', 5),
(41, 'Tập thơ nào sau đây không phải là của Chế Lan Viên?', '[\"Những Bài thơ đánh giặc\",\"Trời mỗi ngày lại sáng\",\"Hoa ngày thường chim báo bão\",\"Ánh sáng và phù sa\"]\r\n', '1', 5),
(42, 'Hiểu như thế nào về hình ảnh “mẹ yêu thương” trong bài thơ Tiếng hát con tàu của Chế Lan Viên ?', '[\"Đó là mẹ của nhà thơ\",\"Một người mẹ Tây Bắc nào đó\",\"Đó là nhân dân, đất nước\",\"Cả ba hình ảnh trên\"]\r\n', '2', 5),
(43, 'Trong nỗi nhớ của Chế Lan Viên không có hình ảnh nào sau đây ?', '[\"Anh du kích\",\"Em liên lạc\",\"Mẹ chiến nuôi quân\",\"Em gái Tây Bắc\"]\r\n', '3', 5),
(44, '“Chùa tây Phương” trong bài thơ Các vị La Hán chùa Tây Phương của Huy Cận ở nơi nào được nói đến sau đây:', '[\"Thủ đô Hà Nội\",\"Bắc Ninh\",\"Tỉnh Hà Tây\",\"Thái Bình\"]\r\n', '2', 5),
(45, 'Điểm cực Nam phần đất liền nước ta ở vĩ độ 8o30\'N tại xã Đất Mũi, huyện Ngọc Hiển, tỉnh ...', '[\"Kiên Giang\",\"Cà Mau\",\"An Giang\",\"Bạc Liêu\"]\r\n', '1', 3),
(46, 'Điểm cực Bắc phần đất liền nước ta ở vĩ độ 23° 22\' B tại xã Lũng Cú, huyện Đồng Văn, thuộc tỉnh nào?', '[\"Lào Cai\",\"Cao Bằng\",\"Hà Giang\",\"Lạng Sơn\"]\r\n', '2', 3),
(47, 'Điểm cực Tây phần đất liền ở kinh độ 102° 09\'Đ tại xã Sín Thầu, huyện Mường Nhé, thuộc tỉnh nào ?', '[\"Lai Châu\",\"Điện Biên\",\"Sơn La\",\"Hòa Bình\"]\r\n', '1', 3),
(48, 'Điểm cực Đông phần đất liền ở kinh độ 102o24\'Đ tại xã Vạn Thạch, huyện Vạn Ninh, thuộc tỉnh nào ?', '[\"Quảng Ninh\",\"Bình Định\",\"Phú Yên\",\"Khánh Hòa\"]\r\n', '3', 3),
(49, 'Nước ta có hơn 4600 km đường biên giới trên đất liền, giáp với những nước nào?', '[\"Trung Quốc, Mianma, Lào\",\"Trung Quốc, Lào, Campuchia\",\"Trung Quốc, Lào, Thái Lan\",\"Trung Quốc, Lào, Campucia, Thái Lan\"]\r\n', '1', 3),
(50, 'Đường biên giới trên đất liền nước ta là với ...', '[\"Lào\",\"Trung Quốc\",\"Campuchia\",\"Thái Lan\",\"Phi-líp-pin\"]\r\n', '[0,1,2]', 3),
(51, 'Đường bờ biển của nước ta dài 3260 km, chạy từ', '[\"Tỉnh Quang Ninh đến tỉnh Cà Mau\",\"Tỉnh Lạng Sơn đế tỉnh Cà Mau\",\"Tỉnh lạng Sơn đến tỉnh Kiên Giang\",\"Tỉnh Quảng Ninh đến tỉnh Kiên Giang\"]\r\n', '3', 3),
(52, 'Huyện đảo Hoàng Sa trực thuộc tỉnh nào?', '[\"Tỉnh Quảng Trị\",\"Thành phố Đà Nẵng\",\"Tỉnh Khánh Hòa\",\"Tỉnh Quảng Ngãi\"]\r\n', '1', 3),
(53, 'Huyện đảo Trường Xa trực thuộc', '[\"Thành phố Đà Nẵng\",\"Tỉnh Quảng Trị\",\"Tỉnh Khánh Hòa\",\"Tỉnh Quảng Ngãi\"]\r\n', '2', 3),
(54, 'Các nước xếp theo thứ tự giảm dần về dộ dài đường biên giới trên đấ liền với nước ta là', '[\"Trung Quốc, Lào, Campuchia\",\"Trung Quốc, Campuchia, Lào\",\"Lào, Campuchia, Trung Quốc\",\"Lào, Trung Quốc, Campuchia\"]\r\n', '3', 3),
(55, 'Tỉ lệ của địa hình đồi núi và của địa hình đồng bằng so với diện tích toàn lãnh thổ của nước ta lần lượt là:', '[\"1/2 và 1/2\",\"2/3 và 1/3\",\"3/4 và 1/4\",\"4/5 và 1/5\"]\r\n', '2', 3),
(56, 'Dạng địa hình chiếm diện tích lớn nhất trên lãnh thổ nước ta là:', '[\"Đồng bằng\",\"Đồi núi thấp\",\"Núi trung bình\",\"Núi cao\"]\r\n', '1', 3),
(57, 'Độ dốc chung của địa hình nước ta là:', '[\"thấp dần từ Bắc xuống Nam\",\"thấp dần từ Tây sang Đông\",\"thấp dần từ Đông Bắc xuống Tây Nam\",\"thấp dần từ Tây Bắc xuống Đông Nam\"]\r\n', '3', 3),
(58, 'Cấu trúc địa hình của nước ta gồm hai hướng chính là', '[\"hướng bắc – nam và hướng vòng cung\",\"hướng tây bắc- đông nam và hướng vòng cung\",\"hướng đông – tây và hướng vòng cung\",\"hướng đông bắc- tây nam và hướng vòng cung\"]\r\n', '1', 3),
(59, 'Hướng tây bắc – đông nam của địa hình nước ta thể hiện rõ rệt trong các khu vực', '[\"Vùng núi Đông Bắc và vùng núi Tây Bắc\",\"Vùng núi Đông Bắc và vùng núi Trường Sơn Nam\",\"Vùng núi Tây Bắc và vùng núi Trường Sơn Bắc\",\"Vùng núi Trường Sơn Bắc và vùng núi Trường Sơn Nam\"]\r\n', '2', 3),
(60, 'Hướng vòng cung của địa hình nước ta thể hiện trong các khu vực', '[\"Vùng núi Tây Bắc và vùng núi Đông Bắc\",\"Vùng núi Trường Sơn Bắc và vùng núi Trường Sơn Nam\",\"Vùng núi Tây Bắc và vùng núi Trường Sơn Bắc\",\"Vùng núi Đông Bắc và vùng núi Trường Sơn Nam\"]\r\n', '3', 3),
(61, 'Địa hình nhiệt đới ẩm gió mùa của nước ta được biểu hiện rõ rệt ở ...', '[\"sự xâm lược mạnh mẽ tại miền đồi núi và bồi lắng phù sa tại các vùng trũng.\",\"Sự đa dạng của địa hình: đồi núi, cao nguyên, đồng bằng…\",\"Sự phân hóa rõ theo độ cao với nhiều bậc địa hình\",\"Cấu trúc địa hình gồm 2 hướng chính: tây bắc – đông nam và vòng cung\"]\r\n', '0', 3),
(62, 'Địa hình núi nước ta được chia thành bốn vùng:', '[\"Đông Bắc, Đông Nam, Tây Bắc, Tây Nam.\",\"Hoàng Liên Sơn, Trường Sơn Bắc, Trường Sơn Nam, Tây Bắc\",\"Đông Bắc, Tây Bắc, Trường Sơn Bắc, Trường Sơn Nam.\",\"Hoàng Liên Sơn, Tây Bắc, Đông Bắc, Trường Sơn\"]\r\n', '2', 3),
(63, 'Vùng núi Đông Bắc có vị trí', '[\"nằm ở phía đông của thung lũng sông Hồng\",\"nằm giữa sông Hồng và sông Cả\",\"nằm từ phía nam sông Cả tới dãy Bạch Mã\",\"nằm ở phía nam dãy Bạch Mã\"]\r\n', '0', 3),
(64, 'vùng núi Tây Bắc có vị trí', '[\"nằm ở phía đông của thung lũng sông Hồng\",\"nằm giữa sông Hồng và sông Cả\",\"nằm từ phía nam sông Cả tới dãy Bạch Mã\",\"nằm ở phía nam dãy Bạch Mã\"]\r\n', '1', 3),
(65, 'Triết học có chức năng cơ bản nào ?', '[\"Chức năng thế giới quan\",\"Chức năng phương pháp luận chung nhất\",\"Cả a và b\",\"Không có câu trả lời đúng\"]\r\n', '2', 4),
(66, 'Nguồn gốc của chủ nghĩa duy tâm?', '[\"Do hạn chế của nhận thức con người về thế giới\",\"Sự phân chia giai cấp và sự tách rời đối lập giữa lao động trí óc và lao động chân tay trong xã hội có giai cấp đối kháng\",\"Khác\",\"Cả a và b\"]\r\n', '3', 4),
(67, 'Trong xã hội có giai cấp, triết học:', '[\"Cũng có tính giai cấp.\",\"Không có tính giai cấp.\",\"Chỉ triết học phương tây mới có tính giai cấp.\",\"Tùy từng học thuyết cụ thể.\"]\r\n', '0', 4),
(68, 'Chọn luận điểm thể hiện lập trường triết học duy tâm lịch sử.', '[\"Quan hệ sản xuất mang tính chất vật chất.\",\"Yếu tố kinh tề quyết định lịch sử.\",\"Sự vận đồng, phát triển của xã hội, suy cho đến cùng là do tư tưởng của con người quyết định.\",\"Kiến trúc thượng tầng chỉ đóng vai trò thụ động trong lịch sử.\"]\r\n', '2', 4),
(69, 'Nhận định sau đây thuộc lập trường triết học nào ?\r\n“Nhân tố kinh tế là nhân tố quyết định duy nhất trong lịch sử.”\r\n', '[\"Chủ nghĩa duy vậy biện chứng.\",\"Chủ nghĩa duy tâm chủ quan.\",\"Chủ nghĩa duy tâm khách quan.\",\"Chủ nghĩa duy vật tầm thường.\"]\r\n', '3', 4),
(70, 'Phép biện chứng cổ đại là:', '[\"Biện chứng duy tâm.\",\"Biện chứng ngây thơ, chất phác.\",\"Biện chứng duy vật khoa học.\",\"Biện chứng chủ quan.\"]\r\n', '1', 4),
(71, 'Phép biện chứng của triết học Hêghen là:', '[\"Phép biện chứng duy tâm chủ quan.\",\"Phép biện chứng duy vật hiện đại.\",\"Phép biện chứng ngây thơ chất phác.\",\"Phép biện chứng duy tâm khách quan.\"]\r\n', '3', 4),
(72, 'Vận động của tự nhiên và lịch sử là sự tha hóa từ sự tự vận động của ý niệm tuyệt đối. Quan niệm trên thuộc lập trường triết học nào ?', '[\"Chủ nghĩa duy vật.\",\"Chủ nghĩa duy  tâm chủ quan.\",\"Chủ nghĩa duy tâm khách quan.\",\"Chủ nghĩa nhị nguyên triết học.\"]\r\n', '2', 4),
(73, 'Chọn cụm từ đúng để điền vào chỗ trống: “Điểm xuất phát của ……… là: sự khẳng định những sự vật và hiện tượng của tự nhiên đều bao gồm những mâu thuẫn vốn có của chúng”.', '[\"Phép siêu hình.\",\"Phép biện chứng.\",\"Phép biện chứng duy tâm.\",\"Phép biện chứng duy vật.\"]\r\n', '1', 4),
(74, 'Chọn cụm từ đúng điền vào chỗ trống: “Phép siêu hình đẩy lùi được ……… nhưng chính nó lại bị phép biện chứng hiện đại phủ định”.', '[\"Phép biện chứng duy tâm.\",\"Phép biện chứng cổ đại.\",\"Chủ nghĩa duy tâm.\",\"Chủ nghĩa duy vật.\"]\r\n', '1', 4),
(75, '“Tất cả cái gì đang vận động, đều vận động nhờ một cái khác nào đó”.\r\nNhận định này gắn liện với hệ thồng triết học nào ? Hãy chọn phương án sai.\r\n', '[\"Triết học duy vật.\",\"Triết học duy tâm.\",\"Triết học duy tâm khách quan.\",\"Triết học duy tâm chủ quan.\"]\r\n', '0', 4),
(76, 'Nên gắn ý kiến: “Nguyên nhân cao hơn, hoàn thiện hơn với kết quả của nó” với lập trường triết học nào ?', '[\"Triết học duy tâm chủ quan.\",\"Triết học duy tâm khách quan.\",\"Triết học duy vật.\",\"Khác.\"]\r\n', '1', 4),
(77, 'Hãy chọn luận điểm quan trọng để bác lại thế giới quan tôn giáo.', '[\"Nguyên nhân ngang bằng với kết quả của nó.\",\"Nguyên nhân cao hơn, hoàn thiện hơn kết quả của nó.\",\"Khác.\"]\r\n', '0', 4),
(78, 'Chọn nhận định theo quan điểm siêu hình.', '[\"Cái chung tồn tại một cách độc lập, không phụ thuộc vào cái riêng.\",\"Cái chung không tồn tại một cách thực sự, trong hiện thực chỉ có cách sự vật đơn thuần nhất là tồn tại.\",\"Cài chung chỉ tồn tại trong danh nghĩa do chủ thể đang nhận thức gắn cho sự vật như một thuật ngữ để biểu thị sự vật.\",\"Khác.\"]\r\n', '0', 4),
(79, 'Triết học có chức năng:', '[\"Thế giới khác quan.\",\"Phương pháp luận.\",\"Thế giới quan và phương pháp luận.\",\"Khác.\"]\r\n', '2', 4),
(80, 'Nội dung cơ bản của thế giới quan bao gồm:', '[\"Vũ trụ quan (triết học về giới tự nhiên).\",\"Xã hội quan (triết học về xã hội).\",\"Nhân sinh quan.\",\"Cả a, b, c\"]\r\n', '3', 4),
(81, 'Hạt nhân chủ yếu của thế giới quan là gì ?', '[\"Các quan điểm xã hội – chính trị.\",\"Các quan điểm triết học.\",\"Các quan điểm mỹ học.\",\"Cả a, b, c.\"]\r\n', '1', 4),
(82, 'Vấn đề cơ bản trong một thế giới quan cũng là vấn đề cơ bản của triết học ?', '[\"Đúng.\",\"Sai.\",\"Khác.\"]\r\n', '1', 4),
(83, 'Chọn câu trả lời đúng.', '[\"Thế giới quan là sự phản ánh của sự tồn tại vật chất và xã hội của con người dưới hình thức các quan niệm, quan điểm chung.\",\"Thế giới quan trực tiếp phụ thuộc vào trình độ hiểu biết của con người đã đạt được trong một giai đoạn lịch sử nhất định.\",\"Thế giới quan phụ thuộc vào chế độ xã hội đang thống trị.\",\"Cả a, b, c.\"]\r\n', '3', 4),
(84, 'Thế giới quan có ý nghĩa trên những phương diện nào?', '[\"Trên phương diện lý luận\",\"Trên phương diện thực tiễn\",\"Cả a và b\",\"Khác.\"]\r\n', '2', 4),
(85, 'Thế giới quan khoa học dựa trên lập trường triết học nào ?', '[\"Chủ nghĩa duy tâm chủ quan.\",\"Chủ nghĩa duy tâm khác quan\",\"Chủ nghĩa duy vật.\",\"Khác.\"]\r\n', '2', 4),
(86, 'Triết học bao gồm quan điểm chung nhất, những sự lý giải có luận chứng cho các câu hõi chung của con người, nên triết học bao gồm toàn bộ tri thức của nhân loại.Kết luận trên ứng với triết học thời kỳ nào ?', '[\"Triết học cổ đại.\",\"Triết học Phục Hưng.\",\"Triết học Trung cổ Tây Âu.\",\"Triết học Mác – Lênin.\"]\r\n', '0', 4),
(87, '“Triết học Mác – Lênin là khoa học của mọi khoa học”.', '[\"Đúng.\",\"Sai.\",\"Khác.\"]\r\n', '1', 4),
(88, 'Xác định quan điểm duy vật biện chứng trong số luận điểm sau:', '[\"Thế giới thống nhất ở tính tồn tại của nó.\",\"Thế giới thống nhất ở nguồn gốc tính thần.\",\"Thế giới thống nhất ở tính vật chất.\",\"Thế giới thống nhất ở sự suy nghĩ về nó như là cái thống nhất.\"]\r\n', '2', 4),
(89, 'Việc thừa nhận hay không thừa nhận tính thống nhất của thế giới có phải là sự khác nhau căn bản giữa chủ nghĩa duy vật và chủ nghĩa duy tâm hay không ?', '[\"Có.\",\"Không\",\"Khác\"]\r\n', '1', 4),
(90, 'Điểm chung trong quan niệm của các nhà triết học duy vật thời kỳ cổ đại về vật chất là:', '[\"Đồng nhất vật chất với vật thể cụ thể cảm tính.\",\"Đồng nhất vật chất với thuộc tính phổ biến của vật thể.\",\"Đồng nhất vật chất với nguyên tử.\",\"Đồng nhất vật chất với thực tại khách quan.\"]\r\n', '[0,1]', 4),
(91, 'Tính đúng đắn trong quan niệm về vật chất của các nhà triết học duy vật thời kỳ cổ đại là:', '[\"Xuất phát từ thế giới vật chất để khái quát quan niệm về vật chất.\",\"Xuất phát từ kinh nghiệm thực tiễn.\",\"Xuất phát từ tư duy.\",\"Ý kiến khác.\"]\r\n', '[0,1]', 4),
(92, 'Dạng năng lượng thiên nhiên đầu tiên được loài người sử dụng là:', '[\"Năng lượng mặt trời;\",\"Năng lượng gió;\",\"Năng lượng sinh khối;\",\"Năng lượng thuỷ triều;\",\"Năng lượng địa nhiệt.\"\r\n', '0', 6),
(93, 'Nguồn năng lượng được sử dụng nhiều nhất ở các nước đang phát triển là:', '[\"Năng lượng thuỷ điện;\",\"Năng lượng sinh khối;\",\"Năng lượng từ than;\",\"Năng lượng từ dầu;\",\"Năng lượng mặt trời.\"]\r\n', '1', 6),
(94, 'Nguồn năng lượng được sử dụng nhiều nhất ở các nước phát triển là:', '[\"Năng lượng thuỷ điện;\",\"Năng lượng sinh khối thực vật;\",\"Năng lượng từ than;\",\"Năng lượng từ dầu;\",\"Năng lượng khí đốt.\"]\r\n', '3', 6),
(95, 'Nguồn năng lượng nào sau đây sinh khí gây hiệu ứng nhà kính: ', '[\"Năng lượng gió;\",\"Năng lượng thuỷ điện;\",\"Năng lượng địa nhiệt;\",\"Năng lượng hạt nhân;\",\"Năng lượng sinh khối.\"]\r\n', '4', 6),
(96, 'Nguồn năng lượng nào sau đây được tái sinh từ nguồn gốc mặt trời (tìm một ý kiến sai):', '[\"Năng lượng sinh khối thực vật;\",\"Năng lượng gió;\",\"Năng lượng thuỷ triều;\",\"Năng lượng địa nhiệt;\",\"Năng lượng sóng biển.\"]\r\n', '3', 6),
(97, 'Trong mỏ than, chất khí nào gây nguy hiểm nhất:', '[\"Khí CO;\",\"Khí CO2;\",\"Khí SO2;\",\"Khí CH4;\",\"Khí NOx.\"]\r\n', '3', 6),
(98, 'Trong quá trình khai thác than yếu tố nào sau đây gây ô nhiễm môi trường đáng quan tâm nhất:', '[\"Khí SO2;\",\"Khí CH4;\",\"Bụi;\",\"Khí lưu huỳnh;\",\"Chất thải rắn.\"]\r\n', '2', 6),
(99, 'Những vấn đề gây ô nhiễm do khai thác, sử dụng dầu mỏ và khí đốt ở thềm lục địa và biển: (tìm một ý kiến sai)', '[\"Gây lún đất;\",\"Gây ô nhiễm biển;\",\"Gây ô nhiễm không khí, nước, đất;\",\"Gây ô nhiễm bụi;\",\"Gây ô nhiễm kim loại phóng xạ.\"]\r\n', '3', 6),
(100, 'Tác động tiêu cực tới môi trường do quá trình khai thác thuỷ điện: (tìm một ý kiến sai):', '[\"Động đất cưỡng bức;\",\"Thay đổi thời tiết khí hậu khu vực;\",\"Thay đổi độ mặn của nước khu vực cửa sông vên biển;\",\"Mất đất canh tác;\",\"Ngăn chặn sự phát triển của quần xã thực vật.\"]\r\n', '4', 6),
(101, 'Nhược điểm quan trọng của nguồn năng lượng hạt nhân:', '[\"Nguyên liệu hiếm;\",\"Giá thành cao;\",\"Khó đảm bảo an toàn cho môi trường trong việc quản lý chất thải hạt nhân;\",\"Qui trình vận hành phức tạp;\",\"Dễ gây sự rò rỉ chất phóng xạ.\"]\r\n', '4', 6),
(102, 'Ưu điểm của nguồn năng lượng truyền thống (năng lượng gió, thuỷ triều) là:', '[\"Giá thành thấp;\",\"Dễ khai thác;\",\"Quá trình khai thác không gây ra các tác động tiêu cực tới môi trường;\",\"Hiệu suất chuyển hoá thành điện năng cao;\",\"Không tiêu tốn nguyên liệu.\"]\r\n', '2', 6),
(103, 'Nhược điểm của nguồn năng lượng địa nhiệt là:', '[\"Vốn đầu tư và giá thành điện năng cao;\",\"Hiệu suất chuyển hoá thành điện năng thấp;\",\"Dễ gây sự cố môi trường;\",\"Nguồn nguyên liệu hiếm;\",\"Qui trình vận hành phức tạp.\"]\r\n', '0', 6),
(104, 'Trong quá trình khai thác và sử dụng, hiện nay, dạng năng lượng nào đáng quan tâm nhất:', '[\"Hoá thạch;\",\"Sinh khối;\",\"Hạt nhân;\",\"Địa nhiệt;\",\"Thuỷ điện.\"]', '0', 6),
(105, 'Nguồn năng lượng nào sau đây không sinh khí gây hiệu ứng nhà kính: ', '[\"Năng hoá thạch;\",\"Năng lượng dầu;\",\"Năng lượng địa nhiệt;\",\"Năng lượng than đá;\",\"Năng lượng sinh khối.\"]\r\n', '2', 6),
(106, 'Nguồn năng lượng nào sau đây được gọi là năng lượng tàn dư của trái đất: ', '[\"Năng lượng sinh khối thực vật;\",\"Năng lượng gió;\",\"Năng lượng thuỷ triều;\",\"Năng lượng địa nhiệt;\",\"Năng lượng sóng biển.\"]\r\n', '3', 6),
(107, 'Nguồn năng lượng nào là dạng năng lượng sạch có tiềm năng lớn nhất trên trái đất:', '[\"Năng lượng hạt nhân;\",\"Năng lượng gió;\",\"Năng lượng thuỷ triều;\",\"Năng lượng địa nhiệt;\",\"Năng lượng sóng biển.\"]\r\n', '3', 6),
(108, 'Nguồn năng lượng nào không gây ra các tác động tiêu cực đến môi trường trong quá trình khai thác:', '[\"Năng lượng hạt nhân;\",\"Năng lượng gió;\",\"Năng lượng thuỷ điện;\",\"Năng lượng sinh khối;\",\"Năng lượng khí đốt.\"]\r\n', '1', 6),
(109, 'Các giải pháp năng lượng hiện nay hướng tới những mục tiêu cơ bản sau (tìm một ý kiến sai):', '[\"Duy trì lâu dài nguồn năng lượng của trái đất;\",\"Hạn chế tối đa đến các tác động tiêu cực trong khai thác;\",\"Sử dụng hợp lý các nguồn năng lượng cho phát triển kinh tế, khoa học kỹ thuật;\",\"Không tạo ra khí gây hiệu ứng nhà kính;\",\"Giảm giá thành trong sản xuất năng lượng.\"]\r\n', '4', 6),
(110, 'Nguồn năng lượng chủ yếu sử dụng trong công nghiệp, sinh hoạt là:', '[\"Điện;\",\"Than;\",\"Dầu mỏ;\",\"Khí đốt;\",\"Sinh khối.\"]\r\n', '0', 6),
(111, 'Ở nông thôn, những người trong nhà chịu ảnh hưởng nhiều nhất của khói bụi bếp là:', '[\"Trẻ nhỏ;\",\"người già;\",\"Phụ nữ;\",\"Người lớn;\",\"Trẻ sơ sinh.\"]\r\n', '2', 6),
(113, 'Hello', '[\"1\",\"2\",\"3\",\"4\"]', '[1,2]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_code` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `student_code`, `birthday`, `user_id`) VALUES
(2, 'GiÃ y Adidas Nam', 'a12345', '2019-02-01', 15);

-- --------------------------------------------------------

--
-- Table structure for table `student_answer`
--

CREATE TABLE `student_answer` (
  `student_exam_id` int(10) UNSIGNED NOT NULL,
  `exam_question_id` int(10) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`) VALUES
(1, 'Math', 'This is math subject'),
(2, 'Computer Siences', 'This is a Computer subject.'),
(3, 'Geography', 'This subject is all about Geography'),
(4, 'Philosophy', '- This subject is all about philosophy'),
(5, 'Literature', 'This subject is all about Literature'),
(6, 'Environmental science', 'This subject is all about Environmental Science');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`) VALUES
(1, 'student1', 'secret', 0),
(2, 'teacher1', 'secret', 1),
(15, 'hoanganh111', 'Quynhduong1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_id` (`exam_id`,`question_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `student_answer`
--
ALTER TABLE `student_answer`
  ADD PRIMARY KEY (`student_exam_id`,`exam_question_id`) USING BTREE,
  ADD KEY `exam_question_id` (`exam_question_id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `exam_id` (`exam_id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`student_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD CONSTRAINT `exam_question_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_question_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_answer`
--
ALTER TABLE `student_answer`
  ADD CONSTRAINT `student_answer_ibfk_1` FOREIGN KEY (`student_exam_id`) REFERENCES `student_exam` (`id`),
  ADD CONSTRAINT `student_answer_ibfk_2` FOREIGN KEY (`exam_question_id`) REFERENCES `exam_question` (`id`);

--
-- Constraints for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD CONSTRAINT `student_exam_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_exam_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`);

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
