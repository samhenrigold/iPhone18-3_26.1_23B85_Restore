@interface LSPlugInQueryAll
- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error;
@end

@implementation LSPlugInQueryAll

- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  v52 = resolverCopy;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  p_vtable = LSDefaultApplicationQueryDatabaseDefaultAppEvaluator.vtable;
  do
  {
    if (v6)
    {
      v9 = _LSDefaultLog(resolverCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v6;
        _os_log_error_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "failed batch fetch of all plugins, retrying: %@", buf, 0xCu);
      }
    }

    v10 = MEMORY[0x1E695DFD8];
    _init = [objc_alloc((p_vtable + 257)) _init];
    v12 = [v10 setWithObject:_init];
    v55 = 0;
    v13 = [v52 _resolveQueries:v12 XPCConnection:0 error:&v55];
    v6 = v55;

    allValues = [v13 allValues];
    firstObject = [allValues firstObject];
    v15FirstObject = [firstObject firstObject];

    v17 = v15FirstObject;
    pluginUnits = [v15FirstObject pluginUnits];
    dbUUID = [v15FirstObject dbUUID];
    v53 = dbUUID;
    if (pluginUnits)
    {
      v20 = dbUUID == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v48 = v15FirstObject;
      v49 = v13;
      v50 = v7;
      v51 = v5;
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([pluginUnits count])
      {
        v22 = 0;
        v23 = 50;
        while (1)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = [pluginUnits count];
          v26 = (v25 - v22) >= 0x32 ? 50 : v25 - v22;
          v27 = [pluginUnits subarrayWithRange:{v22, v26}];
          v54 = 0;
          v28 = MEMORY[0x1E695DFD8];
          v29 = v52;
          v30 = v27;
          v31 = v53;
          v32 = [[LSPlugInQueryWithUnits alloc] initWithPlugInUnits:v30 forDatabaseWithUUID:v31];

          v33 = [v28 setWithObject:v32];
          v34 = [v29 _resolveQueries:v33 XPCConnection:0 error:&v54];

          if (v34)
          {
            allValues2 = [v34 allValues];
            firstObject2 = [allValues2 firstObject];
            v37 = firstObject2;
            v38 = MEMORY[0x1E695E0F0];
            if (firstObject2)
            {
              v38 = firstObject2;
            }

            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = v54;
          if (!v39)
          {
            break;
          }

          [v21 addObjectsFromArray:v39];

          objc_autoreleasePoolPop(v24);
          v22 = v23;
          v41 = [pluginUnits count] > v23;
          v23 += 50;
          v6 = v40;
          if (!v41)
          {
            goto LABEL_24;
          }
        }

        objc_autoreleasePoolPop(v24);
        v5 = v51;
      }

      else
      {
        v40 = v6;
LABEL_24:
        v5 = [v21 copy];
      }

      v6 = v40;
      v7 = v50;
      p_vtable = (LSDefaultApplicationQueryDatabaseDefaultAppEvaluator + 24);
      v17 = v48;
      v13 = v49;
    }

    if (v5)
    {
      v42 = 1;
    }

    else if (_LSNSErrorIsXPCConnectionInterrupted(v6))
    {
      v42 = 0;
    }

    else
    {
      domain = [v6 domain];
      if ([domain isEqual:@"LSApplicationWorkspaceErrorDomain"])
      {
        v42 = [v6 code] != 114;
      }

      else
      {
        v42 = 1;
      }
    }

    if (v42)
    {
      break;
    }

    ++v7;
  }

  while (v7 != 10);
  if (!v5)
  {
    v44 = _LSDefaultLog(resolverCopy);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [LSPlugInQueryAll resolveExpensiveQueryRemotelyUsingResolver:v6 error:v44];
    }

    if (error)
    {
      v45 = v6;
      *error = v6;
    }
  }

  return v5;
}

- (void)resolveExpensiveQueryRemotelyUsingResolver:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "failed batch fetch of all plugins, giving up: %@", &v2, 0xCu);
}

@end