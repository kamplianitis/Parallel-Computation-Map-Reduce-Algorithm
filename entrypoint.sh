#!/bin/bash

if [ -z "$1" ]; then
    python manage.py makemigrations
    python manage.py migrate
    python manage.py runserver 0.0.0.0:$DJANGO_PORT
fi
