-- 2) Pour pouvoir réaliser ce TP vous aurez besoin de désactiver le mode « safe update » qui par défaut bloque les modifications de masse.
SET SQL_SAFE_UPDATES = 0;
-- a. Mettez en majuscules les désignations de tous les articles dont le prix est strictement supérieur à 10€ 
UPDATE article SET DESIGNATION = UPPER(DESIGNATION) WHERE PRIX > 10;
-- b. Mettez en minuscules la désignation de l’article dont l’identifiant est 2
UPDATE article SET DESIGNATION = LOWER(DESIGNATION) WHERE ID = 2;
-- c. Augmentez les prix de 10% pour tous les articles du fournisseur FDM SA
UPDATE article SET PRIX = PRIX * 1.10 WHERE ID_FOU = (SELECT ID FROM fournisseur WHERE NOM = 'FDM SA');
