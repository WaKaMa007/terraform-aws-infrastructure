locals {
  common_tags = {
    company      = var.company
    project      = "${var.project}-${var.project}"
    billing_code = var.billing_code
    environment  = var.environment
  }

  s3_bucket_name = "${lower(local.naming_prefix)}-${random_integer.s3.result}"

  # Updated website_content to copy all files
  website_content = {
    for file in fileset("${path.root}/web-temp/inance-html", "**/*") :
    file => "web-temp/inance-html/${file}"
  }

  naming_prefix = "${var.naming_prefix}-${var.environment}"
}


resource "random_integer" "s3" {
  min = 10000
  max = 99999
}