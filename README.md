# supermarket
Supermarket (old scripts: begin of 2008)

# Создание базы данных и таблиц в XAMPP под Windows
Учитываем, что в XAMPP, пароль рута в MySQL, пустая строка.

1. Создаём БД:
   * create schema supermarket default charset utf8;

2. Импортируем дамп (файл dump.sql):
   * Выходим из консоли mysql. Вводим в командной строке:
      * mysql -u root supermarket  < c:\xampp\www\supermarket\dump.sql
      * Тут предполагается, что проект расположен в папке "c:\xampp\www\supermarket". Если у вас другой путь, то поправьте.

3. Проверяем таблицы:
   * mysql -u root supermarket
   * MariaDB [supermarket]> show tables;
