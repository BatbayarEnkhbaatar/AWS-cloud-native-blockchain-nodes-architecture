provider "aws" {
  region = "us-east-1"
}


####### Creating EC2 intance for Relay validator Node1

resource "aws_instance" "relay-validator-node1" {
   ami                    = "${var.relay_validator_node1_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_relay-validator-node1}"]
   subnet_id              = "${var.private_subnet_id_validator-node1}"
 }

####### Creating EC2 intance for Relay validator Node2

resource "aws_instance" "relay-validator-node2" {
   ami                    = "${var.relay_validator_node2_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_relay-validator-node2}"]
   subnet_id              = "${var.private_subnet_id_validator-node2}"
 }

####### Creating EC2 intance for Relay validator Node3

resource "aws_instance" "relay-validator-node3" {
   ami                    = "${var.relay_validator_node3_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_relay-validator-node3}"]
   subnet_id              = "${var.private_subnet_id_validator-node3}"
 }

####### Creating EC2 intance for Non validator Node

resource "aws_instance" "Non-Validator-node" {
   ami                    = "${var.Non_validator_node_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_non_val_node}"]
   subnet_id              = "${var.private_subnet_id_4non_val_node}"
 }

####### Creating EC2 intance for LEdger Node

resource "aws_instance" "Ledger-node" {
   ami                    = "${var.Ledger_node_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_Ledger_node}"]
   subnet_id              = "${var.private_subnet_id_Ledger_node_ami}"
 }

####### Creating EC2 intance for Token Node

resource "aws_instance" "Token-node" {
   ami                    = "${var.Token_node_ami}"
   instance_type          = "t2.micro"
   vpc_security_group_ids = ["${var.private_security_group_id_Token}"]
   subnet_id              = "${var.private_subnet_id_Token_node}"
 }