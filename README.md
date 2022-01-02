# club-website
Website for the Husky Coding Project

Tools: Docker, Django, PostgresSQL
Future Tools for production: Nginx, Gunicorn

You should see the website at http://localhost:8000

To initialize your environment follow the directions below:

## Env file
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

## How to Docker
Verify you have docker and python installed.

To (re)build and run the containers:
```console
# In the ./club-website directory
$ docker-compose up -d --build

# To just run the containers, use:
$ docker-compose up -d
```

Notes:
 - The first you build the docker containers may take a long time

To stop the containers:
```console
# In the ./club-website directory
$ docker-compose stop
```

## Managing data for database
Since we are not using a centralized database, it is going to be tedious...

Note that all of the data for the database is located in the datadump directory. Only push the changes this tar file if you modified the contents of the database and you want everyone else to see your modifications.

To manage the data:
```console
# In the ./club-website directory
$ bash ./scripts/data.sh
```
Enter "load" if you want to initialize your database and "save" if you want the contents of the database to be saved.

Notes:
 - Only load/save if you have stopped the docker containers.

Contact @sidlak-c137 for help with any of these steps :) There may be steps that I missed!
