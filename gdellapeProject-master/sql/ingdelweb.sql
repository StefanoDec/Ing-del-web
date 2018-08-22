-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 22, 2018 alle 15:47
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
  `User` int(10) UNSIGNED NOT NULL COMMENT 'chiave esterna'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `NomeResponsabileConvenzione` varchar(50) DEFAULT NULL,
  `CognomeResponsabileConvenzione` varchar(50) DEFAULT NULL,
  `TelefonoResponsabileConvenzione` varchar(20) DEFAULT NULL,
  `EmailResponsabileConvenzione` varchar(100) DEFAULT NULL,
  `PathPDFConvenzione` varchar(100) DEFAULT NULL,
  `DurataConvenzioni` int(10) UNSIGNED DEFAULT NULL,
  `ForoControversia` varchar(500) DEFAULT NULL,
  `DataConvenzione` date DEFAULT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `offertatirocinio`
--

CREATE TABLE `offertatirocinio` (
  `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL,
  `LuogoEffettuazione` varchar(100) NOT NULL,
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
  `Rimborsi` text,
  `Facilitazioni` text,
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
  `TutoreUniversitario` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna'
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
  `OffertaTirocionio` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna',
  `Tirocinante` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna'
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
  `ProvinciaDiResidenza` varchar(100) NOT NULL,
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
  `User` int(10) UNSIGNED NOT NULL COMMENT 'chiave esterna'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tirocinioeffettuato`
--

CREATE TABLE `tirocinioeffettuato` (
  `IDTirocinioEffettuato` int(11) UNSIGNED NOT NULL,
  `DataConsegnaModulo` date NOT NULL,
  `DurataOre` int(11) UNSIGNED NOT NULL,
  `PeriodoEffettivoIniziale` date NOT NULL,
  `PeriodoEffettivoFinale` date NOT NULL,
  `RisultatoConseguito` text NOT NULL,
  `DescrizioneAttivitaSvolta` text,
  `CreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RicTirocinio` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna'
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
  `UpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDAdmin`),
  ADD KEY `User` (`User`);

--
-- Indici per le tabelle `azienda`
--
ALTER TABLE `azienda`
  ADD PRIMARY KEY (`IDAzienda`),
  ADD KEY `User` (`User`);

--
-- Indici per le tabelle `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  ADD PRIMARY KEY (`IDOffertaTirocinio`),
  ADD KEY `Azienda` (`Azienda`),
  ADD KEY `TutoreUniversitario` (`TutoreUniversitario`);

--
-- Indici per le tabelle `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  ADD PRIMARY KEY (`IDRichiestaTirocinio`),
  ADD KEY `Tirocinante` (`Tirocinante`),
  ADD KEY `OffertaTirocionio` (`OffertaTirocionio`);

--
-- Indici per le tabelle `tirocinante`
--
ALTER TABLE `tirocinante`
  ADD PRIMARY KEY (`IDTirocinante`),
  ADD KEY `User` (`User`);

--
-- Indici per le tabelle `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  ADD PRIMARY KEY (`IDTirocinioEffettuato`),
  ADD KEY `RicTirocinio` (`RicTirocinio`);

--
-- Indici per le tabelle `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  ADD PRIMARY KEY (`IDTutoreUni`);

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
  MODIFY `IDAdmin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `IDAzienda` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  MODIFY `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  MODIFY `IDRichiestaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tirocinante`
--
ALTER TABLE `tirocinante`
  MODIFY `IDTirocinante` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  MODIFY `IDTirocinioEffettuato` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  MODIFY `IDTutoreUni` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `admin-user` FOREIGN KEY (`User`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `azienda`
--
ALTER TABLE `azienda`
  ADD CONSTRAINT `azienda-user` FOREIGN KEY (`User`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  ADD CONSTRAINT `offertatirocinio-azienda` FOREIGN KEY (`Azienda`) REFERENCES `azienda` (`IDAzienda`),
  ADD CONSTRAINT `offertatirocinio-tutoreuniversitario` FOREIGN KEY (`TutoreUniversitario`) REFERENCES `tutoreuniversitario` (`IDTutoreUni`);

--
-- Limiti per la tabella `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  ADD CONSTRAINT `richiestatirocinio-offertatirocinio` FOREIGN KEY (`OffertaTirocionio`) REFERENCES `offertatirocinio` (`IDOffertaTirocinio`),
  ADD CONSTRAINT `richiestatirocinio-tirocinante` FOREIGN KEY (`Tirocinante`) REFERENCES `tirocinante` (`IDTirocinante`);

--
-- Limiti per la tabella `tirocinante`
--
ALTER TABLE `tirocinante`
  ADD CONSTRAINT `tirocinante-user` FOREIGN KEY (`User`) REFERENCES `user` (`IDuser`);

--
-- Limiti per la tabella `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  ADD CONSTRAINT `tirocinioeffettuato-rictirocinio` FOREIGN KEY (`RicTirocinio`) REFERENCES `richiestatirocinio` (`IDRichiestaTirocinio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
