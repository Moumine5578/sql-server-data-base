use team_builder
go

CREATE TABLE [personne] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(225) NOT NULL,
  [prenom] varchar(225) NOT NULL
)
GO

CREATE TABLE [equipe] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(225) NOT NULL,
  [projet] varchar(225) NOT NULL,
  [personne_id] int
)
GO

CREATE TABLE [equipe_has_personne] (
  [personne_id] int,
  [equipe_id] int,
  PRIMARY KEY ([personne_id], [equipe_id])
)
GO

ALTER TABLE [equipe] ADD FOREIGN KEY ([personne_id]) REFERENCES [personne] ([id])
GO

ALTER TABLE [equipe_has_personne] ADD FOREIGN KEY ([personne_id]) REFERENCES [personne] ([id])
GO

ALTER TABLE [equipe_has_personne] ADD FOREIGN KEY ([equipe_id]) REFERENCES [equipe] ([id])
GO
