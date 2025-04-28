-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2025 at 09:30 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ki4t1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `biblioteka`
--

CREATE TABLE `biblioteka` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biblioteka`
--

INSERT INTO `biblioteka` (`id`, `user_id`, `game_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 1),
(4, 2, 4),
(5, 3, 7),
(6, 3, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `logo_url`) VALUES
(1, 'Rockstar', NULL),
(2, 'Supergiant Games', NULL),
(3, 'Valve', NULL),
(4, 'Amazon Games Orange County', NULL),
(5, 'Starry Studio', NULL),
(6, 'Facepunch Studios', NULL),
(7, 'Concerned Ape', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gra`
--

CREATE TABLE `gra` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gra`
--

INSERT INTO `gra` (`id`, `title`, `description`, `developer_id`, `publisher_id`) VALUES
(1, 'cs-go', 'For over two decades, Counter-Strike has offered an elite competitive experience, one shaped by millions of players from across the globe. And now the next chapter in the CS story is about to begin. This is Counter-Strike 2.', 3, 1),
(2, 'Dota 2', 'Every day, millions of players worldwide enter battle as one of over a hundred Dota heroes. And no matter if it\'s their 10th hour of play or 1,000th, there\'s always something new to discover. With regular updates that ensure a constant evolution of gameplay, features, and heroes, Dota 2 has taken on a life of its own.', 3, 1),
(3, 'PUBG: BATTLEGROUNDS', 'Play PUBG: BATTLEGROUNDS for free. Land on strategic locations, loot weapons and supplies, and survive to become the last team standing across various, diverse Battlegrounds. Squad up and join the Battlegrounds for the original Battle Royale experience that only PUBG: BATTLEGROUNDS can offer.', 2, 3),
(4, 'Gta V', 'Grand Theft Auto V for PC offers players the option to explore the award-winning world of Los Santos and Blaine County in resolutions of up to 4k and beyond, as well as the chance to experience the game running at 60 frames per second.', 5, 4),
(5, 'Once Human', 'Once Human is a multiplayer open-world survival game set in a strange, post-apocalyptic future. Unite with friends to fight monstrous enemies, uncover secret plots, compete for resources, and build your own territory. Once, you were merely human. Now, you have the power to remake the world.', 7, 2),
(6, 'Hades II', 'Battle beyond the Underworld using dark sorcery to take on the Titan of Time in this bewitching sequel to the award-winning rogue-like dungeon crawler.', 2, 3),
(7, 'WEBFISHING', 'WEBFISHING a multiplayer chatroom-focused fishing game! Relax and fish (on the web!)', 7, 5),
(8, 'New World: Aeternum', 'Experience a thrilling action RPG set on the supernatural island of Aeternum. Forge your destiny on an adventure filled with danger and opportunity.', 6, 6),
(9, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 5, 4),
(10, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `version` text DEFAULT NULL,
  `company_owner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id`, `name`, `version`, `company_owner`) VALUES
(1, 'Windows', '10', 'Microsoft'),
(2, 'Windows', '11', 'Microsoft'),
(3, 'Mac OS', 'X', 'Apple'),
(4, 'Nintendo', 'Switch', 'Nintendo'),
(5, 'Playstation', '4', 'Sony'),
(6, 'Playstation', '3', 'Sony'),
(7, 'Xbox', '360', 'Microsoft'),
(8, 'Xbox', 'One', 'Microsoft');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platforms_games`
--

CREATE TABLE `platforms_games` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `platforms_games`
--

INSERT INTO `platforms_games` (`id`, `game_id`, `platform_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 4, 5),
(14, 5, 1),
(15, 5, 2),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 7, 5),
(20, 7, 2),
(21, 7, 3),
(22, 7, 4),
(23, 8, 1),
(24, 8, 2),
(25, 8, 3),
(26, 8, 4),
(27, 8, 6),
(28, 9, 4),
(29, 9, 1),
(30, 9, 2),
(31, 9, 3),
(32, 9, 5),
(33, 10, 4),
(34, 10, 1),
(35, 10, 2),
(36, 10, 3),
(37, 10, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `logo_url`) VALUES
(1, 'Valve', NULL),
(2, 'Ubisoft', NULL),
(3, 'Tencent', NULL),
(4, 'Krafton', NULL),
(5, 'Supergiant Games', NULL),
(6, 'Facepunch Studios', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag_name`) VALUES
(1, 'Action'),
(2, 'Shooter'),
(3, 'Survival'),
(4, 'Arcade'),
(5, 'MOBA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags_games`
--

CREATE TABLE `tags_games` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags_games`
--

INSERT INTO `tags_games` (`id`, `game_id`, `tag_id`) VALUES
(1, 1, 2),
(2, 2, 5),
(3, 3, 1),
(4, 3, 2),
(5, 4, 1),
(6, 4, 2),
(7, 5, 3),
(8, 6, 4),
(9, 7, 3),
(10, 8, 1),
(11, 8, 3),
(12, 9, 4),
(13, 10, 3),
(14, 10, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `użytkownicy`
--

CREATE TABLE `użytkownicy` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `użytkownicy`
--

INSERT INTO `użytkownicy` (`id`, `email`) VALUES
(1, 'maciej@example.com'),
(2, 'jim@example.com'),
(3, 'cos@example.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gra`
--
ALTER TABLE `gra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `developer_id` (`developer_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indeksy dla tabeli `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `platforms_games`
--
ALTER TABLE `platforms_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `platform_id` (`platform_id`);

--
-- Indeksy dla tabeli `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tags_games`
--
ALTER TABLE `tags_games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gra`
--
ALTER TABLE `gra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `platforms_games`
--
ALTER TABLE `platforms_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags_games`
--
ALTER TABLE `tags_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gra`
--
ALTER TABLE `gra`
  ADD CONSTRAINT `gra_ibfk_1` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  ADD CONSTRAINT `gra_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `platforms_games`
--
ALTER TABLE `platforms_games`
  ADD CONSTRAINT `platforms_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `gra` (`id`),
  ADD CONSTRAINT `platforms_games_ibfk_2` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`);

--
-- Constraints for table `tags_games`
--
ALTER TABLE `tags_games`
  ADD CONSTRAINT `tags_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `gra` (`id`),
  ADD CONSTRAINT `tags_games_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
