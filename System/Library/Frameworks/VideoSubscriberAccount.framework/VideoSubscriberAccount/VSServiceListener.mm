@interface VSServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (VSServiceListener)init;
- (void)_addConnectionHandler:(id)handler;
- (void)_removeConnectionHandler:(id)handler;
@end

@implementation VSServiceListener

- (VSServiceListener)init
{
  v6.receiver = self;
  v6.super_class = VSServiceListener;
  v2 = [(VSServiceListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectionHandlers = v2->_connectionHandlers;
    v2->_connectionHandlers = v3;
  }

  return v2;
}

- (void)_addConnectionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionHandlers = [(VSServiceListener *)selfCopy connectionHandlers];
  [connectionHandlers addObject:handlerCopy];

  objc_sync_exit(selfCopy);
}

- (void)_removeConnectionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionHandlers = [(VSServiceListener *)selfCopy connectionHandlers];
  [connectionHandlers removeObject:handlerCopy];

  objc_sync_exit(selfCopy);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = VSDefaultLogObject(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = connectionCopy;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Received request to open connection %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  entitlementNames = [(VSServiceListener *)self entitlementNames];
  v8 = [entitlementNames countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(entitlementNames);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [connectionCopy valueForEntitlement:v12];
        bOOLValue = objc_opt_respondsToSelector();
        if (bOOLValue)
        {
          bOOLValue = [v13 BOOLValue];
          if (bOOLValue)
          {
            v19 = VSDefaultLogObject(bOOLValue);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = v12;
              _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, "Will accept connection due to %@ entitlement.", buf, 0xCu);
            }

            exportedInterface = [(VSServiceListener *)selfCopy exportedInterface];
            [connectionCopy setExportedInterface:exportedInterface];

            exportedObject = [(VSServiceListener *)selfCopy exportedObject];
            [connectionCopy setExportedObject:exportedObject];

            v22 = objc_alloc_init(VSServiceConnectionHandler);
            [(VSServiceConnectionHandler *)v22 setDelegate:selfCopy];
            [(VSServiceConnectionHandler *)v22 setConnection:connectionCopy];
            [(VSServiceListener *)selfCopy _addConnectionHandler:v22];

            v24 = VSDefaultLogObject(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v32 = connectionCopy;
              _os_log_impl(&dword_23AB8E000, v24, OS_LOG_TYPE_DEFAULT, "Will accept connection %@", buf, 0xCu);
            }

            [connectionCopy resume];
            v18 = 1;
            goto LABEL_22;
          }
        }

        v15 = VSDefaultLogObject(bOOLValue);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = v12;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "Value for %@ entitlement (%@) was inadequate.", buf, 0x16u);
        }
      }

      v9 = [entitlementNames countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = VSErrorLogObject(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [VSServiceListener listener:connectionCopy shouldAcceptNewConnection:v17];
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Will NOT accept connection %@", &v2, 0xCu);
}

@end