
MariaDB [(none)]> create database compta character set 'utf8' collate 'utf8_general_ci';

MariaDB [(none)]> use compta;


MariaDB [compta]> create table article(
    -> ID int(6) AUTO_INCREMENT PRIMARY KEY,
    -> REF VARCHAR(30) NOT NULL,
    -> DESIGNATION VARCHAR(30),
    -> RRIX Decimal(6,2),
    -> ID_FOU int(6)
    -> );

MariaDB [compta]> create table fournisseur(
    -> ID int(6) AUTO_INCREMENT PRIMARY KEY,
    -> NOM VARCHAR(30) NOT NULL
    -> );

MariaDB [compta]> create table bon(
    -> ID int(6) AUTO_INCREMENT PRIMARY KEY,
    -> NUMERO int,
    -> DATE_CMDE Date,
    -> DELAI int,
    -> ID_FOU int(6)
    -> );

MariaDB [compta]> create table compo(
    -> ID int(6) AUTO_INCREMENT PRIMARY KEY,
    -> QTE int,
    -> ID_ART int(6),
    -> ID_BON int(6)
    -> );
