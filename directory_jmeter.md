# Установка JMeter 
- [краткое руководство](https://coderlessons.com/tutorials/java-tekhnologii/vyuchi-jmeter/jmeter-kratkoe-rukovodstvo)
- [Учебник JMeter](https://coderlessons.com/tutorials/kachestvo-programmnogo-obespecheniia/uchebnik-jmeter/2-zagruzka-i-ustanovka#:~:text=%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0%20JMeter%20%D1%87%D1%80%D0%B5%D0%B7%D0%B2%D1%8B%D1%87%D0%B0%D0%B9%D0%BD%D0%BE%20%D0%BF%D1%80%D0%BE%D1%81%D1%82%D0%B0%20%D0%B8,%D0%9F%D1%80%D0%BE%D1%81%D1%82%D0%BE%20%D1%80%D0%B0%D1%81%D0%BF%D0%B0%D0%BA%D1%83%D0%B9%D1%82%D0%B5%20%D0%B8%20%D0%B2%D1%81%D0%B5%20%D0%B3%D0%BE%D1%82%D0%BE%D0%B2%D0%BE!)

### Windows
1. Проверить, установлен ли пакет java на компьютере <code>пуск > параметры > приложение</code>. Если не установлен, то перейти на сайт [Java](https://www.oracle.com/java/technologies/downloads/#java8-windows) и установить пакет.
2. Перейти на сайт [JMeter](https://jmeter.apache.org/download_jmeter.cgi) и скачать архив *apache.jmeter-0.0..zip*(для windows)
3. Разархивировать файл zip в каталог где будет лежать JMeter. Готово! JMeter установлен!
   
#### Описание каталогов
- **/bin** - содержит файл сценария JMeter для запуска JMeter
- **/docs** - файлы документации JMeter
- **/extras** - дополнительные файлы, связанные с ant
- **/lib/** - содержит необходимую библиотеку Java для JMeter
- **/lib/ext** - содержит основные файлы jar для JMeter и протоколы
- **/lib/junit** - библиотека Junit, используемая для JMeter
- **/printable_docs** - JMeter Руководство пользователя
  
#### Запуск JMeter
3 режима запуска JMeter:
1. **GUI Mode** (в режиме графического интерфейса)   
    *bin/ApacheJMeter.jar*
    *bin/JMeter.bat*
2. **Режим сервера** (в режиме без графического интерфейса)  
    Режим сервера используется для распределенного тестирования.  
    *Открыть Командную строку > Перенести файл bin/jmeter-server.bat*
4. **Режим командной строки**  
    JMeter в режиме графического интерфейса потребляет много компьютерной памяти. Для сохранения ресурса JMeter можно запустить без графического интерфейса.  
    *В командной строке ввести <code>$jmeter -n -t testPlan.jmx - l log.jtl -H 127.0.0.1 -P 8000</code>*
    
### Linux
- Установка JMeter на Linux аналогично как и на Windows
- Запуск JMeter:
   - сценария jmeter — запустить файл JMeter (в режиме GUI по умолчанию)
   - скрипта jmeter-server — запустить файл JMeter в режиме сервера (вызывает скрипт JMeter с соответствующими параметрами)
   - jmeter.sh — очень простой скрипт JMeter без опций JVM.
   - mirror-server.sh — запуск зеркальный сервер JMeter в режиме без графического интерфейса
   - shutdown.sh — запуск клиента Shutdown, чтобы корректно остановить экземпляр без графического интерфейса
   - stoptest.sh — запуск клиента выключения, чтобы внезапно остановить экземпляр без графического интерфейса

### Установка JMeter Plugins Manager
JMeter Plugins Manager - помогает устанавливать плагины вручную.  

1. Скачать файл [plugins-manager.jar](https://jmeter-plugins.org/install/Install/)
2. Поместить файл *..\lib\ext\plugins-manager.jar*

### Дополнительные плагины
Открыть JMeter Plugins Manager *options > Plugins Manager*  
Установить следующие плагины [подробнее](https://www.blazemeter.com/blog/top-ten-jmeter-plugins):
- Custom Thread Groups
- Flexible File Writer
- PerfMon Servers Performance Monitoring
-  Custom JMeter Functions
- 3 Basic Graphs
- JSON Plugins
- Throughput Shaping Timer
- Dummy Sampler
- Distribution/Percentile Graphs 
- BlazeMeter step-by-step Debugger
- KPI vs KPI graphs
- 5 Additional Graphs 

