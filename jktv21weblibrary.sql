-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 04 2023 г., 16:27
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jktv21weblibrary`
--

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `ID` bigint(20) NOT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`ID`, `LASTNAME`, `NAME`) VALUES
(1, 'Pare', 'Anthony'),
(2, 'Box', 'John'),
(3, 'Poolise', 'Fred'),
(4, 'Louis', 'Andrew');

-- --------------------------------------------------------

--
-- Структура таблицы `author_book`
--

CREATE TABLE `author_book` (
  `Author_ID` bigint(20) NOT NULL,
  `books_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `author_book`
--

INSERT INTO `author_book` (`Author_ID`, `books_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`ID`, `QUANTITY`, `TITLE`) VALUES
(1, 0, 'The Dark'),
(2, 0, 'Community'),
(3, 0, 'The paradise on the Earth'),
(4, 0, 'Tomorrow will never come');

-- --------------------------------------------------------

--
-- Структура таблицы `book_author`
--

CREATE TABLE `book_author` (
  `Book_ID` bigint(20) NOT NULL,
  `authors_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `book_author`
--

INSERT INTO `book_author` (`Book_ID`, `authors_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `ID` bigint(20) NOT NULL,
  `BOOKSQTYTAKEN` int(11) DEFAULT NULL,
  `RETURNBOOK` datetime DEFAULT NULL,
  `TAKEONBOOK` datetime DEFAULT NULL,
  `BOOK_ID` bigint(20) DEFAULT NULL,
  `READER_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`ID`, `BOOKSQTYTAKEN`, `RETURNBOOK`, `TAKEONBOOK`, `BOOK_ID`, `READER_ID`) VALUES
(1, 0, '2023-02-04 16:28:23', '2023-02-04 13:41:18', 1, 1),
(2, 0, '2023-02-04 16:55:49', '2023-02-04 14:02:51', 2, 2),
(3, 0, NULL, '2023-02-04 16:47:26', 4, 4),
(4, 0, NULL, '2023-02-04 16:55:14', 3, 3),
(5, 0, '2023-02-04 17:22:39', '2023-02-04 16:55:22', 2, 2),
(6, 0, NULL, '2023-02-04 17:22:22', 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `reader`
--

CREATE TABLE `reader` (
  `ID` bigint(20) NOT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reader`
--

INSERT INTO `reader` (`ID`, `LASTNAME`, `NAME`, `PHONE`) VALUES
(1, 'Bold', 'Bob', NULL),
(2, 'Gray', 'Sally', NULL),
(3, 'Pure', 'Sander', '456'),
(4, 'McCallister', 'Bobby', '89712138');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`Author_ID`,`books_ID`),
  ADD KEY `FK_AUTHOR_BOOK_books_ID` (`books_ID`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`Book_ID`,`authors_ID`),
  ADD KEY `FK_BOOK_AUTHOR_authors_ID` (`authors_ID`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_HISTORY_BOOK_ID` (`BOOK_ID`),
  ADD KEY `FK_HISTORY_READER_ID` (`READER_ID`);

--
-- Индексы таблицы `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `reader`
--
ALTER TABLE `reader`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `FK_AUTHOR_BOOK_Author_ID` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`ID`),
  ADD CONSTRAINT `FK_AUTHOR_BOOK_books_ID` FOREIGN KEY (`books_ID`) REFERENCES `book` (`ID`);

--
-- Ограничения внешнего ключа таблицы `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `FK_BOOK_AUTHOR_Book_ID` FOREIGN KEY (`Book_ID`) REFERENCES `book` (`ID`),
  ADD CONSTRAINT `FK_BOOK_AUTHOR_authors_ID` FOREIGN KEY (`authors_ID`) REFERENCES `author` (`ID`);

--
-- Ограничения внешнего ключа таблицы `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_HISTORY_BOOK_ID` FOREIGN KEY (`BOOK_ID`) REFERENCES `book` (`ID`),
  ADD CONSTRAINT `FK_HISTORY_READER_ID` FOREIGN KEY (`READER_ID`) REFERENCES `reader` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
