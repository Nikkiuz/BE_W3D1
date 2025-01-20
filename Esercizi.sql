SELECT * FROM Clienti
WHERE nome = 'Ginevra';

SELECT nome,cognome
FROM Clienti
WHERE EXTRACT (YEAR FROM anno_di_nascita) = 1980;

SELECT * FROM Fatture
WHERE Iva = 22;

SELECT * FROM Prodotti
WHERE EXTRACT (YEAR FROM data_attivazione) = 2023 AND (in_produzione = true OR in_commercio) = true;

SELECT *
FROM public.Fatture
JOIN public.Clienti
ON id_cliente = numero_cliente
WHERE importo < 4000
ORDER BY numero_fattura;

