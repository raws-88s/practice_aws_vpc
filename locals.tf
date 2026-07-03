locals {
  common_tags ={
    project = var.project
    environment = var.environment
    terraform = true
  }
  vpc_final_tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}"
    }
  )
  igw_final_tags = merge(
    var.igw_tags,
    local.common_tags,{
        Name = "${var.project}-${var.environment}"
    }
  )
  az_zones = slice(data.aws_availability_zones.available.names, 0,2)
  
}

