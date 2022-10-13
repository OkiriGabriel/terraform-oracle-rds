resource "aws_db_instance" "rds_oracle"{
  identifier        = var.identifier
  db_name       = var.initial_db
  storage_type      = var.storage_type
  allocated_storage = var.allocated_storage

  engine         = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class
  port           = var.port

  # db_subnet_group_name = "${aws_db_subnet_group.default.id}"
  # db_name              = var.db_name

  license_model      = var.license_model
  character_set_name = var.character_set_name

  username               = var.username
  password               =var.password
  parameter_group_name   = var.parameter_group_name
  availability_zone      = var.availability_zone
  # vpc_security_group_ids = ["${aws_security_group.myDbSG1.id}"]
  vpc_security_group_ids = ["sg-01545523aa52d1a46"]
  publicly_accessible    = false
  deletion_protection    = false
  skip_final_snapshot    = true

  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  apply_immediately = var.apply_immediately

  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period

 
  snapshot_identifier = var.snapshot_identifier

  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  monitoring_interval             = var.monitoring_interval

  tags = {
    name = "Demo Oracle RDS Instance"
  }
}