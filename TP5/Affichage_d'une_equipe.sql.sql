USE team_builder
GO

/* Affichage d'une équipe */

SELECT equipe.nom ,personne.prenom, personne.nom 
FROM equipe
JOIN equipe_has_personne ON equipe_has_personne.equipe_id = equipe.id
JOIN personne ON personne.id = equipe_has_personne.personne_id
WHERE equipe.nom = 'Team B'

