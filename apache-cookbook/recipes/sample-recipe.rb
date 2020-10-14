#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file '/robofile' do
  content "This is my config file
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
