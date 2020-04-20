provider "aws" {
  region  = "us-east-1"
  assume_role {
  role_arn 	   = "arn:aws:iam::${var.master}:role/${var.master_acct_role}"
  session_name = "terraform-cloud-session"
 }
}