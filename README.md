# club-website
Website for the Husky Coding Project

Tools: Docker, Django, PostgresSQL
Future Tools for production: Nginx, Gunicorn

You should see the website at http://localhost:8000

# Env file
Paste the following into ./club-website/.env.dev
```
DEBUG=1
SECRET_KEY=django-insecure-a#v-1fwcj%xf(#taoo8c+=du&&b0dvm(=i5u^(ol1!ki==cxwd
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]
SQL_ENGINE=django.db.backends.postgresql
SQL_DATABASE=hcpwebsite_db_dev
SQL_USER=hcpwebsite
SQL_PASSWORD=hcpwebsite
SQL_HOST=db
SQL_PORT=5432
DATABASE=postgres
```
The production env will have a completely different (SECRET) env file :)

# How to Docker
Verify you have docker and python installed.

To (re)build and run the containers:
```console
# In the ./club-website directory
$ docker-compose up -d --build
```

To run the containers:
```console
# In the ./club-website directory
$ docker-compose up -d
```

Notes:
The first you build the docker containers may take a long time

To stop the containers:
```console
# In the ./club-website directory
$ docker-compose stop
```

