######################
#  Logging Account   #
######################

//
// AWS Account ID Output
//
output "logging_id" {
  value     = "${aws_organizations_account.logging.id}"
}

//
// AWS Account Root Email Address
//
output "logging_email" {
  value     = "${aws_organizations_account.logging.email}"
}

//
// AWS Linked Account Names
//
output "logging_account_name" {
  value     = "${aws_organizations_account.logging.name}"
}

######################
#  Identity Account  #
######################

//
// AWS Account ID Output
//
output "identity_id" {
  value     = "${aws_organizations_account.identity.id}"
}

//
// AWS Account Root Email Address
//
output "identity_email" {
  value     = "${aws_organizations_account.identity.email}"
}

//
// AWS Linked Account Names
//
output "identity_account_name" {
  value     = "${aws_organizations_account.identity.name}"
}

######################
#  Security Account  #
######################

//
// AWS Account ID Output
//
output "security_id" {
  value     = "${aws_organizations_account.security.id}"
}

//
// AWS Account Root Email Address
//
output "security_email" {
  value     = "${aws_organizations_account.security.email}"
}

//
// AWS Linked Account Names
//
output "security_account_name" {
  value     = "${aws_organizations_account.security.name}"
}

######################
#   Shared Account   #
######################

//
// AWS Account ID Output
//
output "shared_id" {
  value     = "${aws_organizations_account.shared.id}"
}

//
// AWS Account Root Email Address
//
output "shared_email" {
  value     = "${aws_organizations_account.shared.email}"
}

//
// AWS Linked Account Names
//
output "shared_account_name" {
  value     = "${aws_organizations_account.shared.name}"
}

######################
#    Test Account    #
######################

//
// AWS Account ID Output
//
output "test_id" {
  value     = "${aws_organizations_account.test.id}"
}

//
// AWS Account Root Email Address
//
output "test_email" {
  value     = "${aws_organizations_account.test.email}"
}

//
// AWS Linked Account Names
//
output "test_account_name" {
  value     = "${aws_organizations_account.test.name}"
}

######################
#    Dev Account     #
######################

//
// AWS Account ID Output
//
output "dev_id" {
  value     = "${aws_organizations_account.dev.id}"
}

//
// AWS Account Root Email Address
//
output "dev_email" {
  value     = "${aws_organizations_account.dev.email}"
}

//
// AWS Linked Account Names
//
output "dev_account_name" {
  value     = "${aws_organizations_account.dev.name}"
}

######################
#   Stage Account    #
######################

//
// AWS Account ID Output
//
output "stage_id" {
  value     = "${aws_organizations_account.stage.id}"
}

//
// AWS Account Root Email Address
//
output "stage_email" {
  value     = "${aws_organizations_account.stage.email}"
}

//
// AWS Linked Account Names
//
output "stage_account_name" {
  value     = "${aws_organizations_account.stage.name}"
}

######################
#    Prod Account    #
######################

//
// AWS Account ID Output
//
output "prod_id" {
  value     = "${aws_organizations_account.prod.id}"
}

//
// AWS Account Root Email Address
//
output "prod_email" {
  value     = "${aws_organizations_account.prod.email}"
}

//
// AWS Linked Account Names
//
output "prod_account_name" {
  value     = "${aws_organizations_account.prod.name}"
}