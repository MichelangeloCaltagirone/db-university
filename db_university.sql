-- tutti gli studenti nati nel 1990 - 160 è il risultato 
SELECT COUNT(*) FROM `students` WHERE `date_of_birth` >= "1990-01-01" AND `date_of_birth` <= "1990-12-31";

-- tutti i corsi che valgono più di 10 crediti - 479 è il risultato 
SELECT COUNT(*) FROM `courses` WHERE `cfu` AND `cfu` > 10;

-- tutti gli studenti con più di 30 anni (alla data corrente) - 3646
SELECT COUNT(*) FROM `students` WHERE (YEAR(CURRENT_DATE) - YEAR(`date_of_birth`)) > 30;