# --- aws_appsync_api ---
output "appsync_apis_id" {
  description = "Map of id values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_id
}

output "appsync_apis_api_arn" {
  description = "Map of api_arn values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_api_arn
}

output "appsync_apis_api_id" {
  description = "Map of api_id values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_api_id
}

output "appsync_apis_dns" {
  description = "Map of dns values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_dns
}

output "appsync_apis_event_config" {
  description = "Map of event_config values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_event_config
}

output "appsync_apis_name" {
  description = "Map of name values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_name
}

output "appsync_apis_owner_contact" {
  description = "Map of owner_contact values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_owner_contact
}

output "appsync_apis_region" {
  description = "Map of region values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_region
}

output "appsync_apis_tags" {
  description = "Map of tags values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_tags
}

output "appsync_apis_tags_all" {
  description = "Map of tags_all values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_tags_all
}

output "appsync_apis_waf_web_acl_arn" {
  description = "Map of waf_web_acl_arn values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_waf_web_acl_arn
}

output "appsync_apis_xray_enabled" {
  description = "Map of xray_enabled values across all appsync_apis, keyed the same as var.appsync_apis"
  value       = module.appsync_apis.appsync_apis_xray_enabled
}

# --- aws_appsync_api_cache ---
output "appsync_api_caches_id" {
  description = "Map of id values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_id
}

output "appsync_api_caches_api_caching_behavior" {
  description = "Map of api_caching_behavior values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_api_caching_behavior
}

output "appsync_api_caches_api_id" {
  description = "Map of api_id values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_api_id
}

output "appsync_api_caches_at_rest_encryption_enabled" {
  description = "Map of at_rest_encryption_enabled values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_at_rest_encryption_enabled
}

output "appsync_api_caches_region" {
  description = "Map of region values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_region
}

output "appsync_api_caches_transit_encryption_enabled" {
  description = "Map of transit_encryption_enabled values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_transit_encryption_enabled
}

output "appsync_api_caches_ttl" {
  description = "Map of ttl values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_ttl
}

output "appsync_api_caches_type" {
  description = "Map of type values across all appsync_api_caches, keyed the same as var.appsync_api_caches"
  value       = module.appsync_api_caches.appsync_api_caches_type
}

# --- aws_appsync_api_key ---
output "appsync_api_keys_id" {
  description = "Map of id values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_id
}

output "appsync_api_keys_api_id" {
  description = "Map of api_id values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_api_id
}

output "appsync_api_keys_api_key_id" {
  description = "Map of api_key_id values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_api_key_id
}

output "appsync_api_keys_description" {
  description = "Map of description values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_description
}

output "appsync_api_keys_expires" {
  description = "Map of expires values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_expires
}

output "appsync_api_keys_key" {
  description = "Map of key values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_key
  sensitive   = true
}

output "appsync_api_keys_region" {
  description = "Map of region values across all appsync_api_keys, keyed the same as var.appsync_api_keys"
  value       = module.appsync_api_keys.appsync_api_keys_region
}

# --- aws_appsync_channel_namespace ---
output "appsync_channel_namespaces_id" {
  description = "Map of id values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_id
}

output "appsync_channel_namespaces_api_id" {
  description = "Map of api_id values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_api_id
}

output "appsync_channel_namespaces_channel_namespace_arn" {
  description = "Map of channel_namespace_arn values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_channel_namespace_arn
}

output "appsync_channel_namespaces_code_handlers" {
  description = "Map of code_handlers values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_code_handlers
}

output "appsync_channel_namespaces_handler_configs" {
  description = "Map of handler_configs values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_handler_configs
}

output "appsync_channel_namespaces_name" {
  description = "Map of name values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_name
}

output "appsync_channel_namespaces_publish_auth_mode" {
  description = "Map of publish_auth_mode values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_publish_auth_mode
}

output "appsync_channel_namespaces_region" {
  description = "Map of region values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_region
}

output "appsync_channel_namespaces_subscribe_auth_mode" {
  description = "Map of subscribe_auth_mode values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_subscribe_auth_mode
}

output "appsync_channel_namespaces_tags" {
  description = "Map of tags values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_tags
}

output "appsync_channel_namespaces_tags_all" {
  description = "Map of tags_all values across all appsync_channel_namespaces, keyed the same as var.appsync_channel_namespaces"
  value       = module.appsync_channel_namespaces.appsync_channel_namespaces_tags_all
}

# --- aws_appsync_datasource ---
output "appsync_datasources_id" {
  description = "Map of id values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_id
}

output "appsync_datasources_api_id" {
  description = "Map of api_id values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_api_id
}

output "appsync_datasources_arn" {
  description = "Map of arn values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_arn
}

output "appsync_datasources_description" {
  description = "Map of description values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_description
}

output "appsync_datasources_dynamodb_config" {
  description = "Map of dynamodb_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_dynamodb_config
}

output "appsync_datasources_elasticsearch_config" {
  description = "Map of elasticsearch_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_elasticsearch_config
}

output "appsync_datasources_event_bridge_config" {
  description = "Map of event_bridge_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_event_bridge_config
}

output "appsync_datasources_http_config" {
  description = "Map of http_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_http_config
}

output "appsync_datasources_lambda_config" {
  description = "Map of lambda_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_lambda_config
}

output "appsync_datasources_name" {
  description = "Map of name values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_name
}

output "appsync_datasources_opensearchservice_config" {
  description = "Map of opensearchservice_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_opensearchservice_config
}

output "appsync_datasources_region" {
  description = "Map of region values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_region
}

output "appsync_datasources_relational_database_config" {
  description = "Map of relational_database_config values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_relational_database_config
}

output "appsync_datasources_service_role_arn" {
  description = "Map of service_role_arn values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_service_role_arn
}

output "appsync_datasources_type" {
  description = "Map of type values across all appsync_datasources, keyed the same as var.appsync_datasources"
  value       = module.appsync_datasources.appsync_datasources_type
}

# --- aws_appsync_domain_name_api_association ---
output "appsync_domain_name_api_associations_id" {
  description = "Map of id values across all appsync_domain_name_api_associations, keyed the same as var.appsync_domain_name_api_associations"
  value       = module.appsync_domain_name_api_associations.appsync_domain_name_api_associations_id
}

output "appsync_domain_name_api_associations_api_id" {
  description = "Map of api_id values across all appsync_domain_name_api_associations, keyed the same as var.appsync_domain_name_api_associations"
  value       = module.appsync_domain_name_api_associations.appsync_domain_name_api_associations_api_id
}

output "appsync_domain_name_api_associations_domain_name" {
  description = "Map of domain_name values across all appsync_domain_name_api_associations, keyed the same as var.appsync_domain_name_api_associations"
  value       = module.appsync_domain_name_api_associations.appsync_domain_name_api_associations_domain_name
}

output "appsync_domain_name_api_associations_region" {
  description = "Map of region values across all appsync_domain_name_api_associations, keyed the same as var.appsync_domain_name_api_associations"
  value       = module.appsync_domain_name_api_associations.appsync_domain_name_api_associations_region
}

# --- aws_appsync_function ---
output "appsync_functions_id" {
  description = "Map of id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_id
}

output "appsync_functions_api_id" {
  description = "Map of api_id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_api_id
}

output "appsync_functions_arn" {
  description = "Map of arn values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_arn
}

output "appsync_functions_code" {
  description = "Map of code values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_code
}

output "appsync_functions_data_source" {
  description = "Map of data_source values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_data_source
}

output "appsync_functions_description" {
  description = "Map of description values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_description
}

output "appsync_functions_function_id" {
  description = "Map of function_id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_function_id
}

output "appsync_functions_function_version" {
  description = "Map of function_version values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_function_version
}

output "appsync_functions_max_batch_size" {
  description = "Map of max_batch_size values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_max_batch_size
}

output "appsync_functions_name" {
  description = "Map of name values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_name
}

output "appsync_functions_region" {
  description = "Map of region values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_region
}

output "appsync_functions_request_mapping_template" {
  description = "Map of request_mapping_template values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_request_mapping_template
}

output "appsync_functions_response_mapping_template" {
  description = "Map of response_mapping_template values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_response_mapping_template
}

output "appsync_functions_runtime" {
  description = "Map of runtime values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_runtime
}

output "appsync_functions_sync_config" {
  description = "Map of sync_config values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = module.appsync_functions.appsync_functions_sync_config
}

# --- aws_appsync_resolver ---
output "appsync_resolvers_id" {
  description = "Map of id values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_id
}

output "appsync_resolvers_api_id" {
  description = "Map of api_id values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_api_id
}

output "appsync_resolvers_arn" {
  description = "Map of arn values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_arn
}

output "appsync_resolvers_caching_config" {
  description = "Map of caching_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_caching_config
}

output "appsync_resolvers_code" {
  description = "Map of code values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_code
}

output "appsync_resolvers_data_source" {
  description = "Map of data_source values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_data_source
}

output "appsync_resolvers_field" {
  description = "Map of field values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_field
}

output "appsync_resolvers_kind" {
  description = "Map of kind values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_kind
}

output "appsync_resolvers_max_batch_size" {
  description = "Map of max_batch_size values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_max_batch_size
}

output "appsync_resolvers_pipeline_config" {
  description = "Map of pipeline_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_pipeline_config
}

output "appsync_resolvers_region" {
  description = "Map of region values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_region
}

output "appsync_resolvers_request_template" {
  description = "Map of request_template values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_request_template
}

output "appsync_resolvers_response_template" {
  description = "Map of response_template values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_response_template
}

output "appsync_resolvers_runtime" {
  description = "Map of runtime values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_runtime
}

output "appsync_resolvers_sync_config" {
  description = "Map of sync_config values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_sync_config
}

output "appsync_resolvers_type" {
  description = "Map of type values across all appsync_resolvers, keyed the same as var.appsync_resolvers"
  value       = module.appsync_resolvers.appsync_resolvers_type
}

# --- aws_appsync_type ---
output "appsync_types_id" {
  description = "Map of id values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_id
}

output "appsync_types_api_id" {
  description = "Map of api_id values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_api_id
}

output "appsync_types_arn" {
  description = "Map of arn values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_arn
}

output "appsync_types_definition" {
  description = "Map of definition values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_definition
}

output "appsync_types_description" {
  description = "Map of description values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_description
}

output "appsync_types_format" {
  description = "Map of format values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_format
}

output "appsync_types_name" {
  description = "Map of name values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_name
}

output "appsync_types_region" {
  description = "Map of region values across all appsync_types, keyed the same as var.appsync_types"
  value       = module.appsync_types.appsync_types_region
}


