# Тестовое задание для Техгид

### Набор из трёх bash-скриптов:
#### 1. setup.sh — создаёт пользователей и рабочую директорию с файлами
  Для запуска использовать: 
  ``` 
  bash setup.sh
  ```
  Проверить что пользователи были добавлены можно при помощи:
  ```
  cut -d: -f1 /etc/passwd
  ```
#### 2. monitor.sh — считает количество .elf файлов у каждого пользователя и записывает в лог
  Для запуска использовать: 
  ``` 
  bash setup.sh
  ```
Чтобы скрипт запускался каждые 10 минут:
```
crontab -e
```
Добавить строку:
```
*/10 * * * * bash /путь/к/monitor.sh
```
#### 3. cleanup.sh — удаляет пользователей, рабочую директорию и журнал
Для запуска использовать:
```
bash cleanup.sh
```
