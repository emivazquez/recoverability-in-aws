resource "aws_db_subnet_group" "subnet_group_secondary" {
  name       = "subnet_group_secondary"
  subnet_ids = [var.secondary_subnet_ids]
}

resource "aws_db_instance" "secondary_db" {
  engine               = "mysql"
  engine_version       = "8.0.23"
  instance_class       = "db.t3.micro"
  name                 = "udacity"
  identifier           = "secondary"
  parameter_group_name = "default.mysql8.0"
  auto_minor_version_upgrade = true
  db_subnet_group_name = "subnet_group_secondary"
  multi_az             = true
  publicly_accessible  = false
  vpc_security_group_ids = [var.secondary_security_group_ids]
  backup_retention_period = 7
  replicate_source_db  = aws_db_instance.primary_db.arn
}