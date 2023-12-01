USE team_builder
GO

INSERT INTO personne (prenom,nom)
VALUES 
('Brad','Pitt'),
('Bruce','Willis'),
('Nicolas','Cage'),
('Angelie','Jolie'),
('Tom','Cruise'),
('Tom','Hanks'),
('Bob','Dylan'),
('Johnny','Cash'),
('Jimmy','Hendrix');

INSERT INTO equipe (nom,projet,personne_id) VALUES
('Team A','Projet site Mairie',1),
('Team B','Projet CRM',4),
('Team C','Projet ERP',7);

INSERT INTO equipe_has_personne (equipe_id,personne_id)
VALUES
(1,2),
(1,3),
(2,5),
(2,6),
(3,8),
(3,9);