maintainer       "Watchwith"
maintainer_email "dennis@watchwith.com"
license          "All rights reserved"
description      "Installs/Configures watchwith"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "watchwith::s3cmd","Configure env with aws credentials"

# Required #
attribute "watchwith/s3cmd/aws_key_id",
  :display_name => "aws_key_id",
  :description => "aws_key_id",
  :required => "required",
  :recipes => ["watchwith::s3cmd"]

attribute "watchwith/s3cmd/aws_key_secret",
  :display_name => "aws_key_secret",
  :description => "aws_key_secret",
  :required => "required",
  :recipes => ["watchwith::s3cmd"]

