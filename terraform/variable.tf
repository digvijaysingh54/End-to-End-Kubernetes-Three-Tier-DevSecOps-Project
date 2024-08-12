variable "cidr_vpc" {
  description = "vcp cidr value"
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  description = "vpc name"
  type = string
  default = "eks-vpc"
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "cidr_subnet" {
  description = "Base CIDR block for subnets"
  type        = string
  default     = "10.0"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = []
}

variable "igw_name" {
  description = "internet gateway name"
  type = string
  default = "eks-igw"
}

variable "cidr_route" {
  description = "vcp cidr value"
  type = string
  default = "0.0.0.0/0"
}
variable "route_tb_name" {
  description = "route table name"
  type = string
  default = "public-route-table" 
}

##security group variables=============##

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "eks-security-group"
}
variable "sg_description" {
  description = "Description of the security group"
  type        = string
  default     = "eks security group"
}
variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks for ingress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_cidr_blocks" {
  description = "List of CIDR blocks for egress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
############eks variable ################

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-cluster"
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.29"
}

variable "subnets" {
  description = "The subnet IDs for the EKS cluster"
  type        = list(string)
  default     = null
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
  default     = null
}

variable "desire_capacity" {
  description = "desire capacity of node"
  type = number
  default = 4
}

variable "max_capacity" {
  description = "max capacity of node"
  type = number
  default = 5
}

variable "min_capacity" {
  description = "min capacity of node"
  type = number
  default = 1
}
##========================node group variable

variable "node_group_name" {
  description = "node group name"
  type = string
  default = "eks-node-group"
}

variable "subnets_node" {
  description = "subnets for node"
  type = string
  default = null
}

variable "node_role_arn" {
  description = "iam policy arn"
  type = string
  default = null
}

variable "eks_role_arn" {
  description = "eks role policy arn"
  type = string
  default = null
}

##======================================================================

variable "sg_id" {
  description = "security_group_id"
  type = string
  default = null
}

variable "sg_id_node" {
  description = "security_group_id for nodes"
  type = string
  default = null
}
variable "aws_access_key_id" {
  type = string
  default = "AKIA6GBMEVUALSUJ6XNM"
}

variable "aws_secret_access_key" {
  type = string
  default = "keAEbpjDJayrd0UVq2wyxo0KYkTGj7gHiYCaBRKW"
}
