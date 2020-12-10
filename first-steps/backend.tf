terraform {
 backend "s3" {
     bucket = "terraform-test-dave"
     key    = "terraform/state"
 } 
}