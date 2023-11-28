 /*Afficher les factures à partir d'un client_id */

SELECT clients.nom, projet.client_id, facture.* FROM facture
JOIN devis ON facture.devis_id = devis.id
JOIN projet ON devis.projet_id = projet.id
JOIN clients ON projet.client_id = clients.id;

