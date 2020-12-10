data "aws_ip_ranges" "useast_ec2" {
  regions  = ["us-east-1"]
  services = ["ec2"]
}

resource "aws_security_group" "davetest" {
  name = "davetest"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = slice(data.aws_ip_ranges.useast_ec2.cidr_blocks, 0, 20)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.useast_ec2.create_date
    SyncToken  = data.aws_ip_ranges.useast_ec2.sync_token
  }
}
