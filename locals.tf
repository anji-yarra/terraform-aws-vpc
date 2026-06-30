locals {
    common_tags = {
        Project     = var.project # This tag indicates the project to which the resource belongs
        Environment = var.environment # This tag indicates the environment (e.g., dev, staging, prod) to which the resource belongs
        Terraform   = "true" # This tag indicates that the resource is managed by Terraform
        Name        = local.common_name # This tag provides a human-readable name for the resource, using the common_name local variable
    }

    common_name = "${var.project}-${var.environment}" # This will be used as a prefix for all resource names
    az_names    = slice(data.aws_availability_zones.available.names, 0,2) # Get the first 2 availability zones for subnet creation

}