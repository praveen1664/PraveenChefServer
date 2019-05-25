# Chef server repo for web server and app servers

##Task
    a) Launch 3 separate linux nodes using the tool/distro of your choice
        2 x application nodes
        1 x web node
    b) Using a configuration management tool (contractors MUST use Chef) 

Deploy the sample application to the application nodes
Install Nginx on the web node and balance requests to the application nodes in a round-robin fashion
Demonstrate the round-robin mechanism is working correctly

## Roles- 
    1. web-server
    2. backend-server
## cookbooks - 
    1. apt
    2. nginx
    3. go
    
##As per architecture, we have 3 nodes – 1 Webserver (nginx) and two backend servers.

Servers are attached with specific roles.
    1. web-server role includes – apt and nginx cookbook
    2. backend-server role includes – apt and go cookbook

Apt cookbook is used to run update on each node

nginix cookbook installs ingnx and loads configuration file i.e. nginx.conf from its default files and loads at /etc/nginx/ and restarts nginx server. As per nginx configuration round-robin mechanism has been a default and when we refresh webpage, it switches from one app server to other one by one.

go cookbook installs go in the node and loads executable go file i.e. new in default files and executes it in background.

executable file can be created using build tools or it can be done from chef as well, depending upon requirements
