# Logstash
Pulling the image:-
-------------------
docker pull docker.elastic.co/logstash/logstash:7.0.1


Logstash differentiates between two types of configuration:
1. Logstash system settings
2. Pipeline configurations

We use a bind-mounted volume to provide these configurations via the docker run command

Running the image:-
---------------------
Please place your Logstash system settings files in config directory and pipeline config files in pipeline directory under home and run below docker run command to start Logstash container.

docker run -d -it --rm -p 9600:9600 -p 5044:5044 -p 5045:5045 --name=logstash -v ~/pipeline/:/usr/share/logstash/pipeline/ -v ~/config/:/usr/share/logstash/config/ docker.elastic.co/logstash/logstash:7.0.1

Configuration changes:-
----------------------

Any system/pipeline configuration required, modify changes under mounted volume directory and restart container to reflect changes.


Please note that above docker command will start Logstash and exposes three different ports to host machine. Two for tcp listeners as per pipeline configuration and one for Logstash API.



Refference Links:
https://www.elastic.co/guide/en/logstash/current/installing-logstash.html
LogStash Input Plugins:
https://www.elastic.co/guide/en/logstash/6.7/input-plugins.html

Logstash Output Plugin:
https://www.elastic.co/guide/en/logstash/current/output-plugins.html

