@interface HAPAccessoryServerBrowserBTLE
+ (id)logCategory;
- (BOOL)_canStartScan;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_hasPairedAccessoriesOfType:(unint64_t)type;
- (BOOL)_hasRecentlySeenAccessoriesWithIdentifiers:(id)identifiers;
- (BOOL)_shouldCreateHAPAccessoryServerWithIdentifier:(id)identifier statusFlags:(id)flags stateNumber:(id)number category:(id)category configNumber:(id)configNumber name:(id)name forPeripheral:(id)peripheral advertisementFormat:(unint64_t)self0 setupHash:(id)self1 stateChanged:(BOOL *)self2 connectReason:(unsigned __int8 *)self3;
- (BOOL)isPerformingGeneralScan;
- (BOOL)remoteBrowsingAndScanEnabled;
- (BOOL)remoteBrowsingEnabled;
- (HAPAccessoryServerBrowserBTLE)initWithQueue:(id)queue;
- (HAPAccessoryServerBrowserBTLEDelegate)delegate;
- (HAPAccessoryServerBrowserWiProxBTLE)hapWiProxBLEBrowser;
- (id)_bleAccessoryServerTupleForIdentifier:(id)identifier;
- (id)_blePeripheralForAccessoryServerIdentifier:(id)identifier;
- (id)_blePeripheralForCBPeripheral:(id)peripheral;
- (id)_cachedCharacteristicForInstanceID:(id)d identifier:(id)identifier;
- (id)_cbPeripheralForHAPBLEPeripheral:(id)peripheral routeMode:(unsigned __int8 *)mode;
- (id)_cbPeripheralForPeripheralUUID:(id)d stableIdentifier:(id)identifier routeMode:(unsigned __int8 *)mode;
- (id)_discoveredAccessoryServerTupleForBLEPeripheral:(id)peripheral shouldMerge:(BOOL)merge;
- (id)_recentlySeenPairedPeripheralTupleWithPeripheral:(id)peripheral;
- (id)cachedAccessoryForIdentifier:(id)identifier;
- (id)hapCharacteristicsForEncryptedPayload:(id)payload identifier:(id)identifier shouldConnect:(BOOL *)connect;
- (id)peripheralsPendingConnection;
- (id)peripheralsWithConnectionRequests;
- (id)retrieveCBPeripheralWithUUID:(id)d blePeripheral:(id)peripheral;
- (int64_t)scanState;
- (unint64_t)_parseAdvertisementData:(id)data forPeripheral:(id)peripheral name:(id *)name pairingUsername:(id *)username statusFlags:(id *)flags stateNumber:(id *)number category:(id *)category configNumber:(id *)self0 setupHash:(id *)self1;
- (unint64_t)qosLimits;
- (void)_addToActiveConnections:(id)connections;
- (void)_addToPendingConnections:(id)connections;
- (void)_callPowerOnCompletionsWithError:(id)error;
- (void)_connectHAPPeripheralWhenAllowed:(id)allowed;
- (void)_connectPendingConnections;
- (void)_createHAPAccessoryAndNotifyDelegateWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 connectionIdleTime:(unsigned __int8)self2 format:(unint64_t)self3 setupHash:(id)self4 encryptedPayload:(id)self5 whbStableIdentifier:(id)self6;
- (void)_didDiscoverPeripheral:(id)peripheral accessoryName:(id)name pairingIdentifier:(id)identifier format:(unint64_t)format statusFlags:(id)flags stateNumber:(id)number category:(id)category configNumber:(id)self0 setupHash:(id)self1 encryptedPayload:(id)self2 whbStableIdentifier:(id)self3;
- (void)_disconnectFromHAPBLEPeripheral:(id)peripheral cbPeripheral:(id)cbPeripheral;
- (void)_discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)_forgetPairedAccessoryWithIdentifier:(id)identifier;
- (void)_handleTargetedScanTimeout;
- (void)_invalidTargetedScanActivity;
- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_monitorDisconnectionOfHAPPeripheral:(id)peripheral peripheral:(id)a4;
- (void)_notifyDelegatesOfRemovedAccessoryServer:(id)server error:(id)error;
- (void)_performTargetedScanForAccessoryWithIdentifier:(id)identifier;
- (void)_performTimedConnectionRequestForIdentifier:(id)identifier;
- (void)_performTimedScanForIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion;
- (void)_powerOnCentralManagerWithCompletion:(id)completion;
- (void)_probeReachabilityForAccessoryServersWithIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion;
- (void)_removeDiscoveredPeripheralsWithIdentifier:(id)identifier;
- (void)_removeFromActiveConnections:(id)connections;
- (void)_removeFromPendingConnections:(id)connections;
- (void)_removeIdentifiersForReachabilityScan;
- (void)_removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier;
- (void)_reportReachabilityForAccessoryWithIdentifier:(id)identifier;
- (void)_startBrowsingForLegacyHAPBTLE100Accessories;
- (void)_startDiscoveringAccessoryServers;
- (void)_startScanningForReachability:(id)reachability;
- (void)_stopActiveScanWithForce:(BOOL)force;
- (void)_stopMonitorDisconnectionOfCBPeripheral:(id)peripheral;
- (void)_updateTargetedScanTimer;
- (void)accessoryServerBrowserBTLE:(id)e didDiscoverHAPPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)configureAccessoryWithIdentifier:(id)identifier trackState:(BOOL)state connectionPriority:(unint64_t)priority;
- (void)configureBTLEQoSLimits:(unint64_t)limits;
- (void)connectToBTLEAccessoryServer:(id)server;
- (void)connectedHAPPeripheral:(id)peripheral;
- (void)deRegisterAccessoryWithIdentifier:(id)identifier;
- (void)disconnectFromBTLEAccessoryServer:(id)server;
- (void)disconnectedHAPPeripheral:(id)peripheral error:(id)error;
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)failedToConnectHAPPeripheral:(id)peripheral error:(id)error;
- (void)markNotifyingCharacteristicUpdatedForIdentifier:(id)identifier;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)pauseScans;
- (void)probeReachabilityForAccessoryServersWithIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion;
- (void)removeCachedAccessoryWithIdentifier:(id)identifier;
- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier;
- (void)resetLastSeenForAccessoryServersWithIdentifiers:(id)identifiers;
- (void)resetPairedAccessories;
- (void)retrieveCurrentStateForIdentifier:(id)identifier stateNumber:(id *)number isReachable:(BOOL *)reachable linkQuality:(unint64_t *)quality lastSeen:(id *)seen;
- (void)saveCacheToDisk:(id)disk;
- (void)setConnectionLatency:(int64_t)latency forPeripheral:(id)peripheral;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setPerformingGeneralScan:(BOOL)scan;
- (void)setQosLimits:(unint64_t)limits;
- (void)setReachabilityCompletionHandler:(id)handler;
- (void)setScanState:(int64_t)state;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)identifiers;
- (void)updateBroadcastKeyForIdentifier:(id)identifier key:(id)key keyUpdatedStateNumber:(id)number keyUpdatedTime:(double)time;
- (void)updateCachedStateForIdentifier:(id)identifier stateNumber:(id)number;
- (void)updateRemoteBrowsing:(BOOL)browsing shouldScan:(BOOL)scan;
- (void)updateScanInBackground:(BOOL)background;
- (void)updateStateForIdentifier:(id)identifier stateNumber:(id)number;
@end

@implementation HAPAccessoryServerBrowserBTLE

- (HAPAccessoryServerBrowserWiProxBTLE)hapWiProxBLEBrowser
{
  os_unfair_lock_lock_with_options();
  hapWiProxBLEBrowser = self->_hapWiProxBLEBrowser;
  if (!hapWiProxBLEBrowser)
  {
    v4 = [HAPAccessoryServerBrowserWiProxBTLE alloc];
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    v6 = [(HAPAccessoryServerBrowserWiProxBTLE *)v4 initWithDelegate:self queue:workQueue];
    v7 = self->_hapWiProxBLEBrowser;
    self->_hapWiProxBLEBrowser = v6;

    hapWiProxBLEBrowser = self->_hapWiProxBLEBrowser;
  }

  v8 = hapWiProxBLEBrowser;
  os_unfair_lock_unlock(&self->super._lock);

  return v8;
}

- (HAPAccessoryServerBrowserBTLEDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleTargetedScanTimeout
{
  v76 = *MEMORY[0x277D85DE8];
  targetedScanTimer = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];

  if (targetedScanTimer)
  {
    targetedScanTimer2 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];
    dispatch_source_cancel(targetedScanTimer2);

    [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanTimer:0];
  }

  [(HAPAccessoryServerBrowserBTLE *)self _invalidTargetedScanActivity];
  isPerformingGeneralScan = [(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (isPerformingGeneralScan)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Canceling targeted scan timer but continuing to actively scan because a general scan has been requested.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(HAPAccessoryServerBrowserBTLE *)selfCopy identifiersWithReachabilityScanTuples];
    v11 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v67;
      v51 = &v65;
      v52 = v64;
      do
      {
        v14 = 0;
        v53 = v12;
        do
        {
          if (*v67 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v66 + 1) + 8 * v14);
          v16 = [(HAPAccessoryServerBrowserBTLE *)selfCopy identifiersWithReachabilityScanTuples:v51];
          v17 = [v16 objectForKey:v15];

          if (v17)
          {
            completion = [v17 completion];

            if (completion)
            {
              identifier = [v17 identifier];
              v20 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _blePeripheralForAccessoryServerIdentifier:identifier];
              cbPeripheral = [v20 cbPeripheral];

              if (!cbPeripheral)
              {
                identifier2 = [v17 identifier];
                v23 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _bleAccessoryServerTupleForIdentifier:identifier2];
                accessoryServer = [v23 accessoryServer];
                cbPeripheral = [accessoryServer peripheral];
              }

              state = [cbPeripheral state];
              v26 = objc_autoreleasePoolPush();
              v27 = selfCopy;
              v28 = HMFGetOSLogHandle();
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
              if (state)
              {
                if (v29)
                {
                  v30 = HMFGetLogIdentifier();
                  identifier3 = [v17 identifier];
                  *buf = 138543618;
                  v72 = v30;
                  v73 = 2114;
                  v74 = identifier3;
                  _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Targeted scan timed out, setting reachability for %{public}@ to YES as we are connected", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                queue = [v17 queue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_185;
                block[3] = &unk_2786D6CA0;
                v62 = v17;
                dispatch_async(queue, block);
                v33 = &v62;
              }

              else
              {
                if (v29)
                {
                  v34 = HMFGetLogIdentifier();
                  identifier4 = [v17 identifier];
                  *buf = 138543618;
                  v72 = v34;
                  v73 = 2114;
                  v74 = identifier4;
                  _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Targeted scan timed out, setting reachability for %{public}@ to NO", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                queue = [v17 queue];
                v63[0] = MEMORY[0x277D85DD0];
                v63[1] = 3221225472;
                v64[0] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke;
                v64[1] = &unk_2786D6CA0;
                v65 = v17;
                dispatch_async(queue, v63);
                v33 = v51;
              }

              v12 = v53;
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v12);
    }
  }

  else
  {
    if (v9)
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v36;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Stopping targeted scans after timeout was received", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _stopActiveScanWithForce:0];
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _removeIdentifiersForReachabilityScan];
  }

  if ([(HAPAccessoryServerBrowserBTLE *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
  {
    v37 = MEMORY[0x277CBEA60];
    targetedScanAccessoryIdentifiers = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanAccessoryIdentifiers];
    v39 = [v37 arrayWithArray:targetedScanAccessoryIdentifiers];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obja = v39;
    v40 = [obja countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v58;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v44 = *(*(&v57 + 1) + 8 * i);
          targetedScanAccessoryIdentifiers2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanAccessoryIdentifiers];
          [targetedScanAccessoryIdentifiers2 removeObject:v44];

          v46 = objc_autoreleasePoolPush();
          v47 = selfCopy;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543618;
            v72 = v49;
            v73 = 2114;
            v74 = v44;
            _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Notifying delegates that the targeted scan failed to discover accessory with identifier %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v46);
          delegateQueue = [(HAPAccessoryServerBrowserBTLE *)v47 delegateQueue];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_186;
          v56[3] = &unk_2786D7050;
          v56[4] = v47;
          v56[5] = v44;
          dispatch_async(delegateQueue, v56);
        }

        v41 = [obja countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v41);
    }
  }
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, 0);
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_185(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, 1);
}

void __59__HAPAccessoryServerBrowserBTLE__handleTargetedScanTimeout__block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)_invalidTargetedScanActivity
{
  targetedScanActivity = [(HAPAccessoryServerBrowserBTLE *)self targetedScanActivity];

  if (targetedScanActivity)
  {
    targetedScanActivity2 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanActivity];
    [targetedScanActivity2 invalidate];

    [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanActivity:0];
  }
}

- (void)_updateTargetedScanTimer
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Updating targeted scan timer.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  targetedScanTimer = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanTimer];
  v8 = targetedScanTimer == 0;

  if (v8)
  {
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _invalidTargetedScanActivity];
    v11 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Targeted Scan" parent:0 options:2];
    [(HAPAccessoryServerBrowserBTLE *)selfCopy setTargetedScanActivity:v11];

    workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
    [(HAPAccessoryServerBrowserBTLE *)selfCopy setTargetedScanTimer:v13];

    objc_initWeak(buf, selfCopy);
    targetedScanTimer2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanTimer];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __57__HAPAccessoryServerBrowserBTLE__updateTargetedScanTimer__block_invoke;
    v20 = &unk_2786D6EB0;
    objc_copyWeak(&v22, buf);
    v21 = selfCopy;
    dispatch_source_set_event_handler(targetedScanTimer2, &v17);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
    v15 = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanTimer:v17];
    v16 = dispatch_walltime(0, 3000000000);
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);

    targetedScanTimer3 = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanTimer];
    dispatch_resume(targetedScanTimer3);
  }

  else
  {
    targetedScanTimer3 = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanTimer];
    v10 = dispatch_walltime(0, 3000000000);
    dispatch_source_set_timer(targetedScanTimer3, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  }
}

void __57__HAPAccessoryServerBrowserBTLE__updateTargetedScanTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _invalidTargetedScanActivity];
    [v3 _handleTargetedScanTimeout];
    WeakRetained = v3;
  }
}

- (BOOL)_shouldCreateHAPAccessoryServerWithIdentifier:(id)identifier statusFlags:(id)flags stateNumber:(id)number category:(id)category configNumber:(id)configNumber name:(id)name forPeripheral:(id)peripheral advertisementFormat:(unint64_t)self0 setupHash:(id)self1 stateChanged:(BOOL *)self2 connectReason:(unsigned __int8 *)self3
{
  v141 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  flagsCopy = flags;
  numberCopy = number;
  categoryCopy = category;
  configNumberCopy = configNumber;
  nameCopy = name;
  peripheralCopy = peripheral;
  hashCopy = hash;
  targetedScanAccessoryIdentifiers = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  v26 = [targetedScanAccessoryIdentifiers containsObject:identifierCopy];

  [(HAPAccessoryServerBrowserBTLE *)self _reportReachabilityForAccessoryWithIdentifier:identifierCopy];
  cbPeripheral = [peripheralCopy cbPeripheral];
  state = [cbPeripheral state];

  if (state)
  {
LABEL_2:
    monitorState = 0;
    goto LABEL_59;
  }

  if (v26)
  {
    *reason = 1;
    targetedScanAccessoryIdentifiers2 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
    [targetedScanAccessoryIdentifiers2 removeObject:identifierCopy];

    targetedScanAccessoryIdentifiers3 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
    if ([targetedScanAccessoryIdentifiers3 count])
    {
    }

    else
    {
      identifiersWithReachabilityScanTuples = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
      v34 = [identifiersWithReachabilityScanTuples count];

      if (!v34)
      {
        targetedScanTimer = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];

        if (targetedScanTimer)
        {
          targetedScanTimer2 = [(HAPAccessoryServerBrowserBTLE *)self targetedScanTimer];
          dispatch_source_cancel(targetedScanTimer2);

          [(HAPAccessoryServerBrowserBTLE *)self setTargetedScanTimer:0];
        }

        [(HAPAccessoryServerBrowserBTLE *)self _invalidTargetedScanActivity];
        if (![(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan])
        {
          v37 = objc_autoreleasePoolPush();
          selfCopy = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v40 = v120 = v37;
            *buf = 138543362;
            v128 = v40;
            _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Stopping targeted scans after discovering the appropriate peripheral(s)", buf, 0xCu);

            v37 = v120;
          }

          objc_autoreleasePoolPop(v37);
          [(HAPAccessoryServerBrowserBTLE *)selfCopy _stopActiveScanWithForce:0];
        }
      }
    }

    v32 = 1;
  }

  else if ([(HAPAccessoryServerBrowserBTLE *)self isPerformingGeneralScan]&& ![(HAPAccessoryServerBrowser *)self isPaired:identifierCopy])
  {
    v32 = 1;
    *reason = 1;
  }

  else
  {
    v32 = 0;
  }

  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  v42 = [recentlySeenPairedPeripherals objectForKey:identifierCopy];

  if (v32)
  {
    monitorState = 1;
    if (!v42)
    {
      goto LABEL_59;
    }

    goto LABEL_50;
  }

  if (!v42)
  {
    if (![(HAPAccessoryServerBrowser *)self isPaired:identifierCopy])
    {
      v90 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        v93 = HMFGetLogIdentifier();
        *buf = 138543362;
        v128 = v93;
        _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_DEBUG, "%{public}@Discovered an unpaired accessory!", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v90);
      goto LABEL_2;
    }

    v42 = [[HAPRecentlySeenPairedBTLEPeripheralTuple alloc] initRecentlySeenPairedHAPBLEPeripheral:peripheralCopy];
    v121 = v42;
    if (v42)
    {
      v46 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v115 = v46;
        [peripheralCopy shortDescription];
        v107 = peripheralCopy;
        v50 = configNumberCopy;
        v51 = numberCopy;
        v52 = categoryCopy;
        v54 = v53 = hashCopy;
        *buf = 138543874;
        v128 = v49;
        v129 = 2114;
        v130 = v54;
        v131 = 2114;
        v132 = v121;
        _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%{public}@Adding accessory server: %{public}@ to recently seen paired peripherals: %{public}@", buf, 0x20u);

        hashCopy = v53;
        categoryCopy = v52;
        numberCopy = v51;
        configNumberCopy = v50;
        peripheralCopy = v107;

        v46 = v115;
      }

      objc_autoreleasePoolPop(v46);
      recentlySeenPairedPeripherals2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy3 recentlySeenPairedPeripherals];
      identifier = [peripheralCopy identifier];
      v42 = v121;
      [recentlySeenPairedPeripherals2 setObject:v121 forKey:identifier];
    }

    v116 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:identifierCopy];
    peripheralInfo = [v116 peripheralInfo];
    stateNumber = [peripheralInfo stateNumber];
    if ([stateNumber isEqual:numberCopy])
    {
      lastKeyBagIdentityIndexFailingPV = [v116 lastKeyBagIdentityIndexFailingPV];
      if (!lastKeyBagIdentityIndexFailingPV)
      {
        v114 = +[HAPBLEAccessoryCache currentDiscoveryVersion];
        v94 = peripheralCopy;
        v95 = configNumberCopy;
        v96 = numberCopy;
        v97 = categoryCopy;
        v98 = hashCopy;
        discoveryVersion = [v116 discoveryVersion];

        v100 = v114 == discoveryVersion;
        hashCopy = v98;
        categoryCopy = v97;
        numberCopy = v96;
        configNumberCopy = v95;
        peripheralCopy = v94;
        v42 = v121;
        if (v100)
        {
          monitorState = 0;
          goto LABEL_37;
        }

LABEL_34:
        context = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v105 = HMFGetLogIdentifier();
          identifier2 = [peripheralCopy identifier];
          peripheralInfo2 = [v116 peripheralInfo];
          stateNumber2 = [peripheralInfo2 stateNumber];
          v108 = peripheralCopy;
          v101 = configNumberCopy;
          v61 = numberCopy;
          v62 = categoryCopy;
          v63 = hashCopy;
          v64 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v116, "discoveryVersion")}];
          v65 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HAPBLEAccessoryCache currentDiscoveryVersion](HAPBLEAccessoryCache, "currentDiscoveryVersion")}];
          lastKeyBagIdentityIndexFailingPV2 = [v116 lastKeyBagIdentityIndexFailingPV];
          *buf = 138544898;
          v128 = v105;
          v129 = 2114;
          v130 = identifier2;
          v131 = 2114;
          v132 = stateNumber2;
          v133 = 2114;
          v134 = v61;
          v135 = 2114;
          v136 = v64;
          v67 = v64;
          v137 = 2114;
          v138 = v65;
          v139 = 2114;
          v140 = lastKeyBagIdentityIndexFailingPV2;
          _os_log_impl(&dword_22AADC000, v60, OS_LOG_TYPE_INFO, "%{public}@Creating accessory server for %{public}@ due to State Number: (%{public}@ -> %{public}@), BT Discovery Version: (%{public}@ -> %{public}@), KeyBagPVIndex: (%{public}@)", buf, 0x48u);

          hashCopy = v63;
          categoryCopy = v62;
          numberCopy = v61;
          configNumberCopy = v101;
          peripheralCopy = v108;

          v42 = v121;
        }

        objc_autoreleasePoolPop(context);
        *reason = 4;
        monitorState = 1;
LABEL_37:

        if (!v42)
        {
          goto LABEL_59;
        }

        goto LABEL_50;
      }
    }

    goto LABEL_34;
  }

  v118 = hashCopy;
  if (numberCopy)
  {
    v43 = v42;
    stateNumber3 = [v42 stateNumber];
    v45 = [stateNumber3 isEqualToNumber:numberCopy];

    if (v45)
    {
      monitorState = 0;
      v42 = v43;
      if (!categoryCopy)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v75 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        contexta = HMFGetLogIdentifier();
        v113 = v75;
        stateNumber4 = [v43 stateNumber];
        [v43 monitorState];
        v109 = HMFBooleanToString();
        shortDescription = [peripheralCopy shortDescription];
        *buf = 138544642;
        v128 = contexta;
        v129 = 2114;
        v130 = identifierCopy;
        v131 = 2114;
        v132 = stateNumber4;
        v133 = 2114;
        v134 = numberCopy;
        v135 = 2114;
        v136 = v109;
        v137 = 2114;
        v138 = shortDescription;
        v78 = shortDescription;
        _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_INFO, "%{public}@Accessory server: %{public}@ updated state number %{public}@ -> %{public}@. Monitoring state: %{public}@. %{public}@", buf, 0x3Eu);

        v75 = v113;
      }

      objc_autoreleasePoolPop(v75);
      v42 = v43;
      monitorState = [v43 monitorState];
      *changed = 1;
      *reason = 4;
      if (!categoryCopy)
      {
        goto LABEL_49;
      }
    }

LABEL_41:
    v122 = v42;
    category = [v42 category];
    v69 = [category isEqualToNumber:categoryCopy];

    if ((v69 & 1) == 0)
    {
      v70 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v73 = v117 = selfCopy6;
        category2 = [v122 category];
        *buf = 138544130;
        v128 = v73;
        v129 = 2114;
        v130 = identifierCopy;
        v131 = 2114;
        v132 = category2;
        v133 = 2114;
        v134 = categoryCopy;
        _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_INFO, "%{public}@Accessory server: %{public}@ updated category %{public}@ -> %{public}@", buf, 0x2Au);

        selfCopy6 = v117;
      }

      objc_autoreleasePoolPop(v70);
      *reason = 4;
      monitorState = 1;
    }

    hashCopy = v118;
    v42 = v122;
    goto LABEL_50;
  }

  monitorState = 0;
  if (categoryCopy)
  {
    goto LABEL_41;
  }

LABEL_49:
  hashCopy = v118;
LABEL_50:
  v119 = numberCopy;
  v79 = categoryCopy;
  if (configNumberCopy)
  {
    v80 = hashCopy;
    v124 = v42;
    configNumber = [v42 configNumber];
    v82 = configNumberCopy;
    if ([configNumber isEqualToNumber:configNumberCopy])
    {

      v42 = v124;
    }

    else
    {
      isCached = [peripheralCopy isCached];

      v42 = v124;
      if ((isCached & 1) == 0)
      {
        v84 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v86 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v87 = HMFGetLogIdentifier();
          configNumber2 = [v124 configNumber];
          *buf = 138544130;
          v128 = v87;
          v129 = 2114;
          v130 = identifierCopy;
          v131 = 2114;
          v132 = configNumber2;
          v133 = 2114;
          v134 = v82;
          _os_log_impl(&dword_22AADC000, v86, OS_LOG_TYPE_INFO, "%{public}@Invalidating cache for accessory: %{public}@ on config number update %{public}@ -> %{public}@", buf, 0x2Au);

          v42 = v124;
        }

        objc_autoreleasePoolPop(v84);
        [(HAPAccessoryServerBrowserBTLE *)selfCopy7 removeCachedAccessoryWithIdentifier:identifierCopy];
        *reason = 4;
        monitorState = 1;
      }
    }
  }

  else
  {
    v82 = 0;
    v80 = hashCopy;
  }

  [v42 updateWithPeripheral:peripheralCopy];

  hashCopy = v80;
  categoryCopy = v79;
  numberCopy = v119;
  configNumberCopy = v82;
LABEL_59:

  return monitorState;
}

- (void)_reportReachabilityForAccessoryWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  targetedScanAccessoryIdentifiers = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  [targetedScanAccessoryIdentifiers containsObject:identifierCopy];

  identifiersWithReachabilityScanTuples = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  v7 = [identifiersWithReachabilityScanTuples objectForKey:identifierCopy];

  if ([(HAPAccessoryServerBrowser *)self isPaired:identifierCopy])
  {
    delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    [delegate accessoryServerBrowser:self didChangeReachability:1 forAccessoryServerWithIdentifier:identifierCopy];
  }

  if (v7)
  {
    identifiersWithReachabilityScanTuples2 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
    [identifiersWithReachabilityScanTuples2 removeObjectForKey:identifierCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Reporting reachability for accessory in reachability scan with identifier %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    completion = [v7 completion];

    if (completion)
    {
      queue = [v7 queue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __79__HAPAccessoryServerBrowserBTLE__reportReachabilityForAccessoryWithIdentifier___block_invoke;
      v16[3] = &unk_2786D7050;
      v17 = v7;
      v18 = identifierCopy;
      dispatch_async(queue, v16);
    }
  }
}

void __79__HAPAccessoryServerBrowserBTLE__reportReachabilityForAccessoryWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v2[2](v2, *(a1 + 40), 1);
}

- (void)_performTargetedScanForAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  targetedScanAccessoryIdentifiers = [(HAPAccessoryServerBrowserBTLE *)self targetedScanAccessoryIdentifiers];
  [targetedScanAccessoryIdentifiers addObject:identifierCopy];

  [(HAPAccessoryServerBrowserBTLE *)self _updateTargetedScanTimer];
  [(HAPAccessoryServerBrowserBTLE *)self _startBrowsingForLegacyHAPBTLE100Accessories];
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [hapWiProxBLEBrowser resetLastSeenForTrackedAccessories:identifierCopy];

  hapWiProxBLEBrowser2 = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [hapWiProxBLEBrowser2 startBrowsingForHAPBLEAccessories];
}

- (void)_connectPendingConnections
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    peripheralsPendingConnection = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
    v8 = [peripheralsPendingConnection count];
    peripheralsWithConnectionRequests = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsWithConnectionRequests];
    *buf = 138543874;
    v40 = v6;
    v41 = 2048;
    v42 = v8;
    v43 = 2048;
    v44 = [peripheralsWithConnectionRequests count];
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %tu, Connected/Connecting: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  peripheralsPendingConnection2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
  v11 = [peripheralsPendingConnection2 count];

  if (v11)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    peripheralsPendingConnection3 = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
    v13 = [peripheralsPendingConnection3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(peripheralsPendingConnection3);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _blePeripheralForAccessoryServerIdentifier:v18];
          recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
          v21 = [recentlySeenPairedPeripherals objectForKey:v18];

          if ([v21 connectionPriority] == 1 && v15 == 0)
          {
            v15 = v19;
          }

          v23 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _discoveredAccessoryServerTupleForBLEPeripheral:v19 shouldMerge:0];
          accessoryServer = [v23 accessoryServer];
          [accessoryServer updateConnectionIdleTime:2];
        }

        v14 = [peripheralsPendingConnection3 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);

      if (v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    peripheralsPendingConnection4 = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
    lastObject = [peripheralsPendingConnection4 lastObject];
    v15 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _blePeripheralForAccessoryServerIdentifier:lastObject];

    if (v15)
    {
LABEL_23:
      [(HAPAccessoryServerBrowserBTLE *)selfCopy _removeFromPendingConnections:v15];
      [(HAPAccessoryServerBrowserBTLE *)selfCopy _connectHAPPeripheralWhenAllowed:v15];

      return;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v28;
      v29 = "%{public}@No peripheral to connect";
      v30 = v27;
      v31 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v28;
      v29 = "%{public}@No more pending connections";
      v30 = v27;
      v31 = OS_LOG_TYPE_DEBUG;
LABEL_26:
      _os_log_impl(&dword_22AADC000, v30, v31, v29, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v25);
}

- (void)_connectHAPPeripheralWhenAllowed:(id)allowed
{
  v64 = *MEMORY[0x277D85DE8];
  allowedCopy = allowed;
  qosLimits = [(HAPAccessoryServerBrowserBTLE *)self qosLimits];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    shortDescription = [allowedCopy shortDescription];
    peripheralsWithConnectionRequests = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsWithConnectionRequests];
    v12 = [peripheralsWithConnectionRequests count];
    peripheralsPendingConnection = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
    *buf = 138544130;
    v57 = v9;
    v58 = 2114;
    v59 = shortDescription;
    v60 = 2048;
    v61 = v12;
    v62 = 2048;
    v63 = [peripheralsPendingConnection count];
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Connection request to peripheral: %{public}@, Current connection count : %tu, Pending: %tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  if (qosLimits == 2)
  {
    goto LABEL_22;
  }

  if (qosLimits == 1)
  {
    connectionsObserver = [(HAPAccessoryServerBrowserBTLE *)selfCopy connectionsObserver];

    if (connectionsObserver)
    {
      connectionsObserver2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy connectionsObserver];
      getAvailableHAPConnections = [connectionsObserver2 getAvailableHAPConnections];

      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v20;
        v58 = 1024;
        LODWORD(v59) = getAvailableHAPConnections;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_INFO, "%{public}@: Coex Recommendation = %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = getAvailableHAPConnections >= 3 ? 3 : getAvailableHAPConnections;
      v22 = getAvailableHAPConnections >= 1 ? v21 : 3;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v27;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Not attached to connection observer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v22 = 3;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v31;
      v58 = 1024;
      LODWORD(v59) = v22;
      _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEBUG, "%{public}@: Current available HAP BLE connections: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v28);
    v23 = v22;
  }

  else
  {
    v23 = 3;
  }

  peripheralsWithConnectionRequests2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsWithConnectionRequests];
  v33 = [peripheralsWithConnectionRequests2 count];

  if (v33 < v23)
  {
LABEL_22:
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _addToActiveConnections:allowedCopy];
    v55 = 0;
    v34 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _cbPeripheralForHAPBLEPeripheral:allowedCopy routeMode:&v55];
    if (v34)
    {
      [allowedCopy setCbPeripheral:v34];
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        shortDescription2 = [allowedCopy shortDescription];
        if (v55)
        {
          v40 = @"WHB";
        }

        else
        {
          v40 = @"Local";
        }

        v41 = MEMORY[0x277CCABB0];
        peripheralsWithConnectionRequests3 = [(HAPAccessoryServerBrowserBTLE *)v36 peripheralsWithConnectionRequests];
        v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(peripheralsWithConnectionRequests3, "count")}];
        *buf = 138544130;
        v57 = v38;
        v58 = 2114;
        v59 = shortDescription2;
        v60 = 2114;
        v61 = v40;
        v62 = 2114;
        v63 = v43;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%{public}@Connecting accessory: %{public}@ - route %{public}@. Connections #: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      centralManager = [(HAPAccessoryServerBrowserBTLE *)v36 centralManager];
      [centralManager connectPeripheral:v34 options:0];
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      v51 = selfCopy;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        shortDescription3 = [allowedCopy shortDescription];
        *buf = 138543618;
        v57 = v53;
        v58 = 2114;
        v59 = shortDescription3;
        _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve a CBPeripheral for accessory: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      centralManager = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2101];
      [(HAPAccessoryServerBrowserBTLE *)v51 failedToConnectHAPPeripheral:allowedCopy error:centralManager];
    }
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      v48 = HMFGetLogIdentifier();
      shortDescription4 = [allowedCopy shortDescription];
      *buf = 138543618;
      v57 = v48;
      v58 = 2114;
      v59 = shortDescription4;
      _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEBUG, "%{public}@: Pending connection to peripheral: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    [(HAPAccessoryServerBrowserBTLE *)v46 _addToPendingConnections:allowedCopy];
  }
}

- (void)_removeFromPendingConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  peripheralsPendingConnection = self->_peripheralsPendingConnection;
  identifier = [connectionsCopy identifier];
  LODWORD(peripheralsPendingConnection) = [(NSMutableOrderedSet *)peripheralsPendingConnection containsObject:identifier];

  if (peripheralsPendingConnection)
  {
    v7 = self->_peripheralsPendingConnection;
    identifier2 = [connectionsCopy identifier];
    [(NSMutableOrderedSet *)v7 removeObject:identifier2];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [connectionsCopy shortDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection for peripheral: %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)_addToPendingConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  peripheralsPendingConnection = self->_peripheralsPendingConnection;
  identifier = [connectionsCopy identifier];
  LOBYTE(peripheralsPendingConnection) = [(NSMutableOrderedSet *)peripheralsPendingConnection containsObject:identifier];

  if (peripheralsPendingConnection)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v7 = self->_peripheralsPendingConnection;
    identifier2 = [connectionsCopy identifier];
    [(NSMutableOrderedSet *)v7 addObject:identifier2];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [connectionsCopy shortDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Pending connection to peripheral: %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)peripheralsPendingConnection
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_peripheralsPendingConnection array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (void)_removeFromActiveConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  peripheralsWithConnectionRequests = self->_peripheralsWithConnectionRequests;
  identifier = [connectionsCopy identifier];
  LODWORD(peripheralsWithConnectionRequests) = [(NSMutableOrderedSet *)peripheralsWithConnectionRequests containsObject:identifier];

  if (peripheralsWithConnectionRequests)
  {
    v7 = self->_peripheralsWithConnectionRequests;
    identifier2 = [connectionsCopy identifier];
    [(NSMutableOrderedSet *)v7 removeObject:identifier2];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [connectionsCopy shortDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Removed active connection for peripheral: %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
  }
}

- (void)_addToActiveConnections:(id)connections
{
  v18 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  os_unfair_lock_lock_with_options();
  peripheralsWithConnectionRequests = self->_peripheralsWithConnectionRequests;
  identifier = [connectionsCopy identifier];
  LOBYTE(peripheralsWithConnectionRequests) = [(NSMutableOrderedSet *)peripheralsWithConnectionRequests containsObject:identifier];

  if (peripheralsWithConnectionRequests)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    v7 = self->_peripheralsWithConnectionRequests;
    identifier2 = [connectionsCopy identifier];
    [(NSMutableOrderedSet *)v7 addObject:identifier2];

    os_unfair_lock_unlock(&self->super._lock);
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [connectionsCopy shortDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = shortDescription;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding active connection for peripheral: %{public}@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (id)peripheralsWithConnectionRequests
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_peripheralsWithConnectionRequests array];
  v5 = [v3 arrayWithArray:array];

  os_unfair_lock_unlock(&self->super._lock);

  return v5;
}

- (void)_performTimedConnectionRequestForIdentifier:(id)identifier
{
  v65 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v60 = v8;
    v61 = 2114;
    v62 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to perform a timed connection request for accessory with identifier %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _bleAccessoryServerTupleForIdentifier:identifierCopy];
  accessoryServer = [v9 accessoryServer];

  if (accessoryServer)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      shortDescription = [accessoryServer shortDescription];
      blePeripheral = [accessoryServer blePeripheral];
      shortDescription2 = [blePeripheral shortDescription];
      *buf = 138543874;
      v60 = v14;
      v61 = 2114;
      v62 = shortDescription;
      v63 = 2114;
      v64 = shortDescription2;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Found Accessory Server: %{public}@. Requesting discovery via peripheral: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [accessoryServer discoverAccessories];
    goto LABEL_29;
  }

  [(HAPAccessoryServerBrowserBTLE *)selfCopy _removeDiscoveredPeripheralsWithIdentifier:identifierCopy];
  targetedScanAccessoryIdentifiers = [(HAPAccessoryServerBrowserBTLE *)selfCopy targetedScanAccessoryIdentifiers];
  v19 = [targetedScanAccessoryIdentifiers containsObject:identifierCopy];

  if (!v19)
  {
    hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
    v25 = [hapWiProxBLEBrowser trackedPeripheralForIdentifier:identifierCopy];

    recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
    v27 = [recentlySeenPairedPeripherals objectForKey:identifierCopy];

    if (v27 && [v25 isReachable])
    {
      v28 = [v25 copy];
      stateNumber = [v27 stateNumber];
      [v28 setStateNumber:stateNumber];

      configNumber = [v27 configNumber];
      [v28 setConfigNumber:configNumber];

      category = [v27 category];
      [v28 setCategory:category];
    }

    else
    {
      v28 = 0;
    }

    statusFlags = [v28 statusFlags];
    if ([statusFlags integerValue])
    {
      v33 = [(HAPAccessoryServerBrowser *)selfCopy isPaired:identifierCopy];

      if (v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v38 = v37 = v27;
          *buf = 138543618;
          v60 = v38;
          v61 = 2114;
          v62 = identifierCopy;
          _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_INFO, "%{public}@Found recently seen paired peripheral has invalid pairing status. %{public}@ - Finding it again", buf, 0x16u);

          v27 = v37;
        }

        objc_autoreleasePoolPop(v34);
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (v28)
    {
      v58 = v27;
      [v28 setIsCached:1];
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v42;
        v61 = 2114;
        v62 = v28;
        _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_INFO, "%{public}@Found accessory in recently seen tuple. Creating a new accessory server from peripheral: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      name = [v28 name];
      identifier = [v28 identifier];
      statusFlags2 = [v28 statusFlags];
      stateNumber2 = [v28 stateNumber];
      configNumber2 = [v28 configNumber];
      category2 = [v28 category];
      advertisementFormat = [v28 advertisementFormat];
      setupHash = [v28 setupHash];
      whbStableIdentifier = [v28 whbStableIdentifier];
      LOBYTE(v53) = 0;
      LOBYTE(v52) = 1;
      [(HAPAccessoryServerBrowserBTLE *)v40 _createHAPAccessoryAndNotifyDelegateWithPeripheral:v28 name:name pairingUsername:identifier statusFlags:statusFlags2 stateNumber:stateNumber2 stateChanged:0 connectReason:v52 configNumber:configNumber2 category:category2 connectionIdleTime:v53 format:advertisementFormat setupHash:setupHash encryptedPayload:0 whbStableIdentifier:whbStableIdentifier];

      v27 = v58;
      goto LABEL_28;
    }

LABEL_25:
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543874;
      v60 = v51;
      v61 = 2114;
      v62 = identifierCopy;
      v63 = 2114;
      v64 = v27;
      _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_INFO, "%{public}@Peripheral identifier without server %{public}@ - Finding it again. %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    [(HAPAccessoryServerBrowserBTLE *)v49 _performTargetedScanForAccessoryWithIdentifier:identifierCopy];
LABEL_28:

    goto LABEL_29;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v60 = v23;
    v61 = 2114;
    v62 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Targeted scan is in progress for server identifier: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_29:
}

- (void)_createHAPAccessoryAndNotifyDelegateWithPeripheral:(id)peripheral name:(id)name pairingUsername:(id)username statusFlags:(id)flags stateNumber:(id)number stateChanged:(BOOL)changed connectReason:(unsigned __int8)reason configNumber:(id)self0 category:(id)self1 connectionIdleTime:(unsigned __int8)self2 format:(unint64_t)self3 setupHash:(id)self4 encryptedPayload:(id)self5 whbStableIdentifier:(id)self6
{
  changedCopy = changed;
  reasonCopy = reason;
  v132 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  nameCopy = name;
  usernameCopy = username;
  flagsCopy = flags;
  numberCopy = number;
  configNumberCopy = configNumber;
  categoryCopy = category;
  hashCopy = hash;
  payloadCopy = payload;
  identifierCopy = identifier;
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  v106 = usernameCopy;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    shortDescription = [peripheralCopy shortDescription];
    v28 = HMFBooleanToString();
    v29 = HMFBooleanToString();
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:time];
    *buf = 138544642;
    v121 = v26;
    v122 = 2114;
    v123 = shortDescription;
    v124 = 2048;
    formatCopy = format;
    v126 = 2114;
    v127 = v28;
    v128 = 2114;
    v129 = v29;
    v130 = 2114;
    v131 = v30;
    _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Creating a HAPAccessoryServerBTLE instance for discovered peripheral: '%{public}@' V: '%tu', ST: '%{public}@' ENC: '%{public}@' CT: '%{public}@'", buf, 0x3Eu);

    usernameCopy = v106;
  }

  objc_autoreleasePoolPop(v23);
  v119 = 0;
  if (![(HAPAccessoryServerBrowser *)selfCopy isPaired:usernameCopy])
  {
    v40 = objc_autoreleasePoolPush();
    v41 = selfCopy;
    v42 = HMFGetOSLogHandle();
    accessoryName = nameCopy;
    statusFlags = flagsCopy;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v121 = v43;
      _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_INFO, "%{public}@This accessory is unpaired", buf, 0xCu);

      usernameCopy = v106;
    }

    objc_autoreleasePoolPop(v40);
    v39 = 0;
    v44 = hashCopy;
    goto LABEL_48;
  }

  v31 = [(HAPAccessoryServerBrowserBTLE *)selfCopy cachedAccessoryForIdentifier:usernameCopy];
  v32 = v31;
  accessoryName = nameCopy;
  statusFlags = flagsCopy;
  if (payloadCopy)
  {
    if ([peripheralCopy isCached])
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v121 = v38;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_DEBUG, "%{public}@The advertisement data is from the WiProxBTLE cache, so ignore and don't decrypt.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v39 = 0;
      goto LABEL_9;
    }

    v47 = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapCharacteristicsForEncryptedPayload:payloadCopy identifier:usernameCopy shouldConnect:&v119];
    if (v47)
    {
      v39 = v47;
      firstObject = [v47 firstObject];
      stateNumber = [firstObject stateNumber];

      if (v119)
      {
        numberCopy = stateNumber;
      }

      else
      {
        peripheralInfo = [v32 peripheralInfo];
        stateNumber2 = [peripheralInfo stateNumber];
        v52 = [stateNumber isEqual:stateNumber2];

        if ((v52 & 1) == 0)
        {
          v119 = 1;
          reasonCopy = 2;
          numberCopy = stateNumber;
          statusFlags = flagsCopy;
LABEL_9:
          usernameCopy = v106;
          goto LABEL_27;
        }

        usernameCopy = v106;
        if (!v119)
        {
          v94 = objc_autoreleasePoolPush();
          v95 = selfCopy;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            v97 = HMFGetLogIdentifier();
            *buf = 138543618;
            v121 = v97;
            v122 = 2114;
            v123 = v106;
            _os_log_impl(&dword_22AADC000, v96, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring duplicate broadcast notification for accessory: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v94);
          statusFlags = flagsCopy;
          usernameCopy = v106;
          v44 = hashCopy;
          goto LABEL_60;
        }

        numberCopy = stateNumber;
        statusFlags = flagsCopy;
      }
    }

    else
    {
      if (!v32)
      {
        v90 = objc_autoreleasePoolPush();
        v91 = selfCopy;
        v92 = HMFGetOSLogHandle();
        v44 = hashCopy;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
        {
          v93 = HMFGetLogIdentifier();
          *buf = 138543618;
          v121 = v93;
          v122 = 2114;
          v123 = v106;
          _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_INFO, "%{public}@No accessory cache found for: %{public}@", buf, 0x16u);

          usernameCopy = v106;
        }

        objc_autoreleasePoolPop(v90);
        [(HAPAccessoryServerBrowserBTLE *)v91 _performTimedConnectionRequestForIdentifier:usernameCopy];
        v32 = 0;
        v39 = 0;
        goto LABEL_56;
      }

      v39 = 0;
      changedCopy = 1;
    }

LABEL_27:
    v44 = hashCopy;
    recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
    v54 = [recentlySeenPairedPeripherals objectForKey:usernameCopy];

    if (nameCopy)
    {
      if (statusFlags)
      {
LABEL_29:
        if (!numberCopy)
        {
          stateNumber3 = [v54 stateNumber];
          v56 = stateNumber3;
          if (stateNumber3)
          {
            numberCopy = stateNumber3;
          }

          else
          {
            peripheralInfo2 = [v32 peripheralInfo];
            numberCopy = [peripheralInfo2 stateNumber];

            usernameCopy = v106;
          }
        }

        if (!configNumberCopy)
        {
          configNumber = [v54 configNumber];
          v61 = configNumber;
          if (configNumber)
          {
            configNumberCopy = configNumber;
          }

          else
          {
            peripheralInfo3 = [v32 peripheralInfo];
            configNumberCopy = [peripheralInfo3 configNumber];

            usernameCopy = v106;
          }
        }

        if (!categoryCopy)
        {
          category = [v54 category];
          v64 = category;
          if (category)
          {
            categoryCopy = category;
          }

          else
          {
            peripheralInfo4 = [v32 peripheralInfo];
            categoryCopy = [peripheralInfo4 categoryIdentifier];

            usernameCopy = v106;
          }
        }

        goto LABEL_47;
      }
    }

    else
    {
      peripheralInfo5 = [v32 peripheralInfo];
      accessoryName = [peripheralInfo5 accessoryName];

      if (statusFlags)
      {
        goto LABEL_29;
      }
    }

    peripheralInfo6 = [v32 peripheralInfo];
    statusFlags = [peripheralInfo6 statusFlags];

    goto LABEL_29;
  }

  if (v31 && ([peripheralCopy isCached] & 1) == 0)
  {
    peripheralInfo7 = [v32 peripheralInfo];
    stateNumber4 = [peripheralInfo7 stateNumber];
    if (![numberCopy isEqual:stateNumber4])
    {
      peripheralInfo8 = [v32 peripheralInfo];
      broadcastKey = [peripheralInfo8 broadcastKey];
      if (broadcastKey)
      {
        v78 = broadcastKey;
        peripheralInfo9 = [v32 peripheralInfo];
        keyUpdatedStateNumber = [peripheralInfo9 keyUpdatedStateNumber];

        if (keyUpdatedStateNumber)
        {
          v81 = objc_autoreleasePoolPush();
          v82 = selfCopy;
          v83 = HMFGetOSLogHandle();
          statusFlags = flagsCopy;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = HMFGetLogIdentifier();
            *buf = 138543618;
            v121 = v84;
            v122 = 2114;
            v123 = v106;
            _os_log_impl(&dword_22AADC000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory: %{public}@ should be broadcast notifying.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v81);
          Current = CFAbsoluteTimeGetCurrent();
          peripheralInfo10 = [v32 peripheralInfo];
          [peripheralInfo10 keyUpdatedTime];
          v88 = Current - v87;

          v39 = 0;
          reasonCopy2 = reason;
          if (v88 > 86400.0)
          {
            reasonCopy2 = 3;
          }

          reasonCopy = reasonCopy2;
          v119 = 1;
          accessoryName = nameCopy;
        }

        else
        {
          v39 = 0;
          accessoryName = nameCopy;
          statusFlags = flagsCopy;
        }
      }

      else
      {

        v39 = 0;
      }

      usernameCopy = v106;
      goto LABEL_18;
    }
  }

  v39 = 0;
LABEL_18:
  v44 = hashCopy;
LABEL_47:

LABEL_48:
  if (format == 1 || format == 2)
  {
    v66 = objc_opt_class();
  }

  else
  {
    v66 = 0;
  }

  v67 = [v66 alloc];
  keyStore = [(HAPAccessoryServerBrowser *)selfCopy keyStore];
  LOBYTE(v99) = time;
  LOBYTE(v98) = reasonCopy;
  v32 = [v67 initWithPeripheral:peripheralCopy name:accessoryName pairingUsername:usernameCopy statusFlags:statusFlags stateNumber:numberCopy stateChanged:changedCopy connectReason:v98 configNumber:configNumberCopy category:categoryCopy setupHash:v44 connectionIdleTime:v99 browser:selfCopy keyStore:keyStore whbStableIdentifier:identifierCopy];

  if (v32)
  {
    v69 = [HAPDiscoveredBTLEAccessoryServerTuple discoveredAccessoryServerTupleWithAccessoryServer:v32];
    discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)selfCopy discoveredPeripheralsWithAccessories];
    [discoveredPeripheralsWithAccessories setObject:v69 forKey:peripheralCopy];

    if ([(HAPAccessoryServerBrowserBTLE *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      delegateQueue = [(HAPAccessoryServerBrowserBTLE *)selfCopy delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __251__HAPAccessoryServerBrowserBTLE__createHAPAccessoryAndNotifyDelegateWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_connectionIdleTime_format_setupHash_encryptedPayload_whbStableIdentifier___block_invoke;
      block[3] = &unk_2786D3D20;
      v112 = v39;
      v113 = selfCopy;
      v114 = v32;
      v115 = v106;
      v117 = v119;
      v118 = changedCopy;
      v116 = numberCopy;
      dispatch_async(delegateQueue, block);

      usernameCopy = v106;
    }

LABEL_56:
    stateNumber = numberCopy;
    goto LABEL_60;
  }

  v72 = objc_autoreleasePoolPush();
  v73 = selfCopy;
  v74 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    v75 = HMFGetLogIdentifier();
    *buf = 138543618;
    v121 = v75;
    v122 = 2114;
    v123 = peripheralCopy;
    _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_ERROR, "%{public}@Failed to create a HAPAccessoryServerBTLE instance for discovered peripheral %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v72);
  v32 = 0;
  stateNumber = numberCopy;
  usernameCopy = v106;
LABEL_60:
}

void __251__HAPAccessoryServerBrowserBTLE__createHAPAccessoryAndNotifyDelegateWithPeripheral_name_pairingUsername_statusFlags_stateNumber_stateChanged_connectReason_configNumber_category_connectionIdleTime_format_setupHash_encryptedPayload_whbStableIdentifier___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32) || ([*(a1 + 40) delegate], v2 = objc_claimAutoreleasedReturnValue(), v4 = *(a1 + 40), v3 = *(a1 + 48), v5 = *(a1 + 32), objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stateNumber"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "accessoryServerBrowser:accessoryServer:didUpdateValuesForCharacteristics:stateNumber:broadcast:", v4, v3, v5, v7, 1), v7, v6, v2, v8 = *(a1 + 56), v9 = *(a1 + 40), objc_msgSend(*(a1 + 32), "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "stateNumber"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "updateStateForIdentifier:stateNumber:", v8, v11), v11, v10, !*(a1 + 32)) || *(a1 + 72) == 1)
  {
    v12 = [*(a1 + 40) delegate];
    [v12 accessoryServerBrowser:*(a1 + 40) didFindAccessoryServer:*(a1 + 48) stateChanged:*(a1 + 73) stateNumber:*(a1 + 64)];
  }
}

- (id)hapCharacteristicsForEncryptedPayload:(id)payload identifier:(id)identifier shouldConnect:(BOOL *)connect
{
  v153 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  identifierCopy = identifier;
  [(HAPCharacteristic *)identifierCopy cStringUsingEncoding:4];
  [(HAPCharacteristic *)identifierCopy length];
  TextToHardwareAddress();
  v10 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:identifierCopy];
  v11 = v10;
  if (!v10)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v142 = v41;
      v143 = 2114;
      v144 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] No cached accessory for: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v37 = 0;
    if (connect)
    {
      *connect = 1;
    }

    goto LABEL_76;
  }

  selfCopy2 = self;
  connectCopy = connect;
  peripheralInfo = [v10 peripheralInfo];
  stateNumber = [peripheralInfo stateNumber];
  v14 = [stateNumber unsignedShortValue] + 1;

  v138 = v14;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v138 length:2];
  v126 = v11;
  peripheralInfo2 = [v11 peripheralInfo];
  broadcastKey = [peripheralInfo2 broadcastKey];

  v18 = [payloadCopy subdataWithRange:{objc_msgSend(payloadCopy, "length") - 4, 4}];
  v127 = payloadCopy;
  v19 = [payloadCopy subdataWithRange:{0, objc_msgSend(payloadCopy, "length") - 4}];
  v20 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{-[HAPCharacteristic length](v19, "length")}];
  v133 = v18;
  v130 = identifierCopy;
  if (!broadcastKey)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy2;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543618;
      v142 = v45;
      v143 = 2114;
      v144 = identifierCopy;
      _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] No keys to decrypt for accessory: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    if (connectCopy)
    {
      v36 = 0;
      v37 = 0;
      *connectCopy = 1;
LABEL_39:
      v68 = v133;
      payloadCopy = v127;
      goto LABEL_75;
    }

LABEL_38:
    v36 = 0;
    v37 = 0;
    goto LABEL_39;
  }

  v131 = broadcastKey;
  [broadcastKey bytes];
  [v15 bytes];
  [(HAPCharacteristic *)v19 bytes];
  [(HAPCharacteristic *)v19 length];
  v132 = v20;
  [v20 mutableBytes];
  [v18 bytes];
  v118 = [v18 length];
  v21 = chacha20_poly1305_decrypt_all_64x64_ex();
  if (!v21)
  {
    goto LABEL_30;
  }

  v22 = v21;
  v23 = -1;
  v24 = 6;
  while (1)
  {
    v137 = v23 + v138;
    if (v23)
    {
      break;
    }

LABEL_8:
    ++v23;
    if (!--v24)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy2;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138544130;
        v142 = v30;
        v143 = 2048;
        v144 = v22;
        v145 = 1024;
        *v146 = v138;
        *&v146[4] = 2114;
        *&v146[6] = v130;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] Failed to decrypt status: %ld, expected s#: %d for accessory: %{public}@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v27);
      v31 = objc_autoreleasePoolPush();
      v32 = v28;
      v33 = HMFGetOSLogHandle();
      payloadCopy = v127;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = HMFGetLogIdentifier();
        v35 = [MEMORY[0x277CBEA90] dataWithBytes:v139 length:6];
        *buf = 138545154;
        v142 = v34;
        v143 = 2112;
        v144 = v19;
        v145 = 1024;
        *v146 = v22;
        *&v146[4] = 2112;
        *&v146[6] = broadcastKey;
        *&v146[14] = 2112;
        *&v146[16] = v19;
        v147 = 2112;
        v148 = v15;
        v149 = 2112;
        v150 = v35;
        v151 = 2112;
        v152 = v133;
        _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv] Failed to decrypt: %@, status: %d, key: %@, enc data: %@, nonce: %@, aad: %@ authTag: %@", buf, 0x4Eu);

        payloadCopy = v127;
      }

      objc_autoreleasePoolPop(v31);
      [(HAPAccessoryServerBrowserBTLE *)v32 updateBroadcastKeyForIdentifier:v130 key:0 keyUpdatedStateNumber:0 keyUpdatedTime:0.0];
      v36 = 0;
      v37 = 0;
      if (connectCopy)
      {
        *connectCopy = 1;
      }

      v68 = v133;
      goto LABEL_75;
    }
  }

  v25 = [MEMORY[0x277CBEA90] dataWithBytes:&v137 length:{8, v118}];

  [broadcastKey bytes];
  v134 = v25;
  [v25 bytes];
  [(HAPCharacteristic *)v19 bytes];
  [(HAPCharacteristic *)v19 length];
  [v20 mutableBytes];
  [v133 bytes];
  v118 = [v133 length];
  v26 = chacha20_poly1305_decrypt_all_64x64_ex();
  if (v26)
  {
    v22 = v26;
    broadcastKey = v131;
    v20 = v132;
    v15 = v25;
    goto LABEL_8;
  }

  v46 = objc_autoreleasePoolPush();
  v47 = selfCopy2;
  v48 = HMFGetOSLogHandle();
  identifierCopy = v130;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543874;
    v142 = v49;
    v143 = 2048;
    v144 = v137;
    v145 = 2114;
    *v146 = v130;
    _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv] Decrypted with State Number: %llu for accessory: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v46);
  broadcastKey = v131;
  v20 = v132;
  if (connectCopy && v23 >= 1)
  {
    *connectCopy = 1;
  }

  v15 = v134;
LABEL_30:
  v50 = objc_autoreleasePoolPush();
  v51 = selfCopy2;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    *buf = 138543874;
    v142 = v53;
    v143 = 2114;
    v144 = identifierCopy;
    v145 = 2112;
    *v146 = v20;
    _os_log_impl(&dword_22AADC000, v52, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Decrypted data from %{public}@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v50);
  bytes = [v20 bytes];
  if ([v20 length] < 5)
  {
    goto LABEL_38;
  }

  v55 = [MEMORY[0x277CCABB0] numberWithInteger:*bytes];
  v124 = bytes;
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:bytes[1]];
  v57 = objc_autoreleasePoolPush();
  v58 = v51;
  v59 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v61 = v60 = v56;
    *buf = 138544130;
    v142 = v61;
    v143 = 2114;
    v144 = v55;
    v145 = 2114;
    *v146 = v60;
    *&v146[8] = 2114;
    *&v146[10] = v130;
    _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: State Num: %{public}@ Instance Id: %{public}@ for accessory: %{public}@", buf, 0x2Au);

    v56 = v60;
  }

  objc_autoreleasePoolPop(v57);
  v62 = [(HAPAccessoryServerBrowserBTLE *)v58 _cachedCharacteristicForInstanceID:v56 identifier:v130];
  v135 = v62;
  if (v62)
  {
    v63 = v62;
    characteristicMetadata = [(HAPCharacteristic *)v62 characteristicMetadata];
    format = [characteristicMetadata format];
    v66 = HAPCharacteristicFormatFromString(format);
    if ((v66 - 1) > 9)
    {
      v67 = 0;
    }

    else
    {
      v67 = qword_22AC9DE58[v66 - 1];
    }

    v129 = v55;

    v74 = objc_autoreleasePoolPush();
    v75 = v58;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v78 = v77 = v56;
      *buf = 138543618;
      v142 = v78;
      v143 = 2048;
      v144 = v67;
      _os_log_impl(&dword_22AADC000, v76, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: Value Length %lu", buf, 0x16u);

      v56 = v77;
    }

    objc_autoreleasePoolPop(v74);
    v79 = [v132 length];
    if (!v67 || (v80 = &v67->super.super.isa + 4, v79 < &v67->super.super.isa + 4))
    {
      v90 = objc_autoreleasePoolPush();
      v91 = v75;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v94 = v93 = v56;
        *buf = 138543874;
        v142 = v94;
        v143 = 2048;
        v144 = v67;
        v145 = 2114;
        *v146 = v130;
        _os_log_impl(&dword_22AADC000, v92, OS_LOG_TYPE_ERROR, "%{public}@[Enc Adv] Failed to extract value with length: %lu for accessory: %{public}@", buf, 0x20u);

        v56 = v93;
      }

      objc_autoreleasePoolPop(v90);
      v36 = 0;
      v37 = 0;
      payloadCopy = v127;
      v55 = v129;
      v20 = v132;
      v68 = v133;
      goto LABEL_73;
    }

    v122 = v56;
    v81 = [MEMORY[0x277CBEA90] dataWithBytes:v124 + 4 length:v67];
    v82 = +[HAPDataValueTransformer defaultDataValueTransformer];
    characteristicMetadata2 = [(HAPCharacteristic *)v63 characteristicMetadata];
    format2 = [characteristicMetadata2 format];
    v136 = 0;
    v121 = v81;
    v85 = [v82 reverseTransformedValue:v81 format:HAPCharacteristicFormatFromString(format2) error:&v136];
    v120 = v136;

    v86 = objc_autoreleasePoolPush();
    v87 = v75;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v89 = HMFGetLogIdentifier();
      *buf = 138544130;
      v142 = v89;
      v143 = 2112;
      v144 = v121;
      v145 = 2112;
      *v146 = v85;
      *&v146[8] = 2114;
      *&v146[10] = v130;
      _os_log_impl(&dword_22AADC000, v88, OS_LOG_TYPE_DEBUG, "%{public}@[Enc Adv]: Value Data: %@, Value: %@ for accessory: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v86);
    v119 = v87;
    if (([(HAPCharacteristic *)v63 characteristicProperties]& 0x100) == 0)
    {
      v125 = 0;
      goto LABEL_65;
    }

    if ([v132 length] <= v80)
    {
      v95 = v87;
      v96 = v85;
      v97 = objc_autoreleasePoolPush();
      v98 = v95;
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = HMFGetLogIdentifier();
        *buf = 138543362;
        v142 = v100;
        v101 = "%{public}@[Enc Adv]: Notification context is not included in payload";
        goto LABEL_63;
      }
    }

    else
    {
      if (*(v124 + v80) == 1)
      {
        v125 = _notificationContextTLVDataFromPayload(v124, [v132 length], &v67->super.super.isa + 5, v87);
        goto LABEL_65;
      }

      v102 = v87;
      v96 = v85;
      v97 = objc_autoreleasePoolPush();
      v98 = v102;
      v99 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        v100 = HMFGetLogIdentifier();
        *buf = 138543362;
        v142 = v100;
        v101 = "%{public}@[Enc Adv]: Notification context is not present in payload";
LABEL_63:
        _os_log_impl(&dword_22AADC000, v99, OS_LOG_TYPE_DEBUG, v101, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v97);
    v125 = 0;
    v85 = v96;
LABEL_65:
    v103 = [HAPCharacteristic alloc];
    characteristicUUID = [(HAPCharacteristic *)v63 characteristicUUID];
    uUIDString = [characteristicUUID UUIDString];
    characteristicProperties = [(HAPCharacteristic *)v63 characteristicProperties];
    characteristicMetadata3 = [(HAPCharacteristic *)v63 characteristicMetadata];
    LOBYTE(v118) = 1;
    v108 = v85;
    v36 = [(HAPCharacteristic *)v103 initWithType:uUIDString instanceID:v122 value:v85 stateNumber:v129 properties:characteristicProperties eventNotificationsEnabled:0 implicitWriteWithResponse:v118 metadata:characteristicMetadata3];

    if (v36)
    {
      [(HAPCharacteristic *)v36 setNotificationContext:v125];
      v109 = objc_autoreleasePoolPush();
      v110 = v119;
      v111 = HMFGetOSLogHandle();
      broadcastKey = v131;
      v20 = v132;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        v112 = HMFGetLogIdentifier();
        *buf = 138543874;
        v142 = v112;
        v143 = 2112;
        v144 = v36;
        v145 = 2114;
        *v146 = v130;
        _os_log_impl(&dword_22AADC000, v111, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Returning characteristic: %@ for accessory: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v109);
      v140 = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
    }

    else
    {
      v113 = objc_autoreleasePoolPush();
      v114 = v119;
      v115 = HMFGetOSLogHandle();
      broadcastKey = v131;
      v20 = v132;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
      {
        v116 = HMFGetLogIdentifier();
        *buf = 138543874;
        v142 = v116;
        v143 = 2112;
        v144 = v135;
        v145 = 2114;
        *v146 = v130;
        _os_log_impl(&dword_22AADC000, v115, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv]: Failed to create HAPCharacteristic from: %@ for accessory: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v113);
      v37 = 0;
    }

    v56 = v122;

    v68 = v133;
    payloadCopy = v127;
    v55 = v129;
    if (v36)
    {
LABEL_73:

      goto LABEL_75;
    }
  }

  else
  {
    v69 = objc_autoreleasePoolPush();
    v70 = v58;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v73 = v72 = v56;
      *buf = 138543874;
      v142 = v73;
      v143 = 2114;
      v144 = v130;
      v145 = 2114;
      *v146 = v72;
      _os_log_impl(&dword_22AADC000, v71, OS_LOG_TYPE_INFO, "%{public}@[Enc Adv] No Cached signature for accessory: %{public}@ instanceid: %{public}@", buf, 0x20u);

      v56 = v72;
    }

    objc_autoreleasePoolPop(v69);
    v68 = v133;
    payloadCopy = v127;
  }

  v36 = 0;
  v37 = 0;
LABEL_75:

  identifierCopy = v130;
  v11 = v126;
LABEL_76:

  return v37;
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
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

- (id)_cachedCharacteristicForInstanceID:(id)d identifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:identifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  cachedServices = [v7 cachedServices];
  v24 = [cachedServices countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v9 = *v30;
    v22 = *v30;
    v23 = v7;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(cachedServices);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        cachedCharacteristics = [v11 cachedCharacteristics];
        v13 = [cachedCharacteristics countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(cachedCharacteristics);
              }

              v17 = *(*(&v25 + 1) + 8 * j);
              characteristicInstanceId = [v17 characteristicInstanceId];
              v19 = [characteristicInstanceId isEqual:dCopy];

              if (v19)
              {
                v20 = v17;

                v7 = v23;
                goto LABEL_19;
              }
            }

            v14 = [cachedCharacteristics countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v22;
      }

      v20 = 0;
      v7 = v23;
      v24 = [cachedServices countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

- (id)retrieveCBPeripheralWithUUID:(id)d blePeripheral:(id)peripheral
{
  dCopy = d;
  peripheralCopy = peripheral;
  whbStableIdentifier = [peripheralCopy whbStableIdentifier];
  if (whbStableIdentifier)
  {
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:dCopy stableIdentifier:whbStableIdentifier routeMode:0];
  }

  else
  {
    identifier = [peripheralCopy identifier];
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:dCopy stableIdentifier:identifier routeMode:0];
  }

  return v9;
}

- (void)accessoryServerBrowserBTLE:(id)e didDiscoverHAPPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (peripheralCopy)
  {
    name = [peripheralCopy name];
    identifier = [peripheralCopy identifier];
    advertisementFormat = [peripheralCopy advertisementFormat];
    statusFlags = [peripheralCopy statusFlags];
    stateNumber = [peripheralCopy stateNumber];
    category = [peripheralCopy category];
    configNumber = [peripheralCopy configNumber];
    setupHash = [peripheralCopy setupHash];
    encryptedPayload = [peripheralCopy encryptedPayload];
    whbStableIdentifier = [peripheralCopy whbStableIdentifier];
    [(HAPAccessoryServerBrowserBTLE *)self _didDiscoverPeripheral:peripheralCopy accessoryName:name pairingIdentifier:identifier format:advertisementFormat statusFlags:statusFlags stateNumber:stateNumber category:category configNumber:configNumber setupHash:setupHash encryptedPayload:encryptedPayload whbStableIdentifier:whbStableIdentifier];
  }
}

- (id)_bleAccessoryServerTupleForIdentifier:(id)identifier
{
  v4 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForAccessoryServerIdentifier:identifier];
  if (v4)
  {
    discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
    v6 = [discoveredPeripheralsWithAccessories objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_blePeripheralForAccessoryServerIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        discoveredPeripheralsWithAccessories2 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
        v13 = [discoveredPeripheralsWithAccessories2 objectForKey:v11];
        accessoryServer = [v13 accessoryServer];

        identifier = [accessoryServer identifier];
        LOBYTE(v13) = [identifier isEqual:identifierCopy];

        if (v13)
        {
          v16 = v11;

          goto LABEL_11;
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_blePeripheralForCBPeripheral:(id)peripheral
{
  v51 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];

  if (!identifier)
  {
    v26 = 0;
    goto LABEL_27;
  }

  array = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  obj = allObjects;
  v10 = [allObjects countByEnumeratingWithState:&v45 objects:v50 count:16];
  v38 = array;
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v40 = *v46;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v46 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v45 + 1) + 8 * i);
      selfCopy = self;
      discoveredPeripheralsWithAccessories2 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
      v16 = [discoveredPeripheralsWithAccessories2 objectForKey:v13];
      accessoryServer = [v16 accessoryServer];

      if (accessoryServer)
      {
        cbPeripheral = [v13 cbPeripheral];
        if ([cbPeripheral isEqual:peripheralCopy])
        {
        }

        else
        {
          peripheralUUIDs = [v13 peripheralUUIDs];
          [peripheralCopy identifier];
          v21 = v20 = peripheralCopy;
          v22 = [peripheralUUIDs containsObject:v21];

          peripheralCopy = v20;
          array = v38;

          if (!v22)
          {
            goto LABEL_12;
          }
        }

        [array addObject:v13];
      }

LABEL_12:

      self = selfCopy;
    }

    v11 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v11);
LABEL_14:

  v23 = [array count];
  firstObject = [array firstObject];
  v25 = array;
  v26 = firstObject;
  if (v23 >= 2)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v41 + 1) + 8 * j);
          [v32 lastSeen];
          v34 = v33;
          [v26 lastSeen];
          if (v34 > v35)
          {
            v36 = v32;

            v26 = v36;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }
  }

LABEL_27:

  return v26;
}

- (id)_cbPeripheralForPeripheralUUID:(id)d stableIdentifier:(id)identifier routeMode:(unsigned __int8 *)mode
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    if (mode)
    {
      *mode = 0;
    }

    dCopy = d;
    centralManager = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    v12[0] = dCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

    v9 = [centralManager retrievePeripheralsWithIdentifiers:v8];
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_cbPeripheralForHAPBLEPeripheral:(id)peripheral routeMode:(unsigned __int8 *)mode
{
  peripheralCopy = peripheral;
  peripheralUUIDs = [peripheralCopy peripheralUUIDs];
  lastObject = [peripheralUUIDs lastObject];
  whbStableIdentifier = [peripheralCopy whbStableIdentifier];
  if (whbStableIdentifier)
  {
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:lastObject stableIdentifier:whbStableIdentifier routeMode:mode];
  }

  else
  {
    identifier = [peripheralCopy identifier];
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _cbPeripheralForPeripheralUUID:lastObject stableIdentifier:identifier routeMode:mode];
  }

  return v10;
}

- (void)_monitorDisconnectionOfHAPPeripheral:(id)peripheral peripheral:(id)a4
{
  peripheralCopy = peripheral;
  v7 = a4;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (v7)
  {
    peripheralDisconnectionMonitorMap = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
    v10 = [peripheralDisconnectionMonitorMap objectForKey:v7];

    if (!v10)
    {
      workQueue2 = [(HAPAccessoryServerBrowser *)self workQueue];
      v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue2);

      peripheralDisconnectionMonitorMap2 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
      [peripheralDisconnectionMonitorMap2 setObject:v12 forKey:v7];

      objc_initWeak(&location, self);
      v14 = dispatch_time(0, 1000000000 * [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionTimeout]);
      dispatch_source_set_timer(v12, v14, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __81__HAPAccessoryServerBrowserBTLE__monitorDisconnectionOfHAPPeripheral_peripheral___block_invoke;
      v15[3] = &unk_2786D6F50;
      objc_copyWeak(&v18, &location);
      v16 = v7;
      v17 = peripheralCopy;
      dispatch_source_set_event_handler(v12, v15);
      dispatch_resume(v12);

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __81__HAPAccessoryServerBrowserBTLE__monitorDisconnectionOfHAPPeripheral_peripheral___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained peripheralDisconnectionMonitorMap];
  v4 = [v3 objectForKey:*(a1 + 32)];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:8];
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v11 = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to disconnect from peripheral: %@ with error: %{public}@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [v7 disconnectedHAPPeripheral:*(a1 + 40) error:v5];
  }
}

- (void)_stopMonitorDisconnectionOfCBPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (peripheralCopy)
  {
    v8 = peripheralCopy;
    peripheralDisconnectionMonitorMap = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
    v6 = [peripheralDisconnectionMonitorMap objectForKey:v8];

    if (v6)
    {
      dispatch_source_cancel(v6);
      peripheralDisconnectionMonitorMap2 = [(HAPAccessoryServerBrowserBTLE *)self peripheralDisconnectionMonitorMap];
      [peripheralDisconnectionMonitorMap2 removeObjectForKey:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_disconnectFromHAPBLEPeripheral:(id)peripheral cbPeripheral:(id)cbPeripheral
{
  v31 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  cbPeripheralCopy = cbPeripheral;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (peripheralCopy | cbPeripheralCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      shortDescription = [peripheralCopy shortDescription];
      v25 = 138543874;
      v26 = v13;
      v27 = 2114;
      v28 = shortDescription;
      v29 = 2112;
      v30 = cbPeripheralCopy;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from Peripheral: %{public}@ (%@)", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if (peripheralCopy)
    {
      [(HAPAccessoryServerBrowserBTLE *)selfCopy _removeFromActiveConnections:peripheralCopy];
    }

    state = [cbPeripheralCopy state];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (state)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = cbPeripheralCopy;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Cancelling connection to peripheral: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HAPAccessoryServerBrowserBTLE *)v17 _monitorDisconnectionOfHAPPeripheral:peripheralCopy peripheral:cbPeripheralCopy];
      centralManager = [(HAPAccessoryServerBrowserBTLE *)v17 centralManager];
      [centralManager cancelPeripheralConnection:cbPeripheralCopy];
    }

    else
    {
      if (v19)
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = cbPeripheralCopy;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Peripheral: %@ is already disconnected", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v24 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:23];
      [(HAPAccessoryServerBrowserBTLE *)v17 disconnectedHAPPeripheral:peripheralCopy error:v24];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid blePeripheral / cbPeripheral", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)disconnectedHAPPeripheral:(id)peripheral error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  errorCopy = error;
  cbPeripheral = [peripheralCopy cbPeripheral];
  if (peripheralCopy)
  {
    [(HAPAccessoryServerBrowserBTLE *)self _removeFromActiveConnections:peripheralCopy];
    v9 = [(HAPAccessoryServerBrowserBTLE *)self _recentlySeenPairedPeripheralTupleWithPeripheral:peripheralCopy];
    v10 = [(HAPAccessoryServerBrowserBTLE *)self _discoveredAccessoryServerTupleForBLEPeripheral:peripheralCopy shouldMerge:0];
    accessoryServer = [v10 accessoryServer];
  }

  else
  {
    v9 = 0;
    accessoryServer = 0;
  }

  [(HAPAccessoryServerBrowserBTLE *)self _stopMonitorDisconnectionOfCBPeripheral:cbPeripheral];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [peripheralCopy shortDescription];
    *buf = 138544130;
    v30 = v15;
    v31 = 2114;
    v32 = shortDescription;
    v33 = 2112;
    v34 = cbPeripheral;
    v35 = 2114;
    v36 = errorCopy;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Disconnected from BLE peripheral: %{public}@, CB Peripheral: %@ with error %{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if (errorCopy && v9)
  {
    hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
    identifier = [peripheralCopy identifier];
    [hapWiProxBLEBrowser resetLastSeenForTrackedAccessories:identifier];

    delegate = [(HAPAccessoryServerBrowserBTLE *)selfCopy delegate];
    identifier2 = [peripheralCopy identifier];
    [delegate accessoryServerBrowser:selfCopy didChangeReachability:0 forAccessoryServerWithIdentifier:identifier2];
  }

  [v9 setNotifyingCharacteristicUpdated:0];
  if (accessoryServer)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke;
    v26[3] = &unk_2786D3C08;
    v26[4] = selfCopy;
    v27 = accessoryServer;
    v28 = errorCopy;
    [v27 handleDisconnectionWithError:v28 completionHandler:v26];
    [peripheralCopy disconnectedFromCBPeripheral:cbPeripheral shouldRemove:0];
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _connectPendingConnections];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = cbPeripheral;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory for disconnected peripheral: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (peripheralCopy)
    {
      identifier3 = [peripheralCopy identifier];
      [(HAPAccessoryServerBrowserBTLE *)v22 _removeDiscoveredPeripheralsWithIdentifier:identifier3];
    }
  }
}

void __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAPAccessoryServerBrowserBTLE_disconnectedHAPPeripheral_error___block_invoke_2;
    block[3] = &unk_2786D7078;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    dispatch_async(v3, block);
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (peripheralCopy)
  {
    [(HAPAccessoryServerBrowserBTLE *)self _stopMonitorDisconnectionOfCBPeripheral:peripheralCopy];
  }

  v8 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:peripheralCopy];
  [(HAPAccessoryServerBrowserBTLE *)self disconnectedHAPPeripheral:v8 error:errorCopy];
}

- (void)failedToConnectHAPPeripheral:(id)peripheral error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  errorCopy = error;
  if (peripheralCopy && (-[HAPAccessoryServerBrowserBTLE _removeFromActiveConnections:](self, "_removeFromActiveConnections:", peripheralCopy), -[HAPAccessoryServerBrowserBTLE _discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:](self, "_discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:", peripheralCopy, 0), v8 = objc_claimAutoreleasedReturnValue(), [v8 accessoryServer], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v13;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = errorCopy;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to connect to accessory %{public}@ with error %{public}@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    cbPeripheral = [peripheralCopy cbPeripheral];
    [v9 handleConnectionWithPeripheral:cbPeripheral withError:errorCopy];

    [(HAPAccessoryServerBrowserBTLE *)selfCopy _notifyDelegatesOfRemovedAccessoryServer:v9 error:errorCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      shortDescription = [peripheralCopy shortDescription];
      v21 = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = shortDescription;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, "%{public}@unexpected disconnection without server from peripheral: %{public}@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  cbPeripheral2 = [peripheralCopy cbPeripheral];
  [peripheralCopy connectedToCBPeripheral:cbPeripheral2 error:errorCopy];

  [(HAPAccessoryServerBrowserBTLE *)self _connectPendingConnections];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:peripheralCopy];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [v11 shortDescription];
    v17 = 138544130;
    v18 = v15;
    v19 = 2114;
    v20 = shortDescription;
    v21 = 2112;
    v22 = peripheralCopy;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_INFO, "%{public}@Did fail to connect BLE peripheral: %{public}@ with CBPeripheral: %@ with error %{public}@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  [(HAPAccessoryServerBrowserBTLE *)selfCopy failedToConnectHAPPeripheral:v11 error:errorCopy];
}

- (void)connectedHAPPeripheral:(id)peripheral
{
  v28 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(HAPAccessoryServerBrowserBTLE *)self _blePeripheralForCBPeripheral:peripheralCopy];
  v7 = v6;
  if (v6 && ([v6 connectedToCBPeripheral:peripheralCopy error:0], -[HAPAccessoryServerBrowserBTLE _discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:](self, "_discoveredAccessoryServerTupleForBLEPeripheral:shouldMerge:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "accessoryServer"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      shortDescription = [v7 shortDescription];
      v22 = 138543874;
      v23 = v13;
      v24 = 2114;
      v25 = shortDescription;
      v26 = 2112;
      v27 = peripheralCopy;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully connected to BLE Peripheral: %{public}@ with CB Peripheral: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    date = [MEMORY[0x277CBEAA8] date];
    [v9 setConnectionStartTime:date];

    peripheralsPendingConnection = [(HAPAccessoryServerBrowserBTLE *)selfCopy peripheralsPendingConnection];
    v17 = [peripheralsPendingConnection count];

    if (v17)
    {
      [v9 updateConnectionIdleTime:1];
    }

    [v9 handleConnectionWithPeripheral:peripheralCopy withError:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v21;
      v24 = 2114;
      v25 = v7;
      v26 = 2112;
      v27 = peripheralCopy;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@unexpected connection complete without server: %{public}@ for CB peripheral: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [(HAPAccessoryServerBrowserBTLE *)selfCopy2 _disconnectFromHAPBLEPeripheral:v7 cbPeripheral:peripheralCopy];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowserBTLE_didDiscoverAccessoryWithAdvertisementData_])
  {
    delegateQueue = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HAPAccessoryServerBrowserBTLE_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke;
    block[3] = &unk_2786D7050;
    block[4] = self;
    v34 = dataCopy;
    dispatch_async(delegateQueue, block);
  }

  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  selfCopy = self;
  v25 = dataCopy;
  v11 = [(HAPAccessoryServerBrowserBTLE *)self _parseAdvertisementData:dataCopy forPeripheral:peripheralCopy name:&v32 pairingUsername:&v31 statusFlags:&v30 stateNumber:&v29 category:&v28 configNumber:&v27 setupHash:&v26];
  v12 = v32;
  v13 = v31;
  v14 = v30;
  v15 = v29;
  v16 = v28;
  v17 = v27;
  v22 = v26;
  v18 = [HAPBLEPeripheral alloc];
  v23 = peripheralCopy;
  identifier = [peripheralCopy identifier];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v21 = [(HAPBLEPeripheral *)v18 initWithName:v12 peripheralUUID:identifier identifier:v13 hapVersion:v20 hkType:0 advInterval:0 statusFlags:v14 category:v16 stateNumber:v15 configNumber:v17 setupHash:0 encryptedPayload:0 whbStableIdentifier:0 advDeviceAddress:0];

  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if ((HAPIsHH2Enabled_hh2Enabled & 1) == 0)
  {
    [(HAPBLEPeripheral *)v21 setCbPeripheral:v23];
  }

  [(HAPAccessoryServerBrowserBTLE *)selfCopy _didDiscoverPeripheral:v21 accessoryName:v12 pairingIdentifier:v13 format:v11 statusFlags:v14 stateNumber:v15 category:v16 configNumber:v17 setupHash:v22 encryptedPayload:0 whbStableIdentifier:0];
}

void __93__HAPAccessoryServerBrowserBTLE_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowserBTLE:*(a1 + 32) didDiscoverAccessoryWithAdvertisementData:*(a1 + 40)];
}

- (void)centralManagerDidUpdateState:(id)state
{
  v79 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  state = [stateCopy state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    if (state > 5)
    {
      v9 = @"Unenumerated State?";
    }

    else
    {
      v9 = off_2786D3D40[state];
    }

    v10 = v9;
    *buf = 138543874;
    v74 = v8;
    v75 = 2048;
    v76 = state;
    v77 = 2112;
    v78 = v10;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Central manager changed state: %ld (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (state > 3)
  {
    if (state != 4)
    {
      if (state == 5)
      {
        [(HAPAccessoryServerBrowserBTLE *)selfCopy _callPowerOnCompletionsWithError:0];
        if ([(HAPAccessoryServerBrowserBTLE *)selfCopy isPerformingGeneralScan])
        {
          v18 = objc_autoreleasePoolPush();
          v19 = selfCopy;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v74 = v21;
            _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Central manager was powered on and there is an outstanding accessory server discovery request so start actively scanning", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          [(HAPAccessoryServerBrowserBTLE *)v19 _startBrowsingForLegacyHAPBTLE100Accessories];
        }

        reachabilityCompletion = [(HAPAccessoryServerBrowserBTLE *)selfCopy reachabilityCompletion];
        v15 = reachabilityCompletion;
        if (reachabilityCompletion)
        {
          (*(reachabilityCompletion + 16))(reachabilityCompletion, 1, 0);
        }

        goto LABEL_46;
      }

      goto LABEL_47;
    }

LABEL_22:
    v55 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:57 reason:@"Bluetooth was turned off or reset" underlyingError:0];
    [(HAPAccessoryServerBrowserBTLE *)selfCopy _callPowerOnCompletionsWithError:v55];
    reachabilityCompletion2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy reachabilityCompletion];
    v24 = reachabilityCompletion2;
    if (reachabilityCompletion2)
    {
      (*(reachabilityCompletion2 + 16))(reachabilityCompletion2, 0, v55);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    pairedAccessoryIdentifiers = [(HAPAccessoryServerBrowser *)selfCopy pairedAccessoryIdentifiers];
    v26 = [pairedAccessoryIdentifiers copy];

    v27 = [v26 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v27)
    {
      v28 = *v68;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v68 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v67 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          v32 = selfCopy;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543362;
            v74 = v34;
            _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_INFO, "%{public}@Reporting reachability changed to NO for all paired BLE accessories on Bluetooth Power OFF", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
          delegate = [(HAPAccessoryServerBrowserBTLE *)v32 delegate];
          [delegate accessoryServerBrowser:v32 didChangeReachability:0 forAccessoryServerWithIdentifier:v30];
        }

        v27 = [v26 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v27);
    }

    v36 = MEMORY[0x277CBEA60];
    discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)selfCopy discoveredPeripheralsWithAccessories];
    keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v40 = [v36 arrayWithArray:allObjects];

    objc_initWeak(buf, selfCopy);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke;
    v65[3] = &unk_2786D3CD0;
    objc_copyWeak(&v66, buf);
    v41 = MEMORY[0x231885210](v65);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v40;
    v42 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v42)
    {
      v43 = *v62;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v62 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v61 + 1) + 8 * j);
          v46 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _discoveredAccessoryServerTupleForBLEPeripheral:v45 shouldMerge:0];
          accessoryServer = [v46 accessoryServer];

          if (accessoryServer)
          {
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_2;
            v56[3] = &unk_2786D3CF8;
            v56[4] = selfCopy;
            v48 = accessoryServer;
            v57 = v48;
            v49 = v55;
            v58 = v49;
            v50 = v41;
            v59 = v45;
            v60 = v50;
            [v48 handleDisconnectionWithError:v49 completionHandler:v56];
          }

          else
          {
            v51 = MEMORY[0x231885210](v41);
            v52 = v51;
            if (v51)
            {
              (*(v51 + 16))(v51, v45);
            }
          }
        }

        v42 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v42);
    }

    objc_destroyWeak(&v66);
    objc_destroyWeak(buf);

    v15 = v55;
    goto LABEL_46;
  }

  if (state == 1)
  {
    goto LABEL_22;
  }

  if (state == 2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@BTLE is unsupported on this system", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:48 reason:@"Failed to power on Bluetooth because Bluetooth LE is unsupported on this system." underlyingError:0];
    [(HAPAccessoryServerBrowserBTLE *)v12 _callPowerOnCompletionsWithError:v15];
    reachabilityCompletion3 = [(HAPAccessoryServerBrowserBTLE *)v12 reachabilityCompletion];
    v17 = reachabilityCompletion3;
    if (reachabilityCompletion3)
    {
      (*(reachabilityCompletion3 + 16))(reachabilityCompletion3, 0, v15);
    }

LABEL_46:
  }

LABEL_47:
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeFromActiveConnections:v3];
  [WeakRetained _removeFromPendingConnections:v3];
  v4 = [WeakRetained discoveredPeripheralsWithAccessories];
  [v4 removeObjectForKey:v3];
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_3;
  block[3] = &unk_2786D5C48;
  v6 = *(a1 + 32);
  v3 = *(&v6 + 1);
  v4 = *(a1 + 48);
  v10 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);
}

void __62__HAPAccessoryServerBrowserBTLE_centralManagerDidUpdateState___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _notifyDelegatesOfRemovedAccessoryServer:*(a1 + 40) error:*(a1 + 48)];
  v2 = MEMORY[0x231885210](*(a1 + 64));
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 56));
    v2 = v3;
  }
}

- (void)_didDiscoverPeripheral:(id)peripheral accessoryName:(id)name pairingIdentifier:(id)identifier format:(unint64_t)format statusFlags:(id)flags stateNumber:(id)number category:(id)category configNumber:(id)self0 setupHash:(id)self1 encryptedPayload:(id)self2 whbStableIdentifier:(id)self3
{
  v142 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  nameCopy = name;
  identifierCopy = identifier;
  flagsCopy = flags;
  numberCopy = number;
  categoryCopy = category;
  v23 = flagsCopy;
  configNumberCopy = configNumber;
  hashCopy = hash;
  payloadCopy = payload;
  stableIdentifierCopy = stableIdentifier;
  identifier = [peripheralCopy identifier];
  selfCopy = self;
  selfCopy2 = self;
  v27 = numberCopy;
  v28 = [(HAPAccessoryServerBrowserBTLE *)selfCopy2 _blePeripheralForAccessoryServerIdentifier:identifier];

  if (format)
  {
    formatCopy3 = format;
    cbPeripheral = [peripheralCopy cbPeripheral];
    if ([cbPeripheral state])
    {

      goto LABEL_37;
    }

    [v28 cbPeripheral];
    v31 = v101 = categoryCopy;
    state = [v31 state];

    categoryCopy = v101;
    if (state)
    {
      goto LABEL_37;
    }

    v119 = 0;
    v33 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _discoveredAccessoryServerTupleForBLEPeripheral:peripheralCopy shouldMerge:1];
    if (!v33)
    {
      v111 = 0;
      if (payloadCopy || [(HAPAccessoryServerBrowserBTLE *)selfCopy _shouldCreateHAPAccessoryServerWithIdentifier:identifierCopy statusFlags:v23 stateNumber:v27 category:v101 configNumber:configNumberCopy name:nameCopy forPeripheral:peripheralCopy advertisementFormat:format setupHash:hashCopy stateChanged:&v111 + 1 connectReason:&v111])
      {
        v91 = nameCopy;
        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v89 = HMFGetLogIdentifier();
          name = [peripheralCopy name];
          v49 = HMFBooleanToString();
          v50 = HMFBooleanToString();
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v111];
          *buf = 138545922;
          v121 = v89;
          v122 = 2112;
          v123 = name;
          v124 = 2114;
          v125 = identifierCopy;
          v126 = 2114;
          v127 = v27;
          v128 = 2114;
          v129 = v101;
          v130 = 2114;
          v131 = v23;
          v132 = 2048;
          formatCopy2 = format;
          v134 = 2114;
          v135 = v49;
          v136 = 2114;
          v137 = v50;
          v138 = 2114;
          v139 = configNumberCopy;
          v140 = 2114;
          v141 = v51;
          v52 = v51;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory '%@/%{public}@/%{public}@' C: '%{public}@' SF: '%{public}@' V: '%tu' ENC: '%{public}@' ST: '%{public}@' C#: '%{public}@', CR: '%{public}@'", buf, 0x70u);

          formatCopy3 = format;
        }

        objc_autoreleasePoolPop(v46);
        mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
        categoryCopy = v101;
        [mEMORY[0x277D0F8C0] reportIncomingAdvertisementChange:identifierCopy accessoryCategory:v101];

        LOBYTE(v88) = HIBYTE(v111);
        LOBYTE(v87) = v111;
        nameCopy = v91;
        [(HAPAccessoryServerBrowserBTLE *)v47 _createHAPAccessoryAndNotifyDelegateWithPeripheral:peripheralCopy name:v91 pairingUsername:identifierCopy statusFlags:v23 stateNumber:v27 stateChanged:v87 connectReason:configNumberCopy configNumber:v101 category:v88 connectionIdleTime:formatCopy3 format:hashCopy setupHash:payloadCopy encryptedPayload:stableIdentifierCopy whbStableIdentifier:?];
        v33 = 0;
      }

      goto LABEL_36;
    }

    v95 = v23;
    recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
    identifier2 = [peripheralCopy identifier];
    v36 = [recentlySeenPairedPeripherals objectForKey:identifier2];
    [v36 updateWithPeripheral:peripheralCopy];

    [(HAPAccessoryServerBrowserBTLE *)selfCopy _reportReachabilityForAccessoryWithIdentifier:identifierCopy];
    v37 = [(HAPAccessoryServerBrowser *)selfCopy isPaired:identifierCopy];
    if (payloadCopy && v37 && ([peripheralCopy isCached] & 1) == 0)
    {
      v38 = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapCharacteristicsForEncryptedPayload:payloadCopy identifier:identifierCopy shouldConnect:&v119];
      if (!v38)
      {
        v23 = v95;
        categoryCopy = v101;
        if (v119 == 1 && [(HAPAccessoryServerBrowserBTLE *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          delegateQueue = [(HAPAccessoryServerBrowserBTLE *)selfCopy delegateQueue];
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke;
          v115[3] = &unk_2786D7078;
          v116 = v33;
          v117 = selfCopy;
          v118 = v27;
          dispatch_async(delegateQueue, v115);
        }

        goto LABEL_36;
      }

      v90 = v38;
      delegate = [(HAPAccessoryServerBrowserBTLE *)selfCopy delegate];
      accessoryServer = [v33 accessoryServer];
      [v90 firstObject];
      v103 = v97 = v33;
      stateNumber = [v103 stateNumber];
      [delegate accessoryServerBrowser:selfCopy accessoryServer:accessoryServer didUpdateValuesForCharacteristics:v90 stateNumber:stateNumber broadcast:1];

      v33 = v97;
      firstObject = [v90 firstObject];
      stateNumber2 = [firstObject stateNumber];
      [(HAPAccessoryServerBrowserBTLE *)selfCopy updateStateForIdentifier:identifierCopy stateNumber:stateNumber2];
    }

    accessoryServer2 = [v33 accessoryServer];
    identifier3 = [accessoryServer2 identifier];
    if ([identifier3 isEqualToString:identifierCopy])
    {

      categoryCopy = v101;
    }

    else
    {
      accessoryServer3 = [v33 accessoryServer];
      [accessoryServer3 identifier];
      v55 = v98 = v33;
      v104 = [(HAPAccessoryServerBrowser *)selfCopy isPaired:v55];

      v33 = v98;
      categoryCopy = v101;
      if (!v104)
      {
        v94 = nameCopy;
        v78 = objc_autoreleasePoolPush();
        v79 = selfCopy;
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v82 = v81 = v78;
          accessoryServer4 = [v98 accessoryServer];
          identifier4 = [accessoryServer4 identifier];
          *buf = 138543874;
          v121 = v82;
          v122 = 2114;
          v123 = identifier4;
          v124 = 2114;
          v125 = identifierCopy;
          _os_log_impl(&dword_22AADC000, v80, OS_LOG_TYPE_INFO, "%{public}@Unpaired Accessory updated its identifier from %{public}@ to %{public}@", buf, 0x20u);

          v33 = v98;
          categoryCopy = v101;

          v78 = v81;
        }

        objc_autoreleasePoolPop(v78);
        accessoryServer5 = [v33 accessoryServer];
        [(HAPAccessoryServerBrowserBTLE *)v79 _notifyDelegatesOfRemovedAccessoryServer:accessoryServer5 error:0];

        nameCopy = v94;
        v23 = v95;
        goto LABEL_36;
      }
    }

    [v33 setLastSeen:CFAbsoluteTimeGetCurrent()];
    accessoryServer6 = [v33 accessoryServer];
    if (v27)
    {
      accessoryServer7 = [v33 accessoryServer];
      stateNumber3 = [accessoryServer7 stateNumber];
      v58 = [stateNumber3 isEqualToNumber:v27];

      categoryCopy = v101;
      if ((v58 & 1) == 0)
      {
        v59 = objc_autoreleasePoolPush();
        v60 = selfCopy;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v62 = v92 = v59;
          shortDescription = [accessoryServer6 shortDescription];
          [peripheralCopy shortDescription];
          v64 = v99 = v33;
          *buf = 138544130;
          v121 = v62;
          v122 = 2114;
          v123 = shortDescription;
          v124 = 2114;
          v125 = v27;
          v126 = 2114;
          v127 = v64;
          _os_log_impl(&dword_22AADC000, v61, OS_LOG_TYPE_INFO, "%{public}@Discovered accessory: %{public}@ updated State Number to %{public}@ for %{public}@", buf, 0x2Au);

          v33 = v99;
          categoryCopy = v101;

          v59 = v92;
        }

        objc_autoreleasePoolPop(v59);
        accessoryServer8 = [v33 accessoryServer];
        [accessoryServer8 setStateNumber:v27];

        if ([(HAPAccessoryServerBrowserBTLE *)v60 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
        {
          delegateQueue2 = [(HAPAccessoryServerBrowserBTLE *)v60 delegateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke_164;
          block[3] = &unk_2786D7078;
          block[4] = v60;
          v113 = accessoryServer6;
          v114 = v27;
          dispatch_async(delegateQueue2, block);
        }
      }
    }

    if (nameCopy)
    {
      v67 = [nameCopy length];
      name2 = [accessoryServer6 name];
      v69 = [name2 length];

      categoryCopy = v101;
      if (v67 > v69)
      {
        v93 = nameCopy;
        v70 = objc_autoreleasePoolPush();
        v71 = selfCopy;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v74 = v73 = v70;
          identifier5 = [accessoryServer6 identifier];
          [accessoryServer6 name];
          v76 = v100 = v33;
          *buf = 138544130;
          v121 = v74;
          v122 = 2114;
          v123 = identifier5;
          v124 = 2112;
          v125 = v76;
          v126 = 2112;
          v127 = v93;
          _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_INFO, "%{public}@Discovered accessory: %{public}@ updated name from %@ to %@", buf, 0x2Au);

          v33 = v100;
          categoryCopy = v101;

          v70 = v73;
        }

        objc_autoreleasePoolPop(v70);
        accessoryServer9 = [v33 accessoryServer];
        nameCopy = v93;
        [accessoryServer9 setName:v93];
      }
    }

    v23 = v95;
    if (v95)
    {
      [accessoryServer6 setHasPairings:{(objc_msgSend(v95, "unsignedCharValue") & 1) == 0}];
    }

LABEL_36:
  }

LABEL_37:
}

void __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) accessoryServer];
  v2 = [*(a1 + 40) delegate];
  [v2 accessoryServerBrowser:*(a1 + 40) didFindAccessoryServer:v3 stateChanged:1 stateNumber:*(a1 + 48)];
}

void __188__HAPAccessoryServerBrowserBTLE__didDiscoverPeripheral_accessoryName_pairingIdentifier_format_statusFlags_stateNumber_category_configNumber_setupHash_encryptedPayload_whbStableIdentifier___block_invoke_164(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:1 stateNumber:*(a1 + 48)];
}

- (id)_discoveredAccessoryServerTupleForBLEPeripheral:(id)peripheral shouldMerge:(BOOL)merge
{
  mergeCopy = merge;
  v23 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allObjects);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([peripheralCopy isEqual:v14])
        {
          discoveredPeripheralsWithAccessories2 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
          v15 = [discoveredPeripheralsWithAccessories2 objectForKey:v14];

          if (mergeCopy)
          {
            [v14 mergeWithPeripheral:peripheralCopy];
          }

          goto LABEL_12;
        }
      }

      v11 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)_removeDiscoveredPeripheralsWithIdentifier:(id)identifier
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];

  obj = keyEnumerator;
  v7 = [keyEnumerator countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [(HAPAccessoryServerBrowserBTLE *)self _discoveredAccessoryServerTupleForBLEPeripheral:v11 shouldMerge:0];
        accessoryServer = [v12 accessoryServer];

        identifier = [v11 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
        }

        else
        {
          identifier2 = [accessoryServer identifier];
          v16 = [identifier2 isEqualToString:identifierCopy];

          if (!v16)
          {
            goto LABEL_10;
          }
        }

        [array addObject:v11];
LABEL_10:
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = array;
  v17 = [v31 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    obja = 138543618;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v31);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        discoveredPeripheralsWithAccessories2 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
        [discoveredPeripheralsWithAccessories2 removeObjectForKey:v21];

        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          shortDescription = [v21 shortDescription];
          *buf = obja;
          v41 = v26;
          v42 = 2114;
          v43 = shortDescription;
          _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@Browser removed discovered peripheral: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
      }

      v18 = [v31 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v18);
  }
}

- (void)_notifyDelegatesOfRemovedAccessoryServer:(id)server error:(id)error
{
  serverCopy = server;
  errorCopy = error;
  if (serverCopy)
  {
    if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didRemoveAccessoryServer_error_])
    {
      delegateQueue = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__HAPAccessoryServerBrowserBTLE__notifyDelegatesOfRemovedAccessoryServer_error___block_invoke;
      block[3] = &unk_2786D7078;
      block[4] = self;
      v11 = serverCopy;
      v12 = errorCopy;
      dispatch_async(delegateQueue, block);
    }

    identifier = [serverCopy identifier];
    [(HAPAccessoryServerBrowserBTLE *)self _removeDiscoveredPeripheralsWithIdentifier:identifier];
  }
}

void __80__HAPAccessoryServerBrowserBTLE__notifyDelegatesOfRemovedAccessoryServer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_performTimedScanForIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion
{
  scanCopy = scan;
  v53 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
    v13 = HMFBooleanToString();
    *buf = 138543874;
    v48 = v11;
    v49 = 2114;
    v50 = v12;
    v51 = 2114;
    v52 = v13;
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to perform reachability scan for %{public}@ accessories. Force Scan: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = identifiersCopy;
  v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v22;
          v49 = 2114;
          v50 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Performing reachability scan for %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [(HAPAccessoryServerBrowserBTLE *)v20 _blePeripheralForAccessoryServerIdentifier:v18];
        cbPeripheral = [v23 cbPeripheral];

        if ([cbPeripheral state] == 2)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v20;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v28;
            v49 = 2114;
            v50 = v18;
            _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping reachability scan as we are connected to %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
          v29 = MEMORY[0x231885210](completionCopy);
          v30 = v29;
          if (v29)
          {
            (*(v29 + 16))(v29, v18, 1);
          }
        }

        else
        {
          identifiersWithReachabilityScanTuples = [(HAPAccessoryServerBrowserBTLE *)v20 identifiersWithReachabilityScanTuples];
          v30 = [identifiersWithReachabilityScanTuples objectForKey:v18];

          if (!v30)
          {
            workQueue = [(HAPAccessoryServerBrowser *)v20 workQueue];
            v30 = [HAPBTLEReachabilityScanTuple reachabilityScanTupleWithCompletion:completionCopy workQueue:workQueue identifier:v18];

            identifiersWithReachabilityScanTuples2 = [(HAPAccessoryServerBrowserBTLE *)v20 identifiersWithReachabilityScanTuples];
            [identifiersWithReachabilityScanTuples2 setObject:v30 forKey:v18];

            if (scanCopy)
            {
              hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)v20 hapWiProxBLEBrowser];
              [hapWiProxBLEBrowser resetLastSeenForTrackedAccessories:v18];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v15);
  }

  identifiersWithReachabilityScanTuples3 = [(HAPAccessoryServerBrowserBTLE *)selfCopy identifiersWithReachabilityScanTuples];
  v36 = [identifiersWithReachabilityScanTuples3 count];

  if (v36)
  {
    hapWiProxBLEBrowser2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
    identifiersWithReachabilityScanTuples4 = [(HAPAccessoryServerBrowserBTLE *)selfCopy identifiersWithReachabilityScanTuples];
    [hapWiProxBLEBrowser2 probeReachabilityForTrackedAccessoriesWithScanTuples:identifiersWithReachabilityScanTuples4];

    [(HAPAccessoryServerBrowserBTLE *)selfCopy _updateTargetedScanTimer];
  }
}

- (void)_removeIdentifiersForReachabilityScan
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  v25 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v25)
  {
    v24 = *v30;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v29 + 1) + 8 * i);
        identifiersWithReachabilityScanTuples = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
        v6 = [identifiersWithReachabilityScanTuples objectForKey:v4];

        v7 = objc_autoreleasePoolPush();
        selfCopy = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          identifier = [v6 identifier];
          *buf = 138543618;
          v34 = v10;
          v35 = 2114;
          v36 = identifier;
          _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Reachability scan timed out for %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v12 = [(HAPAccessoryServerBrowserBTLE *)selfCopy _blePeripheralForAccessoryServerIdentifier:v4];
        cbPeripheral = [v12 cbPeripheral];

        state = [cbPeripheral state];
        if (state == 2)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = selfCopy;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            identifier2 = [v6 identifier];
            *buf = 138543618;
            v34 = v18;
            v35 = 2114;
            v36 = identifier2;
            _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Marking accessory as we are connected to %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }

        completion = [v6 completion];

        if (completion)
        {
          queue = [v6 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__HAPAccessoryServerBrowserBTLE__removeIdentifiersForReachabilityScan__block_invoke;
          block[3] = &unk_2786D6768;
          v27 = v6;
          v28 = state == 2;
          dispatch_async(queue, block);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v25);
  }

  identifiersWithReachabilityScanTuples2 = [(HAPAccessoryServerBrowserBTLE *)self identifiersWithReachabilityScanTuples];
  [identifiersWithReachabilityScanTuples2 removeAllObjects];
}

void __70__HAPAccessoryServerBrowserBTLE__removeIdentifiersForReachabilityScan__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) identifier];
  v3[2](v3, v2, *(a1 + 40));
}

- (id)_recentlySeenPairedPeripheralTupleWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  objectEnumerator = [recentlySeenPairedPeripherals objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HAPAccessoryServerBrowserBTLE__recentlySeenPairedPeripheralTupleWithPeripheral___block_invoke;
  v11[3] = &unk_2786D3CA8;
  v12 = peripheralCopy;
  v8 = peripheralCopy;
  v9 = [allObjects hmf_objectPassingTest:v11];

  return v9;
}

uint64_t __82__HAPAccessoryServerBrowserBTLE__recentlySeenPairedPeripheralTupleWithPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_forgetPairedAccessoryWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  [delegate accessoryServerBrowser:self removeCacheForAccessoryWithIdentifier:identifierCopy];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Request to forget accessory with Id %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
  v20 = identifierCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [hapWiProxBLEBrowser stopTrackingHAPBLEAccessoriesWithIdentifiers:v11];

  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
  v13 = [recentlySeenPairedPeripherals objectForKey:identifierCopy];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Forgetting paired peripheral %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    recentlySeenPairedPeripherals2 = [(HAPAccessoryServerBrowserBTLE *)v15 recentlySeenPairedPeripherals];
    [recentlySeenPairedPeripherals2 removeObjectForKey:identifierCopy];
  }

  v19.receiver = selfCopy;
  v19.super_class = HAPAccessoryServerBrowserBTLE;
  [(HAPAccessoryServerBrowser *)&v19 deRegisterAccessoryWithIdentifier:identifierCopy];
}

- (void)resetPairedAccessories
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HAPAccessoryServerBrowserBTLE_resetPairedAccessories__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __55__HAPAccessoryServerBrowserBTLE_resetPairedAccessories__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) pairedAccessoryIdentifiers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _forgetPairedAccessoryWithIdentifier:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)deRegisterAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HAPAccessoryServerBrowserBTLE;
  [(HAPAccessoryServerBrowser *)&v9 deRegisterAccessoryWithIdentifier:identifierCopy];
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAPAccessoryServerBrowserBTLE_deRegisterAccessoryWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

- (void)markNotifyingCharacteristicUpdatedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAPAccessoryServerBrowserBTLE_markNotifyingCharacteristicUpdatedForIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

void __81__HAPAccessoryServerBrowserBTLE_markNotifyingCharacteristicUpdatedForIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3 && ([v3 notifyingCharacteristicUpdated] & 1) == 0)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [v3 stateNumber];
    v6 = [v4 numberWithInt:{objc_msgSend(v5, "unsignedShortValue") + 1}];
    [v3 setStateNumber:v6];

    [v3 setNotifyingCharacteristicUpdated:1];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Incremented state number of recently seen peripheral: %{public}@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (unint64_t)qosLimits
{
  if ([(HAPAccessoryServerBrowserBTLE *)self remoteBrowsingAndScanEnabled])
  {
    return 2;
  }

  os_unfair_lock_lock_with_options();
  qosLimits = self->_qosLimits;
  os_unfair_lock_unlock(&self->super._lock);
  return qosLimits;
}

- (void)setQosLimits:(unint64_t)limits
{
  os_unfair_lock_lock_with_options();
  self->_qosLimits = limits;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)configureBTLEQoSLimits:(unint64_t)limits
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    limitsCopy = limits;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring browser for qosLimits: %tu", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HAPAccessoryServerBrowserBTLE *)selfCopy setQosLimits:limits];
}

- (void)updateScanInBackground:(BOOL)background
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HAPAccessoryServerBrowserBTLE_updateScanInBackground___block_invoke;
  v6[3] = &unk_2786D6768;
  v6[4] = self;
  backgroundCopy = background;
  dispatch_async(workQueue, v6);
}

void __56__HAPAccessoryServerBrowserBTLE_updateScanInBackground___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v2 setScanInBackground:v1];
}

- (void)stopTrackingBTLEAccessoriesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HAPAccessoryServerBrowserBTLE_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(workQueue, v7);
}

void __76__HAPAccessoryServerBrowserBTLE_stopTrackingBTLEAccessoriesWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v2 stopTrackingHAPBLEAccessoriesWithIdentifiers:*(a1 + 40)];
}

- (void)updateStateForIdentifier:(id)identifier stateNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HAPAccessoryServerBrowserBTLE_updateStateForIdentifier_stateNumber___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = identifierCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

void __70__HAPAccessoryServerBrowserBTLE_updateStateForIdentifier_stateNumber___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 stateNumber];
    v5 = HAPCompareStateNumberWithRollover(v4, *(a1 + 48), 0xFFuLL);

    if (v5 == -1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 stateNumber];
        v11 = *(a1 + 48);
        *buf = 138544130;
        v52 = v9;
        v53 = 2114;
        v54 = v3;
        v55 = 2114;
        v56 = v10;
        v57 = 2114;
        v58 = v11;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating State for recently seen accessory: %{public}@ to sync-up current/new: %{public}@/%{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      [v3 setStateNumber:*(a1 + 48)];
    }
  }

  v40 = v3;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = [*(a1 + 32) discoveredPeripheralsWithAccessories];
  v13 = [v12 objectEnumerator];

  v14 = [v13 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    v41 = v13;
    v46 = *v48;
    do
    {
      v17 = 0;
      v42 = v15;
      do
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        v19 = [v18 accessoryServer];
        v20 = [v19 identifier];
        v21 = [v20 isEqualToString:*(a1 + 40)];

        if (v21)
        {
          v22 = [v18 accessoryServer];
          v23 = [v22 stateNumber];
          v24 = HAPCompareStateNumberWithRollover(v23, *(a1 + 48), 0xFFuLL);

          if (v24 == -1)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = *(a1 + 32);
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = HMFGetLogIdentifier();
              v44 = [v18 accessoryServer];
              v29 = [v44 name];
              v43 = [v18 accessoryServer];
              v30 = [v43 identifier];
              [v18 accessoryServer];
              v31 = v45 = v25;
              v32 = [v31 stateNumber];
              v33 = *(a1 + 48);
              *buf = 138544386;
              v52 = v28;
              v53 = 2112;
              v54 = v29;
              v55 = 2114;
              v56 = v30;
              v57 = 2114;
              v58 = v32;
              v59 = 2114;
              v60 = v33;
              _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_INFO, "%{public}@Updating State for discovered tuple: %@ (%{public}@) to sync-up current/new: %{public}@/%{public}@", buf, 0x34u);

              v25 = v45;
              v13 = v41;

              v15 = v42;
            }

            objc_autoreleasePoolPop(v25);
            v34 = *(a1 + 48);
            v35 = [v18 accessoryServer];
            [v35 setStateNumber:v34];

            v36 = *(a1 + 48);
            v37 = [v18 accessoryServer];
            v38 = [v37 blePeripheral];
            [v38 setStateNumber:v36];

            v16 = v46;
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v15);
  }

  [*(a1 + 32) updateCachedStateForIdentifier:*(a1 + 40) stateNumber:*(a1 + 48)];
  v39 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v39 updateStateForIdentifier:*(a1 + 40) stateNumber:*(a1 + 48)];
}

- (void)retrieveCurrentStateForIdentifier:(id)identifier stateNumber:(id *)number isReachable:(BOOL *)reachable linkQuality:(unint64_t *)quality lastSeen:(id *)seen
{
  identifierCopy = identifier;
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [hapWiProxBLEBrowser retrieveStateForTrackedAccessoryWithIdentifier:identifierCopy stateNumber:number isReachable:reachable linkQuality:quality lastSeen:seen];
}

- (void)configureAccessoryWithIdentifier:(id)identifier trackState:(BOOL)state connectionPriority:(unint64_t)priority
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HAPAccessoryServerBrowserBTLE_configureAccessoryWithIdentifier_trackState_connectionPriority___block_invoke;
  v11[3] = &unk_2786D3C80;
  v11[4] = self;
  v12 = identifierCopy;
  stateCopy = state;
  priorityCopy = priority;
  v10 = identifierCopy;
  dispatch_async(workQueue, v11);
}

void __96__HAPAccessoryServerBrowserBTLE_configureAccessoryWithIdentifier_trackState_connectionPriority___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentlySeenPairedPeripherals];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 updatePairedPeripheralConfiguration:*(a1 + 56) connectionPriority:*(a1 + 48)];
}

- (void)resetLastSeenForAccessoryServersWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAPAccessoryServerBrowserBTLE_resetLastSeenForAccessoryServersWithIdentifiers___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(workQueue, v7);
}

void __81__HAPAccessoryServerBrowserBTLE_resetLastSeenForAccessoryServersWithIdentifiers___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) hapWiProxBLEBrowser];
        [v8 resetLastSeenForTrackedAccessories:v7];

        v9 = [*(a1 + 40) delegate];
        [v9 accessoryServerBrowser:*(a1 + 40) didChangeReachability:0 forAccessoryServerWithIdentifier:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_probeReachabilityForAccessoryServersWithIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __111__HAPAccessoryServerBrowserBTLE__probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke;
  v12[3] = &unk_2786D5290;
  v13 = identifiersCopy;
  v14 = completionCopy;
  v12[4] = self;
  scanCopy = scan;
  v10 = identifiersCopy;
  v11 = completionCopy;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v12];
}

void __111__HAPAccessoryServerBrowserBTLE__probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to probe reachability for accessory servers because BTLE failed to power on with error: %{public}@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = MEMORY[0x231885210](*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedScanForIdentifiers:*(a1 + 40) forceScan:*(a1 + 56) withCompletion:*(a1 + 48)];
  }
}

- (void)probeReachabilityForAccessoryServersWithIdentifiers:(id)identifiers forceScan:(BOOL)scan withCompletion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__HAPAccessoryServerBrowserBTLE_probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke;
  v13[3] = &unk_2786D5F70;
  v13[4] = self;
  v14 = identifiersCopy;
  scanCopy = scan;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = identifiersCopy;
  dispatch_async(workQueue, v13);
}

void __110__HAPAccessoryServerBrowserBTLE_probeReachabilityForAccessoryServersWithIdentifiers_forceScan_withCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _canStartScan])
  {
    [*(a1 + 32) _probeReachabilityForAccessoryServersWithIdentifiers:*(a1 + 40) forceScan:*(a1 + 56) withCompletion:*(a1 + 48)];
    v2 = [*(a1 + 32) hapWiProxBLEBrowser];
    [v2 startTrackingHAPBLEAccessoriesWithIdentifiers:*(a1 + 40)];
  }
}

- (void)setReachabilityCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HAPAccessoryServerBrowserBTLE_setReachabilityCompletionHandler___block_invoke;
  v7[3] = &unk_2786D65D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)_removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = identifierCopy;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed recently seen paired peripheral with identifier %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)selfCopy recentlySeenPairedPeripherals];
  [recentlySeenPairedPeripherals removeObjectForKey:identifierCopy];
}

- (void)removeRecentlySeenPairedPeripheralWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HAPAccessoryServerBrowserBTLE_removeRecentlySeenPairedPeripheralWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

- (void)_discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke;
  v6[3] = &unk_2786D6A98;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v6];
}

void __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      *buf = 138543874;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to discover accessory server %{public}@ because BTLE failed to power on with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v10 = [*(a1 + 32) delegateQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke_158;
      v12[3] = &unk_2786D7050;
      v11 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v13 = v11;
      dispatch_async(v10, v12);
    }
  }

  else
  {
    [*(a1 + 32) _performTimedConnectionRequestForIdentifier:*(a1 + 40)];
  }
}

void __72__HAPAccessoryServerBrowserBTLE__discoverAccessoryServerWithIdentifier___block_invoke_158(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HAPAccessoryServerBrowserBTLE_discoverAccessoryServerWithIdentifier___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(workQueue, v7);
}

- (void)_callPowerOnCompletionsWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  powerOnCentralManagerCompletions = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  v7 = [powerOnCentralManagerCompletions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(powerOnCentralManagerCompletions);
        }

        v11 = MEMORY[0x231885210](*(*(&v14 + 1) + 8 * v10));
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11, errorCopy);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [powerOnCentralManagerCompletions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  powerOnCentralManagerCompletions2 = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  [powerOnCentralManagerCompletions2 removeAllObjects];
}

- (void)_powerOnCentralManagerWithCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  centralManager = [(HAPAccessoryServerBrowserBTLE *)self centralManager];

  if (centralManager)
  {
    centralManager2 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    state = [centralManager2 state];

    switch(state)
    {
      case 2uLL:
        v28 = MEMORY[0x277CCA9B8];
        v29 = @"Failed to power on Bluetooth because Bluetooth LE is unsupported on this system.";
        v30 = 48;
        break;
      case 4uLL:
        v28 = MEMORY[0x277CCA9B8];
        v29 = @"Failed to power on Bluetooth because the Bluetooth is turned off in Settings.";
        v30 = 57;
        break;
      case 5uLL:
        v9 = MEMORY[0x231885210](completionCopy);
        powerOnCentralManagerCompletions = v9;
        if (v9)
        {
          (*(v9 + 16))(v9, 0);
        }

        goto LABEL_24;
      default:
        v33 = objc_autoreleasePoolPush();
        selfCopy = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          if (state > 5)
          {
            v37 = @"Unenumerated State?";
          }

          else
          {
            v37 = off_2786D3D40[state];
          }

          v38 = v37;
          *buf = 138543874;
          v42 = v36;
          v43 = 2048;
          v44 = state;
          v45 = 2112;
          v46 = v38;
          _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_INFO, "%{public}@Central Manager has state %ld (%@), adding block to be called when the state is updated.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v33);
        powerOnCentralManagerCompletions = [(HAPAccessoryServerBrowserBTLE *)selfCopy powerOnCentralManagerCompletions];
        v32 = MEMORY[0x231885210](completionCopy);
        [powerOnCentralManagerCompletions addObject:v32];
LABEL_23:

LABEL_24:
        goto LABEL_25;
    }

    powerOnCentralManagerCompletions = [v28 errorWithHMErrorCode:v30 reason:v29 underlyingError:0];
    v31 = MEMORY[0x231885210](completionCopy);
    v32 = v31;
    if (v31)
    {
      (*(v31 + 16))(v31, powerOnCentralManagerCompletions);
    }

    goto LABEL_23;
  }

  powerOnCentralManagerCompletions2 = [(HAPAccessoryServerBrowserBTLE *)self powerOnCentralManagerCompletions];
  v12 = MEMORY[0x231885210](completionCopy);
  [powerOnCentralManagerCompletions2 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277CBDFF8]);
  workQueue2 = [(HAPAccessoryServerBrowser *)self workQueue];
  v15 = [v13 initWithDelegate:self queue:workQueue2];
  [(HAPAccessoryServerBrowserBTLE *)self setCentralManager:v15];

  v16 = [CBConnectionsObserver alloc];
  centralManager3 = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
  workQueue3 = [(HAPAccessoryServerBrowser *)self workQueue];
  v40 = 0;
  v19 = [(CBConnectionsObserver *)v16 initWithCentralManager:centralManager3 Queue:workQueue3 Error:&v40];
  v20 = v40;
  [(HAPAccessoryServerBrowserBTLE *)self setConnectionsObserver:v19];

  if (v20)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v24;
      v43 = 2114;
      v44 = v20;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Connections Observer failed to initialize, error (%{public}@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    connectionsObserver = [(HAPAccessoryServerBrowserBTLE *)selfCopy2 connectionsObserver];

    if (connectionsObserver)
    {
      connectionsObserver2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy2 connectionsObserver];
      v39 = v20;
      [connectionsObserver2 cleanupWithError:&v39];
      v27 = v39;

      [(HAPAccessoryServerBrowserBTLE *)selfCopy2 setConnectionsObserver:0];
      v20 = v27;
    }
  }

LABEL_25:
}

- (void)_startScanningForReachability:(id)reachability
{
  v37[1] = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  if ([(HAPAccessoryServerBrowserBTLE *)self _hasRecentlySeenAccessoriesWithIdentifiers:reachabilityCopy])
  {
    v5 = [(HAPAccessoryServerBrowserBTLE *)self _hasPairedAccessoriesOfType:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%{public}@Not all accessories are in recently seen", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 1;
  }

  if ([(HAPAccessoryServerBrowserBTLE *)self scanState]|| !v5)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      scanState = [(HAPAccessoryServerBrowserBTLE *)selfCopy2 scanState];
      v26 = HMFBooleanToString();
      *buf = 138543874;
      v30 = v24;
      v31 = 2048;
      v32 = scanState;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_INFO, "%{public}@Skip 1.0 reachability: Scan State: %tu, 1.0 Accessories: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    centralManager = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
    [centralManager stopScan];

    [(HAPAccessoryServerBrowserBTLE *)self setScanState:2];
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting scan for 1.0 reachability", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
    centralManager2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy3 centralManager];
    v37[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v18 = *MEMORY[0x277CBDDB0];
    v35[0] = *MEMORY[0x277CBDEF8];
    v35[1] = v18;
    v19 = *MEMORY[0x277CBDE58];
    v35[2] = *MEMORY[0x277CBDDA8];
    v35[3] = v19;
    v36[0] = MEMORY[0x277CBEC38];
    v36[1] = MEMORY[0x277CBEC28];
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = &unk_283EA97B8;
    v35[4] = *MEMORY[0x277CBDE38];
    v36[4] = &unk_283EA97D0;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
    [centralManager2 scanForPeripheralsWithServices:v17 options:v20];
  }

  if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    delegateQueue = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HAPAccessoryServerBrowserBTLE__startScanningForReachability___block_invoke;
    block[3] = &unk_2786D6CA0;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __63__HAPAccessoryServerBrowserBTLE__startScanningForReachability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (BOOL)_hasRecentlySeenAccessoriesWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB98] setWithArray:identifiers];
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  objectEnumerator = [recentlySeenPairedPeripherals objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        identifier = [*(*(&v15 + 1) + 8 * v11) identifier];
        [v5 addObject:identifier];

        ++v11;
      }

      while (v9 != v11);
      v9 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v4 isSubsetOfSet:v5];
  return v13;
}

- (BOOL)_hasPairedAccessoriesOfType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  recentlySeenPairedPeripherals = [(HAPAccessoryServerBrowserBTLE *)self recentlySeenPairedPeripherals];
  objectEnumerator = [recentlySeenPairedPeripherals objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 advertisementFormat] == type)
        {
          identifier = [v11 identifier];
          v13 = [(HAPAccessoryServerBrowser *)self isPaired:identifier];

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)_startBrowsingForLegacyHAPBTLE100Accessories
{
  v21 = *MEMORY[0x277D85DE8];
  centralManager = [(HAPAccessoryServerBrowserBTLE *)self centralManager];
  [centralManager stopScan];

  [(HAPAccessoryServerBrowserBTLE *)self setScanState:1];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting scan for HomeKit 1.0 accessories...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  centralManager2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy centralManager];
  v18 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v11 = *MEMORY[0x277CBDDB0];
  v16[0] = *MEMORY[0x277CBDEF8];
  v16[1] = v11;
  v12 = *MEMORY[0x277CBDE58];
  v16[2] = *MEMORY[0x277CBDDA8];
  v16[3] = v12;
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = MEMORY[0x277CBEC38];
  v17[2] = MEMORY[0x277CBEC38];
  v17[3] = &unk_283EA97B8;
  v16[4] = *MEMORY[0x277CBDE38];
  v17[4] = &unk_283EA97D0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  [centralManager2 scanForPeripheralsWithServices:v10 options:v13];

  if ([(HAPAccessoryServerBrowserBTLE *)selfCopy _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    delegateQueue = [(HAPAccessoryServerBrowserBTLE *)selfCopy delegateQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__HAPAccessoryServerBrowserBTLE__startBrowsingForLegacyHAPBTLE100Accessories__block_invoke;
    v15[3] = &unk_2786D6CA0;
    v15[4] = selfCopy;
    dispatch_async(delegateQueue, v15);
  }
}

void __77__HAPAccessoryServerBrowserBTLE__startBrowsingForLegacyHAPBTLE100Accessories__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (void)_stopActiveScanWithForce:(BOOL)force
{
  forceCopy = force;
  v49 = *MEMORY[0x277D85DE8];
  if ([(HAPAccessoryServerBrowserBTLE *)self scanState]|| [(HAPAccessoryServerBrowserBTLE *)self remoteBrowsingEnabled])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v8;
      v47 = 2048;
      scanState = [(HAPAccessoryServerBrowserBTLE *)selfCopy scanState];
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping scans: Scan State: %tu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    centralManager = [(HAPAccessoryServerBrowserBTLE *)selfCopy centralManager];
    [centralManager stopScan];

    [(HAPAccessoryServerBrowserBTLE *)selfCopy setScanState:0];
  }

  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [hapWiProxBLEBrowser stopBrowsingForHAPBLEAccessories:forceCopy];

  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
  keyEnumerator = [discoveredPeripheralsWithAccessories keyEnumerator];

  v14 = [keyEnumerator countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    v31 = v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [(HAPAccessoryServerBrowserBTLE *)self _discoveredAccessoryServerTupleForBLEPeripheral:v18 shouldMerge:0, v31];
        accessoryServer = [v19 accessoryServer];

        if (accessoryServer)
        {
          identifier = [accessoryServer identifier];
          v22 = [(HAPAccessoryServerBrowser *)self isPaired:identifier];

          if (!v22)
          {
            [array addObject:v18];
            if ([(HAPAccessoryServerBrowserBTLE *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_didRemoveAccessoryServer_error_])
            {
              delegateQueue = [(HAPAccessoryServerBrowserBTLE *)self delegateQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              v37[0] = __58__HAPAccessoryServerBrowserBTLE__stopActiveScanWithForce___block_invoke;
              v37[1] = &unk_2786D7050;
              v37[2] = self;
              v38 = accessoryServer;
              dispatch_async(delegateQueue, block);
            }
          }
        }

        else
        {
          [array addObject:v18];
        }
      }

      v15 = [keyEnumerator countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = array;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v32 + 1) + 8 * j);
        discoveredPeripheralsWithAccessories2 = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
        [discoveredPeripheralsWithAccessories2 removeObjectForKey:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v26);
  }
}

void __58__HAPAccessoryServerBrowserBTLE__stopActiveScanWithForce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didRemoveAccessoryServer:*(a1 + 40) error:0];
}

- (BOOL)remoteBrowsingAndScanEnabled
{
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  v3 = (~[hapWiProxBLEBrowser routeMode] & 3) == 0;

  return v3;
}

- (BOOL)remoteBrowsingEnabled
{
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  routeMode = [hapWiProxBLEBrowser routeMode];

  return routeMode & 1;
}

- (void)pauseScans
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HAPAccessoryServerBrowserBTLE_pauseScans__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __43__HAPAccessoryServerBrowserBTLE_pauseScans__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) centralManager];
  [v2 stopScan];

  v3 = [*(a1 + 32) hapWiProxBLEBrowser];
  [v3 pauseScans];

  v4 = *(a1 + 32);

  return [v4 setScanState:0];
}

- (void)_matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    discoveredPeripheralsWithAccessories = [(HAPAccessoryServerBrowserBTLE *)self discoveredPeripheralsWithAccessories];
    objectEnumerator = [discoveredPeripheralsWithAccessories objectEnumerator];

    v13 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        accessoryServer = [*(*(&v29 + 1) + 8 * v16) accessoryServer];
        if ([accessoryServer matchesSetupID:dCopy serverIdentifier:identifierCopy])
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v43 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      identifier = [accessoryServer identifier];
      v19 = [(HAPAccessoryServerBrowser *)self isPaired:identifier];

      hasPairings = [accessoryServer hasPairings];
      v21 = hasPairings;
      if (!v19 && !hasPairings)
      {
        goto LABEL_13;
      }

      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v19];
        v27 = [MEMORY[0x277CCABB0] numberWithBool:v21];
        *buf = 138544386;
        v34 = v28;
        v35 = 2114;
        v36 = accessoryServer;
        v37 = 2114;
        v38 = dCopy;
        v39 = 2114;
        v40 = v26;
        v41 = 2114;
        v42 = v27;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_INFO, "%{public}@BTLE Accessory server %{public}@ matches setupID %{public}@ and is paired/hasPairings: (%{public}@/%{public}@)", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = 1;
    }

    else
    {
LABEL_10:
      accessoryServer = 0;
LABEL_13:
      v22 = 0;
    }

    handlerCopy[2](handlerCopy, v22, accessoryServer);
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
  v15[2] = __100__HAPAccessoryServerBrowserBTLE_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
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

- (void)updateRemoteBrowsing:(BOOL)browsing shouldScan:(BOOL)scan
{
  browsingCopy = browsing;
  v22 = *MEMORY[0x277D85DE8];
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  routeMode = [hapWiProxBLEBrowser routeMode];

  if (routeMode)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      if (browsingCopy)
      {
        v12 = @"WHB";
      }

      else
      {
        v12 = @"LOCAL";
      }

      v13 = HMFBooleanToString();
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting BTLE discovery to '%{public}@'. WHB Scan: %{public}@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    hapWiProxBLEBrowser2 = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
    [hapWiProxBLEBrowser2 setRouteMode:0];

    hapWiProxBLEBrowser3 = [(HAPAccessoryServerBrowserBTLE *)selfCopy hapWiProxBLEBrowser];
    [hapWiProxBLEBrowser3 restartScans];
  }
}

- (void)stopDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [*(a1 + 32) discoveredPeripheralsWithAccessories];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      v9 = [v8 accessoryServer];
      v10 = [v9 pendingRemovePairing];

      if (v10 == 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v8 accessoryServer];
      *buf = 138543618;
      v29 = v16;
      v30 = 2114;
      v31 = v17;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Not stopping active scan because we have pending cancelled pairings to remove for accessory: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if ([*(a1 + 32) remoteBrowsingEnabled])
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_9:

    v11 = [*(a1 + 32) targetedScanAccessoryIdentifiers];
    if ([v11 count])
    {
      v12 = [*(a1 + 32) remoteBrowsingEnabled];

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_17:
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Stopping active scan because a client requested it and there aren't any outstanding targeted scans", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) _stopActiveScanWithForce:1];
  }

LABEL_20:
  [*(a1 + 32) setPerformingGeneralScan:0];
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v22 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke_132;
    block[3] = &unk_2786D6CA0;
    block[4] = *(a1 + 32);
    dispatch_async(v22, block);
  }
}

void __64__HAPAccessoryServerBrowserBTLE_stopDiscoveringAccessoryServers__block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)_startDiscoveringAccessoryServers
{
  [(HAPAccessoryServerBrowserBTLE *)self setPerformingGeneralScan:1];
  hapWiProxBLEBrowser = [(HAPAccessoryServerBrowserBTLE *)self hapWiProxBLEBrowser];
  [hapWiProxBLEBrowser startBrowsingForHAPBLEAccessories];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke;
  v4[3] = &unk_2786D6CF0;
  v4[4] = self;
  [(HAPAccessoryServerBrowserBTLE *)self _powerOnCentralManagerWithCompletion:v4];
}

void __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
    {
      v5 = [*(a1 + 32) delegateQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke_2;
      v6[3] = &unk_2786D7050;
      v6[4] = *(a1 + 32);
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }

  else
  {
    [v4 _startBrowsingForLegacyHAPBTLE100Accessories];
    [*(a1 + 32) _updateTargetedScanTimer];
  }
}

void __66__HAPAccessoryServerBrowserBTLE__startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:*(a1 + 40)];
}

- (void)startDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HAPAccessoryServerBrowserBTLE_startDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__65__HAPAccessoryServerBrowserBTLE_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canStartScan];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startDiscoveringAccessoryServers];
  }

  return result;
}

- (void)setScanState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_scanState = state;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)scanState
{
  os_unfair_lock_lock_with_options();
  scanState = self->_scanState;
  os_unfair_lock_unlock(&self->super._lock);
  return scanState;
}

- (BOOL)_canStartScan
{
  if (HAPIsHH2Enabled_onceToken != -1)
  {
    dispatch_once(&HAPIsHH2Enabled_onceToken, &__block_literal_global_12209);
  }

  if (HAPIsHH2Enabled_hh2Enabled != 1)
  {
    return 1;
  }

  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v4 = [delegate isServerLinkTypeBrowseable:2];

  return v4;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HAPAccessoryServerBrowserBTLE_setDelegate_queue___block_invoke;
  block[3] = &unk_2786D7078;
  block[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  dispatch_async(workQueue, block);
}

uint64_t __51__HAPAccessoryServerBrowserBTLE_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (HAPAccessoryServerBrowserBTLE)initWithQueue:(id)queue
{
  v21.receiver = self;
  v21.super_class = HAPAccessoryServerBrowserBTLE;
  v3 = [(HAPAccessoryServerBrowser *)&v21 initWithQueue:queue];
  if (v3)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    discoveredPeripheralsWithAccessories = v3->_discoveredPeripheralsWithAccessories;
    v3->_discoveredPeripheralsWithAccessories = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    recentlySeenPairedPeripherals = v3->_recentlySeenPairedPeripherals;
    v3->_recentlySeenPairedPeripherals = strongToStrongObjectsMapTable2;

    array = [MEMORY[0x277CBEB18] array];
    powerOnCentralManagerCompletions = v3->_powerOnCentralManagerCompletions;
    v3->_powerOnCentralManagerCompletions = array;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    peripheralsWithConnectionRequests = v3->_peripheralsWithConnectionRequests;
    v3->_peripheralsWithConnectionRequests = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    peripheralsPendingConnection = v3->_peripheralsPendingConnection;
    v3->_peripheralsPendingConnection = orderedSet2;

    array2 = [MEMORY[0x277CBEB18] array];
    targetedScanAccessoryIdentifiers = v3->_targetedScanAccessoryIdentifiers;
    v3->_targetedScanAccessoryIdentifiers = array2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifiersWithReachabilityScanTuples = v3->_identifiersWithReachabilityScanTuples;
    v3->_identifiersWithReachabilityScanTuples = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    peripheralDisconnectionMonitorMap = v3->_peripheralDisconnectionMonitorMap;
    v3->_peripheralDisconnectionMonitorMap = strongToStrongObjectsMapTable4;

    v3->_peripheralDisconnectionTimeout = 10;
    v3->_scanState = 0;
    v3->_qosLimits = 0;
  }

  return v3;
}

- (BOOL)isPerformingGeneralScan
{
  os_unfair_lock_lock_with_options();
  performingGeneralScan = self->_performingGeneralScan;
  os_unfair_lock_unlock(&self->super._lock);
  return performingGeneralScan;
}

- (void)setPerformingGeneralScan:(BOOL)scan
{
  os_unfair_lock_lock_with_options();
  self->_performingGeneralScan = scan;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)updateCachedStateForIdentifier:(id)identifier stateNumber:(id)number
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  if (numberCopy)
  {
    v8 = [(HAPAccessoryServerBrowserBTLE *)self cachedAccessoryForIdentifier:identifierCopy];
    v9 = v8;
    if (v8)
    {
      peripheralInfo = [v8 peripheralInfo];
      stateNumber = [peripheralInfo stateNumber];
      v12 = HAPCompareStateNumberWithRollover(stateNumber, numberCopy, 0xFFuLL);

      if (v12 == -1)
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          pairingIdentifier = [v9 pairingIdentifier];
          peripheralInfo2 = [v9 peripheralInfo];
          stateNumber2 = [peripheralInfo2 stateNumber];
          v21 = 138544130;
          v22 = v16;
          v23 = 2114;
          v24 = pairingIdentifier;
          v25 = 2114;
          v26 = stateNumber2;
          v27 = 2114;
          v28 = numberCopy;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating cached s# for: %{public}@ from %{public}@ to %{public}@", &v21, 0x2Au);
        }

        objc_autoreleasePoolPop(v13);
        peripheralInfo3 = [v9 peripheralInfo];
        [peripheralInfo3 updateStateNumber:numberCopy];

        [(HAPAccessoryServerBrowserBTLE *)selfCopy saveCacheToDisk:v9];
      }
    }
  }
}

- (void)updateBroadcastKeyForIdentifier:(id)identifier key:(id)key keyUpdatedStateNumber:(id)number keyUpdatedTime:(double)time
{
  identifierCopy = identifier;
  keyCopy = key;
  numberCopy = number;
  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__HAPAccessoryServerBrowserBTLE_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke;
  v17[3] = &unk_2786D3C58;
  v17[4] = self;
  v18 = identifierCopy;
  v19 = numberCopy;
  v20 = keyCopy;
  timeCopy = time;
  v14 = keyCopy;
  v15 = numberCopy;
  v16 = identifierCopy;
  [delegate accessoryServerBrowser:self getCacheForAccessoryWithIdentifier:v16 withCompletion:v17];
}

void __106__HAPAccessoryServerBrowserBTLE_updateBroadcastKeyForIdentifier_key_keyUpdatedStateNumber_keyUpdatedTime___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v16];
  v5 = v16;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 pairingIdentifier];
      v12 = *(a1 + 48);
      *buf = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Updating broadcast key for: %{public}@ and state number: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [v4 peripheralInfo];
    [v13 saveBroadcastKey:*(a1 + 56) keyUpdatedStateNumber:*(a1 + 48) updatedTime:*(a1 + 64)];

    [*(a1 + 32) saveCacheToDisk:v4];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached accessory from accessory: %{public}@ with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)saveCacheToDisk:(id)disk
{
  v21 = *MEMORY[0x277D85DE8];
  diskCopy = disk;
  v14 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:diskCopy requiringSecureCoding:1 error:&v14];
  v6 = v14;
  if (v5)
  {
    delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    pairingIdentifier = [diskCopy pairingIdentifier];
    [delegate accessoryServerBrowser:self saveCache:v5 serverIdentifier:pairingIdentifier];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      pairingIdentifier2 = [diskCopy pairingIdentifier];
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = pairingIdentifier2;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create BLE cache archive for %{public}@ with error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)removeCachedAccessoryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  [delegate accessoryServerBrowser:self removeCacheForAccessoryWithIdentifier:identifierCopy];
}

- (id)cachedAccessoryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6553;
  v19 = __Block_byref_object_dispose__6554;
  v20 = 0;
  delegate = [(HAPAccessoryServerBrowserBTLE *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    delegate2 = [(HAPAccessoryServerBrowserBTLE *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HAPAccessoryServerBrowserBTLE_cachedAccessoryForIdentifier___block_invoke;
    v12[3] = &unk_2786D3C30;
    v14 = &v15;
    v12[4] = self;
    v9 = v7;
    v13 = v9;
    [delegate2 accessoryServerBrowser:self getCacheForAccessoryWithIdentifier:identifierCopy withCompletion:v12];

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __62__HAPAccessoryServerBrowserBTLE_cachedAccessoryForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v12];
    v5 = v12;
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v14 = v11;
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cached accessory from accessory cache data: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)setConnectionLatency:(int64_t)latency forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HAPAccessoryServerBrowserBTLE_setConnectionLatency_forPeripheral___block_invoke;
  block[3] = &unk_2786D4978;
  selfCopy = self;
  latencyCopy = latency;
  v10 = peripheralCopy;
  v8 = peripheralCopy;
  dispatch_async(workQueue, block);
}

void __68__HAPAccessoryServerBrowserBTLE_setConnectionLatency_forPeripheral___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 48);
    if (v2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_22AC9DBE0[v2];
    }

    v4 = [*(a1 + 40) centralManager];
    [v4 setDesiredConnectionLatency:v3 forPeripheral:*(a1 + 32)];
  }
}

- (unint64_t)_parseAdvertisementData:(id)data forPeripheral:(id)peripheral name:(id *)name pairingUsername:(id *)username statusFlags:(id *)flags stateNumber:(id *)number category:(id *)category configNumber:(id *)self0 setupHash:(id *)self1
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peripheralCopy = peripheral;
  v17 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD08]];
  name = [peripheralCopy name];
  v19 = [name length];
  v20 = [(__CFString *)v17 length];

  if (v19 > v20)
  {
    name2 = [peripheralCopy name];

    v17 = name2;
  }

  if (!v17)
  {
    v17 = @"Unknown";
  }

  if (name)
  {
    v22 = v17;
    *name = v17;
  }

  v23 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  v24 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FED4"];
  v25 = [v23 objectForKeyedSubscript:v24];
  if ([v25 length] == 9)
  {
    [v25 bytes];
    HardwareAddressToCString();
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
    v27 = v26;
    if (username)
    {
      v28 = v26;
      *username = v27;
    }

    bytes = [v25 bytes];
    if (flags)
    {
      *flags = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 8)];
    }

    if (category)
    {
      if (*(bytes + 6))
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      }

      else
      {
        v30 = &unk_283EA97A0;
      }

      *category = v30;
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)disconnectFromBTLEAccessoryServer:(id)server
{
  serverCopy = server;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = serverCopy;
  selfCopy = self;
  v6 = serverCopy;
  dispatch_async(workQueue, v7);
}

void __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) blePeripheral];
  if (v2)
  {
    v3 = [*(a1 + 40) _discoveredAccessoryServerTupleForBLEPeripheral:v2 shouldMerge:0];

    if (v3)
    {
      v4 = [*(a1 + 40) recentlySeenPairedPeripherals];
      v5 = [*(a1 + 32) identifier];
      v6 = [v4 objectForKey:v5];

      v7 = [v2 cbPeripheral];
      v8 = [v7 state];

      if (v8 != 2)
      {
        v9 = [*(a1 + 40) hapWiProxBLEBrowser];
        v10 = [*(a1 + 32) identifier];
        [v9 resetLastSeenForTrackedAccessories:v10];

        v11 = [*(a1 + 40) delegate];
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) identifier];
        [v11 accessoryServerBrowser:v12 didChangeReachability:0 forAccessoryServerWithIdentifier:v13];

        if (([v2 isCached] & 1) != 0 || ((v14 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v15 = 0) : (v15 = v14), v16 = v15, v14, v17 = objc_msgSend(v16, "hasBeenDiscovered"), v16, (v17 & 1) == 0))
        {
          v18 = [*(a1 + 40) recentlySeenPairedPeripherals];
          v19 = [*(a1 + 32) identifier];
          [v18 removeObjectForKey:v19];
        }
      }

      [v6 setNotifyingCharacteristicUpdated:0];
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 32) shortDescription];
        *buf = 138543874;
        v39 = v23;
        v40 = 2114;
        v41 = v24;
        v42 = 2112;
        v43 = v2;
        _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%{public}@Cancelling Connection for server, %{public}@, from CB Peripheral: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      [*(a1 + 40) _removeFromPendingConnections:v2];
      v25 = *(a1 + 40);
      v26 = [v2 cbPeripheral];
      [v25 _disconnectFromHAPBLEPeripheral:v2 cbPeripheral:v26];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 32);
        *buf = 138543618;
        v39 = v30;
        v40 = 2114;
        v41 = v31;
        _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory in discoveredAccessory map: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:54];
      [*(a1 + 40) _removeFromActiveConnections:v2];
      [*(a1 + 40) disconnectedHAPPeripheral:v2 error:v32];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_106;
      v35[3] = &unk_2786D3C08;
      v34 = *(a1 + 32);
      v33 = v34.i64[0];
      v36 = vextq_s8(v34, v34, 8uLL);
      v37 = v32;
      v6 = v32;
      [v33 handleDisconnectionWithError:v6 completionHandler:v35];
    }
  }
}

void __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_106(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HAPAccessoryServerBrowserBTLE_disconnectFromBTLEAccessoryServer___block_invoke_2;
  block[3] = &unk_2786D7078;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)connectToBTLEAccessoryServer:(id)server
{
  serverCopy = server;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke;
  v7[3] = &unk_2786D7050;
  v8 = serverCopy;
  selfCopy = self;
  v6 = serverCopy;
  dispatch_async(workQueue, v7);
}

void __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) blePeripheral];
  if (v2 && ([*(a1 + 40) discoveredPeripheralsWithAccessories], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 32) category];
    [v5 reportConnection:v6 linkType:2 accessoryCategory:v7];

    [*(a1 + 40) _connectHAPPeripheralWhenAllowed:v2];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) shortDescription];
      v13 = [v2 shortDescription];
      *buf = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory in discoveredAccessory map: %{public}@/%{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([*(a1 + 40) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v14 = [*(a1 + 40) delegateQueue];
      block = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke_102;
      v21 = &unk_2786D7050;
      v17 = *(a1 + 32);
      v15 = v17.i64[0];
      v22 = vextq_s8(v17, v17, 8uLL);
      dispatch_async(v14, &block);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:{54, *&v17, block, v19, v20, v21}];
    [*(a1 + 32) handleConnectionWithPeripheral:0 withError:v16];
    [*(a1 + 40) _notifyDelegatesOfRemovedAccessoryServer:*(a1 + 32) error:v16];
  }
}

void __62__HAPAccessoryServerBrowserBTLE_connectToBTLEAccessoryServer___block_invoke_102(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 accessoryServerBrowser:v2 didFailToDiscoverAccessoryServerWithIdentifier:v3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t141 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t141, &__block_literal_global_6565);
  }

  v3 = logCategory__hmf_once_v142;

  return v3;
}

uint64_t __44__HAPAccessoryServerBrowserBTLE_logCategory__block_invoke()
{
  logCategory__hmf_once_v142 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end