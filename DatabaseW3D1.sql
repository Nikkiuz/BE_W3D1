CREATE TABLE Clienti (
	NumeroCliente SERIAL PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Cognome VARCHAR(50) NOT NULL,
	AnnoDiNascita DATE NOT NULL,
	RegioneResidenza VARCHAR(100) NOT NULL
);

CREATE TABLE Prodotti (
	IdProdotto SERIAL PRIMARY KEY,
	Descrizione VARCHAR(150) NOT NULL,
	InProduzione BOOLEAN NOT NULL, 
	InCommercio BOOLEAN NOT NULL,
	DataAttivazione DATE DEFAULT CURRENT_DATE,
	DataDisattivazione DATE
);

CREATE TABLE Fornitori (
	NumeroFornitore SERIAL PRIMARY KEY,
	Denominazione VARCHAR(50) NOT NULL,
	RegioneResidenza VARCHAR(50) NOT NULL
);

CREATE TABLE Fatture (
	NumeroFattura SERIAL PRIMARY KEY,
	Tipologia VARCHAR(20) NOT NULL,
	Importo DECIMAL NOT NULL,
	Iva DECIMAL NOT NULL,
	IdCliente INTEGER REFERENCES Clienti(NumeroCliente) NOT NULL,
	DataFattura DATE DEFAULT CURRENT_DATE NOT NULL,
	NumeroFornitore INTEGER REFERENCES Fornitori(NumeroFornitore)NOT NULL
);


INSERT INTO Clienti(Nome, Cognome, Anno_Di_Nascita, Regione_Residenza) 
VALUES
('Umberto', 'Tramontano', '1992-02-10', 'Basilicata'),
('Ginevra', 'Gargiulo', '1980-12-24', 'Molise'),
('Massimo', 'Pizzicannella', '1983-07-3','Trentino Alto Adige'),
('Tommaso', 'Panciroli','2014-08-19','Puglia'),
('Daniel', 'Indrieri', '1990-06-1', 'Toscana'),
('Gabriele', 'Lucarelli', '1986-11-30','Liguria');

INSERT INTO Prodotti (Descrizione,In_Produzione,In_Commercio,Data_Attivazione,Data_Disattivazione)
VALUES
('Smartphone X200', TRUE, TRUE, '2024-01-01', NULL),
('Laptop ProBook 15', TRUE, TRUE, '2023-11-15', NULL),
('Tablet UltraTab 10', TRUE, FALSE, '2023-09-01', '2024-03-01'),
('Smartwatch FitBand', TRUE, TRUE, '2024-02-01', NULL),
('Cuffie Wireless SoundMax', TRUE, TRUE, '2023-12-10', NULL),
('Stampante LaserJet 3000', TRUE, FALSE, '2023-08-20', '2023-12-31'),
('Monitor 4K VisionView', TRUE, TRUE, '2023-10-05', NULL),
('Tastiera Gaming ProKey', TRUE, TRUE, '2023-06-30', NULL),
('Mouse Ergonomico ErgoGrip', TRUE, TRUE, '2023-07-15', NULL),
('Hard Disk Esterno 2TB', TRUE, FALSE, '2023-05-10', '2023-12-01');

INSERT INTO Fornitori (Denominazione, Regione_Residenza) 
VALUES 
('Tech Solutions S.r.l.', 'Lombardia'),
('Gadget World S.p.A.', 'Lazio'),
('Componenti Elettronici S.n.c.', 'Veneto'),
('MegaDistribuzione S.r.l.', 'Emilia-Romagna'),
('Accessori Digitali S.p.A.', 'Piemonte');

INSERT INTO Fatture (Tipologia, Importo, Iva, Id_Cliente, Data_Fattura, Numero_Fornitore) 
VALUES 
('Elettronica', 1500.00, 22.00, 13, '2024-01-10', 6),
('Elettronica', 3200.00, 22.00, 14, '2024-01-12', 7),
('Informatica', 2200.00, 22.00, 15, '2024-01-15', 8),
('Arredamento', 5000.00, 22.00, 16, '2024-01-18', 9),
('Elettronica', 1800.00, 22.00, 17, '2024-01-20', 10),
('Informatica', 2700.00, 22.00, 18, '2024-01-22', 10),
('Servizi', 3400.00, 10.00, 13, '2024-01-25', 8),
('Elettronica', 1900.00, 22.00, 18, '2024-01-28', 7),
('Arredamento', 4100.00, 22.00, 16, '2024-02-01', 6),
('Servizi', 2900.00, 10.00, 15, '2024-02-03', 9),
('Elettronica', 1500.00, 22.00, 17, '2024-02-06', 10),
('Informatica', 3100.00, 22.00, 14, '2024-02-08', 6),
('Arredamento', 4500.00, 22.00, 13, '2024-02-10', 7),
('Servizi', 2800.00, 10.00, 16, '2024-02-13', 8),
('Informatica', 2000.00, 22.00, 15, '2024-02-15', 9),
('Elettronica', 3500.00, 22.00, 13, '2024-02-18', 8),
('Servizi', 2700.00, 10.00, 18, '2024-02-20', 10),
('Arredamento', 3800.00, 22.00, 13, '2024-02-22', 8),
('Elettronica', 1600.00, 22.00, 15, '2024-02-25', 9),
('Informatica', 2300.00, 22.00, 18, '2024-02-28', 7);





