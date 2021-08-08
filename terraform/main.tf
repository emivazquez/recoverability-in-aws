resource "aws_db_subnet_group" "subnet_group_primary" {
  name       = "subnet_group_primary"
  subnet_ids = [var.primary_subnet_ids]
}

resource "aws_db_instance" "primary_db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.23"
  instance_class       = "db.t3.micro"
  name                 = "udacity"
  identifier           = "primary"
  username             = "admin"
  password             = "testtest"
  parameter_group_name = "default.mysql8.0"
  auto_minor_version_upgrade = true
  db_subnet_group_name = "subnet_group_primary"
  multi_az             = true
  publicly_accessible  = false
  vpc_security_group_ids = [var.primary_security_group_ids]
  backup_retention_period = 7
}