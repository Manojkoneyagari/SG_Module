locals {

    common_tags = {
        Project = var.project
        Environment = var.environment
        Name = "${local.common_name}"
        Terraform = "True"
    }

    common_name = "${var.project}-${var.environment}"
    vpc_id = "${aws_ssm_parameter.vpc_id.value}"

}