/* Calculer le CA */

SELECT SUM(total) AS total_facture
FROM facture

/* Calculer le montant des factures en attente de paiement */

SELECT total AS Montant_facture_en_attente FROM facture
WHERE date_paiement IS NULL