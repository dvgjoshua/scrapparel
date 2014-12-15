-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 15 Des 2014 pada 13.47
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `menshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(1, 'Paypal', '126.00.05244.71.9', 'Niken Sulanjari', 'paypal.png'),
(5, 'Visa', '123.456.332.223', 'Faiza Sidqi', 'visa.png'),
(6, 'Mastecard', '3356.12233.123', 'Ilamsyah', 'mastercard.png'),
(7, 'Discover', '999.1234.4456', 'Fathan', 'discover.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(15, 'Contoh Iklan', 'http://www.iklan.com', 'contohiklan.jpg', '2011-03-13'),
(16, 'I Love Indonesia', 'http://iloveindonesia.com', 'ilove_indonesia.jpg', '2011-03-29'),
(17, 'jardiknas', 'jardiknas.co.id', 'jardiknas.jpg', '2013-11-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(10, 'Katalog 001', 'test.jpg', '2011-01-31', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `deskripsi`, `tgl_posting`) VALUES
(21, 'Header1', '', 'banner1.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at nunc a magna tincidunt placerat. In hac habitasse platea dictumst. Donec in tellus libero. Lorem ipsum dolor sit amet, consect', '2011-03-29'),
(22, 'Header2', '', 'banner2.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at nunc a magna tincidunt placerat. In hac habitasse platea dictumst. Donec in tellus libero. Lorem ipsum dolor sit amet, consect', '2011-03-29'),
(23, 'Header3', '', 'banner1.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at nunc a magna tincidunt placerat. In hac habitasse platea dictumst. Donec in tellus libero. Lorem ipsum dolor sit amet, consect', '2011-03-29'),
(24, 'Header4', '', 'banner2.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at nunc a magna tincidunt placerat. In hac habitasse platea dictumst. Donec in tellus libero. Lorem ipsum dolor sit amet, consect', '2011-03-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(16, 'ACCESSORIES', 'accessories'),
(15, 'SHOES', 'shoes'),
(14, 'SINGLE T-SHIRT', 'single-tshirt'),
(25, 'COUPLE T-SHIRT', 'couple-tshirt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `nama_komentar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_produk`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(77, 54, 'Rizal Faizal', 'teraskreasi.com', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus. Maecenas nulla felis, commodo et adipiscing vel, accumsan eget augue. Morbi volutpat iaculis molestie. ', '2011-02-23', '23:39:46', 'Y'),
(79, 561, 'ilamsyah', 'ilamsyah.ac.id', ' In id adipiscing diam. Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus. Maecenas nulla felis, commodo et adipiscing vel, accumsan eget augue morbi volutpat. ', '2013-11-12', '11:46:27', 'Y'),
(82, 561, 'faiza', 'jardiknas.co.id', ' salam  &#039;alaykum   ', '2013-12-01', '11:11:51', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(5, 5, 'Jakarta', 15000),
(6, 6, 'Bandung', 15000),
(7, 5, 'Surabaya', 13000),
(8, 5, 'Semarang', 17500),
(9, 6, 'Medan', 20000),
(10, 6, 'Aceh', 25000),
(11, 5, 'Banjarmasin', 18500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
  `id_kustomer` int(5) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(5) NOT NULL,
  `aktif` enum('N','Y') DEFAULT 'Y',
  PRIMARY KEY (`id_kustomer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `password`, `nama_lengkap`, `alamat`, `email`, `telpon`, `id_kota`, `aktif`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'Lukmanul Hakim', 'Jl. Prof. Dr. Soepomo No. 178, Tebet, Jakarta Timur 17280', 'algosigma@gmail.com', '081804396000', 1, 'Y'),
(2, 'bf91184832ff2e9b92e94ef61ad52e53', 'ilamsyah', 'Kp. sawah dalam no 56', 'ilamsyah@yahoo.com', '02197604687', 9, 'Y'),
(3, '0e987a3e88814566657aed9e53e38328', 'ilamsyah', 'Kp. sawah dalam no 67 kel. panunggangan utara', 'ilamsyah@ymail.com', '02197604687', 1, 'N'),
(4, '5f4dcc3b5aa765d61d8327deb882cf99', 'faiza', 'Kp. sawah dalam no 67', 'faiza_sidqi@gmail.com', '087771063961', 9, 'Y'),
(8, '5f4dcc3b5aa765d61d8327deb882cf99', 'Lyra virna', 'BSD City', 'lyra82@gmail.com', '087771063961', 5, 'Y'),
(10, '0e1b700dae4829bf9e1b9a43279b1144', 'Maulina', 'Bandung', 'maaaul@yahoo.co.id', '087824170407', 6, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_main`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data untuk tabel `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(10, 'BERANDA', 'index.php', 'Y'),
(11, 'PROFIL ', 'profil-kami.html', 'Y'),
(12, 'PRODUK', 'semua-produk.html', 'Y'),
(13, 'KERANJANG BELANJA', 'keranjang-belanja.html', 'Y'),
(14, 'CARA PEMBELIAN', 'cara-pembelian.html', 'Y'),
(15, 'DOWNLOAD KATALOG', 'semua-download.html', 'Y'),
(16, 'HUBUNGI KAMI', 'hubungi-kami.html', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=119 ;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 19),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class="MsoNormal">', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '<!--[if gte mso 9]><xml>', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<ol><span class="center_content2"><li>Klik pada tombol&nbsp;<span style="font-weight: bold">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style="font-weight: bold">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold">Proses</span>,\r\n maka akan tampil data pembeli beserta produk yang dipesannya (jika \r\ndiperlukan catat nomor ordernya). Dan juga ada total pembayaran serta \r\nnomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. </li></span></ol><w:worddocument></w:worddocument>', 'gedung.jpg', 'admin', 'Y', 10),
(47, 'Edit Link Terkait', '?module=banner', '<w:View>Normal</w:View>', '', 'user', 'Y', 13),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '<w:Zoom>0</w:Zoom>', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '<w:Compatibility>', '', 'user', 'Y', 1),
(53, 'User Yahoo Messenger', '?module=ym', '<w:BreakWrappedTables/>', '', 'user', 'Y', 15),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '<w:SnapToGridInCell/>', '', 'user', 'Y', 14),
(66, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '<w:WrapTextWithPunct/>', 'hai.jpg', 'user', 'Y', 12),
(73, '', '', 'margin:0cm;', '', 'user', 'Y', 0),
(74, '', '', 'margin-bottom:.0001pt;', '', 'user', 'Y', 0),
(75, '', '', 'mso-pagination:widow-orphan;', '', 'user', 'Y', 0),
(76, '', '', 'font-size:12.0pt;', '', 'user', 'Y', 0),
(77, '', '', 'font-family:"Times New Roman";', '', 'user', 'Y', 0),
(78, '', '', 'mso-fareast-font-family:"Times New Roman";}', '', 'user', 'Y', 0),
(79, '', '', '@page Section1', '', 'user', 'Y', 0),
(80, '', '', '{size:612.0pt 792.0pt;', '', 'user', 'Y', 0),
(81, '', '', 'margin:72.0pt 90.0pt 72.0pt 90.0pt;', '', 'user', 'Y', 0),
(82, '', '', 'mso-header-margin:35.4pt;', '', 'user', 'Y', 0),
(83, '', '', 'mso-footer-margin:35.4pt;', '', 'user', 'Y', 0),
(84, '', '', 'mso-paper-source:0;}', '', 'user', 'Y', 0),
(85, '', '', 'div.Section1', '', 'user', 'Y', 0),
(86, '', '', '{page:Section1;}', '', 'user', 'Y', 0),
(87, '', '', '-->', '', 'user', 'Y', 0),
(88, '', '', '<!--[if gte mso 10]>', '', 'user', 'Y', 0),
(89, '', '', '<style>', '', 'user', 'Y', 0),
(90, '', '', '/* Style Definitions */', '', 'user', 'Y', 0),
(91, '', '', 'table.MsoNormalTable', '', 'user', 'Y', 0),
(92, '', '', '{mso-style-name:"Table Normal";', '', 'user', 'Y', 0),
(93, '', '', 'mso-tstyle-rowband-size:0;', '', 'user', 'Y', 0),
(94, '', '', 'mso-tstyle-colband-size:0;', '', 'user', 'Y', 0),
(95, '', '', 'mso-style-noshow:yes;', '', 'user', 'Y', 0),
(96, '', '', 'mso-style-parent:"";', '', 'user', 'Y', 0),
(97, '', '', 'mso-padding-alt:0cm 5.4pt 0cm 5.4pt;', '', 'user', 'Y', 0),
(98, '', '', 'mso-para-margin:0cm;', '', 'user', 'Y', 0),
(99, '', '', 'mso-para-margin-bottom:.0001pt;', '', 'user', 'Y', 0),
(100, '', '', 'mso-pagination:widow-orphan;', '', 'user', 'Y', 0),
(101, '', '', 'font-size:10.0pt;', '', 'user', 'Y', 0),
(102, '', '', 'font-family:"Times New Roman";}', '', 'user', 'Y', 0),
(103, '', '', '</style>', '', 'user', 'Y', 0),
(104, '', '', '<![endif]--><font size="2">ArtFashion adalah toko fashion online, yang menyediakan segala kebutuhan fashion anda. ArtFashion ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja fashion berkualias dengan harga yang terjangkau.', '', 'user', 'Y', 0),
(105, '', '', '</font>', '', 'user', 'Y', 0),
(106, '', '', '</p>', '', 'user', 'Y', 0),
(107, '', '', '<p class="MsoNormal">', '', 'user', 'Y', 0),
(108, '', '', '<font size="2">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />', '', 'user', 'Y', 0),
(109, '', '', '</font>', '', 'user', 'Y', 0),
(110, '', '', '</p>', '', 'user', 'Y', 0),
(111, '', '', '<p class="MsoNormal">', '', 'user', 'Y', 0),
(112, '', '', '<font size="2">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembuatan/pemesanan fashion sesuai design/pola&nbsp; yang anda inginkan.<br />', '', 'user', 'Y', 0),
(113, '', '', '</font>', '', 'user', 'Y', 0),
(114, '', '', '</p>', '', 'user', 'Y', 0),
(115, '', '', '<p class="MsoNormal">', '', 'user', 'Y', 0),
(116, '', '', '<font size="2">Akhirnya, kami mengucapkan terima kasih atas kunjungan anda di ArtFashion.', '', 'user', 'Y', 0),
(117, '', '', '</font>', '', 'user', 'Y', 0),
(118, '', '', '</p>', '', 'user', 'Y', 0),
(57, 'Edit Rekening Bank', '?module=bank', '<w:UseAsianBreakRules/>', '', 'user', 'Y', 16),
(58, 'Edit Selamat Datang', '?module=welcome', '</w:Compatibility>', 'gedung.jpg', 'user', 'Y', 6),
(71, '', '', 'p.MsoNormal, li.MsoNormal, div.MsoNormal', '', 'user', 'Y', 0),
(72, '', '', '{mso-style-parent:"";', '', 'user', 'Y', 0),
(59, 'Ganti Header', '?module=header', '<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>', '', 'user', 'Y', 18),
(61, 'Edit Menu Utama', '?module=menuutama', '</w:WordDocument>', '', 'user', 'Y', 2),
(62, 'Edit Sub Menu', '?module=submenu', '</xml><![endif]-->', '', 'user', 'Y', 3),
(63, 'Edit Download Katalog', '?module=download', '<!--', '', 'user', 'Y', 17),
(70, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '/* Style Definitions */', '', 'user', 'Y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL AUTO_INCREMENT,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kustomer` int(5) NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=49 ;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `status_order`, `tgl_order`, `jam_order`, `id_kustomer`) VALUES
(48, 'Baru', '2014-12-02', '06:33:37', 2),
(47, 'Baru', '2014-12-02', '05:56:31', 2),
(46, 'Lunas/Terkirim', '2014-12-10', '05:30:34', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(47, 561, 1),
(46, 560, 1),
(46, 561, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL,
  PRIMARY KEY (`id_orders_temp`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=298 ;

--
-- Dumping data untuk tabel `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(297, 610, '5953o1eflm68g1alr0m0l4uqu5', 3, '2014-12-15', '19:24:34', 5),
(296, 617, '5953o1eflm68g1alr0m0l4uqu5', 1, '2014-12-15', '19:08:30', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Bagus', 'Jawaban', 27, 'Y'),
(2, 'Lumayan', 'Jawaban', 80, 'Y'),
(3, 'Tidak', 'Jawaban', 21, 'Y'),
(8, 'Bagaimana tampilan web ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `review` text,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=633 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`, `status`, `review`) VALUES
(581, 14, 'BELUM MAKAN', 'belum-makan', '', 110000, 0, '0.00', '2014-11-14', '68belum-makan.jpg', 1, 0, NULL, NULL),
(617, 15, 'CATHERINE ZEBRA', 'catherine-zebra', '', 265000, 5, '0.00', '2014-12-14', '84catherine-zebra-jones.jpg', 1, 0, NULL, NULL),
(610, 25, 'SUPIR', 'supir', '', 110000, 5, '0.00', '2014-12-05', '23supir-majikan-couple.jpg', 1, 0, NULL, NULL),
(611, 25, 'SAMBAL', 'sambal', '', 110000, 5, '0.00', '2014-12-05', '38sambal-sambal-tomat.jpg', 1, 0, NULL, NULL),
(612, 25, 'TOMAT', 'tomat', '', 110000, 5, '0.00', '2014-12-05', '21tomat-sambal-tomat.jpg', 1, 0, NULL, NULL),
(613, 25, 'SECURITY', 'security', '', 110000, 5, '0.00', '2014-12-05', '63security-vip-security.jpg', 1, 0, NULL, NULL),
(614, 25, 'VIP', 'vip', '', 110000, 5, '0.00', '2014-12-05', '37vip-vip-security.jpg', 1, 0, NULL, NULL),
(615, 14, 'OTW', 'otw', '', 110000, 5, '0.00', '2014-12-05', '60otw-on-the-way (1).jpg', 1, 0, NULL, NULL),
(618, 15, 'GIRAFFER LOPEZ', 'giraffer-lopez', '', 265000, 5, '0.00', '2014-12-14', '5giraffer-lopez-g-lo.jpg', 1, 0, NULL, NULL),
(619, 15, 'LADY BABA', 'lady-baba', '', 265000, 5, '0.00', '2014-12-14', '62lady-baba.jpg', 1, 0, NULL, NULL),
(620, 15, 'MEGAN FOXY', 'megan-foxy', '', 265000, 5, '0.00', '2014-12-14', '42megan-foxy.jpg', 1, 0, NULL, NULL),
(621, 15, 'PANDA', 'panda', '', 265000, 5, '0.00', '2014-12-14', '85panda-po.jpg', 1, 0, NULL, NULL),
(622, 15, 'PIGGI MELATI', 'piggi-melati', '', 265000, 5, '0.00', '2014-12-14', '97piggy-melati.jpg', 1, 0, NULL, NULL),
(623, 15, 'PINEAPPLE', 'pineapple', '', 265000, 5, '0.00', '2014-12-14', '78pineapple-flatshoes.jpg', 1, 0, NULL, NULL),
(624, 15, 'PRINCESS FROGGY', 'princess-froggy', '', 265000, 4, '0.00', '2014-12-14', '79princess-froggy.jpg', 1, 0, NULL, NULL),
(625, 16, 'CHEESE', 'cheese', '', 55000, 5, '0.00', '2014-12-14', '43cheese.jpg', 1, 0, NULL, NULL),
(626, 16, 'DAKOTA FANING', 'dakota-faning', '', 55000, 5, '0.00', '2014-12-14', '54dakota-fanning.jpg', 1, 0, NULL, NULL),
(627, 16, 'EMMA WATSON', 'emma-watson', '', 55000, 5, '0.00', '2014-12-14', '23emma-watson.jpg', 1, 0, NULL, NULL),
(628, 16, 'ERROL', 'errol', '', 55000, 5, '0.00', '2014-12-14', '22errol.jpg', 1, 0, NULL, NULL),
(629, 16, 'FLORA RED', 'flora-red', '', 60000, 5, '0.00', '2014-12-14', '6flora-red (1).jpg', 1, 0, NULL, NULL),
(630, 16, 'FLORA GREEN', 'flora-green', '', 60000, 5, '0.00', '2014-12-14', '84flora-red.jpg', 1, 0, NULL, NULL),
(631, 16, 'TREE NEKLACE GREEN', 'tree-neklace-green', '', 45000, 5, '0.00', '2014-12-14', '22tree-necklace-green.jpg', 1, 0, NULL, NULL),
(632, 0, 'TREE NEKLACE FULLCOLOUR', 'tree-neklace-fullcolour', '', 45000, 5, '0.00', '2014-12-14', '46tree-necklace-rainbow.jpg', 1, 0, NULL, NULL),
(582, 14, 'ASTRONOT', 'astronot', '', 110000, 5, '0.00', '2014-11-14', '67astronot.jpg', 1, 0, NULL, NULL),
(583, 14, 'DOKTER', 'dokter', '', 110000, 5, '0.00', '2014-11-14', '26cita-cita-dokter.jpg', 1, 0, NULL, NULL),
(584, 14, 'PRESIDEN', 'presiden', '', 110000, 5, '0.00', '2014-11-14', '36presiden (2).jpg', 1, 0, NULL, NULL),
(585, 0, 'LULUS', 'lulus', '', 110000, 5, '0.00', '2014-11-14', '72lulus (1).jpg', 1, 0, NULL, NULL),
(586, 14, 'BELUM GAJIAN', 'belum-gajian', '', 110000, 5, '0.00', '2014-11-16', '10belum-gajian.jpg', 1, 0, NULL, NULL),
(587, 14, 'BELUM TIDUR', 'belum-tidur', '', 110000, 5, '0.00', '2014-11-16', '78belum-makan-glow-in-the-dark.jpg', 1, 0, NULL, NULL),
(588, 14, 'BESOK LIBUR', 'besok-libur', '', 110000, 5, '0.00', '2014-11-16', '4besok-libur.jpg', 1, 0, NULL, NULL),
(589, 14, 'BESOK SENIN', 'besok-senin', '', 110000, 5, '0.00', '2014-11-16', '73besok-senin.jpg', 1, 0, NULL, NULL),
(590, 14, 'BORED', 'bored', '', 110000, 5, '0.00', '2014-11-16', '64bored.jpg', 1, 0, NULL, NULL),
(591, 14, 'BUSY', 'busy', '', 110000, 5, '0.00', '2014-11-16', '13busy.jpg', 1, 0, NULL, NULL),
(592, 14, 'CALORIES', 'calories', '', 110000, 5, '0.00', '2014-11-16', '90calories-hour (1).jpg', 1, 0, NULL, NULL),
(593, 14, 'PILOT', 'pilot', '', 110000, 5, '0.00', '2014-11-16', '38cita-cita-pilot.jpg', 1, 0, NULL, NULL),
(616, 15, 'Bridney Spears', 'bridney-spears', '', 265000, 5, '0.00', '2014-12-14', '52birdney-spears.jpg', 1, 0, NULL, NULL),
(595, 0, 'DEADLINE THEORY', 'deadline-theory', '', 110000, 5, '0.00', '2014-11-16', '25deadline-theory (1).jpg', 1, 0, NULL, NULL),
(596, 14, 'DO WHAT YOU LOVE', 'do-what-you-love', '', 110000, 5, '0.00', '2014-11-16', '53do-what-you-love.jpg', 1, 0, NULL, NULL),
(597, 14, 'FREE WI-FI', 'free-wifi', '', 110000, 5, '0.00', '2014-11-16', '8free-wi-fi.jpg', 1, 0, NULL, NULL),
(598, 14, 'HAPPY', 'happy', '', 110000, 5, '0.00', '2014-11-16', '25happy.jpg', 1, 0, NULL, NULL),
(599, 0, 'HI - CALCIUM', 'hi--calcium', '', 110000, 5, '0.00', '2014-11-16', '46hi-calcium.jpg', 1, 0, NULL, NULL),
(600, 0, 'JOMBLO - THEORY', 'jomblo--theory', '', 110000, 5, '0.00', '2014-11-16', '55jomblo-theory.jpg', 1, 0, NULL, NULL),
(601, 0, 'LOVED', 'loved', '', 110000, 5, '0.00', '2014-11-16', '20loved.jpg', 1, 0, NULL, NULL),
(602, 0, 'LOW-FAT', 'lowfat', '', 110000, 5, '0.00', '2014-11-16', '80low-fat.jpg', 1, 0, NULL, NULL),
(603, 14, 'MAHASISWA THEORY', 'mahasiswa-theory', '', 110000, 5, '0.00', '2014-11-16', '65mahasiswa-theory (1).jpg', 1, 0, NULL, NULL),
(604, 0, 'MIE INSTAN THEORY', 'mie-instan-theory', '', 110000, 5, '0.00', '2014-11-16', '44mie-instan-theory (1).jpg', 1, 0, NULL, NULL),
(605, 14, 'POWER RANGERS', 'power-rangers', '', 110000, 5, '0.00', '2014-11-16', '5power-rangers.jpg', 1, 0, NULL, NULL),
(606, 14, 'SLEEPY ', 'sleepy-', '', 110000, 5, '0.00', '2014-11-16', '68sleepy.jpg', 1, 0, NULL, NULL),
(607, 25, 'GIANT', 'giant', '', 110000, 5, '0.00', '2014-11-16', '22giant.jpg', 1, 0, NULL, NULL),
(608, 25, 'JAIKO', 'jaiko', '', 110000, 5, '0.00', '2014-11-16', '62jaiko.jpg', 1, 0, NULL, NULL),
(609, 25, 'MAJIKAN', 'majikan', '', 110000, 5, '0.00', '2014-12-05', '56majikan-supir-majikan.jpg', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2010-04-11', 'news5.jpg'),
(2, 'WHO merilis, 30 persen anak-anak di dunia kecanduan menonton televisi dan bermain komputer.', '2010-04-11', 'news4.jpg'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lebih lama.', '2010-04-11', 'news3.jpg'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di Indonesia adalah palsu.', '2010-04-11', 'news2.jpg'),
(5, 'Presiden AS Barack Obama memesan Nasi Goreng di restoran Bali langsung dari Amerika', '2010-04-11', 'news1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_pengiriman`
--

CREATE TABLE IF NOT EXISTS `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `alias`, `gambar`) VALUES
(6, 'JNE', 'Jasa Network Enterprise', 'jne.jpg'),
(5, 'TIKI', 'Titipan Kilat', 'tiki.jpg'),
(7, 'POS EKSPRESS', 'POS EKSPRESS', 'pos.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('127.0.0.1', '2012-10-11', 8, '1349939081'),
('127.0.0.1', '2012-10-18', 13, '1350574484'),
('127.0.0.1', '2012-10-21', 1, '1350796772'),
('127.0.0.1', '2012-10-22', 1, '1350878719'),
('127.0.0.1', '2012-10-23', 6, '1350984577'),
('127.0.0.1', '2012-10-25', 1, '1351146419'),
('127.0.0.1', '2012-10-28', 2, '1351441921'),
('127.0.0.1', '2012-11-02', 1, '1351875551'),
('127.0.0.1', '2012-11-03', 5, '1351876314'),
('127.0.0.1', '2012-12-10', 13, '1355156413'),
('127.0.0.1', '2012-12-11', 1, '1355173951'),
('127.0.0.1', '2012-12-14', 2, '1355431434'),
('127.0.0.1', '2013-01-08', 108, '1357627283'),
('127.0.0.1', '2013-01-11', 1, '1357879761'),
('127.0.0.1', '2013-01-13', 16, '1358090797'),
('127.0.0.1', '2013-02-23', 1, '1361582818'),
('127.0.0.1', '2013-03-10', 1, '1362920556'),
('127.0.0.1', '2013-03-18', 4, '1363581022'),
('127.0.0.1', '2013-03-19', 5, '1363666788'),
('127.0.0.1', '2013-04-26', 1, '1366985043'),
('127.0.0.1', '2013-04-29', 3, '1367201227'),
('127.0.0.1', '2013-05-07', 2, '1367943522'),
('127.0.0.1', '2013-05-15', 1, '1368596741'),
('127.0.0.1', '2013-05-19', 2, '1368974386'),
('127.0.0.1', '2013-06-05', 2, '1370438052'),
('127.0.0.1', '2013-06-10', 4, '1370833789'),
('127.0.0.1', '2013-06-13', 3, '1371094792'),
('127.0.0.1', '2013-06-16', 2, '1371399095'),
('127.0.0.1', '2013-07-28', 40, '1375030405'),
('127.0.0.1', '2013-07-29', 1, '1375031690'),
('127.0.0.1', '2013-10-04', 1, '1380895135'),
('127.0.0.1', '2013-10-30', 1, '1383069939'),
('127.0.0.1', '2013-11-29', 237, '1385709004'),
('127.0.0.1', '2013-11-30', 17, '1385783344'),
('127.0.0.1', '2013-12-01', 102, '1385882699'),
('127.0.0.1', '2013-12-02', 153, '1385999681'),
('127.0.0.1', '2013-12-03', 53, '1386027048'),
('::1', '2013-12-03', 54, '1386056497'),
('::1', '2013-12-04', 23, '1386132745'),
('127.0.0.1', '2013-12-04', 1, '1386125365'),
('::1', '2013-12-05', 68, '1386262659'),
('::1', '2013-12-06', 187, '1386301411'),
('::1', '2013-12-07', 84, '1386432534'),
('::1', '2013-12-09', 8, '1386607106'),
('::1', '2013-12-10', 4, '1386611074'),
('::1', '2014-11-13', 44, '1415897898'),
('::1', '2014-11-14', 244, '1415953207'),
('::1', '2014-11-16', 111, '1416143198'),
('::1', '2014-12-05', 66, '1417794259'),
('::1', '2014-12-13', 193, '1418458928'),
('::1', '2014-12-14', 200, '1418568019'),
('::1', '2014-12-15', 105, '1418646859');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(26, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 12),
(25, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 0),
(23, 'CELANA GAUL', 'kategori-15-celana-gaul.html', 12),
(24, 'RAGAM TOPI', 'kategori-18-ragam-topi.html', 12),
(20, 'LIHAT KERANJANG', 'keranjang-belanja.html', 13),
(21, 'SELESAI BELANJA', 'selesai-belanja.html', 13),
(27, 'JAKET GAYA', 'kategori-16-jaket-gaya.html', 12),
(28, 'ANEKA KAOS', 'kategori-14-aneka-kaos.html', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subproduk`
--

CREATE TABLE IF NOT EXISTS `subproduk` (
  `id_subproduk` int(5) NOT NULL AUTO_INCREMENT,
  `id_produk` int(5) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_subproduk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

--
-- Dumping data untuk tabel `subproduk`
--

INSERT INTO `subproduk` (`id_subproduk`, `id_produk`, `gambar`) VALUES
(255, 622, '83piggy-melati.jpg'),
(254, 621, '84panda-po.jpg'),
(253, 620, '12megan-foxy.jpg'),
(252, 619, '16lady-baba.jpg'),
(251, 618, '68giraffer-lopez-g-lo.jpg'),
(250, 617, '68catherine-zebra-jones.jpg'),
(249, 616, '95birdney-spears.jpg'),
(248, 615, '51otw-on-the-way (1).jpg'),
(247, 614, '35vip-vip-security.jpg'),
(246, 613, '30security-vip-security.jpg'),
(245, 612, '15tomat-sambal-tomat.jpg'),
(244, 611, '21sambal-sambal-tomat.jpg'),
(243, 610, '91supir-majikan-couple.jpg'),
(242, 609, '63majikan-supir-majikan.jpg'),
(241, 608, '61jaiko.jpg'),
(240, 607, '61giant.jpg'),
(239, 606, '60sleepy.jpg'),
(238, 605, '34power-rangers.jpg'),
(237, 604, '99mie-instan-theory (1).jpg'),
(236, 603, '97mahasiswa-theory (1).jpg'),
(235, 602, '68low-fat.jpg'),
(234, 601, '45loved.jpg'),
(233, 600, '26jomblo-theory.jpg'),
(232, 599, '6hi-calcium.jpg'),
(231, 598, '77happy.jpg'),
(230, 597, '43free-wi-fi.jpg'),
(229, 596, '61do-what-you-love.jpg'),
(228, 595, '51deadline-theory (1).jpg'),
(227, 593, '59cita-cita-pilot.jpg'),
(226, 592, '3calories-hour (1).jpg'),
(225, 591, '58busy.jpg'),
(224, 590, '96bored.jpg'),
(223, 590, '69bored.jpg'),
(222, 589, '54besok-senin.jpg'),
(221, 588, '21besok-libur.jpg'),
(220, 587, '32belum-makan-glow-in-the-dark.jpg'),
(219, 586, '64belum-gajian.jpg'),
(218, 585, '23lulus (1).jpg'),
(217, 584, '49presiden (2).jpg'),
(213, 583, '77cita-cita-dokter.jpg'),
(211, 581, '31belum-makan.jpg'),
(212, 582, '85astronot.jpg'),
(256, 623, '46pineapple-flatshoes.jpg'),
(257, 624, '62princess-froggy.jpg'),
(258, 625, '76cheese.jpg'),
(259, 626, '59dakota-fanning.jpg'),
(260, 627, '70emma-watson.jpg'),
(261, 628, '35errol.jpg'),
(262, 629, '59flora-red (1).jpg'),
(263, 630, '37flora-red.jpg'),
(264, 631, '8tree-necklace-green.jpg'),
(265, 632, '2tree-necklace-rainbow.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `tag_seo`, `count`) VALUES
(1, 'Palestina', 'palestina', 7),
(2, 'Gaza', 'gaza', 11),
(9, 'Tenis', 'tenis', 5),
(10, 'Sepakbola', 'sepakbola', 7),
(8, 'Laskar Pelangi', 'laskar-pelangi', 2),
(11, 'Amerika', 'amerika', 18),
(12, 'George Bush', 'george-bush', 3),
(13, 'Browser', 'browser', 9),
(14, 'Google', 'google', 3),
(15, 'Israel', 'israel', 5),
(16, 'Komputer', 'komputer', 24),
(17, 'Film', 'film', 9),
(19, 'Mobil', 'mobil', 0),
(21, 'Gayus', 'gayus', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktivasi` int(6) NOT NULL DEFAULT '0',
  `cek_aktivasi` int(6) NOT NULL DEFAULT '0',
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kota` int(2) NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password1`, `password`, `nama_lengkap`, `alamat`, `email`, `aktivasi`, `cek_aktivasi`, `no_telp`, `id_kota`, `level`, `blokir`, `id_session`) VALUES
('', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'ilamsyah', 'tangerang', 'ilamsyah011@gmail.com', 0, 0, '0219298389', 10, 'user', 'N', ''),
('maulina', 'ghoniy4', 'ghoniy4', '', '', '', 0, 0, '087824170407', 0, 'user', 'N', ''),
('ghoniya', 'ghoniy4', 'ghoniy4', '', '', '', 0, 0, '087824170407', 0, 'user', 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ym`
--

CREATE TABLE IF NOT EXISTS `ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `ym`
--

INSERT INTO `ym` (`id`, `nama`, `username`) VALUES
(1, 'ilamsyah', 'ilamsyah');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
