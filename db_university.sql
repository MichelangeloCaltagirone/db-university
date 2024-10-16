-- dopo aver fatto diverse query e averne osservato i valori per vedere se corrispondevano effetivamente alla richiesta che ho fatto,
-- ho lasciato riportato anche qui il COUNT() per comodità, al posto dell'effetiva lista prodotta con *,
-- perchè avendo già il risultato della query potevo confrontarli immediatamente.

-- tutti gli studenti nati nel 1990 - 160 è il risultato 
SELECT COUNT(*) FROM `students` WHERE `date_of_birth` >= "1990-01-01" AND `date_of_birth` <= "1990-12-31";

-- tutti i corsi che valgono più di 10 crediti - 479 è il risultato 
SELECT COUNT(*) FROM `courses` WHERE `cfu` AND `cfu` > 10;

-- tutti gli studenti con più di 30 anni (alla data corrente) - 3646 è il risultato
SELECT COUNT(*) FROM `students` WHERE (YEAR(CURRENT_DATE) - YEAR(`date_of_birth`)) > 30;

-- tutti i corsi del primo semestre del primo anno di studi di un corso - 286 è il risultato
SELECT COUNT(*) FROM `courses` WHERE `year` = 1 AND `period` = "I semestre";

-- tutti gli appelli di esami del "2020-06-20" che iniziano dopo le 14:00 di pomeriggio - 21 è il risultato
SELECT COUNT(*) FROM `exams` WHERE `date` = "2020-06-20" AND `hour` > "14:00:00";

-- tutti i corsi di laurea Magistrali - 38 è il risultato 
SELECT COUNT(*) FROM `degrees` WHERE `level` = "magistrale";

-- tutti i dipartimenti da cui è formata l'università - 12 è il risultato
SELECT COUNT(*) FROM `departments`;

-- seleziona tutti i professori che non hanno numero di cellulare presente - 50 è il risultato
SELECT COUNT(*) FROM `teachers` WHERE `phone` IS NULL;



-- inserire un nuovo studente all'interno della tabella studenti
INSERT INTO `students`
VALUES (33333,34,"michelangelo","caltagirone","1997-05-09","CLTMHL97E09E879V","2021-07-07",5678908,"arcidiavol@ieol.com");

-- cambiare il valore della colonna office_number al prof. Pietro Rizzo
-- cambio ufficialmente in maniera irrevocabile il valore del dato alla colonna indicata
UPDATE teachers SET office_number = 126 WHERE id = 58;

-- eliminare una riga da una tabella (in questo caso la riga corrispondente allo studente inserito prima)
-- in questo caso conosco l'id dello studente in questione, quindi lo userò indicandolo nel WHERE
DELETE FROM `students` WHERE id = 33333;