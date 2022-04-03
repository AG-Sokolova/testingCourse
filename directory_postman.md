# Postman

- [Введение в Postman](https://habr.com/ru/company/kolesa/blog/351250/)
- [Официальная документация Postman](https://learning.postman.com/docs/getting-started/introduction/)

#### Создание коллекции

Коллекция необходима для объединения и хранения набора запросов тестируемых методов API. Для
коллекции можно обозначать общие свойства, которые будет распространяться на все запросы
находящиеся внутри.

#### Свойства коллекции

- Description - общая информация о проекте, заполняется в формате markdown ;
- Authorization - указывается тип авторизации и параметры такого типа авторизации. В каждый
  запрос будет подставлен дополнительный параметр, позволяющий авторизовываться.

Каждая коллекция должна называться идентично названию проекта в REDMINE. 

#### Правила при работе с колекцией

1. Определенная workspace
2. Каждая коллекция должна называться идентично названию проекта в REDMINE
3. Каждая коллекция должна содержать variables . Если используются несколько серверных
   окружений, каждое окружение должно быть вынесено в отдельный env . При этом основные
   переменные должны быть использованы в рамках коллеции и не дублироваться в env 
4. Если в тестируемом проекте есть группировка методов на категории/контроллеры/группы,
   необходимо соблюдать такую же иерархию и в коллекции
5. На каждый метод должна создаваться отдельная папка в коллекции. Название такой папки
   должно дублировать название метода API. Такое название должно быть заполнено в верхнем
   регистре
6. Для тестирования метода API необходимо создать набор запросов:
   - VALID - корректный запрос на сервер в соответствии с документацией
   - EMPTY - запрос на сервер без каких либо параметров
   - INCORRECT DATA VALUE - запрос на сервер с некорректными данными параметра VALUE . Количество запросов INCORRECT DATA
   - SECURITY - запрос на сервер без авторизации
7. Все значения используемые в параметрах запроса должны быть сохранены в variables
   коллекции. Значения должны быть названы в формате entityValue , где entity название
   используемой сущности, а value название поля из модели метода.

# Postman Scripts 

- [Тестовые сценария](https://learning.postman.com/docs/writing-scripts/script-references/test-examples/)

#### парсить response

​	Вариант 1: <code>const jsonData = pm.response.json();</code>

​	Вариант 2: <code>const jsonResp = JSON.parse(responseBody);</code>

#### парсить request

​	Вариант 1 [body > form-data]: <code>const reqData = request.data;</code> 

​	Вариант 2 [params]: <code>const reqData = pm.request.url.query.toObject();</code>

​	Вариант 3 [body > raw > json]: <code>const jsonReq = JSON.parse(request.data);</code>

#### создание запросов

GET запрос

```javascript
pm.sendRequest(“https://postman-echo.com/get”, function (err, res) {
    console.log(err);
    console.log(res);
});
```

POST запрос [raw]

```javascript
let data = {
    url: "https://url",
    method: "POST",
    body: { mode: "raw", 
            raw: JSON.stringify({ key: “value” })}
};

pm.sendRequest(data, function (err, res) {
    console.log(err);
    console.log(res);
});
```

POST запрос [form-data]

```javascript
let data = {
    url: "https://url",
    method: "POST",
    body: { mode: "formdata,
           formdata: [{
           "key": "key_value",
           "value": "value"},
    	   {"key": "key_value",
           "value": "value"}]
			}
};

pm.sendRequest(data, function (err, res) {
    console.log(err);
    console.log(res);
});
```

#### переменные

глобальные переменные

```javascript
pm.globals.set(“key”, “value”);
pm.globals.get(“key”);
```

переменные окружения

```javascript
pm.environment.set(“key”, “value”);
pm.environment.get(“key”);
```

локальные переменные

```javascript
pm.variables.set(“key”, “value”);
pm.variables.get(“key”); // если нет локальной, будет искать на уровне выше
```

#### Формат и статус

```javascript
pm.test("Status is ok, response is json", function () {
    pm.response.to.be.ok;
    pm.response.to.be.json;
});
```

#### схемы json объекта tv4 (TinyValidator) 

```json
{
    "profile" : {
        "userId": {{userId}},
        "username": "Bob",
        "scores": [1, 2, 3, 4, 5],
        "age": 21,
        "rating": {"min": 20, "max": 100}
    }
}
```

```javascript
// получаем профиль из ответа
var profile = pm.response.json().data.profile;

// описываем схему модели
var scheme = {
    // указываем тип объекта
    "type": "object",
    // указываем обязательные свойства
    "required": ["userId", "username"],
    // описываем свойства
    "properties": {
        "userId": {"type": "integer"},
        "username": {"type": "string"},
        "age": {"type": "integer"},
        // описываем массив
        "scores": {
            "type": "array",
            // тип элементов
            "items": {"type": "integer"}
        },
        // описываем вложенный объект
        "rating": {
            "type": "object",
            "properties": {
                "min": {"type": "integer"},
                "max": {"type": "integer"}
            }
        }
    }
};

pm.test('Schema is valid', function() {
    // валидируем объект profile с помощью правил из scheme
    var isValidScheme = tv4.validate(profile, scheme, true, true);

    // javascriptожидаем, что результат валидации true
    pm.expect(isValidScheme).to.be.true;
});
```

# Postman Connect proxy

#### захват HTTP запросов [подробнее](https://learning.postman.com/docs/sending-requests/capturing-request-data/capturing-http-requests/)

**На стороне Postman**:

1. Создать отдельную коллекцию, где будут сохраняться перехваченные http запросы

2. Выбрать ![Значок захвата](https://assets.postman.com/postman-docs/icon-capture.jpg#icon) Capture reqests в нижнем коллантитуле Postman

3. В окне Capture requests выбрать Via Proxy

4. В правом верхнем углу кликнуть по ссылке Enable proxy

5. Ввести порт или оставить 5555

6. Нажать кнопку Enable proxy

7. В окне Capture requests в форме Start a proxy session

   - поставить галочкy Save Responses for Reqests 
   - в выпадающем списке Save reqests to a colllection выбрать созданную колекцию из 1 пунк

   Дополнительно:

   - поставить галочкy Capture Cookies, если необходимо записывать файлы cookie в дополнение к запросам
   - Organize requsts by - можно упорядочить запросы по domain name, endpoints или оба варианта.
   - В настройках входящих запросов можно выбрать дополнительные параметры 
     - URL must contain - захватывать только URL-адреса, содержащие указанную строку или регулярное выражение. 
     - URL cannot contain - не захватывать URL-адреса, содержащие указанную строку или регулярное выражение. 
     - Methods - фиксировать только выбранные методы
     - Resources - исключите запросы с ответами изображения, JS или CSS. 

8. Нажать кнопку Start Capture

**На стороне клиента:**

1. Перейти в параметры > Сеть и Интернет > Настройки Прокси > Вручную
   - В поле адрес ввести: http://localhost
   - В поле порт ввести: 5555 (или указанный из пункта 5)

**Отключить захват трафика:**

- Postman - Перейти на вклаку сессии захватов запросов > нажать кнопку stop > нажать на PROXY IS ON рядом с названием сессии > нажать кнопку Disable proxy
- ПК : параметры > Сеть и Интернет > Настройки Прокси >  отключить настройку вручную

#### захват HTTPS запросов [подробнее](https://learning.postman.com/docs/sending-requests/capturing-request-data/capturing-https-traffic/#installing-the-security-certificate-on-windows)

1. Установить сертификат Postman `C:\Users\<user>\AppData\Roaming\Postman\proxy`
2. Добавляем сертификат в Браузер
3. Перезапустить Postman

#### Захват через расширение **Interceptor** Postman [подробнее](https://learning.postman.com/docs/sending-requests/capturing-request-data/interceptor/)

Postman Interceptor — это расширение Chrome.

1. Создать отдельную коллекцию, где будут сохраняться перехваченные запросы
2. Загрузить Interceptor в Интернет-магазине Chrome.
3. Выбирать  ![Значок захвата](https://assets.postman.com/postman-docs/icon-capture.jpg#icon) Capture reqests в нижнем колонтитуле Postman. 
4. В окне Capture reqests выбрать Via  Interceptor
   - выбрать install Interceptor Bridge , чтобы загрузить Bridge
   - в выпадающем списке Save reqests to a colllection выбрать созданную колекцию из 1 пунк
   - поставить галочкy Capture Cookies, если необходимо записывать файлы cookie в дополнение к запросам
5. Нажать кнопку Start Capture

