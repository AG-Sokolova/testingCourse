 # HomeWork 1. Git Bash  
1. посмотреть где я  

 ```
 $ pwd 
 ```

2. создать папку  

 ```
 $ mkdir testing_1
 ```

3. зайти в папку  

 ```
 $ cd !$ 
 ```

4. создать 3 папки  

 ```
 $ mkdir t_1 t_2 t_3 
 ```

5. зайти в любую папку  

 ```
 $ cd t_2 
 ```

6. создать 5 файлов (3 txt, 2 json)  

 ```
 $ touch t1.txt t2.txt t3.txt j1.json j2.json 
 ```

7. создать 3 папки  

 ```
 $ mkdir test1 test2 test3 
 ```

8. вывести список содержимого папки  

 ```
 $ ls - вывести список содержимого папки
 
 $ ls -f - вывести список содержимого включая скрытые файлы 
 ```

9. открыть любой txt файлов  

 ```
 $ vim t1.txt 
 ```

10. написать любой текст в файл 

```
нажимаем клавишу i переходим в режим редактирования (insert), вводим текст 
```

11. сохранить и выйти  

```
 esc - переключается на режим ввода команд, :wq затем enter - сохранить и выйти 
```

12. выйти из папки на уровень выше  

```
 $ cd .. 
```

13. переместить любые 2 файла, которые вы создали, в любую другую папку  

```
 $ mv {t2.txt,t3.txt} /d/git_test/testing_1/t_2/test1 
```

14. скопировать  любые 2 файла, которые вы создали, в любую другую папку  

```
 $ cp {j1.json,j2.json} test2 
```

15. найти файл по имени  

```
 $ find -name j2.json 
```

16. посмотреть содержимое в реальном времени (команда grep) изучите как она работает  

  ```
  $ tail -f t1.txt ( или less t1.txt, нажать shift+F - отслеживает, ctrl+c - остановить, Q - выйти.)
  ```

17. вывести несколько первых строк из текстового файла  

```
 $ head -n 2 t1.txt 
```

18. вывести несколько последних строк из текстового файла  

```
 $ tail -n 2 t1.txt 
```

19. посмотреть содержимое длинного файла (команда less) изучить как она работает  

```
 $ cat t4.txt (или less t4.txt) 
```

20. вывести дату и время  

```
 $ date (или $ date +"%H:%M %d/%m/%Y") 
```

21. отправить http запрос на сервер http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000  

```
 $ curl "http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000" 
```

22. Написать скрипт, который выполнит автоматически пункты 3,4,5,6,7,8,13  

​	**шаг 1**: создать файл с раширением .sh (Shell Script)  

​	**шаг 2**: в файл ввести 

 | код                                             | комментарий                               |
 | ----------------------------------------------- | ----------------------------------------- |
 | #!/bin/bush                                     | указываем оболочку для выполнения скрипта |
 | cd testing_2                                    | переходим в папку                         |
 | mkdir folder_1 folder_2 folder_3                | создаем папки                             |
 | cd folder_2                                     | переходим в папку                         |
 | touch t_1.txt t_2.txt t_3.txt j_1.json j_2.json | создаем файлы                             |
 | mkdir subFolder_1 subFolder_2 subFolder_3       | создаем папки                             |
 | ls                                              | просматриваем содержимое папок            |
 | mv {t_2.txt,j_1.json} subFolder_2               | перемещаем файл в другую папку            |

​		**шаг 3**:   

​			вариант 1 - можно несколько раз кликнуть по файлу со скриптом  
​			вариант 2 - запускаем git bash в директории где лежит файл и прописываем команду sh run.sh"  


 # HomeWork 2. Repositories

1. Создать внешний репозиторий c названием JSON    

  ```
  https://github.com/  → кнопка: New  → ввести в поле "Repository name": JSON → кнопка: create Repository 
  ```

2. Клонировать репозиторий JSON на локальный компьютер   

 ```
 открыть папку → открыть GitBash →  клонировать репозиторий:  $ git clone https://github.com/AnastasiaSokolov/JSON.git 
 ```

3. Внутри локального JSON создать файл “new.json”  

 ```
 перейти в папку JSON: $ cd JSON/ → создать файл: $ touch new.json 
 ```

4. Добавить файл в гит  

 ```
 $ git add new.json 
 ```

5. Закоммитить файл  

 ```
 $ git commit -m "add new.json 
 ```

6. Отправить файл на внешний GitHub репозиторий   

 ```
 $ git push origin main 
 ```

7. Отредактировать содержание файла “new.json” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате JSON    
   <code> $ vim new.json → i → ввести текст: </code>   

 ```
{
        "owner": {
                "surname": "Sokolova",
                "name": "Anastasia",
                "age": 27,
                "country": "Russia",
                "city": "Saratov"
        },
        "pet": {
                "name_of_cat": "Vsevolod",
                "breed": "siberian",
                "sex": "m",
                "color": ""
        }
}
 ```
 &ensp;  &ensp;  &ensp;  <code> → esc → :wq + enter </code>

8. Отправить изменения на внешний репозиторий  

 ```
  $ git add  new.json 
  $ git commit -m "add new.json"  
  $ git push origin main 
 ```

9. Создать файл preferences.json  

 ```
 $ touch preferences.json 
 ```

10. В файл preferences.json добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, страна которую хотели бы посетить) в формате JSON.  
     <code> $ vim preferences.json → i → ввести текст:  </code>  

 ```
 {
        "hobby": "run after the red dot from the laser pointer",
        "eat": ["fish", "chicken", "honey", "condensed milk"],
        "favorite_movie": "Tom and Jerry",
        "jubilee_season": "autumn"
}
 ```
  &ensp;  &ensp;  &ensp;  <code> → esc → :wq + enter </code>  

11. Создать файл sklls.json добавить информацию о скиллах которые будут изучены на курсе в формате JSON  

```
$ touch skills.json   
```

 <code> $ vim skills.json → i → ввести текст: </code>   

  ```
  {
        "skills": ["Tenacity", "Stress resistance", "Ability to resolve conflicts", "ability to catch a mouse"]
}
  ```
  &ensp;  &ensp;  &ensp;  <code> → esc → :wq + enter </code>  

12. Отправить сразу 2 файла на внешний репозиторий.  

```
 $ git add . 
 $ git commit -m "add preferences.json, skills.json"  
 $ git push origin main 
```

13. На веб интерфейсе создать файл bug_report.json.  

```
https://github.com/  → перейти в репозиторий  JSON →  вып.список: Add file → Create new file → ввести: bug_report.json
```

14. Сделать Commit changes (сохранить) изменения на веб интерфейсе.  

```
commit new file: Create bug_report.json  → кнопка: Commit new file 
```

15. На веб интерфейсе модифицировать файл bug_report.json, добавить баг репорт в формате JSON.  
     <code> открыть файл bug_report.json в режиме редактирования →  ввести: </code>  

   ```
   {
        "Project": "Vadim Ksendzov's course",
        "Moduls": "JSON",
        "id": "1",
        "Title": "The files new.json, preferences.json, sklls.json describe information about the pet",
        "Priority": "high",
        "Status": "new",
        "Description": "step: 1.open files",
        "ActualResult": "animal information",
        "ExpectedResult": "personal information",
        "Attachment": "",
        "Environment": "GitHub",
        "AssignedTo": "",
        "Version": "",
        "QA": "Anastasia Sokolova"
}
   ```

16. Сделать Commit changes (сохранить) изменения на веб интерфейсе.  

```
 commit new file: add modify bug_report.json   → кнопка: Commit changes 
```

17. Синхронизировать внешний и локальный репозиторий JSON  

```
$ git pull origin main
```



 # HomeWork 3. Branch
1. На локальном репозитории сделать ветку для: Postman  

 ```
  $ git branch postman
 ```

2. На локальном репозитории сделать ветку для: Jmeter  

 ```
  $ git branch jmeter
 ```

3. На локальном репозитории сделать ветку для: Check Lists  

 ```
 $ git branch check-list 
 ```

4. На локальном репозитории сделать ветку для: Bug Reports  

 ```
  $ git branch bug-report 
 ```

5. На локальном репозитории сделать ветку для: SQL  

 ```
 $ git branch sql 
 ```

6. На локальном репозитории сделать ветку для: Charles  

```
$ git branch charles 
```

7. На локальном репозитории сделать ветку для: Mobile testing  

```
$ git branch mobil-testing
```

8. Запушить все ветки на внешний репозиторий  

```
$ git push origin postman jmeter check-list bug-report sql charles mobil-testing
```

9. В ветке Bag Reports сделать текстовый документ со структурой баг репорта  

```
 перейти на ветку Bug report: $ git checkout bug-report 
 создать текстовый документ: $ touch BugReportStructure.md
 внести изменения в текстовый документ: $ vim BugReportStructure.md 
```

 <code> сохранить изменения: esc → :wq +enter </code>

10. Запушить структуру багрепорта на внешний репозиторий  

```
  $ git add . 
  $ git commit -m "add file BugReportStructure.md" 
  $ git push origin bug-report
```

11. Вмержить ветку Bag Reports в Main  

```
   $ git checkout main 
   $ git merge bug-report 
```

12. Запушить main на внешний репозиторий  

```
  $ git push origin main 
```

13. В ветке CheckLists набросать структуру чек листа.  

```
 https://github.com/  → перейти в репозиторий testingCourse → из Main перейти на ветку check-list → Add file → Create new file → ввести: CheckListStructure.md → commit new file: add file CheckListStructure.md   → кнопка: Commit new file 
```

14. На внешнем репозитории сделать Pull Request ветки CheckLists в main  

```
 кнопка: compare & pull request → проверить ветки → Ввести комментарий "add file CheckListStructure.md" →  кнопка: create pull request  →  кнопка: merge pull request →  кнопка: Confirm merge 
```

15. Синхронизировать Внешнюю и Локальную ветки Main  

```
  $ git pull origin main
```

 
