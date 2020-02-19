# SETUP

## Installation

This project uses a containerized mysql database, node server, and mysql admin client. 
Follow these steps to set up your own demo database that lets you perform sigma client operations.

### 1. Create the infrastructure

```bash
make start
```

On first time docker infrastructure creation, nodemon make some time to initialize. Just check the logs:

```bash
make logs
```

wait for the line :

node-prisma   | [nodemon] starting `node app.js`

### 2. Introspect the database

```bash
make introspect
```

### 3. Test the app endpoint

```bash
curl --location --request GET 'localhost:3000/' 
``` 

### 4. Show the app logs

```bash
make logs
``` 


## Troubleshoot

Show Makefile help

```bash
make 
``` 

Connect to node container

```bash
make connect
``` 
