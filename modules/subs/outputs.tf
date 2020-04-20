output "ou_managed" {
  value  = aws_organizations_organizational_unit.managed.id
}

output "ou_customer" {
  value  = aws_organizations_organizational_unit.customer.id
}