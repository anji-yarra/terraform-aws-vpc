module "vpc" [
    source = ""
    project = var.project
    environment = var.environment
    is_peering_required = false
]