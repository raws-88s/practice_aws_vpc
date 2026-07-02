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
}
