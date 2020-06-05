-- Challenge Table 1
SELECT 	ce.emp_no,
		ce.first_name,
		ce.last_name,
		titles.title,
		titles.from_date,
		s.salary
INTO retiring_emp_titles
FROM current_emp as ce
INNER JOIN titles
ON (ce.emp_no = titles.emp_no)
INNER JOIN salaries as s 
ON (titles.emp_no = s.emp_no);

-- Partition the data to show only most recent title per employee
SELECT emp_no,
 first_name,
 last_name,
 from_date,
 title,
 salary
INTO table_1 
FROM
 (SELECT emp_no,
 first_name,
 last_name,
 from_date,
 title,
 salary, ROW_NUMBER() OVER
 (PARTITION BY (emp_no)
 ORDER BY from_date DESC) rn
 FROM retiring_emp_titles
 ) tmp WHERE rn = 1
ORDER BY emp_no;

SELECT * FROM retiring_emp_titles

SELECT * FROM table_1

-- Challenge Table 2
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ts.title,
	ts.from_date,
	ts.to_date
INTO table_2
FROM employees as e
INNER JOIN titles as ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (ts.to_date = ('9999-01-01'));

SELECT * FROM table_2