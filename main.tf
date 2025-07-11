data "github_enterprise" "default" {
  slug = var.enterprise_name
}

resource "github_enterprise_organization" "default" {
  enterprise_id = data.github_enterprise.default.id
  name          = var.organization_name
  display_name  = var.organization_name
  description   = "Organization for {var.school_name}"
  billing_email = var.billing_email
  admin_logins  = var.organization_admins
}

provider "github" {
  owner = github_enterprise_organization.default.name
  alias = "github_org"
}


resource "github_organization_settings" "default" {
  provider                                                     = github.github_org
  billing_email                                                = var.billing_email
  company                                                      = var.school_name
  email                                                        = var.billing_email
  description                                                  = "Organization for {var.school_name}"
  has_organization_projects                                    = false
  has_repository_projects                                      = false
  default_repository_permission                                = "none"
  members_can_create_repositories                              = false
  members_can_create_public_repositories                       = false
  members_can_create_private_repositories                      = false
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = false
  members_can_create_public_pages                              = false
  members_can_create_private_pages                             = false
  members_can_fork_private_repositories                        = false
  web_commit_signoff_required                                  = false
  advanced_security_enabled_for_new_repositories               = false
  dependabot_alerts_enabled_for_new_repositories               = false
  dependabot_security_updates_enabled_for_new_repositories     = false
  dependency_graph_enabled_for_new_repositories                = false
  secret_scanning_enabled_for_new_repositories                 = false
  secret_scanning_push_protection_enabled_for_new_repositories = false
}


output "github_organization_name" {
  value = github_enterprise_organization.default.name
}