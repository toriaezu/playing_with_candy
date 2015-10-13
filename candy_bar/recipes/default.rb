#
# Cookbook Name:: candy_bar
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

file "/tmp/banzai" do
  content search(:aws_opsworks_volume, "mount_point:/vol/ebi")
end
