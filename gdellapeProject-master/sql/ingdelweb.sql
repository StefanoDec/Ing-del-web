-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 16, 2018 alle 18:59
-- Versione del server: 10.1.29-MariaDB
-- Versione PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ingdelweb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `admin`
--

CREATE TABLE `admin` (
  `IDAdmin` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDUser` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`IDAdmin`, `Nome`, `Cognome`, `CreateDate`, `UpdateDate`, `IDUser`) VALUES
(1, 'marior', 'rosii', '2018-08-16 16:37:05', '2018-08-16 16:37:42', 1),
(2, 'mario3', 'ddddd', '2018-08-16 16:39:27', '2018-08-16 16:39:27', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `azienda`
--

CREATE TABLE `azienda` (
  `IDAzienda` int(11) UNSIGNED NOT NULL,
  `RagioneSociale` varchar(100) NOT NULL,
  `IndirizzoSedeLegale` varchar(100) NOT NULL,
  `CFiscalePIva` varchar(50) NOT NULL,
  `NomeLegaleRappresentante` varchar(50) NOT NULL,
  `CognomeLegaleRappresentante` varchar(100) NOT NULL,
  `NomeResponsabileConvenzione` varchar(50) NOT NULL,
  `CognomeResponsabileConvenzione` varchar(50) NOT NULL,
  `TelefonoResponsabileConvenzione` varchar(20) NOT NULL,
  `EmailResponsabileConvenzione` varchar(50) NOT NULL,
  `PathPDFConvenzione` varchar(100) DEFAULT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDUser` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `offertatirocinio`
--

CREATE TABLE `offertatirocinio` (
  `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL,
  `Titolo` varchar(100) NOT NULL,
  `DescrizioneBreve` text NOT NULL,
  `Descrizione` text NOT NULL,
  `Orari` varchar(50) NOT NULL,
  `DurataOre` int(10) UNSIGNED NOT NULL,
  `DurataMesi` int(10) UNSIGNED NOT NULL,
  `PeriodoInizio` date NOT NULL,
  `PeriodoFine` date NOT NULL,
  `Modalita` text NOT NULL,
  `Obbiettivi` text NOT NULL,
  `Rimborsi` text NOT NULL,
  `Facilitazioni` text NOT NULL,
  `AziendaOspitante` varchar(100) NOT NULL,
  `CodIdentTirocinio` int(10) UNSIGNED NOT NULL COMMENT 'Codice supposto interno universitario',
  `SettoreInserimento` text NOT NULL,
  `TempoAccessoLocaliAziendali` text NOT NULL,
  `NomeTutoreAziendale` varchar(100) NOT NULL,
  `CognomeTutoreAziendale` varchar(100) NOT NULL,
  `TelefonoTutoreAziendale` varchar(100) NOT NULL,
  `EmailTutoreAziendale` varchar(100) NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Azienda` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna',
  `TutoreUniversitario` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `richiestatirocinio`
--

CREATE TABLE `richiestatirocinio` (
  `IDRichiestaTirocinio` int(11) UNSIGNED NOT NULL,
  `DurataOre` int(11) NOT NULL,
  `CFU` int(11) NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDTirEffettuato` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna Tirocinio effettuato',
  `OffertaTirocionio` int(11) UNSIGNED NOT NULL,
  `Tirocinante` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tirocinante`
--

CREATE TABLE `tirocinante` (
  `IDTirocinante` int(11) UNSIGNED NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(100) NOT NULL,
  `LuogoDiNascita` text NOT NULL,
  `LuogoDiResidenza` text NOT NULL,
  `ProvinciaDiResidenza` text NOT NULL,
  `ProvinciaDiNascita` varchar(50) NOT NULL,
  `CodiceFiscale` varchar(100) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `CorsoDiLaurea` text,
  `DiplomaUniversitario` text,
  `Laureato` text,
  `DottoratoDiRicerca` text,
  `ScuolaAltro` text,
  `Handicap` tinyint(1) DEFAULT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDUser` int(10) UNSIGNED NOT NULL COMMENT 'chiave esterna user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tirocinante`
--

INSERT INTO `tirocinante` (`IDTirocinante`, `Nome`, `Cognome`, `LuogoDiNascita`, `LuogoDiResidenza`, `ProvinciaDiResidenza`, `ProvinciaDiNascita`, `CodiceFiscale`, `Telefono`, `CorsoDiLaurea`, `DiplomaUniversitario`, `Laureato`, `DottoratoDiRicerca`, `ScuolaAltro`, `Handicap`, `CreateDate`, `UpdateDate`, `IDUser`) VALUES
(1, 'stefano', 'decina', 'avezzano', 'Aquila', 'AQ', 'AQ', 'asdfghjkl456asdfgh', '521929292927', 'informatica', NULL, NULL, NULL, NULL, NULL, '2018-08-16 16:47:18', '2018-08-16 16:47:18', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `tirocinioeffettuato`
--

CREATE TABLE `tirocinioeffettuato` (
  `IDTirocinioEffettuato` int(11) UNSIGNED NOT NULL,
  `LuogoSvolgimento` text NOT NULL,
  `DataConsegnaModulo` date NOT NULL,
  `DurataOre` int(11) UNSIGNED NOT NULL,
  `PeriodoEffettivoIniziale` date NOT NULL,
  `PeriodoEffettivoFinale` date NOT NULL,
  `RisultatoConseguito` text NOT NULL,
  `DescrizioneAttivitaSvolta` text NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDRicTirocinio` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna Richiesta Tirocinio'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tutoreuniversitario`
--

CREATE TABLE `tutoreuniversitario` (
  `IDTutoreUni` int(11) UNSIGNED NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IDOffTirocinio` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `IDuser` int(10) UNSIGNED NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `TipologiaAccount` int(10) UNSIGNED NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`IDuser`, `Email`, `Password`, `TipologiaAccount`, `CreateDate`, `UpdateDate`) VALUES
(1, 'asd.gmail.com', 'asd123', 2, '2018-08-16 16:49:05', '2018-08-16 16:49:05');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDAdmin`),
  ADD KEY `IDUser` (`IDUser`);

--
-- Indici per le tabelle `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`IDAzienda`),
  ADD KEY `IDUser` (`IDUser`);

--
-- Indici per le tabelle `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  ADD PRIMARY KEY (`IDOffertaTirocinio`),
  ADD KEY `Azienda` (`Azienda`) USING BTREE,
  ADD KEY `TutoreUniversitario` (`TutoreUniversitario`);

--
-- Indici per le tabelle `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  ADD PRIMARY KEY (`IDRichiestaTirocinio`),
  ADD KEY `IDTirocinioEffettuato` (`IDTirEffettuato`),
  ADD KEY `OffertaTirocinio` (`OffertaTirocionio`),
  ADD KEY `Tirocinante` (`Tirocinante`);

--
-- Indici per le tabelle `tirocinante`
--
ALTER TABLE `tirocinante`
  ADD PRIMARY KEY (`IDTirocinante`),
  ADD KEY `IDUser` (`IDUser`);

--
-- Indici per le tabelle `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  ADD PRIMARY KEY (`IDTirocinioEffettuato`),
  ADD UNIQUE KEY `IDRicTirocinio` (`IDRicTirocinio`);

--
-- Indici per le tabelle `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  ADD PRIMARY KEY (`IDTutoreUni`),
  ADD KEY `IDOffTirocinio` (`IDOffTirocinio`) USING BTREE;

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDuser`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `admin`
--
ALTER TABLE `admin`
  MODIFY `IDAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `IDAzienda` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  MODIFY `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  MODIFY `IDRichiestaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tirocinante`
--
ALTER TABLE `tirocinante`
  MODIFY `IDTirocinante` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  MODIFY `IDTirocinioEffettuato` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  MODIFY `IDTutoreUni` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `IDuser1` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `azienda`
--
ALTER TABLE `azienda`
  ADD CONSTRAINT `User` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  ADD CONSTRAINT `TutoreUniversitario` FOREIGN KEY (`TutoreUniversitario`) REFERENCES `tutoreuniversitario` (`IDTutoreUni`);

--
-- Limiti per la tabella `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  ADD CONSTRAINT `OffertaTirocinio` FOREIGN KEY (`OffertaTirocionio`) REFERENCES `offertatirocinio` (`IDOffertaTirocinio`),
  ADD CONSTRAINT `Tirocinante` FOREIGN KEY (`Tirocinante`) REFERENCES `tirocinante` (`IDTirocinante`);

--
-- Limiti per la tabella `tirocinante`
--
ALTER TABLE `tirocinante`
  ADD CONSTRAINT `IDuser` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  ADD CONSTRAINT `IDRichiestaTirocinio` FOREIGN KEY (`IDRicTirocinio`) REFERENCES `richiestatirocinio` (`IDRichiestaTirocinio`);

--
-- Limiti per la tabella `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  ADD CONSTRAINT `IDOffertaTirocinio` FOREIGN KEY (`IDOffTirocinio`) REFERENCES `offertatirocinio` (`IDOffertaTirocinio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
