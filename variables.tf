variable "master" {
  description = "12 Digit ID for Master Payer Account"
  default     = ""
}

variable "logging_name" {
  description = "The name of the AWS Logging Account"
  default     = ""
}

variable "logging_email" {
  description = "The root email of the AWS Logging Account"
  default     = ""
}

variable "identity_name" {
  description = "The name of the AWS Identity Account"
  default     = ""
}

variable "identity_email" {
  description = "The root email of the AWS Identity Account"
  default     = ""
}

variable "security_name" {
  description = "The name of the AWS Security Account"
  default     = ""
}

variable "security_email" {
  description = "The root email of the AWS Security Account"
  default     = ""
}

variable "shared_name" {
  description = "The name of the AWS Shared Account"
  default     = ""
}

variable "shared_email" {
  description = "The root email of the AWS Shared Account"
  default     = ""
}

variable "test_name" {
  description = "The name of the AWS Test Account"
  default     = ""
}

variable "test_email" {
  description = "The root email of the AWS Test Account"
  default     = ""
}

variable "dev_name" {
  description = "The name of the AWS Dev Account"
  default     = ""
}

variable "dev_email" {
  description = "The root email of the AWS Dev Account"
  default     = ""
}

variable "stage_name" {
  description = "The name of the AWS Stage Account"
  default     = ""
}

variable "stage_email" {
  description = "The root email of the AWS Stage Account"
  default     = ""
}

variable "prod_name" {
  description = "The name of the AWS Prod Account"
  default     = ""
}

variable "prod_email" {
  description = "The root email of the AWS Prod Account"
  default     = ""
}