#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_package "nginx" do
 action :install
end
file "/etc/nginx/nginix.conf" do
 action :delete
end

cookbook_file "/etc/nginx/nginx.conf" do
 source "nginx.conf"
 mode "0644"
end 

service "nginx" do
 action [ :enable, :restart ]
end
