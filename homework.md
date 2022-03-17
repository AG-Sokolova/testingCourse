# Homework 1_ Charles HW Traffic capture

**Protocol:** http  
**IP:** 162.55.220.72  
**Port:** 5005    

#### Ex_1

| Method | EndPoint    | request url params      | response                             |
| ------ | ----------- | ----------------------- | ------------------------------------ |
| GET    | /get_method | name: str<br/> age: int | [<br/>    “Str”,<br/>    “Str”<br/>] |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)

- Подменить url в Charles чтобы в запросе ушло имя которые вы вписали в Postman, а вернулось то, которое вы подставили в Charles.

#### Ex_2

| Method | EndPoint     | request form data                        | response                                                     |
| ------ | ------------ | ---------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_3 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': age,<br/>          'salary': salary,<br/>          'family': {'children': [['Alex', 24], ['Kate', 12]],<br/>                     'u_salary_1_5_year': salary * 4}} |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)

- Подменить body в Charles так чтобы в запросе ушла salary которую вы вписали в Postman, а в u_salary_1_5_year цифра вернулась меньше оригинальной из запроса.

#### Ex_3

| Method | EndPoint       | request url params                       | response                                                     |
| ------ | -------------- | ---------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_1 | name: str<br/> age: int<br/> weight: int | {'name': name,<br/>          'age': age,<br/>          'daily_food': weight * 0.012,<br/>          'daily_sleep': weight * 2.5} |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)

- Подменить параметры запроса в Charles так, чтобы в Postman пришел ответ где другое name, daily_food > weight из запроса, а daily_sleep < weight из запроса.

#### Ex_4

| Method | EndPoint       | request url params                       | response                                                     |
| ------ | -------------- | ---------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_3 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': age,<br/>          'salary': salary,<br/>          'family': {'children': [['Alex', 24], ['Kate', 12]],<br/>                     'pets': {'cat':{'name':'Sunny',<br/>                                     'age': 3},<br/>                              'dog':{'name':'Luky',<br/>                                     'age': 4}},<br/>                     'u_salary_1_5_year': salary * 4}<br/>          } |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)
- Сделать через Charles так, чтобы сервер вернул 500 код.
- Сделать через Charles так, чтобы сервер вернул 405 код.

#### Ex_5

| Method | EndPoint       | request url params                       | response                                                     |
| ------ | -------------- | ---------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_4 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': int(age),<br/>          'salary': [salary, str(salary * 2), str(salary * 3)]} |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)

- Сделать через Charles так, чтобы сервер вернул 405 ошибку.
- Подменить salary в request
- Подменить (salary * 2) в response

#### Ex_6

| Method | EndPoint     | request form data                        | response                                                     |
| ------ | ------------ | ---------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_2 | name: str<br/> age: int<br/> salary: int | {'start_qa_salary': salary,<br/>          'qa_salary_after_6_months': salary * 2,<br/>          'qa_salary_after_12_months': salary * 2.7,<br/>          'qa_salary_after_1.5_year': salary * 3.3,<br/>          'qa_salary_after_3.5_years': salary * 3.8,<br/>          'person': {'u_name': [user_name, salary, age],<br/>                     'u_age': age,<br/>                     'u_salary_5_years': salary * 4.2}<br/>          } |

**task**:

Сделать и в Rewrite, и в BreakPoint (можно отключить чтобы не стопило на каждом запросе)

- Сделать через Charles так, чтобы в Postman вернулся ответ, в котором qa_salary_after_1.5_year переименовано в qa_salary_after_1.5_month
- Сделать так чтобы qa_salary_after_3.5_years было меньше qa_salary_after_12_months в response

# Homework 2_ Fiddler

**Protocol:** http
**IP:** 162.55.220.72
**Port:** 5005

#### Ex_1

| Method | EndPoint    | request url params      | response                             |
| ------ | ----------- | ----------------------- | ------------------------------------ |
| GET    | /get_method | name: str<br/> age: int | [<br/>    “Str”,<br/>    “Str”<br/>] |

**task**:

Сделать правила:

- Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.

 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 

#### Ex_2

| Method | EndPoint     | request form data                        | response                                                     |
| ------ | ------------ | ---------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_3 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': age,<br/>          'salary': salary,<br/>          'family': {'children': [['Alex', 24], ['Kate', 12]],<br/>                     'u_salary_1_5_year': salary * 4}} |

**task**:

Сделать правила:

- Подменить тело запроса чтобы поменялся name которые вы вписали в Postman.

 - Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
 - Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
 - Подменить тело запроса чтобы удалился age которые вы вписали в Postman.  (Получить 500 код)
 - В ответе поменять children на neighbors. 
 - В ответе поменять значение зарплаты u_salary_1_5_year на другую цифру. 
 - В ответе удалить параметр salary. 

#### Ex_3

| Method | EndPoint       | request url params                     | response                                                     |
| ------ | -------------- | -------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_1 | name: str<br/>age: int<br/>weight: int | {'name': name,<br/>          'age': age,<br/>          'daily_food': weight * 0.012,<br/>          'daily_sleep': weight * 2.5} |

**task**:

Сделать правила:

- Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.

 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе поменялся salary которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился weight которые вы вписали в Postman.
 - В ответе удалить параметр  daily_food.
 - В ответе поменять значение параметра daily_food на другую цифру. 
 - В ответе переименовать daily_sleep на sleep
 - В ответе поменять значение параметра daily_sleep на другую цифру. 

#### Ex_4

| Method | EndPoint       | request url params                       | response                                                     |
| ------ | -------------- | ---------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_3 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': age,<br/>          'salary': salary,<br/>          'family': {'children': [['Alex', 24], ['Kate', 12]],<br/>                     'pets': {'cat':{'name':'Sunny',<br/>                                     'age': 3},<br/>                              'dog':{'name':'Luky',<br/>                                     'age': 4}},<br/>                     'u_salary_1_5_year': salary * 4}<br/>          } |

**task**:

Сделать правила:

- Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.

 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился name которые вы вписали в Postman.
 - В ответе удалить параметр  salary.
 - В ответе поменять значение параметра cat на другой json. 
 - Получить 405 код

#### Ex_5

| Method | EndPoint       | request url params                       | response                                                     |
| ------ | -------------- | ---------------------------------------- | ------------------------------------------------------------ |
| GET    | /object_info_4 | name: str<br/> age: int<br/> salary: int | {'name': name,<br/>          'age': int(age),<br/>          'salary': [salary, str(salary * 2), str(salary * 3)]} |

**task**:

- Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.

 - Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
 - Подменить url в чтобы в запросе удалился salary которые вы вписали в Postman.
 - В ответе удалить параметр  salary.
 - В ответе поменять значение параметра salary на значение текстового типа. 
 - Получить 405 код

#### Ex_6

| Method | EndPoint     | request form data                        | response                                                     |
| ------ | ------------ | ---------------------------------------- | ------------------------------------------------------------ |
| POST   | /user_info_2 | name: str<br/> age: int<br/> salary: int | {'start_qa_salary': salary,<br/>          'qa_salary_after_6_months': salary * 2,<br/>          'qa_salary_after_12_months': salary * 2.7,<br/>          'qa_salary_after_1.5_year': salary * 3.3,<br/>          'qa_salary_after_3.5_years': salary * 3.8,<br/>          'person': {'u_name': [user_name, salary, age],<br/>                     'u_age': age,<br/>                     'u_salary_5_years': salary * 4.2}<br/>          } |

**task**:

Сделать правила:
 - Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
 - Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
 - Подменить тело запроса чтобы удалился salary которые вы вписали в Postman.
 - В ответе поменять qa_salary_after_6_months на qa_salary_after_10_months. 
 - В ответе поменять значение зарплаты qa_salary_after_1.5_year на другую цифру. 
 - В ответе удалить параметр person. 
 - В ответе поменять значение параметр person с json на xml. 
