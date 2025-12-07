@interface ASDTPlugin
+ (id)forBundleID:(id)d;
- (BOOL)allowSystemSleep;
- (BOOL)callRequestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)configurationChangePendingForObject:(id)object;
- (BOOL)configurationChangeRunningForObject:(id)object;
- (BOOL)requestConfigurationChange:(id)change;
- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block;
- (BOOL)systemIsSleeping;
- (NSArray)audioDevices;
- (id)initForBundleID:(id)d;
- (void)addAudioDevice:(id)device;
- (void)addAudioDevices:(id)devices;
- (void)dealloc;
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDevices:(id)devices;
- (void)systemHasPoweredOn;
- (void)systemWillSleep;
- (void)waitForChangeRequests;
- (void)waitForConfigurationChangesForDevice:(id)device;
@end

@implementation ASDTPlugin

- (void)systemHasPoweredOn
{
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager systemHasPoweredOn];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemHasPoweredOn];
}

- (NSArray)audioDevices
{
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  audioDevices = [publishedDevices audioDevices];

  return audioDevices;
}

+ (id)forBundleID:(id)d
{
  dCopy = d;
  v5 = [[self alloc] initForBundleID:dCopy];

  return v5;
}

- (id)initForBundleID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v27.receiver = self;
  v27.super_class = ASDTPlugin;
  v5 = [(ASDTPlugin *)&v27 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  atomic_store(0, &v5->_configChangeNumber.__a_.__a_value);
  bundleID = dCopy;
  if (!dCopy)
  {
    v26.receiver = v5;
    v26.super_class = ASDTPlugin;
    bundleID = [(ASDTPlugin *)&v26 bundleID];
  }

  [(ASDTPlugin *)v6 setAsdtBundleID:bundleID];
  if (!dCopy)
  {
  }

  bundleID2 = [(ASDTPlugin *)v6 bundleID];
  powerNotificationQueue = [(ASDTPlugin *)v6 powerNotificationQueue];
  v10 = [ASDTSystemPowerNotifier notifierForBundleName:bundleID2 delegate:v6 queue:powerNotificationQueue earlyWake:0];
  [(ASDTPlugin *)v6 setSystemPowerNotifier:v10];

  v11 = objc_alloc_init(ASDTDeviceList);
  [(ASDTPlugin *)v6 setPublishedDevices:v11];

  v12 = [ASDTChangeRequestManager forDelegate:v6];
  [(ASDTPlugin *)v6 setChangeRequestManager:v12];

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);

  v15 = dispatch_queue_create("com.apple.AudioServerDriverTransports.ASDTPlugin.concurrentQueue", v14);
  [(ASDTPlugin *)v6 setConcurrentQueue:v15];

  systemPowerNotifier = [(ASDTPlugin *)v6 systemPowerNotifier];
  v18 = systemPowerNotifier;
  if (systemPowerNotifier)
  {
    publishedDevices = [(ASDTPlugin *)v6 publishedDevices];
    if (publishedDevices)
    {
      changeRequestManager = [(ASDTPlugin *)v6 changeRequestManager];
      v21 = changeRequestManager == 0;

      if (!v21)
      {

LABEL_10:
        v22 = v6;
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v23 = ASDTBaseLogType(systemPowerNotifier, v17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    bundleID3 = [(ASDTPlugin *)v6 bundleID];
    [(ASDTPlugin *)bundleID3 initForBundleID:v28, v23];
  }

  v22 = 0;
LABEL_15:

  return v22;
}

- (void)dealloc
{
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager stopThread];

  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 dealloc];
}

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = ASDTBaseLogType(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(ASDTPlugin *)self bundleID];
    *buf = 138412546;
    v23 = bundleID;
    v24 = 2080;
    v25 = "310.2";
    _os_log_impl(&dword_241659000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization Start", buf, 0x16u);
  }

  v21.receiver = self;
  v21.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v21 halInitializeWithPluginHost:host];
  config = [(ASDTPlugin *)self config];
  if (config)
  {
    v9 = [ASDTDeviceManager deviceManagerWithConfig:config withDelegate:self];
    [(ASDTPlugin *)self setDeviceManager:v9];

    deviceManager = [(ASDTPlugin *)self deviceManager];
    LODWORD(v9) = deviceManager == 0;

    if (!v9)
    {
      v13 = "Success";
      goto LABEL_11;
    }

    v14 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      bundleID2 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)bundleID2 halInitializeWithPluginHost:v28, v14];
    }
  }

  else
  {
    v14 = ASDTBaseLogType(0, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      bundleID3 = [(ASDTPlugin *)self bundleID];
      [(ASDTPlugin *)bundleID3 halInitializeWithPluginHost:v28, v14];
    }
  }

  v13 = "Failure";
LABEL_11:
  v17 = [(ASDTPlugin *)self setInitializationComplete:1];
  v19 = ASDTBaseLogType(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    bundleID4 = [(ASDTPlugin *)self bundleID];
    *buf = 138412802;
    v23 = bundleID4;
    v24 = 2080;
    v25 = "310.2";
    v26 = 2080;
    v27 = v13;
    _os_log_impl(&dword_241659000, v19, OS_LOG_TYPE_DEFAULT, "%@ %s Initialization End; Result: %s", buf, 0x20u);
  }
}

- (void)addAudioDevice:(id)device
{
  deviceCopy = device;
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices addAudioDevice:deviceCopy];

  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForConfigurationChangesForDevice:deviceCopy];

  v7.receiver = self;
  v7.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v7 addAudioDevice:deviceCopy];
}

- (void)addAudioDevices:(id)devices
{
  v18 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices addAudioDevices:devicesCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = devicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
        [changeRequestManager waitForConfigurationChangesForDevice:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12.receiver = self;
  v12.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v12 addAudioDevices:v6];
}

- (void)removeAudioDevice:(id)device
{
  deviceCopy = device;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevice:deviceCopy];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices removeAudioDevice:deviceCopy];
}

- (void)removeAudioDevices:(id)devices
{
  devicesCopy = devices;
  v6.receiver = self;
  v6.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v6 removeAudioDevices:devicesCopy];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  [publishedDevices removeAudioDevices:devicesCopy];
}

- (BOOL)callRequestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = ASDTPlugin;
  return [(ASDTPlugin *)&v5 requestConfigurationChangeForDevice:device withBlock:block];
}

- (BOOL)requestConfigurationChange:(id)change
{
  v28 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  initializationComplete = [(ASDTPlugin *)self initializationComplete];
  publishedDevices = [(ASDTPlugin *)self publishedDevices];
  audioDevices = [publishedDevices audioDevices];

  if (initializationComplete && ([changeCopy object], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(audioDevices, "containsObject:", v10), v10, (v11 & 1) != 0))
  {
    object = [changeCopy object];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke_2;
    v20[3] = &unk_278CE64F0;
    v21 = changeCopy;
    v13 = [(ASDTPlugin *)self callRequestConfigurationChangeForDevice:object withBlock:v20];
    v14 = &v21;
  }

  else
  {
    v15 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [changeCopy name];
      v17 = name;
      v18 = "before initialization is complete";
      if (initializationComplete)
      {
        v18 = "for unpublished device";
      }

      *buf = 136315394;
      v25 = v18;
      v26 = 2112;
      v27 = name;
      _os_log_impl(&dword_241659000, v15, OS_LOG_TYPE_DEFAULT, "Executing configuration change %s: %@", buf, 0x16u);
    }

    object = [(ASDTPlugin *)self concurrentQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__ASDTPlugin_requestConfigurationChange___block_invoke;
    block[3] = &unk_278CE64F0;
    v14 = &v23;
    v23 = changeCopy;
    dispatch_async(object, block);
    v13 = 1;
  }

  return v13;
}

- (BOOL)requestConfigurationChangeForDevice:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v9 = [changeRequestManager requestConfigurationChangeForDevice:deviceCopy withBlock:blockCopy];

  return v9;
}

- (BOOL)configurationChangePendingForObject:(id)object
{
  objectCopy = object;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v6 = [changeRequestManager configurationChangePendingForObject:objectCopy];

  return v6;
}

- (BOOL)configurationChangeRunningForObject:(id)object
{
  objectCopy = object;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  v6 = [changeRequestManager configurationChangeRunningForObject:objectCopy];

  return v6;
}

- (void)waitForConfigurationChangesForDevice:(id)device
{
  deviceCopy = device;
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForConfigurationChangesForDevice:deviceCopy];
}

- (void)waitForChangeRequests
{
  changeRequestManager = [(ASDTPlugin *)self changeRequestManager];
  [changeRequestManager waitForAllConfigurationChanges];
}

- (BOOL)systemIsSleeping
{
  systemPowerNotifier = [(ASDTPlugin *)self systemPowerNotifier];
  systemIsSleeping = [systemPowerNotifier systemIsSleeping];

  return systemIsSleeping;
}

- (BOOL)allowSystemSleep
{
  deviceManager = [(ASDTPlugin *)self deviceManager];

  if (!deviceManager)
  {
    return 1;
  }

  deviceManager2 = [(ASDTPlugin *)self deviceManager];
  allowSystemSleep = [deviceManager2 allowSystemSleep];

  return allowSystemSleep;
}

- (void)systemWillSleep
{
  v4.receiver = self;
  v4.super_class = ASDTPlugin;
  [(ASDTPlugin *)&v4 systemWillSleep];
  deviceManager = [(ASDTPlugin *)self deviceManager];
  [deviceManager systemWillSleep];
}

- (void)initForBundleID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: Memory allocation error.", a2);
}

- (void)halInitializeWithPluginHost:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: Failed creating device manager.", a2);
}

- (void)halInitializeWithPluginHost:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_9(&dword_241659000, a2, a3, "%@: No configuration found.", a2);
}

@end