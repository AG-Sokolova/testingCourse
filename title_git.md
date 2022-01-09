 # HomeWork 1. Git Bash  
 1. посмотреть где я  
 <code> $ pwd </code>
 
 2. создать папку  
 <code> $ mkdir testing_1 </code>
 
 3. зайти в папку  
 <code> $ cd !$ </code>
 
 4. создать 3 папки  
 <code> $ mkdir t_1 t_2 t_3 </code>
 
 5. зайти в любую папку  
 <code> $ cd t_2 </code>
 
 6. создать 5 файлов (3 txt, 2 json)  
 <code> $ touch t1.txt t2.txt t3.txt j1.json j2.json </code>
 
 7. создать 3 папки  
 <code> $ mkdir test1 test2 test3 </code>
 
 8. вывести список содержимого папки  
 <code> $ ls - вывести список содержимого папки, ls -f - вывести список содержимого включая скрытые файлы </code>
 
 9. открыть любой txt файлов  
 <code> $ vim t1.txt </code>
 
 10. написать любой текст в файл  
 <code> нажимаем клавишу i переходим в режим редактирования (insert), вводим текст </code>
 11. сохранить и выйти  
 <code> esc - переключается на режим ввода команд, :wq затем enter - сохранить и выйти </code>
 
 12. выйти из папки на уровень выше  
 <code> $ cd .. </code>
 
 13. переместить любые 2 файла, которые вы создали, в любую другую папку  
 <code> $ mv {t2.txt,t3.txt} /d/git_test/testing_1/t_2/test1 </code>
 
 14. скопировать  любые 2 файла, которые вы создали, в любую другую папку  
 <code>$ cp {j1.json,j2.json} test2 </code>
 
 15. найти файл по имени  
 <code> $ find -name j2.json </code>
 
 16. посмотреть содержимое в реальном времени (команда grep) изучите как она работает  
  <code> $ tail -f t1.txt      ( или less t1.txt, нажать shift+F - отслеживает, ctrl+c - остановить, Q - выйти.) </code>
 
 17. вывести несколько первых строк из текстового файла  
 <code> $ head -n 2 t1.txt </code>
 
 18. вывести несколько последних строк из текстового файла  
 <code> $ tail -n 2 t1.txt </code>
 
 19. посмотреть содержимое длинного файла (команда less) изучить как она работает  
 <code> $ cat t4.txt (или less t4.txt) </code>
 
 20. вывести дату и время  
 <code> $ date (или $ date +"%H:%M %d/%m/%Y")  </code>
 
 21. отправить http запрос на сервер http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000  
 <code> $ curl "http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000" </code>
 
 22. Написать скрипт, который выполнит автоматически пункты 3,4,5,6,7,8,13  
**шаг 1**: создать файл с раширением .sh (Shell Script)  
**шаг 2**: в файл ввести 
 ```
        #!/bin/bush                                          // указываем оболочку для выполнения скрипта 
        cd testing_2                                         // переходим в папку</em>     
        mkdir folder_1 folder_2 folder_3                     // создаем папки</em>     
        cd folder_2                                          // переходим в папку</em>   
        touch t_1.txt t_2.txt t_3.txt j_1.json j_2.json      // создаем файлы</em>     
        mkdir subFolder_1 subFolder_2 subFolder_3            // создаем папки</em>    
        ls                                                   // просматриваем содержимое папок</em>    
        mv {t_2.txt,j_1.json} subFolder_2                    // перемещаем файл в другую папку</em>    
  ```
   &ensp; &ensp; &ensp; &ensp;**шаг 3**:   
         &ensp; &ensp; &ensp; &ensp;&ensp; вариант 1 - можно несколько раз кликнуть по файлу со скриптом  
         &ensp; &ensp; &ensp; &ensp;&ensp; вариант 2 - запускаем git bash в директории где лежит файл и прописываем команду sh run.sh"  
 
 
 # HomeWork 2. Repositories
 
 ### JSON
 1. Создать внешний репозиторий c названием JSON    
 <code>  https://github.com/  → кнопка: New  → ввести в поле "Repository name": JSON → кнопка: create Repository </code>
  
 2. Клонировать репозиторий JSON на локальный компьютер   
 <code> открыть папку → открыть GitBash →  клонировать репозиторий:  $ git clone https://github.com/AnastasiaSokolov/JSON.git </code>
 
 3. Внутри локального JSON создать файл “new.json”  
 <code> перейти в папку JSON: $ cd JSON/ → создать файл: $ touch new.json </code>
 
 4. Добавить файл в гит  
 <code> $ git add new.json </code>
 
 5. Закоммитить файл  
 <code> $ git commit -m "add new.json </code>
 
 6. Отправить файл на внешний GitHub репозиторий   
 <code> $ git push origin main </code>
 
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
 <code> $ git add  new.json </code>  
 <code> $ git commit -m "add new.json" </code>  
 <code> $ git push origin main </code>  
 
 9. Создать файл preferences.json  
 <code> $ touch preferences.json </code>
 
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
 <code> $ touch skills.json </code>    
 <code> $ vim skills.json → i → ввести текст: </code>   
  ```
  {
        "skills": ["Tenacity", "Stress resistance", "Ability to resolve conflicts", "ability to catch a mouse"]
}
  ```
  &ensp;  &ensp;  &ensp;  <code> → esc → :wq + enter </code>  
 
 12. Отправить сразу 2 файла на внешний репозиторий.  
 <code> $ git add . </code>  
 <code> $ git commit -m "add preferences.json, skills.json" </code>  
 <code> $ git push origin main </code>  
 
 13. На веб интерфейсе создать файл bug_report.json.  
 <code> https://github.com/  → перейти в репозиторий  JSON →  вып.список: Add file → Create new file → ввести: bug_report.json </code>  
 
 14. Сделать Commit changes (сохранить) изменения на веб интерфейсе.  
 <code> commit new file: Create bug_report.json  → кнопка: Commit new file </code>  
 
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
 <code> commit new file: add modify bug_report.json   → кнопка: Commit changes </code>  
 
 17. Синхронизировать внешний и локальный репозиторий JSON  
 <code> $ git pull origin main </code>  
 
 # HomeWork 3. Branch
 
