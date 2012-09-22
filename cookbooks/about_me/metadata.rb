maintainer       "Watchwith"
maintainer_email "dennis@watchwith.com"
license          "All rights reserved"
description      "Installs/Configures about_me"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "about_me::default","Prints my first name and several of my favorite things as output."

