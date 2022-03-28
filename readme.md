# Phpstorm 2021.3.3 with xdebug

I always have trouble with setting up debugging i phpstorm with my own docker containers, so this
little project illustrate, what is need.

## cli
Phpstorm support for 
[debugging your cli script and unittests](https://www.jetbrains.com/help/phpstorm/2021.3/docker.html#run-containers) 
 with your Dockerfile works out of the box.

## web pages
When it comes to debugging web page in your own container it does not work out off the box, 
but instead the configurations tells you what you need to setup. 
But with docker setup it always gets tricky for me.
So here is my setup:
- make a docker like the one in this project which has the xdebug extension
- make a xdebug.ini which sets the `xdebug.client_host` to the gateway ip of the docker. 
  Use `docker network inspect bridge` which lists your gateway address.
- make a run/debug config in phpstorm with mount and port mappings
- run the container
- set a breakpoint
- refresh your browser
