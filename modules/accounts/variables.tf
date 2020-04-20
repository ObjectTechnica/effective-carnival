######################
#  Logging Account   #
######################

variable "log_name" {}

variable "log_email" {}

variable "managed_parent" {}

######################
#  Identity Account  #
######################

variable "ident_name" {}

variable "ident_email" {}

variable "managed_parent" {}

######################
#  Security Account  #
######################

variable "sec_name" {}

variable "sec_email" {}

variable "managed_parent" {}

######################
#   Shared Account   #
######################

variable "shared_name" {}

variable "shared_email" {}

variable "managed_parent" {}

######################
#    Test Account    #
######################

variable "test_name" {}

variable "test_email" {}

variable "customer_parent" {}

######################
#    Dev Account     #
######################

variable "dev_name" {}

variable "dev_email" {}

variable "customer_parent" {}

######################
#   Stage Account    #
######################

variable "stage_name" {}

variable "stage_email" {}

variable "customer_parent" {}

######################
#    Prod Account    #
######################

variable "prod_name" {}

variable "prod_email" {}

variable "customer_parent" {}

variable "role_name" {
  description = "Role for bootstrapping new member accounts"
  default     = ""
}
