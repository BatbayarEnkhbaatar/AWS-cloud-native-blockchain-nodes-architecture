
### Relay Validator node1
variable "relay_validator_node1_ami" {}
variable "private_security_group_id_relay-validator-node1" {}
variable "private_subnet_id_validator-node1" {}

### Relay Validator node2
variable "relay_validator_node2_ami" {}
variable "private_security_group_id_relay-validator-node2" {}
variable "private_subnet_id_validator-node2" {}

### Relay Validator node3
variable "relay_validator_node3_ami" {}
variable "private_security_group_id_relay-validator-node3" {}
variable "private_subnet_id_validator-node3" {}


### Non Validator node
variable "Non_validator_node_ami" {}
variable "private_security_group_id_non_val_node" {}
variable "private_subnet_id_4non_val_node" {}


### Non Ledger node
variable "Ledger_node_ami" {}
variable "private_security_group_id_Ledger_node" {}
variable "private_subnet_id_Ledger_node_ami" {}


### Non Token node
variable "Token_node_ami" {}
variable "private_security_group_id_Token" {}
variable "private_subnet_id_Token_node" {}