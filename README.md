# Docker template with Django 4.0 + Nginx + MariaDB
This project is a basic (understand, it does nothing) template with the
following containers:
* webapp : Django 4 empty project + UWSGI web server
* proxy : Nginx frontend web proxy
* db : MariaDB backend database server

This template could serve as a base for other full-featured projects that
would require these fundamentals bricks.

Some deployment specific configuration should be performed via the `.env`
file. In this template, the following settings are defined:
* `SECRET_KEY` (used by webapp): specifies the Django `SECRET_KEY` value
* `MYSQL_ROOT_PASSWORD` (used by db and webapp): specifies the MariaDB Root 
  password
* `MYSQL_DATABASE` (used by db and webapp): specifies the MariaDB database 
  name
* `MYSQL_USER` (used by db and webapp): specifies the MariaDB user name for
  the `MYSQL_DATABASE`
* `MYSQL_PASSWORD` (used by db and webapp): specified the MariaDB password for
  the user `MYSQL_USER

`.env.sample` provides a sample `.env` configuration file.