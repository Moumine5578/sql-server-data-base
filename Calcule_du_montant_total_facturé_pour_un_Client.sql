/* Calculer le montant total facturé pour un Client */

SELECT clients.nom, SUM(facture.total) AS total_facture FROM clients
JOIN projet ON clients.id = projet.client_id
JOIN devis ON projet.id = devis.projet_id
JOIN facture ON devis.id = facture.devis_id
GROUP BY clients.nom
