@interface ASDTAudioDeviceFactory
+ (id)factoryWithUID:(id)d fromList:(id)list;
+ (id)forDeviceConfig:(id)config withManager:(id)manager;
+ (id)ioServiceDependenciesForConfig:(id)config;
+ (void)addDependenciesFromConfig:(id)config toArray:(id)array;
+ (void)addDependenciesFromConfigArray:(id)array toArray:(id)toArray;
- (ASDAudioDevice)underlyingDevice;
- (ASDTDeviceManager)manager;
- (BOOL)buildDevice;
- (BOOL)checkIOServiceDependencies;
- (BOOL)checkUnderlyingDeviceDependency;
- (id).cxx_construct;
- (id)initForDeviceConfig:(id)config withManager:(id)manager;
- (int)initializeDevice;
- (void)buildDevice;
- (void)cleanup;
- (void)dealloc;
- (void)interestNotification:(int)notification forDevice:(id)device;
- (void)ioServiceAvailable:(id)available withManager:(id)manager;
- (void)publishDevice;
- (void)setInitTime:(ASDTTime *)time;
@end

@implementation ASDTAudioDeviceFactory

+ (id)forDeviceConfig:(id)config withManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  asdtFactorySubclass = [configCopy asdtFactorySubclass];
  v8 = [asdtFactorySubclass isSubclassOfClass:objc_opt_class()];
  if (v8)
  {
    v10 = [[asdtFactorySubclass alloc] initForDeviceConfig:configCopy withManager:managerCopy];
  }

  else
  {
    v11 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [configCopy objectForKeyedSubscript:@"FactorySubclass"];
      v13 = [configCopy objectForKeyedSubscript:@"Subclass"];
      [(ASDTAudioDeviceFactory *)v12 forDeviceConfig:v13 withManager:v15, v11];
    }

    v10 = 0;
  }

  return v10;
}

- (id)initForDeviceConfig:(id)config withManager:(id)manager
{
  v27 = *MEMORY[0x277D85DE8];
  configCopy = config;
  managerCopy = manager;
  asdtDeviceUID = [configCopy asdtDeviceUID];
  v11 = asdtDeviceUID;
  if (!managerCopy || !configCopy || !asdtDeviceUID)
  {
    v12 = ASDTBaseLogType(asdtDeviceUID, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTAudioDeviceFactory initForDeviceConfig:v12 withManager:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDTAudioDeviceFactory.mm" lineNumber:68 description:@"Bad arguments."];
  }

  v25.receiver = self;
  v25.super_class = ASDTAudioDeviceFactory;
  v14 = [(ASDTAudioDeviceFactory *)&v25 init];
  if (v14)
  {
    ASDTTime::machAbsoluteTime(buf);
    *(v14 + 72) = *buf;
    *(v14 + 11) = *&buf[16];
    [v14 setDeviceUID:v11];
    [v14 setConfig:configCopy];
    [v14 setManager:managerCopy];
    config = [v14 config];
    asdtUnderlyingDeviceUID = [config asdtUnderlyingDeviceUID];
    [v14 setUnderlyingDeviceUID:asdtUnderlyingDeviceUID];

    underlyingDeviceUIDs = [managerCopy underlyingDeviceUIDs];
    [v14 setDeviceIsUnderlying:{objc_msgSend(underlyingDeviceUIDs, "containsObject:", v11)}];

    underlyingDeviceUID = [v14 underlyingDeviceUID];
    LOBYTE(asdtUnderlyingDeviceUID) = underlyingDeviceUID == 0;

    if ((asdtUnderlyingDeviceUID & 1) == 0)
    {
      v21 = ASDTBaseLogType(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [v14 deviceUID];
        underlyingDeviceUID2 = [v14 underlyingDeviceUID];
        *buf = 138412546;
        *&buf[4] = deviceUID;
        *&buf[12] = 2112;
        *&buf[14] = underlyingDeviceUID2;
        _os_log_impl(&dword_241659000, v21, OS_LOG_TYPE_DEFAULT, "%@: Requires underling device with UID: %@", buf, 0x16u);
      }
    }
  }

  return v14;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  ioServiceDependencies = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v4 = [ioServiceDependencies countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(ioServiceDependencies);
        }

        ioServiceManager = [*(*(&v9 + 1) + 8 * v6) ioServiceManager];
        [ioServiceManager removeDelegate:self];

        ++v6;
      }

      while (v4 != v6);
      v4 = [ioServiceDependencies countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8.receiver = self;
  v8.super_class = ASDTAudioDeviceFactory;
  [(ASDTAudioDeviceFactory *)&v8 dealloc];
}

- (void)cleanup
{
  v13 = *MEMORY[0x277D85DE8];
  [(ASDTAudioDeviceFactory *)self setManager:0];
  [(ASDTAudioDeviceFactory *)self setDevice:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  ioServiceDependencies = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v4 = [ioServiceDependencies countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(ioServiceDependencies);
        }

        ioServiceManager = [*(*(&v8 + 1) + 8 * v6) ioServiceManager];
        [ioServiceManager removeDelegate:self];

        ++v6;
      }

      while (v4 != v6);
      v4 = [ioServiceDependencies countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(ASDTAudioDeviceFactory *)self setIoServiceDependencies:0];
}

- (BOOL)checkIOServiceDependencies
{
  v56 = *MEMORY[0x277D85DE8];
  if (![(ASDTAudioDeviceFactory *)self ioServiceDependenciesDiscovered])
  {
    v3 = objc_opt_class();
    config = [(ASDTAudioDeviceFactory *)self config];
    v5 = [v3 ioServiceDependenciesForConfig:config];
    [(ASDTAudioDeviceFactory *)self setIoServiceDependencies:v5];

    [(ASDTAudioDeviceFactory *)self setIoServiceDependenciesDiscovered:1];
    ioServiceDependencies = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
    v7 = [ioServiceDependencies count];

    if (v7)
    {
      v8 = MEMORY[0x277CBEB58];
      ioServiceDependencies2 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
      v10 = [v8 setWithCapacity:{objc_msgSend(ioServiceDependencies2, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      ioServiceDependencies3 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
      v12 = [ioServiceDependencies3 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v12)
      {
        v13 = *v46;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v46 != v13)
            {
              objc_enumerationMutation(ioServiceDependencies3);
            }

            v15 = [*(*(&v45 + 1) + 8 * i) description];
            [v10 addObject:v15];
          }

          v12 = [ioServiceDependencies3 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v12);
      }

      v18 = ASDTBaseLogType(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        deviceUID = [(ASDTAudioDeviceFactory *)self deviceUID];
        *buf = 138412546;
        v52 = deviceUID;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_241659000, v18, OS_LOG_TYPE_DEFAULT, "%@: Dependent on IOServices: %@", buf, 0x16u);
      }
    }
  }

  ioServiceDependencies4 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v21 = [ioServiceDependencies4 count] == 0;

  if (v21)
  {
    return 1;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  ioServiceDependencies5 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v23 = [ioServiceDependencies5 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v23)
  {
    v24 = *v42;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(ioServiceDependencies5);
        }

        v26 = *(*(&v41 + 1) + 8 * j);
        ioServiceManager = [v26 ioServiceManager];
        v28 = ioServiceManager == 0;

        if (v28)
        {
          [v26 addManagerDelegate:self];
        }
      }

      v23 = [ioServiceDependencies5 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v23);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  ioServiceDependencies6 = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v30 = [ioServiceDependencies6 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v30)
  {
    v31 = *v38;
    while (2)
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(ioServiceDependencies6);
        }

        ioService = [*(*(&v37 + 1) + 8 * k) ioService];
        v34 = ioService == 0;

        if (v34)
        {
          v35 = 0;
          goto LABEL_33;
        }
      }

      v30 = [ioServiceDependencies6 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v35 = 1;
LABEL_33:

  return v35;
}

- (void)ioServiceAvailable:(id)available withManager:(id)manager
{
  v18 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  managerCopy = manager;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  ioServiceDependencies = [(ASDTAudioDeviceFactory *)self ioServiceDependencies];
  v9 = [ioServiceDependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(ioServiceDependencies);
        }

        [*(*(&v13 + 1) + 8 * v11++) ioServiceAvailable:availableCopy withManager:managerCopy];
      }

      while (v9 != v11);
      v9 = [ioServiceDependencies countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ([(ASDTAudioDeviceFactory *)self checkDependencies])
  {
    manager = [(ASDTAudioDeviceFactory *)self manager];
    [manager resourcesAvailableForDevice:self];
  }
}

- (BOOL)checkUnderlyingDeviceDependency
{
  underlyingDeviceUID = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];

  if (!underlyingDeviceUID)
  {
    return 1;
  }

  if (![(ASDTAudioDeviceFactory *)self didRegisterInterestInUnderlyingDevice])
  {
    [(ASDTAudioDeviceFactory *)self setDidRegisterInterestInUnderlyingDevice:1];
    manager = [(ASDTAudioDeviceFactory *)self manager];
    underlyingDeviceUID2 = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];
    [manager registerObject:self withInterests:1 forUID:underlyingDeviceUID2];
  }

  underlyingDevice = [(ASDTAudioDeviceFactory *)self underlyingDevice];
  v7 = underlyingDevice != 0;

  return v7;
}

- (void)interestNotification:(int)notification forDevice:(id)device
{
  deviceCopy = device;
  underlyingDeviceUID = [(ASDTAudioDeviceFactory *)self underlyingDeviceUID];
  deviceUID = [deviceCopy deviceUID];
  v7 = [underlyingDeviceUID isEqualToString:deviceUID];

  if (v7)
  {
    [(ASDTAudioDeviceFactory *)self setUnderlyingDevice:deviceCopy];
    if ([(ASDTAudioDeviceFactory *)self checkDependencies])
    {
      manager = [(ASDTAudioDeviceFactory *)self manager];
      [manager resourcesAvailableForDevice:self];
    }
  }
}

- (BOOL)buildDevice
{
  v16 = *MEMORY[0x277D85DE8];
  checkDependencies = [(ASDTAudioDeviceFactory *)self checkDependencies];
  if (checkDependencies)
  {
    config = [(ASDTAudioDeviceFactory *)self config];
    manager = [(ASDTAudioDeviceFactory *)self manager];
    manager2 = [(ASDTAudioDeviceFactory *)self manager];
    plugin = [manager2 plugin];
    v8 = [ASDTAudioDevice deviceForConfig:config withDeviceManager:manager andPlugin:plugin];
    [(ASDTAudioDeviceFactory *)self setDevice:v8];

    device = [(ASDTAudioDeviceFactory *)self device];

    if (device)
    {
      LOBYTE(checkDependencies) = 1;
    }

    else
    {
      v12 = ASDTBaseLogType(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        deviceUID = [(ASDTAudioDeviceFactory *)self deviceUID];
        [(ASDTAudioDeviceFactory *)deviceUID buildDevice];
      }

      LOBYTE(checkDependencies) = 0;
    }
  }

  return checkDependencies;
}

- (int)initializeDevice
{
  device = [(ASDTAudioDeviceFactory *)self device];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  device2 = [(ASDTAudioDeviceFactory *)self device];
  completeInitialization = [device2 completeInitialization];
  manager = [(ASDTAudioDeviceFactory *)self manager];
  serialQueue = [manager serialQueue];
  v9 = serialQueue;
  if (!completeInitialization && serialQueue)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__ASDTAudioDeviceFactory_initializeDevice__block_invoke;
    v11[3] = &unk_278CE6740;
    v12 = manager;
    v13 = device2;
    dispatch_sync(v9, v11);
  }

  return completeInitialization;
}

void *__42__ASDTAudioDeviceFactory_initializeDevice__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) userIsActive];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 userActiveChanged:1];
  }

  return result;
}

- (void)publishDevice
{
  if (![(ASDTAudioDeviceFactory *)self deviceIsUnderlying])
  {
    manager = [(ASDTAudioDeviceFactory *)self manager];
    [manager publishDevice:self];
  }
}

+ (void)addDependenciesFromConfig:(id)config toArray:(id)array
{
  configCopy = config;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asdtSubclass = [configCopy asdtSubclass];
    if ([asdtSubclass conformsToProtocol:&unk_285364B48])
    {
      v7 = [asdtSubclass ioServiceDependenciesForConfig:configCopy];
      if ([v7 count])
      {
        [arrayCopy addObjectsFromArray:v7];
      }
    }
  }
}

+ (void)addDependenciesFromConfigArray:(id)array toArray:(id)toArray
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  toArrayCopy = toArray;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [self addDependenciesFromConfig:*(*(&v12 + 1) + 8 * v11++) toArray:{toArrayCopy, v12}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)ioServiceDependenciesForConfig:(id)config
{
  configCopy = config;
  array = [MEMORY[0x277CBEB18] array];
  [self addDependenciesFromConfig:configCopy toArray:array];
  asdtControls = [configCopy asdtControls];
  [self addDependenciesFromConfigArray:asdtControls toArray:array];

  asdtCustomProperties = [configCopy asdtCustomProperties];
  [self addDependenciesFromConfigArray:asdtCustomProperties toArray:array];

  asdtPMDevices = [configCopy asdtPMDevices];
  [self addDependenciesFromConfigArray:asdtPMDevices toArray:array];

  asdtStreams = [configCopy asdtStreams];
  [self addDependenciesFromConfigArray:asdtStreams toArray:array];

  if ([array count])
  {
    v10 = [array copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)factoryWithUID:(id)d fromList:(id)list
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(listCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        deviceUID = [v10 deviceUID];
        v12 = [deviceUID isEqualToString:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)setInitTime:(ASDTTime *)time
{
  v3 = *&time->nsec;
  *&self->_initTime.hostFrac = *&time->hostFrac;
  *&self->_initTime.nsec = v3;
}

- (ASDTDeviceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (ASDAudioDevice)underlyingDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingDevice);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0x10000;
  return self;
}

+ (void)forDeviceConfig:(uint8_t *)buf withManager:(os_log_t)log .cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Invalid subclass name: %@ (or %@Factory)", buf, 0x16u);
}

- (void)buildDevice
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "Failed to create device '%@'.", buf, 0xCu);
}

@end