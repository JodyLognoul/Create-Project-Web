#!/bin/bash

# Create our new project directory
cd ~/Bureau && mkdir $1 && cd $1


# Copy the template directory into the new one
cp -R ~/Dev/Template/* .
 
# Pull in jQuery
curl http://code.jquery.com/jquery.js > ./libs/js/jquery.js

# Create tmp directory 
mkdir ./tmp && cd ./tmp

# Get Bootstrap from http://twitter.github.com
curl http://twitter.github.com/bootstrap/assets/bootstrap.zip > ./bootstrap.zip

# Unzip archive
unzip ./bootstrap.zip && cd ./bootstrap

# Copy bootstrap files
cp ./css/bootstrap.min.css ../../libs/css/
cp ./js/bootstrap.min.js ../../libs/js/
cp ./img/glyphicons-halflings.png ../../libs/img/
cp ./img/glyphicons-halflings-white.png ../../libs/img/

# Get out from the /tmp dir and delete it
cd ../.. && rm -R ./tmp

# Open it with ST2
subl .
