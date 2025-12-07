@interface ARDaemonServiceListener
- (ARDaemonServiceListener)initWithDelegate:(id)delegate watchdogMonitor:(id)monitor isInProcess:(BOOL)process requiredServiceNames:(id)names ignoredServiceNames:(id)serviceNames;
- (ARDaemonServiceListenerDelegate)delegate;
- (BOOL)addServiceByName:(id)name serviceClass:(Class)class;
- (BOOL)addServiceWithQueueByName:(id)name serviceClass:(Class)class;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)createService:(id)service;
- (id)listenerForServiceNamed:(id)named;
@end

@implementation ARDaemonServiceListener

- (ARDaemonServiceListener)initWithDelegate:(id)delegate watchdogMonitor:(id)monitor isInProcess:(BOOL)process requiredServiceNames:(id)names ignoredServiceNames:(id)serviceNames
{
  delegateCopy = delegate;
  monitorCopy = monitor;
  namesCopy = names;
  serviceNamesCopy = serviceNames;
  v32.receiver = self;
  v32.super_class = ARDaemonServiceListener;
  v16 = [(ARDaemonServiceListener *)&v32 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17->_isInProcess = process;
    v18 = objc_opt_new();
    xpcListeners = v17->_xpcListeners;
    v17->_xpcListeners = v18;

    v20 = objc_opt_new();
    serviceClasses = v17->_serviceClasses;
    v17->_serviceClasses = v20;

    v22 = ARCreateFixedPriorityDispatchQueue();
    serviceQueue = v17->_serviceQueue;
    v17->_serviceQueue = v22;

    [monitorCopy addQueue:v17->_serviceQueue hangPolicy:0];
    v24 = [namesCopy count] != 0;
    v25 = v17->_serviceQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __113__ARDaemonServiceListener_initWithDelegate_watchdogMonitor_isInProcess_requiredServiceNames_ignoredServiceNames___block_invoke;
    v27[3] = &unk_278BCBD30;
    v31 = v24;
    v28 = namesCopy;
    v29 = v17;
    v30 = serviceNamesCopy;
    dispatch_sync(v25, v27);
  }

  return v17;
}

void __113__ARDaemonServiceListener_initWithDelegate_watchdogMonitor_isInProcess_requiredServiceNames_ignoredServiceNames___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  ARGetSubclassesForClass();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 performSelector:{sel_serviceName, v10}];
        if (v9)
        {
          if (*(a1 + 56) == 1)
          {
            if (([*(a1 + 32) containsObject:v9] & 1) == 0)
            {
              if (*(a1 + 56))
              {
                goto LABEL_12;
              }

              goto LABEL_10;
            }
          }

          else
          {
LABEL_10:
            if ([*(a1 + 48) containsObject:v9])
            {
              goto LABEL_12;
            }
          }

          [*(a1 + 40) addServiceByName:v9 serviceClass:v7];
        }

LABEL_12:

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)listenerForServiceNamed:(id)named
{
  namedCopy = named;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ARDaemonServiceListener_listenerForServiceNamed___block_invoke;
  block[3] = &unk_278BCBD58;
  v10 = namedCopy;
  v11 = &v12;
  block[4] = self;
  v6 = namedCopy;
  dispatch_sync(serviceQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __51__ARDaemonServiceListener_listenerForServiceNamed___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)addServiceWithQueueByName:(id)name serviceClass:(Class)class
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ARDaemonServiceListener_addServiceWithQueueByName_serviceClass___block_invoke;
  v10[3] = &unk_278BCBD80;
  v10[4] = self;
  v11 = nameCopy;
  v12 = &v14;
  classCopy = class;
  v8 = nameCopy;
  dispatch_sync(serviceQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void *__66__ARDaemonServiceListener_addServiceWithQueueByName_serviceClass___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) addServiceByName:*(a1 + 40) serviceClass:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)addServiceByName:(id)name serviceClass:(Class)class
{
  v33 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v8 = _ARLogDaemon_5(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v25 = 138544130;
    v26 = v10;
    v27 = 2048;
    selfCopy3 = self;
    v29 = 2112;
    classCopy3 = class;
    v31 = 2112;
    v32 = nameCopy;
    _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Adding listener for service: <%@:%@>", &v25, 0x2Au);
  }

  allKeys = [(NSMutableDictionary *)self->_serviceClasses allKeys];
  v12 = [allKeys containsObject:nameCopy];

  if (v12)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener addServiceByName:serviceClass:];
    }

    v14 = ARShouldUseLogTypeError_internalOSVersion_3;
    v15 = _ARLogDaemon_5(v13);
    v16 = v15;
    if (v14 == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v25 = 138544130;
        v26 = v18;
        v27 = 2048;
        selfCopy3 = self;
        v29 = 2112;
        classCopy3 = class;
        v31 = 2112;
        v32 = nameCopy;
        v19 = "%{public}@ <%p>: Duplicate service names are not allowed: <%@:%@>";
        v20 = v16;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_23D391000, v20, v21, v19, &v25, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v18 = NSStringFromClass(v23);
      v25 = 138544130;
      v26 = v18;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2112;
      classCopy3 = class;
      v31 = 2112;
      v32 = nameCopy;
      v19 = "Error: %{public}@ <%p>: Duplicate service names are not allowed: <%@:%@>";
      v20 = v16;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_serviceClasses setObject:class forKey:nameCopy];
    if (self->_isInProcess)
    {
      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
    }

    v16 = anonymousListener;
    [anonymousListener setDelegate:self];
    [v16 _setQueue:self->_serviceQueue];
    [(NSMutableDictionary *)self->_xpcListeners setObject:v16 forKey:nameCopy];
    [v16 resume];
  }

  return v12 ^ 1;
}

- (id)createService:(id)service
{
  v44 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_serviceQueue);
  serviceClasses = self->_serviceClasses;
  serviceName = [serviceCopy serviceName];
  v7 = [(NSMutableDictionary *)serviceClasses objectForKey:serviceName];

  if (!v7)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener createService:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_3;
    v17 = _ARLogDaemon_5(v8);
    v10 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        serviceName2 = [serviceCopy serviceName];
        v36 = 138543874;
        v37 = v19;
        v38 = 2048;
        selfCopy5 = self;
        v40 = 2112;
        v41 = serviceName2;
        v21 = "%{public}@ <%p>: Failed to find service class for service name: %@";
        v22 = v10;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_23D391000, v22, v23, v21, &v36, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v19 = NSStringFromClass(v33);
      serviceName2 = [serviceCopy serviceName];
      v36 = 138543874;
      v37 = v19;
      v38 = 2048;
      selfCopy5 = self;
      v40 = 2112;
      v41 = serviceName2;
      v21 = "Error: %{public}@ <%p>: Failed to find service class for service name: %@";
      v22 = v10;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v15 = 0;
    goto LABEL_24;
  }

  v9 = [[v7 alloc] initWithConnection:serviceCopy];
  v10 = v9;
  if (!v9)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener createService:];
    }

    v24 = ARShouldUseLogTypeError_internalOSVersion_3;
    v25 = _ARLogDaemon_5(v9);
    v26 = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        serviceName3 = [serviceCopy serviceName];
        v36 = 138543874;
        v37 = v28;
        v38 = 2048;
        selfCopy5 = self;
        v40 = 2112;
        v41 = serviceName3;
        v30 = "%{public}@ <%p>: Failed to create service for service name: %@";
        v31 = v26;
        v32 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_23D391000, v31, v32, v30, &v36, 0x20u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v28 = NSStringFromClass(v34);
      serviceName3 = [serviceCopy serviceName];
      v36 = 138543874;
      v37 = v28;
      v38 = 2048;
      selfCopy5 = self;
      v40 = 2112;
      v41 = serviceName3;
      v30 = "Error: %{public}@ <%p>: Failed to create service for service name: %@";
      v31 = v26;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

    v15 = 0;
    goto LABEL_24;
  }

  v11 = _ARLogDaemon_5(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    serviceName4 = [serviceCopy serviceName];
    v36 = 138544130;
    v37 = v13;
    v38 = 2048;
    selfCopy5 = self;
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = serviceName4;
    _os_log_impl(&dword_23D391000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Created %@ for service name: %@", &v36, 0x2Au);
  }

  v10 = v10;
  v15 = v10;
LABEL_24:

  return v15;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v56 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (self->_isInProcess)
  {
    serviceName = [connectionCopy serviceName];

    if (!serviceName)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      allKeys = [(NSMutableDictionary *)self->_xpcListeners allKeys];
      v11 = [allKeys countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v42;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v42 != v13)
            {
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            v16 = [(NSMutableDictionary *)self->_xpcListeners objectForKeyedSubscript:v15];

            if (v16 == listenerCopy)
            {
              [connectionCopy setValue:v15 forKey:@"_serviceName"];
              goto LABEL_13;
            }
          }

          v12 = [allKeys countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  v17 = _ARLogDaemon_5(v8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    ar_processName = [connectionCopy ar_processName];
    ar_remoteProcessIdentifier = [connectionCopy ar_remoteProcessIdentifier];
    serviceName2 = [connectionCopy serviceName];
    *buf = 138544386;
    v46 = v19;
    v47 = 2048;
    selfCopy4 = self;
    v49 = 2114;
    v50 = ar_processName;
    v51 = 1024;
    v52 = ar_remoteProcessIdentifier;
    v53 = 2114;
    v54 = serviceName2;
    _os_log_impl(&dword_23D391000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Listener received request from process: %{public}@ (%d) to accept connection for service: %{public}@", buf, 0x30u);
  }

  v23 = [(ARDaemonServiceListener *)self createService:connectionCopy];
  v24 = v23;
  if (!v23)
  {
    if (ARShouldUseLogTypeError_onceToken_3 != -1)
    {
      [ARDaemonServiceListener addServiceByName:serviceClass:];
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_3;
    v31 = _ARLogDaemon_5(v23);
    v32 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        serviceName3 = [connectionCopy serviceName];
        *buf = 138543874;
        v46 = v34;
        v47 = 2048;
        selfCopy4 = self;
        v49 = 2112;
        v50 = serviceName3;
        v36 = "%{public}@ <%p>: Failed to accept connection for service: %@";
        v37 = v32;
        v38 = OS_LOG_TYPE_ERROR;
LABEL_27:
        _os_log_impl(&dword_23D391000, v37, v38, v36, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v34 = NSStringFromClass(v39);
      serviceName3 = [connectionCopy serviceName];
      *buf = 138543874;
      v46 = v34;
      v47 = 2048;
      selfCopy4 = self;
      v49 = 2112;
      v50 = serviceName3;
      v36 = "Error: %{public}@ <%p>: Failed to accept connection for service: %@";
      v37 = v32;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v25 = _ARLogDaemon_5(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    serviceName4 = [connectionCopy serviceName];
    *buf = 138543874;
    v46 = v27;
    v47 = 2048;
    selfCopy4 = self;
    v49 = 2112;
    v50 = serviceName4;
    _os_log_impl(&dword_23D391000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Accepting connection for service: %@", buf, 0x20u);
  }

  delegate = [(ARDaemonServiceListener *)self delegate];
  [delegate didDiscoverService:v24];

  [connectionCopy resume];
LABEL_29:

  return v24 != 0;
}

- (ARDaemonServiceListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end