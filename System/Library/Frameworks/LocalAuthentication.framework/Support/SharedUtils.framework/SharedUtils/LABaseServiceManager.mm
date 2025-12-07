@interface LABaseServiceManager
- (LABaseServiceManager)init;
- (void)_shutdownSessionsWithServiceType:(id)type;
- (void)bootstrapServiceWithType:(id)type clientConnection:(id)connection completionHandler:(id)handler;
- (void)bootstrapSessionServiceType:(id)type clientID:(id)d clientConnection:(id)connection completionHandler:(id)handler;
- (void)bootstrapSessionServiceType:(id)type clientID:(id)d completionHandler:(id)handler;
- (void)shutdownSessionsWithMatchingID:(id)d;
@end

@implementation LABaseServiceManager

- (LABaseServiceManager)init
{
  v6.receiver = self;
  v6.super_class = LABaseServiceManager;
  v2 = [(LABaseService *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessions = v2->_sessions;
    v2->_sessions = v3;
  }

  return v2;
}

- (void)bootstrapSessionServiceType:(id)type clientID:(id)d completionHandler:(id)handler
{
  v8 = MEMORY[0x1E696B0B8];
  handlerCopy = handler;
  dCopy = d;
  typeCopy = type;
  currentConnection = [v8 currentConnection];
  [(LABaseServiceManager *)self bootstrapSessionServiceType:typeCopy clientID:dCopy clientConnection:currentConnection completionHandler:handlerCopy];
}

- (void)bootstrapSessionServiceType:(id)type clientID:(id)d clientConnection:(id)connection completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  connectionCopy = connection;
  handlerCopy = handler;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  val = self;
  allValues = [(NSMutableDictionary *)self->_sessions allValues];
  v13 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = *v34;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        serviceType = [v16 serviceType];
        if ([serviceType isEqualToString:typeCopy])
        {
          clientID = [v16 clientID];
          v19 = [clientID isEqualToString:dCopy];

          if (v19)
          {
            v20 = LACLogService();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              [LABaseServiceManager bootstrapSessionServiceType:v16 clientID:dCopy clientConnection:v20 completionHandler:?];
            }

            service = [v16 service];
            endpoint = [service endpoint];
            handlerCopy[2](handlerCopy, endpoint, 0);

            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  objc_initWeak(&location, val);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke;
  v27[3] = &unk_1E86B5D68;
  v28 = typeCopy;
  v29 = dCopy;
  v30 = handlerCopy;
  objc_copyWeak(&v31, &location);
  [(LABaseServiceManager *)val bootstrapServiceWithType:v28 clientConnection:connectionCopy completionHandler:v27];
  objc_destroyWeak(&v31);

  objc_destroyWeak(&location);
LABEL_16:
}

void __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LACLogService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setManager:WeakRetained];
      }

      v9 = [[LADefaultServiceSession alloc] initWithService:v5 serviceType:*(a1 + 32) client:*(a1 + 40)];
      if (([WeakRetained allowsMultipleClientsForServiceType:*(a1 + 32)] & 1) == 0)
      {
        [WeakRetained _shutdownSessionsWithServiceType:*(a1 + 32)];
      }

      v10 = WeakRetained[8];
      v11 = [(LADefaultServiceSession *)v9 sessionID];
      [v10 setObject:v9 forKeyedSubscript:v11];

      v12 = LACLogService();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke_cold_2();
      }

      v13 = *(a1 + 48);
      v14 = [(LADefaultServiceSession *)v9 service];
      v15 = [v14 endpoint];
      (*(v13 + 16))(v13, v15, 0);
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"ServiceManager did become unavailable";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = [v16 errorWithDomain:@"ServiceKitErrorDomain" code:0 userInfo:v17];

      v18 = LACLogService();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)shutdownSessionsWithMatchingID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->_sessions allValues];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412546;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        clientID = [v10 clientID];
        if ([clientID isEqualToString:dCopy])
        {
        }

        else
        {
          service = [v10 service];
          serviceID = [service serviceID];
          v14 = [serviceID isEqualToString:dCopy];

          if (!v14)
          {
            continue;
          }
        }

        v15 = LACLogService();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          service2 = [v10 service];
          clientID2 = [v10 clientID];
          *buf = v20;
          v28 = service2;
          v29 = 2112;
          v30 = clientID2;
          _os_log_debug_impl(&dword_1DF403000, v15, OS_LOG_TYPE_DEBUG, "Unregistered session service: %@ client: %@", buf, 0x16u);
        }

        sessions = selfCopy->_sessions;
        sessionID = [v10 sessionID];
        [(NSMutableDictionary *)sessions setObject:0 forKeyedSubscript:sessionID];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }
}

- (void)_shutdownSessionsWithServiceType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_sessions allValues];
  v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        serviceType = [v10 serviceType];
        v12 = [serviceType isEqualToString:typeCopy];

        if (v12)
        {
          service = [v10 service];
          serviceID = [service serviceID];
          [(LABaseServiceManager *)self shutdownSessionsWithMatchingID:serviceID];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)bootstrapServiceWithType:(id)type clientConnection:(id)connection completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v7 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = @"Service bootstrapping service not implemented";
  v8 = MEMORY[0x1E695DF20];
  handlerCopy = handler;
  v10 = [v8 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v7 errorWithDomain:@"ServiceKitErrorDomain" code:0 userInfo:v10];

  v12 = LACLogService();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [LABaseServiceManager bootstrapServiceWithType:typeCopy clientConnection:v11 completionHandler:v12];
  }

  handlerCopy[2](handlerCopy, 0, v11);
}

- (void)bootstrapSessionServiceType:(NSObject *)a3 clientID:clientConnection:completionHandler:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 service];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1DF403000, a3, OS_LOG_TYPE_DEBUG, "Reused session service: %@ clientID: %@", &v6, 0x16u);
}

void __96__LABaseServiceManager_bootstrapSessionServiceType_clientID_clientConnection_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)bootstrapServiceWithType:(uint64_t)a1 clientConnection:(uint64_t)a2 completionHandler:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1DF403000, log, OS_LOG_TYPE_ERROR, "Could not bootstrap service with type: %{public}@ (%{public}@)", &v3, 0x16u);
}

@end