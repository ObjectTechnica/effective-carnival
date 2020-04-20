#############Managed OU SCPs##################
data "aws_caller_identity" "identity" {}
data "aws_iam_policy_document" "managed_ou_scp" {
  statement {
    sid = "StopCloudTrailChanges"
    actions = [
        "cloudtrail:Delete*",
        "cloudtrail:Remove*",
        "cloudtrail:Stop*"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
  statement {
      sid = "StopGuardDutyChanges"
    actions = [
        "guardduty:ArchiveFindings",
        "guardduty:Delete*",
        "guardduty:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
   statement {
    sid = "StopSecurityHubChanges"
    actions = [
        "securityhub:BatchDisableStandards",
        "securityhub:DeclineInvitations",
        "securityhub:Delete*",
        "securityhub:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
    statement {
      sid = "StopConfigChange"
    actions = [
        "config:Delete*",
        "config:Stop*",
        "config:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
  statement {
      sid = "StopAccountOrgChanges"
    actions = [
        "organizations:DeclineHandshake",
        "organizations:Delete*",
        "organizations:Disable*",
        "organizations:LeaveOrganization",
        "organizations:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
   statement {
       sid = "StopChangesToVPVCFlowlogs"
    actions = [
        "ec2:DeleteFlowLogs",
        "logs:DeleteLogGroup",
        "logs:DeleteLogStream"  
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
    statement {
        sid = "DenyAccessWithException"
    not_actions = [
        "iam:AttachRolePolicy",
        "iam:DeleteRole",
        "iam:DeleteRolePermissionsBoundary",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PutRolePermissionsBoundary",
        "iam:PutRolePolicy",
        "iam:UpdateAssumeRolePolicy",
        "iam:UpdateRole",
        "iam:UpdateRoleDescription"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
    condition {
      test     = "StringNotEquals"
      variable = "aws:PrincipalARN"
      values = [
        "arn:aws:iam::*:role/master_bootstrap_role"
      ]
    }
  }
}


####################Customer OU SCPs#################################

data "aws_iam_policy_document" "customer_ou_scp" {
  statement {
    sid = "StopCloudTrailChanges"
    actions = [
        "cloudtrail:Delete*",
        "cloudtrail:Remove*",
        "cloudtrail:Stop*"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
  statement {
      sid = "StopGuardDutyChanges"
    actions = [
        "guardduty:ArchiveFindings",
        "guardduty:Delete*",
        "guardduty:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
   statement {
    sid = "StopSecurityHubChanges"
    actions = [
        "securityhub:BatchDisableStandards",
        "securityhub:DeclineInvitations",
        "securityhub:Delete*",
        "securityhub:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
    statement {
      sid = "StopConfigChange"
    actions = [
        "config:Delete*",
        "config:Stop*",
        "config:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
  statement {
      sid = "StopAccountOrgChanges"
    actions = [
        "organizations:DeclineHandshake",
        "organizations:Delete*",
        "organizations:Disable*",
        "organizations:LeaveOrganization",
        "organizations:UntagResource"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
   statement {
       sid = "StopChangesToVPVCFlowlogs"
    actions = [
        "ec2:DeleteFlowLogs",
        "logs:DeleteLogGroup",
        "logs:DeleteLogStream"  
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
  }
    statement {
        sid = "DenyAccessWithException"
    not_actions = [
        "iam:AttachRolePolicy",
        "iam:DeleteRole",
        "iam:DeleteRolePermissionsBoundary",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:PutRolePermissionsBoundary",
        "iam:PutRolePolicy",
        "iam:UpdateAssumeRolePolicy",
        "iam:UpdateRole",
        "iam:UpdateRoleDescription"
    ]
    resources = [
      "*",
    ]
    effect = "Deny"
    condition {
      test     = "StringNotEquals"
      variable = "aws:PrincipalARN"
      values = [
        "arn:aws:iam::*:role/master_bootstrap_role"
      ]
    }
  }
}
