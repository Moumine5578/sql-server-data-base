/*Calculer les factures en retard de paiement*/
SELECT *, DATEDIFF(Day, date_crea, DATEADD(DAY, -30, GETDATE())) as Jour_de_Retard, (
	SELECT SUM(total) as montantFactureRetard
	FROM facture
	WHERE date_paiement IS NULL AND date_crea < DATEADD(DAY, -30, GETDATE())
) as montantTotalRetard
FROM facture
WHERE date_paiement IS NULL AND date_crea < DATEADD(DAY, -30, GETDATE())

