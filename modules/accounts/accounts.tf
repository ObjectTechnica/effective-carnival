resource "aws_organizations_account" "logging" {
  name      = var.log_name
  email     = var.log_email
  role_name = var.role_name
  parent_id = var.managed_parent
}

resource "aws_organizations_account" "identity" {
  name      = var.ident_name
  email     = var.ident_email
  role_name = var.role_name
  parent_id = var.managed_parent
}

resource "aws_organizations_account" "security" {
  name      = var.sec_name
  email     = var.sec_email
  role_name = var.role_name
  parent_id = var.managed_parent
}

resource "aws_organizations_account" "shared" {
  name      = var.shared_name
  email     = var.shared_email
  role_name = var.role_name
  parent_id = var.managed_parent
}

resource "aws_organizations_account" "test" {
  name      = var.test_name
  email     = var.test_email
  role_name = var.role_name
  parent_id = var.customer_parent
}

resource "aws_organizations_account" "dev" {
  name      = var.dev_name
  email     = var.dev_email
  role_name = var.role_name
  parent_id = var.customer_parent
}

resource "aws_organizations_account" "stage" {
  name      = var.stage_name
  email     = var.stage_email
  role_name = var.role_name
  parent_id = var.customer_parent
}

resource "aws_organizations_account" "prod" {
  name      = var.prod_name
  email     = var.prod_email
  role_name = var.role_name
  parent_id = var.customer_parent
}