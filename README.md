<!-- BEGIN_TF_DOCS -->
# OpenTofu Module: GitHub Organization Management

This OpenTofu module provides automated management of GitHub Enterprise organizations with educational institution configurations. It creates and configures GitHub organizations within a GitHub Enterprise environment with security-focused default settings optimized for educational use cases.

## Features

- **Enterprise Organization Creation**: Automatically creates GitHub organizations within a specified GitHub Enterprise
- **Security-First Configuration**: Implements restrictive default settings to maintain security and control
- **Educational Institution Optimized**: Designed specifically for schools and educational organizations
- **Comprehensive Organization Settings**: Configures all major organization-level settings and permissions

## Key Configurations

- Disables repository creation permissions for members
- Prevents public repository creation and GitHub Pages
- Disables advanced security features for cost optimization
- Restricts forking of private repositories
- Configures billing and administrative settings
- Sets organization description and company information

## Use Cases

- Setting up GitHub organizations for educational institutions
- Managing multiple class or department organizations within a GitHub Enterprise
- Standardizing security and permission settings across educational GitHub organizations
- Automating the initial setup of GitHub organizations for schools and universities

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |
| <a name="provider_github.github_org"></a> [github.github\_org](#provider\_github.github\_org) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_enterprise_organization.default](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/enterprise_organization) | resource |
| [github_membership.membership](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/membership) | resource |
| [github_organization_settings.default](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/organization_settings) | resource |
| [github_enterprise.default](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/enterprise) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | The email address for billing notifications. | `string` | n/a | yes |
| <a name="input_enterprise_name"></a> [enterprise\_name](#input\_enterprise\_name) | The name of the GitHub Enterprise. | `string` | n/a | yes |
| <a name="input_organization_admins"></a> [organization\_admins](#input\_organization\_admins) | A list of GitHub usernames for organization admins. | `list(string)` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | The name of the GitHub organization. Have this start with a 4 digit year and then the semester/quarter name e.g. 2025-FALL | `string` | n/a | yes |
| <a name="input_school_name"></a> [school\_name](#input\_school\_name) | The name of the GitHub organization. | `string` | n/a | yes |
| <a name="input_usernames"></a> [usernames](#input\_usernames) | A list of GitHub usernames to grant membership to. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_github_organization_name"></a> [github\_organization\_name](#output\_github\_organization\_name) | n/a |
<!-- END_TF_DOCS -->
