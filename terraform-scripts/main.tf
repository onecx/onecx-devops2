provider "aws" {
  region  = "eu-central-1"
}

provider "github" {
  owner = "onecx"
}

module "onecx-file-storage" {
  source = "./products/onecx-file-storage"
}

module "onecx-document" {
  source = "./products/onecx-document"
}
