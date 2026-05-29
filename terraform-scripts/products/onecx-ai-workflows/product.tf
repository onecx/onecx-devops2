# TEAM ONECX-AI-WORKFLOWS
module "onecx-ai-workflows-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-ai-workflows"
  team_description = "OneCX AI workflows team"
  team_members_file_path   = "products/onecx-ai-workflows/team.csv"
}

# ONECX-AI-WORKFLOWS
module "onecx-ai-workflows" {
  source = "../../modules/base"
  repository_name        = "onecx-ai-workflows"
  repository_description = "OneCX AI workflows private repository"
  homepage_url           = "https://onecx.github.io/docs/documentation/current/"
  topics                 = ["ai", "workflow"]
  team_id                = module.onecx-ai-workflows-team.team_id
  visibility = "private"
}
