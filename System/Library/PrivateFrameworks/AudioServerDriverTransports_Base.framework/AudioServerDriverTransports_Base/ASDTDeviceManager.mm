@interface ASDTDeviceManager
+ (ASDTDeviceManager)deviceManagerWithConfig:(id)config withDelegate:(id)delegate;
+ (id)concurrentQueue;
- (ASDTDeviceManager)initWithConfig:(id)config withDelegate:(id)delegate;
- (ASDTDeviceManagerDelegate)delegate;
- (ASDTPlugin)plugin;
- (BOOL)addAudioDeviceWithCheck:(id)check;
- (NSArray)allDeviceFactories;
- (id)factoryForDeviceUID:(id)d;
- (id)generateUnderlyingDeviceUIDsFromConfig:(id)config;
- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope;
- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope andElement:(unsigned int)element;
- (int)getInitStatusForDeviceUID:(id)d;
- (void)buildAndInitializeDevice:(id)device;
- (void)configureDevices;
- (void)deviceConfigurationFailed:(id)failed;
- (void)deviceInitializationFailed:(id)failed;
- (void)deviceInitialized:(id)initialized withStatus:(int)status;
- (void)initializeDevice:(id)device;
- (void)ioServiceAvailable:(id)available withManager:(id)manager;
- (void)ioServiceWillTerminate:(id)terminate withManager:(id)manager;
- (void)lockedSignalThread;
- (void)logStatsForDevice:(id)device withPowerState:(int)state;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)powerStateChangedForDevice:(id)device toState:(int)state;
- (void)publishDevice:(id)device;
- (void)publishDeviceLocked:(id)locked;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)stopThread;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)threadLoop:(id)loop;
- (void)waitForInitialization;
- (void)waitForInitializationWithTimeoutUs:(unsigned int)us;
- (void)waitForThreadStart;
@end

@implementation ASDTDeviceManager

- (void)systemHasPoweredOn
{
  v39 = *MEMORY[0x277D85DE8];
  [(ASDTDeviceList *)self audioDevices];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v2 = v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v38 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          systemCompletedPowerOn = [v6 systemCompletedPowerOn];
          v9 = systemCompletedPowerOn;
          if (systemCompletedPowerOn)
          {
            v10 = ASDTBaseLogType(systemCompletedPowerOn, v8);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              deviceUID = [v6 deviceUID];
              v13 = deviceUID;
              v14 = v9;
              if (v9 - 32 >= 0x5F)
              {
                v14 = 32;
              }

              *buf = 138413826;
              v25 = name;
              v15 = BYTE1(v9);
              if (BYTE1(v9) - 32 >= 0x5F)
              {
                v15 = 32;
              }

              v26 = 1024;
              v27 = v9;
              v16 = BYTE2(v9);
              if (BYTE2(v9) - 32 >= 0x5F)
              {
                v16 = 32;
              }

              v28 = 1024;
              if ((v9 - 0x20000000) >> 24 >= 0x5F)
              {
                v17 = 32;
              }

              else
              {
                v17 = HIBYTE(v9);
              }

              v29 = v17;
              v30 = 1024;
              v31 = v16;
              v32 = 1024;
              v33 = v15;
              v34 = 1024;
              v35 = v14;
              v36 = 2112;
              v37 = deviceUID;
              _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "%@: systemHasPoweredOn: Received error %x (%c%c%c%c) from device '%@'.", buf, 0x34u);
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v18 = [v2 countByEnumeratingWithState:&v20 objects:v38 count:16];
      v3 = v18;
    }

    while (v18);
  }
}

+ (ASDTDeviceManager)deviceManagerWithConfig:(id)config withDelegate:(id)delegate
{
  configCopy = config;
  delegateCopy = delegate;
  v7 = [objc_alloc(objc_msgSend(configCopy "asdtDeviceManager"))];
  [v7 configureDevices];

  return v7;
}

- (ASDTDeviceManager)initWithConfig:(id)config withDelegate:(id)delegate
{
  v75 = *MEMORY[0x277D85DE8];
  configCopy = config;
  delegateCopy = delegate;
  v70.receiver = self;
  v70.super_class = ASDTDeviceManager;
  v8 = [(ASDTDeviceList *)&v70 init];
  if (!v8)
  {
    goto LABEL_42;
  }

  asdtName = [configCopy asdtName];
  [(ASDTDeviceManager *)v8 setName:asdtName];

  name = [(ASDTDeviceManager *)v8 name];
  LODWORD(asdtName) = name == 0;

  if (asdtName)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(ASDTDeviceManager *)v8 setName:v12];
  }

  [(ASDTDeviceManager *)v8 setConfiguration:configCopy];
  [(ASDTDeviceManager *)v8 setDelegate:delegateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASDTDeviceManager *)v8 setPlugin:delegateCopy];
  }

  plugin = [(ASDTDeviceManager *)v8 plugin];
  v14 = plugin == 0;

  if (v14)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INTERACTIVE, 0);

    v21 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.concurrentQueue", v20);
    [(ASDTDeviceManager *)v8 setConcurrentQueue:v21];

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    plugin3 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INTERACTIVE, 0);

    powerNotificationQueue = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.serialQueue", plugin3);
  }

  else
  {
    plugin2 = [(ASDTDeviceManager *)v8 plugin];
    concurrentQueue = [plugin2 concurrentQueue];
    [(ASDTDeviceManager *)v8 setConcurrentQueue:concurrentQueue];

    plugin3 = [(ASDTDeviceManager *)v8 plugin];
    powerNotificationQueue = [plugin3 powerNotificationQueue];
  }

  [(ASDTDeviceManager *)v8 setSerialQueue:powerNotificationQueue];

  configuration = [(ASDTDeviceManager *)v8 configuration];
  asdtDevices = [configuration asdtDevices];

  v25 = [asdtDevices count];
  asdtManagerAudioObjectMaxCount = [configCopy asdtManagerAudioObjectMaxCount];
  v28 = asdtManagerAudioObjectMaxCount;
  if (asdtManagerAudioObjectMaxCount)
  {
    v29 = ASDTBaseLogType(asdtManagerAudioObjectMaxCount, v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(ASDTDeviceManager *)v8 name];
      *buf = 138412546;
      v72 = name2;
      v73 = 1024;
      LODWORD(v74) = v28;
      _os_log_impl(&dword_241659000, v29, OS_LOG_TYPE_DEFAULT, "%@: Setting maximum number of objects to %u.", buf, 0x12u);
    }

    plugin4 = [(ASDTDeviceManager *)v8 plugin];
    [plugin4 setMaximumNumberOfObjects:v28];
  }

  v8->_userIsActive = 1;
  -[ASDTDeviceManager setVerboseDeviceLogging:](v8, "setVerboseDeviceLogging:", [configCopy asdtManagerVerboseLogging]);
  [configCopy asdtManagerRunningLogPeriod];
  v32 = [(ASDTDeviceManager *)v8 setRunningLogPeriod:?];
  v34 = ASDTBaseLogType(v32, v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [(ASDTDeviceManager *)v8 name];
    [(ASDTDeviceManager *)v8 runningLogPeriod];
    *buf = 138412546;
    v72 = name3;
    v73 = 2048;
    v74 = v36;
    _os_log_impl(&dword_241659000, v34, OS_LOG_TYPE_DEFAULT, "%@: Running log period: %1.1lf", buf, 0x16u);
  }

  v37 = [MEMORY[0x277CBEB58] setWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDeviceFactories:v37];

  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setMatchedDeviceFactories:v38];

  v39 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDeviceInitStatus:v39];

  v40 = [MEMORY[0x277CBEB58] setWithCapacity:v25];
  [(ASDTDeviceManager *)v8 setDevicesRunning:v40];

  array = [MEMORY[0x277CBEB18] array];
  [(ASDTDeviceManager *)v8 setIoServiceDependencies:array];

  v42 = [(ASDTDeviceManager *)v8 generateUnderlyingDeviceUIDsFromConfig:asdtDevices];
  [(ASDTDeviceManager *)v8 setUnderlyingDeviceUIDs:v42];

  v43 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.initCond"];
  [(ASDTDeviceManager *)v8 setInitializingCond:v43];

  v44 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.threadCond"];
  [(ASDTDeviceManager *)v8 setThreadCond:v44];

  v45 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.factoryCond"];
  [(ASDTDeviceManager *)v8 setFactoryPublishCond:v45];

  v46 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v8 selector:sel_threadLoop_ object:0];
  [(ASDTDeviceManager *)v8 setThread:v46];

  thread = [(ASDTDeviceManager *)v8 thread];
  [thread setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceManager.thread"];

  thread2 = [(ASDTDeviceManager *)v8 thread];
  [thread2 setQualityOfService:33];

  deviceInitStatus = [(ASDTDeviceManager *)v8 deviceInitStatus];
  v51 = deviceInitStatus;
  if (deviceInitStatus)
  {
    devicesRunning = [(ASDTDeviceManager *)v8 devicesRunning];
    if (devicesRunning)
    {
      thread3 = [(ASDTDeviceManager *)v8 thread];
      if (thread3)
      {
        threadCond = [(ASDTDeviceManager *)v8 threadCond];
        if (threadCond)
        {
          deviceFactories = [(ASDTDeviceManager *)v8 deviceFactories];
          if (deviceFactories)
          {
            matchedDeviceFactories = [(ASDTDeviceManager *)v8 matchedDeviceFactories];
            if (matchedDeviceFactories)
            {
              initializingCond = [(ASDTDeviceManager *)v8 initializingCond];
              if (initializingCond)
              {
                underlyingDeviceUIDs = [(ASDTDeviceManager *)v8 underlyingDeviceUIDs];
                if (underlyingDeviceUIDs)
                {
                  ioServiceDependencies = [(ASDTDeviceManager *)v8 ioServiceDependencies];
                  if (ioServiceDependencies)
                  {
                    concurrentQueue2 = [(ASDTDeviceManager *)v8 concurrentQueue];
                    if (concurrentQueue2)
                    {
                      serialQueue = [(ASDTDeviceManager *)v8 serialQueue];
                      if (serialQueue)
                      {
                        factoryPublishCond = [(ASDTDeviceManager *)v8 factoryPublishCond];
                        v62 = factoryPublishCond == 0;
                      }

                      else
                      {
                        v62 = 1;
                      }

                      if (!v62)
                      {
                        objc_initWeak(buf, v8);
                        concurrentQueue3 = [(ASDTDeviceManager *)v8 concurrentQueue];
                        block[0] = MEMORY[0x277D85DD0];
                        block[1] = 3221225472;
                        block[2] = __49__ASDTDeviceManager_initWithConfig_withDelegate___block_invoke;
                        block[3] = &unk_278CE6068;
                        objc_copyWeak(&v69, buf);
                        dispatch_async(concurrentQueue3, block);

                        objc_destroyWeak(&v69);
                        objc_destroyWeak(buf);

LABEL_42:
                        v59 = v8;
                        goto LABEL_43;
                      }

                      goto LABEL_36;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_36:
  v58 = ASDTBaseLogType(deviceInitStatus, v50);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)v8 name];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager initWithConfig:withDelegate:];
  }

  v59 = 0;
LABEL_43:

  return v59;
}

void __49__ASDTDeviceManager_initWithConfig_withDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained waitForThreadStart];
}

+ (id)concurrentQueue
{
  if (+[ASDTDeviceManager concurrentQueue]::onceToken != -1)
  {
    +[ASDTDeviceManager concurrentQueue];
  }

  v3 = +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue;

  return v3;
}

void __36__ASDTDeviceManager_concurrentQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTDeviceManager.concurrentQueue", attr);
  v2 = +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue;
  +[ASDTDeviceManager concurrentQueue]::sConcurrentQueue = v1;
}

- (BOOL)addAudioDeviceWithCheck:(id)check
{
  v27 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [checkCopy addObserver:self forKeyPath:@"powerState" options:1 context:0];
  }

  threadCond2 = [(ASDTDeviceManager *)self threadCond];
  [threadCond2 unlock];

  v18.receiver = self;
  v18.super_class = ASDTDeviceManager;
  v7 = [(ASDTDeviceList *)&v18 addAudioDeviceWithCheck:checkCopy];
  v9 = v7;
  if (v7)
  {
    v10 = ASDTBaseLogType(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTDeviceManager *)self name];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      deviceUID = [checkCopy deviceUID];
      *buf = 138413058;
      v20 = name;
      v21 = 2048;
      selfCopy = self;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = deviceUID;
      _os_log_impl(&dword_241659000, v10, OS_LOG_TYPE_DEFAULT, "%@(%p): Added %@ '%@'", buf, 0x2Au);
    }

    [checkCopy logDiagnostics:{-[ASDTDeviceManager verboseDeviceLogging](self, "verboseDeviceLogging")}];
  }

  else
  {
    threadCond3 = [(ASDTDeviceManager *)self threadCond];
    [threadCond3 lock];

    [checkCopy removeObserver:self forKeyPath:@"powerState"];
    threadCond4 = [(ASDTDeviceManager *)self threadCond];
    [threadCond4 unlock];
  }

  return v9;
}

- (id)generateUnderlyingDeviceUIDsFromConfig:(id)config
{
  v18 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v4 = [configCopy count];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:v4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = configCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        asdtUnderlyingDeviceUID = [*(*(&v13 + 1) + 8 * i) asdtUnderlyingDeviceUID];
        if (asdtUnderlyingDeviceUID)
        {
          [v5 addObject:asdtUnderlyingDeviceUID];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];

  return v11;
}

- (void)removeAudioDevice:(id)device
{
  v48 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  if (deviceCopy && (-[ASDTDeviceList audioDevices](self, "audioDevices"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:deviceCopy], v6, (v7 & 1) != 0))
  {
    delegate = [(ASDTDeviceManager *)self delegate];
    audioDevices = [delegate audioDevices];
    v10 = [audioDevices containsObject:deviceCopy];

    if (v10)
    {
      v13 = ASDTBaseLogType(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        name = [(ASDTDeviceManager *)self name];
        deviceUID = [deviceCopy deviceUID];
        *buf = 138412546;
        v43 = name;
        v44 = 2112;
        v45 = deviceUID;
        _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@: Unpublishing '%@'.", buf, 0x16u);
      }

      delegate2 = [(ASDTDeviceManager *)self delegate];
      [delegate2 removeAudioDevice:deviceCopy];
    }

    matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
    deviceUID2 = [deviceCopy deviceUID];
    v19 = [matchedDeviceFactories objectForKey:deviceUID2];

    if (v19)
    {
      [v19 cleanup];
      deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
      [deviceFactories removeObject:v19];

      matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      deviceUID3 = [deviceCopy deviceUID];
      [matchedDeviceFactories2 removeObjectForKey:deviceUID3];
    }

    deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
    deviceUID4 = [deviceCopy deviceUID];
    [deviceInitStatus removeObjectForKey:deviceUID4];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      threadCond = [(ASDTDeviceManager *)self threadCond];
      [threadCond lock];

      devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
      v29 = [devicesRunning containsObject:deviceCopy];

      if (v29)
      {
        devicesRunning2 = [(ASDTDeviceManager *)self devicesRunning];
        [devicesRunning2 removeObject:deviceCopy];
      }

      [deviceCopy removeObserver:self forKeyPath:@"powerState"];
      threadCond2 = [(ASDTDeviceManager *)self threadCond];
      [threadCond2 unlock];
    }

    v32 = ASDTBaseLogType(isKindOfClass, v26);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(ASDTDeviceManager *)self name];
      deviceUID5 = [deviceCopy deviceUID];
      *buf = 138412546;
      v43 = name2;
      v44 = 2112;
      v45 = deviceUID5;
      _os_log_impl(&dword_241659000, v32, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
    }

    v41.receiver = self;
    v41.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v41 removeAudioDevice:deviceCopy];
    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];

    v19 = ASDTBaseLogType(v37, v38);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      name3 = [(ASDTDeviceManager *)self name];
      deviceUID6 = [deviceCopy deviceUID];
      *buf = 138412802;
      v43 = name3;
      v44 = 2048;
      v45 = deviceCopy;
      v46 = 2112;
      v47 = deviceUID6;
      _os_log_debug_impl(&dword_241659000, v19, OS_LOG_TYPE_DEBUG, "%@: Bad or unmanaged device(%p) with UID: %@", buf, 0x20u);
    }
  }
}

- (void)removeAudioDevices:(id)devices
{
  v64 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  v5 = MEMORY[0x277CBEB58];
  audioDevices = [(ASDTDeviceList *)self audioDevices];
  v47 = [v5 setWithArray:audioDevices];

  v7 = [MEMORY[0x277CBEB98] setWithArray:devicesCopy];
  [v47 intersectSet:v7];

  if ([v47 count])
  {
    v9 = [v47 count];
    if (v9 != [devicesCopy count])
    {
      allObjects = [v47 allObjects];

      devicesCopy = allObjects;
    }

    delegate = [(ASDTDeviceManager *)self delegate];
    audioDevices2 = [delegate audioDevices];

    initializingCond3 = audioDevices2;
    if ([audioDevices2 count])
    {
      v13 = [MEMORY[0x277CBEB58] setWithArray:devicesCopy];
      v14 = [MEMORY[0x277CBEB98] setWithArray:audioDevices2];
      [v13 intersectSet:v14];

      if ([v13 count])
      {
        delegate2 = [(ASDTDeviceManager *)self delegate];
        allObjects2 = [v13 allObjects];
        [delegate2 removeAudioDevices:allObjects2];
      }
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v17 = devicesCopy;
    v18 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v18)
    {
      v19 = *v55;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v54 + 1) + 8 * i);
          matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
          deviceUID = [v21 deviceUID];
          v24 = [matchedDeviceFactories objectForKey:deviceUID];

          if (v24)
          {
            [v24 cleanup];
            deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
            [deviceFactories removeObject:v24];

            matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
            deviceUID2 = [v21 deviceUID];
            [matchedDeviceFactories2 removeObjectForKey:deviceUID2];
          }

          deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
          deviceUID3 = [v21 deviceUID];
          [deviceInitStatus removeObjectForKey:deviceUID3];

          v32 = ASDTBaseLogType(v30, v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            name = [(ASDTDeviceManager *)self name];
            deviceUID4 = [v21 deviceUID];
            *buf = 138412546;
            v61 = name;
            v62 = 2112;
            v63 = deviceUID4;
            _os_log_impl(&dword_241659000, v32, OS_LOG_TYPE_DEFAULT, "%@: Removing '%@'.", buf, 0x16u);
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v18);
    }

    threadCond = [(ASDTDeviceManager *)self threadCond];
    [threadCond lock];

    devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
    v37 = [MEMORY[0x277CBEB98] setWithArray:v17];
    [devicesRunning minusSet:v37];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v17;
    v39 = [v38 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v39)
    {
      v40 = *v51;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v50 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v42 removeObserver:self forKeyPath:@"powerState"];
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v39);
    }

    threadCond2 = [(ASDTDeviceManager *)self threadCond];
    [threadCond2 unlock];

    v49.receiver = self;
    v49.super_class = ASDTDeviceManager;
    [(ASDTDeviceList *)&v49 removeAudioDevices:v38];
    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    v45 = ASDTBaseLogType(0, v8);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager removeAudioDevices:];
    }

    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];
    v38 = devicesCopy;
  }
}

- (id)factoryForDeviceUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    initializingCond = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond lock];

    matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
    v7 = [matchedDeviceFactories objectForKey:dCopy];

    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)allDeviceFactories
{
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
  allObjects = [deviceFactories allObjects];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  return allObjects;
}

- (void)buildAndInitializeDevice:(id)device
{
  deviceCopy = device;
  deviceUID = [deviceCopy deviceUID];
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
  v8 = [matchedDeviceFactories objectForKey:deviceUID];

  if (!v8 || v8 == deviceCopy)
  {
    if (!v8)
    {
      [(ASDTDeviceManager *)self setNumDevicesToInitialize:[(ASDTDeviceManager *)self numDevicesToInitialize]+ 1];
      matchedDeviceFactories2 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [matchedDeviceFactories2 setObject:deviceCopy forKey:deviceUID];
    }

    device = [deviceCopy device];

    if (device)
    {
      goto LABEL_9;
    }

    if ([deviceCopy deviceIsBuilding])
    {
      initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond2 unlock];

      goto LABEL_18;
    }

    [deviceCopy setDeviceIsBuilding:1];
    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];

    LODWORD(initializingCond3) = [deviceCopy buildDevice];
    initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond4 lock];

    [deviceCopy setDeviceIsBuilding:0];
    if (initializingCond3 && ([deviceCopy device], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
LABEL_9:
      initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond5 unlock];

      audioDevices = [(ASDTDeviceList *)self audioDevices];
      device2 = [deviceCopy device];
      v18 = [audioDevices containsObject:device2];

      if ((v18 & 1) == 0)
      {
        device3 = [deviceCopy device];
        [(ASDTDeviceList *)self addAudioDevice:device3];

        [(ASDTDeviceManager *)self initializeDevice:deviceCopy];
      }
    }

    else
    {
      config = [deviceCopy config];
      [deviceCopy cleanup];
      deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
      [deviceFactories removeObject:deviceCopy];

      matchedDeviceFactories3 = [(ASDTDeviceManager *)self matchedDeviceFactories];
      [matchedDeviceFactories3 removeObjectForKey:deviceUID];

      initializingCond6 = [(ASDTDeviceManager *)self initializingCond];
      [initializingCond6 unlock];

      v30 = ASDTBaseLogType(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(ASDTDeviceManager *)self name];
        objc_claimAutoreleasedReturnValue();
        [ASDTDeviceManager buildAndInitializeDevice:];
      }

      [(ASDTDeviceManager *)self deviceConfigurationFailed:config];
    }
  }

  else
  {
    initializingCond7 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond7 unlock];

    v12 = ASDTBaseLogType(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager buildAndInitializeDevice:];
    }
  }

LABEL_18:
}

- (void)initializeDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
  deviceUID = [deviceCopy deviceUID];
  v8 = [deviceInitStatus objectForKey:deviceUID];

  if (!v8)
  {
    deviceInitStatus2 = [(ASDTDeviceManager *)self deviceInitStatus];
    deviceUID2 = [deviceCopy deviceUID];
    [deviceInitStatus2 setObject:&unk_2853549C0 forKey:deviceUID2];

    concurrentQueue = [(ASDTDeviceManager *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ASDTDeviceManager_initializeDevice___block_invoke;
    block[3] = &unk_278CE64F0;
    v14 = deviceCopy;
    dispatch_async(concurrentQueue, block);
  }

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

void __38__ASDTDeviceManager_initializeDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) manager];
  v4 = v2;
  if (v2)
  {
    v5 = ASDTBaseLogType(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 name];
      v7 = [*(a1 + 32) deviceUID];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@: Initializing '%@'", &v9, 0x16u);
    }

    if ([*(a1 + 32) initializeDevice])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [v4 deviceInitialized:*(a1 + 32) withStatus:v8];
  }
}

- (void)deviceInitialized:(id)initialized withStatus:(int)status
{
  v4 = *&status;
  v38 = *MEMORY[0x277D85DE8];
  initializedCopy = initialized;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  numDevicesToInitialize = [(ASDTDeviceManager *)self numDevicesToInitialize];
  if (!numDevicesToInitialize)
  {
    v11 = ASDTBaseLogType(numDevicesToInitialize, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager deviceInitialized:withStatus:];
    }

    if (![(ASDTDeviceManager *)self numDevicesToInitialize])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      name = [(ASDTDeviceManager *)self name];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:466 description:{@"%@: No devices to initialize!", name}];
    }
  }

  [(ASDTDeviceManager *)self setNumDevicesToInitialize:[(ASDTDeviceManager *)self numDevicesToInitialize]- 1];
  deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  deviceUID = [initializedCopy deviceUID];
  [deviceInitStatus setObject:v13 forKey:deviceUID];

  if (v4 == 1)
  {
    initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond2 unlock];

    ASDTTime::machAbsoluteTime(buf);
    if (initializedCopy)
    {
      objc_msgSend_initTime(initializedCopy);
    }

    else
    {
      memset(v34, 0, sizeof(v34));
    }

    v36 = *buf;
    v37 = *&buf[16];
    v22 = ASDTTime::operator-=(&v36, v34, v18, v19);
    v24 = ASDTBaseLogType(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID2 = [initializedCopy deviceUID];
      *buf = 138412546;
      *&buf[4] = deviceUID2;
      *&buf[12] = 2048;
      *&buf[14] = v36 / 1000000000.0;
      _os_log_impl(&dword_241659000, v24, OS_LOG_TYPE_DEFAULT, "Device '%@' initialized in %1.4lfs", buf, 0x16u);
    }

    factoryPublishCond = [(ASDTDeviceManager *)self factoryPublishCond];
    [factoryPublishCond lock];

    [initializedCopy publishDevice];
    factoryPublishCond2 = [(ASDTDeviceManager *)self factoryPublishCond];
    [factoryPublishCond2 unlock];

    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 lock];
  }

  else
  {
    v20 = ASDTBaseLogType(v15, v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [initializedCopy deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager deviceInitialized:withStatus:];
    }

    device = [initializedCopy device];
    [(ASDTDeviceManager *)self deviceInitializationFailed:device];
  }

  initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond4 broadcast];

  initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond5 unlock];

  device2 = [initializedCopy device];
  [(ASDTDeviceList *)self notifyOfInterest:2 forDevice:device2];
}

- (int)getInitStatusForDeviceUID:(id)d
{
  dCopy = d;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
  v7 = [deviceInitStatus objectForKey:dCopy];
  unsignedIntValue = [v7 unsignedIntValue];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  return unsignedIntValue;
}

- (void)publishDeviceLocked:(id)locked
{
  v38 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  deviceUID = [lockedCopy deviceUID];

  if (!deviceUID)
  {
    v9 = ASDTBaseLogType(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    deviceUID2 = [lockedCopy deviceUID];
    v11 = deviceUID2 == 0;

    if (v11)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      name = [(ASDTDeviceManager *)self name];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:501 description:{@"%@: Bad device factory.", name}];
    }
  }

  device = [lockedCopy device];
  if (!device)
  {
    v14 = ASDTBaseLogType(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceManager *)self name];
      objc_claimAutoreleasedReturnValue();
      [lockedCopy deviceUID];
      objc_claimAutoreleasedReturnValue();
      [ASDTDeviceManager publishDeviceLocked:];
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    name2 = [(ASDTDeviceManager *)self name];
    deviceUID3 = [lockedCopy deviceUID];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ASDTDeviceManager.mm" lineNumber:505 description:{@"%@: Device factory for '%@' missing device object.", name2, deviceUID3}];
  }

  delegate = [(ASDTDeviceManager *)self delegate];
  audioDevices = [delegate audioDevices];
  v20 = [audioDevices containsObject:device];

  if ((v20 & 1) == 0)
  {
    v23 = ASDTBaseLogType(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID4 = [device deviceUID];
      deviceName = [device deviceName];
      *buf = 138412546;
      *&buf[4] = deviceUID4;
      *&buf[12] = 2112;
      *&buf[14] = deviceName;
      _os_log_impl(&dword_241659000, v23, OS_LOG_TYPE_DEFAULT, "Publishing %@ (%@)", buf, 0x16u);
    }

    delegate2 = [(ASDTDeviceManager *)self delegate];
    [delegate2 addAudioDevice:device];

    ASDTTime::machAbsoluteTime(v36);
    if (lockedCopy)
    {
      objc_msgSend_initTime(lockedCopy);
    }

    else
    {
      memset(v35, 0, sizeof(v35));
    }

    *buf = *v36;
    *&buf[16] = *&v36[16];
    v29 = ASDTTime::operator-=(buf, v35, v27, v28);
    v31 = ASDTBaseLogType(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      deviceUID5 = [lockedCopy deviceUID];
      *v36 = 138412546;
      *&v36[4] = deviceUID5;
      *&v36[12] = 2048;
      *&v36[14] = *buf / 1000000000.0;
      _os_log_impl(&dword_241659000, v31, OS_LOG_TYPE_DEFAULT, "Device '%@' published after %1.4lfs", v36, 0x16u);
    }
  }
}

- (void)publishDevice:(id)device
{
  deviceCopy = device;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  [(ASDTDeviceManager *)self publishDeviceLocked:deviceCopy];
  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];
}

- (void)waitForInitializationWithTimeoutUs:(unsigned int)us
{
  v34 = *MEMORY[0x277D85DE8];
  if (us)
  {
    ASDTTime::futureUSecs(&v30, *&us);
    initializingCond = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond lock];

    while ([(ASDTDeviceManager *)self numDevicesToInitialize])
    {
LABEL_14:
      initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
      *buf = v30;
      *&buf[16] = v31;
      v15 = [initializingCond2 waitUntilTime:buf];

      if ((v15 & 1) == 0)
      {
        audioDevices = ASDTBaseLogType(v16, v17);
        if (os_log_type_enabled(audioDevices, OS_LOG_TYPE_DEBUG))
        {
          [(ASDTDeviceManager *)self name];
          objc_claimAutoreleasedReturnValue();
          [ASDTDeviceManager waitForInitializationWithTimeoutUs:];
        }

        v18 = 0;
        goto LABEL_19;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    audioDevices = [(ASDTDeviceList *)self audioDevices];
    v6 = [audioDevices countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v6)
    {
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(audioDevices);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          deviceInitStatus = [(ASDTDeviceManager *)self deviceInitStatus];
          deviceUID = [v9 deviceUID];
          v12 = [deviceInitStatus objectForKey:deviceUID];
          unsignedIntValue = [v12 unsignedIntValue];

          if (!unsignedIntValue)
          {

            goto LABEL_14;
          }
        }

        v6 = [audioDevices countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_19:

    initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
    [initializingCond3 unlock];

    v22 = ASDTBaseLogType(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTDeviceManager *)self name];
      v24 = name;
      v25 = "some";
      if (v18)
      {
        v25 = "all";
      }

      *buf = 138412546;
      *&buf[4] = name;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_impl(&dword_241659000, v22, OS_LOG_TYPE_DEFAULT, "%@: Done waiting for devices; %s initialized.", buf, 0x16u);
    }
  }
}

- (void)waitForInitialization
{
  configuration = [(ASDTDeviceManager *)self configuration];
  -[ASDTDeviceManager waitForInitializationWithTimeoutUs:](self, "waitForInitializationWithTimeoutUs:", [configuration asdtManagerInitializationWaitUs]);
}

- (void)configureDevices
{
  v61 = *MEMORY[0x277D85DE8];
  configuration = [(ASDTDeviceManager *)self configuration];
  asdtDevices = [configuration asdtDevices];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = asdtDevices;
  v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v5)
  {
    v7 = *v51;
    *&v6 = 138412546;
    v40 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        asdtDeviceUID = [v9 asdtDeviceUID];
        if (asdtDeviceUID)
        {
          v12 = [ASDTAudioDeviceFactory forDeviceConfig:v9 withManager:self];
          if (v12)
          {
            initializingCond = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond lock];

            deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
            [deviceFactories addObject:v12];

            initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond2 unlock];
          }

          else
          {
            initializingCond2 = ASDTBaseLogType(0, v11);
            if (os_log_type_enabled(initializingCond2, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              *buf = v40;
              v57 = name;
              v58 = 2112;
              v59 = v9;
              _os_log_error_impl(&dword_241659000, initializingCond2, OS_LOG_TYPE_ERROR, "%@: Failure creating factory for: %@", buf, 0x16u);
            }
          }

LABEL_19:

          goto LABEL_20;
        }

        asdtSubclass = [v9 asdtSubclass];
        v17 = [asdtSubclass conformsToProtocol:&unk_285364B48];
        if (v17)
        {
          v12 = [asdtSubclass ioServiceDependenciesForConfig:v9];
          if ([v12 count])
          {
            initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond3 lock];

            ioServiceDependencies = [(ASDTDeviceManager *)self ioServiceDependencies];
            [ioServiceDependencies addObjectsFromArray:v12];

            initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
            [initializingCond2 unlock];
          }

          else
          {
            initializingCond2 = ASDTBaseLogType(0, v19);
            if (os_log_type_enabled(initializingCond2, OS_LOG_TYPE_ERROR))
            {
              name2 = [(ASDTDeviceManager *)self name];
              *buf = v40;
              v57 = name2;
              v58 = 2112;
              v59 = v9;
              _os_log_error_impl(&dword_241659000, initializingCond2, OS_LOG_TYPE_ERROR, "%@: Could not identify service dependencies for configuration: %@", buf, 0x16u);
            }
          }

          goto LABEL_19;
        }

        v12 = ASDTBaseLogType(v17, v18);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          name3 = [(ASDTDeviceManager *)self name];
          *buf = v40;
          v57 = name3;
          v58 = 2112;
          v59 = v9;
          _os_log_error_impl(&dword_241659000, v12, OS_LOG_TYPE_ERROR, "%@: Could not identify required services for configuration: %@", buf, 0x16u);
        }

LABEL_20:
      }

      v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v5);
  }

  initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond4 lock];

  deviceFactories2 = [(ASDTDeviceManager *)self deviceFactories];
  allObjects = [deviceFactories2 allObjects];

  ioServiceDependencies2 = [(ASDTDeviceManager *)self ioServiceDependencies];
  v29 = [ioServiceDependencies2 copy];

  initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond5 unlock];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = allObjects;
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v32)
  {
    v33 = *v47;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v46 + 1) + 8 * j);
        if ([v35 checkDependencies])
        {
          [(ASDTDeviceManager *)self buildAndInitializeDevice:v35];
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v32);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v29;
  v37 = [v36 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v37)
  {
    v38 = *v43;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(v36);
        }

        [*(*(&v42 + 1) + 8 * k) addManagerDelegate:self];
      }

      v37 = [v36 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v37);
  }

  [(ASDTDeviceManager *)self waitForInitialization];
}

- (void)ioServiceAvailable:(id)available withManager:(id)manager
{
  v43 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  managerCopy = manager;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  ioServiceDependencies = [(ASDTDeviceManager *)self ioServiceDependencies];
  v31 = [ioServiceDependencies copy];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v31;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v10)
  {
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([v13 ioServiceMatches:availableCopy withManager:managerCopy])
        {
          idValue = [availableCopy idValue];
          identifier = [idValue identifier];

          initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
          [initializingCond3 lock];

          matchedDeviceFactories = [(ASDTDeviceManager *)self matchedDeviceFactories];
          v18 = [matchedDeviceFactories objectForKey:identifier];

          initializingCond4 = [(ASDTDeviceManager *)self initializingCond];
          [initializingCond4 unlock];

          if (v18)
          {
            v22 = ASDTBaseLogType(v20, v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              *buf = 138412546;
              v39 = name;
              v40 = 2112;
              v41 = identifier;
              _os_log_error_impl(&dword_241659000, v22, OS_LOG_TYPE_ERROR, "%@: Device with UID '%@' already matched.", buf, 0x16u);
            }
          }

          else
          {
            configuration = [v13 configuration];
            v22 = [configuration mutableCopy];

            [v22 setObject:identifier forKey:@"DeviceUID"];
            v18 = [ASDTAudioDeviceFactory forDeviceConfig:v22 withManager:self];
            if (v18)
            {
              initializingCond5 = [(ASDTDeviceManager *)self initializingCond];
              [initializingCond5 lock];

              deviceFactories = [(ASDTDeviceManager *)self deviceFactories];
              [deviceFactories addObject:v18];

              initializingCond6 = [(ASDTDeviceManager *)self initializingCond];
              [initializingCond6 unlock];

              [(ASDTDeviceManager *)self buildAndInitializeDevice:v18];
            }

            else
            {
              v29 = ASDTBaseLogType(0, v25);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                name2 = [(ASDTDeviceManager *)self name];
                *buf = 138412546;
                v39 = name2;
                v40 = 2112;
                v41 = v22;
                _os_log_error_impl(&dword_241659000, v29, OS_LOG_TYPE_ERROR, "%@: Failure creating factory for: %@", buf, 0x16u);
              }

              [(ASDTDeviceManager *)self deviceConfigurationFailed:v22];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v10);
  }
}

- (void)ioServiceWillTerminate:(id)terminate withManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  idValue = [terminateCopy idValue];
  identifier = [idValue identifier];
  v9 = [(ASDTDeviceList *)self getAudioDeviceWithUID:identifier];

  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 unlock];

  if (v9)
  {
    v13 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTDeviceManager *)self name];
      deviceUID = [v9 deviceUID];
      v16 = 138412546;
      v17 = name;
      v18 = 2112;
      v19 = deviceUID;
      _os_log_impl(&dword_241659000, v13, OS_LOG_TYPE_DEFAULT, "%@: Terminate notification incoming for '%@'.", &v16, 0x16u);
    }

    [(ASDTDeviceManager *)self removeAudioDevice:v9];
  }
}

- (void)deviceConfigurationFailed:(id)failed
{
  failedCopy = failed;
  v6 = ASDTBaseLogType(failedCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager deviceConfigurationFailed:];
  }
}

- (void)deviceInitializationFailed:(id)failed
{
  failedCopy = failed;
  v6 = ASDTBaseLogType(failedCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceManager *)self name];
    objc_claimAutoreleasedReturnValue();
    [failedCopy deviceUID];
    objc_claimAutoreleasedReturnValue();
    [ASDTDeviceManager deviceInitializationFailed:];
  }
}

- (void)systemWillSleep
{
  v39 = *MEMORY[0x277D85DE8];
  [(ASDTDeviceList *)self audioDevices];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v2 = v21 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v38 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          systemSleepPending = [v6 systemSleepPending];
          v9 = systemSleepPending;
          if (systemSleepPending)
          {
            v10 = ASDTBaseLogType(systemSleepPending, v8);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              name = [(ASDTDeviceManager *)self name];
              deviceUID = [v6 deviceUID];
              v13 = deviceUID;
              v14 = v9;
              if (v9 - 32 >= 0x5F)
              {
                v14 = 32;
              }

              *buf = 138413826;
              v25 = name;
              v15 = BYTE1(v9);
              if (BYTE1(v9) - 32 >= 0x5F)
              {
                v15 = 32;
              }

              v26 = 1024;
              v27 = v9;
              v16 = BYTE2(v9);
              if (BYTE2(v9) - 32 >= 0x5F)
              {
                v16 = 32;
              }

              v28 = 1024;
              if ((v9 - 0x20000000) >> 24 >= 0x5F)
              {
                v17 = 32;
              }

              else
              {
                v17 = HIBYTE(v9);
              }

              v29 = v17;
              v30 = 1024;
              v31 = v16;
              v32 = 1024;
              v33 = v15;
              v34 = 1024;
              v35 = v14;
              v36 = 2112;
              v37 = deviceUID;
              _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "%@: systemWillSleep: Received error %x (%c%c%c%c) from device '%@'.", buf, 0x34u);
            }
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v18 = [v2 countByEnumeratingWithState:&v20 objects:v38 count:16];
      v3 = v18;
    }

    while (v18);
  }
}

- (void)waitForThreadStart
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Failed to start thread.", v5);
}

- (void)stopThread
{
  v17 = *MEMORY[0x277D85DE8];
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  thread = [(ASDTDeviceManager *)self thread];
  [thread cancel];

  threadCond2 = [(ASDTDeviceManager *)self threadCond];
  [threadCond2 signal];

  threadCond3 = [(ASDTDeviceManager *)self threadCond];
  [threadCond3 unlock];

  *&v7 = 138412290;
  v14 = v7;
  while (1)
  {
    thread2 = [(ASDTDeviceManager *)self thread];
    isFinished = [thread2 isFinished];

    if (isFinished)
    {
      break;
    }

    v12 = ASDTBaseLogType(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      name = [(ASDTDeviceManager *)self name];
      *buf = v14;
      v16 = name;
      _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_INFO, "%@: Waiting for thread to finish...", buf, 0xCu);
    }

    usleep(0x2710u);
  }

  [(ASDTDeviceManager *)self setThread:0];
}

- (void)lockedSignalThread
{
  [(ASDTDeviceManager *)self setThreadWorkToDo:1];
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond signal];
}

- (void)threadLoop:(id)loop
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = ASDTBaseLogType(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = name;
    _os_log_impl(&dword_241659000, v4, OS_LOG_TYPE_DEFAULT, "%@: Started background thread.", buf, 0xCu);
  }

  initializingCond = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond lock];

  [(ASDTDeviceManager *)self setThreadStarted:1];
  initializingCond2 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond2 broadcast];

  initializingCond3 = [(ASDTDeviceManager *)self initializingCond];
  [initializingCond3 unlock];

  thread = [(ASDTDeviceManager *)self thread];
  [thread setQualityOfService:17];

  v38 = 0uLL;
  v39 = 0x10000;
  threadCond = [(ASDTDeviceManager *)self threadCond];
  [threadCond lock];

  while (1)
  {
    thread2 = [(ASDTDeviceManager *)self thread];
    isCancelled = [thread2 isCancelled];

    if (isCancelled)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    if (![(ASDTDeviceManager *)self threadWorkToDo])
    {
      if (v38)
      {
        threadCond2 = [(ASDTDeviceManager *)self threadCond];
        *buf = v38;
        v42 = v39;
        [threadCond2 waitUntilTime:buf];
      }

      else
      {
        threadCond2 = [(ASDTDeviceManager *)self threadCond];
        [threadCond2 wait];
      }
    }

    [(ASDTDeviceManager *)self setThreadWorkToDo:0];
    devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
    allObjects = [devicesRunning allObjects];

    threadCond3 = [(ASDTDeviceManager *)self threadCond];
    [threadCond3 unlock];

    if (![allObjects count])
    {
      ASDTTime::ASDTTime(buf, 0, 1, v18);
LABEL_23:
      v38 = *buf;
      v39 = v42;
      goto LABEL_24;
    }

    if (!v38)
    {
      [(ASDTDeviceManager *)self runningLogPeriod];
      ASDTTime::futureSecs(buf, v27);
      goto LABEL_23;
    }

    ASDTTime::machAbsoluteTime(buf);
    if (*buf > v38)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = allObjects;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v20)
      {
        v21 = *v35;
        do
        {
          v22 = 0;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v19);
            }

            -[ASDTDeviceManager logStatsForDevice:withPowerState:](self, "logStatsForDevice:withPowerState:", *(*(&v34 + 1) + 8 * v22), [*(*(&v34 + 1) + 8 * v22) powerState]);
            ++v22;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v20);
      }

      [(ASDTDeviceManager *)self runningLogPeriod];
      ASDTTime::ASDTTime(buf, llround(v23 * 1000000000.0), 1, v24);
      ASDTTime::operator+=(&v38, buf, v25, v26);
    }

LABEL_24:
    threadCond4 = [(ASDTDeviceManager *)self threadCond];
    [threadCond4 lock];

    objc_autoreleasePoolPop(v13);
  }

  threadCond5 = [(ASDTDeviceManager *)self threadCond];
  [threadCond5 unlock];

  v32 = ASDTBaseLogType(v30, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [(ASDTDeviceManager *)self name];
    *buf = 138412290;
    *&buf[4] = name2;
    _os_log_impl(&dword_241659000, v32, OS_LOG_TYPE_DEFAULT, "%@: Finished background thread.", buf, 0xCu);
  }
}

- (void)powerStateChangedForDevice:(id)device toState:(int)state
{
  v4 = *&state;
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    threadCond = [(ASDTDeviceManager *)self threadCond];
    [threadCond lock];

    devicesRunning = [(ASDTDeviceManager *)self devicesRunning];
    v8 = [devicesRunning containsObject:deviceCopy];

    if ((v4 != 1920298606) | v8 & 1)
    {
      if (((v4 != 1920298606) & v8) != 1)
      {
LABEL_7:
        threadCond2 = [(ASDTDeviceManager *)self threadCond];
        [threadCond2 unlock];

        goto LABEL_8;
      }

      [(ASDTDeviceManager *)self logStatsForDevice:deviceCopy withPowerState:v4];
      devicesRunning2 = [(ASDTDeviceManager *)self devicesRunning];
      [devicesRunning2 removeObject:deviceCopy];
    }

    else
    {
      devicesRunning3 = [(ASDTDeviceManager *)self devicesRunning];
      [devicesRunning3 addObject:deviceCopy];

      [(ASDTDeviceManager *)self logStatsForDevice:deviceCopy withPowerState:1920298606];
    }

    [(ASDTDeviceManager *)self lockedSignalThread];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"powerState"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    -[ASDTDeviceManager powerStateChangedForDevice:toState:](self, "powerStateChangedForDevice:toState:", objectCopy, [v13 unsignedIntValue]);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ASDTDeviceManager;
    [(ASDTDeviceManager *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope andElement:(unsigned int)element
{
  deviceCopy = device;
  v13[0] = 1883533936;
  v13[1] = scope;
  v13[2] = element;
  if ([deviceCopy hasProperty:v13] & 1) != 0 && (v11 = 4, v12 = 0, (objc_msgSend(deviceCopy, "getProperty:withQualifierSize:qualifierData:dataSize:andData:forClient:", v13, 0, 0, &v11, &v12, 0)))
  {
    v8 = "Host";
    if (element != 1)
    {
      v8 = "Remote";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %u", v8, v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)messageForDroppedPacketsFromDevice:(id)device withScope:(unsigned int)scope
{
  v4 = *&scope;
  deviceCopy = device;
  v7 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:v4 andElement:1];
  v8 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:v4 andElement:0];
  if (v7 | v8)
  {
    if (v7)
    {
      uTF8String = [v7 UTF8String];
    }

    else
    {
      uTF8String = "";
    }

    if (v8)
    {
      uTF8String2 = [v8 UTF8String];
    }

    else
    {
      uTF8String2 = "";
    }

    v12 = "Output";
    if (v4 != 1869968496)
    {
      v12 = "Input";
    }

    if (v8)
    {
      v13 = v7 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = ", ";
    if (v13)
    {
      v14 = "";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s%s%s", v12, uTF8String, v14, uTF8String2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)logStatsForDevice:(id)device withPowerState:(int)state
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CCACA8];
  name = [(ASDTDeviceManager *)self name];
  deviceUID = [deviceCopy deviceUID];
  v9 = deviceUID;
  v10 = "not ";
  if (state == 1920298606)
  {
    v10 = "";
  }

  v11 = [v6 stringWithFormat:@"%@: '%@' is %srunning", name, deviceUID, v10];

  if (v11)
  {
    [array addObject:v11];
  }

  v28 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:1869968496];
  v12 = [(ASDTDeviceManager *)self messageForDroppedPacketsFromDevice:deviceCopy withScope:1768845428];
  v27 = v12;
  if (__PAIR128__(v28, v12) != 0)
  {
    v13 = &stru_28534DD28;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_28534DD28;
    }

    if (v12)
    {
      v15 = v28 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = "; ";
    if (v15)
    {
      v16 = "";
    }

    if (v28)
    {
      v13 = v28;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Packets Dropped: %@%s%@", v13, v16, v14];

    if (v17)
    {
      v11 = v17;
      [array addObject:v17];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    status = [deviceCopy status];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    allKeys = [status allKeys];
    v20 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          v24 = MEMORY[0x277CCACA8];
          v25 = [status objectForKeyedSubscript:v23];
          v26 = [v24 stringWithFormat:@"%@: %@", v23, v25];

          v11 = v26;
          if (v26)
          {
            [array addObject:v26];
          }
        }

        v20 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }
  }

  [MEMORY[0x277CEFB58] asdtLogComponents:array withSeparator:{@", "}];
}

- (ASDTDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ASDTPlugin)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

- (void)initWithConfig:withDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Memory allocation error.", v5);
}

- (void)removeAudioDevices:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  _os_log_debug_impl(&dword_241659000, v5, OS_LOG_TYPE_DEBUG, "%@: Bad or unmanaged devices to remove. %@", v4, 0x16u);
}

- (void)buildAndInitializeDevice:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Device with UID '%@' is already matched.", v4, v5);
}

- (void)buildAndInitializeDevice:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed to build device '%@' after resources ready.", v4, v5);
}

- (void)deviceInitialized:withStatus:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: No devices to initialize!", v5);
}

- (void)deviceInitialized:withStatus:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Initialization of device '%@' failed; not publishing it.", v5, v6);
}

- (void)publishDeviceLocked:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_0_9(&dword_241659000, v3, v4, "%@: Bad device factory.", v5);
}

- (void)publishDeviceLocked:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Device factory for '%@' missing device object.", v5, v6);
}

- (void)waitForInitializationWithTimeoutUs:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_8(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_241659000, v3, OS_LOG_TYPE_DEBUG, "%@: Timeout waiting for audio devices to initialize.", v4, 0xCu);
}

- (void)deviceConfigurationFailed:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed creating audio device with configuration:\n%@", v4, v5);
}

- (void)deviceInitializationFailed:.cold.1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_10(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_1_4(&dword_241659000, "%@: Failed initializing audio device with UID %@", v5, v6);
}

@end