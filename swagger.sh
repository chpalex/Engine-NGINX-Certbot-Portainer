#!/bin/bash

####
# Function to install Swagger UI
swagger() {
  # Download Swagger UI from Wowza
  cd "$container_dir/nginx/www"
  wget https://www.wowza.com/downloads/forums/restapidocumentation/RESTAPIDocumentationWebpage.zip
  unzip -o RESTAPIDocumentationWebpage.zip -d swagger > /dev/null 2>&1
  rm RESTAPIDocumentationWebpage.zip

  # Replace the URL in the swagger/index.html file
   sed -i "s|http://localhost:8089/api-docs|http://$public_ip:8089/api-docs|g" swagger/index.html
}