/* Afficher le client qui a le plus de factures */

SELECT clients.nom, COUNT(*) AS nb_factures FROM clients
JOIN projet ON clients.id = projet.client_id
JOIN devis ON projet.id = devis.projet_id
JOIN facture ON devis.id = facture.devis_id
GROUP BY clients.nom
HAVING COUNT(*) = (
    SELECT MAX(nb_factures)
    FROM (
        SELECT COUNT(*) AS nb_factures
        FROM facture
        JOIN devis ON facture.devis_id = devis.id
        JOIN projet ON devis.projet_id = projet.id
        JOIN clients ON projet.client_id = clients.id
        GROUP BY clients.nom
    ) AS subquery
);
