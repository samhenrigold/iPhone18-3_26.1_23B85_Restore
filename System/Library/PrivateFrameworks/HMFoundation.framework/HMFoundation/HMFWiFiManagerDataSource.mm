@interface HMFWiFiManagerDataSource
+ (NSString)MACAddressString;
- (BOOL)isCaptive;
- (BOOL)isWoWAsserted;
- (HMFWiFiManagerDataSource)initWithWorkQueue:(id)queue;
- (HMFWiFiManagerDataSourceDelegate)delegate;
- (HMFWifiNetworkAssociation)currentNetworkAssociation;
- (NSNumber)currentNetworkRSSI;
- (void)_invalidateCaptiveState;
- (void)_registerForCaptiveStateChanges;
- (void)_setCurrentNetwork:(__WiFiNetwork *)network;
- (void)activateWithOptions:(unint64_t)options;
- (void)deactivate;
- (void)dealloc;
- (void)handleWiFiLinkChangedWithEventDictionary:(id)dictionary;
- (void)performBlockAfterWoWReassertionDelay:(id)delay;
- (void)setWoWAsserted:(BOOL)asserted;
- (void)startWithWiFiDevice:(__WiFiDeviceClient *)device;
@end

@implementation HMFWiFiManagerDataSource

- (BOOL)isCaptive
{
  v23 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  [(NSLock *)self->_captiveCachedLock lock];
  captiveCached = self->_captiveCached;
  if (!captiveCached)
  {
    v5 = WiFiCopyCurrentNetworkInfo();
    if (v5)
    {
      if (CFDictionaryGetInt64())
      {
        v6 = 6;
      }

      else
      {
        v6 = 5;
      }

      self->_captiveCached = v6;
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle(0, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier(0);
        v17 = 138543362;
        v18 = v10;
        _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[HMFWiFiManagerDataSource] isCaptive: WiFi info not found", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }

    captiveCached = self->_captiveCached;
  }

  [(NSLock *)self->_captiveCachedLock unlock];
  v11 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle(0, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier(0);
    v15 = CFAbsoluteTimeGetCurrent();
    v17 = 138543874;
    v18 = v14;
    v19 = 2048;
    v20 = v15 - Current;
    v21 = 1024;
    v22 = captiveCached == 6;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@[HMFWiFiManagerDataSource] isCaptive took %.02f seconds (captive: %d)", &v17, 0x1Cu);
  }

  objc_autoreleasePoolPop(v11);
  return captiveCached == 6;
}

- (HMFWiFiManagerDataSource)initWithWorkQueue:(id)queue
{
  v25 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HMFWiFiManagerDataSource;
  v6 = [(HMFWiFiManagerDataSource *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    captiveCachedLock = v7->_captiveCachedLock;
    v7->_captiveCachedLock = v8;

    v10 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initializing WiFi Services", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = WiFiManagerClientCreate();
    v7->_wifiClientReference = v14;
    if (v14)
    {
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      WiFiManagerClientRegisterDeviceAttachmentCallback();
      WiFiManagerClientRegisterWowStateChangedCallback();
      v15 = WiFiManagerClientCopyDevices();
      if (v15)
      {
        v16 = v15;
        if (CFArrayGetCount(v15))
        {
          [(HMFWiFiManagerDataSource *)v7 startWithWiFiDevice:CFArrayGetValueAtIndex(v16, 0)];
        }

        CFRelease(v16);
      }

      [(HMFWiFiManagerDataSource *)v7 _registerForCaptiveStateChanges];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle(0, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier(0);
        *buf = 138543362;
        v24 = v20;
        _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_ERROR, "%{public}@[HMFWiFiManagerDataSource] Failed to create WiFiManagerClient", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMFWiFiManagerDataSource *)self wifiClientReference])
  {
    v3 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle(0, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing wifi client reference", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMFWiFiManagerDataSource *)self wifiClientReference];
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    [(HMFWiFiManagerDataSource *)self wifiClientReference];
    WiFiManagerClientRegisterWowStateChangedCallback();
    CFRelease([(HMFWiFiManagerDataSource *)self wifiClientReference]);
  }

  if ([(HMFWiFiManagerDataSource *)self wifiDeviceReference])
  {
    v7 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle(0, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing wifi device reference", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMFWiFiManagerDataSource *)self wifiDeviceReference];
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRelease([(HMFWiFiManagerDataSource *)self wifiDeviceReference]);
  }

  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    CFRelease([(HMFWiFiManagerDataSource *)self currentNetwork]);
  }

  if ([(HMFWiFiManagerDataSource *)self scStore])
  {
    [(HMFWiFiManagerDataSource *)self scStore];
    SCDynamicStoreRemoveWatchedKey();
    CFRelease([(HMFWiFiManagerDataSource *)self scStore]);
  }

  v11.receiver = self;
  v11.super_class = HMFWiFiManagerDataSource;
  [(HMFWiFiManagerDataSource *)&v11 dealloc];
}

+ (NSString)MACAddressString
{
  v2 = +[HMFSystemInfo systemInfo];
  wiFiInterfaceMACAddress = [v2 WiFiInterfaceMACAddress];
  formattedString = [wiFiInterfaceMACAddress formattedString];

  return formattedString;
}

- (void)activateWithOptions:(unint64_t)options
{
  if (options)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  wifiClientReference = [(HMFWiFiManagerDataSource *)self wifiClientReference];

  MEMORY[0x2821878C8](wifiClientReference, v3);
}

- (void)deactivate
{
  wifiClientReference = [(HMFWiFiManagerDataSource *)self wifiClientReference];

  MEMORY[0x2821878C8](wifiClientReference, 0);
}

- (BOOL)isWoWAsserted
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMFWiFiManagerDataSource *)self wifiClientReference];
  return WiFiManagerClientGetWoWState() != 0;
}

- (void)setWoWAsserted:(BOOL)asserted
{
  assertedCopy = asserted;
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle(0, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier(0);
    v10 = 138543618;
    v11 = v9;
    v12 = 1024;
    v13 = assertedCopy;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Calling WiFiManagerClientSetWoWState() with %d", &v10, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMFWiFiManagerDataSource *)self wifiClientReference];
  WiFiManagerClientSetWoWState();
}

- (HMFWifiNetworkAssociation)currentNetworkAssociation
{
  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    v3 = WiFiCopyCurrentNetworkInfoEx();
    v4 = [v3 hmf_dictionaryForKey:@"rawRecord"];
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v5 = WiFiNetworkGetSSID();
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v15 = WiFiNetworkRequiresPassword();
    v6 = +[HMFSystemInfo systemInfo];
    wiFiInterfaceMACAddress = [v6 WiFiInterfaceMACAddress];

    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v8 = WiFiNetworkCopyBSSIDData();
    if (v8)
    {
      v9 = [[HMFMACAddress alloc] initWithAddressData:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v4 hmf_stringForKey:*MEMORY[0x277D29888]];
    v16 = v3;
    v12 = [v4 hmf_stringForKey:*MEMORY[0x277D29890]];
    if (v12)
    {
      v13 = [[HMFMACAddress alloc] initWithMACAddressString:v12];
    }

    else
    {
      v13 = 0;
    }

    v10 = 0;
    if (v5 && wiFiInterfaceMACAddress && v9 && v11 && v13)
    {
      v10 = [[HMFWifiNetworkAssociation alloc] initWithMACAddress:wiFiInterfaceMACAddress SSID:v5 requiresPassword:v15 != 0 BSSID:v9 gatewayIPAddress:v11 gatewayMACAddress:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (NSNumber)currentNetworkRSSI
{
  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork])
  {
    v3 = MEMORY[0x277CCABB0];
    [(HMFWiFiManagerDataSource *)self currentNetwork];
    v4 = [v3 numberWithInt:WiFiNetworkGetRSSI()];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_invalidateCaptiveState
{
  [(NSLock *)self->_captiveCachedLock lock];
  [(HMFWiFiManagerDataSource *)self setCaptiveCached:0];
  captiveCachedLock = self->_captiveCachedLock;

  [(NSLock *)captiveCachedLock unlock];
}

- (void)performBlockAfterWoWReassertionDelay:(id)delay
{
  delayCopy = delay;
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = dispatch_time(0, 5000000000);
  workQueue2 = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_after(v6, workQueue2, delayCopy);
}

- (void)startWithWiFiDevice:(__WiFiDeviceClient *)device
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMFWiFiManagerDataSource_startWithWiFiDevice___block_invoke;
  v6[3] = &unk_2786E7EF0;
  v6[4] = self;
  v6[5] = device;
  dispatch_async(workQueue, v6);
}

void __48__HMFWiFiManagerDataSource_startWithWiFiDevice___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle(0, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(0);
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initializing WiFi Device", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) wifiDeviceReference])
  {
    v6 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle(0, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(0);
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Clearing previous reference", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) wifiDeviceReference];
    WiFiDeviceClientRegisterExtendedLinkCallback();
    CFRelease([*(a1 + 32) wifiDeviceReference]);
  }

  [*(a1 + 32) setWifiDeviceReference:CFRetain(*(a1 + 40))];
  [*(a1 + 32) wifiDeviceReference];
  WiFiDeviceClientRegisterExtendedLinkCallback();
  [*(a1 + 32) wifiDeviceReference];
  v10 = WiFiDeviceClientCopyCurrentNetwork();
  v11 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle(0, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier(0);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] Initialized WiFi Device with current network: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [*(a1 + 32) _setCurrentNetwork:v10];
  if (v10)
  {
    CFRelease(v10);
  }
}

- (void)handleWiFiLinkChangedWithEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMFWiFiManagerDataSource_handleWiFiLinkChangedWithEventDictionary___block_invoke;
  v7[3] = &unk_2786E6D18;
  v8 = dictionaryCopy;
  selfCopy = self;
  v6 = dictionaryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMFWiFiManagerDataSource_handleWiFiLinkChangedWithEventDictionary___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_numberForKey:@"LINK_CHANGED_IS_LINKDOWN"];
  v3 = [v2 BOOLValue];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"LINK_CHANGED_NETWORK"];

  v5 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle(0, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier(0);
    v9 = v8;
    v10 = @"Up";
    if (v3)
    {
      v10 = @"Down";
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMFWiFiManagerDataSource] WiFi link is %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [*(a1 + 40) delegate];
  [v11 dataSource:*(a1 + 40) didChangeLinkAvailability:v3 ^ 1u];

  [*(a1 + 40) _setCurrentNetwork:v4];
}

- (void)_setCurrentNetwork:(__WiFiNetwork *)network
{
  workQueue = [(HMFWiFiManagerDataSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock_with_options();
  if ([(HMFWiFiManagerDataSource *)self currentNetwork]== network)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if ([(HMFWiFiManagerDataSource *)self currentNetwork])
    {
      CFRelease([(HMFWiFiManagerDataSource *)self currentNetwork]);
    }

    [(HMFWiFiManagerDataSource *)self setCurrentNetwork:network];
    if ([(HMFWiFiManagerDataSource *)self currentNetwork])
    {
      CFRetain([(HMFWiFiManagerDataSource *)self currentNetwork]);
    }

    [(HMFWiFiManagerDataSource *)self _invalidateCaptiveState];
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(HMFWiFiManagerDataSource *)self delegate];
    [delegate currentNetworkDidChangeForDataSource:self];
  }
}

- (void)_registerForCaptiveStateChanges
{
  v5.version = 0;
  memset(&v5.retain, 0, 24);
  v5.info = self;
  v3 = SCDynamicStoreCreate(0, @"HMFWiFiManager", dynamicStoreCallback, &v5);
  if (v3)
  {
    v4 = v3;
    if (SCDynamicStoreAddWatchedKey())
    {
      if (SCDynamicStoreSetDispatchQueue(v4, self->_workQueue))
      {
        self->_scStore = v4;
      }
    }
  }
}

- (HMFWiFiManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end