@interface DNDSRemoteAvailabilityServiceProvider
- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)provider;
- (DNDSRemoteAvailabilityServiceProviderDelegate)delegate;
- (void)_addConnection:(id)connection;
- (void)_handleClientConnectionInterrupted:(id)interrupted;
- (void)_handleClientConnectionInvalidated:(id)invalidated;
- (void)_removeConnection:(id)connection;
- (void)dealloc;
- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation DNDSRemoteAvailabilityServiceProvider

- (DNDSRemoteAvailabilityServiceProvider)initWithClientDetailsProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = DNDSRemoteAvailabilityServiceProvider;
  v6 = [(DNDSRemoteAvailabilityServiceProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v7->_connections;
    v7->_connections = v8;

    v10 = MEMORY[0x277CF32A0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__DNDSRemoteAvailabilityServiceProvider_initWithClientDetailsProvider___block_invoke;
    v15[3] = &unk_278F8A2F8;
    v11 = v7;
    v16 = v11;
    v12 = [v10 listenerWithConfigurator:v15];
    requestListener = v11->_requestListener;
    v11->_requestListener = v12;

    objc_storeStrong(&v11->_clientDetailsProvider, provider);
  }

  return v7;
}

void __71__DNDSRemoteAvailabilityServiceProvider_initWithClientDetailsProvider___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.donotdisturb.availability.service.launching"];
  v3 = DNDRemoteAvailabilityServiceServerInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(DNDSRemoteAvailabilityServiceProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = DNDSRemoteAvailabilityServiceProvider;
  [(DNDSRemoteAvailabilityServiceProvider *)&v3 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  if (self->_requestListener == listenerCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke;
    v12[3] = &unk_278F8A348;
    v12[4] = self;
    objc_copyWeak(&v13, &location);
    [connectionCopy configureConnection:v12];
    objc_destroyWeak(&v13);
    [(DNDSRemoteAvailabilityServiceProvider *)self _addConnection:connectionCopy];
    [connectionCopy activate];
    v11 = DNDSLogAvailabilityProvider;
    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = connectionCopy;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "XPC connection successfully accepted: connection=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    [connectionCopy invalidate];
  }

  objc_destroyWeak(&location);
}

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = DNDRemoteAvailabilityServiceServerInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_278F8A320;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_278F8A320;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInterrupted:v3];
}

void __83__DNDSRemoteAvailabilityServiceProvider_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientConnectionInvalidated:v3];
}

- (void)getIsLocalUserAvailableWithRequestDetails:(id)details completionHandler:(id)handler
{
  v63 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  handlerCopy = handler;
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"com.apple.donotdisturbd.%@", v9];
  [v10 UTF8String];
  v11 = os_transaction_create();

  currentContext = [MEMORY[0x277CF3280] currentContext];
  v54 = 0u;
  v55 = 0u;
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];
  v15 = auditToken;
  v50 = v11;
  v51 = detailsCopy;
  if (auditToken)
  {
    objc_msgSend_realToken(auditToken);
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  *buf = v54;
  *&buf[16] = v55;
  v16 = TCCAccessCheckAuditToken();
  dnds_hasUserNotificationsCommunicationEntitlement = [currentContext dnds_hasUserNotificationsCommunicationEntitlement];
  remoteProcess2 = [currentContext remoteProcess];
  bundleIdentifier = [remoteProcess2 bundleIdentifier];

  v20 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifier];
  *buf = v54;
  *&buf[16] = v55;
  v21 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [v21 containingBundleRecord];
    bundleIdentifier2 = [containingBundleRecord bundleIdentifier];

    v24 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:bundleIdentifier2];
    if (dnds_hasUserNotificationsCommunicationEntitlement)
    {
      dnds_hasUserNotificationsCommunicationEntitlement = 1;
    }

    else
    {
      entitlements = [containingBundleRecord entitlements];
      v26 = [entitlements objectForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
      dnds_hasUserNotificationsCommunicationEntitlement = [v26 BOOLValue];
    }

    v20 = v24;
    bundleIdentifier = bundleIdentifier2;
  }

  else
  {
    containingBundleRecord = v21;
  }

  v27 = DNDGrantedUserNotificationsAuthorizationForBundleIdentifier(bundleIdentifier);
  if (!v16 || !dnds_hasUserNotificationsCommunicationEntitlement || !v27)
  {
    v36 = MEMORY[0x277D05840];
    if (v27)
    {
      v30 = 0;
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
      {
        [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = *v36;
      v60 = *MEMORY[0x277CCA450];
      v61 = @"User Notifications are disabled for this App.";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v30 = [v37 errorWithDomain:v38 code:1004 userInfo:v39];
    }

    v35 = handlerCopy;
    if (v16)
    {
      v34 = v51;
      if (dnds_hasUserNotificationsCommunicationEntitlement)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v34 = v51;
      if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
      {
        [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
      }

      v40 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277D05840];
      v58 = *MEMORY[0x277CCA450];
      v59 = @"Focus Status is not shared with this App.";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v43 = [v40 errorWithDomain:v41 code:1004 userInfo:v42];

      v30 = v43;
      v35 = handlerCopy;
      if (dnds_hasUserNotificationsCommunicationEntitlement)
      {
LABEL_24:
        v33 = v50;
        if (!v35)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_ERROR))
    {
      [DNDSRemoteAvailabilityServiceProvider getIsLocalUserAvailableWithRequestDetails:completionHandler:];
    }

    v44 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277D05840];
    v56 = *MEMORY[0x277CCA450];
    v57 = @"App is missing Communication Notifications entitlement.";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v47 = [v44 errorWithDomain:v45 code:1004 userInfo:v46];

    v30 = v47;
    v33 = v50;
    v35 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_33;
    }

LABEL_32:
    (v35)[2](v35, MEMORY[0x277CBEC38], v30);
LABEL_33:
    [currentContext invalidate];
    goto LABEL_39;
  }

  delegate = [(DNDSRemoteAvailabilityServiceProvider *)self delegate];
  v53 = 0;
  v29 = [delegate remoteAvailabilityServiceProvider:self isLocalUserAvailableForApplicationIdentifier:v20 withError:&v53];
  v30 = v53;

  v31 = DNDSLogAvailabilityProvider;
  v32 = os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    v33 = v50;
    v34 = v51;
    if (v32)
    {
      *buf = 138543874;
      *&buf[4] = v51;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2114;
      *&buf[24] = currentContext;
      _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error determining Focus Status; will report YES for available: error=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v35 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC38], v30);
  }

  else
  {
    v33 = v50;
    v34 = v51;
    if (v32)
    {
      v48 = @"NO";
      *buf = 138543874;
      *&buf[4] = v51;
      *&buf[12] = 2114;
      if (v29)
      {
        v48 = @"YES";
      }

      *&buf[14] = v48;
      *&buf[22] = 2114;
      *&buf[24] = currentContext;
      _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determinined Focus Status: available=%{public}@ connection=%{public}@", buf, 0x20u);
    }

    v49 = [MEMORY[0x277CCABB0] numberWithBool:v29];
    v35 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v49, 0);
  }

LABEL_39:
}

- (void)_handleClientConnectionInterrupted:(id)interrupted
{
  v8 = *MEMORY[0x277D85DE8];
  interruptedCopy = interrupted;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = interruptedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was interrupted: connection=%{public}@", &v6, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:interruptedCopy];
}

- (void)_handleClientConnectionInvalidated:(id)invalidated
{
  v8 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v5 = DNDSLogAvailabilityProvider;
  if (os_log_type_enabled(DNDSLogAvailabilityProvider, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = invalidatedCopy;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Client XPC connection was invalidated: connection=%{public}@", &v6, 0xCu);
  }

  [(DNDSRemoteAvailabilityServiceProvider *)self _removeConnection:invalidatedCopy];
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableSet *)self->_connections removeObject:connectionCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (DNDSRemoteAvailabilityServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end