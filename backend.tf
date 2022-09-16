terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-686520628199"
    key    = "sprint1/week2/training-terraform-newvpc/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}