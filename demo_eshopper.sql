-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2025 lúc 04:58 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_eshopper`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advertise`
--

CREATE TABLE `advertise` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `advertise`
--

INSERT INTO `advertise` (`id`, `active`, `brand`, `name`, `picture`) VALUES
(3, b'1', 'FRUITY PEBBLES', 'fruitypebbles', 'fruitypebbles_picture_file1703584391774.jpg'),
(4, b'1', 'DATAXCHANGE', 'dataxchange', 'dataxchange_picture_file1703584411951.jpg'),
(5, b'1', 'BluePhlare', 'bluephlare', 'bluephlare_picture_file1703584438275.jpg'),
(6, b'1', 'FUZION SOURCE', 'fuzionsource', 'fuzionsource_picture_file1703584458404.jpg'),
(7, b'1', 'TechCom', 'techcom', 'techcom_picture_file1703584468607.jpg'),
(8, b'1', 'ATOMIZED MEDIA', 'atomizedmedia', 'atomizedmedia_picture_file1703584484856.jpg'),
(9, b'1', 'INTERNATIONAL HEART', 'internationalheart', 'internationalheart_picture_file1703584503804.jpg'),
(10, b'1', 'WORKAPPLY', 'workapply', 'workapply_picture_file1703584517072.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `story` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`id`, `name`, `story`) VALUES
(2, 'Hồ Anh Thái', 'Hồ Anh Thái có lẽ là một trong những tác giả có sức viết dồi dào nhất nền văn học đương đại Việt Nam với tổng cộng 33 cuốn sách. “Hiện tượng văn chương của thế hệ văn nhân thời hậu chiến sau 1975” Hồ Anh Thái bắt đầu sự nghiệp viết lách từ năm 1985, bên cạnh một sự nghiệp khác là nhà ngoại giao và giáo sư văn hóa. Kiến thức và vốn sống phong phú là yếu tố thúc đẩy tính thể nghiệm trong những tác phẩm của Hồ Anh Thái với ngôn từ và thể loại, cùng với những chủ đề đa dạng: từ những cuộc sống trong dòng chảy thị thành thời hiện đại trong những tác phẩm như \"Cõi người rung chuông tận thế\", \"Tự sự 265 ngày\", \"Bốn lối vào nhà cười\", \"Mười lẻ một đêm\", \"SBC là săn bắt chuột\"… cho đến những truyện ngắn hài hước, thú vị lấy bối cảnh Ấn Độ như \"Tiếng thở dài qua rừng kim tước\", \"Cuộc đổi chác\" hay cuốn tiểu thuyết \"Đức Phật, nàng Savitri và tôi\".'),
(3, 'Nguyễn Vĩnh Nguyên', 'Nhà văn người Pháp Patrick Modiano, chủ nhân của giải Nobel Văn chương 2014 là một trong những tác giả gợi nhiều cảm hứng tới Nguyễn Vĩnh Nguyên, cùng với Italo Calvino của tác phẩm “Những thành phố vô hình”. Patrick Modiano thường viết về Paris, còn Nguyễn Vĩnh Nguyên, anh có một hoài cảm mãnh liệt với Đà Lạt nói riêng và những đô thị buồn nói chung. Những tác phẩm của Nguyễn Vĩnh Nguyên, dù là tản văn như “Với Đà Lạt ai cũng là lữ khách” hay khảo cứu “Đà Lạt một thời hương xa”, “Đà Lạt bên dưới sương mù” hay cuốn tiểu thuyết “Kí ức của kí ức”… đều mang máng chất hoài niệm với những tầng kí ức sâu thẳm và những nét văn hóa rất đẹp gắn với thành phố tác giả rất gắn bó. Ngoài Đà Lạt, Nguyễn Vĩnh Nguyên cũng đã dành tặng những người yêu mến một Sài Gòn xưa bằng cuốn khảo cứu “Kí ức một ảnh viện Sài Gòn” (2017).'),
(4, 'Nguyễn Trương Quý', 'Dấu ấn của Hà Nội ghi đậm trong những cuốn sách của nhà văn Nguyễn Trương Quý như“Tự nhiên người Hà Nội”, “Ăn phở rất khó thấy ngon”, “Hà Nội là Hà Nội”, “Xe máy tiếu ngạo”, “Còn ai hát về Hà Nội”, “Dưới cột đèn rót một ấm trà”, “Mỗi góc phố một người đang sống”. Nguyễn Trương Quý viết về Hà Nội trong nếp sống, nếp nghĩ, những thói quen, những góc đường, những món ăn… như thể đang thủ thỉ chuyện trò cho những vị khách phương xa đến. Nguyễn Trương Quý nói anh đã dành rất nhiều thời gian để quan sát thành phố, quan sát từng chuyển động đơn lẻ và những biến đổi lớn lao lên không gian, thời gian và con người Hà Nội. Cái nhìn tinh tế ấy được tác giả thuật lại bằng giọng văn đơn giản, lúc hoài niệm, khi mỉa mai, lúc vui tươi sống động, khi chiêm nghiệm bâng khuâng.'),
(5, 'Đỗ Bích Thúy', 'Dù là người Kinh, nhưng Đỗ Bích Thúy hiểu và viết về Hà Giang, người Mông và tất cả những gì bí ẩn của những dân tộc vùng cao phía Bắc đẹp và thuyết phục đến độ nhiều người nghĩ Đỗ Bích Thúy là một nhà văn Mông. \nTuyển tập truyện ngắn “Tiếng bờ môi sau bờ rào đá” (truyện ngắn cùng tên được đạo diễn Ngô Quang Hải chuyển thể thành bộ phim “Chuyện của Pao”) là minh chứng cho điều này. Đỗ Bích Thúy là một hiện tượng văn chương lạ, với chất liệu miền núi thấm sâu vào từng trang viết. Cách người Mông, Dao… nói chuyện như thế nào, Đỗ Bích Thúy viết về họ như vậy. Với nhiều người đọc, Hà Giang là một vùng đất xa xôi và bí ẩn, nhưng cũng lại ở chính vùng đất ấy, con người đang ngày ngày thỏa hiệp với thiên nhiên hùng vĩ nhưng khắc nghiệt, họ đang sống, yêu, lao động, ca hát, và hi sinh hết mình. Bên cạnh truyện ngắn, Đỗ Bích Thúy viết nhiều tản văn về cả đề tài miền núi và đô thị, cùng với hai cuốn tiểu thuyết “Cửa hiệu giặt là” về một Hà Nội đương đại nhiễu nhương nhưng đầy tình người; và “Lặng yên dưới vực sâu” – đã được chuyển thể thành phim truyền hình.'),
(6, 'Nguyễn Mai Chi', 'Mai Chi là một tác giả trẻ, được biết đến từ những dòng viết trên trang blog cá nhân “Life through her fisheye lens” trước khi viết cuốn tản văn đầu tay “5 múi giờ, 10 tiếng bay và một cái khép mi”, rồi đến tuyển tập truyện ngắn “Hapocrates và bông hồng phía trên thành phố”. Mai Chi là một người kể chuyện có hồn, nhạy cảm và riêng tư, vì thế những trang viết của cô gắn với rất nhiều những hỉ, nộ, ái, ố mà chính những người trẻ như cô đang trải qua từng ngày. Mai Chi và những cuốn sách của cô có lẽ chính là “phương thức văn chương” hợp lý nhất để tiếp cận đời sống tinh thần của thế hệ millennial: bằng âm nhạc, phim ảnh, những chuyến đi, những yêu đương, bằng khoảng cách thế hệ trong gia đình, bằng cuộc sống ở một xứ sở khác… Cuốn sách mới nhất của Mai Chi cũng là một tập tản văn “Thế giới qua đôi mắt cá của cô ấy.”'),
(10, 'Nguyễn Nhật Ánh', 'Năm 2015 có thể coi là một năm “đại thắng” đối với nhà văn Nguyễn Nhật Anh. “Tôi thấy hoa vàng trên cỏ xanh” thu nhận thành công trên mức tưởng tượng khi được chuyển thể thành phim nhựa giới thiệu tới khán giả trong và ngoài nước. Bên cạnh sự phủ sóng mạnh mẽ của “Tôi thấy hoa vàng trên cỏ xanh”, những cuốn sách khác của nhà văn Nguyễn Nhật Ánh như: “Bảy bước tới mùa hè”, “Cô gái đến từ hôm qua”… cũng nhanh chóng trở thành “best-seller” ngay từ khi mới ra mắt.\nThành công của những tác phẩm do Nguyễn Nhật Ánh sáng tác đến từ sự dung dị, đời thường, gắn liền với những kỷ niệm tươi đẹp của tuổi thơ. Mỗi cuốn sách như một bức tranh mở ra trước mắt người đọc những khung cảnh chân phương, đầy ắp tiếng cười.'),
(11, 'Trang Hạ', 'Được biết đến trong vai trò là dịch giả của “Xin lỗi, em chỉ là con đĩ”, Trang Hạ được đông đảo bạn trẻ đón nhận với lối viết phóng khoáng, giọng điệu đanh thép và mạnh mẽ của mình.\n“Đàn bà 30” hay “Tình nhân không bao giờ đòi cưới” là những tác phẩm bán chạy của Trang Hạ. Ngoài những cuốn sách “hot” trên thị trường, Trang Hạ còn gây sốc bởi những phát ngôn để đời, chủ yếu là mắng nhiếc đàn ông, phơi bày những thói hư tật xấu của đấng mày râu. Bởi lẽ đó, thời gian vừa qua, Trang Hạ cho ra mắt cuốn sách khẳng định “Đàn ông không đọc Trang Hạ”.'),
(12, 'Nguyễn Phong Việt', '“Đi qua thương nhớ”, “Sinh ra là để cô đơn” hay mới đây nhất là “Sống một cuộc đời bình thường” đều là những cuốn sách được yêu mến của Nguyễn Phong Việt.\nĐược mệnh danh là nhà thơ “ăn khách” nhất, Nguyễn Phong Việt chia sẻ: “Tôi may mắn khi mình có rất nhiều cảm xúc. Ngay từ tập thơ đầu, tôi là người làm thơ không câu nệ câu chữ. Mình nghĩ câu đó cần 20 từ thì viết 20 từ chứ không phải vì để cho ngắn gọn, cho người đọc dễ chịu thì viết ngắn hơn. Mình viết mình cảm nhận được trước đã, rồi độc giả mới hiểu. Sau này, tôi có sự thỏa hiệp nho nhỏ, thay đổi vài từ để cảm xúc của câu chữ không bị bóp nghẹt trong đau đớn”.'),
(13, 'Anh Khang', 'Sớm định hình phong cách riêng trong dòng văn học trẻ sôi động, Anh Khang - tác giả sinh năm 1987 được độc giả trẻ đón nhận qua những tựa sách “hot” như “Ngày trôi về phía cũ”, “Đường hai ngả người thương thành lạ” hay “Buồn làm sao buông”.\nVăn của Anh Khang không tìm đến sự nổi loạn hay phá cách trong con chữ mà tạo ra dấu ấn riêng nhờ sự nhạy cảm trong lối suy nghĩ thấu đáo, truyền tải đúng tâm tình của người trẻ hiện đại. Anh Khang là một trong những tác giả trẻ sở hữu số lượng fans đông đảo nhất hiện nay trên mạng xã hội cũng như ngoài đời thực.'),
(14, 'Sơn Paris', 'Nguyễn Ngọc Sơn (Sơn Paris) là tác giả 9x nhỏ tuổi nhất hiện nay trong làng sách Việt đã xuất bản được 2 cuốn sách ăn khách mang tên: “Trót lỡ chạm môi nhau”, “Muốn khóc thật to”. Từng là thủ khoa Học viện Ngoại giao và gặt hái được nhiều thành tích đáng nể, nhưng Sơn Paris lựa chọn viết sách là con đường lớn nhất cho mình.\nChàng tác giả sinh năm 1994 đã phải vượt qua nhiều dư luận trên mạng xã hội để có được vị trí như bây giờ. Sách của Sơn Paris luôn nằm trong những tác phẩm được đón đợi nhất, đặc biệt phù hợp với lứa tuổi học sinh và độc giả nữ.'),
(15, 'Nguyễn Ngọc Thạch', 'Chuyên viết về đề tài đồng tính và những góc khuất trong thế giới thứ ba, cái tên Nguyễn Ngọc Thạch gần đây được nhắc tới nhiều hơn khi trở thành một người bình luận phim \"cá tính\" trên mạng xã hội Facebook. Những bài bình luận của anh thu hút hàng ngàn lượt \"like\" và bình luận. Đồng thời, việc tham gia talkshow “Những kẻ lắm lời” cũng mang về ít nhiều sự “nổi tiếng” cho nhà văn đồng tính này.\nNhững tác phẩm “Đời Callboy”, hay “Chênh vênh 25” của nhà văn sinh 28 tuổi này được bạn đọc nhiệt tình đón nhận. Việc tạo dựng một phong cách riêng cho mình có vẻ đã đem đến cho Nguyễn Ngọc Thạch những thành công nhất định.'),
(16, 'Đỗ Nhật Nam', 'Danh sách những tác giả có sức ảnh hưởng lớn trong năm qua không thể không nhắc tới thần đồng Đỗ Nhật Nam. “Bố mẹ đã cưa đổ tớ” là cuốn sách thứ 3 sau “Những con chữ biết hát” và “Tớ đã học tiếng Anh như thế nào”. Ở tuổi 13, với những thành tích mà Nhật Nam làm được, người ta không chỉ dành cho em một tràng pháo tay cổ vũ, mà đó là sự thán phục, ngưỡng mộ.\nMặc dù không xuất hiện trên các chương trình truyền hình nhiều như trước đây vì Nhật Nam đã lên đường xuất ngoại nhưng những thông tin, bài viết của thần đồng Việt Nam vẫn được chia sẻ rộng rãi.'),
(17, 'Hamlet Trương', 'Hamlet Trương tên thật là Lê Văn Trương, sinh ngày 22/09/1988. Anh hoạt động trong nhiều lĩnh vực: ca sĩ, nhạc sĩ, nhà văn, MC cho Radio và Talk show trên truyền hình.\nMặc dù phủ sóng ở nhiều lĩnh vực khác nhau nhưng cái tên Hamlet Trương khá lu mờ trong showbiz Việt, cho tới khi bén duyên với nghề viết, anh mới được biết tới rộng rãi và sở hữu một lượng độc giả nhất nhì làng sách.'),
(18, 'Iris Cao', '“Người yêu cũ có người yêu mới” là tên gọi cuốn sách thứ 2 của Iris Cao sau “Thương nhau để đó”. Sách thuộc thể lọai tản văn, lấy cảm hứng từ những mối quan hệ say mê và day dứt của những người trẻ đang yêu. Và đây cũng là cuốn sách giúp Iris Cao trở thành một trong những tác giả trẻ gây tiếng vang nhất trong thời gian qua.\nMới đây, sự kết hợp của nữ tác giả với Hamlet Trương được độc giả đặc biệt mong đợi. “Mỉm cười cho qua” cũng nhanh chóng leo lên các bảng xếp hạng sách bán chạy trong năm.'),
(19, 'Ernest Miller Hemingway', 'Ernest Hemingway (1899 - 1961) là nhà văn, nhà báo người Mỹ. Ông từng tham gia chiến đấu trong Chiến tranh thế giới lần thứ I, sau đó được biết đến qua \"Thế hệ đã mất\". Ông nhận được giải thưởng báo chí Pulitzer năm 1953 và giải Nobel văn học năm 1954.\nHemingway để lại ấn tượng sâu sắc đối với bạn đọc qua nguyên lý tảng băng trôi. Văn phong của ông được mô tả bởi sự kiệm lời nhưng có nhiều tầng ý nghĩa sâu sắc, cần có sự thẩm thấu qua trải nghiệm cuộc sống. Nhiều tác phẩm của ông hiện nay được coi là những kinh điển của nền văn học Mỹ như “Ông già và biển cả”, “Chuông nguyện hồn ai”…'),
(20, 'Franz Kafka', 'Nhắc đến Franz Kafka, chúng ta nhớ tới sự dị biệt trong phong cách sáng tác rất đặc trưng của ông. Tác giả sinh năm 1883 trong một gia đình Do Thái nói tiếng Đức ở Praha, Cộng hòa Séc, trước đây thuộc đế quốc Áo Hung. Từ nhỏ, Kafka đã có niềm khao khát mãnh liệt với văn chương nhưng điều đó là bất khả trong mắt của cha ông, người kỳ vọng con trai trở thành trụ cột vững chãi trong gia đình.\nTác phẩm của Kafka đều mang một đặc trưng: nói về một phần u tối trong dãy “cảm xúc” của con người. Chúng đều được bao trùm trong bầu không khí, ấn tượng, cảm giác rất riêng biệt, xuất hiện với tần suất lớn như một nỗi ám ảnh khôn nguôi.\nCác sáng tác của Kafka không phải là thứ văn sinh ra để đọc vội, chớp nhoáng. Sự kết hợp tuyệt vời của chủ nghĩa hiện sinh cùng dòng văn học phi lý đã ẩn dấu trong các tác phẩm này nhiều ý tưởng ngầm, ẩn dụ, không được phơi bày trên trang giấy.'),
(21, 'J.R.R.Tolkien', 'J.R.R.Tolkien sinh năm 1892 và mất vào năm 1973, là một trong những tác giả nổi tiếng trong dòng văn học siêu thực. 2 tác phẩm được biết tới nhiều nhất của ông là “anh chàng Hobbit” và “Chúa tể của những chiếc nhẫn”.\nNăm 1896, Tolkien theo mẹ dời đến Sarehole, rồi lại đến một ngôi làng ở WorcesterShire, rồi trở về Birmingham. Tolkien thích thú khám phá chiếc cối xay bằng nước ở Sarehole, rừng Moseley Bog và các ngọn đồi Clent, Lickey và Malvern, những nơi sau này tạo cảm hứng cho ông sáng tạo nên khung cảnh của \"Anh chàng Hobbit\" và \"Chúa Nhẫn\" cùng với thị trấn Worcestershire và các ngôi làng Bromsgrove, làng Alcester, và làng Alvechurch.\nThời gian ở tu viện Birmingham,Tolkien sống dưới bóng của tòa tháp Perrott và tòa tháp Edgbaston, những nơi có lẽ đã ảnh hưởng nhiều đến hình ảnh những tòa tháp u tối trong các tác phẩm của ông.'),
(22, 'Gabriel Garcia Marquez', 'Gabriel Garcia Marquez (sinh năm 1927) tại Aracataca, một thị trấn bên bờ biển Caribê, thuộc miền Bắc Columbia, ông là nhà văn nổi tiếng người Colombia. Ngoài viết văn ông còn là một nhà báo và một nhà hoạt động chính trị.\nTừ đầu năm 1965, ông bắt đầu viết tác phẩm quan trọng nhất của đời mình: “Trăm năm cô đơn”. Sau 18 tháng đóng cửa miệt mài viết, tác phẩm đã hoàn thành cũng là lúc tình trạng tài chính gia đình ông vô cùng khó khăn. Năm 1967, cuốn tiểu thuyết này được xuất bản và ngay lập tức dành được những thành công vang dội, được cả giới phê bình và độc giả mến mộ.\nNăm 1982, ông nhận giải Nobel văn học cho những cống hiến của mình. Sau đó ông vẫn tiếp tục sáng tác và có nhiều tác phẩm giá trị, ngày càng khẳng định được tên tuổi trên văn đàn thế giới.'),
(23, 'Harper Lee', 'Harper Lee sinh năm 1926 và lớn lên ở Monroeville, bà thích viết truyện ngắn và các tác phẩm khác xoay quanh vấn đề ít được bàn luận ở trường học thời bấy giờ: kỳ thị chủng tộc.\nHarper Lee bỏ ra hai năm rưỡi để viết tiểu thuyết “Giết Con Chim Nhại”. Cuốn sách được xuất bản ngày 11 tháng 7 năm 1960. Lúc đầu được đặt tên là Atticus nhưng sau đó đã đổi lại để cho thấy một câu chuyện vượt qua khuôn khổ chân dung về một nhân vật.'),
(24, 'Vũ Trọng Phụng', 'Được xem là cây viết khôi hài nổi bật của dòng văn học trào phúng nổi tiếng ở Việt Nam thời bấy giờ, Vũ Trọng Phụng là một trong các nhà văn nổi tiếng Việt Nam sử dụng văn học hiện thực phê phán để kể chuyện cười cho thiên hạ, qua đó vạch trần xã hội thối nát và mang lại những tiếng cười sâu cay cho độc giả đại chúng.\nCái hay của Vũ Trọng Phụng khi ông viết văn, ấy là tính chất hiện thực được thể hiện ở một mức độ mới lạ hơn. Ở thời điểm cả nước Việt Nam đang sục sôi trước sự dẫn dắt của Đảng Cộng Sản, các nhà văn nổi tiếng Việt Nam đương thời đều đem cái hiện thực được lấy từ làng quê, những con người bần nông chân chất đang chịu áp bức. Đó là hiện thực được đông đảo nhà văn chọn lựa, ấy thế Vũ Trọng Phụng ở hướng ngược lại.'),
(25, 'Thạch Lam', 'Đầu thế kỷ XX, các nhà văn nổi tiếng Việt Nam thường đi theo hai dòng văn học chuyên biệt: văn học lãng mạn và văn học hiện thực. Và Thạch Lam chính là một cái tên nổi bật cho trào lưu văn học lãng mạn ở Việt Nam. Như xu hướng chung của văn học lãng mạn, các tác giả nổi tiếng Việt Nam sẽ đi sâu vào nội tâm của con người, khai thác khát vọng sống cùng những phức cảm tâm lý của nhân vật. Với Thạch Lam, đề tài cũng tương tự như thế.\nCuộc sống cơ cực từ bé đã cho Thạch Lam một nguồn cảm hứng dồi dào để viết sách. Những chủ đề của ông, lấy hiện thực làm đề tài, nhưng lại dùng để gợi tả lên tâm hồn cao quý của con người. Ở đó là sự hy sinh, tần tảo, những khổ đau mà con người phải chịu đựng, trong hoàn cảnh xã hội đang thay đổi liên tục.'),
(26, 'Nam Cao', 'Với đặc trưng là văn học hiện thực, Nam Cao là một trong các nhà văn nổi tiếng Việt Nam khắc họa hiện thực xã hội xảy ra ở các làng quê, nơi nông dân nghèo chịu áp bức từ địa chủ. Khác với Vũ Trọng Phụng với lối văn chương hiện thực thuật lại một xã hội đang chuyển biến, Nam Cao dùng hiện thực tàn nhẫn để đánh thức tính thiện trong mỗi con người. Các nhân vật của ông, dù bị chèn ép áp bức, họ vẫn khao khát được sống lương thiện, được làm một người đàng hoàng tử tế.'),
(27, 'Nguyễn Thị Hoàng', 'Một trong các nhà văn nổi tiếng Việt Nam bị ảnh hưởng bởi sự chuyển dịch của lối tư duy tiểu thuyết, Nguyễn Thị Hoàng là một trong những nhà văn nữ Việt Nam dám đi sâu và khai thác nội tâm nhân vật một cách thấu đáo. Trong xu thế chuyển dịch và phân tách văn học hai miền Nam-Bắc giai đoạn 1954-1975, Nguyễn Thị Hoàng đã tạo nên những áng văn chương mang đậm tính hiện sinh cá nhân, một điều hơi ngược lại với xu thế cộng đồng vốn có ở Việt Nam, vẫn đang diễn ra ở bối cảnh văn học miền Bắc.'),
(28, 'Nguyễn Huy Thiệp', 'Được mệnh danh là người đặt nền móng cho tư duy tiểu thuyết, Nguyễn Huy Thiệp là một trong các nhà văn nổi tiếng Việt Nam đại diện cho giai đoạn văn học mới sau 1975. Văn xuôi của Nguyễn Huy Thiệp thật ngắn gọn, không có mỹ từ mà cũng chẳng dùng những chủ đề phức tạp. Đó là một xã hội đổi mới, một sự chuyển biến mới, giữa tàn cuộc chiến tranh và một cuộc sống phát triển hội nhập phát triển.'),
(29, 'Nguyễn Minh Châu', 'Sau năm 1975, hiện thực đổi khác nên cách các nhà văn Việt Nam viết văn dường như cũng phải thay đổi. Và người đã tạo ra sự thay đổi to lớn nhất, bao quát được nhiều tầng vấn đề khác nhau, chính là Nguyễn Minh Châu.\nTrong các tác phẩm của mình, nhiều vấn đề xuất hiện đan xen chồng chéo lên nhau, tạo ra nhiều triết lý đáng suy ngẫm khi người ta đọc tác phẩm của ông. Ông khéo léo dẫn dắt người đọc đi từ bề nổi vấn đề, xuống những tầng nhận thức khác nhau, những sự đấu tranh nội tâm, những sự việc đáng tiếc đã xảy ra bên dưới vấn đề. Nhưng qua đó, ta thấy con người đối diện với nỗi đau, có người sám hối, có người ăn năn ân hận, nhưng dù sao đi nữa, việc thừa nhận cái ác tồn tại trong mình đã là một thành công lớn của ông.'),
(30, 'Nguyễn Ngọc Tư', 'Là một trong các nhà văn nổi tiếng Việt Nam được thừa hưởng thành quả của lối văn học thế sự đề tài cuộc sống, Nguyễn Ngọc Tư đã viết và xuất bản rất nhiều cuốn sách, lấy trọng điểm là cuộc đời của những con người vô danh, nhưng cũng đi tìm những mục đích sống như bao người khác. Bước sang giai đoạn năm 2000, văn xuôi Việt Nam đã có những chuyển biến mạnh mẽ, tính cá nhân được thể hiện hết mực, những nỗi niềm về đời tư cá nhân và những đau khổ của cuộc sống riêng được nhiều nhà văn trẻ tận dụng. Ấy thế mà, Nguyễn Ngọc Tư và các nhà văn nổi tiếng Việt Nam cùng thời lại có thể tìm thấy điểm chung giữa những đau khổ riêng tư ấy.'),
(31, 'William Shakespear', 'William Shakespeare được xem là một trong những nhà văn vĩ đại nhất mọi thời đại. Sinh ra ở Stratford-upon-Avon, Anh vào năm 1564, ông đã viết thành công nhiều vở kịch nổi tiếng và được yêu thích trên toàn thế giới, bao gồm \"Hamlet\", \"Romeo và Juliet\", \"Macbeth\" và nhiều tác phẩm khác. Tuy nhiên, cuộc đời của Shakespeare không chỉ toàn những vinh quang mà còn đầy thử thách.\nVới những câu nói đầy tính biểu tượng và sâu sắc, Shakespeare đã đưa ra những thông điệp về tình yêu, cuộc sống và sự tồn tại. Những tác phẩm của ông không chỉ đơn thuần là vở kịch, mà còn là một tác phẩm nghệ thuật đầy tính chân thật và sâu sắc.'),
(32, 'Charles Dickens', 'Cuộc đời của Dickens không hề dễ dàng, ông xuất thân từ một gia đình nghèo, và phải bắt đầu làm việc từ rất sớm để kiếm sống, tuy nhiên điều đó không làm ông bỏ cuộc. Dickens được biết đến với khả năng tạo ra các nhân vật đầy tính cách. Tác phẩm của ông thường miêu tả cuộc sống của những người nghèo khổ và bị đói kém. Những nhân vật của ông thường có tính cách đa dạng và sâu sắc, được miêu tả một cách chân thật. Ngoài ra, Dickens cũng là một nhà văn có tầm nhìn xa. Ông thường miêu tả các vấn đề xã hội và quan tâm đến những vấn đề của thời đại. Tác phẩm của ông thường mang một thông điệp về sự bất công xã hội và những vấn đề khác như đói kém, tàn tật và nghèo đói. Dickens cũng là một nhà văn có tài sáng tạo và sử dụng ngôn ngữ một cách tinh tế. Ông sử dụng các câu từ một cách khéo léo để tạo ra một cảm giác chân thật trong người đọc. Với những câu nói mang tính biểu tượng và sâu sắc, Dickens đã đưa ra những thông điệp về tình yêu, cuộc sống và sự sống còn.'),
(33, 'George Orwell', 'George Orwell là một nhà văn vĩ đại của thế kỷ 20, sinh ra ở Anh vào năm 1903, Orwell đã viết nhiều tác phẩm văn học kinh điển, bao gồm \"Animal Farm\" và \"1984.\" Tác phẩm của ông được biết đến với khả năng miêu tả và phân tích xã hội một cách sâu sắc.\nTác phẩm của ông đã trở thành nguồn cảm hứng cho nhiều tác giả, nhà văn sau này, và vẫn được đón nhận rộng rãi trên toàn thế giới. Những thông điệp về tự do và sự bất công xã hội của ông đã cảm hóa hàng triệu người trên toàn thế giới. Với tài năng và sự sáng tạo của mình, Orwell đã tạo ra những thành tựu to lớn cho nền văn học của nhân loại.'),
(34, 'J.K. Rowling', 'J.K. Rowling là một nhà văn nổi tiếng trên toàn thế giới, với tác phẩm nổi tiếng nhất là bộ tiểu thuyết \"Harry Potter\". Bộ sách này đã trở thành một hiện tượng văn học và đã bán được hàng triệu bản trên toàn thế giới.\nJ.K. Rowling là một nhà văn tài ba, cô đã tạo ra một thế giới ma thuật đầy phép màu với bộ tiểu thuyết \"Harry Potter\". Bộ sách này đã trở thành một hiện tượng và đã ảnh hưởng đến văn học và văn hóa trên toàn thế giới.'),
(35, 'Virginia Woolf', 'Virginia Woolf là một trong những nhà văn nổi tiếng nhất của thế kỷ 20. Bà được biết đến với nhiều tác phẩm văn học nổi tiếng, như \"Mrs. Dalloway\", \"To the Lighthouse\" và \"Orlando\". Woolf được coi là một trong những nhà văn quan trọng nhất của trường phái hiện đại và đã có ảnh hưởng lớn đến văn học thế giới.\nTuy nhiên, cuộc đời của Woolf cũng đầy những nỗi đau và khó khăn. Bà đã trải qua nhiều chuyện bất trắc trong cuộc sống và đã phải đối mặt với các vấn đề về tâm lý. Woolf đã tự sát vào năm 1941 khi cô đang trong một thời kỳ khó khăn. Virginia Woolf chính là một tượng đài văn học được đánh giá cao nhất trong lịch sử của loài người,'),
(36, 'Ernest Hemingway', 'Ernest Hemingway là một trong những nhà văn nổi tiếng nhất của thế kỷ 20. Ông được biết đến với nhiều tác phẩm văn học nổi tiếng, như \"The Old Man and the Sea\", \"For Whom the Bell Tolls\" và \"A Farewell to Arms\". Hemingway được coi là một trong những nhà văn quan trọng nhất của thế kỷ 20 và đã có ảnh hưởng lớn đến văn học thế giới.\nErnest Hemingway là một nhà văn, với những tác phẩm văn học đặc sắc đã chinh phục không ít độc giả trên khắp thế giới. Những truyện ngắn và tiểu thuyết của Hemingway thường được xem là khởi nguồn của trào lưu \"văn học trực quan\", vốn khai thác sự chính xác và sự gần gũi trong việc miêu tả cuộc sống, tinh thần và tình cảm của con người.'),
(37, 'William Faulkner', 'William Faulkner là một trong những nhà văn lớn nhất của thế kỷ 20. Sinh ngày 25 tháng 9 năm 1897 tại New Albany, Mississippi. Faulkner đã viết nhiều tác phẩm văn học nổi tiếng, bao gồm \"The Sound and the Fury\", \"As I Lay Dying\" và \"Light in August\". Ông được coi là một trong những nhà văn quan trọng nhất của thế kỷ 20 và đã có ảnh hưởng lớn đến văn học thế giới.\nWilliam Faulkner là một trong những nhà văn xuất sắc, với từng lời văn đầy cảm xúc và chân thật, ông đã để lại những di sản quý báu dành cho những thế hệ sau. Nếu bạn là người yêu thích văn học thì đừng bỏ qua những tác phẩm của William Faulkner nhé.'),
(38, 'Fyodor Mikhailovich', 'Fyodor Mikhailovich Dostoevsky là một nhà văn nổi tiếng người Nga, sinh ra vào ngày 11 tháng 11 năm 1821 ở Moscow. Ông được biết đến với các tác phẩm văn học kinh điển của mình, bao gồm \"Tội và Hình Phạt\" \"Án tử hình\" và \"Đi tìm tâm hồn\" Dostoevsky được xem là một trong những nhà văn lớn nhất của mọi thời đại và tác phẩm của ông đã có ảnh hưởng lớn đến văn học thế giới.\nNgoài việc viết văn, Dostoevsky cũng là một nhà triết học và đã viết nhiều tác phẩm về triết học và tôn giáo. Ông đã đưa ra những quan điểm sâu sắc về cuộc sống và tâm hồn con người. Chính những điều đặc biệt ấy, đã đưa Fyodor Mikhailovich Dostoevsky lên đỉnh cao của văn học ở thế kỉ 19 và cho đến bây giờ.'),
(39, 'James Joyce', 'James Joyce là một nhà văn người Ireland nổi tiếng với tác phẩm \"Ulysses\" và \"Tin Ulysses\" Ông sinh ra vào ngày 2 tháng 2 năm 1882 tại Dublin, Ireland và được coi là một trong những nhà văn lớn nhất của thế kỷ 20.\nJames Joyce là một nhà văn vĩ đại của thế kỷ 20, chính tài năng và sự cố gắng, nỗ lực không ngừng nghỉ, đã đưa ông chạm đến đỉnh cao của văn học. Và cho đến bây giờ hay trong tương lai, cái tên James Joyce vẫn sẽ được mọi người nhắc đến như một huyền thoại của nền văn học.'),
(40, 'Oscar Wilde', 'Oscar Wilde là một nhà văn, nhà thơ, và nhà soạn kịch người Ireland nổi tiếng với tác phẩm \"The Picture of Dorian Gray\" và \"The Importance of Being Earnest.\" Ông sinh ra vào ngày 16 tháng 10 năm 1854 tại Dublin, Ireland và được coi là một trong những nhà văn điển hình của thời kỳ Victoria.\nTuy số phận của Oscar Wilde rất bạc bẽo, nhưng chúng ta cũng không thể nào phủ nhận được tài năng của ông. Chính những tư duy trong cách viết văn của ông, đã khiến cho thế hệ sau này còn nhớ mãi, và cái tên Oscar Wilde sẽ được nhắc đến rất nhiều với tư cách là một tượng đài của nền văn học thế giới.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `totalProduct` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `totalProduct`) VALUES
(1, 'Kỹ năng sống', 'Kỹ năng sống_picture_file1703526341632.jpg', 10),
(2, 'Truyện tranh', 'Truyện tranh_picture_file1703526373252.jpg', 10),
(3, 'Kinh tế', 'Kinh tế_picture_file1703526385486.png', 14),
(4, 'Tiểu thuyết', 'Tiểu thuyết_picture_file1703526398327.png', 0),
(5, 'Ngoại văn', 'Ngoại văn_picture_file1703526449534.png', 1),
(8, 'Tiếng Anh', 'Tiếng Anh_picture_file1703526432922.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `contactDate` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `content`, `title`, `user_id`, `contactDate`) VALUES
(43, '', '', 2, '2023-12-25 20:25:21.000000'),
(44, '', 'a', 2, '2023-12-25 20:31:19.000000'),
(45, '', 'a', 2, '2023-12-25 20:31:52.000000'),
(46, 'BBBBBBBBB', 'AAAAAAAAAA', 2, '2023-12-30 05:47:10.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `commentDate` datetime(6) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `comment`, `product_id`, `commentDate`, `active`, `user_id`) VALUES
(58, 'Hello everyoneee', 10, '2023-12-07 17:30:00.000000', b'1', 23),
(59, 'Cuốn sách này thật hấp dẫn', 14, '2023-12-20 00:00:43.000000', b'1', 2),
(60, 'Xin chào mọi người!', 14, '2023-12-20 00:01:07.000000', b'1', 23),
(61, 'Cuốn sách này thật có ý nghĩa', 14, '2023-12-20 00:01:14.000000', b'1', 23),
(62, 'Nhu l\n', 19, '2023-12-25 22:37:15.000000', b'1', 2),
(63, 'a', 15, '2023-12-26 01:36:38.000000', b'1', 2),
(64, '1', 23, '2023-12-27 19:43:19.000000', b'1', 2),
(65, '2', 23, '2023-12-27 19:43:20.000000', b'1', 2),
(66, 'AAAAAAAAAAA', 9, '2024-01-01 00:48:11.000000', b'1', 2),
(67, 'BBBBBBB', 9, '2024-01-01 00:48:24.000000', b'1', 2),
(68, 'CCCCCCCCC', 9, '2024-01-01 00:49:07.000000', b'1', 2),
(69, 'XXXXX', 9, '2024-01-01 00:55:22.000000', b'1', 2),
(70, 'ZZZZZZZZZ', 9, '2024-01-01 00:56:06.000000', b'1', 2),
(71, 'HAHAHAHA', 9, '2024-01-01 01:11:36.000000', b'1', 2),
(72, 'HEHEHHEHEHE', 9, '2024-01-01 01:12:58.000000', b'1', 2),
(73, 'Hello everyoneee', 9, '2024-01-06 01:15:00.000000', b'1', 2),
(74, 'BIBIBBIBIBIBIB', 9, '2024-01-01 01:13:42.000000', b'1', 2),
(75, 'TUTUTUUTUTUT', 9, '2024-01-01 01:13:46.000000', b'1', 2),
(76, '', 9, '2024-01-01 01:13:46.000000', b'1', 2),
(77, 'KEMOGIOKOOKOK', 9, '2024-01-01 01:13:52.000000', b'1', 2),
(78, 'ULUOKUKAKKAKA', 9, '2024-01-01 01:13:57.000000', b'1', 2),
(79, 'ỎUGUUUU\n', 9, '2024-01-01 01:14:01.000000', b'1', 2),
(80, 'NATORU', 9, '2024-01-01 01:14:06.000000', b'1', 2),
(81, 'KÍAME', 9, '2024-01-01 01:14:10.000000', b'1', 2),
(82, 'ITATCHI', 9, '2024-01-01 01:14:14.000000', b'1', 2),
(83, 'DỎEMO', 9, '2024-01-01 01:14:20.000000', b'1', 2),
(84, 'NOBITA', 9, '2024-01-01 01:14:22.000000', b'1', 2),
(85, 'SUKA', 9, '2024-01-01 01:14:25.000000', b'1', 2),
(86, 'MÂMMA', 9, '2024-01-01 01:14:27.000000', b'1', 2),
(87, 'ĐAYYYYY', 9, '2024-01-01 01:14:30.000000', b'1', 2),
(88, 'SÍISITEEER', 9, '2024-01-01 01:14:34.000000', b'1', 2),
(89, 'BROTHEERRRRR', 9, '2024-01-01 01:14:36.000000', b'1', 2),
(90, 'VVVV', 9, '2024-01-01 01:41:19.000000', b'1', 2),
(91, 'CCCCCCCCCCCCCSSSSSSSSSSSSSSSSS', 9, '2024-01-01 01:42:48.000000', b'1', 2),
(92, 'GG', 9, '2024-01-01 01:43:17.000000', b'1', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forgot`
--

CREATE TABLE `forgot` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `codeDate` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `forgot`
--

INSERT INTO `forgot` (`id`, `code`, `status`, `codeDate`, `user_id`) VALUES
(41, '988748', b'0', '2023-12-24 02:37:33.000000', 23),
(42, '231063', b'0', '2023-12-24 02:45:33.000000', 23),
(43, '998881', b'0', '2023-12-24 02:45:57.000000', 23),
(44, '970336', b'0', '2024-05-21 20:47:40.000000', 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` bigint(20) NOT NULL,
  `price` double NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `orders_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `price`, `quantity`, `orders_id`, `product_id`) VALUES
(893, 2931100, 20, 74, 9),
(894, 15000, 1, 74, 10),
(895, 15000, 1, 74, 11),
(896, 240000, 16, 74, 12),
(897, 270000, 18, 74, 13),
(898, 150000, 10, 74, 14),
(899, 210000, 14, 74, 15),
(900, 180000, 12, 74, 16),
(901, 120000, 8, 74, 17),
(902, 90000, 6, 74, 18),
(903, 60000, 4, 74, 19),
(904, 30000, 2, 74, 20),
(905, 15000, 1, 74, 21),
(906, 15000, 1, 74, 22),
(907, 15000, 1, 74, 23),
(930, 1172440, 8, 75, 9),
(932, 15000, 1, 76, 12),
(933, 15000, 1, 76, 10),
(934, 30000, 2, 77, 11),
(935, 60000, 4, 77, 12),
(936, 15000, 1, 78, 13),
(937, 15000, 1, 78, 12),
(938, 15000, 1, 78, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `orderDate` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `totalBill` double NOT NULL,
  `totalPrice` double NOT NULL,
  `transport` double NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `note`, `orderDate`, `state`, `user_id`, `totalBill`, `totalPrice`, `transport`, `address`, `full_name`, `phone_number`) VALUES
(74, 'Giỏ hàng', '2023-12-30 05:09:03.000000', b'1', 2, 4381100, 4356100, 25000, 'HongKong', 'Administrator', '0888888888'),
(75, 'Giỏ hàng', '2023-12-30 05:29:45.000000', b'1', 2, 1197440, 1172440, 25000, 'HongKong', 'Administrator', '0888888888'),
(76, 'Giỏ hàng', '2024-01-01 02:22:51.000000', b'0', 2, 55000, 30000, 25000, NULL, NULL, NULL),
(77, 'Giỏ hàng', '2024-06-11 10:44:15.000000', b'1', 34, 115000, 90000, 25000, 'Chưa cập nhật', 'Hoang Hai Ly', '0888888888'),
(78, 'Giỏ hàng', '2024-06-11 13:50:11.000000', b'0', 34, 70000, 45000, 25000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `inventory` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `retail` double NOT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `hot` bit(1) NOT NULL,
  `summary` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `active`, `inventory`, `name`, `picture`, `retail`, `author_id`, `hot`, `summary`) VALUES
(9, b'1', 998, 'Có một ngày bố mẹ sẽ già đi', 'Có một ngày bố mẹ sẽ già đi_picture_file1702660550018.jpg', 146555, 2, b'0', 'Có một giai đoạn nào đó trong cuộc đời bạn muốn rời đi, mà không muốn trở về nhà? Với mình thì có, giai đoạn bản thân mình không muốn về nhà đó là lúc mình bước vào những năm tháng của tuổi đôi mươi. Cuộc sống thành phố, giảng đường đại học mở ra một chân trời rộng lớn, những ngày vui chơi cạnh bên bạn bè, chuyến đi khám phá thăm thú vùng đất lạ. Khi ấy mình giống như chú chim lần đầu tiên nhìn thấy chân trời rộng lớn, và chú chim chỉ muốn bay mãi, chẳng muốn trở về. '),
(10, b'1', 99, 'Đắc nhân tâm', 'Đắc nhân tâm_picture1700624392283.jpg', 15000, 3, b'0', 'Trong những năm gần đây cuốn sách Đắc Nhân Tâm bắt đầu nổi trở lại và được nhiều người tìm đọc vì vậy mà không ít người tưởng rằng cuốn sách chỉ mới được phát hành dạo gần đây. Nhưng thực tế, nó đã được xuất bản vào những năm đầu của thế kỷ trước. Cuốn sách Đắc Nhân Tâm của tác giả Dale Carnegie được đánh giá là một cuốn sách hay của thời đại trong suốt 10 năm liền và không một quyển nào khác có thể thay thế.'),
(11, b'1', 99, 'Đi tìm lẽ sống', 'Đi tìm lẽ sống_picture1700624402487.jpg', 15000, 4, b'0', 'Đi tìm lẽ sống là một cuốn sách “kinh điển của thời đại”. Cuốn sách này sẽ giúp nâng đỡ tinh thần con người, giúp cho con người ta có thể tìm ra được mục đích tồn tại của mình, từ đó cho họ một lý do để tiếp tục sống. Như Victor đã nói, ông tin rằng con người ta không cần phải hạnh phúc thì mới sống được, một người có thể tiếp tục cuộc sống của mình nếu họ tìm được một lý do để bước tiếp.'),
(12, b'1', 99, 'Giận', 'Giận_picture1700624411699.jpg', 15000, 5, b'0', 'Cuốn sách “Giận” gồm 11 phần và những bài thiền tập hướng dẫn chúng ta buông bỏ sân hận, dập tắt lửa giận, tiếng nói của yêu thương chân thật,… Ngôn từ gẫn gũi, nhẹ nhàng và dễ đi sâu vào lòng người,.. cuốn sách “Giận” luôn nhận được sự phản hồi tích cực bởi những phương thức mà tác giả đưa ra trong sách khiến độc giả nhận ra rất nhiều bài học từ sự chữa lành hiệu quả.'),
(13, b'1', 99, 'Gieo trồng hạnh phúc', 'Gieo trồng hạnh phúc_picture1700624428516.jpg', 15000, 6, b'0', 'Chánh niệm là nguồn năng lượng tỉnh thức đưa ta trở về với giây phút hiện tại và giúp ta tiếp xúc sâu sắc với sự sống trong mỗi phút giây của đời sống hằng ngày. Chúng ta không cần phải đi đâu xa để thực tập chánh niệm. Chúng ta có thể thực tập chánh niệm ngay trong phòng mình hoặc trên đường đi từ nơi này đến nơi khác.'),
(14, b'1', 99, 'Hạnh phúc cầm tay', 'Hạnh phúc cầm tay_picture1700624448755.png', 15000, 10, b'0', 'Cuốn sách tiếp tục với Năm uẩn trong một con người: sắc, thọ, tưởng, hành, thức, đều cần ta trị vì, cai quản. Có chánh niệm sẽ nhận diện được tập khí khi chúng đang phát khởi và ngăn ngừa nó hoành hành ta, quấy nhiễu giấc ngủ ta mỗi đêm. Cả những tri giác sai lầm vây bám lấy tâm trí ta, cũng sẽ được loại bỏ.'),
(15, b'1', 99, 'Hiểu', 'Hiểu_picture1700624466238.jpg', 15000, 11, b'1', 'Cảm xúc tồn tại dưới muôn hình, vạn trạng. Có người sống trên đời điều nhìn nhận những điều mà họ trải qua theo hướng tích cực nhất, dù có thất bại họ cũng xem đó như một bài học để giúp họ trở thành một phiên bản tốt đẹp hơn.Ngược lại, có người lại chọn mang theo cảm xúc tiêu cực để đón nhận vấn đề mà học gặp phải. '),
(16, b'1', 99, 'Hơn cả hạnh phúc', 'Hơn cả hạnh phúc_picture1700624478737.jpg', 15000, 12, b'1', 'Cuốn sách Hơn Cả Hạnh Phúc tìm hiểu về những điểm tương đồng giữa triết học Đạo Phật và chủ nghĩa khắc kỷ. Chúng ta khám phá nguyên nhân của khổ đau con người và đưa ra các giải pháp cũng như suy ngẫm và quan điểm về những điều quý giá trong cả hai tư tưởng.'),
(17, b'1', 99, 'IKIGAI', 'IKIGAI_picture1700624492986.jpg', 15000, 13, b'1', 'Ikigai là một từ trong tiếng Nhật mô tả niềm vui và ý nghĩa của cuộc sống. Xét về mặt từ nguyên, từ này gồm hai phần “iki” (sống) và “gai” (lý do). Trong ngôn ngữ Nhật, Ikigai được sử dụng trong nhiều ngữ cảnh khác nhau và có thể áp dụng cho những việc nhỏ nhặt hàng ngày cũng như những mục tiêu và thành tựu to tát'),
(18, b'1', 99, 'Lòng trắc ẩn', 'Lòng trắc ẩn_picture1700624504756.jpg', 15000, 14, b'1', 'Lòng trắc ẩn không chỉ là sự đồng cảm hay lòng vị tha, mà là sự kết hợp đặc biệt của cả hai. Đó là khả năng chia sẻ và thấu hiểu cảm xúc của người khác, cùng với mong muốn thật lòng được xoa dịu những nỗi đau mà họ đang đối mặt.Những nghiên cứu gần đây cho thấy lòng trắc ẩn mang lại nhiều lợi ích cho những ai thực hành nó.'),
(19, b'1', 99, 'Lý thuyết trò chơi', 'Lý thuyết trò chơi_picture1700624527082.jpg', 15000, 15, b'1', 'Cuốn sách Lý Thuyết Trò Chơi là một bách khoa toàn thư về tâm lý học, về cách tạo ra chiến thắng trong những trò chơi đấu trí giữa người với người trong cuộc sống hằng ngày. Với các kỹ năng trong cuốn sách, bạn sẽ có thể đọc thấu hoạt động tâm lý người khác để chiếm thế chủ động trong trò chơi đấu trí giữa bạn và những người xung quanh.'),
(20, b'1', 99, 'Nương theo dòng chảy tâm trí', 'Nương theo dòng chảy tâm trí_picture1700624551197.jpg', 15000, 16, b'1', 'Làm thế nào để giải phóng năng lượng tiêu cực khỏi cơ thể bằng cách \"nương theo dòng chảy tâm trí”?Phương pháp Nương Theo Dòng Chảy Tâm Trí là chìa khóa của bạn để cuối cùng vượt qua lo lắng, chống lại căng thẳng và giải quyết các khối cảm xúc, từ đó giải phóng một nguồn năng lượng sống vô hạn.'),
(21, b'1', 99, 'Phép màu chữa lành trái tim', 'Phép màu chữa lành trái tim_picture1700624571894.jpg', 15000, 17, b'1', 'Trái tim bạn trầy xước bởi những khó khăn và thử thách trong đời. Trái tim mỏi mệt vì phải gồng gánh quá nhiều ngang trái, khổ đau và bất công. Những cảm xúc tiêu cực đã chiếm lấy tâm trí bạn, lấp đầy nó bằng sự hoài nghi, thất vọng và cay đắng. Bạn cảm thấy mình đơn độc và không còn biết phải làm gì. Bạn mất niềm tin yêu cuộc sống này. Nếu vậy, đã đến lúc trái tim bạn cần được chữa lành.'),
(22, b'1', 99, 'Sức mạnh của ngôn từ', 'Sức mạnh của ngôn từ_picture1700624585169.jpg', 15000, 18, b'1', 'Ngôn ngữ là một trong những tiến bộ vượt bậc nhất của con người so với các loài vật khác. Chúng ta có thể thấu hiểu, hành động, suy nghĩ thông qua những con chữ tưởng chừng như vô giác, vô tri. Tuy nhiên, dẫu là sản phẩm tạo ra từ bộ não con người, ngôn từ vốn rất khó để kiểm soát, đồng thời cũng ẩn chứa sức mạnh to lớn vô cùng.'),
(23, b'1', 99, 'The happiness', 'The happiness_picture1700624602738.jpg', 15000, 19, b'1', 'Chúng ta muốn được hạnh phúc. Chúng ta tìm kiếm hạnh phúc trong nhiều thứ khác nhau, tùy vào việc ta định nghĩa hạnh phúc là gì. Cuốn sách Happiness Internship - Thực tập sinh hạnh phúc của Bright sẽ đem đến cho bạn một định nghĩa về hạnh phúc, một con đường hạnh phúc có đôi chút khác biệt: hạnh phúc đến từ chính bản thân mình.'),
(154, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040791897.jpg', 1, 2, b'0', ''),
(155, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040798498.jpg', 1, 2, b'0', ''),
(156, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040805031.jpg', 1, 2, b'0', ''),
(157, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040812864.jpg', 1, 2, b'0', ''),
(158, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040817430.jpg', 1, 2, b'0', ''),
(159, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040821697.jpg', 1, 2, b'0', ''),
(160, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040827463.png', 1, 2, b'0', ''),
(161, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040833012.jpg', 1, 2, b'0', ''),
(162, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040838230.jpg', 1, 2, b'0', ''),
(163, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040843413.jpg', 1, 2, b'0', ''),
(164, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040849079.jpg', 1, 2, b'0', ''),
(165, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040854676.jpg', 1, 2, b'0', ''),
(166, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040859843.jpg', 1, 2, b'0', ''),
(167, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040865328.jpg', 1, 2, b'0', ''),
(168, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040872227.jpg', 1, 2, b'0', ''),
(169, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040878044.jpg', 1, 2, b'0', ''),
(170, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040885044.jpg', 1, 2, b'0', ''),
(171, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040889776.jpg', 1, 2, b'0', ''),
(172, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040893309.jpg', 1, 2, b'0', ''),
(173, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040898593.jpg', 1, 2, b'0', ''),
(174, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040902893.jpg', 1, 2, b'0', ''),
(175, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040908016.jpg', 1, 2, b'0', ''),
(176, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040913109.png', 1, 2, b'0', ''),
(177, b'1', 1, 'Đắc nhân tâm', 'Đắc nhân tâm_picture_file1704040918033.jpg', 1, 2, b'0', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 4),
(10, 5),
(10, 8),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(13, 3),
(13, 4),
(13, 5),
(13, 8),
(14, 1),
(14, 2),
(14, 3),
(15, 3),
(15, 4),
(15, 5),
(15, 8),
(16, 4),
(16, 5),
(16, 8),
(17, 4),
(17, 5),
(17, 8),
(18, 3),
(18, 4),
(18, 5),
(18, 8),
(19, 1),
(19, 2),
(19, 3),
(19, 5),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(154, 1),
(154, 2),
(154, 3),
(155, 1),
(155, 2),
(155, 3),
(156, 1),
(156, 2),
(156, 3),
(157, 1),
(157, 2),
(157, 3),
(158, 1),
(158, 2),
(158, 3),
(159, 1),
(159, 2),
(159, 3),
(160, 1),
(160, 2),
(160, 3),
(161, 1),
(161, 2),
(161, 3),
(162, 1),
(162, 2),
(162, 3),
(163, 1),
(163, 2),
(163, 3),
(164, 1),
(164, 2),
(164, 3),
(165, 1),
(165, 2),
(165, 3),
(166, 1),
(166, 2),
(166, 3),
(167, 1),
(167, 2),
(167, 3),
(168, 1),
(168, 2),
(168, 3),
(169, 1),
(169, 2),
(169, 3),
(170, 1),
(170, 2),
(170, 3),
(171, 1),
(171, 2),
(171, 3),
(172, 1),
(172, 2),
(172, 3),
(173, 1),
(173, 2),
(173, 3),
(174, 1),
(174, 2),
(174, 3),
(175, 1),
(175, 2),
(175, 3),
(176, 1),
(176, 2),
(176, 3),
(177, 1),
(177, 2),
(177, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `displayName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `displayName`) VALUES
(1, 'ROLE_USER', 'Người dùng'),
(2, 'ROLE_MANAGER', 'Quản lý'),
(3, 'ROLE_ADMIN', 'Quản trị viên'),
(4, 'ROLE_SUPER_ADMIN', 'Quản trị viên cao cấp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `picture`, `theme`, `active`) VALUES
(7, 'Slide1', 'Slide1_picture_file1702915865690.png', 'Chương trình giảm giá', b'1'),
(8, 'Slide2', 'Slide2_picture_file1702916268250.jpg', 'Chương trình ưu đãi', b'1'),
(9, 'Slide3', 'Slide3_picture_file1702916278502.jpg', 'Chương trình khuyến mãi', b'1'),
(10, 'Slide4', 'Slide4_picture_file1702916286231.jpg', 'Chương trình tri ân', b'1'),
(11, 'Slide5', 'Slide5_picture_file1702915955723.jpg', 'Chương trình hưởng ứng', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `active`, `address`, `avatar`, `birth_day`, `email`, `full_name`, `password`, `phone_number`, `user_name`) VALUES
(2, b'1', 'HongKong', 'admin_avatar_file1703351586745.png', '1999-11-22', 'admin@gmail.com', 'Administrator', '$2a$10$KPcJ30ierb04JJMucBShPu1V2NmqgfQvsrqXz5dc0xtT7R4wwg7yW', '0888888888', 'admin'),
(23, b'1', 'New York', 'tiendat_avatar_file1702749166737.png', '2023-12-14', 'tiendat9122@gmail.com', 'Phan Tien Dat', '$2a$10$jGu0i3Djdblj1haKCiEKeem3HoyTBQC1MC5IOO2jKoAQFzlTfMWKC', '0888888888', 'tiendat'),
(24, b'1', 'Ha Noi', 'ngonga_avatar_file1703351526056.png', '1999-10-10', 'email1@gmail.com', 'Ngo Thi Nga', '$2a$10$aDbuEUWpPWCpexuKLcsvV.NbvmjJkFNZBzi3G9fCq4YDyw0bSn6UC', '0999999999', 'ngonga'),
(25, b'1', 'Nghi Phu', 'username2_avatar_file1703337135674.png', '2023-11-30', 'email2@gmail.com', 'Full name 2', '$2a$10$u7P8lJ43VayR.paReSGPJ.rPh09jlGvel49qJB9fifqvROyfcFBuG', '0888888888', 'username2'),
(26, b'1', 'Nghi Phu', 'username3_avatar_file1703337148796.png', '2023-11-30', 'email3@gmail.com', 'Full name 3', '$2a$10$.kVy3KRD1Dpv/1frvhec2OO5A3ODZs5xtBfB2/15F6igiSJ/yfsBi', '0888888888', 'username3'),
(32, b'1', 'Nghi Phu', NULL, NULL, 'email111@gmail.com', 'Full name 1', '$2a$10$rlnIr.VMnhR6iwU7EUsczeVfjeU9N/PqynXf4AYsuusHyJQGg5GaW', '0888888888', 'aaaaaaa'),
(33, b'1', 'Nghi Phu', NULL, NULL, 'email11221@gmail.com', 'Full name 1', '$2a$10$zZoEQ7AdZEBVkfD7bUQVCOEJD/LEELjAY2VwH.fd1H1TJRafDJVCm', '0888888888', 'aaaaaaa'),
(34, b'1', 'Chưa cập nhật', NULL, NULL, 'ly@gmail.com', 'Hoang Hai Ly', '$2a$10$stZQ3kJ4MXCXb1UHTva/h.IBe1QsF8ja95Rk0lDH6XnlArz6EOoci', '0888888888', 'lyhai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(2, 4),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(32, 1),
(33, 1),
(34, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1a75pkh38emqwnhu7w57r1giw` (`user_id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgg5g254n7p7cr0oyxf2jpkw25` (`product_id`),
  ADD KEY `FKseduepjdt7eqdfgpvdrdxef37` (`user_id`);

--
-- Chỉ mục cho bảng `forgot`
--
ALTER TABLE `forgot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKko4m23mgp7resip9s22goi06v` (`user_id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk127j7bjyn422j0aibaygwlbj` (`orders_id`),
  ADD KEY `FKrgc5kp45yoof6r3776hcl9egx` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsgwj42spshwc3eestq5vk520j` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeatneuku3kg6gn6hhwjmti8oh` (`author_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `FKgu226c19pgk1ssj1bum1ar191` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKbhgxpici80n5kpvs65q90ou14` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `forgot`
--
ALTER TABLE `forgot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=939;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK1a75pkh38emqwnhu7w57r1giw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FKgg5g254n7p7cr0oyxf2jpkw25` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKseduepjdt7eqdfgpvdrdxef37` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `forgot`
--
ALTER TABLE `forgot`
  ADD CONSTRAINT `FKko4m23mgp7resip9s22goi06v` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `FKk127j7bjyn422j0aibaygwlbj` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FKrgc5kp45yoof6r3776hcl9egx` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKsgwj42spshwc3eestq5vk520j` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKeatneuku3kg6gn6hhwjmti8oh` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);

--
-- Các ràng buộc cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `FKgu226c19pgk1ssj1bum1ar191` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKrhisit0xr0am6bjb63ilej29x` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKbhgxpici80n5kpvs65q90ou14` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKhlmdr3u7pdi6gfd47cgcb4p6t` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
