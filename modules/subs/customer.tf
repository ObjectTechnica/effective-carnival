resource "aws_organizations_organizational_unit" "customer" {
  name        = "Customer Accounts OU"
  parent_id   = var.master_ou
}

resource "aws_organizations_policy" "customer_ou_scp" {
  name        = "Customer OU SCPs"
  description = "Customer OU SCPs enforing organizational compliance."
  content     = data.aws_iam_policy_document.customer_ou_scp.json
  depends_on  = [aws_organizations_organizational_unit.customer]
}

resource "aws_organizations_policy_attachment" "customer_ou_scp_attachment" {
  policy_id   = aws_organizations_policy.customer_ou_scp.id
  target_id   = aws_organizations_organizational_unit.customer.id
}