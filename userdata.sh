#!/bin/bash
#sudo apt install nginx

cat <<EOF > /var/www/html/test.html

<html><body>
<h1>Hello, Class 5.5</h1>
<br/>
Hostname: $(curl "http://metadata.google.internal/computeMetadata/v1/instance/hostname" -H "Metadata-Flavor: Google")

<br/>
Instance ID: $(curl "http://metadata.google.internal/computeMetadata/v1/instance/id" -H "Metadata-Flavor: Google")

<br/>
Project ID: echo $(curl "http://metadata.google.internal/computeMetadata/v1/project/project-id" -H "Metadata-Flavor: Google")

<br/>
Zone ID: echo $(curl "http://metadata.googe.internal/computeMetadata/v1/instance/zone" -H "Metadata-Flavor: Google")


</body></html>

EOF

