output "docdb_clusters_id" {
  description = "Map of id values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "docdb_clusters_allow_major_version_upgrade" {
  description = "Map of allow_major_version_upgrade values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.allow_major_version_upgrade if v.allow_major_version_upgrade != null }
}
output "docdb_clusters_apply_immediately" {
  description = "Map of apply_immediately values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.apply_immediately if v.apply_immediately != null }
}
output "docdb_clusters_arn" {
  description = "Map of arn values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "docdb_clusters_availability_zones" {
  description = "Map of availability_zones values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "docdb_clusters_backup_retention_period" {
  description = "Map of backup_retention_period values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.backup_retention_period if v.backup_retention_period != null }
}
output "docdb_clusters_cluster_identifier" {
  description = "Map of cluster_identifier values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "docdb_clusters_cluster_identifier_prefix" {
  description = "Map of cluster_identifier_prefix values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.cluster_identifier_prefix if v.cluster_identifier_prefix != null && length(v.cluster_identifier_prefix) > 0 }
}
output "docdb_clusters_cluster_members" {
  description = "Map of cluster_members values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.cluster_members if v.cluster_members != null && length(v.cluster_members) > 0 }
}
output "docdb_clusters_cluster_resource_id" {
  description = "Map of cluster_resource_id values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.cluster_resource_id if v.cluster_resource_id != null && length(v.cluster_resource_id) > 0 }
}
output "docdb_clusters_db_cluster_parameter_group_name" {
  description = "Map of db_cluster_parameter_group_name values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.db_cluster_parameter_group_name if v.db_cluster_parameter_group_name != null && length(v.db_cluster_parameter_group_name) > 0 }
}
output "docdb_clusters_db_subnet_group_name" {
  description = "Map of db_subnet_group_name values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.db_subnet_group_name if v.db_subnet_group_name != null && length(v.db_subnet_group_name) > 0 }
}
output "docdb_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "docdb_clusters_enabled_cloudwatch_logs_exports" {
  description = "Map of enabled_cloudwatch_logs_exports values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.enabled_cloudwatch_logs_exports if v.enabled_cloudwatch_logs_exports != null && length(v.enabled_cloudwatch_logs_exports) > 0 }
}
output "docdb_clusters_endpoint" {
  description = "Map of endpoint values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "docdb_clusters_engine" {
  description = "Map of engine values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "docdb_clusters_engine_version" {
  description = "Map of engine_version values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "docdb_clusters_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "docdb_clusters_global_cluster_identifier" {
  description = "Map of global_cluster_identifier values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.global_cluster_identifier if v.global_cluster_identifier != null && length(v.global_cluster_identifier) > 0 }
}
output "docdb_clusters_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "docdb_clusters_kms_key_id" {
  description = "Map of kms_key_id values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "docdb_clusters_manage_master_user_password" {
  description = "Map of manage_master_user_password values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.manage_master_user_password if v.manage_master_user_password != null }
}
output "docdb_clusters_master_password" {
  description = "Map of master_password values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.master_password if v.master_password != null && length(v.master_password) > 0 }
  sensitive   = true
}
output "docdb_clusters_master_password_wo" {
  description = "Map of master_password_wo values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.master_password_wo if v.master_password_wo != null && length(v.master_password_wo) > 0 }
}
output "docdb_clusters_master_password_wo_version" {
  description = "Map of master_password_wo_version values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.master_password_wo_version if v.master_password_wo_version != null }
}
output "docdb_clusters_master_user_secret" {
  description = "Map of master_user_secret values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.master_user_secret if v.master_user_secret != null && length(v.master_user_secret) > 0 }
}
output "docdb_clusters_master_username" {
  description = "Map of master_username values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.master_username if v.master_username != null && length(v.master_username) > 0 }
}
output "docdb_clusters_network_type" {
  description = "Map of network_type values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "docdb_clusters_port" {
  description = "Map of port values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.port if v.port != null }
}
output "docdb_clusters_preferred_backup_window" {
  description = "Map of preferred_backup_window values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.preferred_backup_window if v.preferred_backup_window != null && length(v.preferred_backup_window) > 0 }
}
output "docdb_clusters_preferred_maintenance_window" {
  description = "Map of preferred_maintenance_window values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.preferred_maintenance_window if v.preferred_maintenance_window != null && length(v.preferred_maintenance_window) > 0 }
}
output "docdb_clusters_reader_endpoint" {
  description = "Map of reader_endpoint values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.reader_endpoint if v.reader_endpoint != null && length(v.reader_endpoint) > 0 }
}
output "docdb_clusters_region" {
  description = "Map of region values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "docdb_clusters_restore_to_point_in_time" {
  description = "Map of restore_to_point_in_time values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => one(v.restore_to_point_in_time) if v.restore_to_point_in_time != null && length(v.restore_to_point_in_time) > 0 }
}
output "docdb_clusters_serverless_v2_scaling_configuration" {
  description = "Map of serverless_v2_scaling_configuration values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => one(v.serverless_v2_scaling_configuration) if v.serverless_v2_scaling_configuration != null && length(v.serverless_v2_scaling_configuration) > 0 }
}
output "docdb_clusters_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "docdb_clusters_snapshot_identifier" {
  description = "Map of snapshot_identifier values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.snapshot_identifier if v.snapshot_identifier != null && length(v.snapshot_identifier) > 0 }
}
output "docdb_clusters_storage_encrypted" {
  description = "Map of storage_encrypted values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.storage_encrypted if v.storage_encrypted != null }
}
output "docdb_clusters_storage_type" {
  description = "Map of storage_type values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "docdb_clusters_tags" {
  description = "Map of tags values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "docdb_clusters_tags_all" {
  description = "Map of tags_all values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "docdb_clusters_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all docdb_clusters, keyed the same as var.docdb_clusters"
  value       = { for k, v in aws_docdb_cluster.docdb_clusters : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

