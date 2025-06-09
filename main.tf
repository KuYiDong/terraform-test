module "vpc" {
  source = "./vpc"
}

provider "aws" {
  region = var.aws_region
  profile = "default"
}

module "subnet" {
  source    = "./subnet"
  vpc_id    = module.vpc.vpc_id
  aws_region = var.aws_region
}

module "nat" {
  source          = "./nat"
  public_subnets  = module.subnet.public_subnet_ids
  vpc_id = module.vpc.vpc_id
}

module "route" {
  source = "./route"

  vpc_id              = module.vpc.vpc_id
  igw_id              = module.vpc.igw_id
  nat_gateway_id      = module.nat.nat_gateway_id

  public_subnet_ids   = module.subnet.public_subnet_ids     
  private_subnet_ids  = module.subnet.private_subnet_ids    
  database_subnet_ids = module.subnet.database_subnet_ids   
}

