SELECT * FROM Clienti
WHERE nome = 'Ginevra';

SELECT nome,cognome
FROM Clienti
WHERE EXTRACT (YEAR FROM anno_di_nascita) = 1980;

SELECT * FROM Fatture
WHERE Iva = 22;