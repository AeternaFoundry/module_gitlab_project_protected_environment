output "project_protected_environments_id" {
  description = "Map of id values across all project_protected_environments, keyed the same as var.project_protected_environments except keys with no id are omitted"
  value       = { for k, v in gitlab_project_protected_environment.project_protected_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_protected_environments_approval_rules" {
  description = "Map of approval_rules values across all project_protected_environments, keyed the same as var.project_protected_environments except keys with no approval_rules are omitted"
  value       = { for k, v in gitlab_project_protected_environment.project_protected_environments : k => v.approval_rules if v.approval_rules != null && length(v.approval_rules) > 0 }
}
output "project_protected_environments_deploy_access_levels_attribute" {
  description = "Map of deploy_access_levels_attribute values across all project_protected_environments, keyed the same as var.project_protected_environments except keys with no deploy_access_levels_attribute are omitted"
  value       = { for k, v in gitlab_project_protected_environment.project_protected_environments : k => v.deploy_access_levels_attribute if v.deploy_access_levels_attribute != null && length(v.deploy_access_levels_attribute) > 0 }
}
output "project_protected_environments_environment" {
  description = "Map of environment values across all project_protected_environments, keyed the same as var.project_protected_environments except keys with no environment are omitted"
  value       = { for k, v in gitlab_project_protected_environment.project_protected_environments : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "project_protected_environments_project" {
  description = "Map of project values across all project_protected_environments, keyed the same as var.project_protected_environments except keys with no project are omitted"
  value       = { for k, v in gitlab_project_protected_environment.project_protected_environments : k => v.project if v.project != null && length(v.project) > 0 }
}

