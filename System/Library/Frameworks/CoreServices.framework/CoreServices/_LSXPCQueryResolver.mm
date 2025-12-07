@interface _LSXPCQueryResolver
- (_LSXPCQueryResolver)init;
- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error;
- (id)resolveExpensiveRemoteQueriesInSet:(id)set XPCConnection:(id)connection error:(id *)error;
- (id)resolveWhatWeCanLocallyWithQueries:(id)queries XPCConnection:(id)connection error:(id *)error;
- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block;
@end

@implementation _LSXPCQueryResolver

- (_LSXPCQueryResolver)init
{
  v6.receiver = self;
  v6.super_class = _LSXPCQueryResolver;
  v2 = [(_LSXPCQueryResolver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_LSLocalQueryResolver);
    localResolver = v2->_localResolver;
    v2->_localResolver = v3;
  }

  return v2;
}

- (id)resolveWhatWeCanLocallyWithQueries:(id)queries XPCConnection:(id)connection error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  connectionCopy = connection;
  if ([__LSDefaultsGetSharedInstance(connectionCopy v11)])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:338 description:@"Hit the client-side query resolution codepath from within lsd! This is a serious bug! Please file a radar against Launch Services."];
  }

  v12 = [MEMORY[0x1E695DFA8] set];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = queriesCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 _canResolveLocallyWithoutMappingDatabase])
        {
          [v12 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {
    localResolver = self->_localResolver;
    v25 = 0;
    v19 = [(_LSLocalQueryResolver *)localResolver _resolveQueries:v12 XPCConnection:connectionCopy error:&v25];
    v20 = v25;
    v21 = v20;
    if (error && !v19)
    {
      v22 = v20;
      v19 = 0;
      *error = v21;
    }
  }

  else
  {
    v21 = 0;
    v19 = MEMORY[0x1E695E0F8];
  }

  return v19;
}

- (id)resolveExpensiveRemoteQueriesInSet:(id)set XPCConnection:(id)connection error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([__LSDefaultsGetSharedInstance(v7 v8)])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:372 description:@"Hit the client-side remote-expensive query resolution codepath from within lsd! This is a serious bug! Please file a radar against Launch Services."];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = setCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        _remoteResolutionIsExpensive = [v14 _remoteResolutionIsExpensive];
        if (_remoteResolutionIsExpensive)
        {
          if ((v11 & 1) == 0)
          {
            __LAUNCH_SERVICES_IS_FAULTING_BECAUSE_THIS_PROCESS_IS_USING_VERY_EXPENSIVE_SPI__(_remoteResolutionIsExpensive);
          }

          v23 = 0;
          v16 = [v14 resolveExpensiveQueryRemotelyUsingResolver:self error:&v23];
          v17 = v23;
          v18 = v17;
          if (v16)
          {
            [v7 setObject:v16 forKeyedSubscript:v14];
          }

          else
          {
            v19 = _LSDefaultLog(v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v29 = v18;
              _os_log_fault_impl(&dword_18162D000, v19, OS_LOG_TYPE_FAULT, "Could not resolve expensive query remotely! This may lead to lsd jetsams! %@", buf, 0xCu);
            }
          }

          v11 = 1;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  connectionCopy = connection;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__44;
  v55 = __Block_byref_object_dispose__44;
  v56 = 0;
  v48 = 0;
  v49[0] = &v48;
  v49[1] = 0x3032000000;
  v49[2] = __Block_byref_object_copy__44;
  v49[3] = __Block_byref_object_dispose__44;
  v50 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = queriesCopy;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v11)
  {
    v12 = *v45;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v44 + 1) + 8 * i) isLegacy])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v44 objects:v59 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = (v49[0] + 40);
  obj = *(v49[0] + 40);
  v16 = [(_LSXPCQueryResolver *)self resolveWhatWeCanLocallyWithQueries:v10 XPCConnection:connectionCopy error:&obj];
  objc_storeStrong(v15, obj);
  v17 = v52[5];
  v52[5] = v16;

  v18 = v52[5];
  if (v18)
  {
    v19 = [v10 mutableCopy];
    v20 = MEMORY[0x1E695DFD8];
    allKeys = [v52[5] allKeys];
    v22 = [v20 setWithArray:allKeys];
    [v19 minusSet:v22];

    if ([v19 count])
    {
      v23 = (v49[0] + 40);
      v42 = *(v49[0] + 40);
      v24 = [(_LSXPCQueryResolver *)self resolveExpensiveRemoteQueriesInSet:v19 XPCConnection:connectionCopy error:&v42];
      objc_storeStrong(v23, v42);
      if (v24)
      {
        v25 = [v52[5] mutableCopy];
        [v25 addEntriesFromDictionary:v24];
        objc_storeStrong(v52 + 5, v25);
        v26 = MEMORY[0x1E695DFD8];
        allKeys2 = [v24 allKeys];
        v28 = [v26 setWithArray:allKeys2];
        [v19 minusSet:v28];
      }
    }

    if ([v19 count])
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke;
      v37[3] = &unk_1E6A1DB38;
      v39 = &v48;
      v41 = v14;
      v38 = v19;
      v40 = &v51;
      v29 = MEMORY[0x1865D71B0](v37);
      v30 = 0;
      while (1)
      {
        v29[2](v29);
        IsXPCConnectionInterrupted = _LSNSErrorIsXPCConnectionInterrupted(*(v49[0] + 40));
        if (!IsXPCConnectionInterrupted)
        {
          break;
        }

        v32 = _LSDefaultLog(IsXPCConnectionInterrupted);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(_LSXPCQueryResolver *)buf _resolveQueries:v49 XPCConnection:&v58 error:v32];
        }

        v33 = *(v49[0] + 40);
        *(v49[0] + 40) = 0;

        if (++v30 == 5)
        {
          goto LABEL_27;
        }
      }

      if (v30)
      {
        v34 = _LSDefaultLog(IsXPCConnectionInterrupted);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [_LSXPCQueryResolver _resolveQueries:v30 XPCConnection:v34 error:?];
        }
      }

LABEL_27:
    }

    v18 = v52[5];
  }

  if (error && !v18)
  {
    *error = *(v49[0] + 40);
    v18 = v52[5];
  }

  v35 = v18;
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v51, 8);

  return v35;
}

- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:query];
  v18 = 0;
  v11 = [(_LSXPCQueryResolver *)self _resolveQueries:v10 XPCConnection:connectionCopy error:&v18];
  v12 = v18;

  if (v11)
  {
    allValues = [v11 allValues];
    firstObject = [allValues firstObject];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80___LSXPCQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke;
    v16[3] = &unk_1E6A1DB60;
    v17 = blockCopy;
    [firstObject enumerateObjectsUsingBlock:v16];
  }

  else
  {
    v15 = 0;
    (*(blockCopy + 2))(blockCopy, 0, v12, &v15);
  }
}

- (void)_resolveQueries:(int)a1 XPCConnection:(NSObject *)a2 error:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Got result for query with attempt %d", v2, 8u);
}

- (void)_resolveQueries:(void *)a3 XPCConnection:(os_log_t)log error:.cold.2(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138543362;
  *a3 = v4;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Re-trying failed xpc message to lsd: %{public}@", buf, 0xCu);
}

@end