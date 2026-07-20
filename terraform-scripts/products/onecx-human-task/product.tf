# TEAM ONECX-HUMAN-TASK
module "onecx-human-task-team" {
  source = "../../modules/github/team"
  team_name              = "onecx-human-task"
  team_description       = "OneCX human tasks services team"
  team_members_file_path = "products/onecx-human-task/team.csv"
}

# ONECX-HUMAN-TASK
module "onecx-human-task" {
  source = "../../modules/product"
  repository_name        = "onecx-human-task"
  repository_description = "OneCX Human Tasks"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-task/current/general"
  topics                 = ["product", "human-task"]
  team_id                = module.onecx-human-task-team.team_id
  team_name              = module.onecx-human-task-team.team_name
}

# ONECX-HUMAN-TASK-SVC
module "onecx-human-task-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-task-svc"
  repository_description = "OneCX Human Tasks Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-task/current/onecx-human-task-svc"
  topics                 = ["java", "quarkus", "svc", "human-task"]
  team_id                = module.onecx-human-task-team.team_id
}

# ONECX-HUMAN-TASK-BFF
module "onecx-human-task-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-task-bff"
  repository_description = "OneCX Human Tasks Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-task/current/onecx-human-task-bff"
  topics                 = ["java", "quarkus", "bff", "human-task"]
  team_id                = module.onecx-human-task-team.team_id
}

# ONECX-HUMAN-TASK-UI
module "onecx-human-task-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-human-task-ui"
  repository_description = "OneCX Human Tasks UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-task/current/onecx-human-task-ui"
  topics                 = ["angular", "ui", "human-task"]
  team_id                = module.onecx-human-task-team.team_id
}


# ONECX-HUMAN-TASK-CAMUNDA
module "onecx-human-task-camunda" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-human-task-camunda"
  repository_description = "OneCX Human Tasks Camunda Adapter"
  homepage_url           = "https://onecx.github.io/docs/onecx-human-task/current/onecx-human-task-camunda"
  topics                 = ["java", "quarkus", "human-task", "camunda"]
  team_id                = module.onecx-human-task-team.team_id
}