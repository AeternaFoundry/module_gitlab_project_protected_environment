variable "project_protected_environments" {
  description = <<EOT
Map of project_protected_environments, attributes below
Required:
    - environment
    - project
Optional:
    - approval_rules
    - deploy_access_levels_attribute
EOT

  type = map(object({
    environment = string
    project     = string
    approval_rules = optional(list(object({
      access_level           = optional(string)
      group_id               = optional(number)
      group_inheritance_type = optional(number)
      required_approvals     = optional(number)
      user_id                = optional(number)
    })))
    deploy_access_levels_attribute = optional(set(object({
      access_level           = optional(string)
      group_id               = optional(number)
      group_inheritance_type = optional(number)
      user_id                = optional(number)
    })))
  }))
}

