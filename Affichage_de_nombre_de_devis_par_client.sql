/* Afficher le nombre de devis par client */
SELECT clients.nom, COUNT(*) AS nombre_de_devis FROM clients
JOIN projet ON clients.id = projet.client_id
JOIN devis ON projet.id = devis.projet_id
GROUP BY clients.nom