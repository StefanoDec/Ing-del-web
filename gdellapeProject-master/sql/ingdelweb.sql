-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 07, 2018 alle 12:03
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
-- Struttura della tabella `azienda`
--

CREATE TABLE `azienda` (
  `IDAzienda` int(11) UNSIGNED NOT NULL,
  `RagioneSociale` text NOT NULL,
  `IndirizzoSedeLegale` text NOT NULL,
  `CFiscalePIva` text NOT NULL,
  `NomeLegaleRappresentante` text NOT NULL,
  `CognomeLegaleRappresentante` text NOT NULL,
  `NomeResponsabileConvenzione` text NOT NULL,
  `CognomeResponsabileConvenzione` text NOT NULL,
  `TelefonoResponsabileConvenzione` text NOT NULL,
  `EmailResponsabileConvenzione` text NOT NULL,
  `PathPDFConvenzione` text,
  `IDUser` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `offertatirocinio`
--

CREATE TABLE `offertatirocinio` (
  `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL,
  `Titolo` text NOT NULL,
  `DescrizioneBreve` text NOT NULL,
  `Descrizione` text NOT NULL,
  `Orari` text NOT NULL,
  `DurataOre` int(10) UNSIGNED NOT NULL,
  `DurataMesi` int(10) UNSIGNED NOT NULL,
  `PeriodoInizio` date NOT NULL,
  `PeriodoFine` date NOT NULL,
  `Modalita` text NOT NULL,
  `Obbiettivi` text NOT NULL,
  `Rimborsi` text NOT NULL,
  `Facilitazioni` text NOT NULL,
  `AziendaOspitante` text NOT NULL,
  `CodIdentTirocinio` int(10) UNSIGNED NOT NULL COMMENT 'Codice supposto interno universitario',
  `SettoreInserimento` text NOT NULL,
  `TempoAccessoLocaliAziendali` text NOT NULL,
  `NomeTutoreAziendale` text NOT NULL,
  `CognomeTutoreAziendale` text NOT NULL,
  `TelefonoTutoreAziendale` text NOT NULL,
  `EmailTutoreAziendale` text NOT NULL,
  `IDRicTirocinio` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `richiestatirocinio`
--

CREATE TABLE `richiestatirocinio` (
  `IDRichiestaTirocinio` int(11) UNSIGNED NOT NULL,
  `DurataOre` int(11) NOT NULL,
  `CFU` int(11) NOT NULL,
  `IDTirEffettuato` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna Tirocinio effettuato'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tirocinante`
--

CREATE TABLE `tirocinante` (
  `IDTirocinante` int(11) UNSIGNED NOT NULL,
  `Nome` text NOT NULL,
  `Cognome` text NOT NULL,
  `LuogoDiNascita` text NOT NULL,
  `LuogoDiResidenza` text NOT NULL,
  `ProvinciaDiResidenza` text NOT NULL,
  `ProvinciaDiNascita` text NOT NULL,
  `CodiceFiscale` text NOT NULL,
  `Telefono` text NOT NULL,
  `CorsoDiLaurea` text DEFAULT NULL,
  `DiplomaUniversitario` text DEFAULT NULL,
  `Laureato` text DEFAULT NULL,
  `DottoratoDiRicerca` text DEFAULT NULL,
  `ScuolaAltro` text DEFAULT NULL,
  `Handicap` 	tinyint(1) DEFAULT NULL,
  `IDUser` int(10) UNSIGNED NOT NULL COMMENT 'chiave esterna user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `IDRicTirocinio` int(11) UNSIGNED NOT NULL COMMENT 'chiave esterna Richiesta Tirocinio'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tutoreuniversitario`
--

CREATE TABLE `tutoreuniversitario` (
  `IDTutoreUni` int(11) UNSIGNED NOT NULL,
  `Nome` text NOT NULL,
  `Cognome` text NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text NOT NULL,
  `IDOffTirocinio` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `IDuser` int(10) UNSIGNED NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `TipologiaAccount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

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
  ADD KEY `IDRicTirocinio` (`IDRicTirocinio`);

--
-- Indici per le tabelle `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  ADD PRIMARY KEY (`IDRichiestaTirocinio`),
  ADD KEY `IDTirocinioEffettuato` (`IDTirEffettuato`);

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
  MODIFY `IDTutoreUni` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `azienda`
--
ALTER TABLE `azienda`
  ADD CONSTRAINT `User` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDuser`);

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
