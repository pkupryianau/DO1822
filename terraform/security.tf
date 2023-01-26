resource "aws_security_group" "worker_group_mgmt_1" {
    name_prefix = "worker_group_mgmt_1"
    vpc_id = module.vpc.vpc_id
ingress {
    from_port = 22  # change port after test
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "10.0.0.0/8" ]
 }
}
resource "aws_security_group" "worker_group_mgmt_2" {
    name_prefix = "worker_group_mgmt_2"
    vpc_id = module.vpc.vpc_id
ingress {
    from_port = 22  # change port after test
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "10.0.0.0/8" ]
 }
}
resource "aws_security_group" "worker_group_mgmt" {
    name_prefix = "worker_group_mgmt"
    vpc_id = module.vpc.vpc_id
ingress {
    from_port = 22  # change port after test
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "10.0.0.0/8" ]
  }
 }
