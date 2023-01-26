module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "18.30.3"
    cluster_name = local.cluster_name
    cluster_version = "1.24"
    subnets = module.vpc.private_subnets
tags = {
    name = "EKS-Cluster"
    }
vpc_id = module.vpc.vpc_id
workers_group_defaults = {
    root_volume_type = "gp2"
  } 
worker_group = [
    {
    name = "Worker-Group-1"
    instance_type = "t2.micro"
    asg_desired_capacity = 2  # 2 instance
    additional_security_group_ids = [aws_security_group.worker_group_mgmt_1.id]
    },
    {
      name = "Worker-Group-2"
      instance_type = "t2.micro"
      asg_desired_capacity = 1 # 1 instance
      additional_security_group_ids = [aws_security_group.worker_group_mgmt_2.id]
    },
  ]
}
data "aws_eks_cluster" "Cluster" {
    name = module.eks.cluster_id 
}
data "aws_eks_cluster_auth" "Cluster" {
    name = module.eks.cluster_id
}
    
  






  
