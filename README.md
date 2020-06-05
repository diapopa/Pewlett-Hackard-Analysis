# Pewlett-Hackard-Analysis
# Challenge

Purpose 
--
The purpose of this assignment was to determine the total number of employees per title who will be retiring and which ones are elibible for the mentorship program.

Steps & Challenges
--
For the first table, I used the current_emp, titles, and salaries tables and used two inner joins to combine the data. The challenge I came across in this step was that some of the employees were duplicated. To remove the duplicates, I used a partition to only return the latest data of an employee when more than one data line for that employee existed.
For the second table, I used the employees and titles tables and used a single inner join to combine the data where the employee's birthdate was between Jan 1, 1965 and Dec 31, 1965 and they must be currently employed. 

Results, Limitations, and Next Steps
--
The number of employees retiring is 33118 and the number of individuals being hired to fill those roles would be the same, 33118. 
The number of employees available for the mentorship role is 1549.
One recommendation for further analysis on this dataset is looking at the number of people retiring based on the department. This would help the company understand whic departments will be undergoing the most change in the near future and prepare for it.
