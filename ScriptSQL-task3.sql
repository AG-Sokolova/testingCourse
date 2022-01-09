-- 1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employees e 
	inner join employee_salary es 
		on e.id = es.employee_id 
	inner join salary s
		on es.salary_id = s.id;

-- 2.Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employees e 
	inner join employee_salary es 
		on e.id = es.employee_id 
	inner join salary s 
		on es.salary_id =s.id 
	where s.monthly_salary < '2000';
	
-- 3.Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id, s.monthly_salary from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id 
	full outer join salary s 
		on es.salary_id = s.id 
	where employee_name is null;
	
-- 4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id, s.monthly_salary from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id 
	full outer join salary s 
		on es.salary_id = s.id
	where employee_name is null and s.monthly_salary < '2000';
	
-- 5.Найти всех работников кому не начислена ЗП.
select e.employee_name from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id
	where es.salary_id is null;
	
	
-- 6.Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id;
	
-- 7.Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id
	where role_name like '% Java %';
	
-- 8.Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Python %';
	
-- 9.Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% QA engineer';
	
-- 10.Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Manual QA engineer';
	
-- 11.Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Automation QA %';
	
-- 12.Вывести имена и зарплаты Junior специалистов 
select e.employee_name, s.monthly_salary, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	right join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Junior %';
	
-- 13.Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	right join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Middle %';
	
-- 14.Вывести имена и зарплаты Senior специалистов
select  e.employee_name, s.monthly_salary, r.role_name from roles_employee re 
		inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	right join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Senior %';
	
-- 15.Вывести зарплаты Java разработчиков
select /*e.employee_name, r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id
	where r.role_name like '% Java %';
	
-- 16.Вывести зарплаты Python разработчиков
select /*e.employee_name, r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% Python %';

-- 17.Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name,/* r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Junior Python %';
	
-- 18.Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name,/* r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Middle JavaScript %';
	
-- 19.Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name,/* r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Senior Java %';
	
-- 20.Вывести зарплаты Junior QA инженеров
select /*e.employee_name, r.role_name,*/ s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Junior % QA %';
	
-- 21.Вывести среднюю зарплату всех Junior специалистов
select /*e.employee_name, r.role_name, s.monthly_salary,*/ avg(s.monthly_salary) as avg_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Junior %';

-- 22.Вывести сумму зарплат JS разработчиков
select /*e.employee_name, r.role_name, s.monthly_salary,*/ sum(s.monthly_salary) as sum_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% JavaScript %';
	
-- 23.Вывести минимальную ЗП QA инженеров
select /*e.employee_name, r.role_name, s.monthly_salary,*/ min(s.monthly_salary) as min_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% QA %';
	
-- 24.Вывести максимальную ЗП QA инженеров
select /*e.employee_name, r.role_name, s.monthly_salary,*/ max(s.monthly_salary) as max_salary  from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% QA %';

-- 25.Вывести количество QA инженеров
select count(*) as count_QA  from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% QA %';
	
-- 26.Вывести количество Middle специалистов.
select count(*) as count_QA  from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like 'Middle %';
	
-- 27.Вывести количество разработчиков
select count(*) as count_QA  from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% developer';
	
-- 28.Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) as sum_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id 
	inner join salary s 
		on es.salary_id = s.id 
	where r.role_name like '% developer';
	
-- 29.Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id
	order by e.employee_name, r.role_name, s.monthly_salary asc;
	
-- 30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id
	where s.monthly_salary between '1700' and '2300'
	order by e.employee_name, r.role_name, s.monthly_salary asc;
	
-- 31.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id
	where s.monthly_salary < '2300'
	order by e.employee_name, r.role_name, s.monthly_salary asc;
	
-- 32.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	inner join employee_salary es 
		on re.employee_id = es.employee_id
	inner join salary s 
		on es.salary_id = s.id
	where s.monthly_salary in ('1100','1500','2000')
	order by e.employee_name, r.role_name, s.monthly_salary asc;  
	