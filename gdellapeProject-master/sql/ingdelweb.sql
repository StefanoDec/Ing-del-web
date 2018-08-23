-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 23, 2018 alle 09:46
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

--
-- Dump dei dati per la tabella `admin`
--

INSERT INTO `admin` (`IDAdmin`, `Nome`, `Cognome`, `CreateDate`, `UpdateDate`, `User`) VALUES
(1, 'Alessandro', 'Mattei', '2018-08-23 07:16:52', '2018-08-23 07:16:52', 2);

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

--
-- Dump dei dati per la tabella `azienda`
--

INSERT INTO `azienda` (`IDAzienda`, `RagioneSociale`, `IndirizzoSedeLegale`, `CFiscalePIva`, `NomeLegaleRappresentante`, `CognomeLegaleRappresentante`, `NomeResponsabileConvenzione`, `CognomeResponsabileConvenzione`, `TelefonoResponsabileConvenzione`, `EmailResponsabileConvenzione`, `PathPDFConvenzione`, `DurataConvenzioni`, `ForoControversia`, `DataConvenzione`, `CreateDate`, `UpdateDate`, `User`) VALUES
(1, 'ValerioSpa', 'via Bel Giovine', '1255434000001', 'Valerio', 'Crescia', 'Mario', 'Rossi', '0863123456', 'mario@gmail.com', NULL, 1825, 'non so', '2018-08-23', '2018-08-23 07:22:38', '2018-08-23 07:22:38', 3);

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

--
-- Dump dei dati per la tabella `offertatirocinio`
--

INSERT INTO `offertatirocinio` (`IDOffertaTirocinio`, `LuogoEffettuazione`, `Titolo`, `DescrizioneBreve`, `Descrizione`, `Orari`, `DurataOre`, `DurataMesi`, `PeriodoInizio`, `PeriodoFine`, `Modalita`, `Obbiettivi`, `Rimborsi`, `Facilitazioni`, `AziendaOspitante`, `CodIdentTirocinio`, `SettoreInserimento`, `TempoAccessoLocaliAziendali`, `NomeTutoreAziendale`, `CognomeTutoreAziendale`, `TelefonoTutoreAziendale`, `EmailTutoreAziendale`, `CreateDate`, `UpdateDate`, `Azienda`, `TutoreUniversitario`) VALUES
(1, 'Univaq via Vetoio', 'unior Marketer Agroalimentare', 'Importante azienda produttrice di vino con Agriturismo.', 'Importante azienda produttrice di vino con Agriturismo. ll tirocinante si occuperà dell\'attività di ricerca di nuovi mercati per lo sviluppo delle vendite tramite canali informatici, parallelamente si occuperà della promozione enogastronomica e ricettività aziendale. La ricerca si intende riferita a persone di ambo i sessi (L.903/77).', '9:45', 150, 3, '2018-09-16', '2018-12-16', 'lavorare sodo.', 'Fare molti soldi.', NULL, 'Riduzione fino al 40% della quota di partecipazione al master.', 'valeriospa', 123, 'Agroalimentare', '', 'Valerio', 'Crescia', '1237894560', 'Valerio@gmail.com', '2018-08-23 07:34:24', '2018-08-23 07:34:24', 1, 1);

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

--
-- Dump dei dati per la tabella `richiestatirocinio`
--

INSERT INTO `richiestatirocinio` (`IDRichiestaTirocinio`, `DurataOre`, `CFU`, `CreateDate`, `UpdateDate`, `OffertaTirocionio`, `Tirocinante`) VALUES
(1, 150, 6, '2018-08-23 07:43:41', '2018-08-23 07:43:41', 1, 1);

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

--
-- Dump dei dati per la tabella `tirocinante`
--

INSERT INTO `tirocinante` (`IDTirocinante`, `Nome`, `Cognome`, `LuogoDiNascita`, `LuogoDiResidenza`, `ProvinciaDiResidenza`, `ProvinciaDiNascita`, `CodiceFiscale`, `Telefono`, `CorsoDiLaurea`, `DiplomaUniversitario`, `Laureato`, `DottoratoDiRicerca`, `ScuolaAltro`, `Handicap`, `CreateDate`, `UpdateDate`, `User`) VALUES
(1, 'Stefano', 'Decina', 'Avezzano', 'via Della Mainetta Coppito', 'AQ', 'AQ', 'bggd8855252beaavf4', '5456387210', 'Informatica', NULL, NULL, NULL, NULL, NULL, '2018-08-23 07:38:21', '2018-08-23 07:38:21', 1);

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

--
-- Dump dei dati per la tabella `tirocinioeffettuato`
--

INSERT INTO `tirocinioeffettuato` (`IDTirocinioEffettuato`, `DataConsegnaModulo`, `DurataOre`, `PeriodoEffettivoIniziale`, `PeriodoEffettivoFinale`, `RisultatoConseguito`, `DescrizioneAttivitaSvolta`, `CreateDate`, `UpdateDate`, `RicTirocinio`) VALUES
(1, '2018-08-23', 150, '2018-09-16', '2018-12-16', 'Ottimo', 'Il candidto ha lavorato molto bene', '2018-08-23 07:42:49', '2018-08-23 07:45:02', 1);

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

--
-- Dump dei dati per la tabella `tutoreuniversitario`
--

INSERT INTO `tutoreuniversitario` (`IDTutoreUni`, `Nome`, `Cognome`, `Telefono`, `Email`, `CreateDate`, `UpdateDate`) VALUES
(1, 'Giovanni', 'Michelangelo', '0863987654', 'giovanni@gmail.com', '2018-08-23 07:23:35', '2018-08-23 07:23:35');

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
(1, 'stefano@gmail.com', '123456789', 2, '2018-08-23 07:14:45', '2018-08-23 07:14:45'),
(2, 'alessandro@gmail.com', '987654321', 0, '2018-08-23 07:14:45', '2018-08-23 07:14:45'),
(3, 'valeriospa@gmail.com', '123987654', 1, '2018-08-23 07:15:22', '2018-08-23 07:17:35');

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
  MODIFY `IDAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `azienda`
--
ALTER TABLE `azienda`
  MODIFY `IDAzienda` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `offertatirocinio`
--
ALTER TABLE `offertatirocinio`
  MODIFY `IDOffertaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `richiestatirocinio`
--
ALTER TABLE `richiestatirocinio`
  MODIFY `IDRichiestaTirocinio` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tirocinante`
--
ALTER TABLE `tirocinante`
  MODIFY `IDTirocinante` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `tirocinioeffettuato`
--
ALTER TABLE `tirocinioeffettuato`
  MODIFY `IDTirocinioEffettuato` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `tutoreuniversitario`
--
ALTER TABLE `tutoreuniversitario`
  MODIFY `IDTutoreUni` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
