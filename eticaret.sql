-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Eyl 2020, 15:59:25
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/28255SözerStore Logo.png', '', 'Sözer Store', 'Sözer HiperStore\'u', 'online,alışveriş', 'Fahri Sözer', '0536 745 31 49', '0536 745 31 49', '0536 745 31 49', 'fahrisozer129@gmail.com', 'Mersin', 'Silifke', 'Mersin', '7-24 Online', 'Harita', 'Analiz', 'Zopim', 'www.facebook.com/fahriszr', 'www.twitter.com/fahrisozer33', 'www.google.com', 'www.youtube.com/fahrisozer', '', '', '', '25', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR68469797979897987987987987', 'Fahri Sözer', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Fahri Sözer', '1'),
(3, 'Vakıfbank', 'TR455645645646546465465', 'Fahri Sözer', '1'),
(5, 'Ziraat Bankası', 'TR45646545646awrwerwerwer', 'Fahri Sözer', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Sözer Store ', '<p>2020 yılında &ldquo;En yeni iletişim ve bilgisayar teknolojilerini kullanarak m&uuml;şterilerine d&uuml;nya standartlarında &ccedil;&ouml;z&uuml;mler sunmak&rdquo; ilkesiyle yola &ccedil;ıkan Sozer Store Fahri S&ouml;zer Fikridir. Her yıl y&uuml;kselen iş ve m&uuml;şteri potansiyeli ile daha iyi hizmet ilkesi ile g&uuml;&ccedil;l&uuml; bir vizyon ve misyon i&ccedil;erisinde ilerlemektedir.</p>\r\n', 'w8sdv8AiRZc', '“Disiplinli ve programlı çalışıyoruz.”Hizmet verdiğiniz sektör her ne olursa olsun, çalışma şartlarınız ne şekilde düzenlenirse düzenlensin; eğer o alanda başarılı olmak istiyorsanız mutlaka belli programlar çerçevesinde disiplinli bir şekilde çalışılması gerektiğine inanıyoruz. Üzerinde çalıştığımız her proje için iş akışını düzenliyor ve proje ekibine dahil tüm çalışanlarımızın bu sürece sadık kalmasına özen gösteriyoruz.', '“İşimizde daha iyi olmak için sürekli araştırıyoruz.” Belki hiç bir e-ticaret firmasının yapmadığı kadar çok yeni ürün ve yeni teknolojiler gibi konularda sürekli olarak araştırmalar yapıyoruz. Bu alanlarda yeni olan ne varsa takip etmeye ve bunları müşterilerimiz için kullanılabilir materyaller olacakları şekilde uyarlamaya çalışıyoruz.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(12, 'Bilgisayarlar', 0, 'bilgisayarlar', 1, '1'),
(13, 'Telefonlar & Aksesuarlar', 0, 'telefonlar-aksesuarlar', 2, '1'),
(14, 'Ses Görüntü Sistemleri', 0, 'ses-goruntu-sistemleri', 3, '1'),
(15, 'Beyaz Eşya & Ankastre Ürünleri', 0, 'beyaz-esya-ankastre-urunleri', 4, '1'),
(16, 'Foto Kameraları', 0, 'foto-kameralari', 5, '1'),
(17, 'Elektrikli Ev Aletleri', 0, 'elektrikli-ev-aletleri', 6, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(5, '2020-09-03 15:21:45', '', '1234567890', '', 'info@sozerstore.com.tr', '05367453149', 'e10adc3949ba59abbe56e057f20f883e', 'Fahri Sözer', '', '', '', '', '5', 1),
(155, '2020-09-07 12:10:29', '', '', '', 'fahrisozer129@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Fahri S', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda.php', 4, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', 'iletisim.php', 21, '1', 'iletisim'),
(4, '0', 'Kategoriler', '', 'kategoriler.php', 2, '1', 'kategoriler'),
(14, '', 'Mesafeli Satış Sözleşmesi', '<p>1 - TARAFLAR<br />\r\nSATICI</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Satıcı İsim/Unvanı:<br />\r\n&nbsp;&nbsp;&nbsp; Satıcı&rsquo;nın A&ccedil;ık Adresi:<br />\r\n&nbsp;&nbsp;&nbsp; Satıcı&rsquo;nın Telefonu:<br />\r\n&nbsp;&nbsp;&nbsp; Satıcı Mersis No:<br />\r\n&nbsp;&nbsp;&nbsp; Satıcı E-Posta Adresi :<br />\r\n&nbsp;&nbsp;&nbsp; Alıcı&rsquo;nın İade Halinde Malı Satıcı&rsquo;ya G&ouml;ndereceği Kargo Şirketi:</p>\r\n\r\n<p>s&ouml;zer store.com &Ccedil;ağrı Merkezi: 12312312312312312123213<br />\r\nALICI</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Adı &ndash; Soyadı :<br />\r\n&nbsp;&nbsp;&nbsp; Adresi :<br />\r\n&nbsp;&nbsp;&nbsp; Telefon :<br />\r\n&nbsp;&nbsp;&nbsp; E-Posta :</p>\r\n\r\n<p>S&Ouml;ZLEŞME&rsquo;NİN KONUSU VE KAPSAMI</p>\r\n\r\n<p>İşbu Mesafeli Satış S&ouml;zleşmesi (&ldquo;S&ouml;zleşme&rdquo;) 6502 Sayılı T&uuml;keticinin Korunması Hakkında Kanun (&ldquo;Kanun&rdquo;) ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;ne uygun olarak d&uuml;zenlenmiştir. İşbu S&ouml;zleşme&rsquo;nin tarafları işbu S&ouml;zleşme tahtında Kanun&rsquo;dan ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;nden kaynaklanan y&uuml;k&uuml;ml&uuml;l&uuml;k ve sorumluluklarını bildiklerini ve anladıklarını kabul ve beyan ederler.</p>\r\n\r\n<p>İşbu S&ouml;zleşme&rsquo;nin konusunu; Alıcı&rsquo;nın, Fahri S&ouml;zer Elektronik Ticaret ve Bilişim Hizmetleri A.Ş.&rsquo;ye (&ldquo;Fahri S&ouml;zer/Aracı Hizmet Sağlayıcı&rdquo;) ait www.s&ouml;zerstore.com alan adlı web sitesinden (&ldquo;Websitesi&rdquo;), Satıcı&rsquo;ya ait mal veya hizmetin satın alınmasına y&ouml;nelik elektronik olarak sipariş verdiği, S&ouml;zleşme&rsquo;de belirtilen niteliklere sahip mal veya hizmetin satışı ve teslimi ile ilgili olarak Kanun ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği h&uuml;k&uuml;mleri gereğince tarafların hak ve y&uuml;k&uuml;ml&uuml;l&uuml;klerinin belirlenmesi oluşturur.</p>\r\n\r\n<p>İşbu S&ouml;zleşme&rsquo;nin akdedilmesi tarafların ayrı ayrı Fahri S&ouml;zer ile akdetmiş oldukları Websitesi &Uuml;yelik S&ouml;zleşmeleri&rsquo;nin h&uuml;k&uuml;mlerinin ifasını engellemeyecek olup taraflar işbu S&ouml;zleşme konusu mal veya hizmetin satışında Fahri S&ouml;zer&rsquo;in herhangi bir şekilde taraf olmadığını ve S&ouml;zleşme kapsamında tarafların y&uuml;k&uuml;ml&uuml;l&uuml;klerini yerine getirmeleri ile ilgili herhangi bir sorumluluğu ve taahh&uuml;d&uuml; bulunmadığını kabul ve beyan ederler.<br />\r\nS&Ouml;ZLEŞME KONUSU MAL VE HİZMETİN TEMEL NİTELİKLERİ VE FİYATI (KDV DAHİL)<br />\r\n&Uuml;r&uuml;n Kodu Ve Adı &nbsp;&nbsp; &nbsp;Adet &nbsp;&nbsp; &nbsp;Satici Unvani &nbsp;&nbsp; &nbsp;Birim Fiyatı &nbsp;&nbsp; &nbsp;Birim İndirimi &nbsp;&nbsp; &nbsp;Kupon &nbsp;&nbsp; &nbsp;Puan &nbsp;&nbsp; &nbsp;Toplam Satış Tutarı &nbsp;&nbsp; &nbsp;Vade Farkı &nbsp;&nbsp; &nbsp;KDV Dahil Toplam Tutar<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p>İlan edilen fiyatlar ve vaatler g&uuml;ncelleme yapılana ve değiştirilene kadar ge&ccedil;erlidir. S&uuml;reli olarak ilan edilen fiyatlar ise belirtilen s&uuml;re sonuna kadar ge&ccedil;erlidir.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Kargo hari&ccedil; toplam &uuml;r&uuml;n bedeli:<br />\r\n&nbsp;&nbsp;&nbsp; Kargo &Uuml;creti:<br />\r\n&nbsp;&nbsp;&nbsp; Kargo Dahil Toplam Bedeli:<br />\r\n&nbsp;&nbsp;&nbsp; &Ouml;deme Şekli ve Planı:<br />\r\n&nbsp;&nbsp;&nbsp; Alınan Vade Farkı:<br />\r\n&nbsp;&nbsp;&nbsp; Vade Farkı hesabında kullanılan faiz oranı:</p>\r\n\r\n<p>S&Ouml;Z KONUSU &Uuml;R&Uuml;N BEDELİ, &Ouml;DEME KORUMA SİSTEMİ KAPSAMINDA SATICI ADINA, Fahri S&ouml;zer TARAFINDAN ALICI&rsquo;DAN TAHSİL EDİLMEKTEDİR. ALICI MALIN/HİZMETİN BEDELİNİ Fahri S&ouml;zer&rsquo;E &Ouml;DEMEKLE, &Uuml;R&Uuml;N BEDELİNİ SATICI&rsquo;YA &Ouml;DEMİŞ SAYILACAKTIR.<br />\r\nMALIN TESLİMİ VE TESLİM ŞEKLİ</p>\r\n\r\n<p>S&ouml;zleşme Alıcı tarafından elektronik ortamda onaylanmakla y&uuml;r&uuml;rl&uuml;ğe girmiş olup, Alıcı&rsquo;nın Satıcı&rsquo;dan satın almış olduğu mal veya hizmetin Alıcı&rsquo;ya teslim edilmesiyle ifa edilmiş olur. Mal, Alıcı&rsquo;nın sipariş formunda ve işbu S&ouml;zleşme&rsquo;de belirtmiş olduğu adrese ve belirtilen yetkili kişi/kişilere teslim edilecektir.<br />\r\nTESLİMAT MASRAFLARI VE İFASI</p>\r\n\r\n<p>Malın teslimat masrafları aksine bir h&uuml;k&uuml;m yoksa Alıcı&rsquo;ya aittir. Satıcı, Websitesi&rsquo;nde teslimat &uuml;cretinin kendisince karşılanacağını beyan etmişse teslimat masrafları Satıcı&rsquo;ya ait olacaktır.</p>\r\n\r\n<p>Malın teslimatı; &ouml;demenin ger&ccedil;ekleşmesinden sonra taahh&uuml;t edilen s&uuml;rede yapılır. Satıcı, sipariş konusu mal veya hizmetin ediminin yerine getirilmesinin imkansızlaştığı haller saklı kalmak kaydıyla, mal veya hizmeti, Alıcı tarafından mal veya hizmetin sipariş edilmesinden itibaren 30 (otuz) g&uuml;n i&ccedil;inde teslim eder.</p>\r\n\r\n<p>Herhangi bir nedenle Alıcı tarafından mal veya hizmetin bedeli &ouml;denmez veya yapılan &ouml;deme banka kayıtlarında iptal edilir ise, Satıcı mal veya hizmetin teslimi y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kurtulmuş kabul edilir.</p>\r\n\r\n<p>Malın Satıcı tarafından kargoya verilmesinden sonra ve fakat Alıcı tarafından teslim alınmasından &ouml;nce Alıcı tarafından yapılan sipariş iptallerinde kargo bedelinden Alıcı sorumludur.</p>\r\n\r\n<p>Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin imkansızlaştığı hallerde Satıcı bu durumu &ouml;ğrendiği tarihten itibaren 3 (&uuml;&ccedil;) g&uuml;n i&ccedil;inde Alıcı&rsquo;yı bilgilendirecek ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; 14 (on d&ouml;rt) g&uuml;n i&ccedil;inde iade edecektir.<br />\r\nALICI&rsquo;NIN BEYAN VE TAAHH&Uuml;TLERİ</p>\r\n\r\n<p>Alıcı, Websitesi&rsquo;nde yer alan S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri, satış fiyatı ve &ouml;deme şekli ile teslimat ve kargo bedeline ilişkin olarak Satıcı tarafından y&uuml;klenen &ouml;n bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi verdiğini beyan eder.</p>\r\n\r\n<p>Alıcılar, t&uuml;ketici sıfatıyla talep ve şikayetlerini yukarıda yer alan Satıcı iletişim bilgilerini kullanarak ve/veya Websitesi&rsquo;nde yer alan Hesabım&gt;&Uuml;r&uuml;n Sorularım &uuml;zerinden ulaştırabilirler.</p>\r\n\r\n<p>Alıcı, işbu S&ouml;zleşme&rsquo;yi ve &Ouml;n Bilgilendirme Formu&rsquo;nu elektronik ortamda teyit etmekle, mesafeli s&ouml;zleşmelerin akdinden &ouml;nce Satıcı tarafından Alıcı&rsquo;ya verilmesi gereken adres, siparişi verilen mal veya hizmete ait temel &ouml;zellikler, mal veya hizmetin vergiler dahil fiyatı, &ouml;deme ve teslimat ile teslimat fiyatı bilgilerini de doğru ve eksiksiz olarak edindiğini teyit etmiş olur. Alıcı&rsquo;nın, teslim edildiği esnada tahrip olmuş, kırık, ambalajı yırtılmış vb. hasarlı ve ayıplı olduğu a&ccedil;ık&ccedil;a belli olan S&ouml;zleşme konusu mal veya hizmeti kargo şirketinden teslim alması halinde sorumluluk tamamen kendisine aittir.</p>\r\n\r\n<p>Mal veya hizmetin tesliminden sonra Alıcı&rsquo;ya ait kredi kartının Alıcı&rsquo;nın kusurundan kaynaklanmayan bir şekilde yetkisiz kişilerce haksız veya hukuka aykırı olarak kullanılması nedeni ile ilgili banka veya finans kuruluşunun mal veya hizmetin bedelini Satıcı&rsquo;ya &ouml;dememesi halinde, Alıcı kendisine teslim edilmiş olması kaydıyla mal veya hizmeti 3 (&uuml;&ccedil;) g&uuml;n i&ccedil;inde Satıcı&rsquo;ya iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. Bu halde teslimat giderleri Alıcı&rsquo;ya aittir.<br />\r\nSATICI&rsquo;NIN BEYAN VE TAAHH&Uuml;TLERİ</p>\r\n\r\n<p>Satıcı, S&ouml;zleşme konusu mal veya hizmetin t&uuml;ketici mevzuatına uygun olarak, sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile Alıcı&rsquo;ya teslim edilmesinden sorumludur.</p>\r\n\r\n<p>Satıcı, m&uuml;cbir sebepler veya nakliyeyi engelleyen olağan&uuml;st&uuml; durumlar nedeni ile s&ouml;zleşme konusu mal veya hizmeti s&uuml;resi i&ccedil;inde teslim edemez ise, durumu &ouml;ğrendiği tarihten itibaren 3 (&uuml;&ccedil;) g&uuml;n i&ccedil;inde Alıcı&rsquo;ya bildirmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>S&ouml;zleşme konusu mal veya hizmet, Alıcı&rsquo;dan başka bir kişiye teslim edilecek ise, teslim edilecek kişinin teslimatı kabul etmemesinden Satıcı sorumlu tutulamaz.<br />\r\nCAYMA HAKKI</p>\r\n\r\n<p>Alıcı, hi&ccedil;bir hukuki ve cezai sorumluluk &uuml;stlenmeksizin ve hi&ccedil;bir gerek&ccedil;e g&ouml;stermeksizin, mal satışına ilişkin işlemlerde teslimat tarihinden itibaren, hizmet satışına ilişkin işlemlerde satın alma tarihinden itibaren 14 (on d&ouml;rt) g&uuml;n i&ccedil;erisinde cayma hakkını kullanabilir. Alıcı, malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>Alıcı, cayma hakkını s&ouml;zer store.com&rsquo;a giriş yaparak s&ouml;zer store.com&rsquo;da yer alan Hesabım&gt;Mevcut Sipariş&gt;Siparişlerim &uuml;zerinden &quot;İade Et&quot; bağlantısına tıklayarak kullanabilir. Alıcı&rsquo;nın ilgili sayfada yer alan iade talep formunu doldurup satıcının iade adres bilgilerini alarak, cayma hakkını kullandığı tarihten itibaren 10 (on) g&uuml;n i&ccedil;inde malı geri g&ouml;ndermesi gerekmektedir. Mal ile beraber faturasının, malın kutusunun, ambalajının, varsa standart aksesuarları, mal ile birlikte hediye edilen diğer &uuml;r&uuml;nlerin de eksiksiz ve hasarsız olarak iade edilmesi gerekmektedir. Alıcı, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir. Cayma hakkının kullanılmasına ilişkin detaylı bilgi s&ouml;zer store.com&rsquo;da yer alan https://www.s&ouml;zer store.com/genel/urun-iadesi-2082300 sayfasında yer almaktadır.</p>\r\n\r\n<p>Alıcı iade edeceği malı Satıcı&rsquo;ya &Ouml;n Bilgilendirme Formu&rsquo;nda belirtilen Satıcı&rsquo;nın anlaşmalı kargo şirketi ile g&ouml;nderdiği s&uuml;rece, iade kargo bedeli Satıcı&rsquo;ya aittir. Alıcı&rsquo;nın iade edeceği malı &Ouml;n Bilgilendirme Formu&rsquo;nda belirtilen Satıcı&rsquo;nın anlaşmalı kargo şirketi dışında bir kargo şirketi ile g&ouml;ndermesi halinde, iade kargo bedeli ve malın kargo s&uuml;recinde uğrayacağı hasardan Satıcı sorumlu değildir.</p>\r\n\r\n<p>Alıcı&rsquo;nın cayma hakkını kullanmasından itibaren 14 (on d&ouml;rt) g&uuml;n i&ccedil;erisinde (malın Satıcı&rsquo;nın iade i&ccedil;in belirttiği taşıyıcı aracılığıyla geri g&ouml;nderilmesi kaydıyla), Alıcı&rsquo;nın ilgili mal veya hizmete ilişkin Satıcı veya Aracı Hizmet Sağlayıcı&rsquo;ya yaptığı t&uuml;m &ouml;demeler Alıcı&rsquo;ya satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden ve tek seferde iade edilecektir. Kredi kullanılarak yapılan alışverişlerde, cayma hakkının usul&uuml;ne uygun kullanıldığı durumlarda &uuml;r&uuml;n bedeli kredi ile ilişkili hesaba iade edilecektir.</p>\r\n\r\n<p>Fahri S&ouml;zer, İŞBU MESAFELİ SATIŞ S&Ouml;ZLEŞMESİ&rsquo;NİN TARAFI OLMADIĞINDAN ALICI&rsquo;NIN, Fahri S&ouml;zer&rsquo;E KARŞI CAYMA HAKKI YOKTUR VE Fahri S&ouml;zer&rsquo;TEN BEDEL İADESİ VEYA &Uuml;R&Uuml;N DEĞİŞİMİ TALEP EDEMEZ.<br />\r\nCAYMA HAKKININ KULLANILAMAYACAĞI HALLER</p>\r\n\r\n<p>Mevzuat uyarınca Alıcı aşağıdaki hallerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve Satıcı&rsquo;nın kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmelerde (&ouml;rn. ziynet, altın ve g&uuml;m&uuml;ş kategorisindeki &uuml;r&uuml;nler); Alıcı&rsquo;nın istekleri veya a&ccedil;ık&ccedil;a onun kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan, niteliği itibariyle geri g&ouml;nderilmeye elverişli olmayan ve &ccedil;abuk bozulma tehlikesi olan veya son kullanma tarihi ge&ccedil;me ihtimali olan malların teslimine ilişkin s&ouml;zleşmelerde; Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve hijyen a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmelerde; Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmelerde; Alıcı tarafından ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması şartıyla maddi ortamda sunulan kitap, ses veya g&ouml;r&uuml;nt&uuml; kayıtlarına, yazılım programlarına ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmelerde; Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında gazete, dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmelerde; Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmelerde; Bahis ve piyangoya ilişkin hizmetlerin ifasına ilişkin s&ouml;zleşmelerde; Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmelerde; ve Elektronik ortamda anında ifa edilen hizmetler ile t&uuml;keticiye anında teslim edilen gayri maddi mallara ilişkin s&ouml;zleşmelerde (hediye kartı, hediye &ccedil;eki, para yerine ge&ccedil;en kupon ve benzeri).</p>\r\n\r\n<p>Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;nin kapsamı dışında bırakılmış olan mal veya hizmetler (Satıcı&rsquo;nın d&uuml;zenli teslimatları ile Alıcı&rsquo;nın meskenine teslim edilen gıda maddelerinin, i&ccedil;eceklerin ya da diğer g&uuml;nl&uuml;k t&uuml;ketim maddeleri ile seyahat, konaklama, lokantacılık, eğlence sekt&ouml;r&uuml; gibi alanlarda hizmetler) bakımından cayma hakkı kullanılamayacaktır.</p>\r\n\r\n<p>Tatil kategorisinde satışa sunulan bu t&uuml;r mal ve hizmetlerin iptal ve iade şartları her Satıcı&rsquo;nın uygulama ve kurallarına tabidir.<br />\r\nUYUŞMAZLIKLARIN &Ccedil;&Ouml;Z&Uuml;M&Uuml;</p>\r\n\r\n<p>Kanun ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği kapsamında satılan mal veya hizmete ilişkin sorumluluk bizzat Satıcı&rsquo;ya aittir. Bununla birlikte Alıcılar, satın aldıkları mal ve hizmetlerle ilgili şik&acirc;yetlerini Satıcılar&rsquo;a doğrudan veya Fahri S&ouml;zer &uuml;zerinden iletecektir. Şikayetin Fahri S&ouml;zer&rsquo;e iletilmesi halinde Fahri S&ouml;zer sorunun &ccedil;&ouml;z&uuml;lmesi i&ccedil;in m&uuml;mk&uuml;n olan t&uuml;m desteği sağlayacaktır.</p>\r\n\r\n<p>İş bu Mesafeli Satış S&ouml;zleşme ile ilgili &ccedil;ıkacak ihtilaflarda; her yıl G&uuml;mr&uuml;k ve Ticaret Bakanlığı tarafından ilan edilen değere kadar Alıcı&rsquo;nın yerleşim yerindeki &uuml;r&uuml;n&uuml; satın aldığı veya ikametg&acirc;hının bulunduğu yerdeki İl veya İl&ccedil;e T&uuml;ketici Sorunları Hakem Heyetleri, s&ouml;z konusu değerin &uuml;zerindeki ihtilaflarda ise T&uuml;ketici Mahkemeleri yetkilidir.<br />\r\nMAL/HİZMETİN FİYATI</p>\r\n\r\n<p>Malın peşin veya vadeli satış fiyatı, sipariş formunda yer almakla birlikte, sipariş sonu g&ouml;nderilen bilgilendirme e-postası ve &uuml;r&uuml;n ile birlikte m&uuml;şteriye g&ouml;nderilen fatura i&ccedil;eriğinde mevcut olan fiyattır. Satıcı veya Fahri S&ouml;zer tarafından yapılan indirimler, kuponlar, kargo &uuml;creti ve sair uygulamalar satış fiyatına yansıtılır.<br />\r\nTEMERR&Uuml;T HALİ VE HUKUKİ SONU&Ccedil;LARI</p>\r\n\r\n<p>Alıcı&rsquo;nın, kredi kartı ile yapmış olduğu işlemlerde temerr&uuml;de d&uuml;şmesi halinde kart sahibi bankanın kendisi ile yapmış olduğu kredi kartı s&ouml;zleşmesi &ccedil;er&ccedil;evesinde faiz &ouml;deyecek ve bankaya karşı sorumlu olacaktır. Bu durumda ilgili banka hukuki yollara başvurabilir; doğacak masrafları ve vek&acirc;let &uuml;cretini Alıcı&rsquo;dan talep edebilir ve her koşulda Alıcı&rsquo;nın borcundan dolayı temerr&uuml;de d&uuml;şmesi halinde, Alıcı&rsquo;nın borcu gecikmeli ifasından dolayı Satıcı&rsquo;nın uğradığı zarar ve ziyandan Alıcı sorumlu olacaktır.<br />\r\nBİLDİRİMLER VE DELİL S&Ouml;ZLEŞMESİ</p>\r\n\r\n<p>İşbu S&ouml;zleşme tahtında taraflar arasında yapılacak her t&uuml;rl&uuml; yazışma, mevzuatta sayılan zorunlu haller dışında, Websitesi&rsquo;nde yer alan Hesabım&gt;&Uuml;r&uuml;n Sorularım veya elektronik posta aracılığıyla yapılacaktır. Alıcı, işbu S&ouml;zleşme&rsquo;den doğabilecek ihtilaflarda Satıcı&rsquo;nın ve Fahri S&ouml;zer&rsquo;in resmi defter ve ticari kayıtlarıyla, kendi veritabanında, sunucularında tuttuğu elektronik bilgilerin ve bilgisayar kayıtlarının, bağlayıcı, kesin ve m&uuml;nhasır delil teşkil edeceğini, bu maddenin Hukuk Muhakemeleri Kanunu&rsquo;nun 193. maddesi anlamında delil s&ouml;zleşmesi niteliğinde olduğunu kabul, beyan ve taahh&uuml;t eder.<br />\r\nY&Uuml;R&Uuml;RL&Uuml;K</p>\r\n\r\n<p>14 (on d&ouml;rt) maddeden ibaret bu S&ouml;zleşme, taraflarca okunarak, 11/09/2019 tarihinde, Alıcı tarafından elektronik ortamda onaylanmak suretiyle akdedilmiş ve y&uuml;r&uuml;rl&uuml;ğe girmiştir.</p>\r\n', '', 3, '1', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(3, 0, 7, 5),
(4, 0, 12, 1),
(5, 0, 12, 1),
(6, 0, 8, 2),
(8, 0, 12, 2),
(9, 0, 15, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(750012, '2017-08-02 18:27:35', NULL, 153, 120.00, 'Banka Havalesi', 'Yapı Kredi', '0'),
(750013, '2020-09-06 09:54:03', NULL, 0, 0.00, 'Banka Havalesi', 'Vakıfbank', '0'),
(750014, '2020-09-06 14:57:33', NULL, 0, 0.00, 'Banka Havalesi', 'Ziraat Bankası', '0'),
(750015, '2020-09-07 09:12:07', NULL, 155, 50.00, 'Banka Havalesi', 'Ziraat Bankası', '0'),
(750016, '2020-09-09 12:01:12', NULL, 155, 23998.00, 'Banka Havalesi', 'Yapı Kredi', '0'),
(750017, '2020-09-09 13:09:31', NULL, 155, 14750.00, 'Banka Havalesi', 'Garanti Bankası', '0'),
(750018, '2020-09-09 13:14:08', NULL, 155, 4542.00, 'Banka Havalesi', 'Yapı Kredi', '0'),
(750019, '2020-09-09 13:37:53', NULL, 155, 25000.00, 'Banka Havalesi', 'Ziraat Bankası', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(11, 750012, 4, 25.00, 1),
(12, 750012, 5, 95.00, 1),
(13, 750013, 12, 25.00, 1),
(14, 750014, 12, 25.00, 3),
(15, 750015, 12, 25.00, 2),
(16, 750016, 15, 11999.00, 2),
(17, 750017, 15, 5000.00, 1),
(18, 750017, 17, 3250.00, 3),
(19, 750018, 18, 2271.00, 2),
(20, 750019, 15, 5000.00, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Büyük Fırsat', 'dimg/slider/20670282542333331376slide1.jpg', 1, 'kategori-bilgisayarlar', '1'),
(9, 'Efsane Cuma', 'dimg/slider/31740256722800922079slide2.jpg', 2, 'kategori-ses-goruntu-sistemleri', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(15, 12, '2020-09-09 10:50:41', 'Apple MacBook Pro 13.3\" MUHN2TU/A Space Grey', 'apple-macbook-pro-13-3-muhn2tu-a-space-grey', '<p>İşlemci ve Bellek</p>\r\n\r\n<p>Daha fazla g&uuml;&ccedil;. &Ccedil;ekirdeğine&nbsp;kadar.</p>\r\n\r\n<p>10. nesil 4&nbsp;&ccedil;ekirdekli Intel&nbsp;Core&nbsp;i7 işlemciye kadar uzanan işlemci se&ccedil;enekleriyle yapılandırılabilen 13&nbsp;in&ccedil; MacBook&nbsp;Pro, en zorlu g&ouml;revlerin bile &uuml;stesinden gelmeye hazır. B&ouml;ylece kod derlemek, m&uuml;zik yaparken &ccedil;ok katmanlı par&ccedil;alarla &ccedil;alışmak veya video kodlamak gibi profesyonel d&uuml;zeyde işlemci g&uuml;c&uuml; gerektiren işler &ccedil;ok daha hızlı bir şekilde sonu&ccedil;lanıyor. &Uuml;stelik 13&nbsp;in&ccedil; MacBook&nbsp;Pro şimdiye dek ilk kez 32&nbsp;GB bellekle yapılandırılabiliyor. Bu sayede Photoshop&rsquo;ta gigapiksel boyutunda g&ouml;rseller &uuml;zerinde d&uuml;zenleme yaparken y&uuml;zde&nbsp;50&rsquo;ye kadar daha hızlı performans2, daha fazla sanal enstr&uuml;man y&uuml;kleme kapasitesi ve birden fazla sanal makine &ccedil;alıştırırken olağan&uuml;st&uuml; bir akıcılık elde edebiliyorsunuz.</p>\r\n\r\n<p>4 &ccedil;ekirdek4 adede kadar &ccedil;ekirdekle yapılandırılabilen 10.&nbsp;nesil<br />\r\nIntel&nbsp;Core i7&nbsp;işlemci</p>\r\n\r\n<p>4.5&nbsp;GHz4.5 GHz&rsquo;e kadar<br />\r\nTurbo&nbsp;Boost</p>\r\n\r\n<p>32&nbsp;GB32 GB&rsquo;a kadar<br />\r\n3733&nbsp;MHz bellek</p>\r\n\r\n<p>%5016&nbsp;GB belleğe g&ouml;re y&uuml;zde&nbsp;50&rsquo;ye kadar daha y&uuml;ksek&nbsp;hız2</p>\r\n\r\n<p>MATLAB /</p>\r\n\r\n<p>Logic Pro X /</p>\r\n\r\n<p>Autodesk Maya /</p>\r\n\r\n<p>WebKit Compile /</p>\r\n\r\n<p>Adobe Photoshop</p>\r\n\r\n<p>4 &ccedil;ekirdekli MacBook Pro</p>\r\n\r\n<p>&Ccedil;ift &ccedil;ekirdekli MacBook Pro (Referans)</p>\r\n\r\n<p>2,8 katDinamik sistem sim&uuml;lasyonları 2,8&nbsp;kat daha&nbsp;hızlı3</p>\r\n\r\n<p>4 &ccedil;ekirdekli MacBook Pro</p>\r\n\r\n<p>&Ccedil;ift &ccedil;ekirdekli MacBook Pro (Referans)</p>\r\n\r\n<p>2,6 katAlchemy eklentisi 2,6&nbsp;kat daha&nbsp;fazla4</p>\r\n\r\n<p>4 &ccedil;ekirdekli MacBook Pro</p>\r\n\r\n<p>&Ccedil;ift &ccedil;ekirdekli MacBook Pro (Referans)</p>\r\n\r\n<p>2,3 katArnold render işlemi 2,3&nbsp;kat daha&nbsp;hızlı5</p>\r\n\r\n<p>4 &ccedil;ekirdekli MacBook Pro</p>\r\n\r\n<p>&Ccedil;ift &ccedil;ekirdekli MacBook Pro (Referans)</p>\r\n\r\n<p>%95Xcode ile build s&uuml;resi y&uuml;zde&nbsp;95 daha&nbsp;hızlı6</p>\r\n\r\n<p>4 &ccedil;ekirdekli MacBook Pro</p>\r\n\r\n<p>&Ccedil;ift &ccedil;ekirdekli MacBook Pro (Referans)</p>\r\n\r\n<p>%80Well-threaded filtre işleme y&uuml;zde&nbsp;80 daha&nbsp;hızlı7</p>\r\n\r\n<p>Grafik Teknolojileri</p>\r\n\r\n<p>G&ouml;zlerinize inanamayacağınız bir grafik performansı.</p>\r\n\r\n<p>G&uuml;&ccedil;l&uuml; ve yeni Iris&nbsp;Plus grafik teknolojisine sahip 10.&nbsp;nesil Intel işlemci, bir &ouml;nceki nesle g&ouml;re y&uuml;zde&nbsp;80&rsquo;e kadar daha hızlı grafik performansı sunuyor.1 B&ouml;ylece zahmetsiz bir şekilde video d&uuml;zenleyebiliyor, daha hızlı 3D&nbsp;render alabiliyor ve oyunları daha akıcı bir şekilde oynayabiliyorsunuz.</p>\r\n\r\n<p>Total War: THREE KINGDOMS /</p>\r\n\r\n<p>Final Cut Pro X /</p>\r\n\r\n<p>Affinity Photo</p>\r\n\r\n<p>Intel Iris Plus Graphics grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro</p>\r\n\r\n<p>Intel Iris Plus Graphics 655 grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro (Referans)</p>\r\n\r\n<p>%80Oyun performansı y&uuml;zde&nbsp;80 daha&nbsp;hızlı1</p>\r\n\r\n<p>Intel Iris Plus Graphics grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro</p>\r\n\r\n<p>Intel Iris Plus Graphics 655 grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro (Referans)</p>\r\n\r\n<p>%603D g&ouml;r&uuml;nt&uuml; render işlemi y&uuml;zde&nbsp;60 daha&nbsp;hızlı8</p>\r\n\r\n<p>Intel Iris Plus Graphics grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro</p>\r\n\r\n<p>Intel Iris Plus Graphics 655 grafik teknolojisine sahip 4&nbsp;&ccedil;ekirdekli MacBook&nbsp;Pro (Referans)</p>\r\n\r\n<p>%25G&ouml;r&uuml;nt&uuml; işleme y&uuml;zde&nbsp;25 daha&nbsp;hızlı9</p>\r\n\r\n<p>SSD Depolama</p>\r\n\r\n<p>İşinizi&nbsp;kolaylaştırın.</p>\r\n\r\n<p>MacBook Pro, 3.0 GBps&rsquo;ye kadar sıralı okuma hızları10 sağlayabilen inanılmaz hızlı bir katı hal s&uuml;r&uuml;c&uuml;s&uuml;ne&nbsp;(SSD) sahip. Standart yapılandırmalar bir &ouml;nceki neslin iki katı kapasiteyle (256&nbsp;GB, 512&nbsp;GB&nbsp;veya 1&nbsp;TB) sunuluyor ve 4&nbsp;TB&rsquo;a kadar depolama alanı sayesinde fotoğraf ve videolarınız gittiğiniz&nbsp;her yere sizinle birlikte geliyor. &Uuml;stelik Apple&nbsp;T2 Security&nbsp;Chip ile her şey otomatik olarak anında&nbsp;şifreleniyor.</p>\r\n\r\n<p>4&nbsp;TB4 TB&rsquo;a kadar<br />\r\nSSD depolama</p>\r\n\r\n<p>3.0 GBps3.0&nbsp;GBps&rsquo;ye kadar<br />\r\nsıralı okuma&nbsp;hızı10</p>\r\n\r\n<p>3.0&nbsp;GBps3.0&nbsp;GBps&rsquo;ye kadar<br />\r\nsıralı yazma&nbsp;hızı10</p>\r\n\r\n<p>Magic Keyboard</p>\r\n\r\n<p>Ger&ccedil;ek g&uuml;&ccedil;. Harfi harfine.</p>\r\n\r\n<p>13 in&ccedil; MacBook&nbsp;Pro her şeyi daha da hızlı ve verimli bir şekilde yapabilmeniz i&ccedil;in tasarlandı. Yeni Magic&nbsp;Keyboard, 1&nbsp;mm hareket mesafesine sahip, geliştirilmiş makas&nbsp;tipi mekanizması sayesinde bir Mac diz&uuml;st&uuml; bilgisayarda bug&uuml;ne kadar g&ouml;rd&uuml;ğ&uuml;n&uuml;z en iyi yazma deneyimini sunuyor. Yeni Escape&nbsp;tuşu ile modlar&nbsp;ve g&ouml;r&uuml;n&uuml;mler arasında hızlıca ge&ccedil;iş&nbsp;yapabiliyorsunuz. Ters d&ouml;nd&uuml;r&uuml;lm&uuml;ş T bi&ccedil;imindeki ok tuşları kod satırları arasında, hesap tablolarında veya oyun ortamlarında hızlı hareket etmenize yardımcı oluyor. Touch&nbsp;Bar g&uuml;&ccedil;l&uuml; kestirmeleri elinizin&nbsp;altına yerleştiriyor. Touch&nbsp;ID ise kimlik doğrulamayı hızlandırıyor.</p>\r\n\r\n<p>TouchBar</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Klavye</p>\r\n\r\n<p>Touch Bar. En&nbsp;&ccedil;ok ihtiya&ccedil;&nbsp;duyduğunuz komutlar tam ihtiyacınız&nbsp;olan yerdeler. Bu&nbsp;da daha&nbsp;az tuşa basarak<br />\r\nzaman kazanmanızı sağlıyor.</p>\r\n\r\n<p>Touch ID. G&uuml;venli oturum&nbsp;a&ccedil;ma i&ccedil;in hızlı&nbsp;ve kolay kimlik doğrulama.</p>\r\n\r\n<p>Force Touch trackpad. Baskı miktarındaki k&uuml;&ccedil;&uuml;k değişiklikler aracılığıyla Mac&rsquo;inizle &ccedil;ok farklı bi&ccedil;imlerde etkileşime girebiliyorsunuz.</p>\r\n\r\n<p>Apple T2 Security Chip</p>\r\n\r\n<p>Yeni nesil g&uuml;venlik.</p>\r\n\r\n<p>Her MacBook&nbsp;Pro&rsquo;da, yaptığınız her şeyi daha da g&uuml;venli hale getirmek i&ccedil;in tasarlanmış ikinci nesil &ouml;zel Mac &ccedil;ipi olan Apple&nbsp;T2 Security&nbsp;Chip bulunuyor. G&uuml;venli başlatma ve&nbsp;şifreli depolama &ouml;zelliklerinin temelini oluşturan Secure&nbsp;Enclave yardımcı işlemcisine sahip bu &ccedil;ip aynı zamanda sistem y&ouml;netim denetleyicisi, ses denetleyicisi ve SSD denetleyicisi gibi bir&ccedil;ok bağımsız denetleyiciyi de tek &ccedil;atı altında topluyor. Apple&nbsp;T2 Security Chip ayrıca MacBook&nbsp;Pro&rsquo;ya tanıdık bir ses getiriyor. Hey&nbsp;Siri &ouml;zelliği uygulamaları a&ccedil;mak, belgeleri bulmak, m&uuml;zik &ccedil;almak veya sorularınızı yanıtlamak i&ccedil;in her&nbsp;zaman hazır.<br />\r\n<br />\r\nApple T2 Security Chip Raporu&rsquo;nu g&ouml;r&uuml;nt&uuml;leyin&nbsp;(PDF)</p>\r\n\r\n<p>Ekran ve Ses</p>\r\n\r\n<p>G&ouml;r&uuml;lmedik ve<br />\r\nduyulmadık derecede iyi.</p>\r\n\r\n<p>Canlı LED arkadan aydınlatmaya sahip Retina ekran, koyu siyahlar ve parlak beyazlar sunuyor. Standart renk yelpazesine (sRGB) g&ouml;re daha canlı yeşiller ve kırmızılar i&ccedil;in P3 geniş renk yelpazesini destekliyor. Ve True&nbsp;Tone teknolojisi t&uuml;m MacBook&nbsp;Pro modellerinde yer alıyor. Beyaz dengesi, etrafınızdaki ışığın renk sıcaklığıyla eşleşecek şekilde otomatik olarak ayarlanıyor. Bu&nbsp;da daha doğal bir g&ouml;r&uuml;nt&uuml;leme deneyimi anlamına geliyor. MacBook&nbsp;Pro, sahip olduğu dinamik ses aralığı sayesinde fiziksel boyutlarını aşan daha geniş kapsamlı bir ses deneyimi sunuyor. Filmler &ccedil;ok daha etkileyici hale geliyor. M&uuml;zik odayı daha da dolduruyor. Ayrıca ses dalgalarının y&ouml;n&uuml;n&uuml; belirleyen &uuml;&ccedil; yerleşik mikrofon, FaceTime aramalarında ve Siri ile konuşurken sesinizi daha net bir şekilde yakalıyor.</p>\r\n\r\n<p>500 nit<br />\r\nparlaklık</p>\r\n\r\n<p>sRGB&rsquo;ye g&ouml;re<br />\r\n%25 daha fazla renk</p>\r\n\r\n<p>True Tone<br />\r\nteknolojisi</p>\r\n\r\n<p>Geniş stereo<br />\r\nses</p>\r\n\r\n<p>Thunderbolt 3</p>\r\n\r\n<p>Şimdiye kadarki en iyi bağlantı noktası.<br />\r\n&Ccedil;ok&nbsp;g&uuml;&ccedil;l&uuml;, &ccedil;ok&nbsp;y&ouml;nl&uuml;.</p>\r\n\r\n<p>Thunderbolt 3, ultra y&uuml;ksek bant genişliğinin olanaklarını USB-C end&uuml;stri standardının &ccedil;ok y&ouml;nl&uuml;l&uuml;ğ&uuml;yle birleştiren son derece hızlı bir evrensel bağlantı noktası. Veri aktarımı, şarj ve video &ccedil;ıkışını tek bir konnekt&ouml;rde buluşturan Thunderbolt 3, 40 Gbps&rsquo;ye kadar bant&nbsp;genişliği sunuyor. Bu, Thunderbolt&nbsp;2&rsquo;nin iki katı bant genişliği demek. MacBook&nbsp;Pro&rsquo;da d&ouml;rt adede kadar bağlantı noktası se&ccedil;eneği bulunuyor. Yani bilgisayarınız her a&ccedil;ıdan &ccedil;ok işlevsel. Ayrıca mevcut aygıtlarınız&nbsp;da kablo&nbsp;veya adapt&ouml;r aracılığıyla kolayca bağlanabiliyor. Ve&nbsp;Thunderbolt&nbsp;3 &ccedil;ift&nbsp;y&ouml;nl&uuml; kullanılabildiği&nbsp;i&ccedil;in konnekt&ouml;r&uuml; hangi y&ouml;nde takarsanız&nbsp;takın her&nbsp;zaman doğru&nbsp;şekilde takmış&nbsp;oluyorsunuz.</p>\r\n\r\n<p>Thunderbolt 3 hakkında daha fazla bilgi&nbsp;edinin</p>\r\n\r\n<p>40&nbsp;Gbps&rsquo;ye&nbsp;kadar veri&nbsp;aktarımı</p>\r\n\r\n<p>T&uuml;m bağlantı noktalarından şarj imkanı ve g&uuml;&ccedil; iletimi</p>\r\n\r\n<p>eGPU bağlantısı</p>\r\n\r\n<p>Bir adet 6K, bir adet 5K veya iki adede kadar 4K ekran desteği11</p>\r\n\r\n<p>Sidecar</p>\r\n\r\n<p>iPad ile masa&uuml;st&uuml;n&uuml;z&uuml; genişletin.</p>\r\n\r\n<p>Sidecar sayesinde iPad&rsquo;inizi ikinci bir Mac ekranı gibi kullanarak &ccedil;alışma&nbsp;alanınızı genişletin.12 Bir&nbsp;uygulamada &ccedil;alışırken başka bir uygulamayı referans olarak kullanın. Veya iPad&rsquo;inizdeki ara&ccedil;ları ve paletleri kullanırken &ccedil;alışmanızı MacBook&nbsp;Pro&rsquo;nuzda g&ouml;r&uuml;nt&uuml;leyin. Dilerseniz ekranları yansıtarak ikisinin&nbsp;de aynı i&ccedil;eriği g&ouml;stermesini sağlayın. B&ouml;ylece kendi g&ouml;rd&uuml;klerinizi başkalarıyla da paylaşın.</p>\r\n\r\n<p>Apple&nbsp;Pencil ile yaratıcılığınızı g&ouml;sterin.</p>\r\n\r\n<p>Sidecar ile Mac&rsquo;teki en sevdiğiniz yaratıcılık uygulamalarında Apple&nbsp;Pencil&rsquo;ın kolaylığından ve hassasiyetinden yararlanın.13 Illustrator&rsquo;da tasarım yapmak, Affinity Photo&rsquo;da fotoğraf d&uuml;zenlemek veya ZBrush&rsquo;ta 3D modelleme yapmak i&ccedil;in Apple&nbsp;Pencil&rsquo;ı kullanın. &Uuml;stelik pratik kenar &ccedil;ubuğu sayesinde Command, Control ve Shift tuşları parmaklarınızın ucunda.</p>\r\n', 5000.00, 'OPPnl7quNkg', 'MUHN2TU/A', 10, '1', '1'),
(16, 13, '2020-09-09 12:20:19', 'Xiaomi Redmi Note 9 Pro 128 GB', 'xiaomi-redmi-note-9-pro-128-gb', '<h2>Redmi Note 9 Pro &Ouml;zellikleri</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xiaomi&#39;nin efsane amiral gemisi&nbsp;Redmi Note 9 Pro serisi telefon modelleri, g&uuml;&ccedil;l&uuml; işletim sistemleri, gelişmiş kameraları, zengin bağlantı noktaları,&nbsp;multimedya &ouml;zellikleri ve uzun &ouml;m&uuml;rl&uuml; bataryaları ile t&uuml;m g&uuml;n kesintisiz iletişim olanağının yanı sıra&nbsp;pek &ccedil;ok eğlenceli &ouml;zellikler sunar. G&uuml;n boyu elinizden d&uuml;ş&uuml;remeyeceğiniz&nbsp;Redmi Note 9 Pro&#39;nun&nbsp;geniş &ccedil;aplı ve y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; ekranında film ve video izleyebilir, internette dolaşabilir, bağlantı &ouml;zellikleriyle veri alışverişi yapabilir, profesyonel&nbsp;netlik ve &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte fotoğraflar ve videolar &ccedil;ekebilirsiniz.&nbsp;DotDisplay ile simetrik bir &ouml;n ve arka tasarıma sahip olan modeller, şık g&ouml;r&uuml;n&uuml;mleri ve zengin renk se&ccedil;enekleriyle g&ouml;z kamaştırır.&nbsp;</p>\r\n\r\n<p><strong>Redmi Note 9 Pro&nbsp;&Ouml;zellikleri</strong></p>\r\n\r\n<ul>\r\n	<li>10 (Q) versiyon Android işletim sistemiyle gelen telefonlar,&nbsp;kullanıcı dostu MIUI 11&nbsp;aray&uuml;z&uuml; ile kolay kullanım konforuna sahiptir. 64 GB ile 128 GB bellek se&ccedil;enekleri bulunan Redmi Note 9 Pro modelleri, daha geniş depolama alanı isteyenler i&ccedil;in 512 GB maksimum hafıza kartı desteği de sunar.&nbsp;&nbsp;Redmi Note 9 Pro modelleri, 5020 mAh kapasiteli Lithium Polymer (Li-Po) teknolojisi ile &uuml;retilmiş olup, 30 W şarj g&uuml;c&uuml; ile&nbsp;hızlı şarj &ouml;zelliğine sahiptir ve USB Type-C ile şarj edilebilir. G&uuml;n boyu kesintisiz iletişim&nbsp;olanağı sunan dahili (&ccedil;ıkarılamaz) batarya, 4G ile 33 saat konuşma s&uuml;resi ve 147 saat m&uuml;zik oynatma s&uuml;resi sunar.&nbsp;</li>\r\n	<li>6.67 in&ccedil; IPS LCD ekran Redmi Note 9 Pro telefonlar, 1080 x 2400 (FHD+) piksel &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;yle canlı, net ve ger&ccedil;ek&ccedil;i izleme deneyimi yaşamanızı sağlar. IPS LCD ekran sayesinde telefonunuz g&uuml;neş ışığında daha iyi bir g&ouml;r&uuml;n&uuml;rl&uuml;ğe sahiptir.107.11 cm&sup2; ekran alanı sayesinde telefonun t&uuml;m ekranını aktif olarak kullanabilirsiniz. Cihazlar, 20:9 ekran oranı ve %84.27 ekran/g&ouml;vde oranıyla konforlu bir kullanım sunar. Fotoğraflarınızı orjinal renkleriyle g&ouml;rmenizi sağlayan 16 milyon renk sayısına sahip&nbsp;ekran, &ccedil;oklu dokunmalara duyarlı kapasitif ekran &ouml;zelliği ile &uuml;retilmiştir.</li>\r\n	<li>Yine &ccedil;oklu dokunmaları algılayan Multi Touch teknolojisi ile fotoğraflarınızı ve web sayfalarını b&uuml;y&uuml;t&uuml;p k&uuml;&ccedil;&uuml;ltebilirsiniz. &Ccedil;izilmeye diren&ccedil;li cam teknolojisiyle &uuml;retilen ekranın dayanıklılığı Corning Gorilla Glass 5 ile artırılmıştır. Redmi Note 9 Pro, &ccedil;er&ccedil;evesiz ekran tasarımı sayesinde&nbsp;sonsuz ekran hissi yaratarak g&ouml;r&uuml;nt&uuml;lerin etrafındaki sınırları kaldırır ve daha ger&ccedil;ek&ccedil;i bir g&ouml;r&uuml;nt&uuml; deneyimi yaşamanızı sağlar. Ekran&nbsp;i&ccedil;i&nbsp;&ouml;n kamerası bulunan Redmi Note 9 Pro, 450 cd/m&sup2; (nit) parlaklık&nbsp;ve 1500:1 kontrast oranıyla t&uuml;m g&ouml;r&uuml;nt&uuml;leri m&uuml;kemmel parlaklık&nbsp;ve kontrast değerleriyle ekrana yansıtır. Redmi Note 9 Pro&#39;nun ekranı, can sıkıcı parmak izi lekelerine karşı leke tutmayan &ouml;zel&nbsp;kaplama malzemesi Oleophobic Coating ile kaplanmıştır. B&ouml;ylece ekranınıza&nbsp;ne kadar dokunursanız dokunun parmak izi lekesi oluşmaz ve ekran daima temiz kalır.</li>\r\n</ul>\r\n\r\n<p><strong>Zengin Bağlantı Olanakları, Gelişmiş Kameralar, Yerleşik Servis ve Uygulamalar</strong></p>\r\n\r\n<ul>\r\n	<li>Redmi Note 9 Pro&#39;nun her biri m&uuml;kemmel &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k sunan gelişmiş &ouml;zelliklere sahip Al 4&#39;l&uuml; kamerası ile en değerleri anları y&uuml;ksek g&ouml;r&uuml;nt&uuml; kalitesiyle &ouml;l&uuml;ms&uuml;zleştirebilirsiniz.&nbsp;64 MP LED flaş &ouml;zellikli ve Ultra y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; birincil kamera, 1/1.72 in&ccedil; sens&ouml;r boyutuna ve F1.89 diyafram a&ccedil;ıklığına sahiptir. 720 piksel ile 2160 piksel(Ultra HD) 4K video kayıt olanağı sağlayan&nbsp;ana kamera ile profesyonel netlikte videolar &ccedil;ekebilir ve harika fotoğraflara imza atabilirsiniz. Ana kamera, dijital g&ouml;r&uuml;nt&uuml; sabitleyici (EIS),Time-lapse video kayıt ve&nbsp;yavaş &ccedil;ekim video kayıt&nbsp;&ouml;zelliklerine sahiptir.</li>\r\n	<li>Ana kamerada bulunan bokeh,&nbsp;Phase Detect Auto-Focus (PDAF), hızlı odaklama, yapay zeka destekli portre modu, HDR, yapay zeka sahne algılama, panorama, otomatik odaklama, coğrafi konum etiketleme, 2 cm makro &ccedil;ekim, seri &ccedil;ekim modu, zamanlayıcı,&nbsp;0.8&mu;m (1.6&mu;m) piksel, 6 elementli&nbsp;lens ve&nbsp;79.8&deg; a&ccedil;ılı &ccedil;ekim modları ile dilediğiniz &ccedil;ekim senaryosunu deneyebilirsiniz.&nbsp;Redmi Note 9 Pro&#39;nun 8 MP Ultra geniş a&ccedil;ılı ikinci arka kamerasıyla ekstra geniş a&ccedil;ı,&nbsp;119&deg; ekstra geniş a&ccedil;ı,&nbsp;1.12&mu;m piksel ve 5 elementli lens modlarında &ccedil;ekim yapabilirsiniz. 1/5 sens&ouml;r boyutuna sahip 5 MP makro &uuml;&ccedil;&uuml;nc&uuml; kamerayla 1.12&mu;m piksel ve makro &ccedil;ekim modlarında fotoğraf &ccedil;ekebilir,&nbsp;1/5 sens&ouml;r boyutuna sahip 2 MP d&ouml;rd&uuml;nc&uuml; arka kamerayla&nbsp;1.75 &micro;m piksel ve bokeh modlarında &ccedil;ekimler yapabilirsiniz.&nbsp;</li>\r\n	<li>16 MP &ouml;n kamera ile 1080 piksel &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte video kaydı&nbsp;yapabilirsiniz. &Ouml;n kamerayla birbirinden g&uuml;zel selfie fotoğrafların yanı sıra portre modu, yapay zeka destekli portre modu, HDR, yapay zeka sahne algılama, yavaş &ccedil;ekim video kaydı, Gesture Shot, yapay zeka iyileştirme, zamanlayıcı, panorama, y&uuml;z algılama,&nbsp;720 piksel 120 fps kayıt ve&nbsp;1.0&micro;m piksel modlarında &ccedil;ekimler yapabilirsiniz.</li>\r\n	<li>Redmi Note 9 Pro modelleri<strong>&nbsp;</strong>kablosuz ve ağ bağlantı olanaklarıyla donatılmıştır. Cihazların sunduğu kablosuz bağlantı olanakları arasında;&nbsp;yerel ağınıza bağlanmak i&ccedil;in&nbsp;MIMO, Dual-Band, Wi-Fi Direct, Wi-Fi Display, Wi-Fi Hotspot, VoWiFi (Voice over Wi-Fi) ve&nbsp;2X MIMO &ouml;zellikli Wi-Fi 5 (802.11 a/b/g/n/ac) kanalı, pos ile &ouml;demelerde kolaylık sağlayan yakın alan iletişimi&nbsp;NFC &ouml;zelliği, kablosuz veri aktarımları i&ccedil;in&nbsp;5.0 versiyon Bluetooth ve kızıl&ouml;tesi ve&nbsp;konum belirlemenize yardımcı olan&nbsp;A-GPS, BDS, Galileo ve GLONASS &ouml;zellikli Navigasyon desteği yer alır.&nbsp;</li>\r\n	<li>Redmi Note 9 Pro, sunduğu ağ bağlantıları sayesinde &ccedil;eşitli iletişim standartlarıyla g&ouml;r&uuml;şme yapma olanağı sunar. SMS ve MMS mesajlaşmaları i&ccedil;in 2G, hızlı internet ve g&ouml;r&uuml;nt&uuml;l&uuml; g&ouml;r&uuml;şmeler i&ccedil;in 3G, &ccedil;ok hızlı internet ve g&ouml;r&uuml;nt&uuml;l&uuml; g&ouml;r&uuml;şmeler i&ccedil;in 4G ve 4,5G desteği cihazların sağladığı&nbsp;ağ bağlantı olanaklarıdır. Y&uuml;ksek kaliteli veri aktarımları i&ccedil;in 2.0 versiyon USB Type-C dışında&nbsp;iki ayrı hat taşımak isteyenler i&ccedil;in &ccedil;ift hat (3 Slot (SIM1+SIM2+MicroSD) &ouml;zelliği ve&nbsp;Nano-SIM (4FF) &ouml;zelliği de diğer bağlantı olanaklarıdır.&nbsp;Redmi Note 9 Pro&#39;nun &ccedil;oklu ortamını,&nbsp;mono hoparl&ouml;r ve ses &ccedil;ıkışı i&ccedil;in 3.5 mm kulaklık jakı oluşturur.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/Telefon/ProductDesc/HBV00000TOMQF-22.png\" /></p>\r\n\r\n<p><img src=\"https://images.hepsiburada.net/assets/Telefon/ProductDesc/HBV00000TOMQF-33.png\" /></p>\r\n\r\n<p><strong>Zengin Bağlantı Olanakları, Gelişmiş Kameralar, Yerleşik Servis ve Uygulamalar</strong></p>\r\n\r\n<ul>\r\n	<li>Redmi Note 9 Pro&#39;nun her biri m&uuml;kemmel &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k sunan gelişmiş &ouml;zelliklere sahip Al 4&#39;l&uuml; kamerası ile en değerleri anları y&uuml;ksek g&ouml;r&uuml;nt&uuml; kalitesiyle &ouml;l&uuml;ms&uuml;zleştirebilirsiniz.&nbsp;64 MP LED flaş &ouml;zellikli ve Ultra y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; birincil kamera, 1/1.72 in&ccedil; sens&ouml;r boyutuna ve F1.89 diyafram a&ccedil;ıklığına sahiptir. 720 piksel ile 2160 piksel(Ultra HD) 4K video kayıt olanağı sağlayan&nbsp;ana kamera ile profesyonel netlikte videolar &ccedil;ekebilir ve harika fotoğraflara imza atabilirsiniz. Ana kamera, dijital g&ouml;r&uuml;nt&uuml; sabitleyici (EIS),Time-lapse video kayıt ve&nbsp;yavaş &ccedil;ekim video kayıt&nbsp;&ouml;zelliklerine sahiptir.</li>\r\n	<li>Ana kamerada bulunan bokeh,&nbsp;Phase Detect Auto-Focus (PDAF), hızlı odaklama, yapay zeka destekli portre modu, HDR, yapay zeka sahne algılama, panorama, otomatik odaklama, coğrafi konum etiketleme, 2 cm makro &ccedil;ekim, seri &ccedil;ekim modu, zamanlayıcı,&nbsp;0.8&mu;m (1.6&mu;m) piksel, 6 elementli&nbsp;lens ve&nbsp;79.8&deg; a&ccedil;ılı &ccedil;ekim modları ile dilediğiniz &ccedil;ekim senaryosunu deneyebilirsiniz.&nbsp;Redmi Note 9 Pro&#39;nun 8 MP Ultra geniş a&ccedil;ılı ikinci arka kamerasıyla ekstra geniş a&ccedil;ı,&nbsp;119&deg; ekstra geniş a&ccedil;ı,&nbsp;1.12&mu;m piksel ve 5 elementli lens modlarında &ccedil;ekim yapabilirsiniz. 1/5 sens&ouml;r boyutuna sahip 5 MP makro &uuml;&ccedil;&uuml;nc&uuml; kamerayla 1.12&mu;m piksel ve makro &ccedil;ekim modlarında fotoğraf &ccedil;ekebilir,&nbsp;1/5 sens&ouml;r boyutuna sahip 2 MP d&ouml;rd&uuml;nc&uuml; arka kamerayla&nbsp;1.75 &micro;m piksel ve bokeh modlarında &ccedil;ekimler yapabilirsiniz.&nbsp;</li>\r\n	<li>16 MP &ouml;n kamera ile 1080 piksel &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte video kaydı&nbsp;yapabilirsiniz. &Ouml;n kamerayla birbirinden g&uuml;zel selfie fotoğrafların yanı sıra portre modu, yapay zeka destekli portre modu, HDR, yapay zeka sahne algılama, yavaş &ccedil;ekim video kaydı, Gesture Shot, yapay zeka iyileştirme, zamanlayıcı, panorama, y&uuml;z algılama,&nbsp;720 piksel 120 fps kayıt ve&nbsp;1.0&micro;m piksel modlarında &ccedil;ekimler yapabilirsiniz.</li>\r\n	<li>Redmi Note 9 Pro modelleri<strong>&nbsp;</strong>kablosuz ve ağ bağlantı olanaklarıyla donatılmıştır. Cihazların sunduğu kablosuz bağlantı olanakları arasında;&nbsp;yerel ağınıza bağlanmak i&ccedil;in&nbsp;MIMO, Dual-Band, Wi-Fi Direct, Wi-Fi Display, Wi-Fi Hotspot, VoWiFi (Voice over Wi-Fi) ve&nbsp;2X MIMO &ouml;zellikli Wi-Fi 5 (802.11 a/b/g/n/ac) kanalı, pos ile &ouml;demelerde kolaylık sağlayan yakın alan iletişimi&nbsp;NFC &ouml;zelliği, kablosuz veri aktarımları i&ccedil;in&nbsp;5.0 versiyon Bluetooth ve kızıl&ouml;tesi ve&nbsp;konum belirlemenize yardımcı olan&nbsp;A-GPS, BDS, Galileo ve GLONASS &ouml;zellikli Navigasyon desteği yer alır.&nbsp;</li>\r\n	<li>Redmi Note 9 Pro, sunduğu ağ bağlantıları sayesinde &ccedil;eşitli iletişim standartlarıyla g&ouml;r&uuml;şme yapma olanağı sunar. SMS ve MMS mesajlaşmaları i&ccedil;in 2G, hızlı internet ve g&ouml;r&uuml;nt&uuml;l&uuml; g&ouml;r&uuml;şmeler i&ccedil;in 3G, &ccedil;ok hızlı internet ve g&ouml;r&uuml;nt&uuml;l&uuml; g&ouml;r&uuml;şmeler i&ccedil;in 4G ve 4,5G desteği cihazların sağladığı&nbsp;ağ bağlantı olanaklarıdır. Y&uuml;ksek kaliteli veri aktarımları i&ccedil;in 2.0 versiyon USB Type-C dışında&nbsp;iki ayrı hat taşımak isteyenler i&ccedil;in &ccedil;ift hat (3 Slot (SIM1+SIM2+MicroSD) &ouml;zelliği ve&nbsp;Nano-SIM (4FF) &ouml;zelliği de diğer bağlantı olanaklarıdır.&nbsp;Redmi Note 9 Pro&#39;nun &ccedil;oklu ortamını,&nbsp;mono hoparl&ouml;r ve ses &ccedil;ıkışı i&ccedil;in 3.5 mm kulaklık jakı oluşturur.&nbsp;</li>\r\n</ul>\r\n', 1600.00, 'rBbCqhadrI4', 'xiaomi,redmi,note,9,pro', 12, '1', '1'),
(17, 14, '2020-09-09 12:24:55', 'LG 49SM8000 49\" 125 Ekran Uydu Alıcılı 4K Ultra HD Smart LED TV', 'lg-49sm8000-49-125-ekran-uydu-alicili-4k-ultra-hd-smart-led-tv', '<p>LG 49SM8000 49&quot; 125 Ekran Uydu Alıcılı 4K Ultra HD Smart LED TV</p>\r\n\r\n<p>Yaşam alanlarının vazge&ccedil;ilmez bir par&ccedil;ası h&acirc;line gelen televizyonlar, gelişen teknoloji sayesinde olağan&uuml;st&uuml; &ouml;zellikler barındırıyor. Artan boyut, &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k ve yapay zek&acirc; &nbsp;teknolojileri, televizyonları &ccedil;ok y&ouml;nl&uuml; kullanım ara&ccedil;ları h&acirc;line getiriyor. Bu sayede kullanıcılar izleme deneyiminin yanı sıra akıllı &ccedil;&ouml;z&uuml;mlerle hayatlarını da&nbsp;kolaylaştırıyor. 49&#39;&#39; LG NanoCell 4K TV,&nbsp;muhteşem ve &ccedil;ok y&ouml;nl&uuml; bir kullanım deneyimi yaşatarak kullanıcıların beğenisini kazanmayı başarıyor. Siz de&nbsp;49&#39;&#39; LG NanoCell 4K TV&#39;ye sahip olarak yaşam alanınızda harika bir deneyime sahip olabilir, izlemeye doyamayacağınız nefes kesen g&ouml;rsellere tanık olabilirsiniz.</p>\r\n\r\n<p>Daha Akıllı, Daha Ger&ccedil;ek&ccedil;i</p>\r\n\r\n<p>LG&#39;nin en g&uuml;ncel teknolojilerinden biri olan NanoCell ve AI Smart gibi &ouml;zellikleri bir araya getiren&nbsp;49&#39;&#39; LG NanoCell 4K TV, t&uuml;m medya &ouml;zelliklerini etkileyici bir şekilde kullanıcılara sunmayı başarıyor. Teknoloji devi LG&#39;nin estetik ve performansı başarılı bir şekilde bir araya getirdiği televizyon, y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k değerlerinin yanı sıra farklı bağlantı se&ccedil;enekleri ve geliştirilmiş yapay zek&acirc; sıyla kullanıcıyla b&uuml;t&uuml;nleşen ve onu yakından tanıyan bir televizyona imza atıyor. Sesli komut sistemi gibi &ouml;zelliklerle kullanımı da son derece kolaylaştıran televizyon, yaşam alanlarını akıllı &ccedil;&ouml;z&uuml;mlerle buluşturarak yalnızca bir televizyon olmaktan sıyrılıyor. Sahip olduğu donanımsal ve yazılımsal &ouml;zelliklerle video d&uuml;zenleme ve oyun gibi alanlarda da son derece y&uuml;ksek performans sergileyen televizyon, farklı alanlarda kullanılabiliyor.</p>\r\n\r\n<p>M&uuml;kemmel İzleme Deneyimine Tanık Olun</p>\r\n\r\n<p>LG&#39;nin NanoCell teknolojisini ve diğer akıllı teknoloji &ccedil;&ouml;z&uuml;mlerini barındıran&nbsp;LG 49SM8000 49&quot; 4K Smart TV, farklı kullanıcı beklentilerini başarılı bir şekilde karşılıyor.</p>\r\n\r\n<p>Nano partik&uuml;ller sayesinde renk saflığını ve canlılığını arttıran LG NanoCell TV, kullanıcılara son derece canlı, ger&ccedil;ek&ccedil;i ve s&uuml;r&uuml;kleyici bir izleme deneyimi sunuyor.</p>\r\n\r\n<p>Nano Accuracy &ouml;zelliği, ekranın her bir noktasında m&uuml;kemmel renk doğruluğu sağlayarak hangi a&ccedil;ıdan olursa olsun, kaliteli bir g&ouml;r&uuml;nt&uuml; sağlıyor.</p>\r\n\r\n<p>Bulunduğu ortamla adeta b&uuml;t&uuml;nleşen LG&nbsp;49SM8000, Nano Bezel tasarımıyla &ccedil;er&ccedil;eve oranını minimuma indirerek estetik ve kullanışlılığı bir araya getiriyor.</p>\r\n\r\n<p>D&uuml;ş&uuml;k gecikme modu ve 4K HDR &ouml;zelliği sayesinde oyuncuların en &ccedil;ok ihtiya&ccedil; duydukları &ouml;zellikleri sunarak oyun deneyimini zenginleştiriyor.</p>\r\n\r\n<p>D&ouml;rt &ccedil;ekirdekli işlemcisi sayesinde paraziti ortadan kaldırır ve kontrastı d&uuml;zenler. Ayrıca d&uuml;ş&uuml;k &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğe sahip g&ouml;r&uuml;nt&uuml;leri &ouml;l&ccedil;eklendirerek g&ouml;r&uuml;nt&uuml; kalitesini arttırıyor.</p>\r\n\r\n<p>AI Smart &ouml;zelliği sayesinde Smart TV&nbsp;&ouml;zelliğini farklı bir boyuta taşıyan televizyonda, sesli kontrol &ouml;zelliği gibi pek &ccedil;ok fonksiyon bulunuyor.</p>\r\n\r\n<p>&Uuml;st&uuml;n Sistem &Ouml;zelliklerine Sahip LG NanoCell 4K TV</p>\r\n\r\n<p>Kullanıcılara sunduğu &ouml;zellikleri y&uuml;ksek performanslı donanımına bor&ccedil;lu olan LG&nbsp;49SM8000 4K Smart TV, kaliteli bir donanıma sahip. LG&#39;nin &ccedil;ığır a&ccedil;an yeniliklerini barındıran televizyon, kullanıcılar i&ccedil;in son derece ideal bir tercihtir.</p>\r\n\r\n<p>LG 49SM8000 Kutu İ&ccedil;eriği:&nbsp;</p>\r\n\r\n<p>LG Smart TV&#39;nin kutu i&ccedil;eriğinde&nbsp;LG 49SM8000 cihaz,&nbsp; stand ayaklarının yanı sıra, kurulum ve kullanım aşamalarında kullanıcılara faydalı bilgiler sağlayan kullanma kılavuzu bulunuyor.</p>\r\n\r\n<p>Teknik &Ouml;zellikleri:</p>\r\n\r\n<p>Ekran Boyutu: 49&#39;&#39; -125 Cm - Edge LED</p>\r\n\r\n<p>Smart TV: WebOS -&nbsp;AI Smart</p>\r\n\r\n<p>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k: 4K UHD -&nbsp;3840 x 2160&nbsp;</p>\r\n\r\n<p>Bağlantı Noktaları: Bluetooth - WiFi - LAN - 2 x USB - 4 x HDMI</p>\r\n\r\n<p>Ses Teknolojisi:&nbsp;DTS Virtual: X -&nbsp;Ultra Surround</p>\r\n\r\n<p>&Ccedil;er&ccedil;eve Teknolojisi: Nano Bezel</p>\r\n\r\n<p>Faydalı &Ouml;zellikler Sayesinde Deneyiminizi Zenginleştirin</p>\r\n\r\n<p>49&#39;&#39; LG NanoCell 4K TV, standart televizyon izleme deneyiminin yanı sıra kullanıcılara &ouml;zelleştirilebilir pek &ccedil;ok fonksiyona da erişim sağlıyor. Smart TV &ouml;zelliği sayesinde online i&ccedil;erik platformları ve uygulamaları kullanma olanağı tanıyan&nbsp;televizyon, eğlenceli vakit ge&ccedil;irmek i&ccedil;in pek &ccedil;ok se&ccedil;enek sunuyor. AI Smart &ouml;zelliği sayesinde kullanıcı alışkanlıklarını tanıyan ve buna uygun olarak kullanıcıya &ouml;nerilerde bulunan televizyon, kişiye &ouml;zel kullanım deneyimi sunarak harika bir deneyim sağlıyor. Bu &ouml;zellikler i&ccedil;in aktif bir internet bağlantısına ihtiya&ccedil; duyan televizyon, platformlar i&ccedil;in aboneliğe de ihtiya&ccedil; duyabiliyor.&nbsp;</p>\r\n', 3250.00, 'aNiEreHsISQ', 'lg,49,125,4K', 5, '1', '1'),
(18, 15, '2020-09-09 12:28:49', 'Samsung RT46K6000S8/TR A+ 468 lt No-Frost Buzdolabı ', 'samsung-rt46k6000s8-tr-a-468-lt-no-frost-buzdolabi', '<p>* L&uuml;tfen yetkili servisten &ouml;nce &uuml;r&uuml;n ambalaj ve kutusunu a&ccedil;mayınız. Yetkili servis gelmeden kutuyu a&ccedil;manız durumunda &uuml;r&uuml;n garanti dışı kalacaktır.<br />\r\n&nbsp;</p>\r\n\r\n<p>D&ouml;n&uuml;şt&uuml;r&uuml;lebilir dondurucusu ile kullanıcılara olduk&ccedil;a esnek bir kullanım fırsatı sunan Samsung RT46K6000S8/TR Twin Cooling Plus A+ 468 Lt No Frost buzdolabı,&nbsp;g&uuml;&ccedil;l&uuml; soğutma ve dondurma performansıyla adından s&ouml;z ettiriyor. A+ enerji sınıfı buzdolabı, enerji verimliliği konusunda tasarruflu bir model arayan kullanıcılar i&ccedil;in son derece cazip bir g&ouml;r&uuml;nt&uuml; sergiliyor. Geniş hacimli olmasının yanı sıra isteğe bağlı olarak hacmi daha da genişletilebilen Samsung buzdolabı, kullanıcılar ekstra depolama alanına ihtiya&ccedil; duyduğunda kesin ve pratik bir &ccedil;&ouml;z&uuml;m sağlamış oluyor.</p>\r\n\r\n<p>&Uuml;st&uuml;n&nbsp;Teknolojisiyle Mutfaklara Konfor Katan Buzdolabı</p>\r\n\r\n<p>&bull; Twin Cooling Plus teknolojisi&nbsp;b&ouml;lmeleri ayrı ayrı soğutarak gıdaların kokularının birbirine karışmasını &ouml;nl&uuml;yor. Nem oranını %70 seviyesine &ccedil;ıkararak gıdaların &ccedil;ok daha uzun s&uuml;re taze kalmasını&nbsp;ve lezzetini&nbsp;korumasını&nbsp;sağlıyor. Kuruma gibi problemler ortadan kalkmış oluyor.</p>\r\n\r\n<p>&bull; Buzdolabının esnek bir kullanım olanağı sunan dondurucu b&ouml;lmesi ihtiya&ccedil; duyulduğunda bir soğutucuya d&ouml;n&uuml;şt&uuml;r&uuml;lebiliyor. B&ouml;ylece ek depolama alanı yaratılmış oluyor. Dondurucu b&ouml;lmesi&nbsp;kullanılmayacağı d&ouml;nemlerde ya da enerji tasarrufunu maksimum seviyeye &ccedil;ıkarmak istendiğinde tamamen kapatılabiliyor.</p>\r\n\r\n<p>&bull; T&uuml;m noktalara rahat bir şekilde erişebilmek i&ccedil;in tasarlanmış olan kayan raf sayesinde kullanım rahatlığı yukarılara &ccedil;ıkıyor. Arkada ya da k&ouml;şede kalmış olan her gıdaya kolayca ulaşılabiliyor.</p>\r\n\r\n<p>&bull; Dijital Inverter teknolojisi sayesinde kompres&ouml;r hızı 7 farklı kademede otomatik olarak ayarlanıyor. Enerji t&uuml;ketimini minimum seviyeye d&uuml;ş&uuml;ren teknoloji, uzun &ouml;m&uuml;rl&uuml; bir yapı ve olduk&ccedil;a sessiz bir &ccedil;alışma sağlıyor.</p>\r\n\r\n<p>&bull; Daha az enerji t&uuml;ketimiyle daha parlak ve g&uuml;&ccedil;l&uuml; bir aydınlatma yapan LED aydınlatma sistemi&nbsp;t&uuml;m alanın eşit bir bi&ccedil;imde aydınlatılmasını m&uuml;mk&uuml;n kılıyor.</p>\r\n\r\n<p>&bull; Kırılmaya dayanıklı temperli cam raf tasarımı&nbsp;soğutucu ve dondurucu b&ouml;lmelerinde yer alan rafların ağır gıdaları da rahatlıkla depolamasına olanak veriyor.</p>\r\n\r\n<p>Pratik Bir Kullanım Olanağı Sunan &Ouml;zellikler</p>\r\n\r\n<p>&bull; No Frost &ouml;zelliği bulunan Samsung buzdolabı modeli, buzlanma meydana gelmesine izin vermiyor.</p>\r\n\r\n<p>&bull; Deodorize &ouml;zelliği ve aktif karbon filtre&nbsp;sayesinde s&uuml;rekli temiz kalan hava, zararlı bakteri ve mikroorganizmalardan arındırılıyor. Filtreleme sayesinde&nbsp;k&ouml;t&uuml; koku oluşumu da engellenmiş oluyor.</p>\r\n\r\n<p>&bull; Power Cool &ouml;zelliği&nbsp;hızlı bir şekilde soğutulması gereken besinleri&nbsp;en kısa s&uuml;rede soğutmaya yarıyor. B&ouml;ylece bekleme s&uuml;resi minimum seviyeye inmiş oluyor.</p>\r\n\r\n<p>&bull; Power Freze &ouml;zelliği&nbsp;gıdaları maksimum hızda dondurmayı sağlıyor. Kullanıcılar etkili fonksiyonu kullanarak hızlı bi&ccedil;imde buz &uuml;retme şansına da sahip bulunuyor.</p>\r\n\r\n<p>&bull; Buzdolabı sıcaklığının diğer b&ouml;l&uuml;mlerden daha soğuk olduğu Fresh Room b&ouml;lmesi&nbsp;et ve balık gibi &ccedil;abuk bozulabilen besinler i&ccedil;in tazeliklerinin korunabildiği ideal bir saklama alanı oluyor.</p>\r\n\r\n<p>&Ouml;ne &Ccedil;ıkan Teknik &Ouml;zellikler</p>\r\n\r\n<p>&Uuml;r&uuml;n Tipi: &Ccedil;ift Kapılı</p>\r\n\r\n<p>Enerji Sınıfı: A+</p>\r\n\r\n<p>Br&uuml;t Hacim: 468 Lt</p>\r\n\r\n<p>Yıllık Enerji T&uuml;ketimi: 298 kWh</p>\r\n\r\n<p>Ses Seviyesi: 41 dB</p>\r\n\r\n<p>Dondurucu B&ouml;lme Hacmi: 111 Lt</p>\r\n\r\n<p>&Uuml;r&uuml;n Boyutları: 182.5 x 70 x 63.9 cm</p>\r\n\r\n<p>Geleceği Şekillendirme Vizyonuyla Hareket Eden Samsung</p>\r\n\r\n<p>1969 senesinde kurulan G&uuml;ney Koreli teknoloji şirketi Samsung, televizyonla başladığı &uuml;retim yolculuğuna &ccedil;amaşır makinesi ve buzdolabıyla devam etti. Bir yandan &uuml;r&uuml;n yelpazesini genişleten firma, diğer taraftan yurtdışına &uuml;r&uuml;n ithal etmeye başladı. Teknolojinin bir&ccedil;ok alanında &uuml;retim ger&ccedil;ekleştiren Samsung, hızlı ve istikrarlı bir b&uuml;y&uuml;menin sonunda d&uuml;nyanın en değerli şirketlerinden biri haline geldi.&nbsp;</p>\r\n\r\n<p>Teknolojisiyle geleceği şekillendirme vizyonu ortaya koyan ve &ouml;nceliğini insan olarak belirleyen Samsung, akıllı &ouml;zelliklere sahip &uuml;r&uuml;nler &uuml;reterek kullanıcılara hayatlarını kolaylaştıracak &ccedil;&ouml;z&uuml;mler sunuyor. T&uuml;rkiye pazarında da olduk&ccedil;a aktif olan ve kullanıcıların yoğun şekilde ilgi g&ouml;sterdiği teknoloji devi, satış adedi itibarıyla zirvedeki markalar arasında yer alıyor.</p>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\nSadece Twin Cooling Plus, geleneksel TMF&#39;de% 30&#39;a kıyasla, taze gıdaları buzdolabında% 70 nemle muhafaza etmek i&ccedil;in uygun bir ortam yaratır. Dolayısıyla, malzemeleri kurumadan uzun s&uuml;re taze tutar. Lezzetli, kokusuz dondurulmuş gıdalar elde edebilirsiniz. Twin Cooling Plus sistemi, buzdolabından dondurucuya uzanan beklenmedik kokuları durdurmak i&ccedil;in b&ouml;lmeleri ayrı ayrı soğutur. Dolayısıyla dondurulmuş gıdalar orijinal lezzetinden daha fazla korur.<br />\r\n<br />\r\nİsteğe bağlı 5 farklı mod &ouml;zelliği mevcuttur. Farklı mevsimler veya &ouml;zel g&uuml;nler i&ccedil;in saklamak zorunda olduğunuz t&uuml;m taze yiyecekleri saklamak i&ccedil;in dondurucunuzu buzdolabına kolayca eşleyebilirisniz. Veya spesifikasyona bağlı olarak her zamankinden tasarruf etmek i&ccedil;in kapalı moduna ge&ccedil;in. Buz ve enfes i&ccedil;ecekleri saklamanıza yardımcı olur. Hızlı dondurmak veya soğutmak i&ccedil;in yoğun soğuk hava sunar. Power Cool, bir d&uuml;ğmeye basarak yiyecekleri ve i&ccedil;ecekleri &ccedil;abucak soğuturken Power Freeze, dondurulmuş gıdaları dondurma veya sıkılaştırma ve buz yapma konusunda harikadır.<br />\r\n<br />\r\nDaha sessizce &ccedil;alışır ve daha az enerji kullanır. Dijital İnvert&ouml;r Teknolojisi, 7 kademedeki soğutma talebine yanıt olarak kompres&ouml;r hızını otomatik olarak ayarlar. Daha az enerji kullanır, g&uuml;r&uuml;lt&uuml;y&uuml; en aza indirir ve daha uzun &ouml;m&uuml;rl&uuml; performans i&ccedil;in aşınmayı ve yıpranmayı azaltır.<br />\r\n<br />\r\nHavayı hijyenik olarak temiz ve taze tutar. Bakteriyel koruyucu buzdolabını temiz ve hijyenik tutar. Hava Aktif Karbon filtresi i&ccedil;inden ge&ccedil;irilir, bu nedenle s&uuml;rekli olarak sterilize edilir ve deodorize edilirken bakteri &ouml;nleyici bir elek bakterileri ortadan kaldırır. Havayı hijyenik olarak temiz ve taze tutar. İ&ccedil;indeki her şeyi a&ccedil;ık&ccedil;a g&ouml;r&uuml;rs&uuml;n&uuml;z ve bu size kullanım kolaylığı sağlar. Y&uuml;ksek verimli LED aydınlatma, geleneksel aydınlatmadan daha ince, daha serindir ve daha fazla enerji verimlidir. &Uuml;stte ve yanda yer alan bu &uuml;r&uuml;n, her k&ouml;şeyi g&uuml;zelce ve parlak şekilde aydınlatıyor ve daha iyi bir g&ouml;r&uuml;n&uuml;rl&uuml;k sağlıyor.<br />\r\n<br />\r\nSamsung&#39;un, stilleri yeni bir d&uuml;zeye y&uuml;kselten en &uuml;st d&uuml;zey buzdolabıdır. &Ccedil;ift taraflı, yan taraftaki buzdolabı kapaklarının &uuml;st kısmı, orta b&ouml;l&uuml;m &ccedil;ekmeceyi 4 &ouml;nceden ayarlanmış sıcaklık se&ccedil;eneği ve derin &ccedil;ekmece &ccedil;ekmecesi ile otomatik &ccedil;ekme i&ccedil; &ccedil;ekmecesi ile a&ccedil;tığı Samsung 510 litrelik depolama alanı sağlar. Buz &ccedil;&ouml;zme, donma gerektirmeyen teknoloji sayesinde ge&ccedil;mişin bir işi ve hem buzdolabını hem de derin dondurucuyu ayrı ayrı soğutmak i&ccedil;in ayrı motorlar kullanan Samsung&#39;un Twin Cooling Plus sistemiyle birlikte geliyor. Buzdolabı havası, bozulmaları daha uzun s&uuml;re taze tutmak i&ccedil;in &ccedil;ok y&uuml;ksek bir nemde tutulur ve kurutucu dondurucu havanın daha iyi tatma gıdaları i&ccedil;in daha az dondurucu yanması yaratması sağlanır.<br />\r\n<br />\r\nFiltrelenmiş su ve buz dağıtıcılı sıhhi tesisat ile bu Samsung , yoğun bir evin t&uuml;m soğutma ihtiya&ccedil;larını karşılamaktadır. Bu, uyması gereken bir fiyatla tarz ve maddenin yerli bir aletidir. ABD tarzı bu buzdolabı olan Samsung&#39;un bu modeli daha geleneksel bir &uuml;stten montaj buzdolabı ve alt dondurucu i&ccedil;in geleneksel yan yana kapı d&uuml;zenlemesinden ka&ccedil;ınmıştır. En &uuml;stteki &ccedil;ift a&ccedil;ılımlı Fransız kapısı, ABD&#39;ye kıyasla soğutma i&ccedil;in kullanılabilir genişliği etkili bir şekilde ikiye katlayarak en b&uuml;y&uuml;k pizza veya T&uuml;rkiye&#39;de eşyalarınızı buzdolabında bir bakışta g&ouml;rebilmenizi sağlar. Samsung RT46K6000S8/TR fiyatı bu &uuml;st seviye &ouml;zelliklerine karşın uygun ve b&uuml;t&ccedil;e dostudur.<br />\r\n<br />\r\nMutfak hattınızı sağlam tutmak i&ccedil;in standart bir mutfak tezgahının y&uuml;ksekliğine hizalanacak şekilde tasarlanmış bir orta y&uuml;kseklikte sığ &ccedil;ekmece bulunmaktadır. Tabanda &ccedil;ekilmesi kolay ve &ccedil;ok derin dondurucu &ccedil;ekmecesi bulunmaktadır. Zarif ve kolay a&ccedil;ılan kulplar yuvarlatılmış ve makinenin hatlarına akıyor. Samsung RT46K6000S8/TR &ouml;zellikleri bir hayli g&ouml;z doldurucudur, dokunmaya duyarlı ışıklar ve saniyeler sonra kapanır dokunmaya duyarlı kontrol paneli ve mavi ışıklı ekran, &ccedil;ağdaş bir g&ouml;r&uuml;n&uuml;m sağlar.</p>\r\n', 2271.00, 'LMC4PQ6AYec', 'samsung,buzdolobı,RT46K6000S8', 5, '1', '1'),
(19, 16, '2020-09-09 12:33:51', 'Canon Eos 250D 18-55MM Iii', 'canon-eos-250d-18-55mm-iii', '<p>Canon Eos 250D 18-55MM Iii (Canon Eurasia Garantili )</p>\r\n\r\n<p>Boyutu k&uuml;&ccedil;&uuml;k, performansı b&uuml;y&uuml;k EOS 250D&#39;nin taşınabilir g&ouml;vdesinin i&ccedil;inde bulunan 24,1 megapiksel sens&ouml;r ve DIGIC 8 g&ouml;r&uuml;nt&uuml; işlemcisi, hareket halinde m&uuml;kemmel sonu&ccedil;lar sağlar. Optik viz&ouml;r, net ve ger&ccedil;ek zamanlı bir g&ouml;r&uuml;n&uuml;m sunar. EOS 250D Kompakt DSLR D&uuml;nyanın hareket edebilen ekrana sahip* en hafif DSLR fotoğraf makinesi olan EOS 250D&#39;yi, yanınızda daha sık taşıyıp daha &ccedil;ok yere g&ouml;t&uuml;rerek yaratıcılığınızın harekete ge&ccedil;tiği anlarda m&uuml;kemmel sonu&ccedil;lar alırsınız. EOS 250D DSLR camera with optical viewfinder Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; &ccedil;arpıcı g&ouml;r&uuml;nt&uuml;ler ve 4K filmler Zengin renklerle dolu ve son derece net 24,1 megapiksel fotoğraflar ve 4K filmler &ccedil;ekin. APS-C boyutlu sens&ouml;r ve DIGIC 8 işlemci, d&uuml;ş&uuml;k ışıkta bile m&uuml;kemmel sonu&ccedil;lar sağlar. 4K KALİTESİ HAKKINDA DAHA FAZLA BİLGİ EDİNİN High resolution image from EOS 250D Hayatınızla bağlantılı G&ouml;r&uuml;nt&uuml;leri aileniz ve arkadaşlarınızla paylaşmak &ccedil;ok kolaydır. Bunun i&ccedil;in EOS 250D&#39;yi Bluetooth** kullanarak akıllı telefonunuza veya tablet bilgisayarınıza* bağlamanız yeterli. Gerisini fotoğraf makinesinin dahili Wi-Fi bağlantısı halleder. Share images with EOS 250D Odağınızı koruyun, net g&ouml;r&uuml;nt&uuml;ler edinin İster o anı optik viz&ouml;r ile 5 fps&#39;de yakalayın ister Otomatik G&ouml;z Odaklaması &ouml;zellikli Dual Pixel CMOS AF Canlı Kontrol kullanın; daima son derece net sonu&ccedil;lar elde edersiniz. EOS 250D with Vari-Angle screen Sade mi gelişmiş mi? Bas-&ccedil;ek sadeliğinin keyfini &ccedil;ıkarın ve Rehberli Kullanıcı Arabirimi ve Yaratıcı Asistan modu ile yaratıcılığınızı konuşturun. Hareket edebilen dokunmatik ekran, alışılmadık a&ccedil;ıları ve selfie&#39;leri kolay hale getirir. EOS 250D touchscreen Shop now EOS 250D EOS 250D sizin i&ccedil;in en uygun fotoğraf makinesi mi? Satın alma se&ccedil;eneklerini hemen keşfedin Videoyu İzleyin Teknik &Ouml;zellikler 24,1 megapiksel Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; fotoğraflar Optik viz&ouml;r Her şeyi olduğu gibi g&ouml;r&uuml;n 4K filmler &Uuml;st&uuml;n netlik i&ccedil;in Dual Pixel CMOS AF Canlı Kontrol kullanırken m&uuml;kemmel AF Hareket edebilen ekran Selfie&#39;ler &ccedil;ekin ve farklı a&ccedil;ılarla yaratıcılığınızı konuşturun Rehberli Kullanıcı Arabirimi Fotoğraf makinenizi &ccedil;ekim yaptık&ccedil;a tanıyın Wi-Fi ve Bluetooth&reg;** Akıllı cihazlara kablosuz bağlantı Yaratıcı Asistan Yeni g&ouml;r&uuml;n&uuml;mler deneyin ve fotoğraflarınızı geliştirin T&uuml;m teknik &ouml;zelliklere bakın Standart zum lensli EOS 250D</p>\r\n', 3245.00, 'bkKH-0kzw6s', 'canon,eos,250d', 10, '1', '1'),
(20, 17, '2020-09-09 12:36:20', 'Philips 5 Bar HI5916/20 Buhar Kazanlı Ütü ', 'philips-5-bar-hi5916-20-buhar-kazanli-utu', '<p>Philips 5 Bar HI5916/20 Buhar Kazanlı &Uuml;t&uuml;</p>\r\n\r\n<p>Philips &Ccedil;ıkarılabilir su haznesi 1.1 lt &Ccedil;ıkarılabilir Su Haznesi G&uuml;&ccedil;l&uuml; Dikey Buhar Hafif Tasarım 180 g Buhar G&uuml;c&uuml; 100 g/dak s&uuml;rekli buhar &Uuml;t&uuml;leme sırasında su dolumu yapılabilir Kire&ccedil; temizleme zamanını ses ve ışık ile hatırlatan Smart Calc Clean sistemi Seramik taban Hızlı Isınma s&uuml;resi 2 dakika 5 bar buhar basıncı 2 yıl garantili</p>\r\n', 450.00, 'lbBSrrsUtCk', 'philips,buhar,kazanlı,ütü', 25, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(75, 14, 'dimg/urun/3028930029224602605801.jpg', 0),
(76, 14, 'dimg/urun/2628227882265922002602.jpg', 0),
(77, 14, 'dimg/urun/2355525785226522672504.jpg', 0),
(78, 14, 'dimg/urun/2124722853312022825203.jpg', 0),
(79, 12, 'dimg/urun/27782307353056821218premium-egitim.jpg', 0),
(84, 15, 'dimg/urun/2963421372201572674610443423481906.jpg', 0),
(85, 15, 'dimg/urun/2588731012202072883710443423547442.jpg', 0),
(86, 15, 'dimg/urun/2347425481257772589910443423449138.jpg', 0),
(87, 16, 'dimg/urun/28867280093178324914xiaomi.jpeg', 0),
(88, 16, 'dimg/urun/25948252162659529707xioami1.jpeg', 0),
(89, 17, 'dimg/urun/22125258592987124321lg.jpeg', 0),
(90, 17, 'dimg/urun/29493278303176329997lg2.jpeg', 0),
(91, 18, 'dimg/urun/30394269052055629308samsung.jpeg', 0),
(92, 18, 'dimg/urun/31433285202972427487samsung2.jpeg', 0),
(93, 19, 'dimg/urun/31127275142437524181canon1.jpeg', 0),
(94, 19, 'dimg/urun/26445249922525528215canon.jpeg', 0),
(95, 20, 'dimg/urun/21483254303018229664philips.jpeg', 0),
(96, 20, 'dimg/urun/22200319292481631971philips1.jpeg', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`) VALUES
(1, 151, 9, 'asfsdfsdfsdf', '2017-07-21 17:14:56', '0'),
(2, 151, 0, 'ssadasdasdasdasdasdasd', '2017-07-21 17:15:45', '1'),
(3, 151, 9, 'asdsadasdasdasdasdasdasd asdasd', '2017-07-21 17:17:43', '1'),
(4, 151, 9, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:19:17', '1'),
(5, 151, 9, 'fghfghfhfgh', '2017-07-21 17:19:57', '1'),
(6, 151, 0, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:21:48', '1'),
(7, 151, 0, 'fghfghfgh', '2017-07-21 17:25:08', '1'),
(8, 151, 0, 'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.', '2017-07-21 17:40:07', '1'),
(11, 153, 5, 'Yorum 1', '2017-07-31 17:52:22', '1'),
(12, 155, 17, 'Çok güzel bir televizyon', '2020-09-09 12:30:49', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750020;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
