#
# Cookbook Name:: go
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get gccgo-go" do
 command "apt-get install gccgo-go -y"
end



directory "/opt/app" do
end


file "/opt/app/app" do
 action :delete
end

cookbook_file "/opt/app/app" do
 source "app"
 mode "0555"
end 


execute "Run_go_app" do
 command "/opt/app/app &"
end
