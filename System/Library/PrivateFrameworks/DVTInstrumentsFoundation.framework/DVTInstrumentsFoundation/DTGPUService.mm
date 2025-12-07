@interface DTGPUService
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)enableConsistentGPUPerformanceState:(unint64_t)state acceleratorID:(unint64_t)d;
- (DTGPUService)initWithChannel:(id)channel;
- (DTGPUServiceDelegate)delegate;
- (id)_constructMessagePayload:(const unint64_t *)payload sampleCount:(unint64_t)count length:(unint64_t)length dataSource:(id)source sampleType:(unint64_t)type ringBufferIndex:(unsigned int)index sourceIndex:(unsigned int)sourceIndex;
- (id)_findDataSourcesForTargetProcess:(int)process;
- (id)currentConsistentGPUPerformanceState;
- (id)dataSourceFromGPUIndex:(unint64_t)index;
- (id)disableConsistentGPUPerformanceState:(unint64_t)state;
- (id)flushRemainingData;
- (id)requestDeviceGPUInfo;
- (id)stopCollectingCounters;
- (void)_addGPU:(id)u;
- (void)_configureDataSourcesAndSendMessage:(id)message counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit;
- (void)_removeGPU:(unint64_t)u;
- (void)_resetAllDataSources;
- (void)_sendError:(id)error;
- (void)_sendErrorMessage:(id)message code:(unint64_t)code;
- (void)_sendMessage:(id)message;
- (void)_setupDataSources;
- (void)_startHeartbeatTimer;
- (void)_stopHeartbeatTimer;
- (void)_waitForProcessMetalDevice:(int)device counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit;
- (void)configureCounters:(unint64_t)counters counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit tracingPID:(int)d;
- (void)messageReceived:(id)received;
- (void)readyToSendData:(const unint64_t *)data sampleCount:(unint64_t)count length:(unint64_t)length dataSource:(id)source sampleType:(unint64_t)type ringBufferIndex:(unsigned int)index sourceIndex:(unsigned int)sourceIndex;
- (void)setAPSCounterConfig:(id)config;
- (void)startCollectingCounters;
@end

@implementation DTGPUService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.deferred" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.counters" withVersion:4 forClass:self];
  v4 = MTLCreateSystemDefaultDevice();
  v5 = [v4 supportsFamily:1004];

  if (v5)
  {
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.shaderprofiler" withVersion:1 forClass:self];
    [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.performancestate" withVersion:2 forClass:self];
  }

  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.counters.multisources" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.gpu.counters.aps" withVersion:1 forClass:self];
}

- (DTGPUService)initWithChannel:(id)channel
{
  v9.receiver = self;
  v9.super_class = DTGPUService;
  v3 = [(DTXService *)&v9 initWithChannel:channel];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.dt.instruments.gpu", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    v6 = objc_opt_new();
    collectingDataSources = v3->_collectingDataSources;
    v3->_collectingDataSources = v6;

    v3->_enableShaderProfiler = 0;
  }

  return v3;
}

- (void)messageReceived:(id)received
{
  if ([received errorStatus] == 2)
  {
    [(DTGPUService *)self _resetAllDataSources];

    [(DTGPUService *)self _stopHeartbeatTimer];
  }
}

- (void)_resetAllDataSources
{
  v19 = *MEMORY[0x277D85DE8];
  stopCollectingCounters = [(DTGPUService *)self stopCollectingCounters];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v8++) reset];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v9 = objc_opt_new();
  collectingDataSources = self->_collectingDataSources;
  self->_collectingDataSources = v9;

  v11 = objc_opt_new();
  dataSourceDict = self->_dataSourceDict;
  self->_dataSourceDict = v11;

  self->_enableShaderProfiler = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_setupDataSources
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  dataSourceDict = self->_dataSourceDict;
  self->_dataSourceDict = v3;

  if (self->_importAPSDataPath)
  {
    obj = [[DTGPUDataSource alloc] initWithImportAPSDataPath:self->_importAPSDataPath workQueue:self->_workQueue];
    [(DTGPUDataSource *)obj setDelegate:self];
    [(NSMutableDictionary *)self->_dataSourceDict setObject:obj forKeyedSubscript:&unk_285A36C78];
    importAPSDataPath = self->_importAPSDataPath;
    self->_importAPSDataPath = 0;
  }

  else
  {
    v6 = MTLCreateSystemDefaultDevice();
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obja = v7;
    v8 = [obja countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(obja);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [[DTGPUDataSource alloc] initWithMTLDevice:v12 workQueue:self->_workQueue];
          [(DTGPUDataSource *)v13 setDelegate:self];
          v14 = self->_dataSourceDict;
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "registryID")}];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = [obja countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)_sendMessage:(id)message
{
  messageCopy = message;
  v4 = [MEMORY[0x277D03668] messageWithObject:?];
  channel = [(DTXService *)self channel];
  [channel sendMessage:v4 replyHandler:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 receiveMessage:messageCopy];
  }
}

- (void)_sendError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x277D03668] messageWithError:?];
  channel = [(DTXService *)self channel];
  [channel sendMessage:v4 replyHandler:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 receiveError:errorCopy];
  }
}

- (void)_addGPU:(id)u
{
  v11[3] = *MEMORY[0x277D85DE8];
  uCopy = u;
  if ([(NSMutableDictionary *)self->_dataSourceDict count])
  {
    v5 = [[DTGPUDataSource alloc] initWithMTLDevice:uCopy workQueue:self->_workQueue];
    [(DTGPUDataSource *)v5 setDelegate:self];
    dataSourceDict = self->_dataSourceDict;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(uCopy, "registryID")}];
    [(NSMutableDictionary *)dataSourceDict setObject:v5 forKeyedSubscript:v7];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_absolute_time(), &unk_285A36C90}];
    v11[1] = v8;
    deviceInfoDict = [(DTGPUDataSource *)v5 deviceInfoDict];
    v11[2] = deviceInfoDict;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

    [(DTGPUService *)self _sendMessage:v10];
  }
}

- (void)_removeGPU:(unint64_t)u
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [(NSMutableDictionary *)self->_collectingDataSources objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    [v6 stop];
    [v7 reset];
    [(NSMutableDictionary *)self->_collectingDataSources removeObjectForKey:v5];
  }

  v8 = [(NSMutableDictionary *)self->_dataSourceDict objectForKeyedSubscript:v5];

  if (v8)
  {
    [(NSMutableDictionary *)self->_dataSourceDict removeObjectForKey:v5];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_absolute_time(), &unk_285A36CA8}];
    v12[1] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:u];
    v12[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

    [(DTGPUService *)self _sendMessage:v11];
  }
}

- (id)requestDeviceGPUInfo
{
  v16 = *MEMORY[0x277D85DE8];
  [(DTGPUService *)self _setupDataSources];
  [(DTGPUService *)self _startHeartbeatTimer];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_dataSourceDict allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        deviceInfoDict = [*(*(&v11 + 1) + 8 * i) deviceInfoDict];
        [v3 addObject:deviceInfoDict];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)dataSourceFromGPUIndex:(unint64_t)index
{
  v21 = *MEMORY[0x277D85DE8];
  if (index > 5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v6 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          device = [v10 device];
          registryID = [device registryID];

          if (registryID == index)
          {
            v13 = v10;
            goto LABEL_15;
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([(NSMutableDictionary *)self->_dataSourceDict count]== 1)
  {
    allValues = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v13 = [allValues objectAtIndexedSubscript:0];
LABEL_15:
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)configureCounters:(unint64_t)counters counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit tracingPID:(int)d
{
  limitCopy = limit;
  intervalCopy = interval;
  v9 = *&profile;
  v45 = *MEMORY[0x277D85DE8];
  collectingDataSources = self->_collectingDataSources;
  if (collectingDataSources)
  {
    if ([(NSMutableDictionary *)collectingDataSources count:counters])
    {
      v13 = @"Already collecting counters";
      selfCopy2 = self;
      v15 = 4;
LABEL_20:

      [(DTGPUService *)selfCopy2 _sendErrorMessage:v13 code:v15];
      return;
    }
  }

  else
  {
    v16 = objc_opt_new();
    v17 = self->_collectingDataSources;
    self->_collectingDataSources = v16;
  }

  if (counters > 4)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allValues = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v22 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = v9;
      v38 = intervalCopy;
      v39 = limitCopy;
      v24 = *v41;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(allValues);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          device = [v26 device];
          registryID = [device registryID];

          if (registryID == counters)
          {
            v20 = [MEMORY[0x277CBEB98] setWithObject:v26];
            goto LABEL_18;
          }
        }

        v23 = [allValues countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_18:
      intervalCopy = v38;
      limitCopy = v39;
      v9 = v37;
    }

    else
    {
      v20 = 0;
    }

    if (![v20 count] && -[NSMutableDictionary count](self->_dataSourceDict, "count") == 1)
    {
      v29 = MEMORY[0x277CBEB98];
      allValues2 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
      [allValues2 objectAtIndexedSubscript:0];
      v32 = v31 = v9;
      v33 = [v29 setWithObject:v32];

      v9 = v31;
      v20 = v33;
    }
  }

  else
  {
    v18 = [(DTGPUService *)self dataSourceFromGPUIndex:counters];
    if (!v18)
    {
      v13 = @"Failed to find target GPU for counter collection";
      selfCopy2 = self;
      v15 = 0;
      goto LABEL_20;
    }

    v19 = v18;
    v20 = [MEMORY[0x277CBEB98] setWithObject:v18];
  }

  if (self->_importAPSDataPath)
  {
    v34 = MEMORY[0x277CBEB98];
    allValues3 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v36 = [v34 setWithArray:allValues3];

    v20 = v36;
  }

  [(DTGPUService *)self _configureDataSourcesAndSendMessage:v20 counterProfile:v9 interval:intervalCopy windowLimit:limitCopy];
}

- (void)startCollectingCounters
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  collectingDataSources = self->_collectingDataSources;
  if (collectingDataSources && [(NSMutableDictionary *)collectingDataSources count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    allValues = [(NSMutableDictionary *)selfCopy->_collectingDataSources allValues];
    v5 = [allValues countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v5)
    {
      v6 = v5;
      LOBYTE(v7) = 0;
      v8 = *v61;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v61 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v60 + 1) + 8 * i);
          [v10 enableShaderProfiler:selfCopy->_enableShaderProfiler];
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = [v10 run] ^ 1;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v6);

      if (v7)
      {
        [(DTGPUService *)selfCopy _sendErrorMessage:@"Failed to start counter collection" code:5];
        return;
      }
    }

    else
    {
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [(NSMutableDictionary *)selfCopy->_collectingDataSources allValues];
    v55 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v55)
    {
      v11 = *v57;
      v54 = selfCopy;
      v52 = *v57;
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v56 + 1) + 8 * j);
          collectingProfile = [v13 collectingProfile];
          isAPS = [collectingProfile isAPS];

          if (isAPS)
          {
            v66[0] = &unk_285A36CC0;
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
            v66[1] = v16;
            v17 = MEMORY[0x277CCABB0];
            device = [v13 device];
            v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(device, "registryID")}];
            v66[2] = v19;
            v20 = MEMORY[0x277CCABB0];
            collectingProfile2 = [v13 collectingProfile];
            v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(collectingProfile2, "profile")}];
            v66[3] = v22;
            collectingProfile3 = [v13 collectingProfile];
            counterProfileForHost = [collectingProfile3 counterProfileForHost];
            v66[4] = counterProfileForHost;
            counterProfileForHost3 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];

            selfCopy = v54;
            [(DTGPUService *)v54 _sendMessage:counterProfileForHost3];
          }

          else
          {
            if (selfCopy->_enableMultiSourceCounters)
            {
              v65[0] = &unk_285A36CD8;
              v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
              v65[1] = v50;
              v26 = MEMORY[0x277CCABB0];
              device2 = [v13 device];
              v48 = [v26 numberWithUnsignedLongLong:{objc_msgSend(device2, "registryID")}];
              v65[2] = v48;
              v27 = MEMORY[0x277CCABB0];
              collectingProfile4 = [v13 collectingProfile];
              v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(collectingProfile4, "profile")}];
              v65[3] = v29;
              collectingProfile5 = [v13 collectingProfile];
              counterProfileForHost2 = [collectingProfile5 counterProfileForHost];
              v65[4] = counterProfileForHost2;
              collectingProfile6 = [v13 collectingProfile];
              sampleSizes = [collectingProfile6 sampleSizes];
              v65[5] = sampleSizes;
              collectingProfile7 = [v13 collectingProfile];
              ringBufferCounts = [collectingProfile7 ringBufferCounts];
              v65[6] = ringBufferCounts;
              counterProfileForHost3 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:7];

              selfCopy = v54;
              [(DTGPUService *)v54 _sendMessage:counterProfileForHost3];
            }

            else
            {
              collectingProfile8 = [v13 collectingProfile];
              counterProfileForHost3 = [collectingProfile8 counterProfileForHost];

              collectingProfile9 = [v13 collectingProfile];
              ringBufferCounts2 = [collectingProfile9 ringBufferCounts];

              if ([counterProfileForHost3 count])
              {
                if ([ringBufferCounts2 count])
                {
                  v64[0] = &unk_285A36CF0;
                  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
                  v64[1] = v51;
                  v39 = MEMORY[0x277CCABB0];
                  device3 = [v13 device];
                  v41 = [v39 numberWithUnsignedLongLong:{objc_msgSend(device3, "registryID")}];
                  v64[2] = v41;
                  v42 = MEMORY[0x277CCABB0];
                  collectingProfile10 = [v13 collectingProfile];
                  v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(collectingProfile10, "profile")}];
                  v64[3] = v44;
                  v45 = [counterProfileForHost3 objectAtIndexedSubscript:0];
                  v64[4] = v45;
                  v46 = [ringBufferCounts2 objectAtIndexedSubscript:0];
                  v64[5] = v46;
                  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:6];

                  selfCopy = v54;
                  [(DTGPUService *)v54 _sendMessage:v47];
                }
              }
            }

            v11 = v52;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v55);
    }
  }

  else
  {

    [(DTGPUService *)selfCopy _sendErrorMessage:@"No configured data sources" code:2];
  }
}

- (id)stopCollectingCounters
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v4 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v22 + 1) + 8 * i) stop];
      }

      v5 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v9 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = -1;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allValues2);
        }

        timestampOfFirstSample = [*(*(&v18 + 1) + 8 * j) timestampOfFirstSample];
        if (v12 >= timestampOfFirstSample)
        {
          v15 = timestampOfFirstSample;
        }

        else
        {
          v15 = v12;
        }

        if (timestampOfFirstSample)
        {
          v12 = v15;
        }
      }

      v10 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = -1;
  }

  self->_enableShaderProfiler = 0;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];

  return v16;
}

- (id)_constructMessagePayload:(const unint64_t *)payload sampleCount:(unint64_t)count length:(unint64_t)length dataSource:(id)source sampleType:(unint64_t)type ringBufferIndex:(unsigned int)index sourceIndex:(unsigned int)sourceIndex
{
  v9 = *&index;
  v33[7] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:payload length:length];
  if (type == 1)
  {
    v32[0] = &unk_285A36D20;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v32[1] = v16;
    v26 = MEMORY[0x277CCABB0];
    device = [sourceCopy device];
    v19 = [v26 numberWithUnsignedLongLong:{objc_msgSend(device, "registryID")}];
    v32[2] = v19;
    v32[3] = &unk_285A36C78;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
    v32[4] = v20;
    v32[5] = v15;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v32[6] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sourceIndex];
    v32[7] = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = v32;
    v25 = 8;
    goto LABEL_5;
  }

  if (!type)
  {
    v33[0] = &unk_285A36D08;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v33[1] = v16;
    v17 = MEMORY[0x277CCABB0];
    device = [sourceCopy device];
    v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(device, "registryID")}];
    v33[2] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:count];
    v33[3] = v20;
    v33[4] = v15;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v33[5] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sourceIndex];
    v33[6] = v22;
    v23 = MEMORY[0x277CBEA60];
    v24 = v33;
    v25 = 7;
LABEL_5:
    v27 = [v23 arrayWithObjects:v24 count:v25];
LABEL_6:

    goto LABEL_7;
  }

  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v31[0] = &unk_285A36D38;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v31[1] = v16;
    v29 = MEMORY[0x277CCABB0];
    device = [sourceCopy device];
    v19 = [v29 numberWithUnsignedLongLong:{objc_msgSend(device, "registryID")}];
    v31[2] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v31[3] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:length];
    v31[4] = v21;
    v31[5] = v15;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v31[6] = v22;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sourceIndex];
    v31[7] = v30;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:8];

    goto LABEL_6;
  }

  v27 = 0;
LABEL_7:

  return v27;
}

- (id)flushRemainingData
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v5 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_247FDE43C;
        v13[3] = &unk_278EF3A10;
        v13[4] = self;
        v13[5] = v9;
        v14 = v3;
        [v9 getRemainingData:v13];
        [v9 reset];
      }

      v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  collectingDataSources = self->_collectingDataSources;
  self->_collectingDataSources = v10;

  return v3;
}

- (void)readyToSendData:(const unint64_t *)data sampleCount:(unint64_t)count length:(unint64_t)length dataSource:(id)source sampleType:(unint64_t)type ringBufferIndex:(unsigned int)index sourceIndex:(unsigned int)sourceIndex
{
  LODWORD(v11) = sourceIndex;
  v10 = [(DTGPUService *)self _constructMessagePayload:data sampleCount:count length:length dataSource:source sampleType:type ringBufferIndex:*&index sourceIndex:v11];
  if (v10)
  {
    v12 = v10;
    [(DTGPUService *)self _sendMessage:v10];
    v10 = v12;
  }
}

- (id)_findDataSourcesForTargetProcess:(int)process
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"pid %d", *&process];
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NSMutableDictionary *)self->_dataSourceDict allValues];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *MEMORY[0x277CBECE8];
    v17 = *v23;
    do
    {
      v9 = 0;
      v18 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        iterator = 0;
        device = [v10 device];
        if (!MEMORY[0x24C1C24E0]([device acceleratorPort], "IOService", &iterator))
        {
          v12 = IOIteratorNext(iterator);
          if (v12)
          {
            v13 = v12;
            do
            {
              v14 = IOIteratorNext(iterator);
              CFProperty = IORegistryEntryCreateCFProperty(v13, @"IOUserClientCreator", v8, 0);
              IOObjectRelease(v13);
              if ([CFProperty rangeOfString:v4] != 0x7FFFFFFFFFFFFFFFLL)
              {
                IOObjectRelease(iterator);
                [v20 addObject:v10];
              }

              v13 = v14;
            }

            while (v14);
          }

          IOObjectRelease(iterator);
          v7 = v17;
          v6 = v18;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return v20;
}

- (void)_configureDataSourcesAndSendMessage:(id)message counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit
{
  v6 = *&profile;
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v9 = messageCopy;
  if (messageCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [messageCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
    obj = v9;
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 configure:v6 interval:interval windowLimit:limit];
          if (v15)
          {
            collectingDataSources = self->_collectingDataSources;
            v17 = MEMORY[0x277CCABB0];
            device = [v14 device];
            v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(device, "registryID")}];
            [(NSMutableDictionary *)collectingDataSources setObject:v14 forKeyedSubscript:v19];
          }
        }

        v9 = obj;
        v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([(NSMutableDictionary *)self->_collectingDataSources count])
    {
      v31[0] = &unk_285A36D50;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
      v31[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];

      [(DTGPUService *)self _sendMessage:v21];
      v9 = obj;
    }

    else
    {
      [(DTGPUService *)self _sendErrorMessage:@"Selected counter profile is not supported on target device" code:1];
      heartbeatTimer = self->_heartbeatTimer;
      if (heartbeatTimer)
      {
        dispatch_source_cancel(heartbeatTimer);
        v23 = self->_heartbeatTimer;
        self->_heartbeatTimer = 0;
      }
    }
  }

  else
  {
    [(DTGPUService *)self _sendErrorMessage:@"Invalid device ID" code:0];
    if (self->_heartbeatTimer)
    {
      [(DTGPUService *)self _stopHeartbeatTimer];
    }
  }
}

- (void)_waitForProcessMetalDevice:(int)device counterProfile:(unsigned int)profile interval:(unint64_t)interval windowLimit:(unint64_t)limit
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDEA84;
  block[3] = &unk_278EF3A38;
  objc_copyWeak(v13, &location);
  deviceCopy = device;
  profileCopy = profile;
  v13[1] = interval;
  v13[2] = limit;
  dispatch_async(workQueue, block);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_startHeartbeatTimer
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDED24;
  block[3] = &unk_278EF3A60;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_sync(workQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopHeartbeatTimer
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDEF9C;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_sendErrorMessage:(id)message code:(unint64_t)code
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v7 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v6 errorWithDomain:@"com.apple.DTGPUService" code:code userInfo:v9];

  [(DTGPUService *)self _sendError:v10];
}

- (id)currentConsistentGPUPerformanceState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_dataSourceDict allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        currentConsistentGPUPerformanceState = [*(*(&v11 + 1) + 8 * i) currentConsistentGPUPerformanceState];
        [v3 addObject:currentConsistentGPUPerformanceState];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)enableConsistentGPUPerformanceState:(unint64_t)state acceleratorID:(unint64_t)d
{
  if (state)
  {
    stateCopy = state;
    self->_targetPerfState = state;
    self->_enableConsistentPerfState = 1;
    v5 = [(DTGPUService *)self dataSourceFromGPUIndex:d];
    LOBYTE(stateCopy) = [v5 enableConsistentGPUPerformanceState:stateCopy];

    return stateCopy;
  }

  else
  {
    v7 = [(DTGPUService *)self disableConsistentGPUPerformanceState:d];
    return 1;
  }
}

- (id)disableConsistentGPUPerformanceState:(unint64_t)state
{
  self->_enableConsistentPerfState = 0;
  v3 = [(DTGPUService *)self dataSourceFromGPUIndex:state];
  disableConsistentGPUPerformanceState = [v3 disableConsistentGPUPerformanceState];

  return disableConsistentGPUPerformanceState;
}

- (void)setAPSCounterConfig:(id)config
{
  configCopy = config;
  dataSourceDict = self->_dataSourceDict;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FDF3D0;
  v7[3] = &unk_278EF3A88;
  v8 = configCopy;
  v6 = configCopy;
  [(NSMutableDictionary *)dataSourceDict enumerateKeysAndObjectsUsingBlock:v7];
}

- (DTGPUServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end