resource "aws_organizations_organization" "org" {
  feature_set = "ALL"
  aws_service_access_principals = [
    "ram.amazonaws.com",
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "tagpolicies.tag.amazonaws.com",
  ]
  enabled_policy_types = ["SERVICE_CONTROL_POLICY", "TAG_POLICY"]
}