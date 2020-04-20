//
// Create Organization Root
//
module "organizations" {
  source = "./modules/orgs" 
}

//
// Create OU's SCP's
//
module "ou_subdivision" {
  source     = "./modules/subs"
  master_ou  = module.organizations.organizations_root_id
}

//
// Creates Organizational Member Accounts
//
module "accounts" {
  source              = "./modules/aws_accounts"
  log_name            = var.logging_name
  log_email           = var.logging_email
  ident_name          = var.identity_name
  ident_email         = var.identity_email
  sec_name            = var.security_name
  sec_email           = var.security_email
  shared_name         = var.shared_name
  shared_email        = var.shared_email
  test_name           = var.test_name
  test_email          = var.test_email
  dev_name            = var.dev_name
  dev_email           = var.dev_email
  stage_name          = var.stage_name
  stage_email         = var.stage_email
  prod_name           = var.prod_name
  prod_email          = var.prod_email
  managed_parent      = module.ou_subdivision.ou_managed
  customer_parent     = module.ou_subdivision.ou_customer
}