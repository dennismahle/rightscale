maintainer       "Watchwith, Inc."
maintainer_email "support@rightscale.com"
license          "Copyright RightScale, Inc. All rights reserved."
description      "Installs the tomcat application server."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1.1"

supports "centos", "~> 5.8"
supports "redhat", "~> 5.8"
supports "ubuntu", "~> 10.04.0"

depends "app"
depends "db_mysql"
depends "db_postgres"
depends "repo"
depends "rightscale"

recipe  "app_tomcat::default", "Installs the Tomcat application server."

# Watchwith attributes
# JDBC Connection String
attribute "app_tomcat/watchwith/jdbc_connection",
  :display_name => "Database Connection String",
  :description => "Database Connection String",
  :required => "required",
  :recipes => ["app_tomcat::default"]

# DB Username
attribute "app_tomcat/watchwith/db_username",
  :display_name => "Database Username",
  :description => "Database Username",
  :required => "required",
  :recipes => ["app_tomcat::default"]

# DB Password
attribute "app_tomcat/watchwith/db_password",
  :display_name => "Database Password",
  :description => "Database Password",
  :required => "required",
  :recipes => ["app_tomcat::default"]

# ECMS URL
attribute "app_tomcat/watchwith/ecms_url",
  :display_name => "ECMS URL",
  :description => "ECMS URL",
  :required => "required",
  :recipes => ["app_tomcat::default"]

# ECMS HOST
attribute "app_tomcat/watchwith/ecms_host",
  :display_name => "ECMS HOST",
  :description => "ECMS HOST",
  :required => "required",
  :recipes => ["app_tomcat::default"]

# optional attributes
attribute "app_tomcat/db_name",
  :display_name => "Database Schema Name",
  :description => "Enter the name of the MySQL database to use. Example: mydatabase",
  :required => "required",
  :recipes => ["app_tomcat::default"]


#Code repo attributes
attribute "app_tomcat/code/root_war",
  :display_name => "War file for ROOT",
  :description => "The path to the war file relative to project repo root directory. Will be renamed to ROOT.war. Example: /dist/app_test.war",
  :required => "recommended",
  :default => "",
  :recipes => ["app_tomcat::default"]

#Java tuning parameters
attribute "app_tomcat/java/xms",
  :display_name => "Tomcat Java XMS",
  :description => "The java Xms argument. Example: 512m",
  :required => "optional",
  :default => "512m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/java/xmx",
  :display_name => "Tomcat Java XMX",
  :description => "The java Xmx argument. Example: 512m",
  :required => "optional",
  :default => "512m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/java/PermSize",
  :display_name => "Tomcat Java PermSize",
  :description => "The java PermSize argument. Example: 256m",
  :required => "optional",
  :default => "256m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/java/MaxPermSize",
  :display_name => "Tomcat Java MaxPermSize",
  :description => "The java MaxPermSize argument. Example: 256m",
  :required => "optional",
  :default => "256m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/java/NewSize",
  :display_name => "Tomcat Java NewSize",
  :description => "The java NewSize argument. Example: 256m",
  :required => "optional",
  :default => "256m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/java/MaxNewSize",
  :display_name => "Tomcat Java MaxNewSize",
  :description => "The java MaxNewSize argument. Example: 256m",
  :required => "optional",
  :default => "256m",
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/db_adapter",
  :display_name => "Database adapter for application",
  :description => "Enter database adapter which will be used to connect to the database. Example: mysql",
  :default => "mysql",
  :choice => [ "mysql", "postgresql" ],
  :recipes => ["app_tomcat::default"]

attribute "app_tomcat/datasource_name",
  :display_name => "Container datasource name",
  :description => "This name is used to set up the database connection with the application server. You should set the attribute if your application is compiled to use a different datasource name.  Example: jdbc/MyConnDB",
  :required => "optional",
  :default => "jdbc/ConnDB",
  :recipes => ["app_tomcat::default"]
