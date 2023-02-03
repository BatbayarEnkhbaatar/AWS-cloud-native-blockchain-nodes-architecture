### Relay validator node1


resource "aws_launch_template" "Relay_Validator_node1" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Relay_Validator_node1}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Relay_Validator_node1" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Relay_Validator_node1.id
    version = "$Latest"
  }
}




### Relay validator node2
resource "aws_launch_template" "Relay_Validator_node2" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Relay_Validator_node2}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Relay_Validator_node2" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Relay_Validator_node2.id
    version = "$Latest"
  }
}



### Relay validator node3

resource "aws_launch_template" "Relay_Validator_node3" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Relay_Validator_node3}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Relay_Validator_node3" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Relay_Validator_node3.id
    version = "$Latest"
  }
}


### Non-Validator node template


resource "aws_launch_template" "Non_Validator_node" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Non_Validator_node}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Non_Validator_node" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Non_Validator_node.id
    version = "$Latest"
  }
}

### Ledger node template
resource "aws_launch_template" "Ledger_node" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Non_Validator_node}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Ledger_node" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Ledger_node.id
    version = "$Latest"
  }
}
### Token node template

resource "aws_launch_template" "Token_node" {
  name_prefix   = "foobar"
  image_id      = "${var.amazon_machine_image_id_Non_Validator_node}"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "Token_node" {
  availability_zones = ["us-east-1a", "us-east-1b"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.Token_node.id
    version = "$Latest"
  }
}