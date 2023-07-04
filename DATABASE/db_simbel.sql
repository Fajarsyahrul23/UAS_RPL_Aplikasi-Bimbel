-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2023 pada 10.26
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_simbel`
--
CREATE DATABASE IF NOT EXISTS `db_simbel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_simbel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id` varchar(250) NOT NULL,
  `id_user` varchar(256) NOT NULL,
  `nama_guru` varchar(256) NOT NULL,
  `jekel` varchar(20) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `telp` varchar(256) NOT NULL,
  `temp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `temp` (`temp`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_user`, `nama_guru`, `jekel`, `alamat`, `telp`, `temp`) VALUES
('G-0010', 'U-0033', 'Tazkia Damayanti', 'P', 'Bandung Barat', '087772986342', 10),
('G-0011', 'U-0041', 'Alfito Hadi', 'L', 'JL. Pepes Karawang', '0877236747123', 11),
('G-004', 'U-009', 'syahrul', 'L', 'purwakarta', '087737968838', 6),
('G-007', 'U-0030', 'Ika Miftahul Rohmah', 'P', 'Karawang', '087732768391', 7),
('G-008', 'U-0031', 'Rizqi Septianto', 'L', 'Bekasi', '087734879418', 8),
('G-009', 'U-0032', 'Andika Anjass Syaputra', 'L', 'Bekasi', '081798674819', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `id_guru` varchar(100) NOT NULL,
  `id_jenis_program` int(11) NOT NULL,
  `hari` varchar(200) NOT NULL,
  `jam` time NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `id_mapel`, `id_guru`, `id_jenis_program`, `hari`, `jam`, `keterangan`) VALUES
(14, 1, 'G-001', 3, 'senin', '17:00:00', '-'),
(15, 2, 'G-002', 3, 'selasa', '17:00:00', '-'),
(17, 3, 'G-002', 2, 'kamis', '15:38:00', 'Dilakukan secara Online'),
(20, 1, 'G-001', 1, 'selasa', '13:51:00', 'pembelajaran Online'),
(24, 1, 'G-0010', 1, 'senin', '19:30:00', 'Dilakukan Secara Daring'),
(25, 2, 'G-004', 1, 'senin', '15:30:00', 'Dilakukan daring'),
(26, 5, 'G-008', 1, 'rabu', '20:30:00', 'Dilakukan secara daring'),
(27, 7, 'G-007', 1, 'kamis', '19:30:00', 'Dilakukan secara Daring'),
(28, 10, 'G-009', 1, 'sabtu', '09:00:00', 'dilakukan secara Daring'),
(30, 2, 'G-004', 2, 'senin', '20:30:00', ''),
(31, 1, 'G-0010', 2, 'selasa', '15:30:00', ''),
(32, 5, 'G-008', 2, 'selasa', '20:30:00', ''),
(33, 6, 'G-009', 2, 'rabu', '20:00:00', ''),
(34, 14, 'G-008', 2, 'kamis', '15:30:00', ''),
(37, 13, 'G-009', 2, 'sabtu', '15:30:00', ''),
(38, 11, 'G-004', 2, 'rabu', '15:30:00', ''),
(39, 1, 'G-0010', 3, 'senin', '15:30:00', ''),
(40, 2, 'G-0010', 3, 'senin', '20:30:00', ''),
(41, 3, 'G-007', 3, 'selasa', '13:00:00', ''),
(42, 4, 'G-004', 3, 'selasa', '15:30:00', ''),
(43, 5, 'G-008', 3, 'selasa', '20:30:00', ''),
(44, 6, 'G-004', 3, 'rabu', '16:00:00', ''),
(45, 7, 'G-007', 3, 'rabu', '20:30:00', ''),
(46, 8, 'G-008', 3, 'kamis', '16:00:00', ''),
(47, 14, 'G-009', 3, 'kamis', '20:00:00', ''),
(48, 13, 'G-009', 3, 'jumat', '14:00:00', ''),
(49, 12, 'G-004', 3, 'jumat', '20:00:00', ''),
(50, 10, 'G-008', 3, 'sabtu', '20:00:00', ''),
(52, 2, 'G-0011', 4, 'senin', '13:00:00', 'Dilakukan secara Online'),
(53, 6, 'G-0011', 4, 'kamis', '20:00:00', 'Dilakukan secara Online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_program`
--

CREATE TABLE IF NOT EXISTS `jenis_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_program` int(11) NOT NULL,
  `harga` double NOT NULL,
  `kuota` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jenis_program`
--

INSERT INTO `jenis_program` (`id`, `id_program`, `harga`, `kuota`) VALUES
(1, 1, 100000, 23),
(2, 2, 150000, 18),
(3, 3, 200000, 12),
(4, 4, 300000, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(256) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `keterangan`) VALUES
(1, 'Analisa Perancangan Sistem Informasi', ''),
(2, 'Pemrograman Berbasis Web', ''),
(3, 'Data Warehouse', ''),
(4, 'Manajemen Sistem Informasi', ''),
(5, 'Jaringan dan Keamanan Sistem ', ''),
(6, 'Rekayasa Perangkat Lunak', ''),
(7, 'Pemrograman Berbasis Objek', ''),
(8, 'Aljabar Linear', ''),
(9, 'Statistika dan Probabilitas', ''),
(10, 'Struktur Data dan Algoritma', ''),
(11, 'Analisa Proses Bisnis', ''),
(12, 'Sistem Operasi', ''),
(13, 'Konsep Sistem Informasi', ''),
(14, 'Basis Data Lanjut', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id` varchar(100) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jumlah_bayar` double NOT NULL,
  `jenis_pembayaran` varchar(250) NOT NULL,
  `bukti` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `temp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `temp` (`temp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pendaftaran`, `tgl_bayar`, `jumlah_bayar`, `jenis_pembayaran`, `bukti`, `status`, `keterangan`, `temp`) VALUES
('PBY2981', 1, '2023-07-02', 200000, '', 'rubim.png', 2, '', 21),
('PBY29822', 2, '2023-07-02', 200000, '', 'frame1.png', 2, '', 22),
('PBY29823', 3, '2023-07-02', 150000, '', 'kerangka_penelitian_rpl-Page-1_drawio.png', 2, '', 23),
('PBY29824', 4, '2023-07-02', 150000, '', 'rubim1.png', 2, '', 24),
('PBY29825', 5, '2023-07-02', 100000, '', 'rubim2.png', 2, '', 25),
('PBY29826', 6, '2023-07-02', 100000, '', 'frame2.png', 2, '', 26),
('PBY29827', 7, '2023-07-04', 200000, '', '', 2, '', 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id` int(11) NOT NULL,
  `id_jenis_program` int(11) NOT NULL,
  `id_user` varchar(200) NOT NULL,
  `harga` double NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `id_jenis_program`, `id_user`, `harga`, `status`) VALUES
(1, 3, 'U-0034', 200000, 1),
(2, 3, 'U-0035', 200000, 1),
(3, 2, 'U-0036', 150000, 1),
(4, 2, 'U-0037', 150000, 1),
(5, 1, 'U-0038', 100000, 1),
(6, 1, 'U-0039', 100000, 1),
(7, 3, 'U-0040', 200000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id` varchar(200) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `sekolah` varchar(256) NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `pekerjaan_ortu` varchar(250) NOT NULL,
  `alamat` text NOT NULL,
  `temp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `temp` (`temp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `id_user`, `nama`, `kelas`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `sekolah`, `nama_ortu`, `pekerjaan_ortu`, `alamat`, `temp`) VALUES
('S-001', 'U-0035', 'Habil Rabani', '4A Sistem Informasi', 'L', 'Karawang', '2003-04-20', 'Universitas Singaperbangsa Karawang', '-', '-', 'Karawang, Jawa Barat, Indonesia', 5),
('S-002', 'U-0034', 'Dimas Alif', 'VVIP', 'L', 'Bogor', '2002-02-12', 'Universitas Singaperbangsa Karawang', '-', '-', 'Bogor, Jawa Barat', 6),
('S-003', 'U-0036', 'tedi alamsyah', '4A', 'L', 'Bekasi', '2003-08-21', 'Universitas Singaperbangsa Karawang', '-', '-', 'Bekasi, Jawa Barat', 7),
('S-004', 'U-0037', 'Rizki Alfito', '4A', 'L', 'Bekasi', '2003-04-05', 'Universitas Singaperbangsa Karawang', '-', '-', 'Bekasi, Jawa Barat', 8),
('S-005', 'U-0038', 'Agisni Biidnillah', '4A ', 'L', 'Indramayu', '2002-08-16', 'Universitas Singaperbangsa Karawang', '-', '-', 'Indramayu, jawa barat', 9),
('S-006', 'U-0039', 'Syifa Novianti', '4A', 'P', 'Bogor', '2003-09-14', 'Universitas SIngaperbangsa Karawang', '-', '-', 'Bogor, Jawa Barat', 10),
('S-007', 'U-0040', 'Fajar Syahrul', '4A Sistem Informasi', 'L', 'Purwakarta', '2002-12-20', 'Universitas Singaperbangsa Karawang', 'Engkus', 'Wiraswasta', 'JL. Soekarno Purwakarta', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_pendaftaran`
--

CREATE TABLE IF NOT EXISTS `siswa_pendaftaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` varchar(200) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `siswa_pendaftaran`
--

INSERT INTO `siswa_pendaftaran` (`id`, `id_siswa`, `id_pendaftaran`, `status`, `keterangan`) VALUES
(3, 'S-001', 2, 1, 'lunas'),
(4, 'S-002', 1, 1, 'lunas'),
(5, 'S-003', 3, 1, 'lunas'),
(6, 'S-004', 4, 1, 'lunas'),
(7, 'S-005', 5, 1, 'lunas'),
(8, 'S-006', 6, 1, 'lunas'),
(9, 'S-007', 7, 1, 'lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_program`
--

CREATE TABLE IF NOT EXISTS `tb_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_program` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_program`
--

INSERT INTO `tb_program` (`id`, `nama_program`) VALUES
(1, 'Low'),
(2, 'VIP'),
(3, 'VVIP'),
(4, 'Expert');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `no_telp` varchar(200) NOT NULL,
  `image` varchar(150) NOT NULL,
  `password` varchar(260) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `temp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`temp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `no_telp`, `image`, `password`, `role_id`, `is_active`, `date_created`, `temp`) VALUES
('0', 'admin', 'admin@gmail.com', '', 'default.png', '$2y$10$hWI2gkMUd9sX06bgXu6QIO7GPIlqUHEeMAd3AC5qqXCIX7N5qv.AS', 1, 1, 1601653500, 1),
('U-009', 'syahrul', 'syahrul@gmail.com', '', 'default.png', '$2y$10$tQYkP2U9lvRGCWWDE0dFeOUSNU/gieRzL6dTK9LbOK7PDAqh.SiyK', 3, 1, 1682222879, 9),
('U-0030', 'Ika Miftahul Rohmah', 'ika@gmail.com', '', 'default.png', '$2y$10$pdf6fzl8ivOD54e.DRRqXOBQumJ5L6.rJybQaP3DCSfUoDzGbuXwO', 3, 1, 1688275875, 30),
('U-0031', 'Rizqi Septianto', 'Rizqi@gmail.com', '', 'default.png', '$2y$10$jTMHVfOKieKe1ARtsuf0t.umDoD1qAtdxYeWiHUdA76eHsdy2O0He', 3, 1, 1688275933, 31),
('U-0032', 'Andika Anjass Syaputra', 'andika@gmail.com', '', 'default.png', '$2y$10$30ZHGZpDj6FjX8lyUD1aI.okmj95gbi7mk.jnzZYYxYFv0cLJKAnO', 3, 1, 1688275987, 32),
('U-0033', 'Tazkia Damayanti', 'tazkia@gmail.com', '', 'default.png', '$2y$10$iti0XSkpZqCnp86JEJDjm.wfBUWPJiXt2n2MCsY0/YAGnbx/7sjaq', 3, 1, 1688276045, 33),
('U-0034', 'Dimas Alif', 'dimas@gmail.com', '087712489284', 'default.png', '$2y$10$SzLhEup9WrM51.mISIRbZuQMuRRgN3DsPuoUoIyMk5tUtmnZ5tDUW', 2, 1, 1688282258, 34),
('U-0035', 'Habil Rabani', 'habil@gmail.com', '088238387431', 'default.png', '$2y$10$4PVNBDVm7TP8bzB7hx0i3uCsHQ/xwaewnQzzKQB3DsyBqEs/xMW26', 2, 1, 1688283893, 35),
('U-0036', 'tedi alamsyah', 'tedi@gmail.com', '082283738218', 'default.png', '$2y$10$fQryEWoZ1aGvrOvLUsxw1uiudP7kZ0QFFD7fGjysT4XTUmV662cqG', 2, 1, 1688284069, 36),
('U-0037', 'Rizki Alfito', 'fito@gmail.com', '081894637261', 'default.png', '$2y$10$0iqWh0/R4LmgdvEy205Ih.79bzt0/IqAH7gAe1RI7G9/pwEt2dFjG', 2, 1, 1688284180, 37),
('U-0038', 'Agisni Biidnillah', 'agis@gmail.com', '08189642725', 'default.png', '$2y$10$nylAlYQpqhxxXw0uKw0L2e5psSGhEk8nIDl/dZe/MK5ofgE3pSmNm', 2, 1, 1688284315, 38),
('U-0039', 'Syifa Novianti', 'syifa@gmail.com', '08238451282', 'default.png', '$2y$10$corMVE8IMhkZbv3hzBDSSecMr5NhwZOeu6cgl1Uj1uIU2SzFiWUdu', 2, 1, 1688284439, 39),
('U-0040', 'Fajar Syahrul', 'fajar@gmail.com', '087737968218', 'default.png', '$2y$10$D7aTUM6/DQ36UyNYL9OUje1TRGM5/7yY5/rhMRytAGda8sSzQYfqS', 2, 1, 1688457153, 40),
('U-0041', 'Alfito Hadi', 'alfito@gmail.com', '', 'default.png', '$2y$10$a3YYxCWWnKZ7/Zz8FGalnel3H8RBn1cCVKjLZRXfQ0iYo/VD7.IPO', 3, 1, 1688458111, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE IF NOT EXISTS `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(12, 1, 1),
(13, 1, 2),
(14, 1, 3),
(16, 2, 5),
(17, 2, 4),
(18, 1, 6),
(19, 2, 7),
(20, 3, 11),
(21, 1, 9),
(22, 3, 10),
(23, 2, 12),
(24, 3, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE IF NOT EXISTS `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Dashboard'),
(2, 'Program'),
(3, 'Konfirmasi'),
(4, 'Dashboard'),
(5, 'Biodata'),
(6, 'jadwal'),
(7, 'Jadwal'),
(9, 'Data'),
(10, 'Dashboard'),
(11, 'Jadwal'),
(12, 'Akun'),
(13, 'Akun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(130) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'siswa'),
(3, 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE IF NOT EXISTS `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  `icon` varchar(120) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(17, 1, 'Dashboard', 'Admin', 'fas fa-fw fa-user-circle', 1),
(18, 1, 'pegawai', 'Pegawai', 'fas fa-fw fa-user-circle', 0),
(19, 2, 'Program', 'Program', '', 1),
(20, 2, 'Jenis Program', 'Program/index_JP', '', 1),
(23, 3, 'Konfirmasi Siswa', 'Konfirmasi/siswa', '', 1),
(24, 5, 'Data Diri', 'datadiri', '', 1),
(25, 4, 'Dashboard', 'siswa', '', 1),
(26, 6, 'Kelola jadwal', 'jadwal', '', 1),
(27, 3, 'Konfirmasi Guru', 'konfirmasi/guru', '', 1),
(28, 7, 'jadwal ku', 'siswa/jadwal', '', 1),
(29, 11, 'Mengajar', 'guru/jadwal', '', 1),
(30, 9, 'Guru', 'data', '', 1),
(31, 9, 'siswa', 'data/siswa', '', 1),
(32, 10, 'Dashboard', 'guru', '', 1),
(33, 12, 'Ganti Password', 'siswa/ganti_pass', '', 1),
(34, 13, 'Ganti Password', 'guru/ganti-password', '', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
