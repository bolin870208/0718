-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-18 15:40:51
-- 伺服器版本： 8.4.0
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `proj`
--

-- --------------------------------------------------------

--
-- 資料表結構 `address_book`
--

CREATE TABLE `address_book` (
  `ab_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `membership_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `preferred_products` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `address_book`
--

INSERT INTO `address_book` (`ab_id`, `name`, `email`, `password_hash`, `membership_level`, `gender`, `mobile`, `address`, `birthday`, `preferred_products`, `created_at`, `status`, `photo`) VALUES
(1, '高佳穎', 'mail31360@test.com', '$2y$10$xNtb3OHINcNIv.Dm6zirkOJbLNVcFZuQTGb4/KoSPahkdoQgOBA8C', '一般會員', '男', '0918536947', '臺南市', '1996-11-06', '2號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(2, '何怡婷', 'mail10123@test.com', '$2y$10$343N3DLwe/zLjg2pOiXZJ.qoRJfq2rCAtRKh3hgrrFqWtdr5t6TEa', 'VIP會員', '女', '0918239801', '新北市', '1995-03-10', '1號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(3, '劉冠霖', 'mail24802@test.com', '$2y$10$HLKURe3MF8XHVGEHL94xMOgLi64NqhNScD0dJ7aK9XrROdBlwh6Su', 'VIP會員', '女', '0918871956', '嘉義縣', '1987-05-23', '3號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(4, '吳冠廷', 'mail39636@test.com', '$2y$10$9kO1PN85FYkZX/GNEkllfeRhkZJjGptq3/x1GsJZOWbM1xrbkx4E.', '一般會員', '女', '0918585518', '嘉義市', '1999-07-01', '2號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(5, '彭冠宇', 'mail42719@test.com', '$2y$10$jh2oEBJkCR.PiQD5tCZfTumC4itmUWxumAqx1IOTuuIS5fEPjn6J.', '高級會員', '女', '0918418699', '屏東縣', '1986-04-03', '2號豆', '2024-07-16 11:30:36', '已驗證', 0x313031),
(6, '胡冠宇', 'mail65260@test.com', '$2y$10$F4kDJLv1XwCS7N2vXJrW2ezv1utb0m90mSdthmYwAZriS2IFeEkgm', '高級會員', '男', '0918369255', '屏東縣', '1990-01-04', '3號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(7, '唐怡萱', 'mail74423@test.com', '$2y$10$dblCNtILBZS/1WgvC7j3UeUSk.yG8nSO5z5DklCPMBk0b2smQ5xNG', '一般會員', '女', '0918733613', '新北市', '1988-05-11', '2號豆', '2024-07-16 11:30:36', '未驗證', 0x313031),
(8, '黃冠廷', 'mail59951@test.com', '$2y$10$ITugy7lKNH/LV95YI4vSx.bvAEluNBITlf8.cYMj5Yax4jyYV.F/q', '高級會員', '男', '0918964879', '連江縣', '1995-11-27', '2號豆', '2024-07-16 11:30:36', '停用', 0x313031),
(121, '李彥廷', 'mail21204@test.com', '$2y$10$iLZtGKOvl83So6Pwy1er2eMJiB3XbRPX5yr5X8f99/oHaoiwDEyw6', 'VIP會員', '女', '0918480575', '南投縣', '1993-10-08', '4號豆', '2024-07-18 15:38:20', '未驗證', 0x313031),
(122, '梁家豪', 'mail17393@test.com', '$2y$10$ywRBSnc5gNdbvQX7ifOX1e9tapHJH29NgL/WHfrIIVHeN3ZGlAiP.', 'VIP會員', '男', '0918103331', '嘉義市', '1994-10-26', '1號豆', '2024-07-18 15:38:20', '未驗證', 0x313031),
(123, '鄧承翰', 'mail28362@test.com', '$2y$10$6hiOjGCG2r/oNmslSQZ71OyQ8cQaScx3cR12Rr7UdEgOsbab/5QUW', '一般會員', '女', '0918100416', '臺北市', '1989-02-27', '4號豆', '2024-07-18 15:38:20', '已驗證', 0x313031),
(124, '吳家瑋', 'mail29746@test.com', '$2y$10$FjfaQwwoS4bL67c0k6JSCOcbzIM82jBnt82ezI2imLp78T6pm3.Iu', '高級會員', '女', '0918983938', '臺南市', '1985-01-25', '3號豆', '2024-07-18 15:38:20', '已驗證', 0x313031),
(125, '楊怡萱', 'mail90527@test.com', '$2y$10$nHOb07dLGl/VvWUeU6lejeAVMvhz3DAf9tefO0Pp2nCvVgDJ1RHM.', '高級會員', '女', '0918364894', '宜蘭縣', '1992-03-30', '4號豆', '2024-07-18 15:38:20', '已驗證', 0x313031),
(126, '梁鈺婷', 'mail32978@test.com', '$2y$10$i8X5W7zKthVGL.bEwEXEhOBfQBE/1fPYTHmieVH9WyciEmqPvavI2', '一般會員', '女', '0918663815', '金門縣', '1989-05-05', '4號豆', '2024-07-18 15:38:20', '已驗證', 0x313031),
(127, '劉郁婷', 'mail93612@test.com', '$2y$10$e15Zf3OsJxAhJj6AibNVZefVL3pyIsowxThectLqrppTNff9iZFce', '高級會員', '女', '0918260333', '基隆市', '1991-02-12', '3號豆', '2024-07-18 15:38:20', '已驗證', 0x313031),
(128, '許雅筑', 'mail66424@test.com', '$2y$10$E/lEA/xO3Qvi2YndENCsz.4g4zzJ.niHQVLBy8aC9k/gre7JgPHNy', '一般會員', '男', '0918251717', '嘉義市', '1988-12-24', '3號豆', '2024-07-18 15:38:21', '已驗證', 0x313031),
(129, '吳鈺婷', 'mail62376@test.com', '$2y$10$4YJxNDN3v5fTzkyKvIhiZOKyPACPkrn4UNoAmI6afLEBagNvUNIza', '高級會員', '男', '0918671280', '雲林縣', '1997-01-05', '2號豆', '2024-07-18 15:38:21', '未驗證', 0x313031),
(130, '謝鈺婷', 'mail34551@test.com', '$2y$10$nxYBB9Z3hMoeBBuHOs8uSe38bE5c252X6rEvq6t9ziw9SWBztoXze', '一般會員', '女', '0918800279', '新竹市', '1989-11-20', '4號豆', '2024-07-18 15:38:21', '已驗證', 0x313031),
(131, '曾郁婷', 'mail18302@test.com', '$2y$10$9khpKf6HkADWxa.Td.pWieBojxvMKePmYpl3O25I2nFJcFNJW/GaW', '一般會員', '男', '0918112986', '臺東縣', '1985-04-21', '4號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(132, '沈冠霖', 'mail95071@test.com', '$2y$10$dz5Sbd3PzFyoaaFYbgwQCuQn3il1gw.tCR1Mnlm.kI1dNVcvN3JeW', '一般會員', '男', '0918615743', '新北市', '1997-12-07', '4號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(133, '曾彥廷', 'mail15495@test.com', '$2y$10$quqLuk6wQ6vDEGt/1lC.kOPkCCMr3emV4IY1wJWAuWfrBdCqyby.e', '一般會員', '女', '0918745400', '宜蘭縣', '1996-08-24', '3號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(134, '程郁婷', 'mail80173@test.com', '$2y$10$BQJ4isGp2X.Wc27idghJV.i80FD9CckxrJjkFpdIY33neIYxA5DQW', '高級會員', '女', '0918242002', '澎湖縣', '1998-06-06', '1號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(135, '李承翰', 'mail64117@test.com', '$2y$10$Ki6DcnyQyHcIh7SgXceUeuO3PH0q9eIgxnZCXCrwuXKmDC1fQ7RQC', '一般會員', '女', '0918773449', '苗栗縣', '1988-08-19', '4號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(136, '何家瑋', 'mail74825@test.com', '$2y$10$ajMQjC3wkzy3UDI4JJZzL.Y9PAaCv8mLt6QHEoGWcdwf6BA8ZPI6a', '高級會員', '男', '0918386096', '新竹市', '1996-02-23', '2號豆', '2024-07-18 15:39:22', '未驗證', 0x313031),
(137, '趙彥廷', 'mail18974@test.com', '$2y$10$5z./xOr..Le8b8A5Wo8Iwu4jLwpKcY45wZmmUT0M.ckVFHWa8DRf6', 'VIP會員', '女', '0918590893', '臺南市', '1998-01-20', '4號豆', '2024-07-18 15:39:22', '未驗證', 0x313031),
(138, '袁怡萱', 'mail36401@test.com', '$2y$10$qo0MRrUrPxxO4pwR9JJLDeEAjCXgDFVkQWzX02Ethfp7y6Qfvl2CS', '高級會員', '女', '0918879503', '南投縣', '1998-12-01', '1號豆', '2024-07-18 15:39:22', '已驗證', 0x313031),
(139, '吳宗翰', 'mail16885@test.com', '$2y$10$4T91JxwJ1cTbEDA60p2fNuRQtQ3GaqpRs.vr5SmpJWeLyAq82/Z32', 'VIP會員', '女', '0918914644', '嘉義縣', '1995-07-06', '4號豆', '2024-07-18 15:39:23', '停用', 0x313031),
(140, '吳家瑋', 'mail83881@test.com', '$2y$10$H6WTHi6zg6mhDtakWonbEO4YIC3jl0UTwvnQHBUgds/LGWC9ipJdO', 'VIP會員', '男', '0918131831', '新竹縣', '1997-09-09', '1號豆', '2024-07-18 15:39:23', '未驗證', 0x313031),
(141, '徐宗翰', 'mail45408@test.com', '$2y$10$WuablrmojR5Cn.T9.qqAMuYb3mv8mA.yuIj6oNgEdn/uV/6UW4uo.', 'VIP會員', '男', '0918287458', '臺中市', '1996-12-10', '1號豆', '2024-07-18 15:39:26', '停用', 0x313031),
(142, '胡怡婷', 'mail89008@test.com', '$2y$10$hZ6hmy/t0MiEZqVvF5CTturx.SmVsDBe58AQ3iw9./eptk7rCfGta', 'VIP會員', '女', '0918516284', '嘉義市', '1992-08-29', '4號豆', '2024-07-18 15:39:26', '停用', 0x313031),
(143, '馮雅婷', 'mail44979@test.com', '$2y$10$8OvNk9nj/M10xqyIjEdAEObfzED8kVHDUd3SyYWmYJpGOqfwFlG1C', 'VIP會員', '女', '0918882698', '嘉義市', '1997-08-10', '3號豆', '2024-07-18 15:39:26', '停用', 0x313031),
(144, '羅怡婷', 'mail62622@test.com', '$2y$10$OObhc8Vaog10zLL88UQM.eXgyIHSMA/118qsyfT1sxSHUNXQiW8Yu', 'VIP會員', '女', '0918838173', '南投縣', '1990-11-12', '3號豆', '2024-07-18 15:39:26', '未驗證', 0x313031),
(145, '高詩涵', 'mail20945@test.com', '$2y$10$stLZp.9orVTVX.4UNXS4c.1JCzd6Z8yWuqYdeoYvLoR6YU2a.9ntS', 'VIP會員', '男', '0918192369', '臺北市', '1990-07-30', '4號豆', '2024-07-18 15:39:26', '已驗證', 0x313031),
(146, '朱家瑋', 'mail96523@test.com', '$2y$10$MfY1KtztG426Abee94ltye4jWQSZrm6vSjZ5Yx6SWXrfQkVu.Xi.y', '高級會員', '男', '0918840316', '臺東縣', '1997-10-03', '3號豆', '2024-07-18 15:39:26', '已驗證', 0x313031),
(147, '呂冠宇', 'mail69619@test.com', '$2y$10$3X8JfJ/7iXXNOelVRL3SPuT84//sPbAuxHyZD6J64lNS1eZNmFbt6', 'VIP會員', '男', '0918796422', '基隆市', '1998-04-14', '4號豆', '2024-07-18 15:39:26', '已驗證', 0x313031),
(148, '曹冠宇', 'mail10282@test.com', '$2y$10$OZMHhKrUCGJbBw7/3kza4.mxoJ1UtT.9U/whRsQdk24vHDjFOjhlK', '高級會員', '女', '0918647117', '宜蘭縣', '1986-02-25', '1號豆', '2024-07-18 15:39:26', '已驗證', 0x313031),
(149, '謝詩涵', 'mail81284@test.com', '$2y$10$Y4vWBKK0TqkzbwH4NKqkVelwE2nswNnVasRE9X0BiJnSMS4rM9TKK', 'VIP會員', '女', '0918179209', '連江縣', '1991-11-21', '4號豆', '2024-07-18 15:39:27', '未驗證', 0x313031),
(150, '於詩涵', 'mail34576@test.com', '$2y$10$6l8Lbi8a9UaoqIFL8BhOcONI/W6oX1uv.vzeeNsgpe80UFhqivHbW', '高級會員', '女', '0918724790', '屏東縣', '1989-09-21', '2號豆', '2024-07-18 15:39:27', '停用', 0x313031),
(151, '朱冠廷', 'mail27332@test.com', '$2y$10$ayKQrobzH.ajK1whnWw/gOE2wf1G0B6Lyt0/casQXWvL8H5BPMrA.', '一般會員', '女', '0918914264', '高雄市', '1985-09-22', '3號豆', '2024-07-18 15:39:29', '未驗證', 0x313031),
(152, '高郁婷', 'mail18671@test.com', '$2y$10$gJLCKGkdqQL/2W6yx4YqY.YAqR56T493OtR5Y6J7VLNpBKj/0CukS', '高級會員', '女', '0918711731', '臺南市', '1994-01-16', '1號豆', '2024-07-18 15:39:29', '已驗證', 0x313031),
(153, '徐雅筑', 'mail36440@test.com', '$2y$10$HWgnD0uNHOPEJ6Ja0/nO6ekuM5i/cAk7twLlOhF85oKQG2amaphue', 'VIP會員', '男', '0918460353', '宜蘭縣', '1987-07-05', '4號豆', '2024-07-18 15:39:29', '停用', 0x313031),
(154, '董承翰', 'mail27958@test.com', '$2y$10$eV12xkTBwW.t3DzGptnfr.jMB92BdfeK1NqiYmOdQCa.sJ5/4su/e', '一般會員', '女', '0918701255', '嘉義縣', '1988-04-18', '4號豆', '2024-07-18 15:39:29', '已驗證', 0x313031),
(155, '曹郁婷', 'mail35206@test.com', '$2y$10$nK/ZX/sdJQ5Rd1EoGLcq.uQ138o8ms8Vh4XEKXNGb73/9biN4rGFu', '高級會員', '男', '0918162020', '桃園市', '1988-04-23', '4號豆', '2024-07-18 15:39:29', '未驗證', 0x313031),
(156, '王宗翰', 'mail54398@test.com', '$2y$10$WeDrnyGeSaM/5g0jbZYyJOeIiTvrSAaIHMnxN7pYlk1lJFjz8zc/m', 'VIP會員', '男', '0918855087', '臺北市', '1986-06-28', '1號豆', '2024-07-18 15:39:29', '停用', 0x313031),
(157, '李家瑋', 'mail65515@test.com', '$2y$10$xgO81ZxB2YRRaBHR0/LUr.GGxe6m7QAM.fYOtIeS4Ux2u.i0umRu2', 'VIP會員', '男', '0918980749', '雲林縣', '1988-04-10', '1號豆', '2024-07-18 15:39:29', '已驗證', 0x313031),
(158, '高怡萱', 'mail86573@test.com', '$2y$10$xs71Uz1.AxV5fa0IYvobdO.Zb9qJubGmNx0DuK4r57qnqc/iCQ3Ga', '高級會員', '女', '0918748745', '花蓮縣', '1994-04-28', '1號豆', '2024-07-18 15:39:29', '未驗證', 0x313031),
(159, '高柏翰', 'mail93429@test.com', '$2y$10$T4taXGmnNtVW5299hVg/TOnlrlTqM78CuXrXXQ7woEA4UHIAf8XCy', 'VIP會員', '女', '0918658249', '臺北市', '1987-09-09', '4號豆', '2024-07-18 15:39:29', '未驗證', 0x313031),
(160, '張宜庭', 'mail19497@test.com', '$2y$10$bXen2di2et3mN7ZM/WhxiO6DEVBD0/IJpdE6U9hr.GZycFWPkQmV.', '高級會員', '女', '0918468554', '苗栗縣', '1988-07-23', '4號豆', '2024-07-18 15:39:29', '停用', 0x313031),
(161, '董家豪', 'mail63870@test.com', '$2y$10$QnkhfuYkv1C8n2oy5jAaLejstUNprPnK0l/J24pqUIr0qhAoPjDem', '高級會員', '女', '0918543876', '雲林縣', '1992-05-05', '2號豆', '2024-07-18 15:39:31', '已驗證', 0x313031),
(162, '胡家豪', 'mail83223@test.com', '$2y$10$/JzNhK3RNui5wdKyW9.9cO3Fz8YUn0/BE8/MmiQz/gmk8iguIfaQu', '高級會員', '女', '0918636870', '臺南市', '1992-06-14', '2號豆', '2024-07-18 15:39:31', '未驗證', 0x313031),
(163, '張柏翰', 'mail48983@test.com', '$2y$10$xQ190blKkSAtwYODAQUjkeJHvN.J4AhdqhFR3A7lw5VtNub9Owrhq', 'VIP會員', '男', '0918291631', '基隆市', '1993-02-08', '2號豆', '2024-07-18 15:39:31', '未驗證', 0x313031),
(164, '李怡萱', 'mail73900@test.com', '$2y$10$VgGD7bbhYoXkms4mfG0gXOm/JAIStdN34SvUDZwNMekLSMuUilNfG', 'VIP會員', '男', '0918704042', '花蓮縣', '1992-11-03', '4號豆', '2024-07-18 15:39:31', '停用', 0x313031),
(165, '鄭郁婷', 'mail46365@test.com', '$2y$10$aLlHsP7Jq56v1IRLwtCjLOOG.VzIHmY8pUL3HG8V.04uEW3Y1k.ay', '高級會員', '女', '0918717708', '連江縣', '1991-02-15', '3號豆', '2024-07-18 15:39:31', '未驗證', 0x313031),
(166, '許冠宇', 'mail78087@test.com', '$2y$10$mWpOxt97dAF7WJ0C/TRUJ.LgB8vmf5Ji26H.e3GLyz3IolwwOEP.6', 'VIP會員', '女', '0918108465', '臺北市', '1987-01-28', '2號豆', '2024-07-18 15:39:31', '已驗證', 0x313031),
(167, '韓怡君', 'mail67716@test.com', '$2y$10$H1MC3UFTOQy6NU8jjVt5eOhe9YbVJ.1jpPQ9nehhQYlYxg0821eJq', 'VIP會員', '女', '0918700715', '新北市', '1985-06-26', '2號豆', '2024-07-18 15:39:31', '停用', 0x313031),
(168, '唐鈺婷', 'mail63358@test.com', '$2y$10$cQBPCcnPK1WtaqoRn0vQd.Y2UuHeRkiQYRbm6QdXhZUIeg/LvGSUK', '一般會員', '男', '0918572320', '彰化縣', '1988-05-14', '4號豆', '2024-07-18 15:39:31', '停用', 0x313031),
(169, '馬柏翰', 'mail73587@test.com', '$2y$10$Rkn6N1WjwRGQqaFYHrzYheIQ4rqEUgPVTnwAifHzpbrT9q2sLxWem', 'VIP會員', '男', '0918161667', '花蓮縣', '1991-01-22', '1號豆', '2024-07-18 15:39:31', '已驗證', 0x313031),
(170, '唐家豪', 'mail76596@test.com', '$2y$10$rREZe53IdSXACwz8yBEkh.4Payylr/zqkrPBfXcv7/kn9YlRDsNYK', 'VIP會員', '女', '0918347395', '嘉義縣', '1990-04-19', '3號豆', '2024-07-18 15:39:31', '已驗證', 0x313031),
(171, '於詩涵', 'mail27149@test.com', '$2y$10$nw0JLihirJSoIXzFhYo.fe5.QOKqeR/QWIXm9VmQccCMNitC4trQK', '一般會員', '男', '0918734447', '金門縣', '1995-03-27', '2號豆', '2024-07-18 15:39:33', '未驗證', 0x313031),
(172, '劉柏翰', 'mail44173@test.com', '$2y$10$Exf351wXH5v5t61RdBGJH.k6PcoXsdnDD.53D6GJTL3j5Bo5LHtla', '一般會員', '男', '0918945432', '桃園市', '1989-08-14', '1號豆', '2024-07-18 15:39:33', '停用', 0x313031),
(173, '趙承翰', 'mail81835@test.com', '$2y$10$/xmj73vk0GFfQPTU7ejzP.6ABJJ3EO9cRtOoFKOUQnpZg6MYQJHbG', '一般會員', '男', '0918769514', '高雄市', '1986-11-26', '1號豆', '2024-07-18 15:39:33', '未驗證', 0x313031),
(174, '曾柏翰', 'mail66100@test.com', '$2y$10$4u4Et5gjzWvo9J/q5hC30un/jaXAgkJDF2C1PjD6nnCqSPpurTv6G', '一般會員', '女', '0918833925', '雲林縣', '1995-11-21', '3號豆', '2024-07-18 15:39:33', '未驗證', 0x313031),
(175, '李郁婷', 'mail25569@test.com', '$2y$10$q1AcLDSVDUSYw44zRwf0aegHE1rSs9EIlDuNr51DEE2JHYZiZzOVq', '一般會員', '男', '0918346290', '嘉義市', '1999-05-05', '4號豆', '2024-07-18 15:39:33', '停用', 0x313031),
(176, '蕭鈺婷', 'mail62341@test.com', '$2y$10$JNhQBSK/zsJ7dhqtLGurk.LMOUyL6EgdiiV.9y9hnZ/ScshOqMFC2', '一般會員', '男', '0918805851', '彰化縣', '1986-02-19', '4號豆', '2024-07-18 15:39:33', '未驗證', 0x313031),
(177, '朱宇軒', 'mail71137@test.com', '$2y$10$bS3fk7TWSsH1cx94RwKlqOXTk3XuqR.gsOuSakodJhuhZDJr4nQS2', '一般會員', '男', '0918720592', '桃園市', '1987-05-05', '1號豆', '2024-07-18 15:39:33', '已驗證', 0x313031),
(178, '李詩涵', 'mail27201@test.com', '$2y$10$IoSlIhiixG.u8Ss5Ye/PfOdBTfwCSXuV23jO8d2O5iNzrCK0tqAJy', '一般會員', '男', '0918849469', '基隆市', '1986-04-16', '2號豆', '2024-07-18 15:39:33', '停用', 0x313031),
(179, '羅怡君', 'mail19147@test.com', '$2y$10$uPcKXdopjvZAyU1fQTx19OJ2PBGFL6hWtMbBDGyUe7tAlz9Au.DAm', '一般會員', '女', '0918701103', '宜蘭縣', '1985-10-17', '2號豆', '2024-07-18 15:39:33', '停用', 0x313031),
(180, '李宇軒', 'mail13344@test.com', '$2y$10$bkL.Bk1Ez2.MeNQpWtZloOejDesZxpwjPLA5AN3h.l6UB1pwnAr2y', '高級會員', '男', '0918312757', '嘉義市', '1989-06-24', '2號豆', '2024-07-18 15:39:33', '已驗證', 0x313031),
(181, '馬雅婷', 'mail90125@test.com', '$2y$10$wuPITaiRWnmfOQ4Y4wDlFeq5bzW9tDug5u4kIA3/ngBhtoLFMzO7m', '高級會員', '女', '0918916714', '高雄市', '1990-03-13', '1號豆', '2024-07-18 15:39:34', '停用', 0x313031),
(182, '楊怡萱', 'mail35128@test.com', '$2y$10$KJMBhdiMQlMLjCv3cjVttu.zeEs173nuEp.qZCabHYgT45/X4mSq.', '一般會員', '男', '0918223039', '臺南市', '1990-12-25', '1號豆', '2024-07-18 15:39:35', '停用', 0x313031),
(183, '唐家豪', 'mail38687@test.com', '$2y$10$lXjeZPryCpWTi90N1MzxnehK/8/hvWqAL/RCbEpHwOHaxms1AmF5a', '一般會員', '男', '0918964160', '桃園市', '1998-09-08', '4號豆', '2024-07-18 15:39:35', '未驗證', 0x313031),
(184, '謝怡君', 'mail57692@test.com', '$2y$10$2iasnKZr57GVGtuN0hHImek0T6P3ST/OEP0Dm.P0vVUAsHGjzqVgG', 'VIP會員', '男', '0918308101', '新竹市', '1992-09-20', '4號豆', '2024-07-18 15:39:35', '未驗證', 0x313031),
(185, '徐雅婷', 'mail22217@test.com', '$2y$10$F1yp7uU5GVOkOR6INLHd7exg8l5C1Dd10I8ZtbNskl8GXC1P7KYcu', '一般會員', '女', '0918656494', '澎湖縣', '1986-12-25', '3號豆', '2024-07-18 15:39:35', '未驗證', 0x313031),
(186, '徐怡婷', 'mail66152@test.com', '$2y$10$4/lARvid.5WjmbyRqaciuuex7ys/cX1tTU4Is69lDF1lJVoSjiVVi', '一般會員', '男', '0918252210', '澎湖縣', '1989-09-15', '2號豆', '2024-07-18 15:39:35', '已驗證', 0x313031),
(187, '林詩涵', 'mail92051@test.com', '$2y$10$g0c8PmpOc81Wx4VwL14xQe.ZZHyaIYT92msYFrEW2b8Sx4lwwuFQq', '一般會員', '男', '0918693607', '花蓮縣', '1991-11-05', '2號豆', '2024-07-18 15:39:35', '已驗證', 0x313031),
(188, '趙冠宇', 'mail50057@test.com', '$2y$10$AVFUywQchdIS/v6S7ororeihaxR.VN4wvCIkpm1h/eI8XQxdLW4O.', '高級會員', '女', '0918310890', '金門縣', '1998-02-26', '4號豆', '2024-07-18 15:39:35', '已驗證', 0x313031),
(189, '馬家豪', 'mail66105@test.com', '$2y$10$Z26d17s4fouFsZQ0xF9r2eUJXhy2asO8XLYC4Lnn5LnSNd97LkDei', 'VIP會員', '男', '0918587220', '花蓮縣', '1997-08-04', '1號豆', '2024-07-18 15:39:35', '未驗證', 0x313031),
(190, '梁冠廷', 'mail89906@test.com', '$2y$10$gXxqlS0RcdVN2HTYlIIdaOqZ9bXV5Tkhsfnw0vZJiYzPcH6pXsaXW', 'VIP會員', '女', '0918702689', '臺中市', '1999-05-30', '2號豆', '2024-07-18 15:39:35', '未驗證', 0x313031),
(191, '張柏翰', 'mail19462@test.com', '$2y$10$ymHMM.HYAXgAtMvkz1c2LOu2k50GgNNRD28rDo7G8Tvg6vogDn/CG', '高級會員', '男', '0918999924', '彰化縣', '1987-09-15', '4號豆', '2024-07-18 15:39:36', '已驗證', 0x313031),
(192, '黃怡婷', 'mail98351@test.com', '$2y$10$4aRd6zQLl6ULA6gzEYz4NO8pJGLVUWuZckY7pokPIFcom9lzgj/aC', '一般會員', '女', '0918886475', '高雄市', '1997-12-31', '1號豆', '2024-07-18 15:39:36', '已驗證', 0x313031),
(193, '張怡萱', 'mail32155@test.com', '$2y$10$45EkZLVjfFirY81mVIuIDeC.NEVXCWxoq.bXkm6CfdOYzgMbgPSjS', 'VIP會員', '男', '0918593422', '新北市', '1994-08-23', '4號豆', '2024-07-18 15:39:36', '未驗證', 0x313031),
(194, '鄧家瑋', 'mail60467@test.com', '$2y$10$Bv/lnA7wCeCmbhKSPsq8puW39W5DYUcwHfaxKUlIlSgn8mSeJW/6O', '高級會員', '女', '0918600387', '金門縣', '1993-10-19', '4號豆', '2024-07-18 15:39:37', '停用', 0x313031),
(195, '梁冠廷', 'mail53249@test.com', '$2y$10$8I6Xj1dNV/kXa7wjh4xJ8OxSCmi7TL/auwv1MV.U58vZfmfxmLexa', 'VIP會員', '男', '0918946852', '新竹縣', '1986-10-08', '1號豆', '2024-07-18 15:39:37', '已驗證', 0x313031),
(196, '鄭鈺婷', 'mail38119@test.com', '$2y$10$bBmrOUsRu3hUtMGbzvUeq.74pyvPM9wJD9o5pUuiykiIgQkfqXQ1m', 'VIP會員', '女', '0918623667', '連江縣', '1993-08-26', '3號豆', '2024-07-18 15:39:37', '未驗證', 0x313031),
(197, '孫家瑋', 'mail26186@test.com', '$2y$10$TqwJvHiHefTxfrPHBf/KOu5sNzhALgrK4bK8FJxAL/tvGp4Xp6baC', '高級會員', '男', '0918179836', '高雄市', '1995-12-26', '1號豆', '2024-07-18 15:39:37', '未驗證', 0x313031),
(198, '馬柏翰', 'mail25562@test.com', '$2y$10$.8ccoXJ5rBSFD24hpL9tgewtz81W.pwQG0BzzXJpAWBy/TfO07IXG', '一般會員', '男', '0918282940', '屏東縣', '1985-03-30', '3號豆', '2024-07-18 15:39:37', '已驗證', 0x313031),
(199, '陳詩涵', 'mail45064@test.com', '$2y$10$gA7JfGh7DtOe97UoJXHZ.OeTbtmf9SFZYZzuFYNostWgrdYvVxKH6', '一般會員', '女', '0918175756', '桃園市', '1995-10-19', '1號豆', '2024-07-18 15:39:37', '已驗證', 0x313031),
(200, '程宇軒', 'mail87399@test.com', '$2y$10$BMSGd2jt4NTp6KHCbStCKO7nvMXdUuLvZVUtNgJStG86ymN.d53kC', '一般會員', '男', '0918147150', '基隆市', '1997-02-18', '4號豆', '2024-07-18 15:39:37', '未驗證', 0x313031),
(201, '林怡君', 'mail99826@test.com', '$2y$10$qNXqNhMTDqlKTty7GJ5rd.iia8G2Dl6jdRlu9cSZKv9O95BaPv61G', '高級會員', '男', '0918389390', '臺中市', '1991-09-13', '4號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(202, '陳詩涵', 'mail45313@test.com', '$2y$10$xeu70gvn4L7oc04x9l2a4.CqhfKpHrQ4EGy0VGGxnvxScEFqznH1W', '高級會員', '男', '0918642407', '嘉義縣', '1994-03-17', '3號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(203, '胡彥廷', 'mail63055@test.com', '$2y$10$mZ0DdK2ceFO7TbOrFB9TMeeec8ASnjPwiJ4tGsQFu551KqrMUZRh.', '一般會員', '女', '0918118265', '雲林縣', '1994-04-01', '1號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(204, '袁詩涵', 'mail13955@test.com', '$2y$10$u9z8.2JiGnSqqnsp85OP7.YI/g6eI8F7wI8SGCJmbqLQfC/oNdXS.', 'VIP會員', '男', '0918342650', '臺南市', '1999-10-05', '4號豆', '2024-07-18 15:39:39', '已驗證', 0x313031),
(205, '曹郁婷', 'mail79434@test.com', '$2y$10$mNjDmkGGrlcFC2tfzFvzteVFdGhAGbPyoE.iYY1.clQp5ISxEXi7y', '一般會員', '女', '0918510483', '宜蘭縣', '1985-01-22', '2號豆', '2024-07-18 15:39:39', '已驗證', 0x313031),
(206, '鄭宜庭', 'mail80003@test.com', '$2y$10$VF8gi88A4sfBBVSYWfASZO1ByUiBy9pYCD1ysNk9fm5X0qT6Lx.62', 'VIP會員', '男', '0918922722', '臺中市', '1995-07-07', '3號豆', '2024-07-18 15:39:39', '已驗證', 0x313031),
(207, '馮承翰', 'mail54962@test.com', '$2y$10$4hC/ZkNHBtogg29/L9uixe2DbFyyNp0SeAuXc7zyDD2WT/58bTEpu', '一般會員', '男', '0918509240', '苗栗縣', '1998-06-06', '1號豆', '2024-07-18 15:39:39', '已驗證', 0x313031),
(208, '高宜庭', 'mail16104@test.com', '$2y$10$UkWYNsihRJN7ILEexx3FjuJkOo4lVRChE7YsXankytJoxezJlVskC', '高級會員', '女', '0918758434', '連江縣', '1988-05-06', '1號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(209, '韓冠霖', 'mail72357@test.com', '$2y$10$VfM0fa8rQa9rUCe5igSwZOxOvHKmKL6hjx5iDoSXuX/q3GN12fiiC', '高級會員', '女', '0918493413', '臺南市', '1993-10-07', '3號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(210, '程鈺婷', 'mail39657@test.com', '$2y$10$E6/QZ6Q59/RKXthVUPgQsuU2xArlVX7BL2OoTUBvo1PF7RlB4BESm', '一般會員', '男', '0918282826', '臺東縣', '1992-04-20', '4號豆', '2024-07-18 15:39:39', '停用', 0x313031),
(211, '唐怡婷', 'mail57023@test.com', '$2y$10$18ejBf94IhSk0OZLTpy4POP9Zhrs423V2tquHZCKyvab/RJvd8C..', '一般會員', '女', '0918639359', '南投縣', '1990-07-11', '1號豆', '2024-07-18 15:39:41', '未驗證', 0x313031),
(212, '張宗翰', 'mail78998@test.com', '$2y$10$1kmDSUhFKxckhMfkcNlPV.bVDCSi7KOhLaEMywbF22eoziTHzlcNK', '一般會員', '女', '0918518094', '苗栗縣', '1996-10-31', '2號豆', '2024-07-18 15:39:41', '已驗證', 0x313031),
(213, '周雅筑', 'mail10927@test.com', '$2y$10$SsTsnf2NMOmBp4uqjJKeteIOgcejrhBJZzs2H8c046ohqHHN7gK5q', '高級會員', '女', '0918817592', '屏東縣', '1996-08-22', '4號豆', '2024-07-18 15:39:41', '已驗證', 0x313031),
(214, '傅彥廷', 'mail33205@test.com', '$2y$10$XU54S116H5PzHYFXk9GjYObOM6G5wPQGA7xc.t.YmLvg/FWsJR6bS', '高級會員', '男', '0918326177', '屏東縣', '1986-03-04', '2號豆', '2024-07-18 15:39:41', '未驗證', 0x313031),
(215, '馬鈺婷', 'mail26224@test.com', '$2y$10$3QVCoRQJ383/FrOtMiNNJuVrjWJlZ3thywukvizFleoZz8Anbz0ya', '一般會員', '女', '0918388180', '臺中市', '1986-02-19', '2號豆', '2024-07-18 15:39:42', '未驗證', 0x313031),
(216, '於家豪', 'mail86296@test.com', '$2y$10$yH8YjaVP2udP7rrTxHAZGuB00E9G4YqR2FEXWa9pjPwRUh84i9S2e', 'VIP會員', '男', '0918571567', '基隆市', '1987-07-17', '1號豆', '2024-07-18 15:39:42', '已驗證', 0x313031),
(217, '王郁婷', 'mail41358@test.com', '$2y$10$Fc.uBV2WSar5VHpRSm/8Hua.Gh.mTa6q.RyGcl8Y2l3k1ztQFhDoq', '一般會員', '男', '0918235330', '苗栗縣', '1989-10-16', '2號豆', '2024-07-18 15:39:42', '未驗證', 0x313031),
(218, '張宇軒', 'mail99516@test.com', '$2y$10$4.iybGmpBuZKvhTLqI0z.ORj05CEl39qSdXwRXYsSQQsHiUKNFw9m', '高級會員', '男', '0918248825', '高雄市', '1993-01-09', '4號豆', '2024-07-18 15:39:42', '停用', 0x313031),
(219, '馮家瑋', 'mail80223@test.com', '$2y$10$ufyTcnTky4yXu5Go.SY7huqt7UMozGZTMpsgixyyJt3iwm1UB40Zi', 'VIP會員', '男', '0918658932', '南投縣', '1990-01-12', '2號豆', '2024-07-18 15:39:42', '停用', 0x313031),
(220, '韓家豪', 'mail36640@test.com', '$2y$10$YqbWnUwRudWY5J4AfHO/RemCcj.L5k/iFETC/SLpNUyLApLNO9C9S', 'VIP會員', '女', '0918344708', '金門縣', '1998-02-28', '3號豆', '2024-07-18 15:39:42', '已驗證', 0x313031),
(221, '張鈺婷', 'mail25009@test.com', '$2y$10$ERnQirEmuvLZWdhlGgffe.3T1kj75NLu00v96tAhf.5D8xOOEkMv.', 'VIP會員', '男', '0918578756', '彰化縣', '1995-12-06', '2號豆', '2024-07-18 15:39:43', '停用', 0x313031),
(222, '周雅筑', 'mail86152@test.com', '$2y$10$Z0dIubmIc292Trwh1PQxTO4LLIB4agDDAf1d3QdHy6AcMCKZkvuee', '高級會員', '女', '0918304057', '連江縣', '1990-04-13', '1號豆', '2024-07-18 15:39:43', '停用', 0x313031),
(223, '許怡婷', 'mail94303@test.com', '$2y$10$q/4GufYiN3eqaLMxPuAbGuj12gNBTBEPECUTszI2/MOoC5agX1n1O', '高級會員', '男', '0918962531', '金門縣', '1994-11-09', '1號豆', '2024-07-18 15:39:43', '未驗證', 0x313031),
(224, '呂冠宇', 'mail40952@test.com', '$2y$10$BIi6YjrxAT.pBvc.bktvl.Un02yexZIAQ9ccL1YgWnNLWrtzDsHJ6', '高級會員', '女', '0918864505', '新竹縣', '1987-04-28', '4號豆', '2024-07-18 15:39:44', '已驗證', 0x313031),
(225, '董柏翰', 'mail34748@test.com', '$2y$10$HQyeMz0jBeUuSOYrgXejJuk6z6zEZ8uSCScn6BlnoZAjcBntISp.G', '一般會員', '女', '0918200038', '金門縣', '1992-09-10', '3號豆', '2024-07-18 15:39:44', '停用', 0x313031),
(226, '韓冠霖', 'mail52015@test.com', '$2y$10$MtbShO2JCBkbPXEYKBuwF.rVAcEkfPSqou0M8l.JRFppb8x8Hg7CC', '一般會員', '女', '0918559347', '花蓮縣', '1996-12-10', '3號豆', '2024-07-18 15:39:44', '未驗證', 0x313031),
(227, '林雅筑', 'mail48752@test.com', '$2y$10$pR1QX9dqCmx3FEowcCTvSOzo6WLyFD0Onk/WGFSPWvEyzOd2bp/jy', '高級會員', '男', '0918773236', '澎湖縣', '1990-08-09', '1號豆', '2024-07-18 15:39:44', '未驗證', 0x313031),
(228, '曾宗翰', 'mail76855@test.com', '$2y$10$PhcLtGT/DFVbCXwAjdPuiO2Cj71Anp2IP0aDRn/D78WCtZkbG3tlW', 'VIP會員', '男', '0918293196', '臺中市', '1992-12-14', '2號豆', '2024-07-18 15:39:44', '未驗證', 0x313031),
(229, '許冠廷', 'mail96932@test.com', '$2y$10$OofBEn.FcMQ4PB3HzZqyHul3yEuWqg1zeQSBnT9i6l4ZMuDi6nu.e', 'VIP會員', '男', '0918373796', '屏東縣', '1999-12-01', '2號豆', '2024-07-18 15:39:44', '已驗證', 0x313031),
(230, '高佳穎', 'mail76595@test.com', '$2y$10$FJWdC1s.uN2OZ20XRbmj3eHXFLWD7fef.9mofcQUMbTy620Ucma6a', 'VIP會員', '女', '0918545511', '新北市', '1998-02-22', '4號豆', '2024-07-18 15:39:44', '停用', 0x313031),
(231, '袁承翰', 'mail98464@test.com', '$2y$10$K6a//c3gxkjpAQSZVf6AqeqEYsOTEPaSFpm0vzSVdXSZJ5wRUW92K', 'VIP會員', '男', '0918768035', '新北市', '1990-03-17', '2號豆', '2024-07-18 15:39:45', '已驗證', 0x313031),
(232, '黃佳穎', 'mail54600@test.com', '$2y$10$7LEd0K2fdXPWBHppIi7fhOJN9FtVeWJkYwASY.62F/4fKXyR6Kp2W', 'VIP會員', '女', '0918867210', '雲林縣', '1987-08-15', '3號豆', '2024-07-18 15:39:46', '已驗證', 0x313031),
(233, '彭怡婷', 'mail80082@test.com', '$2y$10$wXNhVvSAAQEHhrowBSZecuky4Q/jg7s5NJ/ZPL.MDs.gSx9xB7HDC', 'VIP會員', '女', '0918865844', '嘉義縣', '1991-10-27', '2號豆', '2024-07-18 15:39:46', '已驗證', 0x313031),
(234, '羅佳穎', 'mail25821@test.com', '$2y$10$gTXX/0HK36AoJ50baHBJ8eFWQpc4e4v5tR./7d6bSdoqQhgj37Lf6', '一般會員', '男', '0918198298', '臺南市', '1993-12-26', '1號豆', '2024-07-18 15:39:46', '未驗證', 0x313031),
(235, '傅鈺婷', 'mail34438@test.com', '$2y$10$DzknRfd4OTOG0Vph5WC46eLiAlDL5.V1iCRzuNMBYZ.6XNtljAkvi', '高級會員', '女', '0918307559', '新竹縣', '1994-01-20', '3號豆', '2024-07-18 15:39:46', '停用', 0x313031),
(236, '謝怡萱', 'mail64173@test.com', '$2y$10$2i.B0sfFBsButPcFet95mOKJZ344EszdpxhpJyNP40SgfnyIjKDSu', '一般會員', '女', '0918751990', '臺南市', '1989-10-14', '1號豆', '2024-07-18 15:39:46', '停用', 0x313031),
(237, '唐雅婷', 'mail99480@test.com', '$2y$10$ZE9VMwOzM5j68pdmIopuY.mY8pfBL.EDvVRWCDwLeZ/KZr3AYuSAi', 'VIP會員', '女', '0918930010', '臺東縣', '1988-09-14', '3號豆', '2024-07-18 15:39:46', '未驗證', 0x313031),
(238, '胡家瑋', 'mail76887@test.com', '$2y$10$uZV9NuZempSjpiUdkpZDuO8uVb9j0LgowGGPYW/BNKQQK.GGkVaV6', '一般會員', '女', '0918428803', '花蓮縣', '1985-09-22', '1號豆', '2024-07-18 15:39:46', '停用', 0x313031),
(239, '趙郁婷', 'mail54333@test.com', '$2y$10$4XWKcDS0lBtL/W9JuDk8o.EK2DkdRJixzfTQuKua7dWi/.WbnOJ6q', '一般會員', '男', '0918910770', '宜蘭縣', '1986-05-18', '3號豆', '2024-07-18 15:39:46', '未驗證', 0x313031),
(240, '劉家豪', 'mail88929@test.com', '$2y$10$u9BfbDzDuC0guXjm4S0K/OLkLipBZFv6WL7ZcE8SZcYuJ7qG8b6Li', '高級會員', '男', '0918294514', '新竹縣', '1990-12-10', '1號豆', '2024-07-18 15:39:46', '停用', 0x313031),
(241, '馮雅婷', 'mail30964@test.com', '$2y$10$x0HRscA39VBjfO0N9bnYEOKsu2bYneV9KBF0raZjDWe2E9Aagk.au', 'VIP會員', '男', '0918503209', '新北市', '1994-01-04', '1號豆', '2024-07-18 15:39:47', '已驗證', 0x313031),
(242, '曹怡萱', 'mail32921@test.com', '$2y$10$L4Lw/EW08cIfofkE1M2r7.I9YF81ENy2M2Gd3opBYQCuI0JGPtn2K', 'VIP會員', '女', '0918303977', '雲林縣', '1999-10-24', '2號豆', '2024-07-18 15:39:47', '已驗證', 0x313031),
(243, '黃冠宇', 'mail68858@test.com', '$2y$10$daalR1PuA90LmTAT.izMO.YxOzumHVX7EeJwNuCejM21p3Lre0bZm', '一般會員', '男', '0918182292', '基隆市', '1988-07-19', '3號豆', '2024-07-18 15:39:47', '停用', 0x313031),
(244, '董佳穎', 'mail16593@test.com', '$2y$10$LNALOCpFWbDvYAhc54nJeecbQMuW00OuIQo2ZHeQh77olNqynv.xi', 'VIP會員', '女', '0918114770', '桃園市', '1995-02-15', '3號豆', '2024-07-18 15:39:47', '未驗證', 0x313031),
(245, '梁郁婷', 'mail57833@test.com', '$2y$10$4yjBgtL9YcJfGH1V5sNJQOWCCEdFzbIINUNk0QKGMuA8ZwRjvowcq', '高級會員', '男', '0918661632', '基隆市', '1996-11-13', '2號豆', '2024-07-18 15:39:48', '停用', 0x313031),
(246, '董宜庭', 'mail70462@test.com', '$2y$10$yK9offAoOAsauQyRI.CkeeTv4P.mvg.WG5XyEsI05aQZfM53UaN8S', '一般會員', '男', '0918497004', '高雄市', '1987-12-24', '3號豆', '2024-07-18 15:39:48', '未驗證', 0x313031),
(247, '唐承翰', 'mail68910@test.com', '$2y$10$fk0EkVh1v/PRAUsojqKIhO4Zr4glbewCkfwqRiASC7t/9T4SPWxkm', 'VIP會員', '女', '0918374388', '臺東縣', '1990-11-14', '4號豆', '2024-07-18 15:39:48', '已驗證', 0x313031),
(248, '宋郁婷', 'mail65139@test.com', '$2y$10$W85.3ipVgWyOtz8HeMsEFuo/aqAiwh5zCFwBIIStFWVpMTho0fu6q', 'VIP會員', '男', '0918464122', '高雄市', '1995-07-09', '3號豆', '2024-07-18 15:39:48', '已驗證', 0x313031),
(249, '徐怡婷', 'mail99897@test.com', '$2y$10$Xrt.7UvLBNoE/mRGObBGne9kkSDGi/GMlMd.MLFRYFhzNyJiv8sbO', '高級會員', '女', '0918909472', '臺東縣', '1999-01-16', '4號豆', '2024-07-18 15:39:48', '未驗證', 0x313031),
(250, '彭宇軒', 'mail90600@test.com', '$2y$10$EhwusbgYhMBwVQaFa4C/5OyT4WGid4n5mECENBQgvevTpnXyutPYW', 'VIP會員', '女', '0918654328', '嘉義縣', '1992-12-01', '2號豆', '2024-07-18 15:39:48', '停用', 0x313031);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`ab_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `address_book`
--
ALTER TABLE `address_book`
  MODIFY `ab_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
