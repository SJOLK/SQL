-- 2) Créer des clés étrangères 

MariaDB [compta]> alter table article add constraint FOREIGN KEY (ID_FOU) references fournisseur(ID);

MariaDB [compta]> alter table bon add constraint FOREIGN KEY (ID_FOU) references fournisseur(ID);

MariaDB [compta]> alter table compo add constraint foreign key (ID_ART) references article(ID);

MariaDB [compta]> alter table compo add constraint foreign key (ID_BON) references bon(ID);

-- 3) Insérer les 3 fournisseurs suivants : 

MariaDB [compta]> INSERT INTO fournisseur (NOM) VALUES ('Française d Imports');

MariaDB [compta]> INSERT INTO fournisseur (NOM) VALUES ('FDM SA');

MariaDB [compta]> INSERT INTO fournisseur (NOM) VALUES ('Dubois & Fils');

-- 4) Dans la table des articles, insérez les 10 articles suivants : 

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('A01', 'PerseuseP1', 74.99, 1);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('F01', 'Boulon laiton 4x40mm (sachet de 10)', 2.25, 2);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('F02', 'Boulon laiton 5x40mm (sachet de 10)', 4.45, 2);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('D01', 'Boulon laiton 5x40mm (sachet de 10)', 4.40, 3);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('A02', 'Meleuse 125mm', 37.85, 1);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('D03', 'Boulon acier zingué 4x40mm (sachet de 10)', 1.8, 3);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('A03', 'Perseuse à colonne', 185.25, 1);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('D04', 'coffret mêches à bois', 12.25, 3);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('F03', 'coffret mêches plates', 6.25, 2);

MariaDB [compta]> INSERT INTO article (REF, DESIGNATION, PRIX, ID_FOU) VALUES ('F04', 'Fraises d encastrement', 8.14, 2);

-- 5) Insérez le bon de commande suivant passé auprès de Française d’Imports :

MariaDB [compta]> INSERT INTO bon (NUMERO, DATE_CMDE, DELAI, ID_FOU) VALUES (1, CURDATE(), 3, 1);

MariaDB [compta]> INSERT INTO compo (QTE, ID_ART, ID_BON) VALUES (3, 1, 1);

MariaDB [compta]> INSERT INTO compo (QTE, ID_ART, ID_BON) VALUES (4, 2, 1);

MariaDB [compta]> INSERT INTO compo (QTE, ID_ART, ID_BON) VALUES (1, 3, 1);










