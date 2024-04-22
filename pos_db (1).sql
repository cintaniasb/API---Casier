-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2023 pada 05.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img_product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `img_product`) VALUES
(1, 'sari roti rasa coklat', 5500, 94, 'https://assets.klikindomaret.com/products/20035999/20035999_1.jpg'),
(2, 'sari roti rasa keju', 5500, 114, 'https://assets.klikindomaret.com/products/20025041/20025041_1.jpg'),
(3, 'sosis kanzler keju', 9500, 88, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//102/MTA-18423687/kanzler_kanzler_singles_keju_sosis_kanzler_single_cheese_65gr_full02_lw8wqcsl.jpg'),
(4, 'fanta orange', 13500, 47, 'https://images.tokopedia.net/img/cache/700/hDjmkQ/2022/12/6/8164bcd1-ec45-42f1-841c-7ce8043bd162.jpg'),
(5, 'sprite green', 11500, 77, 'https://assets.klikindomaret.com/products/20065779/20065779_1.jpg'),
(6, 'sprite oldgreen', 15500, 44, 'https://i.actva.cz/i/1/1/049/50049/600x600/63WwfC_600x600_20146e7277c81e74.jpg'),
(7, 'coca cola ori', 7500, 34, 'https://images.tokopedia.net/img/cache/700/hDjmkQ/2021/5/11/5f03447a-8822-4919-a788-ee888b993bee.jpg'),
(8, 'coca cola ori botol', 8500, 54, 'https://http2.mlstatic.com/D_NQ_NP_713920-MLU48307767189_112021-O.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `no_order` varchar(4) NOT NULL,
  `total_price` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `no_order`, `total_price`, `paid_amount`, `kembalian`) VALUES
(1, 'T740', 11000, 15000, 4000),
(2, 'T375', 5500, 6000, 500),
(3, 'T425', 11000, 11000, 0),
(4, 'T188', 11000, 11000, 0),
(5, 'T297', 42000, 42000, 0),
(7, 'T352', 50000, 100000, 2000),
(8, 'T660', 27000, 30000, 3000),
(9, 'T263', 5500, 6000, 500),
(10, 'T325', 15000, 16000, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `no_order` varchar(4) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `id_product`, `no_order`, `quantity`) VALUES
(1, 1, 'T740', 1),
(2, 2, 'T740', 1),
(3, 1, 'T375', 1),
(4, 1, 'T425', 1),
(5, 2, 'T425', 1),
(6, 1, 'T188', 1),
(7, 2, 'T188', 1),
(8, 1, 'T297', 2),
(9, 2, 'T297', 1),
(10, 3, 'T297', 1),
(11, 8, 'T297', 1),
(12, 7, 'T297', 1),
(13, 4, 'T352', 1),
(14, 6, 'T352', 1),
(15, 4, 'T660', 2),
(16, 2, 'T263', 1),
(17, 2, 'T325', 1),
(18, 3, 'T325', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
