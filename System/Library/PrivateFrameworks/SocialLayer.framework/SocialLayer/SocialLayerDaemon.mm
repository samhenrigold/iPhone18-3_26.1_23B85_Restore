@interface SocialLayerDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_acceptMainConnection:(id)connection;
- (void)_appConnectionInvalidated:(id)invalidated;
- (void)_appleSystemLanguageDidChange:(id)change;
- (void)endpointForServiceNamed:(id)named reply:(id)reply;
- (void)multiplexDidRemoveAllServices:(id)services;
- (void)setupListeners;
@end

@implementation SocialLayerDaemon

- (void)setupListeners
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Error registering for Apple system language change notification: %d. We will continue without registering, but this will result in localized strings not updating when the system language changes.", v2, 8u);
}

void __35__SocialLayerDaemon_setupListeners__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _appleSystemLanguageDidChange:0];

  objc_destroyWeak(&to);
}

- (void)_appleSystemLanguageDidChange:(id)change
{
  v4 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SocialLayerDaemon _appleSystemLanguageDidChange:v4];
  }

  notify_cancel(self->_appleLanguageChangeNotificationToken);
  xpc_transaction_exit_clean();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  IsEntitled = SLDConnectionIsEntitled(connectionCopy);
  if (!IsEntitled)
  {
    v11 = SLDaemonLogHandle(IsEntitled);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SocialLayerDaemon listener:connectionCopy shouldAcceptNewConnection:v11];
    }

    goto LABEL_7;
  }

  xpcListener = [(SocialLayerDaemon *)self xpcListener];

  if (xpcListener != listenerCopy)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  [(SocialLayerDaemon *)self _acceptMainConnection:connectionCopy];
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_acceptMainConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846BD5A0];
  [connectionCopy setExportedInterface:v5];
  [connectionCopy setExportedObject:self];
  v6 = +[SLDServiceListenerMultiplex emptyMultiplex];
  [v6 setDelegate:self];
  connectionsToServicesTable = [(SocialLayerDaemon *)self connectionsToServicesTable];
  [connectionsToServicesTable setObject:v6 forKey:connectionCopy];

  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__SocialLayerDaemon__acceptMainConnection___block_invoke;
  v14 = &unk_2789270F8;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(&v16, &location);
  v8 = SLDGlobalWorkloop([connectionCopy setInvalidationHandler:&v11]);
  [connectionCopy _setQueue:{v8, v11, v12, v13, v14}];

  v10 = SLDaemonLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = connectionCopy;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "Accepted a new primary client connection: %@", buf, 0xCu);
  }

  [connectionCopy resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __43__SocialLayerDaemon__acceptMainConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _appConnectionInvalidated:v2];
}

- (void)endpointForServiceNamed:(id)named reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v7 = MEMORY[0x277CCAE80];
  replyCopy = reply;
  currentConnection = [v7 currentConnection];
  v10 = NSClassFromString(namedCopy);
  connectionsToServicesTable = [(SocialLayerDaemon *)self connectionsToServicesTable];
  v12 = [connectionsToServicesTable objectForKey:currentConnection];

  if (v10 && v12 && (v13 = -[objc_class conformsToProtocol:](v10, "conformsToProtocol:", &unk_2846AE6F0), v13) && ([v12 endpointForServiceClass:v10], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = SLDaemonLogHandle(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = currentConnection;
      v20 = 2112;
      v21 = v10;
      _os_log_debug_impl(&dword_231772000, v15, OS_LOG_TYPE_DEBUG, "Returning endpoint: %@ to client: %@ for service class: %@", &v16, 0x20u);
    }
  }

  else
  {
    v15 = SLDaemonLogHandle(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SocialLayerDaemon *)currentConnection endpointForServiceNamed:namedCopy reply:v15];
    }

    v14 = 0;
  }

  replyCopy[2](replyCopy, v14);
}

- (void)_appConnectionInvalidated:(id)invalidated
{
  v12 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = SLDaemonLogHandle(invalidatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = invalidatedCopy;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "Primary client connection invalidated: %@", &v10, 0xCu);
  }

  connectionsToServicesTable = [(SocialLayerDaemon *)self connectionsToServicesTable];
  v7 = [connectionsToServicesTable objectForKey:invalidatedCopy];

  connectionsToServicesTable2 = [(SocialLayerDaemon *)self connectionsToServicesTable];
  [connectionsToServicesTable2 removeObjectForKey:invalidatedCopy];

  if (([v7 isEmpty] & 1) == 0)
  {
    multiplexesPendingRemoval = [(SocialLayerDaemon *)self multiplexesPendingRemoval];
    [multiplexesPendingRemoval addObject:v7];
  }
}

- (void)multiplexDidRemoveAllServices:(id)services
{
  servicesCopy = services;
  multiplexesPendingRemoval = [(SocialLayerDaemon *)self multiplexesPendingRemoval];
  [multiplexesPendingRemoval removeObject:servicesCopy];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Primary client connection (%@) does not have the right entitlement.", &v2, 0xCu);
}

- (void)endpointForServiceNamed:(os_log_t)log reply:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "Primary client connection (%@) requested endpoint for service (%@), but we could not create one", &v3, 0x16u);
}

@end