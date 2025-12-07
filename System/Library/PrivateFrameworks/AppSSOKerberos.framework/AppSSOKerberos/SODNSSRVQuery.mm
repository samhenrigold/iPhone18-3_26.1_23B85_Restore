@interface SODNSSRVQuery
- (SODNSSRVQuery)init;
- (id)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data;
- (void)lookupHost:(id)host port:(id)port bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion;
- (void)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion;
@end

@implementation SODNSSRVQuery

- (SODNSSRVQuery)init
{
  v3.receiver = self;
  v3.super_class = SODNSSRVQuery;
  return [(SODNSSRVQuery *)&v3 init];
}

- (id)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data
{
  queryCopy = query;
  identifierCopy = identifier;
  dataCopy = data;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = objc_opt_new();
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = dispatch_group_create();
  v10 = MEMORY[0x245CB78B0]();
  if (identifierCopy)
  {
    v11 = [identifierCopy isEqualToString:&stru_285206D08];
    if ((v11 & 1) == 0)
    {
      v12 = SO_LOG_SODNSSRVQuery(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
      }

      [identifierCopy UTF8String];
      nw_parameters_set_source_application_by_bundle_id();
    }
  }

  memset(v28, 0, sizeof(v28));
  if (dataCopy)
  {
    v13 = [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v28];
    if (v13)
    {
      v14 = SO_LOG_SODNSSRVQuery(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
      }

      nw_parameters_set_source_application();
    }
  }

  [queryCopy UTF8String];
  srv = nw_endpoint_create_srv();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v17 = nw_path_evaluator_copy_path();
  v18 = v17;
  if (v17 && nw_path_get_status(v17) == nw_path_status_satisfied)
  {
    v19 = nw_resolver_create_with_path();
    dispatch_group_enter(v30[5]);
    v20 = dispatch_get_global_queue(0, 0);
    v27 = v19;
    nw_resolver_set_update_handler();
  }

  v21 = v30[5];
  v22 = dispatch_time(0, 10000000000);
  v23 = dispatch_group_wait(v21, v22);
  if (v23 >= 1)
  {
    v24 = SO_LOG_SODNSSRVQuery(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }
  }

  v25 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v25;
}

void __68__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    nw_array_apply();
LABEL_4:
    nw_resolver_cancel();
    dispatch_group_leave(*(*(a1[6] + 8) + 40));
  }
}

uint64_t __68__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v4) encoding:4];
  if ([v6 hasSuffix:@"."])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

    v6 = v7;
  }

  [v5 setHost:v6];
  [v5 setPort:nw_endpoint_get_port(v4)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];

  return 1;
}

- (void)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion
{
  queryCopy = query;
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  v29 = objc_opt_new();
  v13 = SO_LOG_SODNSSRVQuery(v29);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
  }

  v14 = MEMORY[0x245CB78B0]();
  if (identifierCopy)
  {
    v15 = [identifierCopy isEqualToString:&stru_285206D08];
    if ((v15 & 1) == 0)
    {
      v16 = SO_LOG_SODNSSRVQuery(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
      }

      [identifierCopy UTF8String];
      nw_parameters_set_source_application_by_bundle_id();
    }
  }

  memset(v27, 0, sizeof(v27));
  if (dataCopy)
  {
    v17 = [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v27];
    if (v17)
    {
      v18 = SO_LOG_SODNSSRVQuery(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
      }

      nw_parameters_set_source_application();
    }
  }

  [queryCopy UTF8String];
  srv = nw_endpoint_create_srv();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v21 = nw_path_evaluator_copy_path();
  v22 = v21;
  if (v21 && nw_path_get_status(v21) == nw_path_status_satisfied)
  {
    v23 = nw_resolver_create_with_path();
    v24 = dispatch_get_global_queue(0, 0);
    v25 = v23;
    v26 = completionCopy;
    nw_resolver_set_update_handler();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v28, 8);
}

void __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v8 = SO_LOG_SODNSSRVQuery(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_cold_1();
    }

    nw_resolver_cancel();
    v7 = *(a1[5] + 16);
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    nw_array_apply();
    nw_resolver_cancel();
    v7 = *(a1[5] + 16);
LABEL_7:
    v7();
  }
}

uint64_t __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v4) encoding:4];
  if ([v6 hasSuffix:@"."])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

    v6 = v7;
  }

  [v5 setHost:v6];
  v8 = [v5 setPort:nw_endpoint_get_port(v4)];
  v9 = SO_LOG_SODNSSRVQuery(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2_cold_1();
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  return 1;
}

- (void)lookupHost:(id)host port:(id)port bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion
{
  hostCopy = host;
  portCopy = port;
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__2;
  v32[4] = __Block_byref_object_dispose__2;
  v33 = objc_opt_new();
  v16 = SO_LOG_SODNSSRVQuery(v33);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SODNSSRVQuery lookupHost:port:bundleIdentifier:auditTokenData:completion:];
  }

  v17 = MEMORY[0x245CB78B0]();
  if (identifierCopy)
  {
    v18 = [identifierCopy isEqualToString:&stru_285206D08];
    if ((v18 & 1) == 0)
    {
      v19 = SO_LOG_SODNSSRVQuery(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
      }

      [identifierCopy UTF8String];
      nw_parameters_set_source_application_by_bundle_id();
    }
  }

  memset(v31, 0, sizeof(v31));
  if (dataCopy)
  {
    v20 = [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v31];
    if (v20)
    {
      v21 = SO_LOG_SODNSSRVQuery(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
      }

      nw_parameters_set_source_application();
    }
  }

  host = nw_endpoint_create_host([hostCopy UTF8String], objc_msgSend(portCopy, "UTF8String"));
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v24 = nw_path_evaluator_copy_path();
  v25 = v24;
  if (v24 && nw_path_get_status(v24) == nw_path_status_satisfied)
  {
    v28 = dataCopy;
    v26 = nw_resolver_create_with_path();
    v27 = dispatch_get_global_queue(0, 0);
    v29 = v26;
    v30 = completionCopy;
    nw_resolver_set_update_handler();

    dataCopy = v28;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v32, 8);
}

void __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    v8 = SO_LOG_SODNSSRVQuery(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke_cold_1();
    }

    nw_resolver_cancel();
    v7 = *(a1[5] + 16);
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    nw_array_apply();
    nw_resolver_cancel();
    v7 = *(a1[5] + 16);
LABEL_7:
    v7();
  }
}

uint64_t __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 description];
  v5 = SO_LOG_SODNSSRVQuery(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2_cold_1();
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  return 1;
}

@end