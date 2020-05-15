
Clone the repository into your working directory.

To build, start up, and log in:

cd to the repository root:
> cd ptolemy-v

1 - Build the containers: (This step takes about 4 minutes on a slow internet connection)

> docker-compose build

2 - Start the containers to initialize the monetdb, postgres, and neo4j databases (This step takes about 2 minutes on a slow internet connection)

> docker-compose run ptolemy bash

Note: Your command prompt will change to 'root@...:/app#') where '...' is the webserver container ID. This prompt indicates that your terminal is now running a bash session in the webserver container.

3 - At the command prompt  complete the custom gem install:
> bundle install

4 - Then, initialize Neo4j:
> rails neo4j:migrate

At this point, you can exit the bash shell running in the webserver container
> exit

Note: Your command prompt will return to normal ...

5 - Initialize monetdb
> docker exec -it ptolemy-v_monetdb_1 bash
(command prompt will change to '[root@..... /]# ' where .... is the container ID)
[root@..... /]# /initialize.sh
[root@..... /]# exit

6 - Initialize postgresql
> docker exec -it ptolemy-v_postgres_1 bash

(command prompt will change to 'bash-5.0#')
bash-5.0#> ./initialize.sh
bash-5.0#> exit

7 - Stop the containers
> docker stop $(docker ps -q)

8 - Start the application
> docker-compose up -d --build

To access the application, point your browser to 'localhost:3000'

From the welcome page, login using these credentials:

email: tester1@test.tst
password: pa55w0rd
