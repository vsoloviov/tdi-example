#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'tdi' do
  home '/home/tdi'
  shell '/bin/bash'
  action :create
end

package 'Install IRC' do
  package_name 'irssi'
  action :install
end

directory '/home/tdi/.irssi' do
  action :create
  owner 'tdi'
end

cookbook_file '/home/tdi/.irssi/config' do
  source 'config'
  owner 'tdi'
  group 'tdi'
  mode '0755'
  action :create
end
