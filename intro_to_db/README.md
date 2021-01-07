# Containerizing the garbage

Come one come all and listen to me sales pitch! In introductory database cources all across the land, teachers have their poor students install mountains of garbage to acomplish simple sql querys. To make matters worse, instead of using a sensable or light weight database backed like sqlite3, they forced these unsuspecting students into using mysql! The terror they felt when they found out how unnecessarily bulky of a backend mysql truely is!

Fear no more oh lowly students, as I have containerized the garbage so you can use your precious drive storage for more usful programs like anything other than phpmyadmin. 


## Overview
You must use the make targets that I have written, or you will lose all your data. When the container starts, it tries to read a database dump called `dump.sql.tar.gz`. When you stop the containers, the make target will dump all the databases in a file then compress it into `dump.sql.tar.gz`. If that file already exists, it will back it up to `dumpbackup.sql.tar.gz**. 

It is **SUPER** inportaint to not interupt the up, kill, or down make targets. Plz advise that ignoring this may result in **LOSS IN ALL DATA**!.

### Prerequisites
Install `docker` and `docker-compose`. If you are going into CS, you should learn how to use both of these, as they are imensly powerful tools. In the event of an emergency plz remain calm and direct any and all questions to the nearest search engine.

### Running
Running is as easy as 

```sh
make up
```

### Stopping
To stop, or kill the containers

```sh
make down # graceful 
make kill # forceful
```

### housekeeping
To delete all the containers, and images (mysql:latest, and phpmyadmin/phpmyadmin:latest)

```sh
make clean
```

### phpmyadmin usage 
Once you launch the containers (`make up`), then you can proceed to http://localhost:5000 where you will be presented with a login page. The default creds are as follows (I'm aware that they are imaginative):

```
username: root
password: password
```

# Maintainer
- John Cunniff | big_J


