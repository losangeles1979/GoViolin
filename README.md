# GoViolin

## This project is the product of Rosie Hamilton
## [Click this link for her Tutorial](https://blog.scottlogic.com/2017/02/28/building-a-web-app-with-go.html)

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt

# HOW I COMPILED THIS WEB PROJECT LOCALLY
### (January 22, 2022 -- Gary D. Ledbetter)
## 1. go build
   this resulted in the following error message

   *go: cannot find main module, but found vendor/vendor.json 
       in C:\Users\User\Go\src\github.com\rosalita\GoViolin
       to create a module there, run: go mod init*

## 2. go mod init
   this worked!

## 3. go mod tidy
   this resulted in the following error message

   *go: inconsistent vendoring in C:\Users\User\Go\src\github.com\rosalita\GoViolin:
        github.com/stretchr/testify@v1.7.0: is explicitly required in go.mod, but not marked as explicit in vendor/modules.txt
        github.com/davecgh/go-spew@v1.1.0: is explicitly required in go.mod, but not marked as explicit in vendor/modules.txt
        github.com/pmezard/go-difflib@v1.0.0: is explicitly required in go.mod, but not marked as explicit in vendor/modules.txt
        gopkg.in/yaml.v3@v3.0.0-20200313102051-9f266ea9e77c: is explicitly required in go.mod, but not marked as explicit in vendor/modules.txt
        To ignore the vendor directory, use -mod=readonly or -mod=mod.*
        **To sync the vendor directory, run:
                go mod vendor**

## 4. go mod vendor
   this worked!

## 5. go build
   successfully built GoViolin.exe !!!

GoViolin.exe worked when launched in the local build directory,
where all the other program files and resources were located.
It also successfully run in FireFox with localhost:8080

But of course it COULD NOT RUN when relocated to other subdirs, 
e.g. C:\TEMP4 -- same problem I had with the news-demo web app.

