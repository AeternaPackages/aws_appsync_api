variable "appsync_apis" {
  description = <<EOT
Map of appsync_apis, attributes below
Required:
    - name
Optional:
    - owner_contact
    - region
    - tags
    - event_config (block)
Nested appsync_api_caches (aws_appsync_api_cache):
    Required:
        - api_caching_behavior
        - ttl
        - type
    Optional:
        - at_rest_encryption_enabled
        - region
        - transit_encryption_enabled
Nested appsync_api_keys (aws_appsync_api_key):
    Optional:
        - description
        - expires
        - region
Nested appsync_channel_namespaces (aws_appsync_channel_namespace):
    Required:
        - name
    Optional:
        - code_handlers
        - region
        - tags
        - handler_configs (block)
        - publish_auth_mode (block)
        - subscribe_auth_mode (block)
Nested appsync_datasources (aws_appsync_datasource):
    Required:
        - name
        - type
    Optional:
        - description
        - region
        - service_role_arn
        - dynamodb_config (block)
        - elasticsearch_config (block)
        - event_bridge_config (block)
        - http_config (block)
        - lambda_config (block)
        - opensearchservice_config (block)
        - relational_database_config (block)
Nested appsync_domain_name_api_associations (aws_appsync_domain_name_api_association):
    Required:
        - domain_name
    Optional:
        - region
Nested appsync_functions (aws_appsync_function):
    Required:
        - data_source
        - name
    Optional:
        - code
        - description
        - function_version
        - max_batch_size
        - region
        - request_mapping_template
        - response_mapping_template
        - runtime (block)
        - sync_config (block)
Nested appsync_resolvers (aws_appsync_resolver):
    Required:
        - field
        - type
    Optional:
        - code
        - data_source
        - kind
        - max_batch_size
        - region
        - request_template
        - response_template
        - caching_config (block)
        - pipeline_config (block)
        - runtime (block)
        - sync_config (block)
Nested appsync_types (aws_appsync_type):
    Required:
        - definition
        - format
    Optional:
        - region
EOT

  type = map(object({
    name          = string
    owner_contact = optional(string)
    region        = optional(string)
    tags          = optional(map(string))
    event_config = optional(list(object({
      auth_provider = optional(list(object({
        auth_type = string
        cognito_config = optional(list(object({
          app_id_client_regex = optional(string)
          aws_region          = string
          user_pool_id        = string
        })))
        lambda_authorizer_config = optional(list(object({
          authorizer_result_ttl_in_seconds = optional(number)
          authorizer_uri                   = string
          identity_validation_expression   = optional(string)
        })))
        openid_connect_config = optional(list(object({
          auth_ttl  = optional(number)
          client_id = optional(string)
          iat_ttl   = optional(number)
          issuer    = string
        })))
      })))
      connection_auth_mode = optional(list(object({
        auth_type = string
      })))
      default_publish_auth_mode = optional(list(object({
        auth_type = string
      })))
      default_subscribe_auth_mode = optional(list(object({
        auth_type = string
      })))
      log_config = optional(list(object({
        cloudwatch_logs_role_arn = string
        log_level                = string
      })))
    })))
    appsync_api_caches = optional(map(object({
      api_caching_behavior       = string
      ttl                        = number
      type                       = string
      at_rest_encryption_enabled = optional(bool)
      region                     = optional(string)
      transit_encryption_enabled = optional(bool)
    })))
    appsync_api_keys = optional(map(object({
      description = optional(string)
      expires     = optional(string)
      region      = optional(string)
    })))
    appsync_channel_namespaces = optional(map(object({
      name          = string
      code_handlers = optional(string)
      region        = optional(string)
      tags          = optional(map(string))
      handler_configs = optional(list(object({
        on_publish = optional(list(object({
          behavior = string
          integration = optional(list(object({
            data_source_name = string
            lambda_config = optional(list(object({
              invoke_type = optional(string)
            })))
          })))
        })))
        on_subscribe = optional(list(object({
          behavior = string
          integration = optional(list(object({
            data_source_name = string
            lambda_config = optional(list(object({
              invoke_type = optional(string)
            })))
          })))
        })))
      })))
      publish_auth_mode = optional(list(object({
        auth_type = string
      })))
      subscribe_auth_mode = optional(list(object({
        auth_type = string
      })))
    })))
    appsync_datasources = optional(map(object({
      name             = string
      type             = string
      description      = optional(string)
      region           = optional(string)
      service_role_arn = optional(string)
      dynamodb_config = optional(object({
        delta_sync_config = optional(object({
          base_table_ttl        = optional(number)
          delta_sync_table_name = string
          delta_sync_table_ttl  = optional(number)
        }))
        region                 = optional(string)
        table_name             = string
        use_caller_credentials = optional(bool)
        versioned              = optional(bool)
      }))
      elasticsearch_config = optional(object({
        endpoint = string
        region   = optional(string)
      }))
      event_bridge_config = optional(object({
        event_bus_arn = string
      }))
      http_config = optional(object({
        authorization_config = optional(object({
          authorization_type = optional(string)
          aws_iam_config = optional(object({
            signing_region       = optional(string)
            signing_service_name = optional(string)
          }))
        }))
        endpoint = string
      }))
      lambda_config = optional(object({
        function_arn = string
      }))
      opensearchservice_config = optional(object({
        endpoint = string
        region   = optional(string)
      }))
      relational_database_config = optional(object({
        http_endpoint_config = optional(object({
          aws_secret_store_arn  = string
          database_name         = optional(string)
          db_cluster_identifier = string
          region                = optional(string)
          schema                = optional(string)
        }))
        source_type = optional(string)
      }))
    })))
    appsync_domain_name_api_associations = optional(map(object({
      domain_name = string
      region      = optional(string)
    })))
    appsync_functions = optional(map(object({
      data_source               = string
      name                      = string
      code                      = optional(string)
      description               = optional(string)
      function_version          = optional(string)
      max_batch_size            = optional(number)
      region                    = optional(string)
      request_mapping_template  = optional(string)
      response_mapping_template = optional(string)
      runtime = optional(object({
        name            = string
        runtime_version = string
      }))
      sync_config = optional(object({
        conflict_detection = optional(string)
        conflict_handler   = optional(string)
        lambda_conflict_handler_config = optional(object({
          lambda_conflict_handler_arn = optional(string)
        }))
      }))
    })))
    appsync_resolvers = optional(map(object({
      field             = string
      type              = string
      code              = optional(string)
      data_source       = optional(string)
      kind              = optional(string)
      max_batch_size    = optional(number)
      region            = optional(string)
      request_template  = optional(string)
      response_template = optional(string)
      caching_config = optional(object({
        caching_keys = optional(set(string))
        ttl          = optional(number)
      }))
      pipeline_config = optional(object({
        functions = optional(list(string))
      }))
      runtime = optional(object({
        name            = string
        runtime_version = string
      }))
      sync_config = optional(object({
        conflict_detection = optional(string)
        conflict_handler   = optional(string)
        lambda_conflict_handler_config = optional(object({
          lambda_conflict_handler_arn = optional(string)
        }))
      }))
    })))
    appsync_types = optional(map(object({
      definition = string
      format     = string
      region     = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.appsync_apis) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_api_caches, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_api_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_channel_namespaces, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_datasources, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_domain_name_api_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_functions, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_resolvers, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.appsync_apis : [for kk in keys(coalesce(v0.appsync_types, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
