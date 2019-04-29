-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Nis 2019, 13:58:27
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) NOT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT '0',
  `category_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`) VALUES
(1, 'PHP', 'videolu-php-dersleri', '', '{\"title\":\"PHP: Videolu Dersler\",\"description\":\"Bu b\\u00f6l\\u00fcmde PHP ile alakal\\u0131 videolu e\\u011fitimler yer alacakt\\u0131r.\"}', 2, '2018-06-08 14:41:20'),
(2, 'CSS', 'css-dersleri', '', '{\"title\":\"test\",\"description\":\"\"}', 4, '2018-06-08 14:41:33'),
(4, 'Dijital Pazarlama', 'dijital-pazarlama', '', '{\"title\":\"Dijital Pazarlama Ba\\u015fl\\u0131\\u011f\\u0131\",\"description\":\"Dijital Pazarlama A\\u00e7\\u0131klamas\\u0131\"}', 3, '2019-04-17 08:47:40'),
(5, 'SEO', 'seo', '', '{\"title\":\"SEO Ba\\u015fl\\u0131\\u011f\\u0131\",\"description\":\"SEO a\\u00e7\\u0131klama denemesi\"}', 0, '2019-04-17 08:48:38'),
(6, 'ASP', 'asp', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2019-04-25 06:45:19'),
(7, 'C#.NET', 'c-net', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2019-04-25 06:47:28'),
(8, 'VB.NET', 'vb-net', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2019-04-25 06:47:36'),
(9, 'J#.NET', 'j-net', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2019-04-25 06:47:44'),
(10, 'WEB TASARIM', 'web-tasarim', '', '{\"title\":\"Web Tasar\\u0131m\",\"description\":\"\"}', 0, '2019-04-29 05:30:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` int(11) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_user_id`, `comment_post_id`, `comment_name`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(10, 11, 9, 'kadirmert', 'kadirmertakkan@gmail.com', 'Bu bir deneme yorumudur', 1, '2019-04-25 11:00:26'),
(12, 11, 9, 'kadirmert', 'kadirmertakkan@gmail.com', 'Yorumlar buraya yazılır ancak onaylanmadan yayınlanmazlar', 1, '2019-04-25 11:01:16'),
(13, 0, 9, 'Deneme', 'deneme@deneme.com', 'Başka bir mail adresiyle örnek yorum', 0, '2019-04-25 11:02:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_read` int(11) NOT NULL DEFAULT '0',
  `contact_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_read_date` varchar(255) NOT NULL,
  `contact_read_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_subject`, `contact_message`, `contact_read`, `contact_date`, `contact_read_date`, `contact_read_user`) VALUES
(5, 'kadir mert', 'kadirmertakkan@gmail.com', '', 'deneme', 'deneme içeriği', 1, '2019-04-16 11:06:15', '2019-04-16 14:08:09', 11),
(6, 'denem', 'deneme@deneme.com', '', 'deneme konusu', 'deneme içeriği', 0, '2019-04-16 11:06:42', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_content` text NOT NULL,
  `menu_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_title`, `menu_content`, `menu_date`) VALUES
(3, 'Header Menü', '[{\"title\":\"Anasayfa\",\"url\":\"\"},{\"title\":\"Referanslar\",\"url\":\"referanslar\",\"submenu\":[{\"title\":\"Web Tasar\\u0131m\",\"url\":\"referanslar\\/web-tasarim\"},{\"title\":\"SEO\",\"url\":\"referanslar\\/seo\"}]},{\"title\":\"Blog\",\"url\":\"blog\"},{\"title\":\"Hakk\\u0131mda\",\"url\":\"sayfa\\/hakkimda\"},{\"title\":\"\\u0130leti\\u015fim\",\"url\":\"iletisim\"}]', '2018-04-15 21:19:36'),
(5, 'Footer Sosyal Ağlar', '[{\"title\":\"&lt;i class=&quot;fab fa-facebook-square&quot;&gt;&lt;\\/i&gt; kmertakkn\",\"url\":\"https:\\/\\/facebook.com\\/kmertakkn\"},{\"title\":\"&lt;i class=&quot;fab fa-linkedin&quot;&gt;&lt;\\/i&gt; kadir-mert-akkan\",\"url\":\"https:\\/\\/linkedin.com\\/in\\/kadir-mert-akkan\"},{\"title\":\"&lt;i class=&quot;fab fa-instagram&quot;&gt;&lt;\\/i&gt; kadirmert.akkan\",\"url\":\"https:\\/\\/instagram.com\\/kadirmert.akkan\"},{\"title\":\"&lt;i class=&quot;fab fa-twitter-square&quot;&gt;&lt;\\/i&gt; kmertakkn\",\"url\":\"https:\\/\\/twitter.com\\/kmertakkn\"}]', '2018-04-15 18:51:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_seo` varchar(1000) NOT NULL,
  `page_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_url`, `page_content`, `page_seo`, `page_date`) VALUES
(1, 'Hakkımda', 'hakkimda', '&lt;h2 style=&quot;box-sizing: border-box; font-family: Montserrat; line-height: 45px; color: #090821; margin: 0px 0px 23px; font-size: 36px; letter-spacing: -0.06em; padding: 10px 0px 0px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; margin-bottom: 0px;&quot;&gt;Kimim Ben &amp;ndash; Eğitimlerim:&lt;/span&gt;&lt;/h2&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;2010 &amp;ndash; 2014 yılları arasında &amp;Uuml;sk&amp;uuml;dar Doğa Anadolu Lisesi&amp;rsquo;nde okudum.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;2014 yılında İstanbul K&amp;uuml;lt&amp;uuml;r &amp;Uuml;niversitesi, Matematik ve Bilgisayar Bilimleri b&amp;ouml;l&amp;uuml;m&amp;uuml;nden 2018 yılında mezun oldum.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;Şu anda uluslararası bir şirkette &lt;strong&gt;Dijital Pazarlama Uzmanı&lt;/strong&gt; olarak &amp;ccedil;alışmaktayım ve bunun dışında ek olarak firmalara danışmanlık ve dijital pazarlama desteği vermekteyim.&lt;/p&gt;\r\n&lt;h3 style=&quot;box-sizing: border-box; font-family: Montserrat; line-height: 36px; color: #090821; margin: 0px 0px 23px; font-size: 28px; letter-spacing: -0.06em; padding: 17px 0px 0px;&quot;&gt;Kimim Ben &amp;ndash; Deneyimlerim:&lt;/h3&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 600; font-family: Montserrat; margin-bottom: 0px;&quot;&gt;Andromed Medikal A.Ş. &amp;ndash; Dijital Pazarlama Uzmanı (01.09.2018 &amp;ndash; Devam Ediyor)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&amp;bull; Yeni web siteler oluşturmak. Bu web sitelerin gerekli anahtar kelime analizlerini yapmak. Bu kelimelere g&amp;ouml;re site i&amp;ccedil;i SEO ayarlamaları yapmak. Site dışı SEO kanallarını geliştirip backlink kalitesini artırmak. Gerekli anahtar kelimelerde SEM ayarlamaları yapmak. Google Analytics ile gerekli analizleri yapıp bu analizlere g&amp;ouml;re &amp;ouml;nlemler almak.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 600; font-family: Montserrat;&quot;&gt;İstanbul K&amp;uuml;lt&amp;uuml;r &amp;Uuml;niversitesi ( 01/10/2017 &amp;ndash; 01/06/2018)&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box; margin-bottom: 0px;&quot; /&gt;&amp;bull; &amp;Uuml;niversite b&amp;uuml;nyesinde ger&amp;ccedil;ekleştirilen kariyer ve kişisel gelişim odaklı organizasyonların y&amp;uuml;r&amp;uuml;t&amp;uuml;lmesinde g&amp;ouml;rev alma, etkinliklerin bilgi ve haberlerinin sosyal medyada ve web sayfalarında paylaşılması ile ilgili &amp;ccedil;alışmalar y&amp;uuml;r&amp;uuml;tmek.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 600; font-family: Montserrat;&quot;&gt;Andromed Medikal A.Ş. &amp;ndash; Web İ&amp;ccedil;erik Edit&amp;ouml;r&amp;uuml; (01/06/2016 &amp;ndash; 01/09/2017)&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box; margin-bottom: 0px;&quot; /&gt;&amp;bull; Google&amp;rsquo;da sekt&amp;ouml;rde en &amp;ccedil;ok aranan anahtar kelimeleri bulmak ve bu anahtar kelimelerle şirket sitelerinde i&amp;ccedil;erik &amp;uuml;retmek. Bu i&amp;ccedil;eriği SEO / SEM kurallarına g&amp;ouml;re ayarlamak ve sitenin sayfalarını Google&amp;rsquo;da &amp;uuml;st sıralara y&amp;uuml;kseltmek.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: 600; font-family: Montserrat;&quot;&gt;İstanbul K&amp;uuml;lt&amp;uuml;r &amp;Uuml;niversitesi &amp;ndash; Matematik- Bilgisayar Kul&amp;uuml;b&amp;uuml; Web Sitesi Sorumlusu&amp;nbsp;(01/10/2016 &amp;ndash; 01/05/2017)&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box; margin-bottom: 0px;&quot; /&gt;&amp;bull; İstanbul K&amp;uuml;lt&amp;uuml;r &amp;Uuml;niversitesi, Matematik- Bilgisayar Kul&amp;uuml;b&amp;uuml;&amp;rsquo;n&amp;uuml;n web sitesinin SEO optimizasyonu ve i&amp;ccedil;erik edit&amp;ouml;rl&amp;uuml;ğ&amp;uuml;nden sorumlu.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;Freelancer olarak pek &amp;ccedil;ok sitede i&amp;ccedil;erik edit&amp;ouml;rl&amp;uuml;ğ&amp;uuml; ve SEO &amp;ccedil;alışması yapmaya devam ediyorum.&lt;/p&gt;\r\n&lt;h3 style=&quot;box-sizing: border-box; font-family: Montserrat; line-height: 36px; color: #090821; margin: 0px 0px 23px; font-size: 28px; letter-spacing: -0.06em; padding: 17px 0px 0px;&quot;&gt;Kimim Ben &amp;ndash; Sertifikalar:&lt;/h3&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 15px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;&amp;bull; Google Dijital Pazarlamanın Temelleri/2019&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Google Ads Temel D&amp;uuml;zey/2019&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Google Analytics 360&amp;rsquo;a Giriş/2018&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Google Etiket Y&amp;ouml;neticisi Temel D&amp;uuml;zey/2018&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; İleri D&amp;uuml;zey Google Analytics/2018&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Yeni Başlayanlar i&amp;ccedil;in Google Analytics/2018&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; T-Mba Educational Model &amp;ndash; Assured By Edexcel /2014&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Kendi Liderin Ol Mutluluğa Terfi Et &amp;ndash; Kaan Sekban /2017&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; İngilizce Eğitimi Yeterlilik Sertifikası Seviye B1/Doğa Koleji- 2014&lt;br style=&quot;box-sizing: border-box;&quot; /&gt;&amp;bull; Udemy SEO A-Z&amp;trade; | Uzmanından Kapsamlı SEO Eğitimi Sertifikası&lt;br style=&quot;box-sizing: border-box; margin-bottom: 0px;&quot; /&gt;&amp;bull; Uluslararası &amp;Uuml;roloji Kongresi Plaket (Web sitesi)&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px; line-height: 26px; color: #222222; font-family: \'Open Sans\';&quot;&gt;Detaylı bilgi i&amp;ccedil;in&amp;nbsp;&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: #c79d63; text-decoration-line: none; margin-bottom: 0px; outline: none !important;&quot; href=&quot;http://kadirmertakkan.com/iletisim/&quot;&gt;iletişim&lt;/a&gt;&amp;nbsp;sayfasından benimle iletişime ge&amp;ccedil;ebilirsiniz.&lt;/p&gt;', '{\"title\":\"Kadir Mert Akkan - Hakk\\u0131mda Sayfas\\u0131\",\"description\":\"Bu sayfada Kadir Mert Akkan hakk\\u0131nda bilgiler yer almaktad\\u0131r.\"}', '2018-06-20 23:47:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_categories` varchar(255) NOT NULL,
  `post_short_content` text NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_seo` varchar(1000) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_url`, `post_content`, `post_categories`, `post_short_content`, `post_status`, `post_seo`, `post_date`) VALUES
(8, 'CSS Nedir? Ne İşe Yarar? Nasıl Kullanılır?', 'css-nedir-ne-ise-yarar-nasil-kullanilir', '&lt;p&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;CSS Nedir?&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Cascading Style Sheets&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;yani T&amp;uuml;rk&amp;ccedil;esi&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Basamaklı Stil Şablonu&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;anlamına gelmektedir. CSS hayatımıza HTML 4.0 ile gelmiştir. G&amp;ouml;revi ise HTML etiketleri kullanılarak oluşturulan web site g&amp;ouml;r&amp;uuml;nt&amp;uuml;lerini şekillendirir.&amp;nbsp; HTML&amp;rsquo;den bahsetmişken CSS&amp;rsquo;i kullanabilmek i&amp;ccedil;in HTML bilmemiz gerekiyor.&lt;/span&gt;&lt;/p&gt;\r\n&lt;h4 style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.07; color: #1f1f1f; margin-top: 0.9375rem; margin-bottom: 10px; font-size: 1.5rem; font-family: Montserrat, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;HTML Nedir? Ne işe Yarar?&lt;/span&gt;&lt;/h4&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.25rem; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;HTML a&amp;ccedil;ılım olarak Hyper Text Markup Language kelimelerinin kısaltılmasından oluşur. CCS bilmek i&amp;ccedil;in &amp;ouml;ncelikle HTML bilmemiz gerekir. T&amp;uuml;rk&amp;ccedil;e anlamı ise zengin metin işaretleme dilidir. Web sitesi oluşturmak i&amp;ccedil;in kullanılan bir programlama dilidir. Uzantısı ise&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;.html&lt;/span&gt;&amp;nbsp;veya&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;.htm&lt;/span&gt;&amp;nbsp;şeklinde tanımlanabilir. HTML dili etiket yapısından oluşmaktadır. Genel olarak&amp;nbsp;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;&amp;lt;etiket&amp;gt;&amp;lt;/etiket&amp;gt;&lt;/span&gt;&amp;nbsp;şeklinde yer edinmiş olan ve tanımlanmış alanlar arasındaki işlemler yapılır. Bu aşamada dikkat edilmesi gereken bir diğer nokta, etiketlerin a&amp;ccedil;ılması ve kapatılması işlemidir. İstisnai durumlar olsa dahi genel anlamda her bir etiketin kapatılması gerekmektedir. HTML aslında bir programlama dili olmadığı i&amp;ccedil;in spesifik olarak derlenme gibi bir zorunluluğu yoktur. Normal bildiğimiz bir metin belgesinin uzantısı .html şeklinde yapıp kaydetmemiz durumunda dosyamızı direkt olarak tarayıcı &amp;uuml;zerinde g&amp;ouml;r&amp;uuml;nt&amp;uuml;leyebilir hale getiririz ve değişikler yapabiliriz. CSS aslında HTML ile oluşturduğumuz bu iskelet yapılarını kullanarak g&amp;ouml;rsel a&amp;ccedil;ıdan daha iyi hale getirmek adına kullanırız. Oluşturduğumuz CSS dosyası ile g&amp;ouml;rsel &amp;ouml;zellikleri daha bir derli toplu tutarak, sabit bir HTML yapısındaki g&amp;ouml;rselliğe ait değişiklikleri yalnızca bir dosyayı d&amp;uuml;zenleriz.&lt;/p&gt;\r\n&lt;h4 style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.07; color: #1f1f1f; margin-top: 0.9375rem; margin-bottom: 10px; font-size: 1.5rem; font-family: Montserrat, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;CSS ne işe yarar?&lt;/span&gt;&lt;/h4&gt;\r\n&lt;ul style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.5625rem 1.875em; padding: 0px; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Arka planlarınızı renklendirebilirsiniz.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Nesnelere kenar s&amp;uuml;sleri ekleyebilirsiniz. Ve bu kenarlıkları renklendirilebilirsiniz.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Yazılar boyutlandırarak, farklı renklere boyayabilirsiniz.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Yatay men&amp;uuml;ler hazırlayabilirsiniz.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Css kullanarak dikey men&amp;uuml;ler yapabilirsiniz.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;Yazı başlıklarına detay katmak i&amp;ccedil;in altını &amp;ccedil;izebilirsiniz.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h4 style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; line-height: 1.07; color: #1f1f1f; margin-top: 0.9375rem; margin-bottom: 10px; font-size: 1.5rem; font-family: Montserrat, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent;&quot;&gt;CSS nasıl kullanılmalıdır?&lt;/span&gt;&lt;/h4&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.25rem; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;CSS kullanmanın 3 farklı yolu vardır.&amp;nbsp; 3 farklı CSS kullanım şekli i&amp;ccedil;erisinden en &amp;ccedil;ok kullanmanız gereken 3. Aşamada olan css kullanım şeklidir. Inline Styles yani (Html etiket i&amp;ccedil;i) y&amp;ouml;ntemi yanındaki parantez i&amp;ccedil;erisinde bulunan Html etiket i&amp;ccedil;i bu programın esas adı Inline Styles ama daha hoş ve mantıklı bir &amp;ccedil;evirisi olmadığı i&amp;ccedil;in html etiket i&amp;ccedil;i css kullanımı diyebiliriz. Bu y&amp;ouml;ntem ile basit olarak yazılan html etiketlerinin i&amp;ccedil;erisindeki &amp;ouml;zelliğine atanan bazı değerler ile kullanılır ve diğer iki y&amp;ouml;ntem i&amp;ccedil;erisinden en farklı olanı budur. Bu y&amp;ouml;ntemi kullanmak i&amp;ccedil;in şu adımları yapmalısınız;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.25rem; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;1.&lt;/span&gt;Hangi nesneye ait olan &amp;ouml;zellik atanacağını bulmak&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.25rem; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;2.&lt;/span&gt;Nesneye style=&amp;rdquo;&amp;rdquo; etiketini eklemek&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1.25rem; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold;&quot;&gt;3.&lt;/span&gt;Style=&amp;rdquo;&amp;rdquo; etiketi i&amp;ccedil;erisindeki css &amp;ouml;zelliklerini girmek.&lt;/p&gt;', '2', '&lt;p&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;CSS Nedir?&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Cascading Style Sheets&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;yani T&amp;uuml;rk&amp;ccedil;esi&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-weight: bold; color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;Basamaklı Stil Şablonu&lt;/span&gt;&lt;span style=&quot;color: #1f1f1f; font-family: Montserrat, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;anlamına gelmektedir. CSS hayatımıza HTML 4.0 ile gelmiştir. G&amp;ouml;revi ise HTML etiketleri kullanılarak oluşturulan web site g&amp;ouml;r&amp;uuml;nt&amp;uuml;lerini şekillendirir.&amp;nbsp; HTML&amp;rsquo;den bahsetmişken CSS&amp;rsquo;i kullanabilmek i&amp;ccedil;in HTML bilmemiz gerekiyor.&lt;/span&gt;&lt;/p&gt;', 1, '{\"title\":\"CSS Nedir? Ne \\u0130\\u015fe Yarar? Nas\\u0131l Kullan\\u0131l\\u0131r?\",\"description\":\"CSS Nedir? Cascading Style Sheets yani T\\u00fcrk\\u00e7esi Basamakl\\u0131 Stil \\u015eablonu anlam\\u0131na gelmektedir. CSS hayat\\u0131m\\u0131za HTML 4.0 ile gelmi\\u015ftir.\"}', '2019-04-25 06:31:09'),
(9, 'Asp.Net Nedir? PHP Nedir?', 'asp-net-nedir-php-nedir', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Nedirler neler yaparlar?&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;Asp.NET Microsoft&amp;rsquo;un .NET k&amp;uuml;t&amp;uuml;phanesini (Microsoft&amp;rsquo;un ortak dil platformu) baz alarak geliştirdiği, hızlıca web siteleri oluşturmaya yarayan, C#.NET ve VB.NET gibi pop&amp;uuml;ler diller ile sunucu taraflı &amp;ccedil;alışan bir teknolojisidir. &amp;Ccedil;alışması i&amp;ccedil;in IIS (Internet Information Server) gibi bir Windows servisine ve .NET Framework&amp;rsquo;e (.NET dillerinin &amp;ccedil;alışması i&amp;ccedil;in gerekli ortam) ihtiya&amp;ccedil; duyar. Eski bir teknoloji olan classic ASP&amp;rsquo;den &amp;ccedil;ok daha ileri bir teknoloji olan ASP.NET bug&amp;uuml;n d&amp;uuml;nyada bir&amp;ccedil;ok kullanımına ratlanmaktadır. Kodlama esnasındaki genel yapısı iki kısımdan oluşmakta. Web g&amp;ouml;r&amp;uuml;n&amp;uuml;m ve kod tarafıdır. Web tarafına (html kodları arasına) yerleştirdiğiniz kontroller (buton, dropdownlist, textbox gibi)&amp;rsquo;e cod tarafından rahatlıkla erişebilir, bunların &amp;ouml;zelliklerinde bildiğiniz .NET dilleri ile değişiklik yapabilirsiniz (C#.NET, VB.NET, J#.NET gibi).&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;PHP (Hypertext Preprocessor)&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;A&amp;ccedil;ık kaynak koda sahip, kod yazmayı sevenler i&amp;ccedil;in geliştirilmiş bir web dilidir. HTML kodları arasına hızlıca sunucu taraflı kodlar yazıp &amp;ccedil;alıştırmanızı sağlayan bu dilin kullanım alanı olduk&amp;ccedil;a &amp;ccedil;oktur. Linux ortamlarının bile rahatlıkla &amp;ccedil;alıştırabildiği bu dil kod yazmayı sevenlerin g&amp;ouml;zdesi olmayı başarmıştır. C ve Perl dillerine benzemesine rağmen &amp;ccedil;ok daha kolaylıkla &amp;ouml;ğrenilebilen bir yapısı bulunmakadır. Daha &amp;ouml;ncesinde bir dil tecr&amp;uuml;besi olanlar i&amp;ccedil;in &amp;ouml;ğrenim s&amp;uuml;resi temel d&amp;uuml;zey i&amp;ccedil;in birka&amp;ccedil; haftayı almaktadır.&lt;/p&gt;\r\n&lt;h2 style=&quot;box-sizing: border-box; font-family: montserrat, Helvetica, Arial, sans-serif; font-weight: 400; line-height: 40px; color: #535353; margin-top: 20px; margin-bottom: 10px; font-size: 30px; background-color: #f5f5f5;&quot;&gt;Asp ile php Arasındaki Farklar&lt;/h2&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bolder;&quot;&gt;Nerelerde kullanılırlar, hangi boyuttaki projelerde aktif olarak kullanılabilirler.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;Asp.NET hızlı web sitesi geliştirilmesinin gerekli olduğu, kullanıcı sayısının &amp;ccedil;ok fazla olmadığı projelerde rahatlıkla (hazır kontroller ile birlikte) kullanılabilir. B&amp;ouml;ylece kısa zamanda bir&amp;ccedil;ok işe yarayan web siteleri yapılabilir. Bug&amp;uuml;n e-ticaret, Cms (Content Management Sistem) ve blog sistemlerde bile kullanılmaktadır. &amp;Ccedil;ok daha b&amp;uuml;y&amp;uuml;k projeler i&amp;ccedil;in geliştirilen Asp.NET MVC teknolojisi (MVC=Model View Controller, bir design pattern&amp;rsquo;dir ve Asp.NET i&amp;ccedil;in de adapte edilmiştir) kullanılmaktadır.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;PHP, bug&amp;uuml;n bir&amp;ccedil;ok blog ve Cms (Content Management Sistem, &amp;Ouml;rnek Joomla) sistemlerinde kullanılmaktadır. K&amp;uuml;&amp;ccedil;&amp;uuml;k ya da b&amp;uuml;y&amp;uuml;k &amp;ouml;l&amp;ccedil;ekli t&amp;uuml;m projelerde rahatlıkla kullanımaktadır. Ancak HTML kodları arasına yazım &amp;ccedil;ok b&amp;uuml;y&amp;uuml;k projelerde y&amp;ouml;netilebilirliği azalttığından ve birden fazla programcının &amp;ccedil;alışması gereken projelerde farklı teknolojilere başvurulabilmektedir (PHP MVC).&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 20px; color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;&amp;nbsp;&lt;/p&gt;', '6,1', '&lt;p&gt;&lt;span style=&quot;color: #535353; font-family: \'open sans\', Helvetica, Arial, sans-serif; font-size: 13px; background-color: #f5f5f5;&quot;&gt;Asp.NET Microsoft&amp;rsquo;un .NET k&amp;uuml;t&amp;uuml;phanesini (Microsoft&amp;rsquo;un ortak dil platformu) baz alarak geliştirdiği, hızlıca web siteleri oluşturmaya yarayan, C#.NET ve VB.NET gibi pop&amp;uuml;ler diller ile sunucu taraflı &amp;ccedil;alışan bir teknolojisidir. &amp;Ccedil;alışması i&amp;ccedil;in IIS (Internet Information Server) gibi bir Windows servisine ve .NET Framework&amp;rsquo;e (.NET dillerinin &amp;ccedil;alışması i&amp;ccedil;in gerekli ortam) ihtiya&amp;ccedil; duyar. Eski bir teknoloji olan classic ASP&amp;rsquo;den &amp;ccedil;ok daha ileri bir teknoloji olan ASP.NET bug&amp;uuml;n d&amp;uuml;nyada bir&amp;ccedil;ok kullanımına ratlanmaktadır. Kodlama esnasındaki genel yapısı iki kısımdan oluşmakta. Web g&amp;ouml;r&amp;uuml;n&amp;uuml;m ve kod tarafıdır. Web tarafına (html kodları arasına) yerleştirdiğiniz kontroller (buton, dropdownlist, textbox gibi)&amp;rsquo;e cod tarafından rahatlıkla erişebilir, bunların &amp;ouml;zelliklerinde bildiğiniz .NET dilleri ile değişiklik yapabilirsiniz (C#.NET, VB.NET, J#.NET gibi).&lt;/span&gt;&lt;/p&gt;', 1, '{\"title\":\"Asp.Net Nedir ? PHP Nedir?\",\"description\":\"Asp.NET Microsoft\\u2019un .NET k\\u00fct\\u00fcphanesini (Microsoft\\u2019un ortak dil platformu) baz alarak geli\\u015ftirdi\\u011fi, h\\u0131zl\\u0131ca web siteleri olu\\u015fturmaya yarayan, C#.NET ve VB.NET gibi pop\\u00fcler diller ile sunucu tarafl\\u0131 \\u00e7al\\u0131\\u015fan bir teknolojisidir.\"}', '2019-04-25 06:49:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(11) NOT NULL,
  `tag_post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_post_id`, `tag_id`) VALUES
(22, 8, 20),
(23, 8, 21),
(24, 8, 22),
(25, 8, 23),
(26, 8, 24),
(27, 9, 25),
(28, 9, 26),
(29, 9, 27);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference`
--

CREATE TABLE `reference` (
  `reference_id` int(11) NOT NULL,
  `reference_title` varchar(255) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `reference_content` text NOT NULL,
  `reference_tags` varchar(5000) NOT NULL,
  `reference_demo` varchar(255) NOT NULL,
  `reference_image` varchar(255) NOT NULL,
  `reference_categories` varchar(255) NOT NULL,
  `reference_seo` varchar(1000) NOT NULL,
  `reference_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `reference`
--

INSERT INTO `reference` (`reference_id`, `reference_title`, `reference_url`, `reference_content`, `reference_tags`, `reference_demo`, `reference_image`, `reference_categories`, `reference_seo`, `reference_date`) VALUES
(4, 'Tuğrul Keskin Web Sitesi', 'tugrulkeskin-com', '&lt;p&gt;tugrulkeskin.com web sitesinin tasarımı tarafımdan yapılmıştır.&lt;/p&gt;', 'css,html,php', 'http://www.tugrulkeskin.com/', 'tugrulkeskin-com_5394.png', '1', '{\"title\":\"Tugrul Keskin web sitesi\",\"description\":\"Tu\\u011frul Keskin web sitesi ile ilgili bilgilerin yer ald\\u0131\\u011f\\u0131 sayfad\\u0131r.\"}', '2019-04-29 05:39:23'),
(5, 'Türk Üroloji Müzesi Web Sitesi', 'turk-uroloji-muzesi-web-sitesi', '&lt;p&gt;T&amp;uuml;rk &amp;Uuml;roloji M&amp;uuml;zesi\'nin web sitesi tasarımı ve SEO ayarlamaları&lt;/p&gt;', 'wordpress,seo,web tasarım', 'https://history.uroturk.org.tr/', 'turk-uroloji-muzesi-web-sitesi_3407.png', '2,1', '{\"title\":\"\",\"description\":\"\"}', '2019-04-29 07:30:34'),
(6, 'Php Proje Web Sitesi', 'php-proje-web-sitesi', '&lt;p&gt;Proje olarak yaptığım Php web sitesinin i&amp;ccedil;inde; PHP, HTML, CSS, JSON, AJAX kodlama dilleri kullanılmıştır.&lt;/p&gt;', 'php,css,ajax,json', '', 'php-proje-web-sitesi_1599.png', '4', '{\"title\":\"\",\"description\":\"\"}', '2019-04-29 07:44:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_categories`
--

CREATE TABLE `reference_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) NOT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT '0',
  `category_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `reference_categories`
--

INSERT INTO `reference_categories` (`category_id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`) VALUES
(1, 'Web Tasarım', 'web-tasarim', '', '{\"title\":\"\",\"description\":\"\"}', 1, '2018-12-24 00:51:38'),
(2, 'SEO', 'seo', '', '{\"title\":\"\",\"description\":\"\"}', 3, '2018-12-24 00:51:42'),
(3, 'E-Ticaret Danışmanlığı', 'e-ticaret-danismanligi', '', '{\"title\":\"\",\"description\":\"\"}', 0, '2018-12-24 00:51:46'),
(4, 'Proje', 'proje', '', '{\"title\":\"\",\"description\":\"\"}', 2, '2018-12-24 00:51:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_images`
--

CREATE TABLE `reference_images` (
  `image_id` int(11) NOT NULL,
  `image_reference_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `reference_images`
--

INSERT INTO `reference_images` (`image_id`, `image_reference_id`, `image_url`, `image_content`) VALUES
(7, 4, 'tugrulkeskin-com_2796.png', ''),
(10, 6, 'php-proje-web-sitesi_6403.png', '{\"title\":\"PHP Proje Web Sitesi\",\"description\":\"PHP Proje Web Sitesi\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_url` varchar(255) NOT NULL,
  `tag_seo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`, `tag_url`, `tag_seo`) VALUES
(20, 'css', 'css', ''),
(21, 'css nasıl kullanılır', 'css-nasil-kullanilir', ''),
(22, 'css nedir', 'css-nedir', ''),
(23, 'html', 'html', ''),
(24, 'style', 'style', ''),
(25, 'php', 'php', ''),
(26, 'asp', 'asp', ''),
(27, 'cms', 'cms', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_rank` int(11) NOT NULL DEFAULT '3',
  `user_permissions` varchar(2000) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_data` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_url`, `user_email`, `user_password`, `user_rank`, `user_permissions`, `user_date`, `user_data`) VALUES
(3, 'stajyer', 'stajyer', 'asd@asd.com', '$2y$10$ID0BbS4OiJsJVtXEGle7zOPubzame9L5gS54/ooiTGR.xHuGE.KSW', 3, '', '2019-04-01 07:01:31', ''),
(5, 'admin', 'admin', 'deneme@deneme.com', '$2y$10$k8nl8eg4osHrqqnRcijfD.OO3.bmHwUUc3I6Ep69/oRNCOolsS82u', 1, '{\"index\":{\"show\":\"1\"},\"users\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"show\":\"1\",\"edit\":\"1\",\"send\":\"1\",\"delete\":\"1\"},\"posts\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"tags\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"comments\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference-categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"pages\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"menu\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"settings\":{\"show\":\"1\",\"edit\":\"1\"}}', '2019-04-05 05:33:46', ''),
(11, 'kadirmert', 'kadirmert', 'kadirmertakkan@gmail.com', '$2y$10$4Bk2va0ud.O2fb9NYBQlNu0fB.qAsg6F/WAGCumhH2W1iivGDIwiC', 1, '{\"index\":{\"show\":\"1\"},\"users\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"show\":\"1\",\"edit\":\"1\",\"send\":\"1\",\"delete\":\"1\"},\"posts\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"tags\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"comments\":{\"show\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"reference-categories\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"pages\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"menu\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"settings\":{\"show\":\"1\",\"edit\":\"1\"}}', '2019-04-12 13:27:32', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Tablo için indeksler `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`reference_id`);

--
-- Tablo için indeksler `reference_categories`
--
ALTER TABLE `reference_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Tablo için indeksler `reference_images`
--
ALTER TABLE `reference_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Tablo için indeksler `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `reference`
--
ALTER TABLE `reference`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `reference_categories`
--
ALTER TABLE `reference_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `reference_images`
--
ALTER TABLE `reference_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
