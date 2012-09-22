maintainer       "Watchwith"
maintainer_email "dennis@watchwith.com"
license          "All rights reserved"
description      "Installs/Configures cookbook2"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

depends "rightscale"

recipe "cookbook2::default","Prints hello world output"
