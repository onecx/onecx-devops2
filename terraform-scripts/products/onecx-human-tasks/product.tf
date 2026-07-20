# TEAM ONECX-HUMAN-TASKS
module "onecx-human-tasks-team" {
  source = "../../modules/github/team"
  team_name              = "onecx-human-tasks"
  team_description       = "OneCX human tasks services team"
  team_members_file_path = "products/onecx-human-tasks/team.csv"
}

# ONECX-HUMAN-TASKS
module "onecx-human-tasks" {
  source = "../../modules/product"
  repository_name        = "onecx-human-tasks"
  repository_description = "OneCX Human Tasks"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-tasks/current/general"
  topics                 = ["product", "human-tasks"]
  team_id                = module.onecx-human-tasks-team.team_id
  team_name              = module.onecx-human-tasks-team.team_name
}

# ONECX-HUMAN-TASKS-SVC
module "onecx-human-tasks-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-tasks-svc"
  repository_description = "OneCX Human Tasks Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-tasks/current/onecx-human-tasks-svc"
  topics                 = ["java", "quarkus", "svc", "human-tasks"]
  team_id                = module.onecx-human-tasks-team.team_id
}

# ONECX-HUMAN-TASKS-BFF
module "onecx-human-tasks-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-tasks-bff"
  repository_description = "OneCX Human Tasks Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-tasks/current/onecx-human-tasks-bff"
  topics                 = ["java", "quarkus", "bff", "human-tasks"]
  team_id                = module.onecx-human-tasks-team.team_id
}

# ONECX-HUMAN-TASKS-UI
module "onecx-human-tasks-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-human-tasks-ui"
  repository_description = "OneCX Human Tasks UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-tasks/current/onecx-human-tasks-ui"
  topics                 = ["angular", "ui", "human-tasks"]
  team_id                = module.onecx-human-tasks-team.team_id
}


# ONECX-HUMAN-TASKS-CAMUNDA-ADAPTER
module "onecx-human-tasks-camunda-adapter" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-tasks-camunda-adapter"
  repository_description = "OneCX Human Tasks Camunda Adapter"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-tasks/current/onecx-human-tasks-camunda-adapter"
  topics                 = ["java", "quarkus", "human-tasks", "adapter", "camunda"]
  team_id                = module.onecx-human-tasks-team.team_id
}