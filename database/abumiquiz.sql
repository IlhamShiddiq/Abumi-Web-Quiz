-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2020 pada 13.39
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abumiquiz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `atmosfer`
--

CREATE TABLE `atmosfer` (
  `id` varchar(10) NOT NULL,
  `nama_atmosfer` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `atmosfer`
--

INSERT INTO `atmosfer` (`id`, `nama_atmosfer`, `deskripsi`) VALUES
('A_1', 'Troposfer', 'Troposfer adalah lapisan atmosfer terendah yang tebalnya kira-kira sampai dengan 10 kilometer di atas permukaan bumi. Dalam troposfer ini terdapat gas rumah kaca yang menyebabkan efek rumah kaca, pemanasan global, dan merupakan satu-satunya lapisan atmosfer yang mengalami fenomena cuaca. Lapisan Troposfer memiliki kombinasi gas yang dianggap paling baik untuk mendukung kehidupan di bumi, lebih dari 80% kandungan gas atmosfer terdapat di lapisan ini.'),
('A_2', 'Stratosfer', 'Stratosfer adalah lapisan kedua dari atmosfer bumi, terletak di atas troposfer dan di bawah mesosfer. Ketebalannya sekitar 15-55 km. Di lapisan ini terdapat lapisan ozon yang terbentuk pada ketinggian 20 km. Lapisan ozon berfungsi menyerap radiasi sinar ultraviolet sehingga melindungi bumi dari bahaya radiasi sinar tersebut. Antara lapisan Troposfer dan Stratosfer terdapat lapisan Tropopause.'),
('A_3', 'Mesosfer', 'Mesosfer adalah lapisan udara ketiga, di mana suhu atmosfer akan berkurang dengan pertambahan ketinggian hingga ke lapisan keempat, termosfer. Udara yang terdapat di sini akan mengakibatkan pergeseran berlaku dengan objek yang datang dari angkasa dan menghasilkan suhu yang tinggi. Kebanyakan meteor yang sampai ke bumi biasanya terbakar di lapisan ini. Mesosfer terletak di antara 50 km dan 80-85 km dari permukaan bumi.'),
('A_4', 'Termosfer', 'Termosfer (thermosphere) adalah lapisan atmosfer bumi yang berada persis di atas mesosfer dan di bawah eksosfer. Dalam lapisan ini, radiasi ultraviolet (UV) menyebabkan ionisasi. Kata ini berasal dari Bahasa Yunani ?????? (dilafalkan thermos) yang berarti panas dan sphere yang berarti lapisan. termosfer mulai berada sekitar 85 kilometer (53 mil) di atas permukaan bumi.'),
('A_5', 'Eksosfer', 'Eksosfer adalah lapisan bumi yang terletak paling luar. Pada lapisan ini terdapat refleksi cahaya matahari yang dipantulkan oleh partikel debu meteoritik. Cahaya matahari yang dipantulkan tersebut juga dikenal sebagai cahaya zodiakal. Pengaruh gaya berat pada lapisan ini sangat kecil sehingga benturan-benturan di udara jarang terjadi. Butiran-butiran gas pada lapisan ini berangsur-angsur meloloskan diri ke angkasa luar sehingga lapisan ini juga dinamakan disipasisfer atau ruang antar planet dangeostasioner.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `score` int(2) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `score`
--

INSERT INTO `score` (`id`, `username`, `score`, `waktu`) VALUES
(1, 'person1', 2, '2020-07-22 00:00:00'),
(2, 'person2', 10, '2020-07-22 15:47:19'),
(3, 'person3', 3, '2020-07-22 15:48:02'),
(4, 'person4', 10, '0000-00-00 00:00:00'),
(5, 'person5', 10, '0000-00-00 00:00:00'),
(6, 'person6', 9, '0000-00-00 00:00:00'),
(7, 'person7', 4, '0000-00-00 00:00:00'),
(8, 'person8', 7, '0000-00-00 00:00:00'),
(9, 'person9', 6, '0000-00-00 00:00:00'),
(10, 'person10', 8, '0000-00-00 00:00:00'),
(11, 'person11', 4, '0000-00-00 00:00:00'),
(12, 'Anonymous', 10, '2020-07-22 18:20:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanah`
--

CREATE TABLE `tanah` (
  `id` varchar(10) NOT NULL,
  `nama_tanah` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanah`
--

INSERT INTO `tanah` (`id`, `nama_tanah`, `deskripsi`) VALUES
('T_1', 'Lapisan Tanah Atas', 'Merupakan lapisan yang terletak hingga kedalaman 30 cm, sering disebut dengan istilah Top Soil. Pada lapisan ini kaya dengan bahan bahan organik, humus dan menjadikannya sebagai lapisan paling subur sehingga sangat cocok untuk pertumbuhan tanaman berakar pendek. Cara paling mudah untuk mengenali top soil adalah warnanya yang cenderung paling gelap dibandingkan lapisan dibawahnya, terlihat lebih gembur dan semua mikroorganisme hidup pada lapisan ini sehingga memungkinkan terjadinya proses pelapukan daun, sisa batang dan bagian makhluk hidup lainnya.'),
('T_2', 'Lapisan Tanah Tengah', 'Terletak tepat dibagian bawah dari top soil dengan ketebalan antara 50 cm hingga 1 meter. Berwarna lebih cerah daripada lapisan diatasnya dan lapisan ini terbentuk dari campuran pelapukan yang terletak di lapisan bawah dengan sisa material top soil yang terbawa air, mengendap sehingga bersifat lebih padat dan sering disebut dengan tanah liat.'),
('T_3', 'Lapisan Tanah Bawah', 'Merupakan lapisan yang mengandung batuan yang mulai melapuk dan sudah tercampur dengan tanah endapan pada lapisan diatasnya atau tanah liat. Pada bagian ini masih terdapat batuan yang belum melapuk dan sebagian sudah dalam proses pelapukan dari jenis batuan itu sendiri dan berwarna sama dengan batuan penyusunnya atau asalnya. Berada cukup dalam dan jarang dapat ditembus oleh akar akar pohon atau tanaman.'),
('T_4', 'Lapisan Batuan Induk', 'Merupakan lapisan terdalam yang terdiri atas batuan padat. Jenis batuan pada lapisan ini berbeda antara satu daerah dengan tempat lainnya sehingga menyebabkan produk tanah yang dihasilkan juga berbeda. Batuan pada lapisan ini mudah pecah namun sangat sulit ditembus oleh akar tanaman dan air, berwarna terang putih kelabu hingga kemerahan. Lapisan batuan induk ini dapat dengan mudah terlihat pada dinding tebing terjal daerah pengunungan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tata_surya`
--

CREATE TABLE `tata_surya` (
  `id` varchar(8) NOT NULL,
  `nama_planet` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tata_surya`
--

INSERT INTO `tata_surya` (`id`, `nama_planet`, `deskripsi`, `gambar`) VALUES
('TS_1', 'Matahari', 'Matahari atau Surya adalah bintang di pusat tata surya. Bentuknya nyaris bulat dan terdiri dari plasma panas bercampur medan magnet. Diameternya sekitar 1.392.684 km, kira-kira 109 kali diameter Bumi, dan massanya (330.000 kali massa Bumi) mewakili kurang lebih 99,86 % massa total tata surya.', 'sun.png'),
('TS_2', 'Merkurius', 'Merkurius adalah planet terkecil di Tata Surya sekaligus yang terdekat dari Matahari. Periode revolusi planet ini merupakan yang terpendek dari semua planet di Tata Surya, yakni 87,79 hari. Planet ini dinamai menurut nama dewa Merkurius, sang pembawa pesan para dewa dalam mitologi Romawi.', 'mercury.png'),
('TS_3', 'Venus', 'Venus adalah planet terdekat kedua dari Matahari setelah Merkurius. Planet ini mengorbit Matahari selama 224,7 hari Bumi. Venus tidak memiliki satelit alami dan dinamai dari dewi cinta dan kecantikan dalam mitologi Romawi. Setelah Bulan, planet ini merupakan objek alami tercerah di langit malam, dengan magnitudo tampak sebesar ?4,6 yang cukup cerah untuk menghasilkan bayangan.', 'venus.png'),
('TS_4', 'Bumi', 'Bumi adalah planet ketiga dari Matahari yang merupakan planet terpadat dan terbesar kelima dari delapan planet dalam Tata Surya. Bumi juga merupakan planet terbesar dari empat planet kebumian Tata Surya. Bumi terkadang disebut dengan dunia atau Planet Biru. ', 'earth.png'),
('TS_5', 'Mars', 'Mars adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai \"planet merah\" karena tampak dari jauh berwarna kemerah-kemerahan. Ini disebabkan oleh keberadaan besi(III) oksida di permukaan planet Mars.', 'mars.png'),
('TS_6', 'Jupiter', 'Jupiter adalah planet terdekat kelima dari Matahari setelah Merkurius, Venus, Bumi, dan Mars. Planet ini juga merupakan planet terbesar di Tata Surya. Jupiter merupakan raksasa gas dengan massa seperseribu massa Matahari dan dua setengah kali jumlah massa semua planet lain di Tata Surya.', 'jupiter.png'),
('TS_7', 'Saturnus', 'Saturnus adalah sebuah planet di tata surya yang dikenal juga sebagai planet bercincin, dan merupakan planet terbesar kedua di tata surya setelah Jupiter. Jarak Saturnus sangat jauh dari Matahari, karena itulah Saturnus tampak tidak terlalu jelas dari Bumi. Saturnus berevolusi dalam waktu 29,46 tahun.', 'saturn.png'),
('TS_8', 'Uranus', 'Uranus adalah planet ketujuh dari Matahari. Uranus merupakan planet yang memiliki jari-jari terbesar ketiga sekaligus massa terbesar keempat di Tata Surya. Uranus juga merupakan satu-satunya planet yang namanya berasal dari tokoh dalam mitologi Yunani, dari versi Latinisasi nama dewa langit Yunani Ouranos.', 'uranus.png'),
('TS_9', 'Neptunus', 'Neptunus merupakan planet terjauh (kedelapan) jika ditinjau dari Matahari. Planet ini dinamai dari dewa lautan Romawi. Neptunus merupakan planet terbesar keempat berdasarkan diameter (49.530 km) dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih besar daripada Uranus.', 'neptune.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `atmosfer`
--
ALTER TABLE `atmosfer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanah`
--
ALTER TABLE `tanah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tata_surya`
--
ALTER TABLE `tata_surya`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
