@interface HMDWatchManager
+ (BOOL)isCompatibleWatchDevice:(id)device;
+ (id)logCategory;
+ (id)sharedManager;
- (BOOL)isPairedWithWatch;
- (HMDWatchManager)init;
- (NSArray)connectedWatches;
- (NSArray)watches;
- (id)attributeDescriptions;
- (id)connectedWatchFromDeviceID:(id)d;
- (void)__initializeConnectedDevices;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation HMDWatchManager

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDWatchManager *)self service];

  if (service == serviceCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = changedCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Connected devices changed: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    __HMDWatchManagerUpdateWithConnectedDevices(selfCopy, changedCopy);
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v29 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  service = [(HMDWatchManager *)self service];

  if (service == serviceCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = changedCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Devices changed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(changedCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = changedCopy;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * i);
          if ([v19 isConnected])
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    __HMDWatchManagerUpdateWithConnectedDevices(selfCopy, v13);
  }
}

- (id)connectedWatchFromDeviceID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_connectedWatches;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        remoteDestinationString = [v9 remoteDestinationString];
        v11 = [remoteDestinationString isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)connectedWatches
{
  os_unfair_lock_lock_with_options();
  v3 = self->_connectedWatches;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isPairedWithWatch
{
  os_unfair_lock_lock_with_options();
  pairedWithWatch = self->_pairedWithWatch;
  os_unfair_lock_unlock(&self->_lock);
  return pairedWithWatch;
}

- (NSArray)watches
{
  v23 = *MEMORY[0x277D85DE8];
  service = [(HMDWatchManager *)self service];
  devices = [service devices];
  v5 = objc_msgSend_copy(devices);

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([HMDWatchManager isCompatibleWatchDevice:v11])
        {
          v12 = [HMDDevice alloc];
          service2 = [(HMDWatchManager *)self service];
          v14 = [(HMDDevice *)v12 initWithService:service2 device:v11];

          if (v14)
          {
            [v17 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = objc_msgSend_copy(v17);

  return v15;
}

- (void)__initializeConnectedDevices
{
  v17 = *MEMORY[0x277D85DE8];
  service = [(HMDWatchManager *)self service];
  devices = [service devices];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(devices, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = devices;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (+[HMDWatchManager isCompatibleWatchDevice:](HMDWatchManager, "isCompatibleWatchDevice:", v11, v12) && [v11 isConnected])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  __HMDWatchManagerUpdateWithConnectedDevices(self, v5);
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  connectedWatches = [(HMDWatchManager *)self connectedWatches];
  v5 = [v3 initWithName:@"Connected Watches" value:connectedWatches];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (HMDWatchManager)init
{
  v14.receiver = self;
  v14.super_class = HMDWatchManager;
  v2 = [(HMDWatchManager *)&v14 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    array = [MEMORY[0x277CBEA60] array];
    connectedWatches = v2->_connectedWatches;
    v2->_connectedWatches = array;

    v10 = +[HMDIDSServiceManager sharedManager];
    v11 = [v10 serviceWithName:@"com.apple.private.alloy.willow.proxy"];
    service = v2->_service;
    v2->_service = v11;

    [(HMDIDSService *)v2->_service addDelegate:v2 queue:v2->_queue];
    [(HMDWatchManager *)v2 __initializeConnectedDevices];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_228347 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_228347, &__block_literal_global_228348);
  }

  v3 = logCategory__hmf_once_v8_228349;

  return v3;
}

void __30__HMDWatchManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_228349;
  logCategory__hmf_once_v8_228349 = v0;
}

+ (BOOL)isCompatibleWatchDevice:(id)device
{
  deviceCopy = device;
  productName = [deviceCopy productName];
  productVersion = [deviceCopy productVersion];

  LODWORD(deviceCopy) = NRWatchOSVersion();
  return (deviceCopy & 0xFFFE0000) != 0;
}

+ (id)sharedManager
{
  if (+[HMDDeviceCapabilities isCompanionCapable])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDWatchManager_sharedManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedManager_onceToken_228358 != -1)
    {
      dispatch_once(&sharedManager_onceToken_228358, block);
    }

    v3 = sharedManager_watchManager;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __32__HMDWatchManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_watchManager;
  sharedManager_watchManager = v1;
}

@end