@interface ARDaemonMetrics
+ (id)sharedDaemonMetrics;
- (ARDaemonMetrics)init;
- (BOOL)_removeServiceForClient:(id)client serviceName:(id)name;
- (void)_addServiceForClient:(id)client serviceName:(id)name;
- (void)_reportCoreAnalyticsDaemonEventWithServiceName:(id)name clientBundleIdentifier:(id)identifier isServiceRemoved:(BOOL)removed isDisconnectingClient:(BOOL)client;
- (void)_reportDaemonHeartbeatForSessionUUID:(id)d daemonUpTimeExcludingSleepMinutes:(unint64_t)minutes daemonUpTimeIncludingSleepMinutes:(unint64_t)sleepMinutes systemUpTimeMinutes:(unint64_t)timeMinutes memoryFootprintInBytes:(unint64_t)bytes;
- (void)reportMemoryFootprintInBytes:(unint64_t)bytes;
- (void)reportServiceAddedWithName:(id)name clientBundleIdentifier:(id)identifier;
- (void)reportServiceRemovedWithName:(id)name clientBundleIdentifier:(id)identifier;
@end

@implementation ARDaemonMetrics

- (ARDaemonMetrics)init
{
  v11.receiver = self;
  v11.super_class = ARDaemonMetrics;
  v2 = [(ARDaemonMetrics *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_peakMemoryUsageInMegabytes = 0;
    v4 = ARCreateNonFixedPriorityDispatchQueue();
    reportingQueue = v3->_reportingQueue;
    v3->_reportingQueue = v4;

    v6 = objc_opt_new();
    activeServiceCountPerClient = v3->_activeServiceCountPerClient;
    v3->_activeServiceCountPerClient = v6;

    v8 = objc_opt_new();
    allServicesUsedPerClient = v3->_allServicesUsedPerClient;
    v3->_allServicesUsedPerClient = v8;
  }

  return v3;
}

+ (id)sharedDaemonMetrics
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ARDaemonMetrics_sharedDaemonMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDaemonMetrics_onceToken != -1)
  {
    dispatch_once(&sharedDaemonMetrics_onceToken, block);
  }

  v2 = sharedDaemonMetrics_sharedARDaemonMetrics;

  return v2;
}

uint64_t __38__ARDaemonMetrics_sharedDaemonMetrics__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedDaemonMetrics_sharedARDaemonMetrics;
  sharedDaemonMetrics_sharedARDaemonMetrics = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)reportMemoryFootprintInBytes:(unint64_t)bytes
{
  reportingQueue = self->_reportingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ARDaemonMetrics_reportMemoryFootprintInBytes___block_invoke;
  v4[3] = &unk_278BCBC68;
  v4[4] = self;
  v4[5] = bytes;
  dispatch_async(reportingQueue, v4);
}

uint64_t __48__ARDaemonMetrics_reportMemoryFootprintInBytes___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = vcvts_n_f32_u64(*(result + 40), 0xAuLL) * 0.00097656;
  if (*(v1 + 8) < v2)
  {
    *(v1 + 8) = v2;
  }

  return result;
}

- (void)_reportCoreAnalyticsDaemonEventWithServiceName:(id)name clientBundleIdentifier:(id)identifier isServiceRemoved:(BOOL)removed isDisconnectingClient:(BOOL)client
{
  clientCopy = client;
  removedCopy = removed;
  v34[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  v12 = [(NSMutableDictionary *)self->_allServicesUsedPerClient objectForKey:identifierCopy];
  allObjects = [v12 allObjects];
  v14 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v15 = [v14 componentsJoinedByString:@""];;
  if (clientCopy)
  {
    v33[0] = @"peakMemory";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_peakMemoryUsageInMegabytes];
    v34[0] = v16;
    v33[1] = @"allClientsCount";
    v17 = MEMORY[0x277CCABB0];
    [(NSMutableDictionary *)self->_activeServiceCountPerClient allKeys];
    v30 = v14;
    v18 = nameCopy;
    v20 = v19 = removedCopy;
    v21 = [v17 numberWithInteger:{objc_msgSend(v20, "count")}];
    v34[1] = v21;
    v34[2] = identifierCopy;
    v33[2] = @"disconnectedClientBundleID";
    v33[3] = @"allServicesUsed";
    v34[3] = v15;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v23 = v22 = identifierCopy;

    removedCopy = v19;
    nameCopy = v18;
    v14 = v30;

    ARCoreAnalyticsEventCreateAndReport();
    identifierCopy = v22;
  }

  v31[0] = @"peakMemory";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:self->_peakMemoryUsageInMegabytes];
  v32[0] = v24;
  v31[1] = @"allClientsCount";
  v25 = MEMORY[0x277CCABB0];
  allKeys = [(NSMutableDictionary *)self->_activeServiceCountPerClient allKeys];
  v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(allKeys, "count")}];
  v32[1] = v27;
  v32[2] = v15;
  v31[2] = @"allReportingClientServicesUsed";
  v31[3] = @"reportedServiceName";
  v32[3] = nameCopy;
  v31[4] = @"isServiceRemoved";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:removedCopy];
  v32[4] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];

  ARCoreAnalyticsEventCreateAndReport();
}

- (void)reportServiceRemovedWithName:(id)name clientBundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    reportingQueue = self->_reportingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke;
    block[3] = &unk_278BCBC90;
    block[4] = self;
    v11 = identifierCopy;
    v12 = nameCopy;
    dispatch_async(reportingQueue, block);
  }
}

void __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _removeServiceForClient:*(a1 + 40) serviceName:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];

  if (!v3)
  {
    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      __71__ARDaemonMetrics_reportServiceRemovedWithName_clientBundleIdentifier___block_invoke_cold_1();
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_1;
    v12 = _ARLogDaemon_3(v4);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v17 = *(a1 + 40);
        v16 = *(a1 + 48);
        v18 = *(a1 + 32);
        v26 = 138544130;
        v27 = v15;
        v28 = 2048;
        v29 = v18;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = v17;
        v19 = "%{public}@ <%p>: Service '%@' removed for unknown client with ID: %@";
        v20 = v13;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_23D391000, v20, v21, v19, &v26, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v15 = NSStringFromClass(v22);
      v24 = *(a1 + 40);
      v23 = *(a1 + 48);
      v25 = *(a1 + 32);
      v26 = 138544130;
      v27 = v15;
      v28 = 2048;
      v29 = v25;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v19 = "Error: %{public}@ <%p>: Service '%@' removed for unknown client with ID: %@";
      v20 = v13;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    return;
  }

  v5 = *(a1 + 32);
  if (v5[1] || (v5 = [v5 setCurrentMemoryFootprintAsPeak], *(*(a1 + 32) + 8)))
  {
    v6 = _ARLogDaemon_3(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v26 = 138543874;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_23D391000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Flushing daemon metrics to CA for disconnected client with ID: %@", &v26, 0x20u);
    }

    [*(a1 + 32) reportCoreAnalyticsDaemonEventWithServiceName:*(a1 + 48) clientBundleIdentifier:*(a1 + 40) isServiceRemoved:1 isDisconnectingClient:v2];
    *(*(a1 + 32) + 8) = 0;
    if (v2)
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
      [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)reportServiceAddedWithName:(id)name clientBundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy)
  {
    reportingQueue = self->_reportingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__ARDaemonMetrics_reportServiceAddedWithName_clientBundleIdentifier___block_invoke;
    block[3] = &unk_278BCBC90;
    block[4] = self;
    v11 = identifierCopy;
    v12 = nameCopy;
    dispatch_async(reportingQueue, block);
  }
}

void *__69__ARDaemonMetrics_reportServiceAddedWithName_clientBundleIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addServiceForClient:*(a1 + 40) serviceName:*(a1 + 48)];
  result = *(a1 + 32);
  if (result[1] || ([result setCurrentMemoryFootprintAsPeak], result = *(a1 + 32), result[1]))
  {
    result = [result reportCoreAnalyticsDaemonEventWithServiceName:*(a1 + 48) clientBundleIdentifier:*(a1 + 40) isServiceRemoved:0 isDisconnectingClient:0];
    *(*(a1 + 32) + 8) = 0;
  }

  return result;
}

- (void)_reportDaemonHeartbeatForSessionUUID:(id)d daemonUpTimeExcludingSleepMinutes:(unint64_t)minutes daemonUpTimeIncludingSleepMinutes:(unint64_t)sleepMinutes systemUpTimeMinutes:(unint64_t)timeMinutes memoryFootprintInBytes:(unint64_t)bytes
{
  v10 = (vcvts_n_f32_u64(bytes, 0xAuLL) * 0.00097656);
  dCopy = d;
  v17 = objc_opt_new();
  uUIDString = [dCopy UUIDString];

  [v17 setObject:uUIDString forKeyedSubscript:@"sessionUUID"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:minutes];
  [v17 setObject:v13 forKeyedSubscript:@"daemonUpTimeExcludingSleepMinutes"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sleepMinutes];
  [v17 setObject:v14 forKeyedSubscript:@"daemonUpTimeIncludingSleepMinutes"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:timeMinutes];
  [v17 setObject:v15 forKeyedSubscript:@"systemUpTimeMinutes"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v17 setObject:v16 forKeyedSubscript:@"currentMemoryFootprint"];

  ARCoreAnalyticsEventCreateAndReport();
}

- (void)_addServiceForClient:(id)client serviceName:(id)name
{
  clientCopy = client;
  activeServiceCountPerClient = self->_activeServiceCountPerClient;
  nameCopy = name;
  v8 = [(NSMutableDictionary *)activeServiceCountPerClient objectForKey:clientCopy];

  if (!v8)
  {
    v9 = self->_activeServiceCountPerClient;
    zero = [MEMORY[0x277CCA980] zero];
    [(NSMutableDictionary *)v9 setObject:zero forKey:clientCopy];
  }

  v11 = self->_activeServiceCountPerClient;
  v12 = [(NSMutableDictionary *)v11 objectForKey:clientCopy];
  v13 = [MEMORY[0x277CCA980] one];
  v14 = [v12 decimalNumberByAdding:v13];
  [(NSMutableDictionary *)v11 setObject:v14 forKey:clientCopy];

  v15 = [(NSMutableDictionary *)self->_allServicesUsedPerClient objectForKey:clientCopy];

  if (!v15)
  {
    allServicesUsedPerClient = self->_allServicesUsedPerClient;
    v17 = objc_opt_new();
    [(NSMutableDictionary *)allServicesUsedPerClient setObject:v17 forKey:clientCopy];
  }

  v18 = [(NSMutableDictionary *)self->_allServicesUsedPerClient objectForKey:clientCopy];
  [v18 addObject:nameCopy];
}

- (BOOL)_removeServiceForClient:(id)client serviceName:(id)name
{
  clientCopy = client;
  v6 = [(NSMutableDictionary *)self->_activeServiceCountPerClient objectForKey:clientCopy];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA980] one];
    v8 = [v6 decimalNumberBySubtracting:v7];

    [(NSMutableDictionary *)self->_activeServiceCountPerClient setObject:v8 forKey:clientCopy];
    v9 = [v8 intValue] < 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end