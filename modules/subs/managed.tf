resource "aws_organizations_organizational_unit" "managed" {
  name        = "Managed Accounts OU"
  parent_id   = var.master_ou
}

resource "aws_organizations_policy" "managed_ou_scp" {
  name        = "Managed OU SCPs"
  description = "Managed OU SCPs enforing organizational compliance."
  content     = data.aws_iam_policy_document.managed_ou_scp.json
  depends_on  = [aws_organizations_organizational_unit.managed]
}

resource "aws_organizations_policy_attachment" "managed_ou_scp_attachment" {
  policy_id   = aws_organizations_policy.managed_ou_scp.id
  target_id   = aws_organizations_organizational_unit.managed.id
}