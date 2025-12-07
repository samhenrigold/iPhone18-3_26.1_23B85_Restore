@interface _LSLocalQueryResolver
- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error;
- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block;
@end

@implementation _LSLocalQueryResolver

- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  connectionCopy = connection;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([__LSDefaultsGetSharedInstance(dictionary v7)])
  {
    v8 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v8 assertActiveForThisThread];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = queriesCopy;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v19 = *v37;
    v18 = 0;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v36 + 1) + 8 * v10);
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__44;
      v34 = __Block_byref_object_dispose__44;
      array = [MEMORY[0x1E695DF70] array];
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__44;
      v28 = __Block_byref_object_dispose__44;
      v29 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61___LSLocalQueryResolver__resolveQueries_XPCConnection_error___block_invoke;
      v23[3] = &unk_1E6A1DAC0;
      v23[4] = &v30;
      v23[5] = &v24;
      [(_LSLocalQueryResolver *)self _enumerateResolvedResultsOfQuery:v11 XPCConnection:connectionCopy withBlock:v23];
      v12 = v31[5];
      if (v12)
      {
        [dictionary setObject:v31[5] forKeyedSubscript:v11];
      }

      else
      {

        v13 = v25[5];
        dictionary = 0;
        v18 = v13;
      }

      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(&v30, 8);
      if (!v12)
      {
        break;
      }

      if (v9 == ++v10)
      {
        v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (error && !dictionary)
  {
    v14 = v18;
    *error = v18;
  }

  return dictionary;
}

- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block
{
  v50 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  connectionCopy = connection;
  blockCopy = block;
  v11 = [__LSDefaultsGetSharedInstance(blockCopy v10)];
  if (((queryCopy != 0) & v11) != 1)
  {
    goto LABEL_12;
  }

  v12 = objc_autoreleasePoolPush();
  v44 = 0;
  v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:queryCopy requiringSecureCoding:1 error:&v44];
  v14 = v44;
  v15 = v14;
  if (!v13)
  {
    v19 = _LSDefaultLog(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_LSLocalQueryResolver *)v15 _enumerateResolvedResultsOfQuery:v19 XPCConnection:v20 withBlock:v21, v22, v23, v24, v25];
    }

    goto LABEL_10;
  }

  v43 = v14;
  v16 = [MEMORY[0x1E696ACD0] ls_unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v43];
  v17 = v43;

  if (!v16)
  {
    v19 = _LSDefaultLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_LSLocalQueryResolver *)v17 _enumerateResolvedResultsOfQuery:v19 XPCConnection:v26 withBlock:v27, v28, v29, v30, v31];
    }

    queryCopy = 0;
    v15 = v17;
LABEL_10:

    goto LABEL_11;
  }

  v15 = v17;
  queryCopy = v16;
LABEL_11:

  objc_autoreleasePoolPop(v12);
LABEL_12:
  if (!queryCopy || ![queryCopy _requiresDatabaseMappingEntitlement])
  {
    goto LABEL_24;
  }

  if (connectionCopy)
  {
    _xpcConnection = [connectionCopy _xpcConnection];
    v33 = _LSXPCConnectionMayMapDatabase(_xpcConnection) == 0;
  }

  else
  {
    v33 = 0;
  }

  if (((v33 | v11 ^ 1) & 1) == 0)
  {
    v33 = +[_LSQueryContext simulateLimitedMappingForXCTests];
  }

  if (!v33)
  {
    goto LABEL_24;
  }

  isLegacy = [queryCopy isLegacy];
  if (isLegacy)
  {
    v35 = _LSDefaultLog(isLegacy);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 138543618;
      *&buf[4] = queryCopy;
      *&buf[12] = 1024;
      *&buf[14] = processIdentifier;
      _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "Unentitled query %{public}@ issued from pid %i. Allowing due to legacy SPI.", buf, 0x12u);
    }

LABEL_24:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v48 = 0;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __82___LSLocalQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke;
    v40[3] = &unk_1E6A1DAE8;
    v42 = buf;
    v41 = blockCopy;
    [queryCopy _enumerateWithXPCConnection:connectionCopy block:v40];
    v37 = v41;
    goto LABEL_25;
  }

  v38 = _LSDefaultLog(isLegacy);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    -[_LSLocalQueryResolver _enumerateResolvedResultsOfQuery:XPCConnection:withBlock:].cold.3(queryCopy, v49, [connectionCopy processIdentifier], v38);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v48 = 0;
  v45 = *MEMORY[0x1E696A278];
  v46 = @"Query not allowed";
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v37 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v39, "[_LSLocalQueryResolver _enumerateResolvedResultsOfQuery:XPCConnection:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQueryContext.mm", 308);

  (*(blockCopy + 2))(blockCopy, 0, v37, *&buf[8] + 24);
LABEL_25:

  _Block_object_dispose(buf, 8);
}

- (void)_enumerateResolvedResultsOfQuery:(uint64_t)a3 XPCConnection:(uint64_t)a4 withBlock:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to decode query: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_enumerateResolvedResultsOfQuery:(uint64_t)a3 XPCConnection:(uint64_t)a4 withBlock:(uint64_t)a5 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to encode query: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_enumerateResolvedResultsOfQuery:(int)a3 XPCConnection:(os_log_t)log withBlock:.cold.3(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Unentitled query %{public}@ issued from pid %i. Disallowing and yielding an error.", buf, 0x12u);
}

@end