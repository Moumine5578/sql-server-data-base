USE tp_facture;
go

DROP TABLE facture;
DROP TABLE devis;
DROP TABLE projet;
DROP TABLE clients;
GO

CREATE TABLE [clients] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL
)
GO

CREATE TABLE [projet] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [client_id] int NOT NULL,
  [nom] varchar(255)
)
GO

CREATE TABLE [devis] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [version] int NOT NULL,
  [reference] varchar(10) NOT NULL,
  [prix] float NOT NULL,
  [projet_id] int NOT NULL
)
GO

CREATE TABLE [facture] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [reference] varchar(10) NOT NULL,
  [info] varchar(255) NOT NULL,
  [total] float NOT NULL,
  [date_crea] date NOT NULL,
  [date_paiement] date,
  [devis_id] int NOT NULL
)
GO

ALTER TABLE [projet] ADD FOREIGN KEY ([client_id]) REFERENCES [clients] ([id])
GO

ALTER TABLE [devis] ADD FOREIGN KEY ([projet_id]) REFERENCES [projet] ([id])
GO

ALTER TABLE [facture] ADD FOREIGN KEY ([devis_id]) REFERENCES [devis] ([id])
GO



INSERT INTO clients (nom) VALUES 
	('Mairie de Rennes'),
	('Neo Soft'),
	('Sopra'),
	('Accenture'),
	('Amazon');
	
	INSERT INTO projet (nom, client_id) VALUES
	('Creation de site internet', 1),
	('Creationde site internet', 1),
	('Logiciel CRM', 2),
	('Logiciel de devis', 3),
	('Site internet e-commerce', 4),
	('Logiciel ERP', 2),
	('Logicielgestion de stock',4);
	
	INSERT INTO devis (reference,version, prix, projet_id) VALUES
	('DEV2100A',1, 3000, 1),
	('DEV2100B',2, 5000, 2),
	('DEV2100C',1, 5000, 3),
	('DEV2100D',1, 3000, 4),
	('DEV2100E',1, 5000, 5),
	('DEV2100F',1, 2000, 6),
	('DEV2100G',1, 1000, 7);
	
	INSERT INTO facture (reference, info, total, devis_id, date_crea,date_paiement) VALUES
	('FA001', 'site internet partie 1', 1500, 1,'2023-09-01', '2023-10-01'),
	('FA002', 'site internet partie 2', 1500, 1,'2023-09-20', null),
	('FA003', 'logiciel CRM', 5000, 3,'2023-08-01', null),
	('FA004', 'logiciel devis', 3000, 4,'2023-03-03', '2024-04-03'),
	('FA005', 'site ecommerce', 5000, 5,'2023-03-04', null),
	('FA006', 'logiciel ERP', 2000, 6,'2023-05-04', null);