# HW_1 - Создать запросы в Postman.

**Выполнено:**  

- Collection: [Postman_task1.postman_collection]()

## Задание:

**Protocol:** http  
**IP:** 162.55.220.72  
**Port:** 5005  



#### EP_1

| Method | EndPoint    | request url params          | response                                   |
| ------ | ----------- | --------------------------- | ------------------------------------------ |
| GET    | /get_method | name: str    <br/> age: int | [  <br/>    “Str”,  <br/>    “Str”  <br/>] |

#### EP_2

| Method | EndPoint     | request form data                            | response                                                     |
| ------ | ------------ | -------------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_3 | name: str  <br/> age: int  <br/> salary: int | {'name': name,  <br/> 'age': age,  <br/> 'salary': salary,  <br/> 'family': {'children': [['Alex', 24], ['Kate', 12]],  <br/>            'u_salary_1_5_year': salary * 4}} |

#### EP_3
| Method | EndPoint       | request url params                           | response                                                     |
| ------ | -------------- | -------------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_1 | name: str  <br/> age: int  <br/> weight: int | {'name': name,  <br/> 'age': age,  <br/> 'daily_food': weight * 0.012,  <br/> 'daily_sleep': weight * 2.5} |

#### EP_4

| Method | EndPoint       | request url params                           | response                                                     |
| ------ | -------------- | -------------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_2 | name: str  <br/> age: int  <br/> salary: int | {'start_qa_salary': salary,  <br/> 'qa_salary_after_6_months': salary * 2,  <br/> 'qa_salary_after_12_months': salary * 2.7,  <br/> 'qa_salary_after_1.5_year': salary * 3.3,  <br/> 'qa_salary_after_3.5_years': salary * 3.8,  <br/> 'person': {'u_name': [user_name, salary, age],  <br/>            'u_age': age,  <br/>            'u_salary_5_years': salary * 4.2}  <br/> } |

#### EP_5

| Method | EndPoint       | request url params                           | response                                                     |
| ------ | -------------- | -------------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_3 | name: str  <br/> age: int  <br/> salary: int | {'name': name,  <br/> 'age': age,  <br/> 'salary': salary,  <br/> 'family': {'children': [['Alex', 24], ['Kate', 12]],  <br/>            'pets': {'cat':{'name':'Sunny',  <br/>                            'age': 3},  <br/>                     'dog':{'name':'Luky',  <br/>                            'age': 4}},  <br/>             'u_salary_1_5_year': salary * 4}  <br/> } |

#### EP_6  

| Method | EndPoint       | request url params                           | response                                                     |
| ------ | -------------- | -------------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_4 | name: str  <br/> age: int  <br/> salary: int | {'name': name,  <br/> 'age': int(age),  <br/> 'salary': [salary, str(salary * 2), str(salary * 3)]} |

#### EP_7  

| Method | EndPoint     | request form data                            | response                                                     |
| ------ | ------------ | -------------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_2 | name: str  <br/> age: int  <br/> salary: int | {'start_qa_salary': salary,  <br/> 'qa_salary_after_6_months': salary * 2,  <br/> 'qa_salary_after_12_months': salary * 2.7,  <br/> 'qa_salary_after_1.5_year': salary * 3.3,  <br/> 'qa_salary_after_3.5_years': salary * 3.8,  <br/> 'person': {'u_name': [user_name, salary, age],  <br/>            'u_age': age,  <br/>            'u_salary_5_years': salary * 4.2}  <br/>  } |



# HW_2  Postman - scripts
**Выполнено:**  

- Collection: [Postman_task2.postman_collection]()  
- Environment: [Postman_task2.postman_environment.json]()

## Задание:

#### EP_1
**url:** http://162.55.220.72:5005/first  
1. Отправить запрос.
2. Статус код 200
3. Проверить, что в body приходит правильный string.
#### EP_2
**url:** http://162.55.220.72:5005/user_info_3  

**Tests:**
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Проверить, что name в ответе равно name s request (name вбить руками.)
5. Проверить, что age в ответе равно age s request (age вбить руками.)
6. Проверить, что salary в ответе равно salary s request (salary вбить руками.)
7. Спарсить request.
8. Проверить, что name в ответе равно name s request (name забрать из request.)
9. Проверить, что age в ответе равно age s request (age забрать из request.)
10. Проверить, что salary в ответе равно salary s request (salary забрать из request.)
11. Вывести в консоль параметр family из response.
12. Проверить что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request)
#### EP_3
**url:** http://162.55.220.72:5005/object_info_3  

**Tests:**
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Спарсить request.
5. Проверить, что name в ответе равно name s request (name забрать из request.)
6. Проверить, что age в ответе равно age s request (age забрать из request.)
7. Проверить, что salary в ответе равно salary s request (salary забрать из request.)
8. Вывести в консоль параметр family из response.
9. Проверить, что у параметра dog есть параметры name.
10. Проверить, что у параметра dog есть параметры age.
11. Проверить, что параметр name имеет значение Luky.
12. Проверить, что параметр age имеет значение 4.
#### EP_4
**url:** http://162.55.220.72:5005/object_info_4  

**Tests:**
1. Отправить запрос.
2. Статус код 200
3. Спарсить response body в json.
4. Спарсить request.
5. Проверить, что name в ответе равно name s request (name забрать из request.)
6. Проверить, что age в ответе равно age из request (age забрать из request.)
7. Вывести в консоль параметр salary из request.
8. Вывести в консоль параметр salary из response.
9. Вывести в консоль 0-й элемент параметра salary из response.
10. Вывести в консоль 1-й элемент параметра salary параметр salary из response.
11. Вывести в консоль 2-й элемент параметра salary параметр salary из response.
12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request.)
13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request.)
14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request.)
15. Создать в окружении переменную name
16. Создать в окружении переменную age
17. Создать в окружении переменную salary
18. Передать в окружение переменную name
19. Передать в окружение переменную age
20. Передать в окружение переменную salary
21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary.
#### EP_5
**url:** http://162.55.220.72:5005/user_info_2  

**Tests:**
1. Вставить параметр salary из окружения в request
2. Вставить параметр age из окружения в age
3. Вставить параметр name из окружения в name
4. Отправить запрос.
5. Статус код 200
6. Спарсить response body в json.
7. Спарсить request.
8. Проверить, что json response имеет параметр start_qa_salary
9. Проверить, что json response имеет параметр qa_salary_after_6_months
10. Проверить, что json response имеет параметр qa_salary_after_12_months
11. Проверить, что json response имеет параметр qa_salary_after_1.5_year
12. Проверить, что json response имеет параметр qa_salary_after_3.5_years
13. Проверить, что json response имеет параметр person
14. Проверить, что параметр start_qa_salary равен salary из request (salary забрать из request.)
15. Проверить, что параметр qa_salary_after_6_months равен salary*2 из request (salary забрать из request.)
16. Проверить, что параметр qa_salary_after_12_months равен salary*2.7 из request (salary забрать из request.)
17. Проверить, что параметр qa_salary_after_1.5_year равен salary*3.3 из request (salary забрать из request.)
18. Проверить, что параметр qa_salary_after_3.5_years равен salary*3.8 из request (salary забрать из request.)
19. Проверить, что в параметре person, 1-й элемент из u_name равен salary из request (salary забрать из request.)
20. Проверить, что что параметр u_age равен age из request (age забрать из request.)
21. Проверить, что параметр u_salary_5_years равен salary*4.2 из request (salary забрать из request.)
22. Написать цикл который выведет в консоль по порядку элементы списка из параметра person.



# HW_3 - Postman - scripts

**Выполнено:**

- Collection: [CoursePostman_task3.postman_collection]()
- Environment: [CoursePostman_task3.postman_environment]()

## Задание:

**Protocol:** http  
**IP:** 162.55.220.72  
**Port:** 5005  

#### EP_1

Необходимо залогиниться

| Method | EndPoint | request form data                           | response |
| ------ | -------- | ------------------------------------------- | -------- |
| POST   | /login   | login : str (кроме /)  <br/> password : str |          |

**Tests:**  

1. Приходящий токен необходимо передать во все остальные запросы.  

дальше все запросы требуют наличие токена.  

#### EP_2

| Method | EndPoint   | **request (RAW JSON)**                                       | response                                                     |
| ------ | ---------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| POST   | /user_info | age: int  <br/> salary: int  <br/> name: str  <br/> auth_token | {'start_qa_salary':salary,  <br/> 'qa_salary_after_6_months': salary * 2,  <br/> 'qa_salary_after_12_months': salary * 2.9,  <br/> 'person': {'u_name':[user_name, salary, age],  <br/>                                'u_age':age,  <br/>                                'u_salary_1.5_year': salary * 4}  <br/>} |

**Tests:**  
1. Статус код 200
2. Проверка структуры json в ответе.
3. В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
4. Достать значение из поля 'u_salary_1.5_year' и передать в поле salary запроса http://162.55.220.72:5005/get_test_user
#### EP_3

| Method | EndPoint  | request (RAW JSON)                                           | response                                                     |
| ------ | --------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| POST   | /new_data | age: int  <br/> salary: int  <br/> name: str  <br/> auth_token | {'name':name,  <br/> 'age': int(age),  <br/> 'salary': [salary, str(salary*2), str(salary*3)]} |

**Tests:**  
1. Статус код 200
2. Проверка структуры json в ответе.
3. В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
4. проверить, что 2-й элемент массива salary больше 1-го и 0-го
#### EP_4

| Method | EndPoint       | request (RAW JSON)                                           | response                                                     |
| ------ | -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| POST   | /test_pet_info | age: int  <br/> weight: int  <br/> name: str  <br/> auth_token | {'name': name,  <br/> 'age': age,  <br/> 'daily_food':weight * 0.012,  <br/> 'daily_sleep': weight * 2.5} |

**Tests:**
1. Статус код 200
2. Проверка структуры json в ответе.
3. В ответе указаны коэффициенты умножения weight, напишите тесты по проверке правильности результата перемножения на коэффициент.
----

#### EP_5

| Method | EndPoint       | request (RAW JSON)                                           | response                                                     |
| ------ | -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| POST   | /get_test_user | age: int  <br/> salary: int  <br/> name: str  <br/> auth_token | {'name': name,  <br/> 'age':age,  <br/> 'salary': salary,  <br/> 'family':{'children':[['Alex', 24],['Kate', 12]],  <br/> 'u_salary_1.5_year': salary * 4}  <br/>  } |

**Tests:**
1. Статус код 200
2. Проверка структуры json в ответе.
3. Проверить что занчение поля name = значению переменной name из окружения
4. Проверить что занчение поля age в ответе соответсвует отправленному в запросе значению поля age
#### EP_6

| Method | EndPoint  | request (RAW JSON) | response                                                     |
| ------ | --------- | ------------------ | ------------------------------------------------------------ |
| POST   | /currency | auth_token         | Передаётся список массив объектов. <br/> [  <br/> {"Cur_Abbreviation": str,  <br/>  "Cur_ID": int,  <br/>  "Cur_Name": str  <br/> }  <br/>…  <br/> {"Cur_Abbreviation": str,  <br/>  "Cur_ID": int,  <br/>  "Cur_Name": str  <br/> }  <br/>] |

**Tests:**
1. Можете взять любой объект из присланного списка, используйте js random.
В объекте возьмите Cur_ID и передать через окружение в следующий запрос.
#### EP_6

| Method | EndPoint  | request (RAW JSON)               | response                                                     |
| ------ | --------- | -------------------------------- | ------------------------------------------------------------ |
| POST   | /curr_byn | auth_token  <br/> curr_code: int | {  <br/>    "Cur_Abbreviation": str  <br/>    "Cur_ID": int,  <br/>    "Cur_Name": str,  <br/>    "Cur_OfficialRate": float,  <br/>    "Cur_Scale": int,  <br/>    "Date": str  <br/>} |

**Tests:**
1. Статус код 200
2. Проверка структуры json в ответе.

**Дополнительное задание:** 
1. получить список валют
2. итерировать список валют
3. в каждой итерации отправлять запрос на сервер для получения курса каждой валюты
4. если возвращается 500 код, переходим к следующей итреации
5. если получаем 200 код, проверяем response json на наличие поля "Cur_OfficialRate"
6. если поле есть, пишем в консоль инфу про фалюту в виде response
```
{  
    "Cur_Abbreviation": str  
    "Cur_ID": int,  
    "Cur_Name": str,  
    "Cur_OfficialRate": float,  
    "Cur_Scale": int,  
    "Date": str  
}
```
7. переходим к следующей итерации



# Дополнительно

Пометка 1. [Пример кода для тестов]()
