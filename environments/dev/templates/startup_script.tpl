#! /bin/bash
sudo amazon-linux-extras install -y nginx1
sudo systemctl start nginx
sudo systemctl enable nginx
sudo rm /usr/share/nginx/html/index.html
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/index.html /usr/share/nginx/html/index.html
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/contact.html /usr/share/nginx/html/contact.html
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/about.html /usr/share/nginx/html/about.html
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/css/ /usr/share/nginx/html/css/ --recursive
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/fonts/ /usr/share/nginx/html/fonts/ --recursive
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/images/ /usr/share/nginx/html/images/ --recursive
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/js/ /usr/share/nginx/html/js/ --recursive
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/scripts/ /usr/share/nginx/html/scripts/ --recursive
aws s3 cp s3://${s3_bucket_name}/web-temp/inance-html/service.html /usr/share/nginx/html/service.html
