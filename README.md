# 🏫 School Management Database — MySQL

A relational database for a Nigerian secondary/primary school, modeling classes, teachers, students, subjects, and exam scores — built as the SQL for Data Analysis programme mini-project.

![MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

---

## 📌 Overview

This project designs and populates a 5-table school management system covering the full JSS1–SS3 and Primary 1–5 structure of a Nigerian school, then uses SQL to answer the kind of questions a school administrator would ask — top and bottom performers, subject averages, class sizes, and staff assignments.

**Objectives:**
1. Design a normalized schema linking classes, teachers, students, subjects, and scores
2. Populate it with realistic Nigerian sample data
3. Query it to surface academic performance and staffing insights

---

## 🗂️ Dataset

| Table | Rows | Description |
|---|---|---|
| `classes` | 50 | JSS1–3, SS1–3 (sections A–E) and PRY1–5 (sections A–D) |
| `teachers` | 50 | Name, email, phone, and subject department |
| `students` | 100 | Name, date of birth, gender, guardian, phone, class |
| `subjects` | 50 | From core subjects (Mathematics, English) to electives (Fine Arts, Auto Mechanics) |
| `scores` | 50 | Term, CA score, exam score, and computed total per student/subject |

65 SQL statements in total — a mix of `CREATE`, `ALTER`, `INSERT`, `UPDATE`, `DESCRIBE`, and analytical `SELECT` queries.

### Schema & Relationships

- `classes.teacher_id` → `teachers.teacher_id` (form teacher)
- `students.class_id` → `classes.class_id`
- `subjects.teacher_id` → `teachers.teacher_id`, `subjects.class_id` → `classes.class_id`
- `scores.student_id` → `students.student_id`, `scores.subject_id` → `subjects.subject_id`

---

## 🛠️ Tools & Skills Demonstrated

- Schema design: `CREATE TABLE`, `ALTER TABLE`, primary/foreign key constraints
- Data seeding and correction with `INSERT` and `UPDATE`
- Aggregate functions — `COUNT`, `AVG`
- Filtering and ranking — `WHERE`, `ORDER BY`, `LIMIT`
- `DISTINCT` for de-duplicated lookups (class IDs, teacher names)

---

## 🔍 Business Questions Answered

| Question | Query approach |
|---|---|
| Which students scored below average? | `WHERE total < 50` on `scores` |
| Which teachers are in the Mathematics department? | `WHERE department = 'Mathematics'` on `teachers` |
| What are the distinct class IDs in use? | `SELECT DISTINCT class_id FROM students` |
| Who are all the teachers, by name? | `SELECT DISTINCT full_name FROM teachers` |
| Who are the top 5 and bottom 5 exam performers? | `ORDER BY exam_score DESC/ASC LIMIT 5` on `scores` |
| What's the average exam score in Mathematics vs. Computer Science? | `AVG(exam_score) WHERE subject_id = ...` |
| How many students are in JSS1A? | `COUNT(student_id) WHERE class_id = ...` |

See `project.sql` for the full script — schema creation, data load, and each of the queries above with its result column aliased for readability.

---

## 🚀 How to Use

1. Open `project.sql` in MySQL Workbench (or any MySQL client) and run it — it creates the `school_mgt_system` database and all five tables.
2. Run the analysis queries near the end of the script, or write your own joins across `students`, `subjects`, and `scores` to explore performance by class or department.

---

## 📬 Contact

**Abel Atangs**
📧 abelatangs7@gmail.com
🔗 [LinkedIn](https://linkedin.com/in/abel-atangs03) · [GitHub](https://github.com/atangsabel13)
