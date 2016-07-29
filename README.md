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
$ cd github.com/seizadi/apipgo/
$ ../../../../bin/bee new apigo
[INFO] Creating application...
...
2016/07/28 12:10:29 [SUCC] New application successfully created!
```

Run base project for test...
```bash
$ cd github.com/seizadi/apipgo/
$ ../../../../bin/bee run
....
2016/07/28 12:10:44 [asm_amd64.s:1998][I] http server Running on :8080
```

#### Deploy Environment
Get the packages from repo and run it.
```
TODO - Get godep to work to pull in BeeGo automatically
```

```bash
Create base GOPATH target
```bash
$ cd /opt/apigo
$ mkdir cloneapi
$ cd cloneapi
$ export GOPATH=`pwd`
$ go get github.com/astaxie/beego
$ go install  github.com/astaxie/beego
$ go get github.com/beego/bee
$ go get github.com/seizadi/apigo
$ ../../../../bin/bee run
....
2016/07/28 17:58:02 [INFO] ./apigo is running...
2016/07/28 17:58:02 [asm_amd64.s:1998][I] http server Running on :8080

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
$ ../../../../bin/bee run -h
usage: run [appname] [watchall] [-main=*.go] [-downdoc=true]  [-gendoc=true]  [-e=Godeps -e=folderToExclude]  [-tags=goBuildTags]
```
The standard default is:
```bash
$ ../../../../bin/bee run
```
The watchall option might be useful if you want to rebuild the project if any file changed

```bash
$ ../../../../bin/bee run
$ ../../../../bin/bee run watchall
```

### Production
Install in production cover various configurations standalone, nginx, https/cert...
In developement you can change the mode by:
```go
beego.RunMode = "prod"
```
Or change it in conf/app.conf:
```bash
runmode = prod
```
The application is built in the top level project as application name 'apigo'. You just need to copy this file to the server and run it. There are also include static files, configuration files and templates, so these three folders also need to be copied to server while deploying.
```bash
$ mkdir /opt/app/apigo
$ cp apigo /opt/app/apigo
$ cp -fr views /opt/app/apigo
$ cp -fr static /opt/app/apigo
$ cp -fr conf /opt/app/apigo
```
Here is the folder structure in /opt/app/apigo:
```bash
.
├── conf
│   ├── app.conf
├── static
│   ├── css
│   ├── img
│   └── js
└── views
    └── index.tpl
├── beepkg
```
#### Stand alone Deployment

```bash
$ cd /opt/app/apigo
$ nohup ./apigo &
```
#### Service Deployment
```
TODO - Need guide to run it directly so it responds to 'service apigo [start/stop/restart]'
```
Here is the Beego guide for wrapping the application as a service using Supervisord utility: http://beego.me/docs/deploy/supervisor.md

#### Deployment with Nginx
Here is the Beego guide for the configuration file for running it with nginx:
http://beego.me/docs/deploy/nginx.md

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
