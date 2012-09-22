#
# Cookbook Name:: Watchwith
# Recipe:: s3cmd
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

log " Setting up AWS credentials for s3cmd"

template "/root/.aws_credentials" do
  source "aws_credentials.erb"
  mode 0600
end

bash "Activate environment" do
  code <<-EOH
  export AWS_CREDENTIALS_FILE="/root/.aws_credentials"
  export AWS_ACCESS_KEY_ID="#{node[:watchwith][:s3cmd][:aws_key_id]}"
  export AWS_SECRET_ACCESS_KEY="#{node[:watchwith][:s3cmd][:aws_key_secret]}"
  echo AWS_CREDENTIALS_FILE: $AWS_CREDENTIALS_FILE
  echo AWS_ACCESS_KEY_ID: $AWS_SECRET_ACCESS_KEY
  s3cmd get "s3://watchwith-wars/test_tgz/watchwith-api_20120817-1056.tar.gz" api.tar.gz
  EOH
end

rightscale_marker :end
