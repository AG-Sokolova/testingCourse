# HomeWork 1
выполнено: []()  

**Подключится к**
Host: 159.69.151.133  
Port: 5056  
User: user_25_x  
Pass: 123  
DB: qa_students_1  
Table: students  

 1. Вывести все поля и все строки.
 2. Вывести всех студентов в таблице
 3. Вывести только Id пользователей
 4. Вывести только имя пользователей
 5. Вывести только email пользователей
 6. Вывести имя и email пользователей
 7. Вывести id, имя, email и дату создания пользователей
 8. Вывести пользователей где password 12333
 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
 10. Вывести пользователей где в имени есть слово Анна
 11. Вывести пользователей где в имени в конце есть 8
 12. Вывести пользователей где в имени в есть буква а
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 17. Вывести пользователя у которых id равен 110
 18. Вывести пользователя у которых id равен 153
 19. Вывести пользователя у которых id больше 140
 20. Вывести пользователя у которых id меньше 130
 21. Вывести пользователя у которых id меньше 127 или больше 188
 22. Вывести пользователя у которых id меньше либо равно 137
 23. Вывести пользователя у которых id больше либо равно 137
 24. Вывести пользователя у которых id больше 180 но меньше 190
 25. Вывести пользователя у которых id между 180 и 190
 26. Вывести пользователей где password равен 12333, 1m313, 123313
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 28. Вывести минимальный id 
 29. Вывести максимальный.
 30. Вывести количество пользователей
 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 
# HomeWork 2
выполнено: []()  

**Таблица employees**  
1. Создать таблицу employees
    <pre><code>
    - id. serial,  primary key,
    - employee_name. Varchar(50), not null
    </code></pre>
2. Наполнить таблицу employee 70 строками.

**Таблица salary**
1. Создать таблицу salary
    <pre><code>
    - id. Serial  primary key,
    - monthly_salary. Int, not null
    </code></pre>
2. Наполнить таблицу salary 15 строками:
    <pre><code>
    - 1000
    - 1100
    - 1200
    - 1300
    - 1400
    - 1500
    - 1600
    - 1700
    - 1800
    - 1900
    - 2000
    - 2100
    - 2200
    - 2300
    - 2400
    </code></pre>

**Таблица employee_salary**
1. Создать таблицу employee_salary
    <pre><code>
    - id. Serial  primary key,
    - employee_id. Int, not null, unique
    - salary_id. Int, not null
    </code></pre>
2. Наполнить таблицу employee_salary 40 строками:
    <pre><code>
    - в 10 строк из 40 вставить несуществующие employee_id
    </code></pre>

**Таблица roles** 
1. Создать таблицу roles
    <pre><code>
    - id. Serial  primary key,
    - role_name. int, not null, unique
    </code></pre>
2. Поменять тип столба role_name с int на varchar(30)
3. Наполнить таблицу roles 20 строками

**Таблица roles_employee**
1. Создать таблицу roles_employee
    <pre><code>
    - id. Serial  primary key,
    - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
    - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
    </code></pre>
2. Наполнить таблицу roles_employee 40 строками

# HomeWork 3
выполнено: []()  

**Подключится к**
Host: 159.69.151.133  
Port: 5056  
DB: подключение к той таблице где делали DDL операции  
User: подключение к тем пользователем каким делали DDL операции  
Pass: 123  
1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 2. Вывести всех работников у которых ЗП меньше 2000.
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 5. Найти всех работников кому не начислена ЗП.
 6. Вывести всех работников с названиями их должности.
 7. Вывести имена и должность только Java разработчиков.
 8. Вывести имена и должность только Python разработчиков.
 9. Вывести имена и должность всех QA инженеров.
 10. Вывести имена и должность ручных QA инженеров.
 11. Вывести имена и должность автоматизаторов QA
 12. Вывести имена и зарплаты Junior специалистов
 13. Вывести имена и зарплаты Middle специалистов
 14. Вывести имена и зарплаты Senior специалистов
 15. Вывести зарплаты Java разработчиков
 16. Вывести зарплаты Python разработчиков
 17. Вывести имена и зарплаты Junior Python разработчиков
 18. Вывести имена и зарплаты Middle JS разработчиков
 19. Вывести имена и зарплаты Senior Java разработчиков
 20. Вывести зарплаты Junior QA инженеров
 21. Вывести среднюю зарплату всех Junior специалистов
 22. Вывести сумму зарплат JS разработчиков
 23. Вывести минимальную ЗП QA инженеров
 24. Вывести максимальную ЗП QA инженеров
 25. Вывести количество QA инженеров
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

#HomeWork 4
выполнено: []()  

**Создать таблицы**  

#1  <pre><code>
create table factories(
 id serial primary key,
 factory_title varchar(50)
)

insert into factories(factory_title)
values ('Hanwai'),
    ('Kenling'),
    ('Dongguan'),
    ('Abis'),
    ('Foxconn')
</code></pre>

#2  <pre><code>
create table mobile_phones(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 factory_id int
)

insert into mobile_phones(brand_id, product_model, price, factory_id)
values (2, 'iphone_X', 600, 5),
    (2, 'iphone_11', 700, 4),
    (1, 'A51', 400, 1),
    (3, 'P40', 600, 5),
    (1, 's21', 1500, 5),
    (3, 'H200', 300, 3),
    (2, 'iphone_12', 1000, 5),
    (3, 'Q15', 400, 2),
    (1, 'P50', 900, 1),
    (2, 'iphone_13', 1800, 4),
    (1, 'S22', 1300, 3),
    (1, 'A31', 200, 5)
</code></pre>

#3  <pre><code>
create table monitors(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 factory_id int
)

insert into monitors(brand_id, product_model, price, factory_id)
values (2, 'P300', 100, 1),
    (2, 'A320', 200, 3),
    (1, 'NV1000_Ultra', 450, 5),
    (3, 'P400_super_Amolet', 240, 3),
    (1, 'AV_1000', 400, 4),
    (3, 'UKV_100', 900, 2),
    (2, 'KV-200', 2000, 2),
    (3, 'IPS_1980', 550, 1),
    (1, 'IPS_4k', 630, 4),
    (2, 'IPS_8k_1c', 1200, 3),
    (1, 'TFTN_1500', 1300, 2),
    (1, 'BioPixel_2', 12000, 5);
</code></pre>

#4  <pre><code>
create table scooters(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 factory_id int);   

insert into scooters(brand_id, product_model, price, factory_id)
values (2, 'A-P300', 2000, 2),
    (2, 'B-A320', 280, 4),
    (1, 'C-NV1000_Ultra', 650, 1),
    (3, 'D_P400_super_Amolet', 2400, 2),
    (1, 'E-AV_1000', 1100, 5),
    (3, 'F-UKV_100', 2300, 3),
    (2, 'G-KV-200', 200, 1),
    (3, 'H-IPS_1980', 530, 4),
    (1, 'I-IPS_4k', 6300, 2),
    (2, 'J-IPS_8k_1c', 120, 1),
    (1, 'K-TFTN_1500', 130, 5),
    (1, 'O-BioPixel_2', 1200, 3);
</code></pre>

#5  <pre><code>
create table orders(
 id serial primary key,
 brand_id int,
 product_model varchar(40),
 price int,
 pcs int);

insert into orders(brand_id, product_model, price, pcs)
values (2, 'iphone_13', 1800, 1),
    (2, 'B-A320', 280, 2),
    (1, 'IPS_4k', 630, 1)
</code></pre>

#6  <pre><code>
create table brands(
 id serial primary key,
 brand_title varchar(50)
)

insert into brands(brand_title)
values ('Samsung'),
    ('Apple'),
    ('Huawei'),
    ('HP'),
    ('Koogu')
</code></pre>

#7  <pre><code>
create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)


insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 12, 700),
    ('SE 2020', 6, 8, 700);
</code></pre>
    
#8  <pre><code>
create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850);
</code></pre>

#9  <pre><code>
create table apple_orders(
 id serial primary key,
 phone_id int
)

insert into apple_orders(phone_id)
values (3),
    (9),
    (5),
    (1),
    (4)
</code></pre>

#10  <pre><code>
create table samsung_orders(
 id serial primary key,
 phone_id int
)
</code></pre>
