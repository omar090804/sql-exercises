-- SQL EXERCISES - Bank database
-- Tables: clienti, conto, movimenti

-- ESPLORAZIONE DELLE TABELLE

-- Tutti i dati della tabella conto
select * from conto;

--.Tutti i dati della tabella movimenti
select * from movimenti;

-- Nome completo di ogni cliente in una sola colonna chiamata full_name
select concat(nome, ' ', cognome) as full_name from clienti;

-- ESERCIZI BASE

-- 1. Tutti i clienti
select * from clienti;

-- 2. Clienti di Milano ordinati per cognome
select * from clienti where citta = 'Milano' order by cognome;

-- 3. Movimenti con importo maggiore di 500
select * from movimenti where importo > 500;

-- 4. Ultimi 5 movimenti per data
select * from movimenti order by data desc limit 5;

-- 5. Clienti il cui cognome inizia per R
select * from clienti where cognome like 'R%';

-- 6. Numero totale di clienti
select count(*) from clienti;

-- 7. Saldo del conto con id 1 (somma dei suoi movimenti)
select sum(importo) as saldo from movimenti where conto_id = 1;

-- 8. Importo massimo, minimo e medio dei movimenti
select max(importo) as massimo,
       min(importo) as minimo,
       round(avg(importo), 2) as media
from movimenti;

-- 9. Numero di conti per tipo
select tipo, count(*) as numero_conti from conto group by tipo;

-- 10. Elenco conti con nome e cognome del titolare (JOIN)
-- TODO