-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-02-28 03:51:36
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `message`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_message`
--

CREATE TABLE IF NOT EXISTS `tp_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT '',
  `content` text NOT NULL,
  `filename` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `tp_message`
--

INSERT INTO `tp_message` (`id`, `title`, `content`, `filename`, `time`, `uid`) VALUES
(15, '注意力', 'W&amp;amp是韩国electro-pop乐团，由狎鸥亭系的W乐团和女主唱Whale组成。W乐团曾为《我叫金三顺》、《Que Sera Sera》等多部剧集的原声带任音乐总监，而Whale则是在试音会中被发掘。', '54eebd40ef1cb.chw', 1424932161, 2),
(14, '66', '66', '54eeb58878495.exe', 1424930184, 2),
(13, '6', '6', '54eeb54bbbbe4.php', 1424930123, 1),
(12, '1', '1', '54eeb09556cc9.jpg', 1424928917, 1),
(16, 'zyl', 'W乐团曾为《我叫金三顺》、《Que Sera Sera》等多部剧集的原声带任音乐总监，而Whale则是在试音会中被发掘。', '54eebea66119d.chm', 1424932518, 2),
(17, 'jingwahle', 'W&amp;amp是韩国electro-pop乐团，由狎鸥亭系的W乐团和女主唱Whale组成。', '54eec472a6a69.chm', 1424934002, 2),
(18, 'liyishi', '《Que Sera Sera》等多部剧集的原声带任音乐总监', '54eec4954b0fe.pdf', 1424934037, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

CREATE TABLE IF NOT EXISTS `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `sex` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `sex`) VALUES
(1, 'jing', '123', 1),
(2, 'whale', '123', 1),
(5, 'jingwhale', '123', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
