#
# Cookbook Name:: candy_bar
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

file "/tmp/banzai"
  content search(:aws_opsworks_volumes, "mount_point:/vol/ebi")
end
