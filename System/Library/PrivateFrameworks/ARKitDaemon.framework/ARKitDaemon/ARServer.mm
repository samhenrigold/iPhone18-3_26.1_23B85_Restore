@interface ARServer
- (ARServer)initWithDaemonConfiguration:(id)configuration spawnTime:(id)time sessionUUID:(id)d watchdogMonitor:(id)monitor executionManager:(id)manager;
- (BOOL)_addServices:(id)services;
- (BOOL)_shouldAddService:(Class)service forPID:(int)d;
- (BOOL)_updateAlgorithmConfigurationWithServices:(id)services;
- (BOOL)_updateWithServices:(id)services error:(id *)error;
- (BOOL)commitServices:(id)services;
- (BOOL)servicesIsEmpty;
- (id)_peerServicesOfService:(id)service;
- (id)fullDescriptionWithWaitEndOfTransition:(BOOL)transition;
- (id)listenerEndPointForServiceNamed:(id)named;
- (id)service:(id)service peerServiceOfType:(Class)type;
- (id)statusDictionaryWithWaitEndOfTransition:(BOOL)transition;
- (id)statusStringWithWaitEndOfTransition:(BOOL)transition;
- (int64_t)numberOfActiveConnectionsForService:(id)service;
- (void)_configureServiceForExecution:(id)execution;
- (void)_logDaemonStatus;
- (void)_removeService:(id)service;
- (void)_removeServiceFromServicesByClass:(id)class;
- (void)_setupUserProfile;
- (void)_updateServicesByPID;
- (void)dealloc;
- (void)didDiscoverControl:(id)control;
- (void)didDiscoverService:(id)service;
- (void)invalidate;
- (void)serviceDidInterrupt:(id)interrupt;
- (void)serviceDidInvalidate:(id)invalidate;
- (void)setServices:(id)services;
@end

@implementation ARServer

- (ARServer)initWithDaemonConfiguration:(id)configuration spawnTime:(id)time sessionUUID:(id)d watchdogMonitor:(id)monitor executionManager:(id)manager
{
  configurationCopy = configuration;
  timeCopy = time;
  dCopy = d;
  monitorCopy = monitor;
  managerCopy = manager;
  v18 = _ARLogDaemon_6(managerCopy);
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARServerInitialization", &unk_23D3A2247, buf, 2u);
  }

  v39.receiver = self;
  v39.super_class = ARServer;
  v19 = [(ARServer *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_daemonConfiguration, configuration);
    objc_storeStrong(&v20->_spawnTime, time);
    objc_storeStrong(&v20->_sessionUUID, d);
    v21 = objc_opt_new();
    services = v20->_services;
    v20->_services = v21;

    v23 = objc_opt_new();
    servicesByClass = v20->_servicesByClass;
    v20->_servicesByClass = v23;

    v25 = objc_opt_new();
    servicesByPID = v20->_servicesByPID;
    v20->_servicesByPID = v25;

    servicesBeingAdded = v20->_servicesBeingAdded;
    v20->_servicesBeingAdded = MEMORY[0x277CBEBF8];

    v20->_servicesLock._os_unfair_lock_opaque = 0;
    v20->_batchedServicesLock._os_unfair_lock_opaque = 0;
    v28 = ARCreateFixedPriorityDispatchQueue();
    serviceQueue = v20->_serviceQueue;
    v20->_serviceQueue = v28;

    [monitorCopy addQueue:v20->_serviceQueue hangPolicy:0];
    array = [MEMORY[0x277CBEB18] array];
    batchedServices = v20->_batchedServices;
    v20->_batchedServices = array;

    v32 = dispatch_semaphore_create(0);
    batchedServicesConfiguredSemaphore = v20->_batchedServicesConfiguredSemaphore;
    v20->_batchedServicesConfiguredSemaphore = v32;

    v34 = objc_alloc_init(MEMORY[0x277CE5248]);
    statusLogger = v20->_statusLogger;
    v20->_statusLogger = v34;

    [(ARServer *)v20 _setupUserProfile];
    [(ARServer *)v20 _createLocalServices];
    v36 = [[ARControlListener alloc] initWithDelegate:v20 controlClass:[(ARDaemonConfiguration *)v20->_daemonConfiguration controlClass] isInProcess:[(ARDaemonConfiguration *)v20->_daemonConfiguration isInProcess]];
    controlListener = v20->_controlListener;
    v20->_controlListener = v36;
  }

  __95__ARServer_initWithDaemonConfiguration_spawnTime_sessionUUID_watchdogMonitor_executionManager___block_invoke(v19);

  return v20;
}

void __95__ARServer_initWithDaemonConfiguration_spawnTime_sessionUUID_watchdogMonitor_executionManager___block_invoke(uint64_t a1)
{
  v1 = _ARLogDaemon_6(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ARServerInitialization", &unk_23D3A2247, v2, 2u);
  }
}

- (void)_setupUserProfile
{
  defaultProfile = [MEMORY[0x277CE5390] defaultProfile];
  userProfile = self->_userProfile;
  self->_userProfile = defaultProfile;

  MEMORY[0x2821F96F8](defaultProfile, userProfile);
}

- (void)dealloc
{
  [(ARServer *)self invalidate];
  v3.receiver = self;
  v3.super_class = ARServer;
  [(ARServer *)&v3 dealloc];
}

- (void)invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _ARLogDaemon_6(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Invalidating services", buf, 0x16u);
  }

  dispatch_assert_queue_not_V2(self->_serviceQueue);
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__ARServer_invalidate__block_invoke;
  block[3] = &unk_278BCBDD0;
  block[4] = self;
  dispatch_async_and_wait(serviceQueue, block);
}

void __22__ARServer_invalidate__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  [*(*(a1 + 32) + 16) enumerateObjectsUsingBlock:&__block_literal_global_11];
  v2 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v2);
}

- (BOOL)servicesIsEmpty
{
  os_unfair_lock_lock(&self->_servicesLock);
  v3 = [(NSMutableArray *)self->_services count]== 0;
  os_unfair_lock_unlock(&self->_servicesLock);
  return v3;
}

- (BOOL)_addServices:(id)services
{
  v64 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = _ARLogDaemon_6(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v56 = v7;
    v57 = 2048;
    selfCopy5 = self;
    v59 = 2112;
    v60 = servicesCopy;
    _os_log_impl(&dword_23D391000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Adding services '%@'", buf, 0x20u);
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithArray:servicesCopy];
  os_unfair_lock_lock(&self->_servicesLock);
  [(ARServer *)self setServicesBeingAdded:servicesCopy];
  v8 = [v48 count];
  if (v8)
  {
    v44 = [v48 arrayByAddingObjectsFromArray:self->_services];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v48 componentsJoinedByString:{@", "}];
    v45 = [v9 stringWithFormat:@"ARServer: Triggering algorithm update due to adding services: %@", v10];

    v12 = _ARLogGeneral_2(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v56 = v45;
      _os_log_impl(&dword_23D391000, v12, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    v14 = _ARLogDaemon_6(v13);
    if (os_signpost_enabled(v14))
    {
      *buf = 138543362;
      v56 = v45;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", "%{public}@", buf, 0xCu);
    }

    v54 = 0;
    v46 = [(ARServer *)self _updateWithServices:v44 error:&v54];
    v15 = v54;
    v47 = v15;
    if (v46)
    {
      v16 = [v44 mutableCopy];
      [(ARServer *)self setServices:v16];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v17 = v48;
      v18 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (v18)
      {
        v19 = *v51;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v51 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v50 + 1) + 8 * i);
            v22 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:objc_opt_class()];
            if (!v22)
            {
              v22 = objc_opt_new();
              [(NSMutableDictionary *)self->_servicesByClass setObject:v22 forKeyedSubscript:objc_opt_class()];
            }

            [v22 addObject:v21];
            v23 = +[ARDaemonMetrics sharedDaemonMetrics];
            serviceName = [objc_opt_class() serviceName];
            clientBundleIdentifier = [v21 clientBundleIdentifier];
            [v23 reportServiceAddedWithName:serviceName clientBundleIdentifier:clientBundleIdentifier];
          }

          v18 = [v17 countByEnumeratingWithState:&v50 objects:v63 count:16];
        }

        while (v18);
      }
    }

    __25__ARServer__addServices___block_invoke(v15);

    v26 = v44;
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_5;
    v28 = _ARLogDaemon_6(v8);
    v26 = v28;
    if (v27 == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        allKeys = [(NSMutableDictionary *)self->_servicesByClass allKeys];
        *buf = 138544130;
        v56 = v30;
        v57 = 2048;
        selfCopy5 = self;
        v59 = 2112;
        v60 = servicesCopy;
        v61 = 2112;
        v62 = allKeys;
        _os_log_impl(&dword_23D391000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No services to be added from %@ to %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      allKeys2 = [(NSMutableDictionary *)self->_servicesByClass allKeys];
      *buf = 138544130;
      v56 = v33;
      v57 = 2048;
      selfCopy5 = self;
      v59 = 2112;
      v60 = servicesCopy;
      v61 = 2112;
      v62 = allKeys2;
      _os_log_impl(&dword_23D391000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No services to be added from %@ to %@", buf, 0x2Au);
    }

    v47 = 0;
    LOBYTE(v46) = 0;
  }

  [(ARServer *)self setServicesBeingAdded:MEMORY[0x277CBEBF8]];
  os_unfair_lock_unlock(&self->_servicesLock);
  if (v47)
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v36 = ARShouldUseLogTypeError_internalOSVersion_5;
    v37 = _ARLogDaemon_6(v35);
    v38 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543874;
        v56 = v40;
        v57 = 2048;
        selfCopy5 = self;
        v59 = 2112;
        v60 = v47;
        _os_log_impl(&dword_23D391000, v38, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting up service: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138543874;
      v56 = v42;
      v57 = 2048;
      selfCopy5 = self;
      v59 = 2112;
      v60 = v47;
      _os_log_impl(&dword_23D391000, v38, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting up service: %@", buf, 0x20u);
    }

    LOBYTE(v46) = 0;
  }

  return v46;
}

void __25__ARServer__addServices___block_invoke(uint64_t a1)
{
  v1 = _ARLogDaemon_6(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", &unk_23D3A2247, v2, 2u);
  }
}

- (id)listenerEndPointForServiceNamed:(id)named
{
  daemonConfiguration = self->_daemonConfiguration;
  namedCopy = named;
  v6 = [-[ARDaemonConfiguration controlClass](daemonConfiguration "controlClass")];
  v7 = [namedCopy isEqualToString:v6];

  if (v7)
  {
    endpoint = [(ARControlListener *)self->_controlListener endpoint];
  }

  else
  {
    endpoint = 0;
  }

  return endpoint;
}

- (id)statusDictionaryWithWaitEndOfTransition:(BOOL)transition
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v42 = @"pid";
  v7 = MEMORY[0x277CCABB0];
  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v7 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
  v43[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];

  v40 = processName;
  v41 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  [v4 addEntriesFromDictionary:v11];

  ARGetSystemBootTime();
  v13 = v12;
  v14 = objc_opt_new();
  v15 = [v14 timeSinceSnapshot:self->_spawnTime];
  v16 = MEMORY[0x277CBEAA8];
  [(ARSystemTimeSnapshot *)self->_spawnTime upTimeIncludingSleepAndDriftCorrection];
  v18 = [v16 dateWithTimeIntervalSince1970:v13 + v17];
  v19 = [MEMORY[0x277CCACA8] ar_timestampWithDate:v18];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_spawn_time", processName];
  [v4 setObject:v19 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CCACA8];
  [v15 upTime];
  v22 = [v21 ar_hoursMinutesSecondsWithTimeInterval:?];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time", processName];
  [v4 setObject:v22 forKeyedSubscript:v23];

  v24 = MEMORY[0x277CCACA8];
  [v15 upTimeIncludingSleep];
  v25 = [v24 ar_hoursMinutesSecondsWithTimeInterval:?];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time_including_sleep", processName];
  [v4 setObject:v25 forKeyedSubscript:v26];

  v27 = MEMORY[0x277CCACA8];
  [v15 upTimeIncludingSleepAndDriftCorrection];
  v28 = [v27 ar_hoursMinutesSecondsWithTimeInterval:?];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_up_time_including_sleep_and_drift_correction", processName];
  [v4 setObject:v28 forKeyedSubscript:v29];

  v30 = MEMORY[0x277CCACA8];
  v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13];
  v32 = [v30 ar_timestampWithDate:v31];
  [v4 setObject:v32 forKeyedSubscript:@"system_boot_time"];

  v33 = MEMORY[0x277CCACA8];
  [v14 upTime];
  v34 = [v33 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v34 forKeyedSubscript:@"system_up_time"];

  v35 = MEMORY[0x277CCACA8];
  [v14 upTimeIncludingSleep];
  v36 = [v35 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v36 forKeyedSubscript:@"system_up_time_including_sleep"];

  v37 = MEMORY[0x277CCACA8];
  [v14 upTimeIncludingSleepAndDriftCorrection];
  v38 = [v37 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 setObject:v38 forKeyedSubscript:@"system_up_time_including_sleep_and_drift_correction"];

  return v4;
}

- (id)statusStringWithWaitEndOfTransition:(BOOL)transition
{
  v4 = objc_opt_new();
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  ARGetSystemBootTime();
  v8 = v7;
  v9 = objc_opt_new();
  v10 = [v9 timeSinceSnapshot:self->_spawnTime];
  v11 = MEMORY[0x277CBEAA8];
  [(ARSystemTimeSnapshot *)self->_spawnTime upTimeIncludingSleepAndDriftCorrection];
  v13 = [v11 dateWithTimeIntervalSince1970:v8 + v12];
  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  [v4 appendFormat:@"%@ pid: %d\n", processName, objc_msgSend(processInfo2, "processIdentifier")];

  v15 = [MEMORY[0x277CCACA8] ar_timestampWithDate:v13];
  [v4 appendFormat:@"%@ spawn time: %@\n", processName, v15];

  v16 = MEMORY[0x277CCACA8];
  [v10 upTime];
  v17 = [v16 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time: %@\n", processName, v17];

  v18 = MEMORY[0x277CCACA8];
  [v10 upTimeIncludingSleep];
  v19 = [v18 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time (including sleep): %@\n", processName, v19];

  v20 = MEMORY[0x277CCACA8];
  [v10 upTimeIncludingSleepAndDriftCorrection];
  v21 = [v20 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"%@ up time (including sleep and drift correction): %@\n", processName, v21];

  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  v24 = [v22 ar_timestampWithDate:v23];
  [v4 appendFormat:@"System boot time: %@\n", v24];

  v25 = MEMORY[0x277CCACA8];
  [v9 upTime];
  v26 = [v25 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time: %@\n", v26];

  v27 = MEMORY[0x277CCACA8];
  [v9 upTimeIncludingSleep];
  v28 = [v27 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time (including sleep): %@\n", v28];

  v29 = MEMORY[0x277CCACA8];
  [v9 upTimeIncludingSleepAndDriftCorrection];
  v30 = [v29 ar_hoursMinutesSecondsWithTimeInterval:?];
  [v4 appendFormat:@"System up time (including sleep and drift correction): %@\n", v30];

  return v4;
}

- (id)service:(id)service peerServiceOfType:(Class)type
{
  v5 = [(ARServer *)self _peerServicesOfService:service];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ARServer_service_peerServiceOfType___block_invoke;
  v8[3] = &__block_descriptor_40_e32_B32__0__ARDaemonService_8Q16_B24lu32l8;
  v8[4] = type;
  v6 = [v5 ar_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __38__ARServer_service_peerServiceOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:*(a1 + 32)])
  {
    v4 = [v3 isActive];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)numberOfActiveConnectionsForService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_servicesLock);
  serviceName = [objc_opt_class() serviceName];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  services = self->_services;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ARServer_numberOfActiveConnectionsForService___block_invoke;
  v10[3] = &unk_278BCBE18;
  v7 = serviceName;
  v11 = v7;
  v12 = &v13;
  [(NSMutableArray *)services enumerateObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  os_unfair_lock_unlock(&self->_servicesLock);

  return v8;
}

void __48__ARServer_numberOfActiveConnectionsForService___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() serviceName];
  LODWORD(v3) = [v3 isEqualToString:v4];

  if (v3)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_peerServicesOfService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_servicesLock);
  v5 = objc_opt_new();
  services = self->_services;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__ARServer__peerServicesOfService___block_invoke;
  v12[3] = &unk_278BCBE40;
  v7 = serviceCopy;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [(NSMutableArray *)services enumerateObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v8;

  os_unfair_lock_unlock(&self->_servicesLock);

  return v10;
}

uint64_t __35__ARServer__peerServicesOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v7 = v3;
    v5 = [v3 clientProcessIdentifier];
    v3 = [*(a1 + 32) clientProcessIdentifier];
    v4 = v7;
    if (v5 == v3)
    {
      v3 = [*(a1 + 40) addObject:v7];
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_updateWithServices:(id)services error:(id *)error
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  [(ARServer *)self _logDaemonStatus];
  return 1;
}

- (void)_removeService:(id)service
{
  v41 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v6 = _ARLogDaemon_6(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    v34 = v8;
    v35 = 2048;
    selfCopy4 = self;
    v37 = 2112;
    v38 = serviceCopy;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing service '%@'", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_servicesLock);
  [(ARServer *)self setServiceBeingRemoved:serviceCopy];
  v9 = [(NSMutableArray *)self->_services mutableCopy];
  v10 = [v9 containsObject:serviceCopy];
  if (v10)
  {
    [v9 removeObject:serviceCopy];
  }

  else
  {
    v11 = _ARLogDaemon_6(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      shortenedServiceNameForLogging = [serviceCopy shortenedServiceNameForLogging];
      *buf = 138543874;
      v34 = v13;
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2112;
      v38 = shortenedServiceNameForLogging;
      _os_log_impl(&dword_23D391000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Tried to remove service %@, but it was not found in active services", buf, 0x20u);
    }
  }

  serviceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ARServer: Triggering algorithm update due to the removal of a service: %@", serviceCopy];
  v16 = _ARLogGeneral_2(serviceCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = serviceCopy;
    _os_log_impl(&dword_23D391000, v16, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
  }

  v18 = _ARLogDaemon_6(v17);
  if (os_signpost_enabled(v18))
  {
    *buf = 138543362;
    v34 = serviceCopy;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ARKitTransitionUpdateWithServices", "%{public}@", buf, 0xCu);
  }

  v32 = 0;
  v19 = [(ARServer *)self _updateWithServices:v9 error:&v32];
  v20 = v32;
  v21 = v20;
  if (v19)
  {
    [(ARServer *)self setServices:v9];
    [(ARServer *)self _removeServiceFromServicesByClass:serviceCopy];
    v22 = +[ARDaemonMetrics sharedDaemonMetrics];
    serviceName = [objc_opt_class() serviceName];
    clientBundleIdentifier = [serviceCopy clientBundleIdentifier];
    [v22 reportServiceRemovedWithName:serviceName clientBundleIdentifier:clientBundleIdentifier];
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v25 = ARShouldUseLogTypeError_internalOSVersion_5;
    v26 = _ARLogDaemon_6(v20);
    v22 = v26;
    if (v25 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544130;
        v34 = v28;
        v35 = 2048;
        selfCopy4 = self;
        v37 = 2112;
        v38 = serviceCopy;
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_23D391000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing service %@: %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544130;
      v34 = v30;
      v35 = 2048;
      selfCopy4 = self;
      v37 = 2112;
      v38 = serviceCopy;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_23D391000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing service %@: %@", buf, 0x2Au);
    }
  }

  [(ARServer *)self setServiceBeingRemoved:0];
  os_unfair_lock_unlock(&self->_servicesLock);
  __25__ARServer__addServices___block_invoke(v31);
}

- (void)setServices:(id)services
{
  servicesCopy = services;
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (os_unfair_lock_trylock(&self->_servicesLock))
  {
    os_unfair_lock_unlock(&self->_servicesLock);
  }

  else
  {
    objc_storeStrong(&self->_services, services);
    [(ARServer *)self _updateServicesByPID];
  }
}

- (void)_updateServicesByPID
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (os_unfair_lock_trylock(&self->_servicesLock))
  {

    os_unfair_lock_unlock(&self->_servicesLock);
  }

  else
  {
    v3 = objc_opt_new();
    services = self->_services;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__ARServer__updateServicesByPID__block_invoke;
    v8[3] = &unk_278BCBE68;
    v5 = v3;
    v9 = v5;
    [(NSMutableArray *)services enumerateObjectsUsingBlock:v8];
    servicesByPID = self->_servicesByPID;
    self->_servicesByPID = v5;
    v7 = v5;
  }
}

void __32__ARServer__updateServicesByPID__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v4 connection];
  v9 = [v3 numberWithInt:{objc_msgSend(v5, "ar_remoteProcessIdentifier")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v6)
  {
    v7 = objc_opt_new();
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:v9];
  [v8 addObject:v4];
}

- (id)fullDescriptionWithWaitEndOfTransition:(BOOL)transition
{
  transitionCopy = transition;
  v5 = MEMORY[0x277CCAB68];
  v6 = [(ARServer *)self description];
  v7 = [v5 stringWithFormat:@"%@\n", v6];

  v8 = [(ARServer *)self statusStringWithWaitEndOfTransition:transitionCopy];
  [v7 appendFormat:@"-Status: (%@)\n", v8];

  [v7 appendFormat:@"-Services: %@\n", self->_services];
  allKeys = [(NSMutableDictionary *)self->_servicesByClass allKeys];
  [v7 appendFormat:@"-Service Classes: %@\n", allKeys];

  return v7;
}

- (void)_removeServiceFromServicesByClass:(id)class
{
  classCopy = class;
  v4 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    [v4 removeObject:classCopy];
    if (![v5 count])
    {
      [(NSMutableDictionary *)self->_servicesByClass removeObjectForKey:objc_opt_class()];
    }
  }
}

- (void)didDiscoverService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v5 = _os_activity_create(&dword_23D391000, "Daemon service discovered", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v10);

  v7 = _ARLogDaemon_6(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543874;
    v12 = v9;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = serviceCopy;
    _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Service '%@' was discovered.", buf, 0x20u);
  }

  [serviceCopy setDelegate:{self, v10.opaque[0], v10.opaque[1]}];
  [serviceCopy setDataSource:self];
  [(ARServer *)self _configureServiceForExecution:serviceCopy];
  os_activity_scope_leave(&v10);
}

- (BOOL)_shouldAddService:(Class)service forPID:(int)d
{
  v4 = *&d;
  v39 = *MEMORY[0x277D85DE8];
  maximumConcurrentServicesPerClient = [(objc_class *)service maximumConcurrentServicesPerClient];
  v8 = _ARLogGeneral_2(maximumConcurrentServicesPerClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544386;
    v32 = v10;
    v33 = 2048;
    selfCopy3 = self;
    v35 = 1024;
    *v36 = v4;
    *&v36[4] = 2112;
    *&v36[6] = service;
    v37 = 2048;
    v38 = maximumConcurrentServicesPerClient;
    _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Checking pid %d: class %@ has maximum %ld concurrent services", buf, 0x30u);
  }

  servicesByPID = self->_servicesByPID;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v13 = [(NSMutableDictionary *)servicesByPID objectForKeyedSubscript:v12];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __37__ARServer__shouldAddService_forPID___block_invoke;
  v30[3] = &__block_descriptor_40_e32_B32__0__ARDaemonService_8Q16_B24lu32l8;
  v30[4] = service;
  v14 = MEMORY[0x23EEDF710](v30);
  if (v13)
  {
    v15 = [v13 indexesOfObjectsPassingTest:v14];
    v16 = [v15 count];
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_lock_with_options();
  v17 = [(NSMutableArray *)self->_batchedServices indexesOfObjectsPassingTest:v14];
  v18 = [v17 count] + v16;

  os_unfair_lock_unlock(&self->_batchedServicesLock);
  if (v18 >= maximumConcurrentServicesPerClient)
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      [ARServer _addServices:];
    }

    v20 = ARShouldUseLogTypeError_internalOSVersion_5;
    v21 = _ARLogDaemon_6(v19);
    v22 = v21;
    if (v20 == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544386;
        v32 = v24;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2114;
        *v36 = service;
        *&v36[8] = 1024;
        *&v36[10] = v4;
        v37 = 2048;
        v38 = maximumConcurrentServicesPerClient;
        v25 = "%{public}@ <%p>: Rejecting service %{public}@ for pid %d, exceeds maximum services of type per client (%ld)";
        v26 = v22;
        v27 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_23D391000, v26, v27, v25, buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v24 = NSStringFromClass(v28);
      *buf = 138544386;
      v32 = v24;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 2114;
      *v36 = service;
      *&v36[8] = 1024;
      *&v36[10] = v4;
      v37 = 2048;
      v38 = maximumConcurrentServicesPerClient;
      v25 = "Error: %{public}@ <%p>: Rejecting service %{public}@ for pid %d, exceeds maximum services of type per client (%ld)";
      v26 = v22;
      v27 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }
  }

  return v18 < maximumConcurrentServicesPerClient;
}

- (void)_configureServiceForExecution:(id)execution
{
  v35 = *MEMORY[0x277D85DE8];
  executionCopy = execution;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v6 = _ARLogDaemon_6(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v34 = executionCopy;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Configuring service '%{public}@' for execution", buf, 0x20u);
  }

  v10 = _ARLogDaemon_6(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = _ARLogDaemon_6(v12);
  v14 = v13;
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    clientProcessName = [executionCopy clientProcessName];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = clientProcessName;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AddServiceWaitServiceQueue", "%{public}@(%{public}@)", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if (self->_numServicesToBatchCommit)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ARServer__configureServiceForExecution___block_invoke;
    block[3] = &unk_278BCBE90;
    objc_copyWeak(&v31, &location);
    v19 = executionCopy;
    v29 = v19;
    v30 = buf;
    dispatch_async_and_wait(serviceQueue, block);
    os_unfair_lock_lock_with_options();
    if (*(*&buf[8] + 24))
    {
      --self->_numServicesToBatchCommit;
    }

    else
    {
      [(NSMutableArray *)self->_batchedServices addObject:v19];
    }

    if ([(NSMutableArray *)self->_batchedServices count]>= self->_numServicesToBatchCommit)
    {
      dispatch_semaphore_signal(self->_batchedServicesConfiguredSemaphore);
    }

    os_unfair_lock_unlock(&self->_batchedServicesLock);
    v22 = _ARLogDaemon_6(v21);
    v23 = v22;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v23, OS_SIGNPOST_INTERVAL_END, v11, "AddServiceWaitServiceQueue", &unk_23D3A2247, v27, 2u);
    }

    objc_destroyWeak(&v31);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = self->_serviceQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__ARServer__configureServiceForExecution___block_invoke_103;
    v24[3] = &unk_278BCBEB8;
    objc_copyWeak(v26, &location);
    v26[1] = v11;
    v25 = executionCopy;
    dispatch_async_and_wait(v20, v24);

    objc_destroyWeak(v26);
  }

  objc_destroyWeak(&location);
}

void __42__ARServer__configureServiceForExecution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (([WeakRetained _shouldAddService:objc_opt_class() forPID:{objc_msgSend(*(a1 + 32), "clientProcessIdentifier")}] & 1) == 0)
  {
    v2 = [*(a1 + 32) clientService];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
    [v2 serviceConfiguredWithError:v3];

    [*(a1 + 32) invalidate];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __42__ARServer__configureServiceForExecution___block_invoke_103(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _ARLogDaemon_6(WeakRetained);
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v4, OS_SIGNPOST_INTERVAL_END, v5, "AddServiceWaitServiceQueue", &unk_23D3A2247, buf, 2u);
  }

  v6 = [WeakRetained _shouldAddService:objc_opt_class() forPID:{objc_msgSend(*(a1 + 32), "clientProcessIdentifier")}];
  if (v6)
  {
    v7 = _ARLogDaemon_6(v6);
    v8 = v7;
    v9 = *(a1 + 48);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [*(a1 + 32) clientProcessName];
      *buf = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_signpost_emit_with_name_impl(&dword_23D391000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AddService", "%{public}@(%{public}@)", buf, 0x16u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__ARServer__configureServiceForExecution___block_invoke_104;
    v17[3] = &__block_descriptor_40_e5_v8__0l;
    v13 = *(a1 + 32);
    v17[4] = *(a1 + 48);
    v18 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:{1, MEMORY[0x277D85DD0], 3221225472}];
    [WeakRetained _updateAlgorithmConfigurationWithServices:v14];

    __42__ARServer__configureServiceForExecution___block_invoke_104(v17);
  }

  else
  {
    v15 = [*(a1 + 32) clientService];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
    [v15 serviceConfiguredWithError:v16];

    [*(a1 + 32) invalidate];
  }
}

void __42__ARServer__configureServiceForExecution___block_invoke_104(uint64_t a1)
{
  v2 = _ARLogDaemon_6(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "AddService", &unk_23D3A2247, v5, 2u);
  }
}

- (BOOL)commitServices:(id)services
{
  v34 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v6 = _ARLogDaemon_6(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v33 = servicesCopy;
    _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Committing batched services: %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v33) = 0;
  v9 = [servicesCopy count];
  self->_numServicesToBatchCommit = v9;
  if (v9)
  {
    v10 = _ARLogDaemon_6(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *v26 = 138543874;
      v27 = v12;
      v28 = 2048;
      selfCopy = self;
      v30 = 2114;
      v31 = servicesCopy;
      _os_log_impl(&dword_23D391000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Preparing to start sorted batched services: %{public}@", v26, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = servicesCopy;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v21 + 1) + 8 * v16++) _startService];
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    dispatch_semaphore_wait(self->_batchedServicesConfiguredSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    serviceQueue = self->_serviceQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__ARServer_commitServices___block_invoke;
    v20[3] = &unk_278BCBEE0;
    v20[4] = self;
    v20[5] = buf;
    dispatch_async_and_wait(serviceQueue, v20);
  }

  v18 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v18 & 1;
}

void __27__ARServer_commitServices___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 16);
  v3 = [*(*(a1 + 32) + 72) count];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4[9] copy];
    *(*(*(a1 + 40) + 8) + 24) = [v4 _updateAlgorithmConfigurationWithServices:v5];

    [*(*(a1 + 32) + 72) removeAllObjects];
    *(*(a1 + 32) + 56) = 0;
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_5 != -1)
    {
      __27__ARServer_commitServices___block_invoke_cold_1();
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_5;
    v7 = _ARLogDaemon_6(v3);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = *(a1 + 32);
        v15 = 138543618;
        v16 = v10;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No batched services available. Skipping algorithm configuration update.", &v15, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v13;
      v17 = 2048;
      v18 = v14;
      _os_log_impl(&dword_23D391000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No batched services available. Skipping algorithm configuration update.", &v15, 0x16u);
    }
  }

  os_unfair_lock_unlock(v2 + 16);
}

- (BOOL)_updateAlgorithmConfigurationWithServices:(id)services
{
  v32 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v5 = [(ARServer *)self _addServices:servicesCopy];
  v6 = v5;
  v7 = _ARLogGeneral_2(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543874;
      v27 = v10;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = servicesCopy;
      _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated algorithms for service: %{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    if (v8)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v27 = v13;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = servicesCopy;
      _os_log_impl(&dword_23D391000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Failed to update algorithms for services: %{public}@", buf, 0x20u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5178] code:501 userInfo:0];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = servicesCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        clientService = [*(*(&v21 + 1) + 8 * v18) clientService];
        [clientService serviceConfiguredWithError:v11];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v11 == 0;
}

- (void)didDiscoverControl:(id)control
{
  controlCopy = control;
  [controlCopy setServer:self];
  [controlCopy setStatusLogger:self];
}

- (void)serviceDidInvalidate:(id)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v6 = _ARLogDaemon_6(v5);
  v7 = os_signpost_id_generate(v6);

  v9 = _ARLogDaemon_6(v8);
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138543362;
    v17 = invalidateCopy;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TransitionQueueDelaySync", "service invalidated %{public}@", buf, 0xCu);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ARServer_serviceDidInvalidate___block_invoke;
  block[3] = &unk_278BCBF08;
  v14 = invalidateCopy;
  v15 = v7;
  block[4] = self;
  v12 = invalidateCopy;
  dispatch_async_and_wait(serviceQueue, block);
}

uint64_t __33__ARServer_serviceDidInvalidate___block_invoke(uint64_t a1)
{
  v2 = _ARLogDaemon_6(a1);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TransitionQueueDelaySync", &unk_23D3A2247, v6, 2u);
  }

  return [*(a1 + 32) _removeService:*(a1 + 40)];
}

- (void)serviceDidInterrupt:(id)interrupt
{
  v18 = *MEMORY[0x277D85DE8];
  interruptCopy = interrupt;
  dispatch_assert_queue_not_V2(self->_serviceQueue);
  v6 = _ARLogDaemon_6(v5);
  v7 = os_signpost_id_generate(v6);

  v9 = _ARLogDaemon_6(v8);
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138543362;
    v17 = interruptCopy;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TransitionQueueDelaySync", "service interrupted %{public}@", buf, 0xCu);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ARServer_serviceDidInterrupt___block_invoke;
  block[3] = &unk_278BCBF08;
  v14 = interruptCopy;
  v15 = v7;
  block[4] = self;
  v12 = interruptCopy;
  dispatch_async_and_wait(serviceQueue, block);
}

uint64_t __32__ARServer_serviceDidInterrupt___block_invoke(uint64_t a1)
{
  v2 = _ARLogDaemon_6(a1);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_23D391000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TransitionQueueDelaySync", &unk_23D3A2247, v6, 2u);
  }

  return [*(a1 + 32) _removeService:*(a1 + 40)];
}

- (void)_logDaemonStatus
{
  statusLogger = self->_statusLogger;
  v6 = [(ARServer *)self statusDictionaryWithWaitEndOfTransition:0];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [(ARDaemonStatusLogger *)statusLogger logStatusUpdateWithDictionary:v6 forServerObject:self andProcessName:processName];
}

@end