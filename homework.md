# Homework_1 

- Дать нагрузку на 50, 250, 500 потоков.  
- Результаты прогонов выгрузить в CSV.   
- Настройки Jmeter, файл .jmx выгружаем на git.  

 **Protocol:** http  
 **IP:** 162.55.220.72  
 **Port:** 5005  

| Method | EndPoint       | Request                                |
| ------ | -------------- | -------------------------------------- |
| GET    | /get_method    | name: str<br/>age: int                 |
| POST   | /user_info_2   | name: str<br/>age: int<br/>salary: int |
| POST   | /user_info_3   | name: str<br/>age: int<br/>salary: int |
| GET    | /object_info_1 | name: str<br/>age: int<br/>weight: int |
| GET    | /object_info_2 | name: str<br/>age: int<br/>salary: int |
| GET    | /object_info_3 | name: str<br/>age: int<br/>salary: int |
| GET    | /object_info_4 | name: str<br/>age: int<br/>salary: int |


# Homework_2 

json_extractor

```
token
$.token
```

BeanShell_assertion

```
${__setProperty(token,${token})}
```

BeanShell_preprocessor

```
String auth_token = props.get("token");
vars.put("token", auth_token);
auth_token - ${token}
```
   
 **Protocol:** http  
 **IP:** 162.55.220.72  
 **Port:** 5005  

#### EP_1

| Method | EndPoint   | request (RAW JSON)                                    | response                                                     |
| ------ | ---------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info | age: int<br/>salary: int<br/>name: str<br/>auth_token | {'start_qa_salary':salary,<br/> 'qa_salary_after_6_months': salary * 2,<br/> 'qa_salary_after_12_months': salary * 2.9,<br/> 'person': {'u_name':[user_name, salary, age],<br/>                                'u_age':age,<br/>                                'u_salary_1.5_year': salary * 4}<br/>                                } |

**task:**

- Достать из Respose значение из поля 'qa_salary_after_6_months' и передать в поле salary запроса http://162.55.220.72:5005/new_data

#### EP_2

| Method | EndPoint  | request url params                                    | response                                                     |
| ------ | --------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| POST   | /new_data | age: int<br/>salary: int<br/>name: str<br/>auth_token | {'name':name,<br/>  'age': int(age),<br/>  'salary': [salary, str(salary*2), str(salary*3)]} |

**task:**

- Достать из Respose значение из поля 'name' и передать в поле name запроса http://162.55.220.72:5005/new_data

#### EP_3

| Method | EndPoint       | request url params                                    | response                                                     |
| ------ | -------------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| POST   | /test_pet_info | age: int<br/>weight: int<br/>name: str<br/>auth_token | {'name': name,<br/> 'age': age,<br/> 'daily_food':weight * 0.012,<br/> 'daily_sleep': weight * 2.5} |

**task:**

- Достать из Respose значение из поля age и передать в поле age запроса http://162.55.220.72:5005/get_test_user

  -----

- Изучать как работают Response Assertion.

- Сделать Assertion на провекрку статус код 200

- Сделать Assertion на провекрку 'daily_food':weight * 0.012

  

#### EP_4

| Method | EndPoint       | request url params                                    | response                                                     |
| ------ | -------------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| POST   | /get_test_user | age: int<br/>salary: int<br/>name: str<br/>auth_token | {'name': name,<br/> 'age':age,<br/> 'salary': salary,<br/> 'family':{'children':[['Alex', 24],['Kate', 12]],<br/> 'u_salary_1.5_year': salary * 4}<br/>  } |

**task:**

- Изучать как работают Response Assertion.
- Сделать Assertion на провекрку статус код 200
- Сделать Assertion на провекрку 'salary': salary
