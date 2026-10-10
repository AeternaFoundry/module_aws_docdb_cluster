variable "docdb_clusters" {
  description = <<EOT
Map of docdb_clusters, attributes below
Optional:
    - allow_major_version_upgrade
    - apply_immediately
    - availability_zones
    - backup_retention_period
    - cluster_identifier
    - cluster_identifier_prefix
    - cluster_members
    - db_cluster_parameter_group_name
    - db_subnet_group_name
    - deletion_protection
    - enabled_cloudwatch_logs_exports
    - engine
    - engine_version
    - final_snapshot_identifier
    - global_cluster_identifier
    - kms_key_id
    - manage_master_user_password
    - master_password
    - master_password_wo
    - master_password_wo_version
    - master_username
    - network_type
    - port
    - preferred_backup_window
    - preferred_maintenance_window
    - region
    - skip_final_snapshot
    - snapshot_identifier
    - storage_encrypted
    - storage_type
    - tags
    - tags_all
    - vpc_security_group_ids
    - restore_to_point_in_time (block):
        - restore_to_time (optional)
        - restore_type (optional)
        - source_cluster_identifier (required)
        - use_latest_restorable_time (optional)
    - serverless_v2_scaling_configuration (block):
        - max_capacity (required)
        - min_capacity (required)
EOT

  type = map(object({
    allow_major_version_upgrade     = optional(bool)
    tags                            = optional(map(string))
    storage_type                    = optional(string)
    storage_encrypted               = optional(bool)
    snapshot_identifier             = optional(string)
    skip_final_snapshot             = optional(bool)
    region                          = optional(string)
    preferred_maintenance_window    = optional(string)
    preferred_backup_window         = optional(string)
    port                            = optional(number)
    network_type                    = optional(string)
    master_username                 = optional(string)
    master_password_wo_version      = optional(number)
    master_password_wo              = optional(string)
    master_password                 = optional(string)
    tags_all                        = optional(map(string))
    manage_master_user_password     = optional(bool)
    global_cluster_identifier       = optional(string)
    final_snapshot_identifier       = optional(string)
    engine_version                  = optional(string)
    engine                          = optional(string)
    enabled_cloudwatch_logs_exports = optional(list(string))
    deletion_protection             = optional(bool)
    db_subnet_group_name            = optional(string)
    db_cluster_parameter_group_name = optional(string)
    cluster_members                 = optional(set(string))
    cluster_identifier_prefix       = optional(string)
    cluster_identifier              = optional(string)
    backup_retention_period         = optional(number)
    availability_zones              = optional(set(string))
    apply_immediately               = optional(bool)
    kms_key_id                      = optional(string)
    vpc_security_group_ids          = optional(set(string))
    restore_to_point_in_time = optional(object({
      restore_to_time            = optional(string)
      restore_type               = optional(string)
      source_cluster_identifier  = string
      use_latest_restorable_time = optional(bool)
    }))
    serverless_v2_scaling_configuration = optional(object({
      max_capacity = number
      min_capacity = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.docdb_clusters : (
        v.backup_retention_period == null || (v.backup_retention_period <= 35)
      )
    ])
    error_message = "must be at most 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.docdb_clusters : (
        v.enabled_cloudwatch_logs_exports == null || (alltrue([for x in v.enabled_cloudwatch_logs_exports : contains(["audit", "profiler"], x)]))
      )
    ])
    error_message = "must be one of: audit, profiler"
  }
  validation {
    condition = alltrue([
      for k, v in var.docdb_clusters : (
        v.global_cluster_identifier == null || (length(v.global_cluster_identifier) <= 255)
      )
    ])
    error_message = "[from validGlobalCusterIdentifier: invalid when len(value) > 255]"
  }
  # Note: 22 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

