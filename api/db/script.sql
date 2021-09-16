CREATE DATABASE IF NOT EXISTS marod DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE marod;

CREATE TABLE IF NOT EXISTS constelacoes (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  estrelaBig VARCHAR(255),
  PRIMARY KEY (id)
) CHARACTER SET utf8 COLLATE utf8_general_ci;;

INSERT INTO constelacoes VALUE(0, 'Andrômeda', 'Alpheratz');
INSERT INTO constelacoes VALUE(0, 'Boieiro', 'Arcturus');
INSERT INTO constelacoes VALUE(0, 'Capricórnio', 'Algedi (Al Giedi)');
INSERT INTO constelacoes VALUE(0, 'Delfim', 'Sualocin');
INSERT INTO constelacoes VALUE(0, 'Escorpião', 'Antares');
INSERT INTO constelacoes VALUE(0, 'Fênix', 'Ankaa');
INSERT INTO constelacoes VALUE(0, 'Hidra', 'Alphard');
INSERT INTO constelacoes VALUE(0, 'Órion', 'Betelgeuse');