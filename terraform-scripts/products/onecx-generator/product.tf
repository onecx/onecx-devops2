# TEAM ONECX-GENERATOR
module "onecx-generator-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-generator"
  team_description = "OneCX generator services team"
  team_members_file_path   = "products/onecx-generator/team.csv"
}

# ONECX-SVC-GENERATOR
module "onecx-svc-generator" {
  source = "../../modules/base"
  repository_name        = "onecx-svc-generator"
  repository_description = "OneCX Backend Service Generator"
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["svc", "generator"]
  team_id                = module.onecx-generator-team.team_id
}

# ONECX-BFF-GENERATOR
module "onecx-bff-generator" {
  source = "../../modules/base"
  repository_name        = "onecx-bff-generator"
  repository_description = "OneCX Backend for Frontend Generator"
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["bff", "generator"]
  team_id                = module.onecx-generator-team.team_id
}