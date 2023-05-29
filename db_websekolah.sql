-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Mar 2023 pada 05.59
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_websekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(5, 'PENYULUHAN PSIKOLOGI REMAJA SISWA SISWI', '2020-05-02 12:28:41', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaksanakan Jumat, 7 Desember 2018 bertempat di ruang A1, diikuti oleh semua siswa kelas 7,8 dan 9.', '2020-05-02', '2020-05-02', 'MURIS STUDIO', '08.00 - 11.00 WIB', 'Dalam rangka memperkuat perkembangan pribadi yang baik, dan antisipasi dari segala bentuk penyimpangan, semua siswa SMP N 4 Pakem mengikuti kegiatan penyuluhan perkembangan remaja. Kegiatan ini dilaks', 'Muris Studio'),
(6, 'TKM DAN PAS ONLINE DI SMP BERJALAN LANCAR', '2020-05-02 12:29:05', 'Sejak beberapa tahun terakhir pembelajaran dan penilaian SMP N 4 Pakem dilakukan secara online. Demikian pula kegiatan tes kendali mutu kabupaten Sleman dan penilaian akhir semester ganjil tahun ajaran 2018/2019 yang dilaksanakan 27 November s.d. 5 Desember 2018 terlaksana dengan sangat lancar.', '2020-05-02', '2020-05-02', 'MURIS STUDIO', '08.00 - 11.00 WIB', 'Sejak beberapa tahun terakhir pembelajaran dan penilaian SMP N 4 Pakem dilakukan secara online. Demikian pula kegiatan tes kendali mutu kabupaten Sleman dan penilaian akhir semester ganjil tahun ajara', 'Muris Studio'),
(8, 'PENGUATAN KARAKTER DI SEKOLAH MELALUI PERMAINAN TRADISIONAL', '2020-05-02 12:30:15', 'Suasana riuh  sorak sorai, penuh tepuk tangan dan gelak tawa. Itulah suasana  pagi hingga siang pada Kamis, 6 Desember 2018 di SMP Negeri 4 Pakem.  Berbeda dengan hari hari biasanya,  sehari setelah selesai pelaksanaan penilaian akhir semester (PAS) ganjil tahun ajaran 2018/2019 guru, karyawan dan siswa bermain, barcanda tawa sambil berolahraga bersama', '2020-05-02', '2020-05-02', 'MURIS STUDIO', '08.00 - 11.00 WIB', 'Suasana riuh  sorak sorai, penuh tepuk tangan dan gelak tawa. Itulah suasana  pagi hingga siang pada Kamis, 6 Desember 2018 di SMP Negeri 4 Pakem.  Berbeda dengan hari hari biasanya,  sehari setelah s', 'Muris Studio');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '5f8436e2c30570dfe2114f05af5e9215.jpg', 3, 1, 'Muris Studio'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '504cd9e83e047becee6ec32e4af7e534.jpg', 3, 1, 'Muris Studio'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', '83f7e70d0f89f2d8a7695e5f7059418f.jpg', 3, 1, 'Muris Studio'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', 'd884f7fe18efebd07d7725ecf3bf3481.jpg', 1, 1, 'Muris Studio'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', 'f652521a6c283c2df9da808cc4aae1c6.jpg', 1, 1, 'Muris Studio'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', '69fc9bf961e3aac2fc79af00922b3933.png', 1, 1, 'Muris Studio'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', '853f2d57da50c6f516944a6cec68c694.jpg', 1, 1, 'Muris Studio'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', 'f92d6de4457a33e5a1d957b0e3d20335.jpg', 1, 1, 'Muris Studio'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '5e3c09430ba03b2e60de6c06c6dbafec.jpg', 4, 1, 'Muris Studio'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', 'e4d51d428be01628693b4bff4e453463.jpg', 4, 1, 'Muris Studio'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', 'a23dcd7e6b129257fd03d7198fe1bb49.jpg', 4, 1, 'Muris Studio'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', 'cf0585d2d5a627639ef4ed48beab65c2.jpg', 4, 1, 'Muris Studio'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', 'e53b596a6a821179169c647ffdaebd10.jpg', 4, 1, 'Muris Studio'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', 'e8ec9657a6c5ff5eea059785c949b5ce.jpg', 4, 1, 'Muris Studio'),
(18, 'Makan bersama', '2017-01-24 01:33:24', 'a92df7b3e7a8488f0e8ca186e6551194.jpg', 4, 1, 'Muris Studio');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '-', 'Nensy Larasati,S.Pd.', 'L', 'Bandung', '25 September 1993', 'Bahasa Jawa	', 'a9cbe86849c837cc0931eff7b9991d00.png', '2017-01-26 07:49:43'),
(2, '927482658274981', 'Mei Indri, S.Pd', 'L', 'Purwokerto', '25 Juni 2020', 'Bahasa Indonesia	', '792ef9e0267a1b021c9b99763a980a0b.jpg', '2017-01-26 13:38:54'),
(3, '-', 'Agustina Setyani,S.Ag', 'L', 'Purwokerto', '15 Desember 1995', 'Agama', '96e1400c5cf46d382073e8e8af0b86b6.jpg', '2017-01-26 13:41:20'),
(4, '-', 'Fury Ismaya, S.Pd', 'P', 'Purwokerto', '15 Desember 1995', 'Sejarah', '999998fd4172c4cd99389b7f734d2b23.jpg', '2017-01-26 13:42:08'),
(5, '-', 'Arneta Dwi Safitri, M. Pd.', 'P', 'Purwokerto', '15 Desember 1995', 'Fisika', '5b88365eea4e14fd027adf1ed0c17efa.jpeg', '2017-01-26 13:42:48'),
(6, '-', 'Rachmaningtiyas Wietda Ayu Nirmandini, S.Pd.', 'L', 'Purwokerto', '15 Desember 1995', 'Matematika', '0010e6d466aef6042f7a914c7f567dd3.jpg', '2017-01-26 13:43:46'),
(7, '-', 'Lutviarini Latifah, S.Pd., M.Sc.', 'P', 'Purwokerto', '15 Desember 1995', 'Bahasa Inggris, IPA', 'b2917470f024fc3dd62c43e37665d767.jpg', '2017-01-26 13:45:11'),
(8, '-', 'Asrini Yuli Wahyuni,SH', 'P', 'Purwokerto', '15 Desember 1995', 'Olahraga', 'efb1d0cc744b320f6dae31c4711f562a.jpg', '2017-01-27 04:28:23'),
(9, '-', 'Windy Mazaya Amalina', 'P', 'Purwokerto', '15 Desember 1995', 'Sejarah', '1d3b877f1619db4e2fd883a2aff15b09.jpg', '2020-05-01 21:18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `keterangan_mapel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `nama_mapel`, `keterangan_mapel`) VALUES
(2, 'IPA', 'Belajar IPA'),
(3, 'IPS', 'Belajar IPS'),
(4, 'Bahasa Inggris', 'Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Muris Studio', 'Solusi Informasi Teknolosi', 'L', 'admin', '97b7ff48b90727a14a28c784b837ef78', 'Solusi Informasi Teknolosi', 'suryaciptainformatika@gmail.com', '085799696924', '-', '-', '', '', 1, '1', '2020-09-03 06:07:55', 'dcffbd1ad6ae7b98222701364708adb4.png'),
(3, 'administrator', NULL, 'L', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', NULL, 'admin@gmail.com', '45', NULL, NULL, NULL, NULL, 1, '1', '2023-03-24 19:12:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(2, 'INFORMASI PELAKSANAAN UPACARA PERINGATAN HUT RI KE-72', 'Informasi disampaikan kepada seluruh Siswa SMP Negeri 4 Pakem bahwa pada hari Kamis 17 Agustus 2017 upacara dalam rangka HUT RI ke-72. Semua siswa memakai pakaian yang biasa dipakai pada hari senin.  Upacara dimulai pukul 07.00 WIB. Setelah selesai upacara, siswa langsung pulang. Kecuali petugas yang ditunjuk mewakili sekolah di kecamatan.Yang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2020-05-02 01:17:30', 'Muris Studio'),
(6, 'PANDUAN KEGIATAN RAMADHAN 1441 H', 'Berikut kami sampaikan panduan kegiatan ramadhan 1441 H , silakan unduh di tautan berikut :\r\n\r\nPANDUAN RAMADHAN 1441 H \r\n\r\nInformasi sekolah terbaru, selalu kunjungi web sekolah!', '2020-05-02 12:19:58', 'Muris Studio'),
(8, 'JADWAL BARU PEMBELAJARAN ONLINE 22-28 APRIL 2020', 'Berikut kami sampaikan jadwal pembelajaran online berlaku mulai 22-28 April 2020, serta informasi OSOP silakan unduh di tautan berikut :\r\n\r\n>>JADWAL PEMBELAJARAN ONLINE_ 22-28 APRIL 2020<<\r\n\r\nInformasi sekolah ter-update, selalu kunjungi web sekolah. Terimakasih.', '2020-05-02 12:21:59', 'Muris Studio');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-04-30 09:24:35', '::1', 'Chrome'),
(932, '2020-04-30 17:03:42', '::1', 'Chrome'),
(933, '2020-04-30 17:17:54', '192.168.43.1', 'Chrome'),
(934, '2020-05-01 18:28:26', '::1', 'Chrome'),
(935, '2020-05-01 21:12:36', '192.168.43.1', 'Chrome'),
(936, '2020-05-02 12:58:12', '192.168.43.22', 'Chrome'),
(937, '2020-05-02 17:19:17', '::1', 'Firefox'),
(938, '2020-05-02 17:41:38', '192.168.43.22', 'Chrome'),
(939, '2020-05-02 18:07:26', '192.168.43.1', 'Chrome'),
(940, '2020-05-03 21:17:35', '::1', 'Chrome'),
(941, '2020-05-04 22:36:09', '::1', 'Chrome'),
(942, '2020-05-05 21:10:13', '::1', 'Chrome'),
(943, '2020-05-05 21:32:53', '192.168.43.1', 'Chrome'),
(944, '2023-01-28 23:52:25', '::1', 'Chrome'),
(945, '2023-01-30 10:14:21', '::1', 'Chrome'),
(946, '2023-03-24 18:50:40', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(27, 'Sejarah Perkembangan Teknologi Printing ', '<p>Apa itu Digital Printing? Tak hanya bisa menggunakan layanan jasanya saja sebaiknya anda juga mengetahui lebih jelas mengenai pengertian digital printing untuk menambah wawasan anda.&nbsp;<strong>Digital Printing adalah</strong>&nbsp;metode dalam percetakan modern yang melibatkan teknik digital sebagai media transfer antara materi ke media percetakan. Secara lebih umumnya pengertian digital printing dapat disimpulkan sebagai proses cetak gambar yang sudah didesain menuju ke material atau media fisik.</p>\r\n\r\n<p>Hadirnya teknologi terbaru dalam dunia percetakan ini pastinya akan membawa dampak positif pada berbagai tugas percetakan. Dimana usaha jasa percetakan kini bisa melakukan teknik percetakan secara profesional dengan menggunakan&nbsp;<em>printer</em>&nbsp;<em>laser</em>&nbsp;atau dengan&nbsp;<em>inkjet</em>. Pastinya hasil yang diperoleh akan lebih cepat, hemat waktu dan lebih terjangkau. Tak heran jika kini hampir semua percetakan sudah mulai menggunakan digital printing untuk menyelesaikan pesanan dari para konsumen.</p>\r\n\r\n<p>Sebetulnya digital printing sudah berkembang sejak tahun 1990 an yang menjadikan mesin digital printing kian berkembang hingga saat ini. Perkembangan zaman juga menjadikan digital printing bisa digunakan untuk mencetak media dari bahan semi plastik untuk luar ruangan seperti banner, baliho, spanduk dan lain sebagainya. Perkembangan dunia digital printing ini memberikan banyak keuntungan bagi para pemilik usaha karena media promosi bisa dibuat semenarik mungkin dengan biaya yang lebih murah.</p>\r\n\r\n<p>Pastinya setiap jenis mesin memiliki kelebihan dan kekurangan. Apa saja kelebihan dan kekurangan percetakan digital? Berikut penjelasannya.</p>\r\n', '2023-01-29 05:20:18', 1, 'Pendidikan', 1, 'e75e8494edfec6f446f6d4ae18eabac8.jpg', 1, 'Muris Studio', 0, 'sejarah-perkembangan-teknologi-printing'),
(28, 'Strategi Branding Di Era Digital', '<h2><strong>Pengertian Branding</strong></h2>\r\n\r\n<p>Branding adalah sebuah proses menciptakan persepsi positif yang kuat tentang produk, jasa, atau perusahaan yang melekat di benak konsumen dengan menggabungkan elemen-elemen seperti logo, desain visual, misi, dan tema yang konsisten di semua&nbsp;<em>marketing channel</em>. Branding bisa juga disebut sebagai bentuk komunikasi perusahaan dengan konsumen yang menjadi sasaran.</p>\r\n\r\n<p>Tujuan utama branding adalah memperkenalkan jasa atau produk yang ditawarkan perusahaan kepada konsumen. Selain itu, branding juga bertujuan sebagai pembeda agar konsumen mudah mengenali dan membedakan produk kita dengan produk milik kompetitor.</p>\r\n\r\n<p>Misalnya, jika membicarakan e-commerce berwarna orange. Di kepala kamu pasti akan langsung muncul nama brand atau e-commerce yang berwarna orange. Dari tagline juga bisa, seperti &ldquo;Jagonya Ayam&rdquo;, yang langsung mengingatkan kamu pada brand KFC. Padahal merek yang menjual ayam goreng ada sangat banyak. Begitu juga dengan seragam pegawai bank atau maskapai penerbangan yang dibuat berbeda-beda sesuai dengan brandnya agar mudah dikenali dan dibedakan dengan pesaingnya.</p>\r\n\r\n<p>Selain membentuk kesan yang baik di masyarakat. Ada beberapa tujuan branding lainnya yang harus Anda ketahui. Diantara tujuan branding adalah sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Mengendalikan Pasar</li>\r\n</ol>\r\n\r\n<p>Tujuan pertama yaitu untuk mengendalikan pasar. Mencoba bagaimana caranya agar melekat di pikiran masyarakat. Sehingga bisa mengalahkan para pesaingnya. Sekaligus sebagai perhitungan bagaimana keputusan yang akan diambil untuk langkah selanjutnya.</p>\r\n\r\n<ol>\r\n	<li>Sebagai Pembeda</li>\r\n</ol>\r\n\r\n<p>Kedua yaitu sebagai pembeda. Apabila sebuah simbol, warna dan gambar yang ditampilkan unik dan memiliki karakteristik yang khas. Maka masyarakat akan mudah untuk membedakan satu produk dengan yang lain. Juga meminimalisir kemungkinan terjadinya pembajakan.</p>\r\n\r\n<ol>\r\n	<li>Membentuk Citra</li>\r\n</ol>\r\n\r\n<p>Branding yang sukses dapat membentuk citra, menjamin kualitas, prestise dan memberikan keyakinan pada masyarakat terhadap sebuah produk. Hal tersebut bisa tercapai apabila pengalaman dan informasi diberikan secara lengkap&nbsp;pada masa pengenalan pertamanya.</p>\r\n\r\n<ol>\r\n	<li>Sebagai Sarana Promosi</li>\r\n</ol>\r\n\r\n<p>Terakhir sebagai sarana promosi atau meningkatkan daya tarik konsumen. Dengan menampilkan logo yang menjadi ciri khas. Serta melakukan sosialisasi atau kunjungan ke berbagai tempat. Seperti sekolah, pasar, event atau melakukan iklan baik di majalah, koran, televisi atau lainnya.</p>\r\n\r\n<p>Tujuan tersebut akan tercapai dengan baik, apabila sebuah produk sudah memiliki label. Jika tidak, maka bagaimana masyarakat bisa mengenalnya? Promosi menjadi sia-sia dan cita-cita mengendalikan pasar tidak akan tercapai</p>\r\n', '2023-01-29 05:24:04', 1, 'Pendidikan', 0, '424a31c7eb9fc0e5799cf4486baffbc4.jpg', 1, 'Muris Studio', 0, 'strategi-branding-di-era-digital'),
(29, 'Perkembangan teknologi kecerdasan buatan sangat luar biasa', '<p>ChatGPT adalah kecerdasan buatan generatif yang dikembangkan oleh OpenAI,&nbsp;<em>startup&nbsp;</em>yang fokus pada riset kecerdasan buatan. OpenAI didirikan oleh ilmuwan dan tokoh besar teknologi, salah satunya Elon Musk.</p>\r\n\r\n<p>Dikutip dari&nbsp;<em>Antara</em>&nbsp;yang melansir&nbsp;<em>Reuters</em>, ChatGPT berupa&nbsp;<em>chatbot&nbsp;</em>canggih yang bisa mempelajari data dalam jumlah yang sangat banyak supaya bisa menjawab berbagai pertanyaan. ChatGPT dilatih supaya bisa menjawab semirip mungkin dengan manusia, bahkan disebut bisa memberikan jawaban yang panjang.</p>\r\n\r\n<p>Berkat kemampuan itu, ChatGPT mendapat sambutan hangat dari industri teknologi di Silicon Valley, baik dari segi investasi maupun minat menggunakan&nbsp;<em>chatbot&nbsp;</em>tersebut. Microsoft, salah satu investor OpenAI, akan menggelontorkan lebih banyak dolar untuk pengembangan kecerdasan buatan oleh OpenAI.</p>\r\n\r\n<p>CEO Cloudfare Inc, Matthew Prince menilai, AI generatif seperti ChatGPT bisa memiliki kemampuan sebaik&nbsp;<em>programmer&nbsp;</em>junior. Cloudfare menggunakan teknologi semacam itu untuk menulis kode pada platform Workers.</p>\r\n\r\n<p>AI generatif tidak hanya berfungsi untuk data teks, ia juga bisa dilatih untuk mempelajari gambar. Melihat potensi itu, pimpinan produk di Meta Platforms, Chris Cox melihat teknologi AI generatif bisa dikembangkan untuk membuat filter gambar, apalagi mereka memiliki aplikasi yang fokus pada konten visual, yaitu Instagram</p>\r\n', '2023-01-29 06:14:54', 1, 'Pendidikan', 0, '8993a733be3379d685e95647ef0a90a2.png', 1, 'Muris Studio', 0, 'perkembangan-teknologi-kecerdasan-buatan-sangat-luar-biasa'),
(30, 'Jawa Timur Borong 75 Medali', '<p>Provinsi Jawa Timur kembali menjadi juara umum Olimpiade Sains Nasional (OSN) 2022 untuk tiga tahun secara berturut-turut.&nbsp;<br />\r\n<br />\r\n&quot;Alhamdulillah, para anak didik kita kembali mengukir prestasi yang membanggakan di tingkat nasional. Hasil ini merupakan kerja keras semua pihak,&quot; kata Gubernur Jatim Khofifah Indar Parawansa dalam keterangannya,<br />\r\n<br />\r\nPada kompetisi yang digelar Pusat Prestasi Nasional Kemendikbud Ristek itu, Jatim memborong 75 medali dengan rincian 15 medali emas, 28 medali perak dan 32 medali perunggu.&nbsp;<br />\r\n<br />\r\nJumlah itu mengungguli Provinsi Banten dan Provinsi Jawa Barat di posisi kedua dan ketiga.&nbsp;<br />\r\n<br />\r\nKhofifah memuji antusiasme para peserta didik dalam memiliki jiwa sportif - kompetitif untuk pengembangan kemampuannya dalam penguasaan ilmu pengetahuan dan teknologi guna mengukir prestasi. &nbsp;<br />\r\n<br />\r\n&quot;Jawa Timur kembali menjadi juara umum berkat semangat para siswa, para tenaga pendidik, dukungan orang tua dan Dinas Pendidikan,&quot; ujar mantan menteri sosial tersebut.&nbsp;<br />\r\n<br />\r\nKepala Dinas Pendidikan Provinsi Jawa Timur Wahid Wahyudi menjelaskan di jenjang SMA/MA, para siswa memperebutkan medali untuk sembilan bidang lomba, yaitu Matematika, Fisika, Kimia, Biologi, Informatika/Komputer, Astronomi, Ekonomi, Kebumian dan Geografi.&nbsp;<br />\r\n<br />\r\n&quot;OSN ini menjadi wadah pembinaan bagi siswa. Alhamdulillah Jatim di bawah pimpinan Ibu Gubernur Khofifah sukses mempertahankan juara umum tiga tahun berturut-turut. Ini tentu menjadi kebanggan bagi dunia pendidikan Jawa Timur,&quot; ujarnya. &nbsp;<br />\r\n<br />\r\nLebih lanjut, Wahid menjelaskan bahwa proses kompetisi ini sudah dimulai sejak bulan September untuk jenjang SD dan SMP. &nbsp;Sementara pada jenjang SMA/MA dilaksanakan pada 3-6 Oktober 2022 secara daring. &nbsp;<br />\r\n<br />\r\nUntuk teknis pelaksanaan, siswa mengikuti proses seleksi di tingkat kabupaten/kota lebih dahulu.&nbsp;<br />\r\n<br />\r\nKemudian seleksi dilanjutkan di tingkat provinsi yang bekerja sama dengan pusat&nbsp;<em>assesment</em>&nbsp;nasional dengan menggunakan jaringan platform UNBK yang dimiliki masing-masing sekolah.&nbsp;<br />\r\n&nbsp;</p>\r\n', '2023-01-29 06:18:16', 1, 'Pendidikan', 1, 'd25da261821ae07e3654792ee3ac995c.jpg', 1, 'Muris Studio', 0, 'jawa-timur-borong-75-medali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id_video` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `kode_video` varchar(100) NOT NULL,
  `judul_video` varchar(150) NOT NULL,
  `deskripsi_video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_video`
--

INSERT INTO `tbl_video` (`id_video`, `id_mapel`, `kelas_id`, `kode_video`, `judul_video`, `deskripsi_video`) VALUES
(2, 3, 2, 'EdQE_oeU2yo', 'Materi IPS Kelas 7 Semester Genap Bab III', 'Materi IPS Kelas 7 Semester Genap Bab III'),
(3, 3, 15, 'z2VF7j2RBzM', 'Materi IPS Kelas 8 k13 (Perlawanan Terhadap Kolonialisme dan Imperialisme) Part 1', 'Materi IPS Kelas 8 k13 (Perlawanan Terhadap Kolonialisme dan Imperialisme) Part 1\r\n\r\n'),
(4, 3, 15, 'lIQBbvBZcqk', 'MATERI IPS MANUSIA DAN LINGKUNGAN, KELAS 4 TEMA 9 SUBTEMA 1', 'MATERI IPS MANUSIA DAN LINGKUNGAN, KELAS 4 TEMA 9 SUBTEMA 1\r\n'),
(5, 3, 17, 'DNoj82nGmK8', 'Materi IPS Kelas 4 SD Tema 9 Subtema 2. Pemanfaatan Sumber Daya Alam', 'Materi IPS Kelas 4 SD Tema 9 Subtema 2. Pemanfaatan Sumber Daya Alam'),
(6, 3, 17, 'kdmnP7Me0xg', 'Video Pembelajaran Kelas 8 K13 - IPS - Perubahan Masyarakat Indonesia pada Masa Penjajahan', 'Video Pembelajaran Kelas 8 K13 - IPS - Perubahan Masyarakat Indonesia pada Masa Penjajahan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indeks untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
