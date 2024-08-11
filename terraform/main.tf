module "vpc" {
    source = "./module/vpc"
    cidr_vpc = var.cidr_vpc
    vpc_name = var.vpc_name
    subnet_count = var.subnet_count
    cidr_subnet = var.cidr_subnet
    availability_zones = var.availability_zones
    igw_name = var.igw_name
    cidr_route = var.cidr_route
    route_tb_name = var.route_tb_name

}
module "eks" {
    source = "./module/eks"
    cluster_name = var.cluster_name
    cluster_version = var.cluster_version
    subnets = module.vpc.public_subnet_ids
    eks_role_arn = module.eks.eks_role_arn_output
    sg_id = module.sg.sg_id_output

}

module "sg" {
    source = "./module/sg"
    sg_name = var.sg_name
    sg_description = var.sg_description
    vpc_id= module.vpc.vpc_id_output
    ingress_cidr_blocks = var.ingress_cidr_blocks
    egress_cidr_blocks = var.egress_cidr_blocks

}

module "node-group" {
    source = "./module/node-group"
    subnets_node = module.vpc.public_subnet_ids
    desire_capacity = var.desire_capacity
    max_capacity = var.max_capacity
    min_capacity = var.min_capacity
    node_group_name = var.node_group_name
    cluster_name_node = var.cluster_name
    node_role_arn = module.node-group.role_arn
    sg_id_node = module.sg.sg_id_output

}
