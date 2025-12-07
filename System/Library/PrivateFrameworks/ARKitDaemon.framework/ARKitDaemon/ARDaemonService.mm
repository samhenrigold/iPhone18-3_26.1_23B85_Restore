@interface ARDaemonService
+ (int64_t)maximumConcurrentServicesPerClient;
- (ARDaemonService)initWithConnection:(id)connection;
- (ARDaemonService)initWithConnection:(id)connection exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface;
- (ARDaemonService)initWithRemoteService:(id)service;
- (ARDaemonServiceDataSource)dataSource;
- (ARDaemonServiceDelegate)delegate;
- (id)initAsLocalService;
- (uint64_t)isAuthorized;
- (uint64_t)isDataAccessAllowed;
- (uint64_t)isHidFocused;
- (void)_commonInitWithProcessName:(id)name processIdentifier:(int)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)beginDispatchChannelCreation;
- (void)beginRTChannelCreation;
- (void)interruptionHandler;
- (void)invalidate;
- (void)invalidateClient;
- (void)invalidationHandler;
- (void)setActive:(BOOL)active;
- (void)startService:(id)service;
@end

@implementation ARDaemonService

- (void)_commonInitWithProcessName:(id)name processIdentifier:(int)identifier bundleIdentifier:(id)bundleIdentifier
{
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  clientProcessName = self->_clientProcessName;
  self->_clientProcessName = nameCopy;
  v11 = nameCopy;

  self->_clientProcessIdentifier = identifier;
  clientBundleIdentifier = self->_clientBundleIdentifier;
  self->_clientBundleIdentifier = bundleIdentifierCopy;
  v13 = bundleIdentifierCopy;

  serviceName = [objc_opt_class() serviceName];
  v14 = [serviceName stringByReplacingOccurrencesOfString:@"com.apple.arkit.service." withString:&stru_284F65A90];
  shortenedServiceNameForLogging = self->_shortenedServiceNameForLogging;
  self->_shortenedServiceNameForLogging = v14;
}

- (ARDaemonService)initWithConnection:(id)connection
{
  v47 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  remoteServiceClass = [objc_opt_class() remoteServiceClass];
  if (remoteServiceClass)
  {
    remoteServiceClass2 = [objc_opt_class() remoteServiceClass];
    remoteServiceClass = objc_opt_class();
    if (remoteServiceClass2 != remoteServiceClass)
    {
      v7 = [objc_msgSend(objc_opt_class() "remoteServiceClass")];
      v8 = [objc_msgSend(objc_opt_class() "remoteServiceClass")];
      v9 = v8;
      if (v7)
      {
        if (v8)
        {
          self = [(ARDaemonService *)self initWithConnection:connectionCopy exportedInterface:v8 remoteObjectInterface:v7];
          selfCopy = self;
LABEL_33:

          goto LABEL_34;
        }

        if (ARShouldUseLogTypeError_onceToken_2 != -1)
        {
          [ARDaemonService initWithConnection:];
        }

        v30 = ARShouldUseLogTypeError_internalOSVersion_2;
        v31 = _ARLogDaemon_4(v8);
        v24 = v31;
        if (v30 == 1)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v26 = NSStringFromClass(v32);
            remoteServiceClass3 = [objc_opt_class() remoteServiceClass];
            v28 = NSStringFromClass(remoteServiceClass3);
            v41 = 138543874;
            v42 = v26;
            v43 = 2048;
            selfCopy7 = self;
            v45 = 2112;
            v46 = v28;
            v29 = "%{public}@ <%p>: %@ does not define a daemon service interface. Implement the 'daemonServiceInterface'";
            goto LABEL_25;
          }

          goto LABEL_32;
        }

        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        v38 = objc_opt_class();
        v26 = NSStringFromClass(v38);
        remoteServiceClass4 = [objc_opt_class() remoteServiceClass];
        v28 = NSStringFromClass(remoteServiceClass4);
        v41 = 138543874;
        v42 = v26;
        v43 = 2048;
        selfCopy7 = self;
        v45 = 2112;
        v46 = v28;
        v29 = "Error: %{public}@ <%p>: %@ does not define a daemon service interface. Implement the 'daemonServiceInterface'";
      }

      else
      {
        if (ARShouldUseLogTypeError_onceToken_2 != -1)
        {
          [ARDaemonService initWithConnection:];
        }

        v22 = ARShouldUseLogTypeError_internalOSVersion_2;
        v23 = _ARLogDaemon_4(v8);
        v24 = v23;
        if (v22 == 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            remoteServiceClass5 = [objc_opt_class() remoteServiceClass];
            v28 = NSStringFromClass(remoteServiceClass5);
            v41 = 138543874;
            v42 = v26;
            v43 = 2048;
            selfCopy7 = self;
            v45 = 2112;
            v46 = v28;
            v29 = "%{public}@ <%p>: %@ does not define a remote service interface. Implement the 'remoteServiceInterface'";
LABEL_25:
            v34 = v24;
            v35 = OS_LOG_TYPE_ERROR;
LABEL_31:
            _os_log_impl(&dword_23D391000, v34, v35, v29, &v41, 0x20u);
          }

LABEL_32:

          selfCopy = 0;
          goto LABEL_33;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_32;
        }

        v36 = objc_opt_class();
        v26 = NSStringFromClass(v36);
        remoteServiceClass6 = [objc_opt_class() remoteServiceClass];
        v28 = NSStringFromClass(remoteServiceClass6);
        v41 = 138543874;
        v42 = v26;
        v43 = 2048;
        selfCopy7 = self;
        v45 = 2112;
        v46 = v28;
        v29 = "Error: %{public}@ <%p>: %@ does not define a remote service interface. Implement the 'remoteServiceInterface'";
      }

      v34 = v24;
      v35 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    [ARDaemonService initWithConnection:];
  }

  v11 = ARShouldUseLogTypeError_internalOSVersion_2;
  v12 = _ARLogDaemon_4(remoteServiceClass);
  v7 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v41 = 138543874;
      v42 = v14;
      v43 = 2048;
      selfCopy7 = self;
      v45 = 2112;
      v46 = v16;
      v17 = "%{public}@ <%p>: %@ does not define a remote service class. Implement the 'remoteServiceClass' function and point it to its remote";
      v18 = v7;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_13:
      _os_log_impl(&dword_23D391000, v18, v19, v17, &v41, 0x20u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v20 = objc_opt_class();
    v14 = NSStringFromClass(v20);
    v21 = objc_opt_class();
    v16 = NSStringFromClass(v21);
    v41 = 138543874;
    v42 = v14;
    v43 = 2048;
    selfCopy7 = self;
    v45 = 2112;
    v46 = v16;
    v17 = "Error: %{public}@ <%p>: %@ does not define a remote service class. Implement the 'remoteServiceClass' function and point it to its remote";
    v18 = v7;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_34:

  return selfCopy;
}

- (ARDaemonService)initWithConnection:(id)connection exportedInterface:(id)interface remoteObjectInterface:(id)objectInterface
{
  v43 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  interfaceCopy = interface;
  objectInterfaceCopy = objectInterface;
  if (connectionCopy)
  {
    v35.receiver = self;
    v35.super_class = ARDaemonService;
    v12 = [(ARDaemonService *)&v35 init];
    if (v12)
    {
      v13 = _os_activity_create(&dword_23D391000, "Daemon service", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v14 = *(v12 + 2);
      *(v12 + 2) = v13;

      [connectionCopy setExportedObject:v12];
      [connectionCopy setExportedInterface:interfaceCopy];
      [connectionCopy setRemoteObjectInterface:objectInterfaceCopy];
      objc_initWeak(&location, v12);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke;
      v32[3] = &unk_278BCBB68;
      objc_copyWeak(&v33, &location);
      [connectionCopy setInterruptionHandler:v32];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke_2;
      v30[3] = &unk_278BCBB68;
      objc_copyWeak(&v31, &location);
      [connectionCopy setInvalidationHandler:v30];
      objc_storeStrong(v12 + 10, connection);
      v15 = ARCreateTransactionForService(v12);
      v16 = *(v12 + 1);
      *(v12 + 1) = v15;

      *(v12 + 32) = 1;
      ar_processName = [*(v12 + 10) ar_processName];
      ar_remoteProcessIdentifier = [*(v12 + 10) ar_remoteProcessIdentifier];
      ar_processBundleIdentifier = [*(v12 + 10) ar_processBundleIdentifier];
      [v12 _commonInitWithProcessName:ar_processName processIdentifier:ar_remoteProcessIdentifier bundleIdentifier:ar_processBundleIdentifier];

      v21 = _ARLogGeneral_0(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v25 = *(v12 + 6);
        v24 = *(v12 + 7);
        v26 = *(v12 + 10);
        *buf = 138544387;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        v37 = 2114;
        v38 = v24;
        v39 = 2113;
        v40 = v25;
        v41 = 1024;
        v42 = v26;
        _os_log_impl(&dword_23D391000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Client connected: %{public}@ (%{private}@, %i)", buf, 0x30u);
      }

      *buf = 0;
      *&buf[8] = 0;
      v27 = _os_activity_create(&dword_23D391000, "Daemon service init", *(v12 + 2), OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v27, buf);

      os_activity_scope_leave(buf);
      objc_destroyWeak(&v31);
      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __78__ARDaemonService_initWithConnection_exportedInterface_remoteObjectInterface___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler];
}

- (id)initAsLocalService
{
  v10.receiver = self;
  v10.super_class = ARDaemonService;
  v2 = [(ARDaemonService *)&v10 init];
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo2 processIdentifier];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(ARDaemonService *)v2 _commonInitWithProcessName:processName processIdentifier:processIdentifier bundleIdentifier:bundleIdentifier];
  }

  return v2;
}

- (ARDaemonService)initWithRemoteService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = ARDaemonService;
  v6 = [(ARDaemonService *)&v14 init];
  if (v6)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo2 processIdentifier];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [(ARDaemonService *)v6 _commonInitWithProcessName:processName processIdentifier:processIdentifier bundleIdentifier:bundleIdentifier];

    objc_storeStrong(&v6->_remoteService, service);
  }

  return v6;
}

- (void)interruptionHandler
{
  v24 = *MEMORY[0x277D85DE8];
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v3 = _os_activity_create(&dword_23D391000, "Daemon service interrupted", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v17);

  v5 = _ARLogGeneral_0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clientProcessName = self->_clientProcessName;
    *buf = 138543874;
    v19 = v7;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = clientProcessName;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Daemon service interrupted: %{public}@", buf, 0x20u);
  }

  v9 = [(ARDaemonService *)self channel:v17.opaque[0]];
  v10 = v9 == 0;

  if (!v10)
  {
    channel = [(ARDaemonService *)self channel];
    channel_rt_close();

    [(ARDaemonService *)self setChannel:0];
  }

  dispatchChannel = [(ARDaemonService *)self dispatchChannel];
  v13 = dispatchChannel == 0;

  if (!v13)
  {
    dispatchChannel2 = [(ARDaemonService *)self dispatchChannel];
    channel_rt_close();

    [(ARDaemonService *)self setDispatchChannel:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 serviceDidInterrupt:self];
  }

  os_activity_scope_leave(&v17);
}

- (void)invalidationHandler
{
  v24 = *MEMORY[0x277D85DE8];
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  v3 = _os_activity_create(&dword_23D391000, "Daemon service invalidated", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &v17);

  v5 = _ARLogGeneral_0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clientProcessName = self->_clientProcessName;
    *buf = 138543874;
    v19 = v7;
    v20 = 2048;
    selfCopy = self;
    v22 = 2114;
    v23 = clientProcessName;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Daemon service invalidated: %{public}@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 serviceDidInvalidate:{self, v17.opaque[0], v17.opaque[1]}];
  }

  v11 = [(ARDaemonService *)self channel:v17.opaque[0]];
  v12 = v11 == 0;

  if (!v12)
  {
    channel = [(ARDaemonService *)self channel];
    channel_rt_close();

    [(ARDaemonService *)self setChannel:0];
  }

  dispatchChannel = [(ARDaemonService *)self dispatchChannel];
  v15 = dispatchChannel == 0;

  if (!v15)
  {
    dispatchChannel2 = [(ARDaemonService *)self dispatchChannel];
    channel_rt_close();

    [(ARDaemonService *)self setDispatchChannel:0];
  }

  [(ARDaemonService *)self setConnection:0];
  os_activity_scope_leave(&v17);
}

+ (int64_t)maximumConcurrentServicesPerClient
{
  if (maximumConcurrentServicesPerClient_onceToken != -1)
  {
    +[ARDaemonService maximumConcurrentServicesPerClient];
  }

  return maximumConcurrentServicesPerClient_maximum;
}

void *__53__ARDaemonService_maximumConcurrentServicesPerClient__block_invoke()
{
  result = [MEMORY[0x277CE52D8] integerForKey:*MEMORY[0x277CE51C8]];
  maximumConcurrentServicesPerClient_maximum = result;
  return result;
}

- (void)invalidateClient
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral_0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Force invalidating client", &v7, 0x16u);
  }

  clientService = [(ARDaemonService *)self clientService];
  [clientService invalidate];
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  connection = [(ARDaemonService *)self connection];
  [(ARDaemonService *)self setConnection:0];
  [connection invalidate];
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v4 = _os_activity_create(&dword_23D391000, "Daemon service invalidate", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v10);

  v6 = _ARLogGeneral_0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    serviceName = [objc_opt_class() serviceName];
    *buf = 138543874;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = serviceName;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Invalidate: %{public}@", buf, 0x20u);
  }

  os_activity_scope_leave(&v10);
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v15 = *MEMORY[0x277D85DE8];
  v5 = _ARLogGeneral_0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = @"NO";
    v9 = 138543874;
    v10 = v7;
    if (activeCopy)
    {
      v8 = @"YES";
    }

    v11 = 2048;
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Setting active to: %{public}@", &v9, 0x20u);
  }

  self->_active = activeCopy;
}

- (void)startService:(id)service
{
  v13 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = _ARLogGeneral_0(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    clientProcessName = self->_clientProcessName;
    *v10 = 138543874;
    *&v10[4] = v7;
    *&v10[12] = 2048;
    *&v10[14] = self;
    v11 = 2114;
    v12 = clientProcessName;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Daemon service started: %{public}@", v10, 0x20u);
  }

  *v10 = 0;
  *&v10[8] = 0;
  v9 = _os_activity_create(&dword_23D391000, "Daemon service started", self->_daemonServiceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, v10);

  serviceCopy[2](serviceCopy, 1);
  os_activity_scope_leave(v10);
}

- (void)beginRTChannelCreation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  [(ARDaemonService *)self channelDataSize];
  [(ARDaemonService *)self minimumChannelQueueSize];
  asymmetric_endpoint_and_request = channel_create_asymmetric_endpoint_and_request();
  v5 = asymmetric_endpoint_and_request;
  if (asymmetric_endpoint_and_request)
  {
    objc_initWeak(location, self);
    connection = [(ARDaemonService *)self connection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__ARDaemonService_beginRTChannelCreation__block_invoke;
    v18[3] = &unk_278BCBCB8;
    objc_copyWeak(&v19, location);
    v7 = [connection remoteObjectProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__ARDaemonService_beginRTChannelCreation__block_invoke_23;
    v15[3] = &unk_278BCBCE0;
    objc_copyWeak(&v17, location);
    v16 = v5;
    [v7 createRTChannelWithRequest:v3 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_2;
    v9 = _ARLogGeneral_0(asymmetric_endpoint_and_request);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *location = 138543618;
        *&location[4] = v12;
        v21 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *location = 138543618;
      *&location[4] = v14;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
    }
  }
}

void __41__ARDaemonService_beginRTChannelCreation__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_2;
    v5 = _ARLogGeneral_0(WeakRetained);
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v16 = 138543618;
        v17 = v8;
        v18 = 2048;
        v19 = v3;
        v9 = "%{public}@ <%p>: Failed to send request to remote service to create RT channel, aborting.";
        v10 = v6;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_23D391000, v10, v11, v9, &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v8 = NSStringFromClass(v15);
      v16 = 138543618;
      v17 = v8;
      v18 = 2048;
      v19 = v3;
      v9 = "Error: %{public}@ <%p>: Failed to send request to remote service to create RT channel, aborting.";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = _ARLogGeneral_0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before RT channel creation completed, aborting error handler.", &v16, 0xCu);
    }
  }
}

void __41__ARDaemonService_beginRTChannelCreation__block_invoke_23(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v12 = _ARLogGeneral_0(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v28 = 138543362;
      v29 = v15;
      _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before RT channel creation completed, aborting request completion handler.", &v28, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_2;
    v17 = _ARLogGeneral_0(WeakRetained);
    v12 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v28 = 138543618;
        v29 = v19;
        v30 = 2048;
        v31 = v5;
        v20 = "%{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a RT channel";
LABEL_19:
        v24 = v12;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_25:
        _os_log_impl(&dword_23D391000, v24, v25, v20, &v28, 0x16u);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v26 = objc_opt_class();
    v19 = NSStringFromClass(v26);
    v28 = 138543618;
    v29 = v19;
    v30 = 2048;
    v31 = v5;
    v20 = "Error: %{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a RT channel";
LABEL_24:
    v24 = v12;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_25;
  }

  v6 = channel_rt_create_from_reply();
  [v5 setChannel:v6];

  v7 = [v5 channel];

  if (!v7)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_2;
    v22 = _ARLogGeneral_0(v8);
    v12 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v19 = NSStringFromClass(v23);
        v28 = 138543618;
        v29 = v19;
        v30 = 2048;
        v31 = v5;
        v20 = "%{public}@ <%p>: Failed to create RT channel using channel_rt_create_from_reply";
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v27 = objc_opt_class();
    v19 = NSStringFromClass(v27);
    v28 = 138543618;
    v29 = v19;
    v30 = 2048;
    v31 = v5;
    v20 = "Error: %{public}@ <%p>: Failed to create RT channel using channel_rt_create_from_reply";
    goto LABEL_24;
  }

  v9 = _ARLogGeneral_0(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v28 = 138543618;
    v29 = v11;
    v30 = 2048;
    v31 = v5;
    _os_log_impl(&dword_23D391000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Successfully setup RT channel", &v28, 0x16u);
  }

  [v5 setupCompleteForRTChannel];
LABEL_27:
}

- (void)beginDispatchChannelCreation
{
  v25 = *MEMORY[0x277D85DE8];
  dispatchChannelDataSize = [(ARDaemonService *)self dispatchChannelDataSize];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, [*MEMORY[0x277CE53C0] UTF8String], dispatchChannelDataSize);
  [(ARDaemonService *)self minimumChannelQueueSize];
  asymmetric_endpoint_and_request = channel_create_asymmetric_endpoint_and_request();
  v6 = asymmetric_endpoint_and_request;
  if (asymmetric_endpoint_and_request)
  {
    objc_initWeak(location, self);
    connection = [(ARDaemonService *)self connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__ARDaemonService_beginDispatchChannelCreation__block_invoke;
    v20[3] = &unk_278BCBCB8;
    objc_copyWeak(&v21, location);
    v8 = [connection remoteObjectProxyWithErrorHandler:v20];
    v9 = [MEMORY[0x277CE53B8] wrapperWithDictionary:empty];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__ARDaemonService_beginDispatchChannelCreation__block_invoke_26;
    v17[3] = &unk_278BCBD08;
    objc_copyWeak(&v19, location);
    v18 = v6;
    [v8 createDispatchChannelWithRequest:v9 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_2;
    v11 = _ARLogGeneral_0(asymmetric_endpoint_and_request);
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *location = 138543618;
        *&location[4] = v14;
        v23 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *location = 138543618;
      *&location[4] = v16;
      v23 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create endpoint using channel_create_endpoint_and_request", location, 0x16u);
    }
  }
}

void __47__ARDaemonService_beginDispatchChannelCreation__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v4 = ARShouldUseLogTypeError_internalOSVersion_2;
    v5 = _ARLogGeneral_0(WeakRetained);
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v16 = 138543618;
        v17 = v8;
        v18 = 2048;
        v19 = v3;
        v9 = "%{public}@ <%p>: Failed to send request to remote service to create dispatch channel, aborting.";
        v10 = v6;
        v11 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_23D391000, v10, v11, v9, &v16, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v8 = NSStringFromClass(v15);
      v16 = 138543618;
      v17 = v8;
      v18 = 2048;
      v19 = v3;
      v9 = "Error: %{public}@ <%p>: Failed to send request to remote service to create dispatch channel, aborting.";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = _ARLogGeneral_0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before dispatch channel creation completed, aborting error handler.", &v16, 0xCu);
    }
  }
}

void __47__ARDaemonService_beginDispatchChannelCreation__block_invoke_26(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = _ARLogGeneral_0(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v29 = 138543362;
      v30 = v16;
      _os_log_impl(&dword_23D391000, v13, OS_LOG_TYPE_INFO, "%{public}@: Daemon service deallocated before dispatch channel creation completed, aborting request completion handler.", &v29, 0xCu);
    }

    goto LABEL_26;
  }

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_2;
    v18 = _ARLogGeneral_0(WeakRetained);
    v13 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v29 = 138543618;
        v30 = v20;
        v31 = 2048;
        v32 = v5;
        v21 = "%{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a dispatch channel";
LABEL_19:
        v25 = v13;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_25:
        _os_log_impl(&dword_23D391000, v25, v26, v21, &v29, 0x16u);
      }

LABEL_26:

      goto LABEL_27;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v27 = objc_opt_class();
    v20 = NSStringFromClass(v27);
    v29 = 138543618;
    v30 = v20;
    v31 = 2048;
    v32 = v5;
    v21 = "Error: %{public}@ <%p>: Received a nil reply from createRTChannelWithRequest, aborting creating a dispatch channel";
LABEL_24:
    v25 = v13;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_25;
  }

  v6 = [v3 dictionary];
  v7 = channel_rt_create_from_reply();
  [v5 setDispatchChannel:v7];

  v8 = [v5 dispatchChannel];

  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      [ARDaemonService initWithConnection:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_2;
    v23 = _ARLogGeneral_0(v9);
    v13 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v20 = NSStringFromClass(v24);
        v29 = 138543618;
        v30 = v20;
        v31 = 2048;
        v32 = v5;
        v21 = "%{public}@ <%p>: Failed to create dispatch channel using channel_rt_create_from_reply";
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v28 = objc_opt_class();
    v20 = NSStringFromClass(v28);
    v29 = 138543618;
    v30 = v20;
    v31 = 2048;
    v32 = v5;
    v21 = "Error: %{public}@ <%p>: Failed to create dispatch channel using channel_rt_create_from_reply";
    goto LABEL_24;
  }

  v10 = _ARLogGeneral_0(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v29 = 138543618;
    v30 = v12;
    v31 = 2048;
    v32 = v5;
    _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Successfully setup dispatch channel", &v29, 0x16u);
  }

  [v5 setupCompleteForRTDispatchChannel];
LABEL_27:
}

- (ARDaemonServiceDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (ARDaemonServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)isAuthorized
{
  if (self)
  {
    return OUTLINED_FUNCTION_0(*(self + 33));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

- (uint64_t)isDataAccessAllowed
{
  if (self)
  {
    return OUTLINED_FUNCTION_0(*(self + 34));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

- (uint64_t)isHidFocused
{
  if (self)
  {
    return OUTLINED_FUNCTION_0(*(self + 35));
  }

  else
  {
    return OUTLINED_FUNCTION_0(0);
  }
}

@end