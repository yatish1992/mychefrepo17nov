#
# Cookbook:: mytomcatcookbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe 'mytomcatcookbook::myuser'
include_recipe 'mytomcatcookbook::installjava'
include_recipe 'mytomcatcookbook::downlaod'
include_recipe 'mytomcatcookbook::permission'
include_recipe 'mytomcatcookbook::tomcatDashboard'
include_recipe 'mytomcatcookbook::starttomcat'
include_recipe 'mytomcatcookbook::deployjavaapp'