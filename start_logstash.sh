#!/bin/bash
#Author - Bhaskar Balapuram
docker run -d -it --rm -p 9600:9600 -p 5044:5044 -p 5045:5045 --name=logstash -v ~/pipeline/:/usr/share/logstash/pipeline/ -v ~/config/:/usr/share/logstash/config/ docker.elastic.co/logstash/logstash:7.0.1
sleep 5
docker ps


