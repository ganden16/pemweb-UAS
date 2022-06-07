-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jun 2022 pada 10.42
-- Versi server: 10.3.35-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damjmegh_belajar3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Daging', 'daging', 'category-images/dZd4lJy1IKqohcKqYsHehcCwZNfG7W88nH0P5Zqa.jpg', '2022-06-05 18:08:16', '2022-06-06 01:37:00'),
(2, 'Sup', 'sup', 'category-images/19BICiothbBJL8fChj6Oo4OgkQLX7FUkLYr8CzgL.jpg', '2022-06-05 18:08:16', '2022-06-06 01:42:38'),
(3, 'Ayam', 'ayam', 'category-images/TxH7sMU44hNJ1T3DLeOf6zNKULnHKn7eQdDVDLgi.jpg', '2022-06-05 18:08:16', '2022-06-06 01:43:30'),
(4, 'Ikan', 'ikan', 'category-images/EfNXKNVx5JEar830Rv9CRNryIX8vs6qzTTFwcNXC.jpg', '2022-06-05 18:08:16', '2022-06-06 01:40:49'),
(5, 'Sambal', 'sambal', 'category-images/nqB5mkd2GUVT9zxAR4gafqDdxW4QaLVyZZp7uULI.jpg', '2022-06-05 18:08:16', '2022-06-06 01:44:49'),
(6, 'Tahu-Tempe', 'tahu-tempe', 'category-images/fNjK1pOZaOjvfOYCHulvOx74ZOB7VxXZidKHRlZc.jpg', '2022-06-05 18:08:16', '2022-06-06 01:46:54'),
(7, 'Telur', 'telur', 'category-images/EvcKpD22qGrTNU9xDup6NCd10AXbtTj1g92yfalC.jpg', '2022-06-05 18:08:16', '2022-06-06 01:48:00'),
(8, 'Nasi', 'nasi', 'category-images/h1sWOJ3fPQsCPVbftviyRBA1p1lZTY1Vmq7HbWz0.jpg', '2022-06-05 18:08:16', '2022-06-06 06:41:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorits`
--

CREATE TABLE `favorits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `favorits`
--

INSERT INTO `favorits` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(2, 5, 2, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(3, 4, 3, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(4, 4, 4, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(11, 5, 6, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(13, 5, 7, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(14, 5, 9, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(15, 5, 8, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(16, 5, 10, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(19, 5, 13, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(20, 5, 11, '2022-06-05 18:08:16', '2022-06-05 18:08:16'),
(26, 7, 13, '2022-06-06 20:37:11', '2022-06-06 20:37:11'),
(27, 7, 78, '2022-06-06 20:37:37', '2022-06-06 20:37:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_27_085539_create_posts_table', 1),
(6, '2022_04_27_085654_create_categories_table', 1),
(7, '2022_05_22_053533_create_favorits_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `image`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 5, 'Sambal Bajak', 'sambal-bajak', 'post-images/WWjgvd7nkm6xvH0uuTeS4jgzRKxDvMvQuXqjAlfe.jpg', 'Bahan-bahan:- Segenggam cabai rawit.- 8 Cabai merah keriting.- 5 Siung bawang putih.- Garam secukupn.......', '<div>Bahan-bahan:</div><div>- Segenggam cabai rawit.</div><div>- 8 Cabai merah keriting.</div><div>- 5 Siung bawang putih.</div><div>- Garam secukupnya.</div><div>- Minyak panas secukupnya.</div><div>&nbsp;</div><div>Cara membuatnya:</div><div>- Goreng cabai dan bawang sebentar saja, kemudian ulek kasar.</div><div>- Beri garam secukupnya.</div><div>- Terakhir siram pakai minyak goreng panas.</div><div>&nbsp;</div><div><br></div><div><br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:35:55'),
(2, 5, 'Sambal Bawang Goreng', 'sambal-bawang-goreng', 'post-images/alWihahdQ0nain4QpGnTJUqchG4yqGggxqMWqdVL.jpg', 'Bahan-bahan:- 8 Siung bawang merah.- 6 Siung bawang putih.- 15 Buah cabai merah keriting.- 6 Buah ra.......', '<div>Bahan-bahan:</div><div>- 8 Siung bawang merah.</div><div>- 6 Siung bawang putih.</div><div>- 15 Buah cabai merah keriting.</div><div>- 6 Buah rawit (Jika ingin lebih pedas, kamu bisa nambahkan cabainya).</div><div>- 1 Buah Tomat merah ukuran sedang.</div><div>- 1 Sdt terasi.</div><div>- 200 Ml minyak sayur.</div><div>- 1 Sdm garam, lada.</div><div>- 2 Sdm gula pasir.</div><div>&nbsp;</div><div>Cara membuatnya:</div><div>- Panaskan minyak di wajan lalu masukan semua bahan-bahannya.</div><div>- Masak hingga agak kecokelatan, lalu angkat.</div><div>- Ulek bahan yang telah digoreng, usahakan untuk tidak diulek terlalu halus.</div><div>- Masukan garam, gula dan lada ulek dan aduk rata.</div><div>- Masukan sisa minyak, kemudian aduk rata dengan sendok.</div><div>- Tambahkan sedikit jeruk nipis<br><br></div><div><br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:37:50'),
(3, 5, 'Sambal Teri', 'sambal-teri', 'post-images/WeAJfOedLXdtd2eh1jxYobFCgNhyRkD0TbtZxmKN.png', 'Bahan-bahan:- 100 Gr teri nasi, cuci bersih, goreng, sisihkan.- 2 Buah bawang bombay ukuran sedang,.......', '<div>Bahan-bahan:</div><div>- 100 Gr teri nasi, cuci bersih, goreng, sisihkan.</div><div>- 2 Buah bawang bombay ukuran sedang, kupas, potong-potong.</div><div>- 4 Siung bwg putih.</div><div>- 100 Gr cabai merah.</div><div>- 15 Cabai rawit.</div><div>- 2 Buah tomat potong-potong.</div><div>- 1 Bungkus terasi.</div><div>- Gula merah, garam, penyedap, minyak secukupnya.</div><div>&nbsp;</div><div>Cara membuatnya:</div><div>- Goreng semua bahan sambal, setengah matang, angkat, ulek, tumis kembali.</div><div>Masukkan gula, garam, penyedap, teri, aduk rata.</div><div>- Koreksi rasa dan sambal teri siap disajikan.<br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:39:14'),
(4, 5, 'Sambal Mangga', 'sambal-mangga', 'post-images/ErvtaawEIGu29Zp5ttjKohRqfBGXQfaKitV2hM9e.jpg', 'Bahan-bahan:- Cabai rawit dan cabai keriting secukupnya.- 2 Siung bawang merah.- 1 Buah tomat.- 1 Sa.......', '<div>Bahan-bahan:</div><div>- Cabai rawit dan cabai keriting secukupnya.</div><div>- 2 Siung bawang merah.</div><div>- 1 Buah tomat.</div><div>- 1 Sachet terasi, bakar sebentar.</div><div>- Gula merah dan garam secukupnya.</div><div>- Cacahan mangga muda.</div><div>&nbsp;</div><div>Cara membuatnya:</div><div>- Campur semua bahan kecuali mangga, ulek, cek rasa, jika sudah pas terakhir beri cacahan mangga muda.<br><br></div><div><br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:40:28'),
(5, 5, 'Sambal Terasi', 'sambal-terasi', 'post-images/x2gQ8DAwYiD8Env8KbObWUtd1av4iZSqjYg3wjy8.jpg', 'Bahan-bahan:- Rawit merah sesuai selera- 1 Siung bawang putih- 5 Siung bawang merah- 1 Buah tomat, p.......', '<div>Bahan-bahan:</div><div>- Rawit merah sesuai selera</div><div>- 1 Siung bawang putih</div><div>- 5 Siung bawang merah</div><div>- 1 Buah tomat, potong menjadi 4 bagian</div><div>- Terasi secukupnya</div><div>- Gula dan garam</div><div>- Gula merah secukupnya</div><div>- Jeruk limau</div><div>- Minyak goreng</div><div>&nbsp;</div><div>Cara membuatnya:</div><div>- Goreng sebentar dengan minyak panas semua bahan,kecuali gulgar dan gula merah, lalu ulek, beri gulgar dan gula merah, setelah itu siram dengan minyak panas, beri perasan jeruk limau, aduk rata.<strong><br></strong><br></div><div><br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:44:04'),
(6, 5, 'Sambal Kecap', 'sambal-kecap', 'post-images/qs8bQVAiH1euefyc1WRzLOXlOWvHUvQrdv7cXgFc.jpg', 'Bahan-bahan:- 9 Cabai rawit (sesuai selera)- 2 Sdm bawang merah goreng- 1 Sdm bawang putih goreng- S.......', '<div>Bahan-bahan:</div><div>- 9 Cabai rawit (sesuai selera)</div><div>- 2 Sdm bawang merah goreng</div><div>- 1 Sdm bawang putih goreng</div><div>- Secukupnya garam</div><div>- Secukupnya kecap</div><div>&nbsp;</div><div>Cara membuatnya:<br>-Goreng cabai rawit sampai layu, kemudian haluskan bersama bawang merah dan bawang putih, beri garam dan kecap, lalu aduk rata&nbsp;</div><div><br><br></div>', '2022-06-05 18:08:16', '2022-06-05 20:45:48'),
(7, 1, 'Daging Sapi Asam Manis', 'daging-sapi-asam-manis', 'post-images/ka5MPEz4LwRMRV9FlG45u9q3fC22I4i7MMs48y3Y.jpg', 'Bahan utama :- 500 gram daging sapibagian sengkel potong-potong- 500 ml santan kental dicampur denga.......', '<div>Bahan utama :</div><div>- 500 gram daging sapibagian sengkel potong-potong</div><div>- 500 ml santan kental dicampur dengan air 1 liter</div><div>- 3 keping gula merah</div><div>- 10 ml air asam jawa</div><div>- 1 sdt bumbu kaldu jamur</div><div>- 2 batang serai</div><div>- 5 lembar daun salam</div><div>- 3 ruas jari lengkuas, geprek</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 10 butir bawang merah</div><div>- 5 siung bawang putih</div><div>- 3 butir kemiri</div><div>- 1 sdm ketumbar bubuk</div><div>&nbsp;</div><div>Cara membuat :</div><div>- Haluskan bawang merah, bawang putih, kemiri, dan ketumbar</div><div>- Rebus santan sampai mendidih dan masukkan bumbu halus, daging, parutan gula merah, air asam jawa, kaldu jamur, dan aduk rata. Masukkan serai, daun salam, dan lengkuas</div><div>- Masak terus dalam api kecil sambil diaduk perlahan, masak terus sampai cairan menyusut, koreksi rasa</div><div>- Beri taburan bawang goreng, nikmati selagi hangat<br><br></div>', '2022-06-05 22:40:14', NULL),
(8, 1, 'Beef Bulgogi', 'beef-bulgogi', 'post-images/oYVf4ypqUwI4HUCi6MZGM9PJjjFT4KPXkmQULv2O.jpg', 'Bahan utama:- 300 gr daging sapi- Biji wijen secukupnya&nbsp;Bumbu marinasi:- 2 sdm madu- 2 sdm keca.......', '<div>Bahan utama:</div><div>- 300 gr daging sapi</div><div>- Biji wijen secukupnya</div><div>&nbsp;</div><div>Bumbu marinasi:</div><div>- 2 sdm madu</div><div>- 2 sdm kecap asin</div><div>- 2 sdm kecap manis</div><div>- 1 sdm saos tiram</div><div>- 2 sdm minyak wijen</div><div>- 1 ruas jahe, parut halus</div><div>- 4 buah bawang putih, parut halus</div><div>- 1/2 sdt merica bubuk</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Iris tipis daging sapi. Lalu campurkan daging dengan bumbu marinasi dan diamkan hingga bumbu meresap. Minimal 3 jam atau semalam di kulkas supaya bumbu lebih menyerap</div><div>- Panaskan wajan, tuang daging bersama bumbunya. Masak daging sambil dibolak balik hingga daging matang dengan menggunakan api kecil. tes rasa</div><div>- Matikan kompor dan sajikan<br><br></div>', '2022-06-05 22:44:23', NULL),
(9, 1, 'Rica-rica Daging', 'rica-rica-daging', 'post-images/vO4SkH26IokftcIK59w2NgxksUzOJ813CcXVIrL6.jpg', 'Bahan utama:- 800 gr daging sapi potong dadu- 2-3 sdm kecap manis- garam, gula merah secukupnya- kal.......', '<div>Bahan utama:</div><div>- 800 gr daging sapi potong dadu</div><div>- 2-3 sdm kecap manis</div><div>- garam, gula merah secukupnya</div><div>- kaldu jamur dan merica bubuk secukupnya</div><div>- 3 lembar daun salam</div><div>- 1 batang sereh memarkan</div><div>- 2 lembar daun jeruk sobek-sobek</div><div>- seruas lengkuas memarkan</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 8 butir bawang merah</div><div>- 5 siung bawang putih</div><div>- 3 butir kemiri</div><div>- cabai merah besar, keriting dan rawit sesuai selera</div><div>- sedikit jahe</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Tumis bumbu halus dan bumbu tambahan sampai wangi dan benar-benar matang mengeluarkan minyak</div><div>- Masukkan daging aduk sampai berubah warna</div><div>- Tambahkan kecap, garam, gula merah, kaldu dan merica secukupnya aduk rata</div><div>- Beri air sampai daging agak terendam, didihkan dan masak sampai daging empuk dan air menyusut. Tes rasa</div><div>- Siap disajikan dengan nasi hangat.<br><br></div>', '2022-06-05 22:47:03', NULL),
(10, 1, 'Rendang', 'rendang', 'post-images/szJf0XJdrd7mqCsc7AjrlzEIsdeU1hdqwSgliNp5.jpg', 'Bahan utama:- 1 kg daging sapi bagian paha- 2500 ml santan dari 3 butir kelapa tua parut- 3 batang s.......', '<div>Bahan utama:</div><div>- 1 kg daging sapi bagian paha</div><div>- 2500 ml santan dari 3 butir kelapa tua parut</div><div>- 3 batang serai digeprek</div><div>- 1 lembar daun kunyit disobek-sobek</div><div>- 5 lembar daun salam</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 250 gr cabai keriting merah dan rawit</div><div>- 250 gr bawang merah</div><div>- 8 siung bawang putih</div><div>- 1 sdt jinten</div><div>- 1 sdt adas</div><div>- 1 butir pala</div><div>- 5 butir cengkeh</div><div>- 3 butir kemiri</div><div>- 1 sdt merica</div><div>- 4 sdm ketumbar</div><div>- 2 jempol jahe</div><div>- 2 jempol lengkuas</div><div>- 2 jempol kunyit</div><div>- Garam dan gula secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Potong daging kira-kira 1 kg jadi 20 potong. Tumbuk bumbu hingga halus</div><div>- Masukkan santan ke dalam wajan, tambahkan serai, daun kunyit, daun salam, dan bumbu halus. Masak di atas api sambil ditimpa-timpa dengan santan hingga mendidih kira-kira 15 menit</div><div>- Masukkan daging, aduk hingga mendidih, kecilkan api. Beri garam dan gula secukupnya. Masak sampai santan mengental, aduk supaya tidak gosong</div><div>- Teruskan memasak dengan api kecil sampai rendang mengering dan berminyak.<br><br></div>', '2022-06-05 22:48:36', NULL),
(11, 1, 'Dendeng Balado', 'dendeng-balado', 'post-images/xglgKNFjRTJuoJOn2Z9ZxXYbeLdf7qWyjqsNXUIz.jpg', 'Bahan utama:- 1 kg daging sapi- 3 bh kentang, goreng- garam, gula pasir secukupnya- minyak secukupny.......', '<div>Bahan utama:</div><div>- 1 kg daging sapi</div><div>- 3 bh kentang, goreng</div><div>- garam, gula pasir secukupnya</div><div>- minyak secukupnya</div><div>&nbsp;</div><div>Bumbu ungkep:</div><div>- 6 siung baput</div><div>- 2 btr kemiri, sangrai</div><div>- 1 sdm ketumbar, sangrai</div><div>- 1 sdt lada bubuk</div><div>- 1 ruas jahe, memarkan</div><div>- 2 btg serai, memarkan</div><div>- 3 lembar daun jeruk</div><div>- 4 lembar daun salam</div><div>- 2 sdm air asam jawa</div><div>- 2 sdm gula pasir</div><div>- 500 ml air kelapa</div><div>- bubuk kaldu sapi secukupnya</div><div>&nbsp;</div><div>Bumbu balado:</div><div>- 200 gram cabai merah</div><div>- 4 siung bawang merah</div><div>- 6 siung bawang putih</div><div>- 1 sdt air jeruk nipis</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Rebus daging sapi bersama bumbu ungkep dengan presto sampai empuk dan bumbu meresap</div><div>- Setelah dingin, iris daging, pukul-pukul, lalu goreng sebentar saja</div><div>- Tumis bumbu balado yang sudah dihaluskan hingga matang, masukkan garam, gula pasir dan air jeruk nipis</div><div>- Koreksi rasa, terakhir masukkan kentang dan daging. Aduk hingga semua tercampur rata</div><div>- Angkat dan sajikan bersama nasi hangat.<br><br></div><div><br><br></div>', '2022-06-05 22:49:47', NULL),
(12, 3, 'Ayam Bakar Madu', 'ayam-bakar-madu', 'post-images/3m2oxC6BrbBKO77VSuDrj9yvQTrXD7RkhoXuB6tI.jpg', 'Bahan utama:- 6 potong sayap ayam- 4 sdm minyak goreng- 4 sdm madu&nbsp;Bumbu halus:- 6 siung bawang.......', '<div>Bahan utama:</div><div>- 6 potong sayap ayam</div><div>- 4 sdm minyak goreng</div><div>- 4 sdm madu</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 6 siung bawang merah</div><div>- 1/2 sdt lada bubuk</div><div>- 1 sdt garam</div><div>- 3 siung bawang putih</div><div>- 1/2 sdt ketumbar</div><div>- 1 sdm kecap asin</div><div>- 1 ruas jahe</div><div>- air secukupnya</div><div>- 1 sdm kecap manis</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Masak ungkep ayam dengan bumbu haluskan sampai matang. Angkat dan biarkan dingin</div><div>- Oleskan madu dan minyak goreng pada ayam</div><div>- Bakar ayam sampai berwarna cokelat kehitaman di bagian luar.<br><br></div>', '2022-06-05 22:51:09', NULL),
(13, 3, 'Ayam Kecap', 'ayam-kecap', 'post-images/oq9qpFiCnh1jJQQOKgcfccoUiVX4sLDcJo6X8L4U.jpg', 'Bahan :- 300 gram ayam potong- 2 siung bawang putih- 1 ruas jahe- 200 ml air- 5 buah cabai rawit- 2.......', '<div>Bahan :</div><div>- 300 gram ayam potong</div><div>- 2 siung bawang putih</div><div>- 1 ruas jahe</div><div>- 200 ml air</div><div>- 5 buah cabai rawit</div><div>- 2 butir bawang merah</div><div>- merica bubuk secukupnya</div><div>- 2 sendok makan kecap manis</div><div>- minyak goreng secukupnya</div><div>- 1 sendok teh gula pasir</div><div>- garam secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Goreng ayam setengah matang, tiriskan.</div><div>- Tumis bawang merah dan bawang putih, tambahkan jahe memar, irisan cabai hingga harum</div><div>- Beri garam dan merica bubuk, lalu tuang air</div><div>- Setelah mendidih, masukkan ayam. Tambahkan kecap dan gula pasir secukupnya</div><div>- Masak sampai ayam matang dan kuah menyusut hingga separuhnya.</div><div>&nbsp;<br><br></div>', '2022-06-05 22:51:58', '2022-06-05 22:52:25'),
(14, 3, 'Ayam Woku', 'ayam-woku', 'post-images/QgjLi817W4bPV7ZWxzQOQjunIKO5CfEFvs1RexjA.jpg', 'Bahan utama:- 1 kg daging ayam- gula dan kaldu bubuk secukupnya- air perasan jeruk nipis dan garam s.......', '<div>Bahan utama:</div><div>- 1 kg daging ayam</div><div>- gula dan kaldu bubuk secukupnya</div><div>- air perasan jeruk nipis dan garam secukupnya</div><div>&nbsp;</div><div>Bahan halus:</div><div>- 5 siung bawang putih</div><div>- 3 ruas jahe</div><div>- 12 siung bawang merah</div><div>- 4 butir kemiri</div><div>- 8 buah cabai rawit</div><div>- 1 ruas kunyit</div><div>- 4 buah cabai merah</div><div>&nbsp;</div><div>Bumbu iris:</div><div>2 batang serai</div><div>2 buah tomat</div><div>1 lembar daun kunyit</div><div>5 lembar daun jeruk</div><div>1 batang daun bawang</div><div>daun kemangi secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Beri garam dan air perasan jeruk nipis pada ayam, diamkan beberapa saat.</div><div>- Tumis bumbu halus dan daun jeruk. Tambahkan garam, gula, dan kaldu bubuk secukupnya.</div><div>- Masukkan ayam, tuang air sedikit demi sedikit dan bumbu iris. Masak sampai air menyusut.</div><div>- Beri kemangi. Aduk.<br><br></div>', '2022-06-05 22:53:27', NULL),
(15, 3, 'Ayam Geprek', 'ayam-geprek', 'post-images/vpLAlCFGQ2KNBgwSDuC84v9AfMrATs3nTcDxje0s.jpg', 'Bahan utama:- 1/2 ekor daging ayam- 8 butir bawang merah- 1/2 buah jeruk nipis- 100 gram cabe ijo ke.......', '<div>Bahan utama:</div><div>- 1/2 ekor daging ayam</div><div>- 8 butir bawang merah</div><div>- 1/2 buah jeruk nipis</div><div>- 100 gram cabe ijo keriting</div><div>- minyak kelapa</div><div>- 1 siung bawang putih</div><div>- garam dan gula</div><div>&nbsp;</div><div>Bumbu ungkep ayam:</div><div>- 3 siung bawang putih</div><div>- 2 cm kunyit</div><div>- 2 cm jahe</div><div>- 1/2 sdt ketumbar bubuk</div><div>- garam</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Cuci bersih ayam, ungkep bersama bumbu selama 1 jam. Lalu goreng hingga kecokelatan</div><div>- Ulek kasar cabe ijo, bawang merah, dan bawang putih. Kucuri sedikit air perasan jeruk nipis. Tumis sebentar dengan minyak kelapa. Beri gula dan garam secukupnya</div><div>- Taruh sambal cabai hijau di atas ayam, geprek ayam goreng&nbsp;</div>', '2022-06-05 22:54:36', NULL),
(16, 3, 'Ayam Lodho', 'ayam-lodho', 'post-images/evqdx7uO6wNGgHW8QrSODlIVBsA3DVSWix3JA3js.jpg', 'Bahan utama:- 1 kg ayam dipotong 12, bersihkan- 1 ruas lengkuas, geprek- 3 lembar daun salam- 2 buah.......', '<div>Bahan utama:</div><div>- 1 kg ayam dipotong 12, bersihkan</div><div>- 1 ruas lengkuas, geprek</div><div>- 3 lembar daun salam</div><div>- 2 buah jeruk nipis</div><div>- 3 lembar daun jeruk</div><div>- 10 cabai rawit merah</div><div>- 3 batang serai, geprek</div><div>- 500 ml santan kental</div><div>- 1 sdt jintan bubuk</div><div>- garam, gula, minyak</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 15 siung bawang merah</div><div>- 1 ruas jari kunyit</div><div>- 2 ruas kencur</div><div>- 7 siung bawang putih</div><div>- 4 buah cabai merah keriting</div><div>- 1 sdm ketumbar</div><div>- 5 butir kemiri, sangrai</div><div>- 1 ruas jahe</div><div>- 1 sdt lada putih</div><div>- air</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Kucuri ayam dengan perasan air jeruk nipis, garam, lada, dan sedikit minyak. Aduk rata</div><div>- Panggang ayam hingga berubah warna kecoklatan. Angkat</div><div>- Tumis daun salam, daun jeruk, serai dan lengkuas</div><div>- Masukkan bumbu halus dan cabai rawit merah, tumis lagi hingga harum.</div><div>- Tuang jintan bubuk dan santan. Aduk sebentar. Masukkan ayam, aduk rata, masak sebentar dan aduk rata.</div><div>- Beri garam dan gula. Masak hingga air sedikit menguap.<br><br></div>', '2022-06-05 22:55:50', NULL),
(17, 3, 'Semur Ayam', 'semur-ayam', 'post-images/oRTxzO2LLfuq9wA1KkycKn85dqOn5Pw23MvLdos0.jpg', 'Bahan:- 1 ekor ayam (potong jadi 12 bagian)- 1 sdt pala bubuk- 1 sdm garam- 4 butir kemiri yang disa.......', '<div>Bahan:</div><div>- 1 ekor ayam (potong jadi 12 bagian)</div><div>- 1 sdt pala bubuk</div><div>- 1 sdm garam</div><div>- 4 butir kemiri yang disangrai</div><div>- 300 gram kentang, potong-potong</div><div>- 4 buah tahu kotak kecil, potong miring jadi 2 bagian</div><div>- 6 butir bawang merah</div><div>- 3 siung bawang putih</div><div>- 3 cm kayu manis</div><div>- 1/2 sdt ketumbar yang disangrai</div><div>- 1 cm jahe</div><div>- 2 sdm minyak goreng</div><div>- 1/2 sdt air perasan jeruk nipis</div><div>- 1/2 sdm garam</div><div>- 1/2 sdt merica bubuk</div><div>- 1000 ml air</div><div>- 2 lembar daun salam</div><div>- 6 buah cengkeh</div><div>- 2 buah tomat yang dipotong-potong</div><div>- 150 ml kecap manis</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Cuci bersih daging ayam. Kemudian lumuri dengan air jeruk nipis dan garam. Diamkan selama 15 menit. Goreng ayam.</div><div>- Tumis bawang merah, bawang putih, kemiri, jahe, dan pala yang sudah dihaluskan. Tambahkan daun salam, cengkeh, serta kayu manis. Masukkan potongan tomat, aduk sampai rata dan matang.</div><div>- Masukkan daging ayam, aduk sampai bumbu meresap.</div><div>- Masukkan potongan kentang dan tahu. Aduk rata lagi.</div><div>- Tambahkan 150 ml kecap manis, garam, serta merica bubuk. Aduk.</div><div>- Tuangkan air, masak hingga daging empuk dan kuahnya sedikit mengental.<br><br></div>', '2022-06-05 22:57:24', NULL),
(18, 2, 'Sayur Sup Bening', 'sayur-sup-bening', 'post-images/4X3ERCXY7uBJoZs6R9XZ9HuA5ngeJiSSIIRMg2UU.jpg', 'Bahan utama:- 3 buah wortel ukuran kecil, potong-potong- 7 buah buncis, potong-potong- 1 buah kentan.......', '<div>Bahan utama:</div><div>- 3 buah wortel ukuran kecil, potong-potong</div><div>- 7 buah buncis, potong-potong</div><div>- 1 buah kentang, potong-potong</div><div>- 1/2 kubis/ kol, potong-potong</div><div>- 10 biji bakso sapi, iris-iris</div><div>- 1 liter air</div><div>- bawang goreng secukupnya</div><div>&nbsp;</div><div>Bumbu:</div><div>- 3 siung bawang putih, geprek</div><div>- 1 buah bawang prei, iris-iris</div><div>- 2 lembar daun seledri, iris-iris</div><div>- 1 buah tomat, potong-potong</div><div>- 1 sdt garam</div><div>- 1/2 sdt merica bubuk</div><div>- sejumput gula</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Rebus air hingga mendidih kemudian masukkan bawang putih geprek</div><div>- Kemudian tambahkan sayuran yang telah dipotong-potong kecuali kubis dan bakso</div><div>- Tambahkan garam, merica bubuk dan gula</div><div>- Setelah sayuran dirasa cukup empuk, masukkan sayur kubis, seledri, bawang prei, tomat, dan bawang goreng</div><div>- Aduk rata, tunggu mendidih, tes rasa dan matikan kompor, sajikan&nbsp;</div>', '2022-06-05 22:59:56', NULL),
(19, 2, 'Sup Ceker', 'sup-ceker-', 'post-images/eF2zUPtFNeoLrsGEgoMxDWZou2JqXliydlT4piIJ.jpg', 'Bahan:- 15 buah ceker- 2 buah wortel, potong-potong- 1 buah kentang, potong-potong- kubis secukupnya.......', '<div>Bahan:</div><div>- 15 buah ceker</div><div>- 2 buah wortel, potong-potong</div><div>- 1 buah kentang, potong-potong</div><div>- kubis secukupnya</div><div>- daun bawang, potong-potong</div><div>- daun seledri, potong-potong</div><div>- 5 siung bawang putih, haluskan</div><div>- 1/2 buah pala, geprek</div><div>- gula, garam dan merica secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Bersihkan ceker. Presto selama 30 menit dari bunyi desis presto. Lalu buang airnya dan cuci bersih ceker</div><div>- Tumis bawang putih dan pala. Masukkan air, ceker, kentang dan wortel. Masak dengan api kecil sampai sayur empuk</div><div>-&nbsp;Masukkan kubis, gula, garam, dan merica. Koreksi rasa</div><div>- Jika sudah pas, matikan api kompor lalu taburi dengan daun bawang dan seledri, Sajikan.<br><br></div>', '2022-06-05 23:01:57', NULL),
(20, 2, 'Sup Merah', 'sup-merah-', 'post-images/yhFhGe51CTwPAYCwZIQ4iLbwKnL9cb2EAx6JkXMB.jpg', 'Bahan:- 4 buah tomat, rebus, saring- 2 sdm saus tomat- 10 sosis iris- 1/4 luncheon meat potong dadu-.......', '<div>Bahan:</div><div>- 4 buah tomat, rebus, saring</div><div>- 2 sdm saus tomat</div><div>- 10 sosis iris</div><div>- 1/4 luncheon meat potong dadu</div><div>- 1 potong dada ayam</div><div>- 1/2 mangkuk kecil sayur frozen</div><div>- 1/2 bawang bombai potong kotak kecil</div><div>- 2 siung bawang putih cincang halus</div><div>- 1 batang daun bawang iris</div><div>- 1/2 sdt pala bubuk</div><div>- 1 blok kaldu ayam</div><div>- gula, garam, merica</div><div>- 1 sdm terigu</div><div>- 1 liter air</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Rebus ayam dalam 1 liter air sampai empuk. potong kotak. Saring air kaldunya.</div><div>- Tumis bawang putih dan bawang bombai sampai harum. Masukkan tomat blender, saus tomat, dan terigu. Aduk rata.</div><div>- Tuang kaldu ayam, masukkan kaldu blok. Setelah mendidih, masukkan sayur, ayam, sosis.</div><div>- Beri bubuk pala, gula, garam, merica. Koreksi rasa.</div><div>- Masak sampai matang, menjelang diangkat masukan daun bawang.<br><br></div>', '2022-06-05 23:03:37', NULL),
(21, 2, 'Sup Telur Jagung', 'sup-telur-jagung', 'post-images/eYSCrD6zTtCbxnBC5vrdJzorCrPAiYkPrj00rih8.jpg', 'Bahan:- 2 butir telur kocok- 1 buah jagung manis pipil- 1 buah wortel potong dadu- 1 buah tomat buan.......', '<div>Bahan:</div><div>- 2 butir telur kocok</div><div>- 1 buah jagung manis pipil</div><div>- 1 buah wortel potong dadu</div><div>- 1 buah tomat buang bijinya potong-potong kecil</div><div>- 1/2 buah bawang bombai iris</div><div>- 1 batang daun bawang dan seledri iris</div><div>- 2 siung bawang putih iris tipis</div><div>- 2 butir bawang merah iris tipis</div><div>- 1/2 sdt lada bubuk</div><div>- 1/2 sdt gula pasir</div><div>- kaldu bubuk secukupnya</div><div>- 500 ml air atau secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Tumis bawang bombai, irisan bawang merah dan putih sampai wangi.</div><div>- Masukkan kocokan telur, buat orak arik.</div><div>-&nbsp;Tambahkan air biarkan mendidih.</div><div>- Setelah mendidih masukkan jagung, wortel, lada bubuk, gula, kaldu bubuk.</div><div>- Masak sampai jagung dan wortel empuk.</div><div>- Lalu tambahkan potongan tomat, daun bawang dan seledri. Koreksi rasa dan sajikan.<br><br></div>', '2022-06-06 00:15:38', NULL),
(22, 6, 'Lodeh Tahu Tempe Cecek', 'lodeh-tahu-tempe-cecek', 'post-images/UvilkhDhTItQjeyizTsp8v7vZKLLrSIRq81tlr51.jpg', 'Bahan utama:&nbsp;- 2 buah tahu ukuran besar, potong kotak-kotak, goreng setengah matang&nbsp;- 1 pa.......', '<div>Bahan utama:<br>&nbsp;- 2 buah tahu ukuran besar, potong kotak-kotak, goreng setengah matang<br>&nbsp;- 1 papan tempe ukuran sedang, potong kotak-kotak, goreng setengah matang<br>&nbsp;- 250 gr cecek/kulit sapi yang sudah direbus, potong-potong<br>&nbsp;- 1 liter santang sedang</div><div>&nbsp;</div><div>Bumbu halus:</div><div>- 5 siung bawang putih</div><div>- 8 siung bawang merah</div><div>- 5 buah cabai merah besar</div><div>- 15 buah cabai rawit</div><div>- 2 ikat daun lokio, potong-potong</div><div>- 5 buah kemiri sangrai</div><div><br></div><div>Bumbu lain:</div><div>- 3 cm lengkuas, geprek&nbsp;</div><div>- 4 lembar daun salam</div><div>- 1 sdt ketumbar bubuk</div><div>- cabai rawit utuh secukupnya</div><div>-&nbsp; gula, garam, merica dan kaldu bubuk secukupnya<br><br></div><div>Cara membuat:</div><div>-&nbsp;Goreng terlebih dahulu semua bumbu halus hingga matang lalu ulek bersama ketumbar bubuk hingga halus</div><div>- Didihkan air, masukkan bumbu halus bersama lengkuas dan daun salam tunggu hingga mendidih</div><div>-&nbsp;Masukkan potongan tahu, tempe, cecek dan cabai rawit utuh, aduk sebentar</div><div>- Masukkan santan, bumbui dengan gula, garam, merica dan kaldu bubuk</div><div>-&nbsp;Koresi rasa, terakhir masukkan potongan daun lokio, angkat dan sajikan.</div><div>&nbsp;<br><br></div>', '2022-06-06 00:21:47', NULL),
(23, 6, 'Tempe Goreng Keju', 'tempe-goreng-keju', 'post-images/l8UNLXdRakNJaoze2FAbKa6L1Fw4joUkS13quMYt.jpg', 'Bahan-bahan:- 150 gram tempe, iris tipis jadi 12 bagian, lalu kukus- 2 lembar keju lembaran, potong.......', '<div>Bahan-bahan:</div><div>- 150 gram tempe, iris tipis jadi 12 bagian, lalu kukus</div><div>- 2 lembar keju lembaran, potong jadi 6 bagian</div><div>- 3 siung bawang putih, haluskan</div><div>- 50 ml air</div><div>- garam secukupnya</div><div>- 1 butir telur</div><div>- tepung panir dan minyak untuk menggoreng secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>-&nbsp; Rendam tempe ke dalam larutan air, garam dan bawang putih hingga meresap. Angkat, selipkan irisan keju di setiap dua irisan tempe lalu masing-masing digulingkan ke tepung panir.</div><div>- Celupkan ke dalam kocokan telur dan garam lalu gulingkan lagi ke tepung panir. Goreng dalam minyak panas hingga kuning kecoklatan, angkat dan tiriskan.<br><br></div><div><br><br></div>', '2022-06-06 00:23:57', NULL),
(24, 6, 'Burger Tempe Crispy', 'burger-tempe-crispy', 'post-images/iJqej5sXSuL151M5y0pKnaeoUq5Uxcbcku60OHgC.jpg', 'Bahan-bahan:- 2 buah roti burger-&nbsp; 250 gram tempe- 1 bungkus tepung bumbu (sbg pengental)-&nbsp.......', '<div>Bahan-bahan:</div><div>- 2 buah roti burger</div><div>-&nbsp; 250 gram tempe</div><div>- 1 bungkus tepung bumbu (sbg pengental)</div><div>-&nbsp; 2 bungkus tepung krispi</div><div>- 1 buah tomat</div><div>-&nbsp; daun selada secukupnya</div><div>-&nbsp; mentimun secukupnya</div><div>-&nbsp; saus sambal atau mayonaise secukupnya (sesuai selera)<br><br></div><div>Cara membuat:</div><div>- Kukus tempe.</div><div>- Masukkan 4 sendok makan tepung bumbu ke dalam wadah dan campur dengan air secukupnya.</div><div>- Setelah dikukus, hancurkan tempe dan campur dengan tepung bumbu.</div><div>- Bentuk tempe menyerupai daging.</div><div>- Masukkan tempe ke dalam adonan basah tepung krispi.</div><div>- Lumuri lagi dengan adonan kering tepung krispi.</div><div>- Goreng hingga kuning kecoklatan.</div><div>- Letakkan roti burger bagian bawah. Olesi dengan saus sambal atau mayonaise secukupnya.</div><div>- Letakkan selada, tomat, mentimun secara bertumpuk di atas roti.</div><div>- Kemudian letakkan tempe crispy di atas sayuran, lalu taburi BonCabe di atas tempe crispy.</div><div>- Tutup dengan roti burger bagian atas.<br><br></div>', '2022-06-06 00:26:10', '2022-06-06 00:32:57'),
(25, 6, 'Tahu Walik', 'tahu-walik', 'post-images/MiAXWNyWlkICmshWAZtg1euKoBB96eIArrWncU9K.jpg', 'Bahan-bahan :- Tahu Sumedang – 10 buah- Dada ayam giling – 250 gram- Tepung tapioka – 100 gram- Puti.......', '<div>Bahan-bahan :</div><div>- Tahu Sumedang – 10 buah</div><div>- Dada ayam giling – 250 gram</div><div>- Tepung tapioka – 100 gram</div><div>- Putih telur – 1 butir</div><div>- Bawang putih, haluskan – 3 siung</div><div>- Daun bawang, iris tipis – 1 batang</div><div>- Merica halus – 1/4 sdt</div><div>- Kaldu ayam bubuk – 1/2 sdt</div><div>- Garam – 1 sdt</div><div>- Gula – 1/2 sdt<br><br></div><div>Cara membuat<br>- Setelah bahan disiapkan, langkah kedua untuk membuat tahu walik adalah dengan menyiapkan tahu sumedang yang telah dibeli. 10 buah tahu Sumedang yang telah disiapkan, Sedulur potong menjadi dua dan kemudian membalikannya. Balik semua potongan tahu dan simpan di wadah khusus dan terpisah.</div><div>- Setelah menyiapkan tahu, langkah selanjutnya adalah membuat tahu walik adalah membuat adonan. Bahan seperti daging ayam giling, putih telur, bawang putih halus, merica, kaldu bubuk, garam, dan gula.&nbsp;</div><div>- Aduk rata dengan menggunakan blender atau copper. Kemudian masukkan tepung tapioka dan daun bawang, kemudian aduk hingga rata.&nbsp;</div><div>- Masukkan adonan dalam tahu yang telah dibalikan. Lalu goreng hingga kering. Tahu walik pun siap dinikmati.<br><br></div>', '2022-06-06 00:27:54', '2022-06-06 00:33:08'),
(63, 6, 'Tumis Kecap Tahu Tempe', 'tumis-kecap-tahu-tempe', 'post-images/SmfxBht2tOLlPAkjoUPlEc1WETqlUVrqTqFXwVRW.jpg', 'Bahan-bahan :- tahu dan tempe potong dadu goreng setengah matang- 3 buah bawang merah iris tipis- 5.......', '<div>Bahan-bahan :<br>- tahu dan tempe potong dadu goreng setengah matang<br>- 3 buah bawang merah iris tipis<br>- 5 siung bawang putih iris tipis<br>- 5 buah cabai rawit merah iris<br>- 2 cm lengkuas geprek<br>- 1 buah tomat iris dadu<br>- 1/2 sdt garam<br>- kecap secukupnya<br><br></div><div>Cara membuat :<br>- Panaskan sedikit minyak, tumis bawang merah, bawang putih, cabai, tomat, lengkuas sampai harum<br>- Tambahkan sedikit air tunggu sampai mendidih<br>- Setelah mendidih masukan potongan tahu dan tempe aduk, tambahkan garam dan kecap aduk lagi sampai rata<br>- Koreksi rasa, tunggu sampai meresap, dan siap untuk disajikan.<br><br></div>', '2022-06-06 00:32:39', NULL),
(64, 6, 'Nugget Tahu', 'nugget-tahu', 'post-images/MdGDKdMiOEkyOXg31C0OK9vxrikbfcoksDcgfAQu.jpg', 'Bahan-bahan :- 3 buah tahu- 50 gram tepung terigu- 1 batang bawang prei- 2 baput haluskan- Garam, la.......', '<div>Bahan-bahan :</div><div>- 3 buah tahu</div><div>- 50 gram tepung terigu</div><div>- 1 batang bawang prei</div><div>- 2 baput haluskan</div><div>- Garam, lada secukupnya</div><div>- Tepung panir</div><div>&nbsp;</div><div>Cara membuat :</div><div>- Terlebih dahulu hancurkan tahu dengan garpu</div><div>- Kemudian campurkan dengan tepung terigu, bawang putih yang sudah dihaluskan, tambahkan garam, lada, dan bawang prei yang sudah dipotong halus</div><div>- Aduk hingga adonan rata.</div><div>- Kemudian, bentuk adonan sesuai selera, lalu balurkan dengan tepung panir.</div><div>- Simpan adonan di dalam kulkas selama 2 jam. Kemudian digoreng hingga kekuningan.<br><br></div>', '2022-06-06 00:48:19', NULL),
(65, 7, 'Telur Dadar', 'telur-dadar', 'post-images/YEUQ6nWv0lWFwDQvyBubtPBzsm055vVnu1eBQPxP.jpg', 'Bahan :- Telur ayam- 1 batang daun bawang, iris halus- 1 ½ siung bawang putih, memarkan dan iris hal.......', '<div>Bahan :</div><div>- Telur ayam</div><div>- 1 batang daun bawang, iris halus</div><div>- 1 ½ siung bawang putih, memarkan dan iris halus</div><div>- 1 buah cabai merah keriting, iris tipis</div><div>- ½ buah tomat, iris halus</div><div>- 3 lembar kol, iris halus</div><div>- 1 batang seledri, iris halus</div><div>- ½ sdt merica</div><div>- ½ sdt garam</div><div>- 2 sdm minyak goreng</div><div>&nbsp;</div><div>Cara Membuat :</div><div>-&nbsp;Kocok semua bahan menjadi satu.</div><div>- Panaskan minyak, masukkan adonan dan ratakan</div><div>- Masak hingga setengah matang dan gulung.</div><div>- Bolak-balik hingga matang. Angkat dan hidangkan</div><div>&nbsp;<br><br></div>', '2022-06-06 00:53:17', NULL),
(66, 7, 'Egg Rolls', 'egg-rolls', 'post-images/8MivKocWF2otHPIVBkzV6Z4rmcxrOrc7e6mg1A82.jpg', 'Bahan :&nbsp;3 butir telur- 1 sdm susu- 1 sdm wortel cincang- 1 sdm bawang merah cincang- 1 sdm daun.......', '<div>Bahan :</div><div>&nbsp;3 butir telur</div><div>- 1 sdm susu</div><div>- 1 sdm wortel cincang</div><div>- 1 sdm bawang merah cincang</div><div>- 1 sdm daun bawang iris</div><div>- Garam secukupnyaa</div><div>- Lada secukupnya</div><div>&nbsp;</div><div>Cara Membuat :</div><div>- Masukkan telur dalam mangkuk, tuang susu dan 1/2 sdt garam. Kocok rata.</div><div>- Tuang campuran telur kedalam mangkuk yang berbeda dengan disaring. Masukkan wortel, bawang merah, daun bawang, lada bubuk, dan garam. Aduk rata.</div><div>-&nbsp;Siapkan wajan bundar, olesi dengan minyak sayur. Tuang 1/2 sendok sayur adonan telur kedalam wajan, ratakan hingga berbentuk bundar.</div><div>- Masak telur hingga setengah matang. Gulung salah satu sisi telur, olesi bagian wajan yang tidak tertutupi adonan.</div><div>-&nbsp;Tuangi 1/4 adonan omelet ke samping omelet yang tidak digulung dan masak sampai setengah matang.</div><div>- Gulung semua bagian. Lakukan hal yang sama sampai adonan habis.</div><div>- Potong-potong omelet gulung saat dingin agar bentuknya sempurna.<br><br></div>', '2022-06-06 00:54:59', NULL),
(67, 7, 'Telur Gulung Saus Asam Manis', 'telur-gulung-saus-asam-manis', 'post-images/HbtTV4EnneBQ2HU2Kr2bPOdw5C7hCe1JRXJdDe45.jpg', 'Bahan:&nbsp;- 3 butir telur&nbsp;- 1/2 bagian bawang bombay, potong kecil&nbsp;- 1 batang daun bawan.......', '<div>Bahan:<br>&nbsp;- 3 butir telur<br>&nbsp;- 1/2 bagian bawang bombay, potong kecil<br>&nbsp;- 1 batang daun bawang, potong halus<br>&nbsp;- 1 buah wortel, potong kecil-kecil<br>&nbsp;- 4 sdm saus tomat<br>&nbsp;- Garam secukupnya<br>&nbsp;- Gula secukupnya<br><br></div><div>Cara membuat:</div><div>-&nbsp;Kocok lepas telur dan campurkan dengan potongan wortel, daun bawang, dan garam.</div><div>- Panaskan sedikit minyak ke dalam teflon. Dadar telur ke dalam teflon. Jika sedikit matang, gulung telur dengan spatula.</div><div>-&nbsp;Jika sudah matang, angkat telur dan potong menjadi beberapa bagian sesuai selera.</div><div>- Untuk sausnya, panaskan sedikit minyak ke dalam wajan, tumis bawang bombay hingga harum dan layu.</div><div>-&nbsp;Masukkan saus tomat, gula, dan sedikit garam.</div><div>-&nbsp;Siramkan saus di atas telur dadar gulung yang sudah dipotong. Sajikan.</div><div>&nbsp;<br><br></div>', '2022-06-06 00:56:05', NULL),
(68, 7, 'Telur Ceplok Masak Pedas', 'telur-ceplok-masak-pedas', 'post-images/ATmLwdxdWhWI6Vhf9tyfaghimOtMH3njli3xSjeZ.jpg', 'Bahan:&nbsp;- 7 butir telur&nbsp;- 1 buah tomat, iris&nbsp;- 1/2 bawang bombay, rajang&nbsp;- 1/2 sd.......', '<div>Bahan:</div><div>&nbsp;- 7 butir telur<br>&nbsp;- 1 buah tomat, iris<br>&nbsp;- 1/2 bawang bombay, rajang<br>&nbsp;- 1/2 sdt garam<br>&nbsp;- 1/2 sdt penyedap rasa<br>&nbsp;- 100 ml air<br>&nbsp;- 2 lembar daun salam<br>&nbsp;- Minyak goreng</div><div>&nbsp;</div><div>Bumbu halus:<br>&nbsp;- 10 cabai merah keriting<br>&nbsp;- 3 cabai merah besar<br>&nbsp;- 3 siung bawang putih<br>&nbsp;- 6 butir bawang merah</div><div>&nbsp;</div><div>Cara membuat:</div><div>- &nbsp;Goreng telur mata sapi. Sisihkan</div><div>- Panaskan minyak dan tumis bumbu halus.</div><div>-&nbsp;Tambahkan bawang bombay dan daun salam, masak sampai harum</div><div>- Masukkan air, garam, penyedap rasa, dan irisan tomat. Aduk sampai mengental.</div><div>-&nbsp;Masukkan telur aduk rata. Angkat dan sajikan.<br><br></div>', '2022-06-06 00:58:00', NULL),
(69, 7, 'Telur Gulung', 'telur-gulung', 'post-images/l34Bp4TaNKFYVMyfb5go7oZfUfcNhRVjIaAHIicT.jpg', 'Bahan:- 2 butir telur- 100 ml air- 1 sdm maizena- Kaldu bubukCara membuat:- Campur semu bahan.- Tuan.......', '<div>Bahan:<br>- 2 butir telur<br>- 100 ml air<br>- 1 sdm maizena<br>- Kaldu bubuk<br><br></div><div>Cara membuat:<br>- Campur semu bahan.<br>- Tuang 1.5 sdm adonan ke dalam minyak panas, langsung gulung dengan tusuk sate.<br>- Pipihkan di pinggir wajan. Tiriskan.<br><br></div>', '2022-06-06 01:02:46', NULL),
(70, 4, 'Ikan Sate Tuna Bakar', 'ikan-sate-tuna-bakar', 'post-images/QwtmlGICB88g0Lo5i5c9thclE8bHNo9xUPAVh9hR.jpg', 'Bahan-bahan- 1 ekor tuna, bersihkan dan ambil dagingnya saja-1 buah jeruk nipis- 2 buah bawang bomba.......', '<div>Bahan-bahan</div><div>- 1 ekor tuna, bersihkan dan ambil dagingnya saja</div><div>-1 buah jeruk nipis</div><div>- 2 buah bawang bombay</div><div>- 4 buah tomat, buang isinya</div><div>- Tusuk sate, secukupnya</div><div>- Bahan membuat bumbu:</div><div>- 4 siung bawang merah</div><div>- 3 siung bawang putih</div><div>- 2 buah cabai rawit</div><div>- 1 buah cabai merah</div><div>- 1 sdt ketumbar bubuk</div><div>- 1 biji kemiri</div><div>- 1 sdm madu</div><div>- 50 ml air</div><div>- 5 sdm kecap</div><div>- Garam, secukupnya</div><div>- Minyak goreng, secukupnya</div><div>- Margarin, secukupnya</div><div>- Asem, secukupnya</div><div>&nbsp;</div><div>Bahan membuat sambal kecap:</div><div>- 3 buah cabai rawit, diiris</div><div>- 2 siung bawang merah, diiris</div><div>- 1 buah tomat, ambil kulitnya</div><div>- Kecap manis, secukupnya</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Pertama-tama, siapkan semua bahannya. Ambil ikan tuna yang sudah dipotong-potong. Cuci bersih dan rendam dengan perasan air jeruk nipis selama 5-10 menit.</div><div>- Siapkan tusuk sate. Nah, perhatikan urutan yang tepat, yaitu tomat, tuna, bawang bombay, tuna, tomat, tuna.</div><div>- Kemudian, haluskan semua bumbu halus, kecuali kecap, madu, air, asem.</div><div>- Tumis bumbu halus dan berikan minyak goreng sampai benar-benar harum. Kemudian, masukkan air, asem, kecap, dan madu. Aduk sampai merata. Koreksi rasa.</div><div>-&nbsp; Oleskan sate dengan bumbu halus yang sudah dibuat. Biarkan kurang lebih selama 10 menit sampai bumbu benar-benar meresap.</div><div>-&nbsp; Lalu, panggang sate dan jangan lupa sembari dioleskan margarin dan bumbu halus sekali lagi agar rasanya lebih gurih.</div><div>-&nbsp; Kemudian, panggang sate sampai mulai matang dari teksturnya.</div><div>-&nbsp; Sambil memanggang sate, Moms dapat membuat sambal kecap dari bahan-bahan yang sudah ada. Tambahkan garam sedikit saja sebagai penyeimbang rasa</div><div>- Olahan ikan berupa sate ikan tuna bakar siap disajikan untuk keluarga&nbsp;</div>', '2022-06-06 01:06:13', NULL),
(71, 4, 'Ikan Nila Pesmol Kuah Kuning', 'ikan-nila-pesmol-kuah-kuning', 'post-images/Eu7zvpBuvnwo6VVsjEP8OiN3pQX9v8sd7ig9x1FI.jpg', 'Bahan-bahan- 1 ekor ikan nila ukuran besar- Seiris jeruk nipis- Bumbu halus- 8 siung bawang merah-&n.......', '<div>Bahan-bahan</div><div>- 1 ekor ikan nila ukuran besar</div><div>- Seiris jeruk nipis</div><div>- Bumbu halus</div><div>- 8 siung bawang merah</div><div>-&nbsp; 4 siung bawang putih</div><div>- 1cm jahe</div><div>- 1cm kunyit</div><div>- 3 butir kemiri</div><div>- 1cm laos</div><div>&nbsp;</div><div>Bumbu Halus:</div><div>- 1 batang sereh geprek</div><div>- 1 lembar daun jeruk</div><div>- 1 lembar daun salam</div><div>- 1 buah tomat</div><div>- 1/4 buah pepaya mentah</div><div>- Sejumput garam, gula, kaldu bubuk</div><div>- 250 ml air</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Bersihkan ikan nila lalu berikan perasan air jeruk nipis, serta lumuri dengan garam.</div><div>- Goreng ikan hingga warnanya keemasan, angkat dan tiriskan, kemudian sisihkan.</div><div>- Blender bumbu halus lalu tumis dengan minyak secukupnya, masukkan sereh, daun jeruk, daun salam, lalu tambahkan air.</div><div>- Masukkan pepaya yang sudah diiris tipis, masak sebentar lalu masukan ikan nila, garam, gula dan kaldu bubuk.</div><div>- Terakhir masukkan tomat iris, masak hingga air menyusut<br>- Pesmol ikan nila kuah kuning siap disajikan&nbsp;</div>', '2022-06-06 01:08:50', NULL),
(72, 4, 'Ikan Tongkol Asam Padeh', 'ikan-tongkol-asam-padeh', 'post-images/WZfKIxbq6UtT0yZh4lBEilX81oqJvMPeaNeCeYRp.jpg', 'Bahan-bahan- 1 ekor (800 gr) ikan tongkol- 1 buah jeruk nipis- 1 sdt garam halus- 5 lembar daun jeru.......', '<div>Bahan-bahan</div><div>- 1 ekor (800 gr) ikan tongkol</div><div>- 1 buah jeruk nipis</div><div>- 1 sdt garam halus</div><div>- 5 lembar daun jeruk</div><div>- 1 batang sereh, geprek</div><div>- 1/2 buah nanas, potong-potong</div><div>-&nbsp; 200 gr cabai halus (sesuai selera)</div><div>- Segenggam daun ruku-ruku</div><div>- Air secukupnya</div><div>- 4 asam kandis</div><div>&nbsp;</div><div>Bumbu Halus:</div><div>- 2 ruas jari lengkuas muda</div><div>- Segenggam bawang merah</div><div>- 5 siung bawang putih</div><div>- 4 butir kemiri bakar</div><div>- Sedikit kunyit</div><div>- Seruas jahe<br><br></div><div>Cara membuat:</div><div>-&nbsp;Cuci bersih ikan, kucuri jeruk nipis dan garam, diamkan 15 menit. Lalu cuci bersih kembali.</div><div>- Dalam belanga satukan bumbu halus, daun jeruk, sereh, cabai halus dan air. Masak hingga mendidih.<br><br></div>', '2022-06-06 01:10:36', NULL),
(73, 4, 'Ikan Mujair Goreng', 'ikan-mujair-goreng', 'post-images/LZjbWKzmL1pfrBE3pM3gvgICIJBuZwQtrAQkISw1.jpg', 'Bahan utama :- 4 ekor ikan mujair, dibersihkan- ½ dt air jeruk nipis- 1 sdt garam- ¼ sdt merica bubu.......', '<div>Bahan utama :</div><div>- 4 ekor ikan mujair, dibersihkan</div><div>- ½ dt air jeruk nipis</div><div>- 1 sdt garam</div><div>- ¼ sdt merica bubuk</div><div>- 500 ml minyak, untuk menggoreng</div><div>Bahan membuat bumbu halus:</div><div>- ¼ sdt ketumbar, disangrai</div><div>- 4 cm kunyit, dibakar</div><div>- 3 siung bawang putih</div><div>- 8 butir bawang merah</div><div>- 2 cm jahe</div><div>&nbsp;</div><div>Cara membuat:</div><div>- Pertama-tama, siapkan semua bahannya.</div><div>- Lumuri ikan dengan air <a href=\"https://www.orami.co.id/magazine/manfaat-jeruk-nipis\">j</a>eruk nipis, kemudian diamkan selama 5 menit.</div><div>- Campur semua bumbu halus, aduk sampai merata, tambahkan garam dan merica. Masukkan ikan, aduk sampai ikan terbalut bumbu dengan sempurna. Diamkan 30 menit.</div><div>- Panaskan minyak dengan api sedang. Goreng ikan hingga kuning kecokelatan.</div><div>- Setelah matang, angkat dan tiriskan.<br>- Olahan ikan mujair goreng pun siap disantap bersama nasi putih yang hangat.&nbsp;</div><div><br><br></div>', '2022-06-06 01:13:09', NULL),
(74, 8, 'Nasi Kuning', 'nasi-kuning', 'post-images/Uf3vUOfNLrOvmOgfgnVPMdp4Uvrw3KyA3ZQQapiX.jpg', 'Bahan:- 750 gr beras, cuci bersih- 100 gr beras ketan, cuci, rendam 30 menit- 1250 ml santan- 1 sdt.......', '<div>Bahan:<br>- 750 gr beras, cuci bersih<br>- 100 gr beras ketan, cuci, rendam 30 menit<br>- 1250 ml santan<br>- 1 sdt bubuk kunyit<br>- 3 bj serai geprek<br>- 6 lbr daun jeruk, remas<br>- 2 lbr pandan<br>- 2 sdt garam<br>- 1,5 sdm air jeruk nipis<br><br></div><div>Cara membuat:<br>- Campur rata beras dan beras ketan yang sudah dicuci bersih</div><div>- Panaskan air dalam dandang, kukus campuran beras selama 20 menit<br>- Campur santan dengan kunyit bubuk dan bumbu lainnya, koreksi rasa, didihkan<br>- Tuang santan mendidih ke beras yang sudah dikukus, masak menjadi nasi aron, aduk sampe mengering<br>- Masukkan air jeruk nipis, aduk rata<br>- Kukus nasi kurang lebih 25 menit sampe matang<br>- Siap disajikan.<br><br></div>', '2022-06-06 01:17:27', NULL),
(75, 8, 'Nasi Liwet Teri', 'nasi-liwet-teri', 'post-images/RC6GJuGnOsX6dHNLXF3ClNZImn2wrPoafcuuOFlF.webp', 'Bahan:- 200 gr beras, cuci bersih- 2 siung bawang merah, iris tipis- 1 siung bawang putih, iris tipi.......', '<div>Bahan:<br>- 200 gr beras, cuci bersih<br>- 2 siung bawang merah, iris tipis<br>- 1 siung bawang putih, iris tipis<br>- 1 batang sereh, geprek<br>- 1 lembar daun salam<br>- Cabai rawit<br>- Segenggam teri, goreng<br>- Minyak goreng<br>- 1/2 sdt garam<br>- Air untuk memasak nasi<br><br></div><div>Cara membuat:<br>- Masukkan semua bahan dan aduk rata di dalam rice cooker.<br>- Setelah matang, aduk rata dan siap disajikan.<br><br></div>', '2022-06-06 01:19:06', NULL),
(76, 8, 'Nasi Kebuli', 'nasi-kebuli', 'post-images/OdGT1nz2unJKhjI2JPKIM57z5KyPsr3s0l52X4z6.jpg', 'Bahan utama:- 500 gr beras basmati- 500 gr daging kambing potong dadu- 500 gr tulang kambing (iga/ k.......', '<div>Bahan utama:<br>- 500 gr beras basmati<br>- 500 gr daging kambing potong dadu<br>- 500 gr tulang kambing (iga/ kaki kambing)<br>- 500 cc susu cair<br>- 150 cc santan instan kental<br>- 2 liter air<br>- 5 sdm minyak samin<br>- Garam, gula, kaldu bubuk secukupnya<br><br></div><div>Bahan bumbu:<br>- 1 bawang bombay besar, cincang<br>- 2 buah tomat, potong kecil<br>- 7 bawang putih, cincang<br>- 3 sdm garam / bubuk kari<br>- 1 sdm cabai bubuk<br>- 2 batang serai, geprak<br>- 10 lembar daun jeruk<br>- 6 daun salam<br>- 6 cm jahe, geprak<br>- 7 cm kayu manis<br>- 1 sdm kapulaga india<br>- 5 bunga lawang<br><br>Cara memasak:<br>- Rebus daging dengan tulangkambing dalam air mendidih sekitar 10 menit, buang airnya. Sisihkan<br>- Tumis semua bumbu dengan minyak samin hingga harum. Setelah harum masukkan air, susu, dan santan. Tambahkan kaldu bubuk, gula, dan garam<br>- Setelah mendidih, masukkan daging beserta tulangkambing. Masak hingga empuk (sekitar 1 jam). Bila kuah terlalu menyusut bisa ditambah air<br>- Ambil daging dan tulang, sisakan kuah rebusan sekitar 700 cc (masak lagi kuah bila terlalu banyak/ tambah air bila kurang). Selanjutnya masukkan beras basmati<br>- Aron beras sambil diaduk. Tambahkan air<br>- Kukus nasi sekitar 45 menit hingga tanak<br>- Sajikan nasi kebuli bersama daging, tulang kambing, dan pelengkap lainnya.<br><br></div><div><br><br></div>', '2022-06-06 01:23:19', NULL),
(77, 8, 'Nasi Lemak Pandan', 'nasi-lemak-pandan', 'post-images/T2VpyHNqGfA3xbu0ErZxaRCbYU4tImzo09psB8Ko.jpg', 'Bahan:- 3 cup beras, cuci bersih- 3 cup air,sesuaikan dgn jenis beras ya- 1 scht santan instan 65ml-.......', '<div>Bahan:<br>- 3 cup beras, cuci bersih<br>- 3 cup air,sesuaikan dgn jenis beras ya<br>- 1 scht santan instan 65ml<br>- Pasta pandan<br>- 3 siung bawang putih, digeprek<br>- 1 batang serai, memarkan<br>- 2 lbr daun jeruk<br>- 2 lbr daun salam<br><br></div><div>Cara membuat:<br>- Masukkan semua bahan ke dalam rice cooker, masak hingga matang<br>- Sajikan dengan lauk pelengkap<br><br></div>', '2022-06-06 01:30:45', NULL),
(78, 2, 'Sup jagung sosis', 'sup-jagung-sosis', 'post-images/1LD1y4ZYKXlFXshDqXtH9Fg6vM6JecXvNky8VFbs.png', 'Bahan:- 1 liter air- 3 buah sosis (potong)- 2 buah jagung (pipil)- 1 buah wortel (potong)- 10 buah t.......', '<div>Bahan:<br><br></div><div>- 1 liter air</div><div>- 3 buah sosis (potong)</div><div>- 2 buah jagung (pipil)</div><div>- 1 buah wortel (potong)</div><div>- 10 buah telur puyuh (rebus dan kupas kulitnya)</div><div>- 4 siung bawang putih</div><div>- 1/4 buah bawang bombai</div><div>- 1 sdt mentega</div><div>- 1/2 sdm garam</div><div>- 1/2 sdt merica</div><div>- 2 batang daun bawang (iris tipis)<br><br></div><div>Cara membuat:<br><br></div><div>1. Didihkan air, kemudian masukkan semua bahan (kecuali telur puyuh) dan masak hingga sayuran matang.<br><br></div><div>2. Beri mentega, garam, merica, dan daun bawang. Kemudian masukkan telur puyuh dan masak hingga matang.<br><br></div><div>2. Sup jagung sosis siap disajikan.<br><br></div><div>&nbsp;<br><br></div>', '2022-06-06 05:35:59', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `image`, `remember_token`, `created_at`, `updated_at`, `city`, `address`, `telp`) VALUES
(4, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$8PhXUZIGIhzZyh9aS9vxkeitD7TUSmRK2SoAiEsNgompJnzkGs9N2', 1, NULL, NULL, '2022-06-05 18:08:16', '2022-06-05 18:08:16', NULL, NULL, NULL),
(5, 'user', 'user', 'user@gmail.com', NULL, '$2y$10$M7BB3/IQg1v1Mf/IZc3DouA0NWykK.kih.IvArOkH0bHzKE2qTDRS', 0, NULL, NULL, '2022-06-05 18:08:16', '2022-06-05 18:08:16', NULL, NULL, NULL),
(6, 'mairatul lailia', 'maira', 'mairatullailia123@gmail.com', NULL, '$2y$10$GWuBxZ7oitq.mlb3D3OqxeUzVlVwNyhwvKhJJq0TQoeZuPkjnMVAS', 0, NULL, NULL, '2022-06-06 05:28:49', '2022-06-06 05:28:49', NULL, NULL, NULL),
(7, 'Achmad Alvin Ardiansyah', 'alvinn123', 'alvin@gmail.com', NULL, '$2y$10$ArzJgJH0YVJAt4NcdMFrie7FuuJg.Uk/E8NywBfQbVRzQ.sBHZEWO', 0, NULL, NULL, '2022-06-06 20:36:28', '2022-06-06 20:36:28', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `favorits`
--
ALTER TABLE `favorits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `favorits`
--
ALTER TABLE `favorits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
