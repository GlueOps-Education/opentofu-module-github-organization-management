variable "enterprise_name" {
  description = "The name of the GitHub Enterprise."
  type        = string
}

variable "organization_name" {
  description = "The name of the GitHub organization."
  type        = string
}

variable "school_name" {
  description = "The name of the GitHub organization."
  type        = string
}

variable "billing_email" {
  description = "The email address for billing notifications."
  type        = string
}

variable "organization_admins" {
  description = "A list of GitHub usernames for organization admins."
  type        = list(string)
}