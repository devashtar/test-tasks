# Таблица Students имеет поля StudentId, FirstName, LastName, Group и содержит информацию о студентах института.
# Таблица Exams имеет поля StudentId, ExamName, Result и содержит результаты экзаменов студентов.
# a) написать SQL запрос, который выводит имена и фамилии студентов у которых больше двух экзаменов с результатом меньше 3.
# b) написать SQL запрос, который выводит название групп, в которых таких студентов больше 10.

# Создаём таблицу с студентами и группами
CREATE TABLE Students (
  StudentId INT AUTO_INCREMENT PRIMARY KEY,
  FirstName NVARCHAR(255),
  LastName NVARCHAR(255),
  `Group` NVARCHAR(255)
);

# Создаём таблицу с экзаменами и результатами, которая имеет внешний ключ "StudentId"
CREATE TABLE Exams (
  StudentId INT,
  ExamName NVARCHAR(255),
  Result NVARCHAR(255),
  FOREIGN KEY (StudentId) REFERENCES Students(StudentId) ON DELETE CASCADE
);

# Заполняем таблицу с студентами и группами
INSERT INTO Students(FirstName, LastName, `Group`)
VALUES 
('Картер', 'Кузнецов', 'Чототамведы'),
('Кэден', 'Попов', 'Чототамведы'),
('Ной', 'Кузнецов', 'Чототамведы'),
('Эйден', 'Никаков', 'Чототамведы'),
('Грейсон', 'Блаблаков', 'Чототамведы'),
('Кэден', 'Маргенцов', 'Чототамведы'),
('Лукас', 'Лолитацов', 'Чототамведы'),
('Илия', 'Пупков', 'Чототамведы'),
('Оливер', 'Мамков', 'Чототамведы'),
('Мухаммед', 'Голубцов', 'Чототамведы'),
('Мейсон', 'Путьков', 'Чототамведы'),
('Картер', 'Дрыньков', 'Чототамведы'),
('Матео', 'Хренков', 'Чототамведы'),
('Итэн', 'Ололоков', 'Чототамведы'),
('ЧеловекЖук', 'Навозников', 'Чототамведы'),
('Логан', 'Трататаков', 'Отшельники'),
('Себастьян', 'Нанаков', 'Отшельники'),
('Джеймс', 'Рамков', 'Отшельники'),
('Александр', 'Дортков', 'Отшельники'),
('Беньямин', 'Шлаков', 'Отшельники');

# заполняем таблицу с экзаменами и результатами  (1ый экзамен)
INSERT INTO Exams(StudentId, ExamName, Result)
VALUES
(
  (SELECT StudentId FROM Students WHERE StudentId=1), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=2), 
  'Информатика', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=3), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=4), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=5), 
  'Информатика', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=6), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=7), 
  'Информатика', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=8), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=9), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=10), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=11), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=12), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=13), 
  'Информатика', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=14), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=15), 
  'Информатика', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=16), 
  'Информатика', 
  2
),(
  (SELECT StudentId FROM Students WHERE StudentId=17), 
  'Демагоговедение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=18), 
  'Демагоговедение', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=19), 
  'Демагоговедение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=20), 
  'Демагоговедение', 
  4
);

# заполняем таблицу с экзаменами и результатами (2ой экзамен)
INSERT INTO Exams(StudentId, ExamName, Result)
VALUES
(
  (SELECT StudentId FROM Students WHERE StudentId=1), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=2), 
  'Алгебра', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=3), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=4), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=5), 
  'Алгебра', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=6), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=7), 
  'Алгебра', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=8), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=9), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=10), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=11), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=12), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=13), 
  'Алгебра', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=14), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=15), 
  'Алгебра', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=16), 
  'Алгебра', 
  2
),(
  (SELECT StudentId FROM Students WHERE StudentId=17), 
  'Шляпаведение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=18), 
  'Шляпаведение', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=19), 
  'Шляпаведение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=20), 
  'Шляпаведение', 
  4
);

# заполняем таблицу с экзаменами и результатами (3ий экзамен)
INSERT INTO Exams(StudentId, ExamName, Result)
VALUES
(
  (SELECT StudentId FROM Students WHERE StudentId=1), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=2), 
  'Геометрия', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=3), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=4), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=5), 
  'Геометрия', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=6), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=7), 
  'Геометрия', 
  3
),
(
  (SELECT StudentId FROM Students WHERE StudentId=8), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=9), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=10), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=11), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=12), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=13), 
  'Геометрия', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=14), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=15), 
  'Геометрия', 
  2
),
(
  (SELECT StudentId FROM Students WHERE StudentId=16), 
  'Геометрия', 
  2
),(
  (SELECT StudentId FROM Students WHERE StudentId=17), 
  'Ненужноведение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=18), 
  'Ненужноведение', 
  4
),
(
  (SELECT StudentId FROM Students WHERE StudentId=19), 
  'Ненужноведение', 
  5
),
(
  (SELECT StudentId FROM Students WHERE StudentId=20), 
  'Ненужноведение', 
  4
);

# ==================== 1ый запрос(a) =======================

SELECT FirstName, LastName
FROM Students
INNER JOIN Exams
ON Students.StudentId = Exams.StudentId
WHERE Students.StudentId = Exams.StudentId AND 
Exams.Result < 3
GROUP BY Students.StudentId
HAVING COUNT(Exams.StudentId) > 2
ORDER BY LastName;

# ==================== 2ой запрос(b) =======================

SELECT `Group` AS gp
FROM Exams
INNER JOIN Students
ON Students.StudentId = Exams.StudentId
WHERE Students.StudentId = Exams.StudentId AND 
Exams.Result < 3
GROUP BY gp
HAVING COUNT(gp) > 10
ORDER BY gp;