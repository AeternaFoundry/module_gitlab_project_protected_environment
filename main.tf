resource "gitlab_project_protected_environment" "project_protected_environments" {
  for_each = var.project_protected_environments

  environment                    = each.value.environment
  project                        = each.value.project
  approval_rules                 = each.value.approval_rules
  deploy_access_levels_attribute = each.value.deploy_access_levels_attribute
}

