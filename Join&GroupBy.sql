
-- Group By query


-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `Numero_Iscritti`, YEAR(`enrolment_date`) AS `Annata` FROM `students` GROUP BY `Annata`;

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `Professori_presenti`, `office_address` AS `Edificio` FROM `teachers` GROUP BY `Edificio`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `Media_Voti`, `exam_id` AS `Esame` FROM `exam_student` GROUP BY `Esame`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `Numero_di_Corsi`, `department_id` AS `Per_Dipartimento` FROM `degrees` GROUP BY `Per_Dipartimento`;


-- Join query

-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`, `students`.`id` 
FROM `students` INNER JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id` 
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`name` AS `Corsi_Magistrali_Dipartimento_Neuroscenze`
FROM `departments` INNER JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `degrees`.`level` = "Magistrale" AND `departments`.`name` = "Dipartimento di
 Neuroscienze";

-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name` 
FROM `courses` INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `course_teacher`.`teacher_id` = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name`, `degrees`.`level`, `degrees`.`address`,
`degrees`.`email`, `departments`.`name`
FROM `departments`
INNER JOIN `degrees` ON `departments`.`id` = `degrees`.`department_id`
INNER JOIN `students` ON `degrees`.`id` = `students`.`degree_id`
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;


-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`, `courses`.`name`, `course_teacher`.`teacher_id`
FROM `degrees`
INNER JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`;