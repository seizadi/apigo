# API Webserver

The project has the BeeGo WebServer implementation, as a TODO I will add an AngularJS Framework, not part of initil PoC.

## Deploymentation Guide

### Development
#### Creating base project
Create base GOPATH target
```bash
$ cd $HOME/projects
$ mkdir apigo
$ cd apigo
$ export GOPATH=`pwd`
```
Get BeeGo enviroment
```bash
$ go get github.com/astaxie/beego
$ go install  github.com/astaxie/beego
$ go get github.com/beego/bee
$ bin/bee version
```

Create base project
```bash
$ $ cd src
sc-l-seizadi:src seizadi$ ../bin/bee new apigo
[INFO] Creating application...
...
2016/07/28 12:10:29 [SUCC] New application successfully created!
```

Run base project for test...
```bash
sc-l-seizadi:src seizadi$ cd apigo/
sc-l-seizadi:apigo seizadi$ ../../bin/bee run
....
2016/07/28 12:10:44 [asm_amd64.s:1998][I] http server Running on :8080
```
I could not get this to work on path running a few levels below where it will live when it is checked in under, source control.
```bash
$ cd github.com/seizadi/apipgo/
sc-l-seizadi:apipgo seizadi$ ../../../../bin/bee run
....
2016/07/28 14:01:18 [INFO] Start building...
main.go:4:2: cannot find package "github.com/seizadi/apigo/routers" in any of:
  /usr/local/go/src/github.com/seizadi/apigo/routers (from $GOROOT)
  /Users/seizadi/projects/apigo/src/github.com/seizadi/apigo/routers (from $GOPATH)
2016/07/28 14:01:19 [ERRO] ============== Build failed ===================
```

#### Clone Repo and Setup Environment
Get the repo and setup the environment.
```bash
$ git clone ....
```

#### Initialize Portal
Install and migrate.
```
#### Run Tests
Run all tests before running server.

#### Setup Security

#### Run the Server
Run server development
```bash
$ ....
```

### Production
Install in production cover various configurations standalone, nginx, https/cert...
```bash
$ ...
```

## Implementation Guide

### Create a new Go Server based on this design

```bash
$ ....
```

### Create the databases

```bash
```

### Authentication and Security

### Migrate the DB

```bash
$
```

### Create Controllers
Create controllers for response to the REST requests.

```bash
$
```


### Setup routes

Add the routes for the new resources, note that there is a name space for /api/v1/ to specify the REST version that we are using.

```bash
$ ....
```


## Test it out

### Launch the app

```bash
$ ....
```
