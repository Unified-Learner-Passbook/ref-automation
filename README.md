## ref-automation 
There are two ways for the ULP to be deployed on the server 
A. with domain 
B. without domain

## A. For the First case you need to follow below steps 


## Step 1 – Installing Nginx
git clone https://github.com/Unified-Learner-Passbook/ref-automation.git
Go to specific directory where you have clone the repository i.e. ref-automation Then perform the following command
sudo chmod -R +x nginx.sh
export your_domain=<domain_name>  (Example : export your_domain=test.automation.com) 
Then run the nginx.sh file ./nginx.sh

## Step 2 - Register your server to the Domain
Register The Server IP in the domain name in A records and wait for the validation.
Install Certbot
To install certbot for the ubuntu20.04 for nginx use cases follow the below command
sudo apt install certbot python3-certbot-nginx
sudo certbot
Add your mail id in the next step.
Then agree to the terms and conditions by Typing "A" + Enter After that  
certbot will show you domain name you have setup select the appropriate domain name there with number Ex :
Test.automation.com
www.test.automation.com
Then select 1
Select the option redirecting the http to https access and you are done with the SSL certificates

## Step 3 - Setting Up the directories and services
For adding directory for the  monitoring services perform below steps 
sudo chmod +x monitoring.sh

Run the monitoring.sh file by ./monitoring.sh

Then it will stop at the password step Enter and you will receive a root password and add that password in the .env.sample file on line no. 45 in below variables in .env file
 
#monitoring-stack
GRAYLOG_ROOT_PASSWORD_SHA2=<add_root_password_here>
 

After installing certificates to the domain go to specific directory i.e. ref-automation And perform the following command

sudo su -

Then go to specific directory where you have clone the repo :   https://github.com/Unified-Learner-Passbook/ref-automation.git

Run the command : make

It will deploy all the services on the server.

Add the required Entries in the nginx file in below location 
/etc/nginx/sites-enabled/test.conf

####
## B. for the second case without domain follow the below steps  

## Step 1 – Setting Up the directories and services
git clone https://github.com/Unified-Learner-Passbook/ref-automation.git
Go to specific directory where you have clone the repository i.e. ref-automation
For adding directory for the  monitoring services perform below steps 
sudo chmod +x monitoring.sh

Run the monitoring.sh file by ./monitoring.sh

Then it will stop at the password step then Enter and you will receive a root password and add that password in the .env.sample file on line no. 45 in below variables in .env file
 
#monitoring-stack
GRAYLOG_ROOT_PASSWORD_SHA2=<add_root_password_here>

Perform the following command for installing the services on the server

sudo su -

Then go to specific directory where you have clone the repo :   i.e. ref-automation
https://github.com/Unified-Learner-Passbook/ref-automation.git

Run the command : make

It will deploy all the services on the server.

Add the required Entries in the nginx file in below location 
/etc/nginx/sites-enabled/test.conf
