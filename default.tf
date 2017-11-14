provider "aws" {
  region  = "ap-southeast-1"
  profile = "zenk" 
}

resource "aws_s3_bucket_object" "folder" {
  bucket = "zenk.terraform.state"
  key = "${format("%s%s%s",test,"-elb","/")}"
  source = "empty"
}

