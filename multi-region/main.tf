provider "aws" {
  region = "ap-northeast-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "use1"
}

# Default region (ap-northeast-1)
module "network-apn1" {
  source = "./network"
  cidr   = "10.200.0.0/16"
}

# Another region (us-east-1)
module "network-use1" {
  source = "./network"
  cidr   = "10.201.0.0/16"

  providers = {
    aws = "aws.use1"
  }
}
