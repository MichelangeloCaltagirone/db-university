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