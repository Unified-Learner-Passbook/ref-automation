#!/bin/bash
cd ;
sudo mkdir /mongo_data
sudo mkdir /es_data
sudo mkdir /graylog_journal
sudo chmod 777 -R /mongo_data
sudo chmod 777 -R /es_data
sudo chmod 777 -R /graylog_journal
echo -n "Enter Password: qwertyuiop123456" && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
