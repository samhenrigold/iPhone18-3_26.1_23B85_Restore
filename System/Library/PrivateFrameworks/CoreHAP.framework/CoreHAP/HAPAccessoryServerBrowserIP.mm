@interface HAPAccessoryServerBrowserIP
+ (id)logCategory;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (HAPAccessoryServerBrowserDelegate)delegate;
- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue;
- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue cache:(id)cache;
- (id)serverWithIdentifier:(id)identifier ignoreLPM:(BOOL)m;
- (id)visible2Pt4Networks;
- (int)_initializeAndStartBonjourBrowser;
- (int)_purgePendingBonjourEvents:(id)events withProcessing:(BOOL)processing;
- (int)_server:(id *)_server forBonjourDevice:(id)device;
- (void)_doBonjourRemoveWithServer:(id)server;
- (void)_doReachabilityUpdateForServer:(id)server withDictionary:(id)dictionary;
- (void)_doStartDiscoveringAccessoryServers;
- (void)_handleBonjourAddOrUpdateWithEventInfo:(id)info;
- (void)_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info;
- (void)_handleBonjourRemoveWithEventInfo:(id)info;
- (void)_handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)_invalidateAccessoryServers:(BOOL)servers;
- (void)_invalidateAndRemoveAccessoryServer:(id)server;
- (void)_invalidateWACServers;
- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_pendBonjourEvent:(id)event;
- (void)_pendBonjourRemoveEvent:(id)event;
- (void)_prePopulateBrowserFromCacheWithCompletion:(id)completion;
- (void)_server:(id *)_server forHAPWACAccessory:(id)accessory;
- (void)_setReachability:(BOOL)reachability forServer:(id)server;
- (void)_timerDidExpire:(id)expire;
- (void)devicePowerStateChanged:(unint64_t)changed;
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo;
- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)notifyDelegatesOfWACCompletionWithIdentifier:(id)identifier error:(id)error;
- (void)pendDelegateBlock:(id)block identifier:(id)identifier;
- (void)pendDelegateOperation:(id)operation identifier:(id)identifier;
- (void)processPendingBonjourRemoveEvents:(id)events;
- (void)processPendingBonjourRemoveEventsForDeviceID:(id)d;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startDiscoveringAccessoryServers;
- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)delegate;
- (void)startDiscoveringWACAccessoryServerWithIdentifier:(id)identifier;
- (void)startDiscoveringWACAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)stopDiscoveringWACAccessoryServersWithInvalidation:(BOOL)invalidation;
- (void)timerDidFire:(id)fire;
- (void)unitTest_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info;
- (void)updateCacheForDeviceID:(id)d ipData:(id)data;
- (void)wacBrowser:(id)browser didFindHAPWACAccessory:(id)accessory;
- (void)wacBrowser:(id)browser didFindUnconfiguredPairedHAPWACAccessory:(id)accessory;
- (void)wacBrowser:(id)browser didRemoveHAPWACAccessory:(id)accessory;
@end

@implementation HAPAccessoryServerBrowserIP

- (HAPAccessoryServerBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)unitTest_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HAPAccessoryServerBrowserIP_unitTest_handleBonjourBrowserEvent_eventInfo___block_invoke;
  block[3] = &unk_2786D4E70;
  eventCopy = event;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_sync(workQueue, block);
}

- (id)serverWithIdentifier:(id)identifier ignoreLPM:(BOOL)m
{
  mCopy = m;
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(discoveredAccessoryServers);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      identifier = [v12 identifier];
      v14 = [identifier isEqual:identifierCopy];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if ((!mCopy || ![v12 wakeNumber]) && (objc_msgSend(v12, "isWacAccessory") & 1) == 0)
    {
      v15 = v12;
      goto LABEL_15;
    }
  }

LABEL_13:
  v15 = 0;
LABEL_15:

  return v15;
}

- (void)wacBrowser:(id)browser didFindUnconfiguredPairedHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@WAC Browser found Unconfigured Accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isHomeKitAccessory])
  {
    v41 = 0;
    [*(a1 + 32) _server:&v41 forHAPWACAccessory:*(a1 + 40)];
    v7 = v41;
    if (!v7)
    {
      v8 = [HAPAccessoryServerIP alloc];
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) keyStore];
      v7 = [(HAPAccessoryServerIP *)v8 initWithHAPWACAccessory:v9 keystore:v10 browser:*(a1 + 32)];
    }

    v11 = *(a1 + 32);
    v12 = [(HAPAccessoryServer *)v7 identifier];
    v13 = [v11 isPaired:v12];

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v18;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Found unconfigured server paired with us - needs to reprovision", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [*(a1 + 32) discoveredAccessoryServers];
      v20 = [v19 containsObject:v7];

      if ((v20 & 1) == 0)
      {
        v21 = [*(a1 + 32) discoveredAccessoryServers];
        [v21 addObject:v7];
      }

      v22 = [*(a1 + 32) delegate];
      if (objc_opt_respondsToSelector())
      {
        v23 = *(a1 + 32);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke_78;
        v37[3] = &unk_2786D7078;
        v24 = v22;
        v25 = *(a1 + 32);
        v38 = v24;
        v39 = v25;
        v40 = v7;
        v26 = [(HAPAccessoryServer *)v40 identifier];
        [v23 pendDelegateBlock:v37 identifier:v26];
      }

      if (objc_opt_respondsToSelector())
      {
        v27 = *(a1 + 32);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __83__HAPAccessoryServerBrowserIP_wacBrowser_didFindUnconfiguredPairedHAPWACAccessory___block_invoke_2;
        v33[3] = &unk_2786D7078;
        v28 = v22;
        v29 = *(a1 + 32);
        v34 = v28;
        v35 = v29;
        v36 = v7;
        v30 = [(HAPAccessoryServer *)v36 identifier];
        [v27 pendDelegateBlock:v33 identifier:v30];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(a1 + 40);
        *buf = 138543618;
        v43 = v31;
        v44 = 2112;
        v45 = v32;
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring accessory not paired with us: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

- (void)wacBrowser:(id)browser didRemoveHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Removing WAC Accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) deviceId];
  v9 = [v7 serverWithIdentifier:v8 ignoreLPM:1];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v14;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@WAC accessory was removed invalidating server: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [*(a1 + 32) delegate];
    v16 = [[HAPAccessoryServerBrowserInvalidateServerOperation alloc] initWithServer:v9];
    v17 = *(a1 + 32);
    v18 = [v9 identifier];
    [v17 pendDelegateOperation:v16 identifier:v18];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(buf, *(a1 + 32));
      v19 = MEMORY[0x277CCA8C8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke_75;
      v27[3] = &unk_2786D6F50;
      objc_copyWeak(&v30, buf);
      v28 = v15;
      v20 = v9;
      v29 = v20;
      v21 = [v19 blockOperationWithBlock:v27];
      v22 = *(a1 + 32);
      v23 = [v20 identifier];
      [v22 pendDelegateOperation:v21 identifier:v23];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    v24 = [*(a1 + 32) discoveredAccessoryServers];
    [v24 removeObject:v9];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      v26 = *(a1 + 40);
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Unknown wac device was removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __67__HAPAccessoryServerBrowserIP_wacBrowser_didRemoveHAPWACAccessory___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) accessoryServerBrowser:WeakRetained didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (void)wacBrowser:(id)browser didFindHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = accessoryCopy;
  v7 = accessoryCopy;
  dispatch_async(workQueue, v8);
}

void __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@WAC Browser found wac accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if (![*(a1 + 40) isHomeKitAccessory])
  {
    v7 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138543618;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring unknown accessory: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if ([*(a1 + 40) requiresOwnershipToken])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring WAC accessory requiring ownership token", buf, 0xCu);
    }

LABEL_11:
    objc_autoreleasePoolPop(v7);
    return;
  }

  v30 = 0;
  [*(a1 + 32) _server:&v30 forHAPWACAccessory:*(a1 + 40)];
  v15 = v30;
  if (v15)
  {
    v16 = v15;
    [(HAPAccessoryServerIP *)v15 updateWithHAPWACAccessory:*(a1 + 40)];
  }

  else
  {
    v17 = [HAPAccessoryServerIP alloc];
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) keyStore];
    v16 = [(HAPAccessoryServerIP *)v17 initWithHAPWACAccessory:v18 keystore:v19 browser:*(a1 + 32)];

    v20 = [*(a1 + 32) discoveredAccessoryServers];
    [v20 addObject:v16];
  }

  v21 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = *(a1 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__HAPAccessoryServerBrowserIP_wacBrowser_didFindHAPWACAccessory___block_invoke_74;
    v26[3] = &unk_2786D7078;
    v23 = v21;
    v24 = *(a1 + 32);
    v27 = v23;
    v28 = v24;
    v29 = v16;
    v25 = [(HAPAccessoryServer *)v29 identifier:v26[0]];
    [v22 pendDelegateBlock:v26 identifier:v25];
  }
}

- (void)_invalidateWACServers
{
  selfCopy = self;
  v52 = *MEMORY[0x277D85DE8];
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v4 = [discoveredAccessoryServers copy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    *&v7 = 138543618;
    v33 = v7;
    v34 = v5;
    v35 = selfCopy;
    v36 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if ([v11 isWacAccessory])
        {
          identifier = [v11 identifier];
          v13 = [(HAPAccessoryServerBrowser *)selfCopy isPaired:identifier];

          if (v13)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = selfCopy;
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = HMFGetLogIdentifier();
              name = [v11 name];
              identifier2 = [v11 identifier];
              *buf = 138543874;
              v42 = v17;
              v43 = 2112;
              v44 = name;
              v45 = 2114;
              v46 = identifier2;
              _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Accessory Server %@/%{public}@ is already paired - not removing the accessory server", buf, 0x20u);

              v9 = v36;
            }

            objc_autoreleasePoolPop(v14);
          }

          else if (([v11 hasBonjourDeviceInfo] & 1) != 0 || objc_msgSend(v11, "isWacLegacy") && objc_msgSend(v11, "isWacComplete"))
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = HMFGetLogIdentifier();
              name2 = [v11 name];
              identifier3 = [v11 identifier];
              [v11 isWacLegacy];
              v26 = HMFBooleanToString();
              [v11 isWacComplete];
              v27 = HMFBooleanToString();
              *buf = 138544386;
              v42 = v23;
              v43 = 2112;
              v44 = name2;
              v45 = 2114;
              v46 = identifier3;
              v47 = 2112;
              v48 = v26;
              v49 = 2112;
              v50 = v27;
              _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Accessory Server %@/%{public}@ already has a Bonjour device info/completed WAC %@/%@ - not removing the accessory server", buf, 0x34u);

              selfCopy = v35;
              v5 = v34;
            }

            objc_autoreleasePoolPop(v20);
            v9 = v36;
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              identifier4 = [v11 identifier];
              *buf = v33;
              v42 = v31;
              v43 = 2114;
              v44 = identifier4;
              _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired accessory %{public}@", buf, 0x16u);

              selfCopy = v35;
              v5 = v34;
            }

            objc_autoreleasePoolPop(v28);
            [(HAPAccessoryServerBrowserIP *)v29 _invalidateAndRemoveAccessoryServer:v11];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v8);
  }
}

- (void)_timerDidExpire:(id)expire
{
  v46 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v5 = [pendingBonjourEvents copy];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v5;
  v35 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v35)
  {
    v7 = *v38;
    v8 = 0x277CBE000uLL;
    v33 = v6;
    selfCopy = self;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"kHAPBonjourEventReceivedTimeKey"];
        v12 = [v10 objectForKeyedSubscript:@"kHAPBonjourEventKey"];
        date = [*(v8 + 2728) date];
        [date timeIntervalSinceDate:v11];
        v15 = v14;

        if (v15 > 40.0)
        {
          v36 = 0;
          [(HAPAccessoryServerBrowserIP *)self _server:&v36 forBonjourDevice:v12];
          v16 = v36;
          v17 = v16;
          if (v16 && [v16 isSessionRestoreActive])
          {
            v18 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v12 objectForKeyedSubscript:@"deviceID"];
              *buf = 138543618;
              v42 = v21;
              v43 = 2114;
              v44 = v22;
              _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Timed out,  Not handling pending Bonjour for %{public}@, as session restore is active", buf, 0x16u);

              v6 = v33;
              self = selfCopy;
            }

            objc_autoreleasePoolPop(v18);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              v27 = [v12 objectForKeyedSubscript:@"deviceID"];
              *buf = 138543618;
              v42 = v26;
              v43 = 2114;
              v44 = v27;
              _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Timed out, handling pending Bonjour event for %{public}@", buf, 0x16u);

              v6 = v33;
              self = selfCopy;
            }

            objc_autoreleasePoolPop(v23);
            v28 = [v12 objectForKeyedSubscript:@"deviceID"];
            [(HAPAccessoryServerBrowserIP *)selfCopy3 _purgePendingBonjourEvents:v28 withProcessing:1];
          }

          v8 = 0x277CBE000;
        }
      }

      v35 = [v6 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v35);
  }

  pendingBonjourEvents2 = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v30 = [pendingBonjourEvents2 count];

  if (v30)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    [bonjourEventTimer resume];
  }
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];

  v6 = fireCopy;
  if (bonjourEventTimer == fireCopy)
  {
    [(HAPAccessoryServerBrowserIP *)self _timerDidExpire:fireCopy];
    v6 = fireCopy;
  }
}

- (void)devicePowerStateChanged:(unint64_t)changed
{
  if (changed == 2)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    isRunning = [bonjourEventTimer isRunning];

    if (isRunning)
    {
      bonjourEventTimer2 = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
      [bonjourEventTimer2 kick];
    }
  }
}

- (int)_purgePendingBonjourEvents:(id)events withProcessing:(BOOL)processing
{
  processingCopy = processing;
  v54 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v8 = [pendingBonjourEvents copy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v39 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  v10 = 0;
  if (v39)
  {
    v11 = *v42;
    *&v9 = 138543618;
    v33 = v9;
    v35 = *v42;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{@"kHAPBonjourEventKey", v33}];
        v15 = [v14 hmf_stringForKey:@"deviceID"];
        v16 = [v15 isEqualToString:eventsCopy];

        if (v16)
        {
          v17 = [v14 hmf_stringForKey:@"name"];
          v40 = [v13 objectForKeyedSubscript:@"kHAPBonjourEventType"];
          pendingBonjourEvents2 = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
          [pendingBonjourEvents2 removeObject:v13];

          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v22 = v37 = v10;
            [(HAPAccessoryServerBrowserIP *)selfCopy pendingBonjourEvents];
            v34 = v17;
            selfCopy2 = self;
            v24 = processingCopy;
            v26 = v25 = eventsCopy;
            v27 = [v26 count];
            *buf = 138544130;
            v46 = v22;
            v47 = 2112;
            v48 = v40;
            v49 = 2112;
            v50 = v14;
            v51 = 2048;
            v52 = v27;
            _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Removed pending Bonjour %@, Event: %@, Current Count: %lu", buf, 0x2Au);

            eventsCopy = v25;
            processingCopy = v24;
            self = selfCopy2;
            v17 = v34;

            v10 = v37;
          }

          objc_autoreleasePoolPop(v19);
          if (processingCopy && [v40 isEqualToString:@"kHAPBonjourEventType_Remove"])
          {
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v31 = v38 = v10;
              *buf = v33;
              v46 = v31;
              v47 = 2112;
              v48 = v17;
              _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%{public}@Processing pending Bonjour remove event for BonjourDevice with name %@", buf, 0x16u);

              v10 = v38;
            }

            objc_autoreleasePoolPop(v28);
            [(HAPAccessoryServerBrowserIP *)v29 _handleBonjourRemoveWithEventInfo:v14];
          }

          ++v10;

          v11 = v35;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v39);
  }

  return v10;
}

- (void)processPendingBonjourRemoveEventsForDeviceID:(id)d
{
  dCopy = d;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPAccessoryServerBrowserIP_processPendingBonjourRemoveEventsForDeviceID___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

- (void)_pendBonjourEvent:(id)event
{
  eventCopy = event;
  pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  v6 = [pendingBonjourEvents count];

  if (!v6)
  {
    bonjourEventTimer = [(HAPAccessoryServerBrowserIP *)self bonjourEventTimer];
    [bonjourEventTimer resume];
  }

  pendingBonjourEvents2 = [(HAPAccessoryServerBrowserIP *)self pendingBonjourEvents];
  [pendingBonjourEvents2 addObject:eventCopy];
}

- (void)_pendBonjourRemoveEvent:(id)event
{
  v43[3] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v33 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v33 forBonjourDevice:eventCopy];
  v5 = v33;
  v6 = v5;
  if (v5 && ([v5 identifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[HAPAccessoryServerBrowser isPaired:](self, "isPaired:", v7), v7, !v8))
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v26;
      v36 = 2112;
      v37 = eventCopy;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Handling Bonjour remove event %@ for unpaired accessory server: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [eventCopy hmf_stringForKey:@"deviceID"];
    v28 = [(HAPAccessoryServerBrowserIP *)selfCopy _processPendingBonjourEvent:v27];

    if (!v28)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v32;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%{public}@None pending - processing the remove", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [(HAPAccessoryServerBrowserIP *)v30 _handleBonjourRemoveWithEventInfo:eventCopy];
    }
  }

  else
  {
    v43[0] = @"kHAPBonjourEventType_Remove";
    v42[0] = @"kHAPBonjourEventType";
    v42[1] = @"kHAPBonjourEventReceivedTimeKey";
    date = [MEMORY[0x277CBEAA8] date];
    v42[2] = @"kHAPBonjourEventKey";
    v43[1] = date;
    v43[2] = eventCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      pendingBonjourEvents = [(HAPAccessoryServerBrowserIP *)selfCopy2 pendingBonjourEvents];
      v16 = [pendingBonjourEvents count];
      [v6 isSessionRestoreActive];
      v17 = HMFBooleanToString();
      *buf = 138544130;
      v35 = v14;
      v36 = 2112;
      v37 = eventCopy;
      v38 = 2048;
      v39 = v16;
      v40 = 2114;
      v41 = v17;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Pending Bonjour remove event: %@, Current Count: %lu, session restore: %{public}@ ", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    [(HAPAccessoryServerBrowserIP *)selfCopy2 _pendBonjourEvent:v10];
    if (v6 && ([v6 isSessionRestoreActive] & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy2;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        identifier = [v6 identifier];
        *buf = 138543618;
        v35 = v21;
        v36 = 2114;
        v37 = identifier;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Marking all accessories for server %{public}@ as unreachable while confirming the remove event", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HAPAccessoryServerBrowserIP *)v19 _setReachability:0 forServer:v6];
    }
  }
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServerBrowserIP *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServerBrowserIP *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServerBrowserIP *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_setReachability:(BOOL)reachability forServer:(id)server
{
  reachabilityCopy = reachability;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accessories = [server accessories];
  v6 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(accessories);
        }

        [*(*(&v10 + 1) + 8 * v9++) setReachable:reachabilityCopy];
      }

      while (v7 != v9);
      v7 = [accessories countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_invalidateAccessoryServers:(BOOL)servers
{
  serversCopy = servers;
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v7 = [v5 setWithSet:discoveredAccessoryServers];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (!serversCopy || ([*(*(&v16 + 1) + 8 * v12) identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = -[HAPAccessoryServerBrowser isPaired:](self, "isPaired:", v14), v14, !v15))
        {
          [(HAPAccessoryServerBrowserIP *)self _invalidateAndRemoveAccessoryServer:v13, v16];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_server:(id *)_server forHAPWACAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  if (_server)
  {
    *_server = 0;
    deviceId = [accessory deviceId];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
    v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(discoveredAccessoryServers);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          identifier = [v11 identifier];
          v13 = [identifier isEqualToString:deviceId];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [discoveredAccessoryServers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v14 = v8;
    *_server = v8;
  }
}

- (int)_server:(id *)_server forBonjourDevice:(id)device
{
  v24 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v22 = 0;
  v7 = BonjourDevice_CopyCFString();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
  v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(discoveredAccessoryServers);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:v7];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [discoveredAccessoryServers countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (v7)
  {
    CFRelease(v7);
  }

  v15 = v9;
  *_server = v9;
  v16 = v22;

  return v16;
}

- (void)_handleBonjourRemoveWithEventInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v16 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v16 forBonjourDevice:infoCopy];
  v5 = v16;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      isPaired = [v7 isPaired];
      *buf = 138543618;
      v18 = v9;
      v19 = 1024;
      LODWORD(v20) = isPaired;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Authenticated: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
    [(HAPAccessoryServerBrowserIP *)self _doBonjourRemoveWithServer:v7];
  }

  else
  {
    v11 = [infoCopy objectForKeyedSubscript:@"name"];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Removed BonjourDevice with name %@ but it was not a part of the discoveredAccessoryServers set", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_doBonjourRemoveWithServer:(id)server
{
  v14 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (serverCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      identifier = [serverCopy identifier];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = identifier;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing IP accessory server with device ID %{public}@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [serverCopy unregisterForNotifications:selfCopy];
    [(HAPAccessoryServerBrowserIP *)selfCopy _invalidateAndRemoveAccessoryServer:serverCopy];
  }
}

- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary
{
  serverCopy = server;
  dictionaryCopy = dictionary;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HAPAccessoryServerBrowserIP_indicateNotificationFromServer_notifyType_withDictionary___block_invoke;
  v13[3] = &unk_2786D6E88;
  v14 = dictionaryCopy;
  selfCopy = self;
  v16 = serverCopy;
  typeCopy = type;
  v11 = serverCopy;
  v12 = dictionaryCopy;
  dispatch_async(workQueue, v13);
}

void __88__HAPAccessoryServerBrowserIP_indicateNotificationFromServer_notifyType_withDictionary___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 hmf_numberForKey:@"HAPAccessoryInstanceID"];
  }

  else
  {
    v3 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [*(a1 + 40) discoveredAccessoryServers];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [*(a1 + 48) identifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v18 = *(a1 + 56);
          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 40);
          v21 = HMFGetOSLogHandle();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if (v18 == 1)
          {
            if (v22)
            {
              v23 = HMFGetLogIdentifier();
              v24 = [v9 identifier];
              *buf = 138543874;
              v33 = v23;
              v34 = 2114;
              v35 = v24;
              v36 = 2114;
              v37 = v3;
              _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Browser - Notification HAPNotification_ReachabilityUpdate from server %{public}@ with instanceId %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            [*(a1 + 40) _doReachabilityUpdateForServer:v9 withDictionary:*(a1 + 32)];
          }

          else
          {
            if (v22)
            {
              v25 = HMFGetLogIdentifier();
              v26 = [HAPNotification typeToString:*(a1 + 56)];
              v27 = [v9 identifier];
              *buf = 138544130;
              v33 = v25;
              v34 = 2112;
              v35 = v26;
              v36 = 2114;
              v37 = v27;
              v38 = 2114;
              v39 = v3;
              _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Browser - Unhandled notification %@ from server %{public}@ with instanceId %{public}@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v19);
          }

          goto LABEL_23;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 40);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [*(a1 + 48) identifier];
    *buf = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = v17;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@*** Server Browser Failed to find AccessoryServerIP object for handling notification: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_23:
}

- (void)_doReachabilityUpdateForServer:(id)server withDictionary:(id)dictionary
{
  *&v23[13] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dictionaryCopy = dictionary;
  if ([serverCopy reachabilityPingEnabled])
  {
    v8 = [dictionaryCopy hmf_BOOLForKey:@"HAPAccessoryReachable"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      identifier = [serverCopy identifier];
      v20 = 138543874;
      v21 = v12;
      v22 = 1024;
      *v23 = v8;
      v23[2] = 2114;
      *&v23[3] = identifier;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@accessory server reachability via ping %d from accessory server %{public}@", &v20, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
    if ((v8 & 1) == 0)
    {
      identifier2 = [serverCopy identifier];
      [(HAPAccessoryServerBrowserIP *)selfCopy _processPendingBonjourEvent:identifier2];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      identifier3 = [serverCopy identifier];
      v20 = 138543618;
      v21 = v18;
      v22 = 2114;
      *v23 = identifier3;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@ignoring reachability update on browser - pings not enabled for accessory server %{public}@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_invalidateAndRemoveAccessoryServer:(id)server
{
  v28 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  isPreSoftAuthWacStarted = [serverCopy isPreSoftAuthWacStarted];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isPreSoftAuthWacStarted)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = serverCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Not invalidating accessory server during WAC progress - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = serverCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing from discoveredAccessoryServers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)selfCopy discoveredAccessoryServers];
    [discoveredAccessoryServers removeObject:serverCopy];

    delegate = [(HAPAccessoryServerBrowserIP *)selfCopy delegate];
    v14 = [[HAPAccessoryServerBrowserInvalidateServerOperation alloc] initWithServer:serverCopy];
    identifier = [serverCopy identifier];
    [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateOperation:v14 identifier:identifier];

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_initWeak(buf, selfCopy);
      v16 = MEMORY[0x277CCA8C8];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__HAPAccessoryServerBrowserIP__invalidateAndRemoveAccessoryServer___block_invoke;
      v20[3] = &unk_2786D6F50;
      objc_copyWeak(&v23, buf);
      v21 = delegate;
      v17 = serverCopy;
      v22 = v17;
      v18 = [v16 blockOperationWithBlock:v20];
      identifier2 = [v17 identifier];
      [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateOperation:v18 identifier:identifier2];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }
}

void __67__HAPAccessoryServerBrowserIP__invalidateAndRemoveAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) accessoryServerBrowser:WeakRetained didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (void)_handleBonjourAddOrUpdateWithEventInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HAPAccessoryServerBrowserIP *)self _handleConnectionUpdateWithBonjourDeviceInfo:infoCopy socketInfo:0];
}

- (void)handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  infoCopy = info;
  socketInfoCopy = socketInfo;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HAPAccessoryServerBrowserIP_handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = infoCopy;
  v13 = socketInfoCopy;
  v9 = socketInfoCopy;
  v10 = infoCopy;
  dispatch_async(workQueue, block);
}

- (void)_handleConnectionUpdateWithBonjourDeviceInfo:(id)info socketInfo:(id)socketInfo
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  socketInfoCopy = socketInfo;
  v40 = 0;
  [(HAPAccessoryServerBrowserIP *)self _server:&v40 forBonjourDevice:infoCopy];
  v8 = v40;
  if (!v8)
  {
    if (socketInfoCopy)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = [HAPAccessoryServerIP alloc];
    keyStore = [(HAPAccessoryServerBrowser *)self keyStore];
    v18 = [(HAPAccessoryServerIP *)v16 initWithBonjourDeviceInfo:infoCopy keyStore:keyStore browser:self discoveryMethod:v15];

    identifier = [(HAPAccessoryServer *)v18 identifier];
    serverIdentifierToSkipBonjourUpdate = [(HAPAccessoryServerBrowserIP *)self serverIdentifierToSkipBonjourUpdate];
    v21 = [identifier isEqual:serverIdentifierToSkipBonjourUpdate];

    if (socketInfoCopy || !v21)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      v24 = v27;
      if (v18)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          name = [(HAPAccessoryServer *)v18 name];
          identifier2 = [(HAPAccessoryServer *)v18 identifier];
          *buf = 138543874;
          v42 = v28;
          v43 = 2112;
          v44 = name;
          v45 = 2114;
          v46 = identifier2;
          _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory server %@/%{public}@ with BonjourDevice info", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
        [(HAPAccessoryServerIP *)v18 setIsSeenOnBonjour:1];
        discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)selfCopy2 discoveredAccessoryServers];
        [discoveredAccessoryServers addObject:v18];

        if (socketInfoCopy)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy2;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            identifier3 = [(HAPAccessoryServer *)v18 identifier];
            *buf = 138543618;
            v42 = v35;
            v43 = 2112;
            v44 = identifier3;
            _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Saving socket info for newly discovered server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [(HAPAccessoryServerIP *)v18 setCachedSocketInfo:socketInfoCopy];
        }

        if ([(HAPAccessoryServerBrowserIP *)selfCopy2 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __87__HAPAccessoryServerBrowserIP__handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke;
          v38[3] = &unk_2786D7050;
          v38[4] = selfCopy2;
          v39 = v18;
          identifier4 = [(HAPAccessoryServer *)v39 identifier];
          [(HAPAccessoryServerBrowserIP *)selfCopy2 pendDelegateBlock:v38 identifier:identifier4];
        }

        [(HAPAccessoryServer *)v18 registerForNotifications:selfCopy2];
        goto LABEL_26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = infoCopy;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an accessory server from the TXT record data after discovering BonjourDevice %@", buf, 0x16u);
        goto LABEL_24;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        identifier5 = [(HAPAccessoryServer *)v18 identifier];
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = identifier5;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@*** Skipping bonjour add for %@.  Remove HAPServerIPBrowserSkipBonjourUpdateForIdentifier from preferences to clear", buf, 0x16u);

LABEL_24:
      }
    }

    objc_autoreleasePoolPop(v22);
LABEL_26:

    goto LABEL_27;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier6 = [v8 identifier];
    [v8 isWacAccessory];
    v14 = HMFBooleanToString();
    *buf = 138544130;
    v42 = v12;
    v43 = 2114;
    v44 = identifier6;
    v45 = 2114;
    v46 = v14;
    v47 = 2112;
    v48 = infoCopy;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating IP accessory server %{public}@ wacAccessory:%{public}@ with new BonjourDevice info: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  [(HAPAccessoryServerBrowserIP *)selfCopy3 _setReachability:1 forServer:v8];
  [v8 updateWithBonjourDeviceInfo:infoCopy socketInfo:socketInfoCopy];
  [v8 setIsSeenOnBonjour:1];
LABEL_27:
}

void __87__HAPAccessoryServerBrowserIP__handleConnectionUpdateWithBonjourDeviceInfo_socketInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)_handleBonjourBrowserEvent:(unsigned int)event eventInfo:(id)info
{
  v59 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = [infoCopy hmf_stringForKey:@"deviceID"];
  v8 = [infoCopy hmf_stringForKey:@"name"];
  if (event != 3)
  {
    if (event != 2)
    {
      if (event == 1 && infoCopy)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543874;
          v54 = v12;
          v55 = 2112;
          v56 = v8;
          v57 = 2114;
          v58 = v7;
          _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received add/update message for BonjourDevice with name '%@', id %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        v52 = 0;
        [(HAPAccessoryServerBrowserIP *)selfCopy _server:&v52 forBonjourDevice:infoCopy];
        v13 = v52;
        v14 = v13;
        if (v13)
        {
          [v13 setIsSeenOnBonjour:1];
        }

        v15 = [(HAPAccessoryServerBrowserIP *)selfCopy _purgePendingBonjourEvents:v7 withProcessing:0];
        if (v15)
        {
          v16 = v15;
          v17 = objc_autoreleasePoolPush();
          v18 = selfCopy;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v20;
            v55 = 1024;
            LODWORD(v56) = v16;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@Purged %d pending remove events", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v17);
        }

        [(HAPAccessoryServerBrowserIP *)selfCopy _handleBonjourAddOrUpdateWithEventInfo:infoCopy];
      }

      goto LABEL_32;
    }

    if (!infoCopy)
    {
      goto LABEL_32;
    }

    v51 = 0;
    [(HAPAccessoryServerBrowserIP *)self _server:&v51 forBonjourDevice:infoCopy];
    v21 = v51;
    v22 = v21;
    if (v21)
    {
      [v21 setIsSeenOnBonjour:0];
    }

    isSessionEstablished = [v22 isSessionEstablished];
    if ([v22 wakeNumber])
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        identifier = [v22 identifier];
        wakeNumber = [v22 wakeNumber];
        *buf = 138543874;
        v54 = v27;
        v55 = 2114;
        v56 = identifier;
        v57 = 2048;
        v58 = wakeNumber;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_INFO, "%{public}@pending bonjour remove event for suspended accessory server: %{public}@ with wake number %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      isSessionEstablished = 1;
    }

    primaryAccessory = [v22 primaryAccessory];
    if ([primaryAccessory suspendedState] == 3)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        [v22 identifier];
        v35 = v49 = v31;
        suspendedState = [primaryAccessory suspendedState];
        *buf = 138543874;
        v54 = v34;
        v55 = 2114;
        v56 = v35;
        v57 = 2048;
        v58 = suspendedState;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@pending bonjour remove event for suspended accessory server: %{public}@ with suspendedState %lu", buf, 0x20u);

        v31 = v49;
      }

      objc_autoreleasePoolPop(v31);
    }

    else if (!isSessionEstablished)
    {
      if ([v22 isWacAccessory] && (objc_msgSend(v22, "isWacComplete") & 1) == 0)
      {
        v45 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v48;
          v55 = 2112;
          v56 = v8;
          _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEBUG, "%{public}@WAC in progress, ignoring the remove event for BonjourDevice with name %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v44;
          v55 = 2112;
          v56 = v8;
          _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_INFO, "%{public}@No session yet, processing the remove event for BonjourDevice with name %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        [(HAPAccessoryServerBrowserIP *)selfCopy5 _handleBonjourRemoveWithEventInfo:infoCopy];
      }

      goto LABEL_31;
    }

    [(HAPAccessoryServerBrowserIP *)self _pendBonjourRemoveEvent:infoCopy];
LABEL_31:

    goto LABEL_32;
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v40;
    _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_INFO, "%{public}@Received a stop browsing event for the BonjourBrowser, invalidating all unpaired accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v37);
  [(HAPAccessoryServerBrowserIP *)selfCopy6 _purgePendingBonjourEvents:v7 withProcessing:1];
  [(HAPAccessoryServerBrowserIP *)selfCopy6 _invalidateAccessoryServers:1];
  if ([(HAPAccessoryServerBrowserIP *)selfCopy6 _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __68__HAPAccessoryServerBrowserIP__handleBonjourBrowserEvent_eventInfo___block_invoke;
    v50[3] = &unk_2786D6CA0;
    v50[4] = selfCopy6;
    [(HAPAccessoryServerBrowserIP *)selfCopy6 pendDelegateBlock:v50 identifier:0];
  }

LABEL_32:
}

void __68__HAPAccessoryServerBrowserIP__handleBonjourBrowserEvent_eventInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)updateCacheForDeviceID:(id)d ipData:(id)data
{
  dataCopy = data;
  dCopy = d;
  cache = [(HAPAccessoryServerBrowserIP *)self cache];
  v8 = cache;
  if (dataCopy)
  {
    [cache saveData:dataCopy forDevice:dCopy];
  }

  else
  {
    [cache deleteDataForDevice:dCopy];
  }
}

- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    discoveredAccessoryServers = [(HAPAccessoryServerBrowserIP *)self discoveredAccessoryServers];
    allObjects = [discoveredAccessoryServers allObjects];

    v13 = [allObjects countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(allObjects);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          if ([v17 matchesSetupID:dCopy serverIdentifier:identifierCopy])
          {
            identifier = [v17 identifier];
            v21 = [(HAPAccessoryServerBrowser *)self isPaired:identifier];

            hasPairings = [v17 hasPairings];
            v19 = v21 | hasPairings;
            if (v21 | hasPairings)
            {
              v23 = hasPairings;
              context = objc_autoreleasePoolPush();
              selfCopy = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v28 = HMFGetLogIdentifier();
                v26 = [MEMORY[0x277CCABB0] numberWithBool:v21];
                v27 = [MEMORY[0x277CCABB0] numberWithBool:v23 & 1];
                *buf = 138544386;
                v35 = v28;
                v36 = 2112;
                v37 = v17;
                v38 = 2114;
                v39 = dCopy;
                v40 = 2114;
                v41 = v26;
                v42 = 2114;
                v43 = v27;
                _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@IP Accessory server %@ matches setupID %{public}@ and is paired/hasPairings: (%{public}@/%{public}@)", buf, 0x34u);
              }

              objc_autoreleasePoolPop(context);
            }

            v18 = v17;
            goto LABEL_16;
          }
        }

        v14 = [allObjects countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
    v19 = 0;
LABEL_16:

    (handlerCopy)[2](handlerCopy, v19, v18);
  }
}

- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__HAPAccessoryServerBrowserIP_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_2786D66C8;
  v15[4] = self;
  v16 = dCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

- (void)processPendingBonjourRemoveEvents:(id)events
{
  eventsCopy = events;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HAPAccessoryServerBrowserIP_processPendingBonjourRemoveEvents___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_async(workQueue, v7);
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverWithIdentifier:*(a1 + 40) ignoreLPM:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      v4 = *(a1 + 32);
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_2;
      v17 = &unk_2786D7050;
      v18 = v4;
      v5 = &v19;
      v19 = v2;
      v6 = *(a1 + 40);
      v7 = &v14;
LABEL_6:
      [v4 pendDelegateBlock:v7 identifier:{v6, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];
    }
  }

  else if ([v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
  {
    v4 = *(a1 + 32);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_3;
    v11 = &unk_2786D7050;
    v12 = v4;
    v5 = &v13;
    v13 = *(a1 + 40);
    v6 = *(a1 + 40);
    v7 = &v8;
    goto LABEL_6;
  }
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

void __69__HAPAccessoryServerBrowserIP_discoverAccessoryServerWithIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)notifyDelegatesOfWACCompletionWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if ([(HAPAccessoryServerBrowserIP *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didFinishWACForAccessoryWithIdentifier_error_])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__HAPAccessoryServerBrowserIP_notifyDelegatesOfWACCompletionWithIdentifier_error___block_invoke;
    v8[3] = &unk_2786D7078;
    v8[4] = self;
    v9 = identifierCopy;
    v10 = errorCopy;
    [(HAPAccessoryServerBrowserIP *)self pendDelegateBlock:v8 identifier:v9];
  }
}

void __82__HAPAccessoryServerBrowserIP_notifyDelegatesOfWACCompletionWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFinishWACForAccessoryWithIdentifier:*(a1 + 40) error:*(a1 + 48)];
}

- (id)visible2Pt4Networks
{
  hapWACBrowser = [(HAPAccessoryServerBrowserIP *)self hapWACBrowser];
  visible2Pt4Networks = [hapWACBrowser visible2Pt4Networks];

  return visible2Pt4Networks;
}

- (void)stopDiscoveringWACAccessoryServersWithInvalidation:(BOOL)invalidation
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HAPAccessoryServerBrowserIP_stopDiscoveringWACAccessoryServersWithInvalidation___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  invalidationCopy = invalidation;
  dispatch_async(workQueue, v6);
}

void __82__HAPAccessoryServerBrowserIP_stopDiscoveringWACAccessoryServersWithInvalidation___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for WAC accessories", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 stopDiscoveringAccessoryServers];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _invalidateWACServers];
  }
}

- (void)stopDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HAPAccessoryServerBrowserIP_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __62__HAPAccessoryServerBrowserIP_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for IP accessories", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6[7])
  {
    BonjourBrowser_Stop();
    CFRelease(*(*(a1 + 32) + 56));
    *(*(a1 + 32) + 56) = 0;
    v6 = *(a1 + 32);
  }

  v7 = [v6 powerManager];
  [v7 deRegisterFromSleepWake:*(a1 + 32)];
}

- (void)pendDelegateOperation:(id)operation identifier:(id)identifier
{
  operationCopy = operation;
  if (identifier)
  {
    [operationCopy setName:identifier];
  }

  delegateOperationQueue = [(HAPAccessoryServerBrowserIP *)self delegateOperationQueue];
  [delegateOperationQueue addOperation:operationCopy];
}

- (void)pendDelegateBlock:(id)block identifier:(id)identifier
{
  v6 = MEMORY[0x277CCA8C8];
  identifierCopy = identifier;
  v8 = [v6 blockOperationWithBlock:block];
  [(HAPAccessoryServerBrowserIP *)self pendDelegateOperation:v8 identifier:identifierCopy];
}

- (void)startDiscoveringAirPlayAccessoriesWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HAPAccessoryServerBrowserIP_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(workQueue, v7);
}

void __78__HAPAccessoryServerBrowserIP_startDiscoveringAirPlayAccessoriesWithDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for AirPlay WAC accessories...", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 startDiscoveringAirPlayAccessoriesWithDelegate:*(a1 + 40)];
}

- (void)startDiscoveringWACAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __80__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for HAP WAC accessories with identifier: %{public}@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) hapWACBrowser];
  [v7 discoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)startDiscoveringWACAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __66__HAPAccessoryServerBrowserIP_startDiscoveringWACAccessoryServers__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting browse for HAP WAC accessories...", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) hapWACBrowser];
  [v6 startDiscoveringAccessoryServers];
}

- (void)_doStartDiscoveringAccessoryServers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting browse for IP accessories...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  _initializeAndStartBonjourBrowser = [(HAPAccessoryServerBrowserIP *)selfCopy _initializeAndStartBonjourBrowser];
  if ([(HAPAccessoryServerBrowserIP *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__HAPAccessoryServerBrowserIP__doStartDiscoveringAccessoryServers__block_invoke;
    v11[3] = &unk_2786D6740;
    v11[4] = selfCopy;
    v12 = _initializeAndStartBonjourBrowser;
    [(HAPAccessoryServerBrowserIP *)selfCopy pendDelegateBlock:v11 identifier:0];
  }

  v8 = +[HAPPowerManager sharedInstance];
  [(HAPAccessoryServerBrowserIP *)selfCopy setPowerManager:v8];

  powerManager = [(HAPAccessoryServerBrowserIP *)selfCopy powerManager];
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  [powerManager registerForSleepWake:selfCopy queue:workQueue];
}

void __66__HAPAccessoryServerBrowserIP__doStartDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = HMErrorFromOSStatus(*(a1 + 40));
  [v4 accessoryServerBrowser:v2 didStartDiscoveringWithError:v3];
}

- (void)_prePopulateBrowserFromCacheWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HAPAccessoryServerBrowserIP *)self isInitialCacheRestored])
  {
LABEL_9:
    completionCopy[2](completionCopy);
    goto LABEL_10;
  }

  [(HAPAccessoryServerBrowserIP *)self setIsInitialCacheRestored:1];
  cache = [(HAPAccessoryServerBrowserIP *)self cache];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!cache)
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@No cached IP addresses", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_9;
  }

  if (v9)
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Pre-populate browser with cached IP Addresses", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  cache2 = [(HAPAccessoryServerBrowserIP *)selfCopy cache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke;
  v13[3] = &unk_2786D4700;
  v13[4] = selfCopy;
  v14 = completionCopy;
  [cache2 retrieveCachedData:v13];

LABEL_10:
}

void __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_2;
  block[3] = &unk_2786D69E0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_3;
  v4[3] = &unk_2786D46D8;
  v4[4] = a1[5];
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  return (*(a1[6] + 16))();
}

void __74__HAPAccessoryServerBrowserIP__prePopulateBrowserFromCacheWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Retrieve data %@ for device %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v10 = [HAPSocketInfo alloc];
  v11 = [v6 socketInfo];
  v12 = [(HAPSocketInfo *)v10 initWithDictionary:v11];

  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v6 socketInfo];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Could not init socket info for device %@ from dictionary %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *(a1 + 32);
  v18 = [v6 bonjourDeviceInfo];
  [v17 _handleConnectionUpdateWithBonjourDeviceInfo:v18 socketInfo:v12];
}

- (void)startDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_2;
  v3[3] = &unk_2786D6CA0;
  v3[4] = v1;
  return [v1 _prePopulateBrowserFromCacheWithCompletion:v3];
}

void __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HAPAccessoryServerBrowserIP_startDiscoveringAccessoryServers__block_invoke_3;
  block[3] = &unk_2786D6CA0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HAPAccessoryServerBrowserIP_setDelegate_queue___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(workQueue, block);
}

void __49__HAPAccessoryServerBrowserIP_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setDelegateQueue:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) delegateOperationQueue];
  [v3 setUnderlyingQueue:v2];
}

- (int)_initializeAndStartBonjourBrowser
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HAPAccessoryServerBrowserIP__initializeAndStartBonjourBrowser__block_invoke;
  v8[3] = &unk_2786D46B0;
  v8[4] = self;
  v3 = MEMORY[0x231885210](v8, a2);
  if (self->_bonjourBrowser)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = BonjourBrowser_Create();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    BonjourBrowser_SetDispatchQueue();

    BonjourBrowser_SetEventHandlerBlock();
    v5 = BonjourBrowser_Start();
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (self->_bonjourBrowser)
  {
    BonjourBrowser_Stop();
    CFRelease(self->_bonjourBrowser);
    self->_bonjourBrowser = 0;
  }

LABEL_7:

  return v5;
}

- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue cache:(id)cache
{
  cacheCopy = cache;
  v8 = [(HAPAccessoryServerBrowserIP *)self initWithQueue:queue];
  v9 = v8;
  if (v8)
  {
    v8->_isInitialCacheRestored = 0;
    objc_storeStrong(&v8->_cache, cache);
  }

  return v9;
}

- (HAPAccessoryServerBrowserIP)initWithQueue:(id)queue
{
  v37 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v32.receiver = self;
  v32.super_class = HAPAccessoryServerBrowserIP;
  v5 = [(HAPAccessoryServerBrowser *)&v32 initWithQueue:queueCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryServers = v5->_discoveredAccessoryServers;
    v5->_discoveredAccessoryServers = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    pendingBonjourEvents = v5->_pendingBonjourEvents;
    v5->_pendingBonjourEvents = v8;

    v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:8.0];
    bonjourEventTimer = v5->_bonjourEventTimer;
    v5->_bonjourEventTimer = v10;

    [(HMFTimer *)v5->_bonjourEventTimer setDelegate:v5];
    v12 = v5->_bonjourEventTimer;
    workQueue = [(HAPAccessoryServerBrowser *)v5 workQueue];
    [(HMFTimer *)v12 setDelegateQueue:workQueue];

    v14 = [[HAPWACAccessoryBrowser alloc] initWithDelegate:v5 queue:queueCopy];
    hapWACBrowser = v5->_hapWACBrowser;
    v5->_hapWACBrowser = v14;

    v5->_isInitialCacheRestored = 1;
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    delegateOperationQueue = v5->_delegateOperationQueue;
    v5->_delegateOperationQueue = v16;

    [(NSOperationQueue *)v5->_delegateOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_delegateOperationQueue setName:@"HAPAccessoryServerBrowserIPDelegateOperationQueue"];
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v19 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HAPServerIPBrowserServerIdentifierToSkipBonjourUpdates"];
    stringValue = [v19 stringValue];
    serverIdentifierToSkipBonjourUpdate = v5->_serverIdentifierToSkipBonjourUpdate;
    v5->_serverIdentifierToSkipBonjourUpdate = stringValue;

    mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v23 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"HAPMaximumConsecutiveIPPairVerifyFailures"];
    numberValue = [v23 numberValue];

    if (numberValue)
    {
      unsignedIntValue = [numberValue unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 2;
    }

    v5->_maximumNumberOfPairVeifiesAllowed = unsignedIntValue;
    if (v5->_serverIdentifierToSkipBonjourUpdate)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v5;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = v5->_serverIdentifierToSkipBonjourUpdate;
        *buf = 138543618;
        v34 = v29;
        v35 = 2112;
        v36 = v30;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_INFO, "%{public}@Skipping bonjour updates for server with identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t55 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t55, &__block_literal_global_10396);
  }

  v3 = logCategory__hmf_once_v56;

  return v3;
}

uint64_t __42__HAPAccessoryServerBrowserIP_logCategory__block_invoke()
{
  logCategory__hmf_once_v56 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end