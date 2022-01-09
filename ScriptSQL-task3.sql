-- 1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees e 
	inner join employee_salary es 
		on e.id = es.employee_id 
	inner join salary s
		on es.salary_id = s.id;

-- 2.������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees e 
	inner join employee_salary es 
		on e.id = es.employee_id 
	inner join salary s 
		on es.salary_id =s.id 
	where s.monthly_salary < '2000';
	
-- 3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select es.employee_id, s.monthly_salary from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id 
	full outer join salary s 
		on es.salary_id = s.id 
	where employee_name is null;
	
-- 4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select es.employee_id, s.monthly_salary from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id 
	full outer join salary s 
		on es.salary_id = s.id
	where employee_name is null and s.monthly_salary < '2000';
	
-- 5.����� ���� ���������� ���� �� ��������� ��.
select e.employee_name from employee_salary es 
	full outer join employees e 
		on es.employee_id = e.id
	where es.salary_id is null;
	
	
-- 6.������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id;
	
-- 7.������� ����� � ��������� ������ Java �������������.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id
	where role_name like '% Java %';
	
-- 8.������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Python %';
	
-- 9.������� ����� � ��������� ���� QA ���������.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% QA engineer';
	
-- 10.������� ����� � ��������� ������ QA ���������.
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Manual QA engineer';
	
-- 11.������� ����� � ��������� ��������������� QA
select e.employee_name, r.role_name from roles_employee re 
	inner join employees e 
		on re.employee_id = e.id 
	inner join roles r 
		on re.role_id = r.id 
	where r.role_name like '% Automation QA %';
	
-- 12.������� ����� � �������� Junior ������������ 
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
	
-- 13.������� ����� � �������� Middle ������������
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
	
-- 14.������� ����� � �������� Senior ������������
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
	
-- 15.������� �������� Java �������������
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
	
-- 16.������� �������� Python �������������
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

-- 17.������� ����� � �������� Junior Python �������������
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
	
-- 18.������� ����� � �������� Middle JS �������������
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
	
-- 19.������� ����� � �������� Senior Java �������������
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
	
-- 20.������� �������� Junior QA ���������
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
	
-- 21.������� ������� �������� ���� Junior ������������
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

-- 22.������� ����� ������� JS �������������
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
	
-- 23.������� ����������� �� QA ���������
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
	
-- 24.������� ������������ �� QA ���������
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

-- 25.������� ���������� QA ���������
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
	
-- 26.������� ���������� Middle ������������.
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
	
-- 27.������� ���������� �������������
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
	
-- 28.������� ���� (�����) �������� �������������.
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
	
-- 29.������� �����, ��������� � �� ���� ������������ �� �����������
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
	
-- 30.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
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
	
-- 31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
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
	
-- 32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
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
	