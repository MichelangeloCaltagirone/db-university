-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `Numero_Iscritti`, YEAR(`enrolment_date`) AS `Annata` FROM `students` GROUP BY `Annata`;

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `Professori_presenti`, `office_address` AS `Edificio` FROM `teachers` GROUP BY `Edificio`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `Media_Voti`, `exam_id` AS `Esame` FROM `exam_student` GROUP BY `Esame`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `Numero_di_Corsi`, `department_id` AS `Per_Dipartimento` FROM `degrees` GROUP BY `Per_Dipartimento`;