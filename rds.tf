
resource "aws_db_subnet_group" "default" {
  name       = "rds-subnet"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "postgres" {
  identifier             = "postgres-demo"
  engine                 = "postgres"
  engine_version         = "14"  # Added recommended engine version
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_name                = "demo"  # Changed from name to db_name
  username               = "dbadmin"
  password               = "TempPass123!"
  db_subnet_group_name   = aws_db_subnet_group.default.name
  skip_final_snapshot    = true
  publicly_accessible    = false
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  apply_immediately      = true  # Added for immediate changes
}