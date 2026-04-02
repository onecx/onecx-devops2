# TEAM ONECX-DOCUMENT
module "onecx-document-team" {
  source = "../../modules/github/team"
  team_name        = "onecx-document"
  team_description = "OneCX document services team"
  team_members_file_path   = "products/onecx-document/team.csv"
}

# ONECX-DOCUMENT
module "onecx-document" {
  source = "../../modules/product"
  repository_name        = "onecx-document"
  repository_description = "OneCX File Storage"
  homepage_url           = "https://onecx.github.io/docs/onecx-document/current/general"
  topics                 = ["product", "document", "s3"]
  team_id                = module.onecx-document-team.team_id
  team_name              = module.onecx-document-team.team_name
}

# ONECX-DOCUMENT-SVC
module "onecx-document-svc" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-document-svc"
  repository_description = "OneCX Document Backend Service"
  homepage_url           = "https://onecx.github.io/docs/onecx-document/current/onecx-document-svc"
  topics                 = ["java", "quarkus", "svc", "document"]
  team_id                = module.onecx-document-team.team_id
}

# ONECX-DOCUMENT-BFF
module "onecx-document-bff" {
  source = "../../modules/quarkus"
  repository_name        = "onecx-document-bff"
  repository_description = "OneCX Document Backend-For-Frontend"
  homepage_url           = "https://onecx.github.io/docs/onecx-document/current/onecx-document-bff"
  topics                 = ["java", "quarkus", "bff", "document"]
  team_id                = module.onecx-document-team.team_id
}

# ONECX-DOCUMENT-UI
module "onecx-document-ui" {
  source = "../../modules/angular"
  repository_name        = "onecx-document-ui"
  repository_description = "OneCX Document UI"
  homepage_url           = "https://onecx.github.io/docs/onecx-document/current/onecx-document-ui"
  topics                 = ["angular", "ui", "document"]
  team_id                = module.onecx-document-team.team_id
}
