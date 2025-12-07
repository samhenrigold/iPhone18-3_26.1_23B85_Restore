@interface BMAccessClient
- (BMAccessClient)initWithUseCase:(id)case sandboxExtensionCache:(id)cache accessTracker:(id)tracker;
- (BOOL)_currentProcessIsSandboxed;
- (BOOL)removeResource:(id)resource error:(id *)error;
- (id)_newConnectionForDomain:(unint64_t)domain;
- (id)_synchronousRemoteObjectProxyForDomain:(unint64_t)domain errorHandler:(id)handler;
- (id)requestAccessToResource:(id)resource mode:(unint64_t)mode error:(id *)error;
- (id)requestEndpointForDomain:(unint64_t)domain error:(id *)error;
@end

@implementation BMAccessClient

- (BMAccessClient)initWithUseCase:(id)case sandboxExtensionCache:(id)cache accessTracker:(id)tracker
{
  caseCopy = case;
  cacheCopy = cache;
  trackerCopy = tracker;
  v20.receiver = self;
  v20.super_class = BMAccessClient;
  v11 = [(BMAccessClient *)&v20 init];
  if (v11)
  {
    v12 = +[BMProcess current];
    [v12 enforceDatavaultEntitlementRestrictions];

    v13 = [caseCopy copy];
    useCase = v11->_useCase;
    v11->_useCase = v13;

    if (cacheCopy)
    {
      v15 = cacheCopy;
    }

    else
    {
      v15 = +[BMAccessAssertionCache sharedCache];
    }

    accessAssertionCache = v11->_accessAssertionCache;
    v11->_accessAssertionCache = v15;

    if (trackerCopy)
    {
      v17 = trackerCopy;
    }

    else
    {
      v17 = +[BMAccessTracker sharedInstance];
    }

    accessTracker = v11->_accessTracker;
    v11->_accessTracker = v17;
  }

  return v11;
}

- (id)_newConnectionForDomain:(unint64_t)domain
{
  if (domain == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = geteuid();
  }

  [BMXPCConnectionFactory connectionToAccessServerInDomain:domain user:v5 useCase:self->_useCase options:1];
  return objc_claimAutoreleasedReturnValue();
}

- (id)_synchronousRemoteObjectProxyForDomain:(unint64_t)domain errorHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = self->_connectionWrapper;
  if (![(BMXPCConnectionWrapper *)v7 isValid])
  {
    v8 = [(BMAccessClient *)self _newConnectionForDomain:domain];

    objc_storeStrong(&self->_connectionWrapper, v8);
    v7 = v8;
  }

  if (!v7)
  {
    v16 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Failed to get or create BMXPCConnectionWrapper";
    connection = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v16 errorWithDomain:@"BMAccessErrorDomain" code:0 userInfo:connection];
    handlerCopy[2](handlerCopy, v15);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  connection = [(BMXPCConnectionWrapper *)v7 connection];
  if (!connection)
  {
    v17 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Failed to get connection from BMXPCConnectionWrapper";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v17 errorWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v15];
    handlerCopy[2](handlerCopy, v18);

    goto LABEL_10;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__BMAccessClient__synchronousRemoteObjectProxyForDomain_errorHandler___block_invoke;
  v20[3] = &unk_1E796B0A0;
  v21 = v7;
  v10 = handlerCopy;
  v22 = v10;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  if (!v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Failed to create remote object proxy";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v13];
    v10[2](v10, v14);
  }

  v15 = v21;
LABEL_11:

  return v11;
}

void __70__BMAccessClient__synchronousRemoteObjectProxyForDomain_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 domain];
  if ([v3 isEqual:*MEMORY[0x1E696A250]])
  {
    v4 = [v5 code];

    if (v4 == 4099)
    {
      [*(a1 + 32) invalidate];
    }
  }

  else
  {
  }

  (*(*(a1 + 40) + 16))();
}

- (id)requestAccessToResource:(id)resource mode:(unint64_t)mode error:(id *)error
{
  v89[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v45 = resourceCopy;
  if (resourceCopy)
  {
    v7 = resourceCopy;
    v8 = +[BMPaths isTestPathOverridden];
    v48 = v7;
    type = [v48 type];
    if (type > 2)
    {
      switch(type)
      {
        case 3:
          v10 = "BMAccessClient.requestAccessToResource: Database";
          break;
        case 4:
          v10 = "BMAccessClient.requestAccessToResource: Set";
          break;
        case 5:
          name = [v48 name];
          v14 = [name isEqual:@"BMSyncResource"];

          if (v14)
          {
            v10 = "BMAccessClient.requestAccessToResource: Sync";
          }

          else
          {
            name2 = [v48 name];
            v34 = [name2 isEqual:@"BMSharedSyncResource"];

            if (v34)
            {
              v10 = "BMAccessClient.requestAccessToResource: SharedSync";
            }

            else
            {
              name3 = [v48 name];
              v39 = [name3 isEqual:@"BMSetsMergeableDeltasResource"];

              if (v39)
              {
                v10 = "BMAccessClient.requestAccessToResource: SetsMergeableDeltas";
              }

              else
              {
                v10 = "BMAccessClient.requestAccessToResource: Other";
              }
            }
          }

          break;
        default:
LABEL_17:
          v10 = "BMAccessClient.requestAccessToResource: Unhandled";
          break;
      }
    }

    else
    {
      if (!type)
      {
        v10 = "BMAccessClient.requestAccessToResource: Unknown";
        goto LABEL_20;
      }

      if (type != 1)
      {
        if (type == 2)
        {
          v10 = "BMAccessClient.requestAccessToResource: View";
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v10 = "BMAccessClient.requestAccessToResource: Stream";
    }

LABEL_20:
    v15 = _os_activity_create(&dword_1AC15D000, v10, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v43 = v15;
    os_activity_scope_enter(v15, &state);
    v16 = BMServiceDomainForResource(v48);
    v17 = +[BMProcess current];
    v18 = [v17 processType] == 5;

    if (!v18 && !v8)
    {
      v19 = +[BMProcess current];
      v44 = [BMAccessControlPolicy policyForProcess:v19 connectionFlags:0 useCase:self->_useCase];

      if (([(BMAccessDescriptor *)v44 allowsAccessToResource:v48 withMode:mode]& 1) == 0)
      {
        [(BMAccessTracker *)self->_accessTracker logMissingEntitlementsForAccessToResource:v48 domain:v16 withMode:mode useCase:self->_useCase];
        if (error)
        {
          v25 = MEMORY[0x1E696ABC0];
          v86 = *MEMORY[0x1E696A578];
          v87 = @"Not entitled";
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          *error = [v25 errorWithDomain:@"BMAccessErrorDomain" code:3 userInfo:v26];
        }

        v12 = 0;
        goto LABEL_46;
      }
    }

    v44 = [[BMAccessDescriptor alloc] initWithDomain:v16 accessMode:mode resource:v48];
    v12 = [(BMAccessAssertionCache *)self->_accessAssertionCache assertionForAccessDescriptor:?];
    if (v12)
    {
LABEL_46:

      os_activity_scope_leave(&state);
      goto LABEL_47;
    }

    v20 = +[BMProcess current];
    v21 = [v20 processType] == 2;

    if (v21 || v8)
    {
      v22 = +[BMResourceContainerManager sharedInstance];
      v76 = 0;
      v23 = [v22 openContainerForResource:v48 mode:mode error:&v76];
      v24 = v76;

      if (v23)
      {
        v12 = [[_BMAccessAssertionNotApplicable alloc] initWithDescriptor:v44 container:v23];
      }

      else
      {
        if (error)
        {
          v35 = MEMORY[0x1E696ABC0];
          v84 = *MEMORY[0x1E696A578];
          v85 = @"Cannot open container";
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          *error = [v35 errorWithDomain:@"BMAccessErrorDomain" code:13 userInfo:v36];
        }

        v12 = 0;
      }

      goto LABEL_46;
    }

    v75 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy_;
    v73 = __Block_byref_object_dispose_;
    v74 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy_;
    v67 = __Block_byref_object_dispose_;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy_;
    v61 = __Block_byref_object_dispose_;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy_;
    v55 = __Block_byref_object_dispose_;
    v56 = 0;
    v27 = MEMORY[0x1E69E9820];
    do
    {
      v50[0] = v27;
      v50[1] = 3221225472;
      v50[2] = __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke;
      v50[3] = &unk_1E796B0C8;
      v50[4] = &v51;
      v28 = [(BMAccessClient *)self _synchronousRemoteObjectProxyForDomain:v16 errorHandler:v50];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_102;
      v49[3] = &unk_1E796B0F0;
      v49[4] = &v69;
      v49[5] = &v57;
      v49[6] = &v63;
      v49[7] = &v51;
      [v28 requestAccessToResource:v48 withMode:mode reply:v49];
    }

    while ((BMShouldRetry(v52[5], &v75, 2uLL, 1) & 1) != 0);
    v29 = v64[5];
    if (v29)
    {
      v12 = [(BMAccessAssertionCache *)self->_accessAssertionCache createAssertionForAccessDescriptor:v44 extensionToken:v29 container:v70[5] path:v58[5]];
      if (v12)
      {
LABEL_45:
        _Block_object_dispose(&v51, 8);

        _Block_object_dispose(&v57, 8);
        _Block_object_dispose(&v63, 8);

        _Block_object_dispose(&v69, 8);
        goto LABEL_46;
      }

      v30 = __biome_log_for_category(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = BMAccessModePrintableDescription(mode);
        v32 = v52[5];
        *buf = 138543874;
        v79 = v31;
        v80 = 2114;
        v81 = v48;
        v82 = 2114;
        v83 = v32;
        _os_log_error_impl(&dword_1AC15D000, v30, OS_LOG_TYPE_ERROR, "Failed to create assertion for %{public}@ access to %{public}@ with error %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v30 = __biome_log_for_category(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v40 = BMAccessModePrintableDescription(mode);
        v41 = v52[5];
        *buf = 138543874;
        v79 = v40;
        v80 = 2114;
        v81 = v48;
        v82 = 2114;
        v83 = v41;
        _os_log_error_impl(&dword_1AC15D000, v30, OS_LOG_TYPE_ERROR, "Failed to acquire extension token for %{public}@ access to %{public}@ with error %{public}@", buf, 0x20u);
      }
    }

    v12 = 0;
    goto LABEL_45;
  }

  if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v88 = *MEMORY[0x1E696A578];
    v89[0] = @"nil resource";
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
    [v11 errorWithDomain:@"BMAccessErrorDomain" code:12 userInfo:v42];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_47:

  return v12;
}

void __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_102(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v23 = v9;

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(a1[7] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
}

- (BOOL)_currentProcessIsSandboxed
{
  v2 = +[BMProcess current];
  isSandboxed = [v2 isSandboxed];

  return isSandboxed;
}

- (id)requestEndpointForDomain:(unint64_t)domain error:(id *)error
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_1AC15D000, "BMAccessClient.requestEndpointForDomain:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);
  v26 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v6 = MEMORY[0x1E69E9820];
  do
  {
    v13[0] = v6;
    v13[1] = 3221225472;
    v13[2] = __69__BMAccessClient_ConnectionProxying__requestEndpointForDomain_error___block_invoke;
    v13[3] = &unk_1E796B0C8;
    v13[4] = &v14;
    v7 = [(BMAccessClient *)self _synchronousRemoteObjectProxyForDomain:domain errorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__BMAccessClient_ConnectionProxying__requestEndpointForDomain_error___block_invoke_127;
    v12[3] = &unk_1E796B118;
    v12[4] = &v20;
    v12[5] = &v14;
    [v7 requestBiomeEndpoint:domain == 1 reply:v12];
  }

  while ((BMShouldRetry(v15[5], &v26, 2uLL, 1) & 1) != 0);
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v8;
}

void __69__BMAccessClient_ConnectionProxying__requestEndpointForDomain_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __69__BMAccessClient_ConnectionProxying__requestEndpointForDomain_error___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)removeResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_1AC15D000, "BMAccessClient.removeResource:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);
  v6 = resourceCopy;
  v7 = BMServiceDomainForResource(resourceCopy);
  v26 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v8 = MEMORY[0x1E69E9820];
  do
  {
    v15[0] = v8;
    v15[1] = 3221225472;
    v15[2] = __50__BMAccessClient_Deletions__removeResource_error___block_invoke;
    v15[3] = &unk_1E796B0C8;
    v15[4] = &v16;
    v9 = [(BMAccessClient *)self _synchronousRemoteObjectProxyForDomain:v7 errorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__BMAccessClient_Deletions__removeResource_error___block_invoke_132;
    v14[3] = &unk_1E796B140;
    v14[4] = &v22;
    v14[5] = &v16;
    [v9 removeResource:resourceCopy reply:v14];
  }

  while ((BMShouldRetry(v17[5], &v26, 2uLL, 1) & 1) != 0);
  if (error)
  {
    *error = v17[5];
  }

  v10 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v10;
}

void __50__BMAccessClient_Deletions__removeResource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __53__BMAccessClient_requestAccessToResource_mode_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Error extending sandbox token - unable to establish XPC connection: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end