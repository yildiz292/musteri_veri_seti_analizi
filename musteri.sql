-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Ara 2025, 12:44:29
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `musteri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `sign_up_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `city`, `sign_up_date`) VALUES
(1, 'Ahmet Yılmaz', 'İstanbul', '2023-01-10'),
(2, 'Ayşe Demir', 'Ankara', '2023-02-15'),
(3, 'Mehmet Yıldız', 'İzmir', '2023-03-20'),
(4, 'Fatma Kaya', 'Bursa', '2023-05-05'),
(5, 'Caner Öz', 'Antalya', '2023-01-12'),
(6, 'Deniz Ak', 'İstanbul', '2023-02-01'),
(7, 'Ebru Gündüz', 'Ankara', '2023-02-10'),
(8, 'Hakan Tekin', 'İzmir', '2023-03-05'),
(9, 'Selin Yılmaz', 'Bursa', '2023-04-20'),
(10, 'Murat Can', 'Antalya', '2023-05-15'),
(11, 'Zeynep Su', 'İstanbul', '2023-05-22'),
(12, 'Okan Bay', 'Ankara', '2023-06-01'),
(13, 'Elif Tan', 'İstanbul', '2023-01-20'),
(14, 'Burak Yılmaz', 'Ankara', '2023-02-05'),
(15, 'Merve Can', 'İzmir', '2023-02-28'),
(16, 'Kerem Al', 'Bursa', '2023-03-12'),
(17, 'Aslı Şen', 'Antalya', '2023-03-15'),
(18, 'Engin Su', 'İstanbul', '2023-04-01'),
(19, 'Gözde Koç', 'Ankara', '2023-04-10'),
(20, 'Onur Dağ', 'İzmir', '2023-04-25'),
(21, 'Seda Nur', 'Bursa', '2023-05-01'),
(22, 'Umut Berk', 'Antalya', '2023-05-10'),
(23, 'Derya Deniz', 'İstanbul', '2023-05-20'),
(24, 'Emre Can', 'Ankara', '2023-06-05'),
(25, 'Pınar Ak', 'İzmir', '2023-06-15'),
(26, 'Yavuz Selim', 'Bursa', '2023-06-20'),
(27, 'Hande Gül', 'Antalya', '2023-07-01'),
(28, 'Mert Er', 'İstanbul', '2023-07-05'),
(29, 'Selin Ay', 'Ankara', '2023-07-10'),
(30, 'Cem Mert', 'İzmir', '2023-07-15'),
(31, 'Nilay Su', 'Bursa', '2023-07-20'),
(32, 'Kaan Tek', 'Antalya', '2023-07-25'),
(33, 'Buse Can', 'İstanbul', '2023-08-01'),
(34, 'Tuna Mert', 'Ankara', '2023-08-05'),
(35, 'İrem Nur', 'İzmir', '2023-08-10'),
(36, 'Arda Han', 'Bursa', '2023-08-15'),
(37, 'Melis Sen', 'Antalya', '2023-08-20'),
(38, 'Oğuz Kağan', 'İstanbul', '2023-08-25'),
(39, 'Beril Su', 'Ankara', '2023-09-01'),
(40, 'Ege Can', 'İzmir', '2023-09-05'),
(41, 'Damla Ak', 'Bursa', '2023-09-10'),
(42, 'Serkan Yiğit', 'Antalya', '2023-09-15'),
(43, 'Ezgi Tan', 'İstanbul', '2023-09-20'),
(44, 'Furkan Er', 'Ankara', '2023-09-25'),
(45, 'Gizem Ak', 'İzmir', '2023-10-01'),
(46, 'Alperen Dal', 'Bursa', '2023-10-05'),
(47, 'Sude Naz', 'Antalya', '2023-10-10'),
(48, 'Bora Can', 'İstanbul', '2023-10-15'),
(49, 'Tuana Nur', 'Ankara', '2023-10-20'),
(50, 'Yaman Alp', 'İzmir', '2023-10-25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_id`, `order_date`, `quantity`, `status`) VALUES
(1, 1, 101, '2023-01-15', 1, 'Completed'),
(2, 1, 112, '2023-02-10', 5, 'Completed'),
(3, 1, 105, '2023-05-20', 2, 'Completed'),
(4, 1, 118, '2023-11-11', 1, 'Completed'),
(5, 2, 103, '2023-03-05', 1, 'Completed'),
(6, 5, 103, '2023-06-12', 1, 'Completed'),
(7, 5, 119, '2023-08-15', 1, 'Completed'),
(8, 10, 101, '2023-04-10', 1, 'Cancelled'),
(9, 11, 101, '2023-04-11', 1, 'Cancelled'),
(10, 12, 101, '2023-04-12', 1, 'Cancelled'),
(11, 15, 110, '2023-05-01', 3, 'Completed'),
(12, 16, 111, '2023-05-05', 2, 'Completed'),
(13, 17, 112, '2023-05-10', 10, 'Completed'),
(14, 20, 116, '2023-06-01', 5, 'Completed'),
(15, 21, 117, '2023-06-05', 1, 'Completed'),
(16, 25, 104, '2023-07-20', 2, 'Completed'),
(17, 30, 107, '2023-08-10', 1, 'Completed'),
(18, 35, 120, '2023-09-15', 1, 'Completed'),
(19, 40, 102, '2023-11-11', 1, 'Completed'),
(20, 41, 105, '2023-11-12', 4, 'Completed'),
(21, 42, 110, '2023-11-15', 2, 'Completed'),
(22, 43, 115, '2023-11-20', 1, 'Completed'),
(23, 44, 113, '2023-11-25', 1, 'Completed'),
(24, 45, 101, '2023-11-26', 1, 'Completed'),
(25, 46, 112, '2023-11-27', 2, 'Completed'),
(26, 47, 118, '2023-11-28', 1, 'Completed'),
(27, 3, 109, '2023-12-05', 1, 'Completed'),
(28, 8, 106, '2023-12-10', 3, 'Completed'),
(29, 13, 104, '2023-12-15', 1, 'Completed'),
(30, 28, 111, '2023-12-20', 1, 'Completed'),
(31, 1, 120, '2023-12-25', 1, 'Completed'),
(32, 50, 110, '2023-12-30', 2, 'Completed');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `category`, `price`, `product_name`) VALUES
(101, 'Elektronik', 15000.00, 'Akıllı Telefon - Pro'),
(102, 'Elektronik', 8500.00, 'Dizüstü Bilgisayar'),
(103, 'Elektronik', 22000.00, 'Oyuncu Bilgisayarı'),
(104, 'Giyim', 750.00, 'Pamuklu Tişört'),
(105, 'Giyim', 1200.00, 'Kışlık Mont'),
(106, 'Giyim', 350.00, 'Kot Pantolon'),
(107, 'Ev Dekorasyon', 4500.00, 'L Koltuk Takımı'),
(108, 'Ev Dekorasyon', 1200.00, 'Çalışma Masası'),
(109, 'Ev Dekorasyon', 850.00, 'Kitaplık'),
(110, 'Kozmetik', 250.00, 'Nemlendirici Krem'),
(111, 'Kozmetik', 480.00, 'Parfüm - Odunsu'),
(112, 'Kozmetik', 95.00, 'Dudak Balmı'),
(113, 'Spor', 3200.00, 'Koşu Bandı'),
(114, 'Spor', 1100.00, 'Dambıl Seti'),
(115, 'Spor', 450.00, 'Yoga Matı'),
(116, 'Kitap', 120.00, 'SQL Öğreniyorum Kitabı'),
(117, 'Kitap', 85.00, 'Veri Analizi 101'),
(118, 'Kitap', 210.00, 'Dünya Tarihi'),
(119, 'Bahçe', 6500.00, 'Bahçe Oturma Grubu'),
(120, 'Bahçe', 2800.00, 'Elektrikli Testere');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
