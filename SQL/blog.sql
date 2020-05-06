-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 04 2020 г., 18:11
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `Id` int(11) NOT NULL,
  `IdAutor` int(11) DEFAULT NULL,
  `IdRecord` int(11) DEFAULT NULL,
  `Date` varchar(25) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Text` longtext DEFAULT NULL,
  `Like` int(11) DEFAULT 0,
  `Dislike` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `record`
--

CREATE TABLE `record` (
  `Id` int(11) NOT NULL,
  `Id_autor` int(11) DEFAULT NULL,
  `Date` varchar(25) DEFAULT NULL,
  `Status` varchar(25) DEFAULT 'not approved',
  `Text` longtext DEFAULT NULL,
  `Like` int(11) DEFAULT 0,
  `DisLike` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `record`
--

INSERT INTO `record` (`Id`, `Id_autor`, `Date`, `Status`, `Text`, `Like`, `DisLike`) VALUES
(1, 1, '2020-05-02', 'not approved', 'За «Повістю временних літ», Київ заснував полянський князь Кий зі своїми братами Щеком і Хоривом та сестрою Либіддю. Згідно з археологічними даними та писемними джерелами, початок безперервного розвитку Києва датується 2-ю половиною V ст. — 1-ю половиною VI ст.; осередком розширення Києва була гора Замкова[6]. Був столицею Русі, Київського князівства, Великого князівства Руського, Української Народної Республіки, Української Держави та Української Радянської Соціалістичної Республіки. Також був адміністративним центром однойменного литовсько-польського воєводства, козацького полку, російської губернії, радянської округи, німецької генеральної округи та радянської області.\r\n\r\nОдин із найстаріших історичних центрів Східної Європи та християнства — Софійський собор — та Києво-Печерська лавра внесено до списку Світової спадщини ЮНЕСКО.', 0, 0),
(2, 1, '2020-05-02', 'not approved', 'За «Повістю временних літ», Київ заснував полянський князь Кий зі своїми братами Щеком і Хоривом та сестрою Либіддю. Згідно з археологічними даними та писемними джерелами, початок безперервного розвитку Києва датується 2-ю половиною V ст. — 1-ю половиною VI ст.; осередком розширення Києва була гора Замкова[6]. Був столицею Русі, Київського князівства, Великого князівства Руського, Української Народної Республіки, Української Держави та Української Радянської Соціалістичної Республіки. Також був адміністративним центром однойменного литовсько-польського воєводства, козацького полку, російської губернії, радянської округи, німецької генеральної округи та радянської області.\r\n\r\nОдин із найстаріших історичних центрів Східної Європи та християнства — Софійський собор — та Києво-Печерська лавра внесено до списку Світової спадщини ЮНЕСКО.', 0, 0),
(3, 1, '2020-05-02', 'not approved', 'Герб Слобідсько-Української губернії, що служив також міським гербом Харкова, був розроблений 1775 року геральдмейстером князем Михайлом Щербатовим і затверджений 21 вересня 1781 року Катериною ІІ як герб Харківського намісництва (з 1796 — знову Слобідсько-Українська губернія, з 1835 — Харківська губернія).\r\n\r\nВін являє собою чотирикутний геральдичний щит, загострений знизу, подібна форма також називається французькою. На зеленому тлі щита зображені перехрещені ріг достатку і золотий кадуцей зі срібними крилами (символ бога торгівлі Меркурія), оповитий зміями срібного кольору. 14 вересня 1995 сесією Харківської міської ради народних депутатів був втретє за останні два сторіччя прийнятий як найтрадиційніший в історії міста.\r\n\r\nПрапор міста являє собою прямокутне полотнище (відношення ширини до довжини 2:3 світло-зеленого кольору із зображенням в його центральній частині герба міста. В царську та радянську епохи міста не мали власних прапорів. Проте з 1651 р. (чи 1659 р.) по 1765 р. Харків був полковим центром Харківського слобідського козацького полку, який мав власне знамено.\r\n\r\nЗа часів СРСР Харків отримав орден Леніна та орден Жовтневої Революції, місто нагороджене Премією Європи.', 0, 0),
(4, 23, '2020-05-04', 'not approved', 'Awqrqwrqrqwrqrq', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `urlAvatar` varchar(255) DEFAULT 'noFoto',
  `Role` varchar(50) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`Id`, `Login`, `Email`, `Password`, `urlAvatar`, `Role`, `Status`) VALUES
(23, 'Yrii', 'yuravolos301@gmail.com', 'fb96d8657f78484c83e1a8f26960e8adef311929', 'noFoto.png', 'autor', 1),
(24, 'Yrii11', 'yuravolos1@gmail.com', 'fb96d8657f78484c83e1a8f26960e8adef311929', 'noFoto.png', 'follower', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `record`
--
ALTER TABLE `record`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
