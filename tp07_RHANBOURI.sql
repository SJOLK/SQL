-- Pour pouvoir réaliser ce TP vous aurez besoin de désactiver le mode « safe update » qui par défaut bloque les suppressions multiples. 
SET SQL_SAFE_UPDATES = 0; 
-- a. Supprimer dans la table compo toutes les lignes concernant les bons de commande d’avril 2019 
DELETE FROM compo WHERE ID_BON IN (
    SELECT ID FROM bon WHERE DATE_CMDE BETWEEN '2019-04-01' AND '2019-04-30'
);

-- b. Supprimer dans la table bon tous les bons de commande d’avril 2019.
DELETE FROM bon WHERE DATE_CMDE BETWEEN '2019-04-01' AND '2019-04-30';
