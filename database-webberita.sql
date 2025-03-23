-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2025 at 04:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tusball`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `teras_berita` text NOT NULL,
  `headline` int(2) NOT NULL DEFAULT 0,
  `gambar` longtext NOT NULL,
  `konten` longtext NOT NULL,
  `tanggal` date NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `teras_berita`, `headline`, `gambar`, `konten`, `tanggal`, `kategori_id`, `user_id`) VALUES
(11, 'Antony Menunjukkan Performa Gemilang di Spanyol, Berapa Harga Jual yang Wajar untuk Manchester United?', 'Antony Menunjukkan Performa Gemilang di Spanyol, Berapa Harga Jual yang Wajar untuk Manchester United?', 1, 'gambar-berita//4af30209e03a577b48827aeaa36f6b80.jpg', '<p data-start=\"0\" data-end=\"247\">Antony, yang saat ini dipinjamkan oleh Manchester United ke Real Betis, telah menunjukkan performa luar biasa di La Liga. Dalam 11 pertandingan, ia berkontribusi pada sembilan gol, melebihi kontribusinya di Manchester United sejak musim 2023-2024.</p><p data-start=\"249\" data-end=\"541\">Manchester United sebelumnya merekrut Antony dari Ajax Amsterdam pada musim panas 2022 dengan harga sekitar €95 juta (sekitar Rp1,4 triliun), ditambah bonus sebesar €5 juta (sekitar Rp73,9 miliar). Namun, performanya tidak memenuhi ekspektasi, dengan hanya mencetak 12 gol dari 86 penampilan.</p><p data-start=\"543\" data-end=\"846\">Sekarang, Manchester United membuka kemungkinan untuk menjual Antony, dengan harga yang diinginkan sekitar €40 juta. Namun, melihat performa cemerlangnya di Spanyol, banyak pihak yang berpendapat bahwa harga tersebut terlalu rendah. Hal ini menimbulkan pertanyaan tentang harga yang pantas untuk Antony.</p><p>\r\n\r\n\r\n</p><p data-start=\"848\" data-end=\"1179\" data-is-last-node=\"\" data-is-only-node=\"\">Dengan mempertimbangkan usianya yang baru 24 tahun dan potensinya yang terlihat di Real Betis, beberapa analis percaya bahwa Manchester United dapat meminta harga yang lebih tinggi. Namun, faktor-faktor seperti sisa durasi kontrak, kondisi pasar saat ini, dan minat dari klub-klub lain akan mempengaruhi penentuan harga jual akhir.</p>', '2025-03-19', 6, 15),
(12, 'Perombakan Skuad Liverpool untuk persiapan musim depan?', 'Manajer Liverpool, Arne Slot, tengah melakukan perombakan skuad dengan mempertimbangkan penjualan tiga penyerang dan membidik lima bomber baru. ', 1, 'gambar-berita//04c1135975adb8c9e43a0f2cc694de74.jpeg', '<p data-start=\"0\" data-end=\"396\">Arne Slot, manajer Liverpool, sedang melakukan perubahan besar pada skuad timnya dengan merencanakan penjualan tiga penyerang dan membidik lima striker baru untuk memperkuat lini depan. Salah satu pemain yang menjadi incaran adalah Marcus Thuram dari Inter Milan, yang dikenal dengan kemampuan fisiknya yang kuat dan kemampuannya untuk menahan bola, yang dianggap cocok menggantikan Darwin Nunez.</p><p data-start=\"398\" data-end=\"672\">Jamie Carragher, legenda Liverpool, mengungkapkan bahwa klub perlu mendatangkan lima hingga enam pemain baru untuk memperkuat tim mereka di musim depan. Beberapa posisi yang perlu diperbaiki termasuk bek tengah, bek kanan, gelandang tengah, penyerang tengah, dan sayap kiri.</p><p>\r\n\r\n</p><p data-start=\"674\" data-end=\"863\" data-is-last-node=\"\" data-is-only-node=\"\">Selain itu, Liverpool juga harus segera menyelesaikan masalah kontrak pemain penting mereka seperti Mohamed Salah, Trent Alexander-Arnold dan Virgil Van Dijk untuk memastikan kestabilan skuad di masa depan.</p>', '2025-03-19', 1, 15),
(13, 'Diego Simeone yakin Atletico Madrid mampu meraih juara liga musim ini', 'Diego Simeone yakin dirinya mampu membawa Atletico Madrid meraih juara liga musim ini', 1, 'gambar-berita//0dd2994bfd71ee0350b4ee1019505c71.jpg', '<p>Pelatih Atletico Madrid, Diego Simeone, tetap percaya diri mengenai peluang timnya meraih gelar Liga Spanyol 2024/25 meski baru saja kalah 2-4 dari Barcelona. Barcelona, yang dilatih oleh Hansi Flick, bangkit di Wanda Metropolitano pada Senin (17/3) dini hari dan merebut posisi puncak klasemen sementara dengan 60 poin, sementara Atletico Madrid ada di urutan ketiga dengan 56 poin.</p><p>\"Kami akan berjuang hingga akhir. Masih ada 10 pertandingan tersisa, kami harus bermain dan memenangkan semuanya,\" kata Simeone kepada DAZN setelah pertandingan.</p><p>Pelatih asal Argentina ini mengatakan bahwa setiap kemenangan dicapai bukan karena keberuntungan, melainkan berkat kerja keras para pemain. \"Saya tidak akan menganggapnya sebagai keberuntungan. Kami harus mengakui kekuatan lawan,\" ujar Simeone.</p><p>Simeone juga menyebutkan bahwa timnya kelelahan setelah kekalahan di Liga Champions melalui drama adu penalti melawan Real Madrid. Selain itu, kondisi kesehatan penyerang Julian Alvarez juga menjadi perhatian. \"Beberapa hari lalu dia mengalami sakit perut, kemarin demam, dan pagi ini dia mengalami masalah perut lagi. Saya tidak ingin memainkannya. Namun, setelah berbicara dengannya, dia tetap berkomitmen, dan saya menghargai usahanya,\" kata Simeone.</p><p>Simeone juga menyesali peluang yang hilang untuk merubah strategi setelah timnya sempat unggul 2-0 atas Barcelona. Ia mengakui bahwa perubahan taktik bisa membuat hasil lebih baik. \"Dalam sepak bola, empat atau lima menit itu sangat berharga. Saat itu, saya berusaha keras untuk menyelesaikan pertandingan, para pemain bereaksi, namun saya tidak punya waktu. Itu sudah terlambat,\" ujarnya.</p><p>\r\n\r\n\r\n\r\n\r\n</p><p>Atletico Madrid akan kembali berlaga setelah jeda internasional dengan menjamu Espanyol di Liga Spanyol pada Sabtu, 29 Maret 2025.</p>', '2025-03-19', 3, 15),
(14, 'Statistik Bertahan Idzes Saat Venezia Imbangi Napoli', 'Statistik Bertahan Idzes Saat Venezia Imbangi Napoli', 1, 'gambar-berita//3533fb5447c346099e1b572d0a1f3a6a.jpeg', '<p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Jay Idzes tampil sip saat Venezia menjamu Napoli. Kerja keras Idzes di lini belakang membuat Partenopei pulang dengan satu poin.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Venezia vs Napoli berlangsung di Pier Luigi Penzo Stadium dalam lanjutan Liga Italia, Minggu (16/3/2025) dini hari WIB. Pertandingan ini tuntas dengan skor 0-0.</span><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\">Idzes salah satu pemain yang mencolok di laga ini. Dia membuat atribut dua tekel sukses, satu intercept, empat sapuan, dan satu kali memblok tembakan.</span></p><p><span style=\"font-family: Helvetica-FF, Arial, Tahoma, sans-serif;\"><br></span></p><p>Bek Timnas Indonesia itu juga bertugas dengan baik bersama rekannya, Joel Schingtienne. Pemain asal Belgia itu membuat tiga tekel sukses, tiga intercept, dan tiga sapuan.\r\n\r\nHal ini juga menjadi pencapaian oke Idzes dalam meredam Romelu Lukaku untuk kedua kalinya. Pada pertemuan pertama, Lukaku dibuat tak berkutik. Namun di laga itu Venezia kalah 0-1.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bek Timnas Indonesia itu juga bertugas dengan baik bersama rekannya, Joel Schingtienne. Pemain asal Belgia itu membuat tiga tekel sukses, tiga intercept, dan tiga sapuan.</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 16px; color: rgb(0, 0, 0); font-family: Helvetica-FF, Arial, Tahoma, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Hal ini juga menjadi pencapaian oke Idzes dalam meredam Romelu Lukaku untuk kedua kalinya. Pada pertemuan pertama, Lukaku dibuat tak berkutik. Namun di laga itu Venezia kalah 0-1.</p><p><br></p>', '2025-03-19', 2, 15),
(15, 'Bayern Munich Tertahan, Leverkusen Pangkas Jarak di Puncak Klasemen Liga Jerman', 'Bayern Munich Tertahan, Leverkusen Pangkas Jarak di Puncak Klasemen Liga Jerman', 1, 'gambar-berita//4d827c508b640ab132b4aa0e6110d109.jpeg', '<p>Laju Bayern Munich untuk menjauhi kejaran para rival di puncak klasemen sementara Liga Jerman sedikit terhambat setelah ditahan imbang 1-1 oleh tuan rumah Union Berlin pada Sabtu (15/3/2025).\r\n\r\nHasil ini membuat Bayern mengoleksi 62 poin, sementara Union Berlin berada di posisi ke-13 dengan 27 poin.\r\n\r\nKesempatan ini dimanfaatkan dengan baik oleh Bayer Leverkusen. Tim asuhan Xabi Alonso berhasil memangkas jarak dengan Bayern Munich menjadi hanya enam poin setelah meraih kemenangan dramatis 4-3 di markas VfB Stuttgart pada Senin (17/3/2025) dini hari WIB.\r\n\r\nPersaingan Papan Tengah Memanas\r\nDi posisi ketiga, Mainz gagal melanjutkan tren positif mereka setelah ditahan imbang 2-2 oleh Freiburg. Mereka tetap berada di posisi ketiga dengan 45 poin, sementara Freiburg berada di posisi keenam dengan 42 poin.\r\n\r\nEintracht Frankfurt berhasil naik ke posisi keempat setelah mengalahkan VfL Bochum 3-1. Mereka memiliki poin yang sama dengan Mainz, namun kalah selisih gol.</p><p style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Laju<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Bayern-Munich?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Bayern Munich</a><span>&nbsp;</span>untuk menjauhi kejaran para rival di puncak klasemen sementara<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Liga-Jerman?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Liga Jerman</a><span>&nbsp;</span>sedikit terhambat setelah ditahan imbang 1-1 oleh tuan rumah<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Union-Berlin?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Union Berlin</a><span>&nbsp;</span>pada Sabtu (15/3/2025).</p><p style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Hasil ini membuat Bayern mengoleksi 62 poin, sementara<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Union-Berlin?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Union Berlin</a><span>&nbsp;</span>berada di posisi ke-13 dengan 27 poin.</p><p style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Kesempatan ini dimanfaatkan dengan baik oleh<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Bayer-Leverkusen?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Bayer Leverkusen</a>. Tim asuhan Xabi Alonso berhasil memangkas jarak dengan<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Bayern-Munich?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Bayern Munich</a><span>&nbsp;</span>menjadi hanya enam poin setelah meraih kemenangan dramatis 4-3 di markas<span>&nbsp;</span><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/VfB-Stuttgart?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">VfB Stuttgart</a><span>&nbsp;</span>pada Senin (17/3/2025) dini hari WIB.</p><h2 style=\"box-sizing: border-box; margin: 30px 0px 15px; font-size: 22px; font-weight: 700; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Persaingan Papan Tengah Memanas</h2><p style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Di posisi ketiga, Mainz gagal melanjutkan tren positif mereka setelah ditahan imbang 2-2 oleh Freiburg. Mereka tetap berada di posisi ketiga dengan 45 poin, sementara Freiburg berada di posisi keenam dengan 42 poin.</p><p><br></p><p style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><a rel=\"noopener noreferrer nofollow\" href=\"https://manggarai.pikiran-rakyat.com/tag/Eintracht-Frankfurt?utm_source=tag_article&amp;utm_medium=tag_article\" style=\"box-sizing: border-box; transition: 0.2s; vertical-align: top; text-decoration: none; color: rgb(238, 47, 65); outline: 0px; position: relative;\">Eintracht Frankfurt</a><span>&nbsp;</span>berhasil naik ke posisi keempat setelah mengalahkan VfL Bochum 3-1. Mereka memiliki poin yang sama dengan Mainz, namun kalah selisih gol.</p><p><br></p>', '2025-03-19', 4, 15),
(18, 'PSG, Dominasi Mutlak, dan Kepercayaan Diri yang Meluap-luap', 'PSG, Dominasi Mutlak, dan Kepercayaan Diri yang Meluap-luap', 0, 'gambar-berita//42fa9c0e1ed623c808b863e7e22fe03c.jpeg', '<div class=\"infinite-box detail-paragraph\" style=\"color: rgb(51, 51, 51); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"infinite-box detail-paragraph\"><p style=\"margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\"><a href=\"https://www.bola.net/tag/psg/\" style=\"color: rgb(19, 129, 55); outline-style: none; outline-width: initial; transition-duration: 0.3s; transition-property: all;\">PSG</a>&nbsp;dan&nbsp;<a href=\"https://www.bola.net/tag/marseille/\" style=\"color: rgb(19, 129, 55); outline-style: none; outline-width: initial; transition-duration: 0.3s; transition-property: all;\">Marseille</a>&nbsp;akan bentrok di Parc des Princes pada pekan ke-26&nbsp;<a href=\"https://www.bola.net/tag/ligue-1/\" style=\"color: rgb(19, 129, 55); outline-style: none; outline-width: initial; transition-duration: 0.3s; transition-property: all;\">Ligue 1</a>&nbsp;2024/2025. Duel ini digelar pada Senin, 17 Maret 2025, pukul 02.45 WIB.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\">PSG akan turun dengan kepercayaan diri yang meluap-luap. Mereka baru saja memastikan tempat di perempat final Liga Champions dengan menyingkirkan Liverpool.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\">Di Anfield, PSG menang 1-0 berkat gol Ousmane Dembele dan aksi gemilang Gianluigi Donnarumma. Dengan agregat 1-1, PSG menang adu penalti 4-1 dan melangkah ke delapan besar.\r\nPelajari <br class=\"Apple-interchange-newline\"></p></div></div><table class=\"rec-tbl\" style=\"box-sizing: border-box; border-collapse: separate; width: calc(100% + 10px) !important; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; table-layout: auto; hyphens: auto; word-break: break-word; border: 0px; border-spacing: 5px 0px; background-color: rgb(255, 255, 255); padding: 0px; margin: 0px -5px !important;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td class=\"rec-td\" data-i=\"0\" style=\"box-sizing: border-box; padding: 0px; border: 0px; vertical-align: top; line-height: 0; margin-left: 5px; width: 686.8px;\"><a href=\"https://go.rcvlink.com/go/?bp=cgPiIZiT8gR78fpLMSt_m-FQmWGeV0hvjD6W2nncJ9AqtHxMn6leINasSpB2sBCgh3GqFCZBYvZYqmaCj8dOz_ir7QknhvyHVWzLKPi0pFytvwf5B3gVshAopMyjoNOmc8L43ArnFZj4oAjHhTA3m_T5UZ8W5aVZ2XhmQAanbiuqE8jww8wZvtaClYDz5pyAb74nFCdQcyHZkKXj_g&amp;tp=7nkYT1A6buP6cECoWYe_hRMIO5rXAPpPCaQvjMMpWfY4DQV45zxhbWr3-POIYiEccFbOwlxVFIEOHi3H27-TalJnwr3UmhhM5a8zfm0rrik\" target=\"_blank\" rel=\"nofollow opener\" class=\"rec-cont\" data-i=\"0\" style=\"box-sizing: border-box; color: rgb(0, 138, 255); text-decoration: none; background-color: transparent; outline: 0px; transition: 0.2s; display: block; margin: auto; padding: 0px; position: relative; border: 0px; cursor: pointer !important;\"><div class=\"rec-button\" data-i=\"7\" style=\"box-sizing: border-box; color: rgb(42, 113, 182); width: auto; border: 1px solid rgb(42, 113, 182); margin: 10px; display: inline-block; padding: 7px; font-size: 15px; background: transparent; text-align: center; font-family: Arial, sans-serif; border-radius: 3px; text-transform: uppercase; position: absolute; bottom: 0px; right: 0px;\"><span data-i=\"7\" style=\"box-sizing: border-box;\">Pelajari<span>&nbsp;</span></span></div></a></td></tr></tbody></table><div class=\"infinite-box detail-paragraph\" style=\"color: rgb(51, 51, 51); font-family: Rubik, sans-serif; font-size: 14px;\"><div class=\"infinite-box detail-paragraph\"><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\"><br></p></div><div class=\"infinite-box detail-paragraph\" id=\"list-pagination\" data-page=\"2\" data-page-observer-is-executed=\"true\"><h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: Rubik, sans-serif; font-weight: 500; line-height: 1.5em; font-size: 26px;\">PSG Tak Tersentuh di Puncak</h2><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\">Setelah menyingkirkan Liverpool, fokus PSG kembali ke liga domestik. Mereka masih kokoh di puncak klasemen dengan keunggulan yang nyaman.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\">Hingga pekan ke-25, PSG belum terkalahkan. Dengan catatan 20 kemenangan dan lima hasil imbang, mereka mengoleksi 65 poin.</p><p style=\"margin-top: 15px; margin-bottom: 0px; font-family: Lato, sans-serif; line-height: 1.8em; font-size: 16px;\">Sementara itu, Marseille yang berada di peringkat kedua tertinggal jauh. Mereka hanya memiliki 49 poin dengan catatan 15 kemenangan, empat imbang, dan enam kekalahan.</p></div></div>', '2025-03-19', 7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `tujuan` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `liga_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `slug`, `kategori`, `liga_name`) VALUES
(1, 'ligainggris', 'Inggris', 'Premier League\r\n'),
(2, 'SerieA', 'Italia', ''),
(3, 'LaLiga', 'Spanyol', ''),
(4, 'Bundesliga', 'Jerman', ''),
(7, 'Prancis', 'Prancis', '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `berita_id` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `komentar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE `kritik` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `role`, `gambar`, `deskripsi`) VALUES
(15, 'resi', 'mfahresi@email.com', '9550defc698a9f7865d73fa1f9576f28', 'admin', NULL, 'ini adalah deskripsi');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `tanggal` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`tanggal`, `jumlah`) VALUES
('2022-11-17', 40),
('2022-11-24', 41),
('2022-11-27', 182),
('2022-11-28', 29),
('2022-11-30', 1),
('2023-02-28', 5),
('2025-03-18', 145),
('2025-03-19', 32),
('2025-03-20', 1),
('2025-03-21', 5),
('2025-03-23', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kritik`
--
ALTER TABLE `kritik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kritik`
--
ALTER TABLE `kritik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
