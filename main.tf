locals {
  appsync_apis = { for k1, v1 in var.appsync_apis : k1 => { event_config = v1.event_config, name = v1.name, owner_contact = v1.owner_contact, region = v1.region, tags = v1.tags } }

  appsync_api_caches = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_api_caches, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_api_keys = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_api_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_channel_namespaces = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_channel_namespaces, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_datasources = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_datasources, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_domain_name_api_associations = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_domain_name_api_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_functions = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_functions, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_resolvers = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_resolvers, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)

  appsync_types = merge([
    for k1, v1 in var.appsync_apis : {
      for k2, v2 in coalesce(v1.appsync_types, {}) :
      "${k1}/${k2}" => merge(v2, {
        api_id = module.appsync_apis.appsync_apis_id["${k1}"]
      })
    }
  ]...)
}

module "appsync_apis" {
  source       = "git::https://github.com/AeternaModules/aws_appsync_api.git?ref=v6.58.0"
  appsync_apis = local.appsync_apis
}

module "appsync_api_caches" {
  source             = "git::https://github.com/AeternaModules/aws_appsync_api_cache.git?ref=v6.58.0"
  appsync_api_caches = local.appsync_api_caches
  depends_on         = [module.appsync_apis]
}

module "appsync_api_keys" {
  source           = "git::https://github.com/AeternaModules/aws_appsync_api_key.git?ref=v6.58.0"
  appsync_api_keys = local.appsync_api_keys
  depends_on       = [module.appsync_apis]
}

module "appsync_channel_namespaces" {
  source                     = "git::https://github.com/AeternaModules/aws_appsync_channel_namespace.git?ref=v6.58.0"
  appsync_channel_namespaces = local.appsync_channel_namespaces
  depends_on                 = [module.appsync_apis]
}

module "appsync_datasources" {
  source              = "git::https://github.com/AeternaModules/aws_appsync_datasource.git?ref=v6.58.0"
  appsync_datasources = local.appsync_datasources
  depends_on          = [module.appsync_apis]
}

module "appsync_domain_name_api_associations" {
  source                               = "git::https://github.com/AeternaModules/aws_appsync_domain_name_api_association.git?ref=v6.58.0"
  appsync_domain_name_api_associations = local.appsync_domain_name_api_associations
  depends_on                           = [module.appsync_apis]
}

module "appsync_functions" {
  source            = "git::https://github.com/AeternaModules/aws_appsync_function.git?ref=v6.58.0"
  appsync_functions = local.appsync_functions
  depends_on        = [module.appsync_apis]
}

module "appsync_resolvers" {
  source            = "git::https://github.com/AeternaModules/aws_appsync_resolver.git?ref=v6.58.0"
  appsync_resolvers = local.appsync_resolvers
  depends_on        = [module.appsync_apis]
}

module "appsync_types" {
  source        = "git::https://github.com/AeternaModules/aws_appsync_type.git?ref=v6.58.0"
  appsync_types = local.appsync_types
  depends_on    = [module.appsync_apis]
}

