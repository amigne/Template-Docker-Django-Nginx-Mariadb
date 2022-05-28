#!/bin/bash
python manage.py migrate --noinput
python manage.py collectstatic --noinput
uwsgi --ini conf/uwsgi.ini
