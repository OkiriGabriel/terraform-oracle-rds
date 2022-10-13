variable "identifier" {
  type        = string
  default = "myoracledb"
  description = "RDS identifier."
}

variable "storage_type" {
  type        = string
  default     = "gp2"
  description = "RDS storage type."
}

variable "allocated_storage" {
  type        = number
  default     = 20
  description = "RDS storage."
}

variable "engine" {
 default = "oracle-ee"
}

variable "engine_version" {
  type        = string
  default     = "19.0.0.0.ru-2021-10.rur-2021-10.r1"
  description = "RDS engine version."
}

variable "instance_class" {
  type        = string
  default     = "db.t3.medium"
  description = "RDS instance class."
}

variable "port" {
  default = "1521"
}

variable "db_subnet_group_name" {
  type        = string
  default = "your vpc"
  description = "RDS subnet group."
}


variable "username" {
  type        = string
  default     = "rds_mgm"
  description = "RDS master username."
}

variable "password" {
  type = string
  default = "pass2022"
}

variable "parameter_group_name" {
  type        = string
  description = "RDS parameter group."
  default = "oracle-ee-19"
}


variable "availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "RDS az."
}

variable "region" {
   default = "us-east-1"
}



variable "initial_db" {
  type        = string
  default     = "ORCL"
  description = "Initial database."
}

variable "backup_retention_period" {
  type        = number
  default     = 0
  description = "RDS retention backup period."
}

variable "backup_window" {
  type        = string
  default     = "03:00-05:00"
  description = "RDS backup window."
}

variable "maintenance_window" {
  type        = string
  default     = "mon:05:00-mon:05:30"
  description = "RDS maintence window."
}

variable "copy_tags_to_snapshot" {
  type        = bool
  default     = true
  description = "Copy tags to snapshot."
}


variable "auto_minor_version_upgrade" {
  type        = bool
  default     = true
  description = "RDS auto minor version update."
}

variable "license_model" {
  type        = string
  default     = "bring-your-own-license"
  description = "RDS license model."
}

variable "multi_az" {
  type        = bool
  default     = false
  description = "Multi az deployment."
}

variable "character_set_name" {
  type        = string
  default     = "WE8MSWIN1252"
  description = "RDS character set."
}

variable "snapshot_identifier" {
  type        = string
  default     = ""
  description = "Snapshot id."
}

variable "enabled_cloudwatch_logs_exports" {
  type        = list(string)
  default     = ["alert", "audit", "listener", "trace"]
  description = "RDS cloud watch logs exports."
}

variable "monitoring_interval" {
  type        = number
  default     = 0
  description = "Monitoring interval."
}

variable "apply_immediately" {
  type        = bool
  default     = false
  description = "Apply changes immediately."
}

variable "performance_insights_enabled" {
  type        = bool
  default     = false
  description = "Enable RDS performance insights."
}

variable "performance_insights_kms_key_id" {
  type        = string
  default     = ""
  description = "RDS KMS key."
}

variable "performance_insights_retention_period" {
  type        = number
  default     = 0
  description = "RDS performance insights retention."
}