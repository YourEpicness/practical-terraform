# --- database/main.tf ---

resource "aws_db_instance" "mtc_db" {
  allocated_storage      = var.db_storage
  engine                 = "mysql"
  instance_class         = var.db_engine_version
  name                   = var.db_subnet_group_name
  username               = var.dbname
  password               = var.dbpassword
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  identifier             = var.db_identifier
  skip_final_snapshot    = var.skip_db_snapshot
  tags = {
    Name = "mtc-db"
  }
}
