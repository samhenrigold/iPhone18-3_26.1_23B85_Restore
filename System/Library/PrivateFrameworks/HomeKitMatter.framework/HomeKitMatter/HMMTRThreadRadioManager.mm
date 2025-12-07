@interface HMMTRThreadRadioManager
+ (id)logCategory;
- (BOOL)_shouldRetryWEDConnectionToAccessory;
- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)d;
- (BOOL)isReadyToEstablishWEDConnection;
- (BOOL)isReadyToTransitionToFullRouterModeForFirmwareUpdate;
- (BOOL)isThreadNetworkConnected;
- (HMMTRAccessoryServer)pairingAccessoryServer;
- (HMMTRAccessoryServer)wedAccessoryServer;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRThreadRadioControllerDelegate)delegate;
- (HMMTRThreadRadioManager)initWithBrowser:(id)browser;
- (double)_computeRetryDelayForError:(id)error;
- (id)_connectionStateValueToString:(int64_t)string;
- (id)_nodeTypeValueToString:(int64_t)string;
- (void)__startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion;
- (void)_allowDisconnect;
- (void)_connectToAccessoryWithExtendedMACAddress:(id)address forRetry:(BOOL)retry completion:(id)completion;
- (void)_notifyThreadRadioStateChanged:(int64_t)changed nodeType:(int64_t)type fabricUUID:(id)d;
- (void)_notifyWakeOnDeviceConnectionChanged:(int64_t)changed eMACAddress:(id)address;
- (void)_retryWEDConnectionToAccessoryWithDelayInMs:(double)ms;
- (void)_startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)_startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion;
- (void)_startThreadRadioForSystemCommissionerFabricUUID:(id)d;
- (void)_startThreadRadioForTargetFabricUUID:(id)d preventDisconnect:(BOOL)disconnect;
- (void)_stopAccessoryFirmwareUpdateWithCompletion:(id)completion;
- (void)_stopAccessoryPairingWithCompletion:(id)completion;
- (void)_stopThreadRadioForSystemCommissionerFabricUUID:(id)d;
- (void)_stopThreadRadioForTargetFabricUUID:(id)d;
- (void)_updateFabricUUIDOfActiveThreadNetwork:(id)network isFabricUUIDOfSystemCommissioner:(BOOL)commissioner;
- (void)allowDisconnect;
- (void)connectToAccessoryWithExtendedMACAddress:(id)address completion:(id)completion;
- (void)connectToWEDAccessory:(id)accessory completion:(id)completion;
- (void)disconnectFromWEDAccessory:(id)accessory completion:(id)completion;
- (void)dispatchAfter:(unint64_t)after block:(id)block;
- (void)dispatchBlock:(id)block;
- (void)handleDeviceLockStateChange:(BOOL)change;
- (void)notifyPeripheralDeviceNodeTypeChanged:(int64_t)changed;
- (void)notifyThreadRadioStateChanged:(int64_t)changed nodeType:(int64_t)type fabricUUID:(id)d;
- (void)notifyWakeOnDeviceConnectionChanged:(int64_t)changed eMACAddress:(id)address;
- (void)overrideLocationCheckForPairingForFabricUUID:(id)d;
- (void)postNotification:(id)notification userInfo:(id)info;
- (void)setDelegate:(id)delegate;
- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion;
- (void)startThreadRadioForHomeWithFabricUUID:(id)d;
- (void)startThreadRadioForHomeWithFabricUUID:(id)d preventDisconnect:(BOOL)disconnect;
- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)d;
- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)d completion:(id)completion;
- (void)stopAccessoryFirmwareUpdateWithCompletion:(id)completion;
- (void)stopAccessoryPairingWithCompletion:(id)completion;
- (void)stopThreadOnDeviceLockTimeout;
- (void)stopThreadOnUserLogout;
- (void)stopThreadRadioForHomeWithFabricUUID:(id)d;
- (void)stopThreadRadioForSystemCommissionerFabricUUID:(id)d;
@end

@implementation HMMTRThreadRadioManager

- (HMMTRAccessoryServer)wedAccessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_wedAccessoryServer);

  return WeakRetained;
}

- (HMMTRAccessoryServer)pairingAccessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingAccessoryServer);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)_connectionStateValueToString:(int64_t)string
{
  if (string > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2786EDFA8[string];
  }
}

- (id)_nodeTypeValueToString:(int64_t)string
{
  if ((string - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2786EDF70[string - 1];
  }
}

- (void)dispatchAfter:(unint64_t)after block:(id)block
{
  blockCopy = block;
  workQueue = [(HMMTRThreadRadioManager *)self workQueue];
  dispatch_after(after, workQueue, blockCopy);
}

- (void)dispatchBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMMTRThreadRadioManager *)self workQueue];
  dispatch_async(workQueue, blockCopy);
}

- (void)postNotification:(id)notification userInfo:(id)info
{
  v6 = MEMORY[0x277CCAB98];
  infoCopy = info;
  notificationCopy = notification;
  defaultCenter = [v6 defaultCenter];
  [defaultCenter postNotificationName:notificationCopy object:self userInfo:infoCopy];
}

- (void)notifyPeripheralDeviceNodeTypeChanged:(int64_t)changed
{
  v24 = *MEMORY[0x277D85DE8];
  if (changed > 7)
  {
    v10 = 0;
  }

  else
  {
    if (((1 << changed) & 0xCF) != 0)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [(HMMTRThreadRadioManager *)selfCopy _nodeTypeValueToString:changed];
        v20 = 138543618;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pairing accessory is not sleepy (nodeType: %@)", &v20, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v7 = HMFGetOSLogHandle();
      v10 = 1;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMMTRThreadRadioManager *)selfCopy2 _nodeTypeValueToString:changed];
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Pairing accessory is sleepy (nodeType: %@)", &v20, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  pairingAccessoryServer = [(HMMTRThreadRadioManager *)self pairingAccessoryServer];
  v12 = pairingAccessoryServer;
  if (pairingAccessoryServer)
  {
    [pairingAccessoryServer handleThreadDirectConnectionSleepyTypeChange:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@notifyPeripheralDeviceNodeTypeChanged: could not get a strong reference to accessory server", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)_notifyWakeOnDeviceConnectionChanged:(int64_t)changed eMACAddress:(id)address
{
  v22 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)selfCopy eMACAddressOfWEDAccessory];
    v14 = 138544130;
    v15 = v10;
    v16 = 2112;
    v17 = addressCopy;
    v18 = 2048;
    changedCopy = changed;
    v20 = 2112;
    v21 = eMACAddressOfWEDAccessory;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Received thread WED connection changed notification for eMACAddress: %@ with state: %ld, eMACAddress of last connection: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if ((changed - 2) <= 2)
  {
    eMACAddressOfWEDAccessory2 = [(HMMTRThreadRadioManager *)selfCopy eMACAddressOfWEDAccessory];
    if ([eMACAddressOfWEDAccessory2 isEqualToString:addressCopy])
    {
      isWEDConnectionRetryActive = [(HMMTRThreadRadioManager *)selfCopy isWEDConnectionRetryActive];

      if (!isWEDConnectionRetryActive)
      {
        [(HMMTRThreadRadioManager *)selfCopy setIsWEDConnectionRetryActive:1];
        [(HMMTRThreadRadioManager *)selfCopy _retryWEDConnectionToAccessoryWithDelayInMs:100.0];
      }
    }

    else
    {
    }
  }
}

- (void)notifyWakeOnDeviceConnectionChanged:(int64_t)changed eMACAddress:(id)address
{
  addressCopy = address;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMMTRThreadRadioManager_notifyWakeOnDeviceConnectionChanged_eMACAddress___block_invoke;
  v8[3] = &unk_2786EF918;
  v9 = addressCopy;
  changedCopy = changed;
  v8[4] = self;
  v7 = addressCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v8];
}

- (void)_retryWEDConnectionToAccessoryWithDelayInMs:(double)ms
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMMTRThreadRadioManager *)self _shouldRetryWEDConnectionToAccessory])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)selfCopy eMACAddressOfWEDAccessory];
      msCopy = ms;
      *buf = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = eMACAddressOfWEDAccessory;
      v17 = 2048;
      v18 = msCopy;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Attempting to retry WED connection to eMACAddress: %@ after %f milliseconds", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = dispatch_time(0, (ms * 1000000.0));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke;
    v12[3] = &unk_2786F0CA8;
    v12[4] = selfCopy;
    [(HMMTRThreadRadioManager *)selfCopy dispatchAfter:v11 block:v12];
  }
}

void __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldRetryWEDConnectionToAccessory])
  {
    v2 = [*(a1 + 32) eMACAddressOfWEDAccessory];
    v3 = [v2 dataUsingEncoding:4];

    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to retry WED connection to eMACAddress: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_35;
    v10[3] = &unk_2786EF290;
    v10[4] = v9;
    [v9 _connectToAccessoryWithExtendedMACAddress:v3 forRetry:1 completion:v10];
  }
}

void __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_35(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@RETRY: Failed to establish WED connection to accessory with emac %@, error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_36;
    v14[3] = &unk_2786EF328;
    v14[4] = v10;
    v15 = v3;
    [v10 dispatchBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@RETRY: Connected to WED accessory with emac: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setIsWEDConnectionRetryActive:0];
    v13 = [*(a1 + 32) retryCompletionHandler];
    [*(a1 + 32) setRetryCompletionHandler:0];
    if (v13)
    {
      v13[2](v13, 0);
    }
  }
}

uint64_t __71__HMMTRThreadRadioManager__retryWEDConnectionToAccessoryWithDelayInMs___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _computeRetryDelayForError:*(a1 + 40)];

  return [v1 _retryWEDConnectionToAccessoryWithDelayInMs:?];
}

- (double)_computeRetryDelayForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  v13 = 0x4059000000000000;
  if (errorCopy && ([errorCopy userInfo], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    userInfo = [v4 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA498]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [MEMORY[0x277CCAC80] scannerWithString:v9];
      if (([v10 scanDouble:&v13] & 1) == 0)
      {
        v13 = 0x4059000000000000;
      }
    }

    v11 = *&v13;
  }

  else
  {
    v11 = 100.0;
  }

  return v11;
}

- (BOOL)_shouldRetryWEDConnectionToAccessory
{
  v32 = *MEMORY[0x277D85DE8];
  browser = [(HMMTRThreadRadioManager *)self browser];
  if (![browser isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    goto LABEL_7;
  }

  eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)self eMACAddressOfWEDAccessory];
  if (!eMACAddressOfWEDAccessory || ![(HMMTRThreadRadioManager *)self isWEDConnectionRetryActive])
  {

LABEL_7:
    goto LABEL_8;
  }

  isReadyToEstablishWEDConnection = [(HMMTRThreadRadioManager *)self isReadyToEstablishWEDConnection];

  if (isReadyToEstablishWEDConnection)
  {
    return 1;
  }

LABEL_8:
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    eMACAddressOfWEDAccessory2 = [(HMMTRThreadRadioManager *)selfCopy eMACAddressOfWEDAccessory];
    browser2 = [(HMMTRThreadRadioManager *)selfCopy browser];
    [browser2 isCurrentDeviceAllowedAccessoryControlDespiteReachableResident];
    v13 = HMFBooleanToString();
    [(HMMTRThreadRadioManager *)selfCopy isWEDConnectionRetryActive];
    v14 = HMFBooleanToString();
    [(HMMTRThreadRadioManager *)selfCopy isReadyToEstablishWEDConnection];
    v15 = HMFBooleanToString();
    v22 = 138544386;
    v23 = v10;
    v24 = 2112;
    v25 = eMACAddressOfWEDAccessory2;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Not retrying thread connection. eMACAddress: %@, allowedAccessoryControlDespiteReachableResident: %@, connection retry: %@, isReadyToEstablishWEDConnection: %@", &v22, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMMTRThreadRadioManager *)selfCopy setIsWEDConnectionRetryActive:0];
  retryCompletionHandler = [(HMMTRThreadRadioManager *)selfCopy retryCompletionHandler];
  [(HMMTRThreadRadioManager *)selfCopy setRetryCompletionHandler:0];
  if (retryCompletionHandler)
  {
    v17 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    (retryCompletionHandler)[2](retryCompletionHandler, v17);
  }

  wedAccessoryServer = [(HMMTRThreadRadioManager *)selfCopy wedAccessoryServer];

  if (wedAccessoryServer)
  {
    browser3 = [(HMMTRThreadRadioManager *)selfCopy browser];
    wedAccessoryServer2 = [(HMMTRThreadRadioManager *)selfCopy wedAccessoryServer];
    v21 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:14];
    [browser3 abortOperationsForAccessoryServer:wedAccessoryServer2 reason:v21];
  }

  return 0;
}

- (void)_notifyThreadRadioStateChanged:(int64_t)changed nodeType:(int64_t)type fabricUUID:(id)d
{
  v63 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138544386;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = changed;
    *&buf[22] = 2048;
    typeCopy = type;
    *v62 = 2112;
    *&v62[2] = dCopy;
    *&v62[10] = 2048;
    *&v62[12] = [(HMMTRThreadRadioManager *)selfCopy lastKnownThreadNetworkConnectionState];
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received thread radio state changed notification, connectionState: %ld, nodeType: %ld, fabric:%@, last known connectionState: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v9);
  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfActiveThreadNetwork];
  v14 = fabricUUIDOfActiveThreadNetwork == 0;

  if (v14)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@No active fabric, no action taken on thread state change", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    [(HMMTRThreadRadioManager *)v32 setLastKnownThreadNetworkConnectionState:changed];
  }

  else
  {
    if (!dCopy)
    {
      browser = [(HMMTRThreadRadioManager *)selfCopy browser];
      dCopy = [browser systemCommissionerFabricUUID];
    }

    fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfActiveThreadNetwork];
    v17 = [fabricUUIDOfActiveThreadNetwork2 isEqual:dCopy];

    if (v17)
    {
      if (changed == 1)
      {
        if ([(HMMTRThreadRadioManager *)selfCopy lastKnownThreadNetworkConnectionState]&& [(HMMTRThreadRadioManager *)selfCopy lastKnownThreadNetworkConnectionState]!= 1)
        {
          context = objc_autoreleasePoolPush();
          v40 = selfCopy;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
            [(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric];
            v43 = HMFBooleanToString();
            [(HMMTRThreadRadioManager *)v40 preventDisconnect];
            v44 = HMFBooleanToString();
            *buf = 138544130;
            *&buf[4] = v51;
            *&buf[12] = 2112;
            *&buf[14] = fabricUUIDOfActiveThreadNetwork3;
            *&buf[22] = 2112;
            typeCopy = v43;
            *v62 = 2112;
            *&v62[2] = v44;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unexpected, thread radio went offline. Restarting thread radio for fabric ID: %@, is system commissioner: %@, preventDisconnect = %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(context);
          v56[0] = 0;
          v56[1] = v56;
          v56[2] = 0x2020000000;
          preventDisconnect = [(HMMTRThreadRadioManager *)v40 preventDisconnect];
          v54[0] = 0;
          v54[1] = v54;
          v54[2] = 0x2020000000;
          threadNetworkActivatedForSystemCommissionerFabric = [(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          typeCopy = __Block_byref_object_copy__4540;
          *v62 = __Block_byref_object_dispose__4541;
          *&v62[8] = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
          if ([(HMMTRThreadRadioManager *)v40 threadNetworkActivatedForSystemCommissionerFabric])
          {
            delegate = [(HMMTRThreadRadioManager *)v40 delegate];
            [delegate stopThreadRadioForUserPreferredNetwork];
          }

          else
          {
            delegate = [(HMMTRThreadRadioManager *)v40 delegate];
            fabricUUIDOfActiveThreadNetwork4 = [(HMMTRThreadRadioManager *)v40 fabricUUIDOfActiveThreadNetwork];
            [delegate stopThreadRadioForHomeWithFabricUUID:fabricUUIDOfActiveThreadNetwork4];
          }

          [(HMMTRThreadRadioManager *)v40 setPreventDisconnect:0];
          [(HMMTRThreadRadioManager *)v40 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
          if (![(HMMTRThreadRadioManager *)v40 pendingThreadStart])
          {
            [(HMMTRThreadRadioManager *)v40 setPendingThreadStart:1];
            workQueue = [(HMMTRThreadRadioManager *)v40 workQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __78__HMMTRThreadRadioManager__notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke;
            block[3] = &unk_2786EDF50;
            block[4] = v40;
            block[5] = v54;
            block[6] = buf;
            block[7] = v56;
            dispatch_async(workQueue, block);
          }

          _Block_object_dispose(buf, 8);

          _Block_object_dispose(v54, 8);
          _Block_object_dispose(v56, 8);
        }

        goto LABEL_36;
      }

      if (changed == 3)
      {
        fabricUUIDOfPendingStartPairingBlock = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfPendingStartPairingBlock];
        if ([dCopy isEqual:fabricUUIDOfPendingStartPairingBlock])
        {
          pendingStartPairingBlock = [(HMMTRThreadRadioManager *)selfCopy pendingStartPairingBlock];
          v20 = pendingStartPairingBlock == 0;

          if (v20)
          {
            goto LABEL_16;
          }

          v21 = objc_autoreleasePoolPush();
          v22 = selfCopy;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier();
            v25 = [(HMMTRThreadRadioManager *)v22 _connectionStateValueToString:3];
            *buf = 138543874;
            *&buf[4] = v24;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            typeCopy = dCopy;
            _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, calling start pairing block now", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v21);
          pendingStartPairingBlock2 = [(HMMTRThreadRadioManager *)v22 pendingStartPairingBlock];
          fabricUUIDOfPendingStartPairingBlock = pendingStartPairingBlock2;
          if (pendingStartPairingBlock2)
          {
            (*(pendingStartPairingBlock2 + 16))(pendingStartPairingBlock2, 0);
          }
        }
      }

LABEL_16:
      if ([(HMMTRThreadRadioManager *)selfCopy isWEDConnectionRetryActive])
      {
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@WED connection retry is active", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
      }

LABEL_36:
      [(HMMTRThreadRadioManager *)selfCopy setLastKnownThreadNetworkConnectionState:changed];
      v58[0] = @"HMMTRThreadRadioConnectionStateKey";
      v48 = [MEMORY[0x277CCABB0] numberWithInteger:changed];
      v58[1] = @"HMMTRThreadRadioNodeTypeKey";
      v59[0] = v48;
      v49 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v59[1] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];

      [(HMMTRThreadRadioManager *)selfCopy postNotification:@"HMMTRThreadRadioStateChangedNotification" userInfo:v50];
      goto LABEL_37;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      fabricUUIDOfActiveThreadNetwork5 = [(HMMTRThreadRadioManager *)v36 fabricUUIDOfActiveThreadNetwork];
      *buf = 138543874;
      *&buf[4] = v38;
      *&buf[12] = 2112;
      *&buf[14] = fabricUUIDOfActiveThreadNetwork5;
      *&buf[22] = 2112;
      typeCopy = dCopy;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Dropping notification as the fabricID does not match that of the active network, activeNetworkFabricUUID: %@, fabricUUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
  }

LABEL_37:
}

uint64_t __78__HMMTRThreadRadioManager__notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPendingThreadStart:0];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {

    return [v2 startThreadRadioForSystemCommissionerFabricUUID:v3];
  }

  else
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);

    return [v2 startThreadRadioForHomeWithFabricUUID:v3 preventDisconnect:v5];
  }
}

- (void)notifyThreadRadioStateChanged:(int64_t)changed nodeType:(int64_t)type fabricUUID:(id)d
{
  dCopy = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HMMTRThreadRadioManager_notifyThreadRadioStateChanged_nodeType_fabricUUID___block_invoke;
  v10[3] = &unk_2786EDF28;
  changedCopy = changed;
  typeCopy = type;
  v10[4] = self;
  v11 = dCopy;
  v9 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v10];
}

- (void)_updateFabricUUIDOfActiveThreadNetwork:(id)network isFabricUUIDOfSystemCommissioner:(BOOL)commissioner
{
  commissionerCopy = commissioner;
  [(HMMTRThreadRadioManager *)self setFabricUUIDOfActiveThreadNetwork:network];

  [(HMMTRThreadRadioManager *)self setThreadNetworkActivatedForSystemCommissionerFabric:commissionerCopy];
}

- (BOOL)isReadyToTransitionToFullRouterModeForFirmwareUpdate
{
  v24 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    delegate = [(HMMTRThreadRadioManager *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      deviceSupportsThreadService = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (deviceSupportsThreadService)
      {
        fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (fabricUUIDOfActiveThreadNetwork)
        {
          if ([(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric])
          {
            v7 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v22 = 138543362;
              v23 = v10;
              v11 = "%{public}@Firmware updates shouldn't be triggered from system commissioner fabric";
LABEL_17:
              v17 = v9;
              v18 = OS_LOG_TYPE_ERROR;
              goto LABEL_18;
            }
          }

          else
          {
            if (![(HMMTRThreadRadioManager *)self isPairingActive])
            {
              delegate2 = [(HMMTRThreadRadioManager *)self delegate];
              v20 = [delegate2 getThreadNetworkConnectionStateWithFabricUUID:fabricUUIDOfActiveThreadNetwork];

              if (v20 == 3)
              {
                delegate3 = [(HMMTRThreadRadioManager *)self delegate];
                selfCopy4 = [delegate3 getThreadNetworkNodeTypeWithFabricUUID:fabricUUIDOfActiveThreadNetwork];

                if (selfCopy4 <= 7)
                {
                  LODWORD(selfCopy4) = 0x86u >> selfCopy4;
                  goto LABEL_21;
                }
              }

LABEL_20:
              LOBYTE(selfCopy4) = 0;
LABEL_21:

              return selfCopy4 & 1;
            }

            v7 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v9 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v10 = HMFGetLogIdentifier();
              v22 = 138543362;
              v23 = v10;
              v11 = "%{public}@Currently in pairing mode, cannot transition to fw update mode";
              goto LABEL_17;
            }
          }
        }

        else
        {
          v7 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = HMFGetLogIdentifier();
            v22 = 138543362;
            v23 = v10;
            v11 = "%{public}@isReadyToTransitionToFullRouterModeForFirmwareUpdate - Thread is not active";
            v17 = v9;
            v18 = OS_LOG_TYPE_INFO;
LABEL_18:
            _os_log_impl(&dword_22AEAE000, v17, v18, v11, &v22, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v7);
        goto LABEL_20;
      }
    }
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v15;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  LOBYTE(selfCopy4) = 0;
  return selfCopy4 & 1;
}

- (BOOL)isReadyToEstablishWEDConnection
{
  v32 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    delegate = [(HMMTRThreadRadioManager *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      deviceSupportsThreadService = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (deviceSupportsThreadService)
      {
        fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (fabricUUIDOfActiveThreadNetwork)
        {
          threadNetworkActivatedForSystemCommissionerFabric = [(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric];
          delegate2 = [(HMMTRThreadRadioManager *)self delegate];
          v9 = delegate2;
          if (threadNetworkActivatedForSystemCommissionerFabric)
          {
            v29 = 0;
            v10 = [delegate2 getUserPreferredThreadNetworkConnectionStateWithError:&v29];
            v11 = v29;

            if (v11)
            {
              v12 = 1;
            }

            else if (v10 == 3)
            {
              delegate3 = [(HMMTRThreadRadioManager *)self delegate];
              v28 = 0;
              v26 = [delegate3 getUserPreferredThreadNetworkNodeTypeWithError:&v28];
              v11 = v28;

              if (v11)
              {
                v27 = 1;
              }

              else
              {
                v27 = v26 == 1;
              }

              v12 = v27;
            }

            else
            {
              v11 = 0;
              v12 = 0;
            }

            goto LABEL_28;
          }

          v22 = [delegate2 getThreadNetworkConnectionStateWithFabricUUID:fabricUUIDOfActiveThreadNetwork];

          if (v22 == 3)
          {
            delegate4 = [(HMMTRThreadRadioManager *)self delegate];
            v24 = [delegate4 getThreadNetworkNodeTypeWithFabricUUID:fabricUUIDOfActiveThreadNetwork];

            if (v24 == 1)
            {
              v12 = 1;
LABEL_28:

              return v12;
            }
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543362;
            v31 = v21;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@isReadyToEstablishWEDConnection - Thread is not active", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
        }

        v12 = 0;
        goto LABEL_28;
      }
    }
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v16;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  return 0;
}

- (BOOL)isThreadNetworkConnected
{
  v29 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    delegate = [(HMMTRThreadRadioManager *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      deviceSupportsThreadService = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService];

      if (deviceSupportsThreadService)
      {
        fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
        if (!fabricUUIDOfActiveThreadNetwork)
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543362;
            v28 = v22;
            _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@isThreadNetworkConnected - Thread is not active", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
          goto LABEL_22;
        }

        threadNetworkActivatedForSystemCommissionerFabric = [(HMMTRThreadRadioManager *)self threadNetworkActivatedForSystemCommissionerFabric];
        delegate2 = [(HMMTRThreadRadioManager *)self delegate];
        v9 = delegate2;
        if (threadNetworkActivatedForSystemCommissionerFabric)
        {
          v26 = 0;
          v10 = [delegate2 getUserPreferredThreadNetworkConnectionStateWithError:&v26];
          v11 = v26;

          v12 = 0;
          if (!v11 && v10 == 3)
          {
            delegate3 = [(HMMTRThreadRadioManager *)self delegate];
            v25 = 0;
            v12 = [delegate3 getUserPreferredThreadNetworkNodeTypeWithError:&v25];
            v11 = v25;

            if (v11)
            {
              v12 = 0;
            }
          }
        }

        else
        {
          v23 = [delegate2 getThreadNetworkConnectionStateWithFabricUUID:fabricUUIDOfActiveThreadNetwork];

          if (v23 != 3)
          {
            goto LABEL_22;
          }

          delegate4 = [(HMMTRThreadRadioManager *)self delegate];
          v12 = [delegate4 getThreadNetworkNodeTypeWithFabricUUID:fabricUUIDOfActiveThreadNetwork];
        }

        if (v12 <= 7)
        {
          LODWORD(selfCopy2) = 0xFCu >> v12;
LABEL_23:

          return selfCopy2 & 1;
        }

LABEL_22:
        LOBYTE(selfCopy2) = 0;
        goto LABEL_23;
      }
    }
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v17;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  LOBYTE(selfCopy2) = 0;
  return selfCopy2 & 1;
}

- (void)_stopThreadRadioForSystemCommissionerFabricUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v31, 0xCu);
    }

    v24 = v20;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Stop thread for system commissioner fabric %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!dCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy2;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid fabricID, ignoring thread radio stop", &v31, 0xCu);
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if ([(HMMTRThreadRadioManager *)selfCopy2 preventDisconnect])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy2;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
      v31 = 138543874;
      v32 = v15;
      v33 = 2112;
      v34 = dCopy;
      v35 = 2112;
      v36 = fabricUUIDOfActiveThreadNetwork;
      v17 = "%{public}@Preventing thread stop for system commissioner fabricID %@ because preventDisconnect is true and locked to fabric %@";
      v18 = v14;
      v19 = 32;
LABEL_24:
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, v17, &v31, v19);

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  if (fabricUUIDOfActiveThreadNetwork2)
  {
    v26 = fabricUUIDOfActiveThreadNetwork2;
    fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
    v28 = [fabricUUIDOfActiveThreadNetwork3 isEqual:dCopy];

    if ((v28 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy2;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
        v31 = 138543618;
        v32 = v15;
        v33 = 2112;
        v34 = fabricUUIDOfActiveThreadNetwork;
        v17 = "%{public}@Thread network is running for another fabric ID %@. Not stopping Thread.";
        v18 = v14;
        v19 = 22;
        goto LABEL_24;
      }

LABEL_26:

      v24 = v12;
LABEL_13:
      objc_autoreleasePoolPop(v24);
      goto LABEL_14;
    }
  }

  [(HMMTRThreadRadioManager *)selfCopy2 setLastKnownThreadNetworkConnectionState:1];
  delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
  [delegate stopThreadRadioForUserPreferredNetwork];

  [(HMMTRThreadRadioManager *)selfCopy2 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) && [(HMMTRThreadRadioManager *)selfCopy2 deviceIsLockedAndPendingStopThread])
  {
    delegate2 = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
    [delegate2 stopThreadRadioOnDeviceLock];
  }

LABEL_14:
}

- (void)stopThreadRadioForSystemCommissionerFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HMMTRThreadRadioManager_stopThreadRadioForSystemCommissionerFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_startThreadRadioForSystemCommissionerFabricUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v24, 0xCu);
    }

    v22 = v18;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Start thread for system commissioner fabric %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (dCopy)
  {
    fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];

    if (!fabricUUIDOfActiveThreadNetwork)
    {
      [(HMMTRThreadRadioManager *)selfCopy2 _updateFabricUUIDOfActiveThreadNetwork:dCopy isFabricUUIDOfSystemCommissioner:1];
      [(HMMTRThreadRadioManager *)selfCopy2 setPreventDisconnect:0];
      delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
      [delegate startThreadRadioForUserPreferredNetwork];

      goto LABEL_14;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy2;
    v15 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v16 = HMFGetLogIdentifier();
    fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)v14 fabricUUIDOfActiveThreadNetwork];
    v24 = 138543618;
    v25 = v16;
    v26 = 2112;
    v27 = fabricUUIDOfActiveThreadNetwork2;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Thread network is already running for fabric %@. Not starting Thread.", &v24, 0x16u);

    goto LABEL_17;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy2;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v16;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Invalid fabricUUID, ignoring thread radio start", &v24, 0xCu);
LABEL_17:
  }

LABEL_18:

  v22 = v13;
LABEL_13:
  objc_autoreleasePoolPop(v22);
LABEL_14:
}

- (void)overrideLocationCheckForPairingForFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HMMTRThreadRadioManager_overrideLocationCheckForPairingForFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

void __72__HMMTRThreadRadioManager_overrideLocationCheckForPairingForFabricUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 overrideLocationCheckForPairingForFabricUUID:*(a1 + 40)];
}

- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke;
    v11[3] = &unk_2786F0EA8;
    v11[4] = self;
    v12 = dCopy;
    v13 = completionCopy;
    v8 = completionCopy;
    v9 = dCopy;
    [(HMMTRThreadRadioManager *)self dispatchBlock:v11];
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke(v10);
  }
}

uint64_t __86__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startThreadRadioForSystemCommissionerFabricUUID:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)startThreadRadioForSystemCommissionerFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HMMTRThreadRadioManager_startThreadRadioForSystemCommissionerFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_stopThreadRadioForTargetFabricUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, v7 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v6, !v7))
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v24, 0xCu);
    }

    v21 = v17;
    goto LABEL_13;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Stop thread for fabric %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!dCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy2;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid fabric UUID, ignoring thread radio stop", &v24, 0xCu);
      goto LABEL_17;
    }

LABEL_18:

    v21 = v12;
LABEL_13:
    objc_autoreleasePoolPop(v21);
    goto LABEL_14;
  }

  if ([(HMMTRThreadRadioManager *)selfCopy2 preventDisconnect])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy2;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)v13 fabricUUIDOfActiveThreadNetwork];
      v24 = 138543874;
      v25 = v15;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = fabricUUIDOfActiveThreadNetwork;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Preventing thread stop for fabric %@ because preventDisconnect is true and locked to fabric %@", &v24, 0x20u);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  [(HMMTRThreadRadioManager *)selfCopy2 setLastKnownThreadNetworkConnectionState:1];
  delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
  [delegate stopThreadRadioForHomeWithFabricUUID:dCopy];

  [(HMMTRThreadRadioManager *)selfCopy2 _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  [(HMMTRThreadRadioManager *)selfCopy2 setEMACAddressOfWEDAccessory:0];
  [(HMMTRThreadRadioManager *)selfCopy2 setWedAccessoryServer:0];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) && [(HMMTRThreadRadioManager *)selfCopy2 deviceIsLockedAndPendingStopThread])
  {
    delegate2 = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
    [delegate2 stopThreadRadioOnDeviceLock];
  }

LABEL_14:
}

- (void)stopThreadRadioForHomeWithFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HMMTRThreadRadioManager_stopThreadRadioForHomeWithFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_allowDisconnect
{
  v30 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && ([(HMMTRThreadRadioManager *)self delegate], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v4, v5))
  {
    fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
    if (!fabricUUIDOfActiveThreadNetwork || (v7 = fabricUUIDOfActiveThreadNetwork, v8 = [(HMMTRThreadRadioManager *)self preventDisconnect], v7, !v8))
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfActiveThreadNetwork];
        [(HMMTRThreadRadioManager *)selfCopy preventDisconnect];
        v14 = HMFBooleanToString();
        v24 = 138543874;
        v25 = v12;
        v26 = 2112;
        v27 = fabricUUIDOfActiveThreadNetwork2;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected state, fabricUUIDOfActiveThreadNetwork = %@, preventDisconnect = %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
      v24 = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = fabricUUIDOfActiveThreadNetwork3;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Allowing thread stop for fabric %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRThreadRadioManager *)selfCopy2 setPreventDisconnect:0];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (void)allowDisconnect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__HMMTRThreadRadioManager_allowDisconnect__block_invoke;
  v2[3] = &unk_2786F0CA8;
  v2[4] = self;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v2];
}

- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)d
{
  dCopy = d;
  delegate = [(HMMTRThreadRadioManager *)self delegate];
  v6 = [delegate hasMatterThreadAccessoryInHomeWithFabricUUID:dCopy];

  return v6;
}

- (void)_stopAccessoryFirmwareUpdateWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v22 = v18;
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)selfCopy2 eMACAddressOfWEDAccessory];
    *buf = 138543618;
    v35 = v9;
    v36 = 2112;
    v37 = eMACAddressOfWEDAccessory;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@stop accessory firmware update for accessory with emac = %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];

  if (!fabricUUIDOfActiveThreadNetwork)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy2;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of stop firmware update", buf, 0xCu);
    }

    v22 = v24;
LABEL_14:
    objc_autoreleasePoolPop(v22);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    completionCopy[2](completionCopy, v23);

    goto LABEL_15;
  }

  if (![(HMMTRThreadRadioManager *)selfCopy2 isFirmwareUpdateActive])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy2;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Not currently in a firmware update mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
  fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __70__HMMTRThreadRadioManager__stopAccessoryFirmwareUpdateWithCompletion___block_invoke;
  v31 = &unk_2786EF8A0;
  v32 = selfCopy2;
  v33 = completionCopy;
  [delegate stopAccessoryFirmwareUpdateWithFabricUUID:fabricUUIDOfActiveThreadNetwork2 completion:&v28];

  [(HMMTRThreadRadioManager *)selfCopy2 allowDisconnect:v28];
LABEL_15:
}

void __70__HMMTRThreadRadioManager__stopAccessoryFirmwareUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      v9 = "%{public}@Failed to inform thread SW of stop firmware update";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    v9 = "%{public}@Informed thread SW of stop firmware update";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setFirmwareUpdateActive:0];
  [*(a1 + 32) setEMACAddressOfFWUpdatesAccessory:0];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

- (void)stopAccessoryFirmwareUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HMMTRThreadRadioManager_stopAccessoryFirmwareUpdateWithCompletion___block_invoke;
  v6[3] = &unk_2786EF5A8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)_startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v43 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v27 = v23;
    goto LABEL_13;
  }

  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (!fabricUUIDOfActiveThreadNetwork)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v29;
      v39 = 2112;
      v40 = addressCopy;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of start firmware update with eMAC %@", buf, 0x16u);
    }

    v27 = v12;
LABEL_13:
    objc_autoreleasePoolPop(v27);
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    completionCopy[2](completionCopy, v28);

    goto LABEL_14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMFBooleanToString();
    *buf = 138543874;
    v38 = v16;
    v39 = 2112;
    v40 = addressCopy;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@start accessory firmware update for accessory with eMAC %@, isWED = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if ([(HMMTRThreadRadioManager *)selfCopy2 isFirmwareUpdateActive])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy2;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      eMACAddressOfFWUpdatesAccessory = [(HMMTRThreadRadioManager *)v19 eMACAddressOfFWUpdatesAccessory];
      *buf = 138543618;
      v38 = v21;
      v39 = 2112;
      v40 = eMACAddressOfFWUpdatesAccessory;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Already informed thread SW of start firmware update with emac %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
    [(HMMTRThreadRadioManager *)selfCopy2 startThreadRadioForHomeWithFabricUUID:fabricUUIDOfActiveThreadNetwork2 preventDisconnect:1];

    [(HMMTRThreadRadioManager *)selfCopy2 setFirmwareUpdateActive:1];
    if (addressCopy)
    {
      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
      [(HMMTRThreadRadioManager *)selfCopy2 setEMACAddressOfFWUpdatesAccessory:v31];
    }

    else
    {
      [(HMMTRThreadRadioManager *)selfCopy2 setEMACAddressOfFWUpdatesAccessory:0];
    }

    delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
    fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __102__HMMTRThreadRadioManager__startAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    v34[3] = &unk_2786F0C10;
    v34[4] = selfCopy2;
    v35 = addressCopy;
    v36 = completionCopy;
    [delegate startAccessoryFirmwareUpdateWithExtendedMACAddress:v35 fabricUUID:fabricUUIDOfActiveThreadNetwork3 isWedDevice:deviceCopy completion:v34];
  }

LABEL_14:
}

void __102__HMMTRThreadRadioManager__startAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform thread SW of start firmware update with emac %@, error %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setFirmwareUpdateActive:0];
    [*(a1 + 32) setEMACAddressOfFWUpdatesAccessory:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Informed thread SW of start firmware update with emac %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HMMTRThreadRadioManager_startAccessoryFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
  v12[3] = &unk_2786EEB30;
  v12[4] = self;
  v13 = addressCopy;
  deviceCopy = device;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = addressCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v12];
}

- (void)_stopAccessoryPairingWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v24 = v20;
    goto LABEL_14;
  }

  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (!fabricUUIDOfActiveThreadNetwork)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v26;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of stop pairing", buf, 0xCu);
    }

    v24 = v7;
LABEL_14:
    objc_autoreleasePoolPop(v24);
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    completionCopy[2](completionCopy, v25);

    goto LABEL_15;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    pairingAccessoryServer = [(HMMTRThreadRadioManager *)selfCopy2 pairingAccessoryServer];
    nodeID = [pairingAccessoryServer nodeID];
    eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)selfCopy2 eMACAddressOfWEDAccessory];
    *buf = 138543874;
    v34 = v11;
    v35 = 2112;
    v36 = nodeID;
    v37 = 2112;
    v38 = eMACAddressOfWEDAccessory;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@stop accessory pairing for accessory with nodeID = %@, emac = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMMTRThreadRadioManager *)selfCopy2 setPairingActive:0];
  [(HMMTRThreadRadioManager *)selfCopy2 setPairingAccessoryServer:0];
  delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
  fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __63__HMMTRThreadRadioManager__stopAccessoryPairingWithCompletion___block_invoke;
  v30 = &unk_2786EF8A0;
  v31 = selfCopy2;
  v32 = completionCopy;
  [delegate stopAccessoryPairingWithFabricUUID:fabricUUIDOfActiveThreadNetwork2 completion:&v27];

  v17 = [(HMMTRThreadRadioManager *)selfCopy2 pendingStartPairingBlock:v27];

  if (v17)
  {
    pendingStartPairingBlock = [(HMMTRThreadRadioManager *)selfCopy2 pendingStartPairingBlock];
    if (pendingStartPairingBlock)
    {
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      (pendingStartPairingBlock)[2](pendingStartPairingBlock, v19);
    }
  }

  [(HMMTRThreadRadioManager *)selfCopy2 allowDisconnect];

LABEL_15:
}

void __63__HMMTRThreadRadioManager__stopAccessoryPairingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      v9 = "%{public}@Failed to inform thread SW of stop pairing";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    v9 = "%{public}@Informed thread SW of stop pairing";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

- (void)stopAccessoryPairingWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HMMTRThreadRadioManager_stopAccessoryPairingWithCompletion___block_invoke;
  v6[3] = &unk_2786EF5A8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)__startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion
{
  deviceCopy = device;
  v46 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  serverCopy = server;
  completionCopy = completion;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v30;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Thread radio feature is not enabled", buf, 0xCu);
    }

    v31 = v27;
    goto LABEL_13;
  }

  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!fabricUUIDOfActiveThreadNetwork)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v32;
      v40 = 2112;
      v41 = addressCopy;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@No active thread network configured, dropping request to inform thread SW of start pairing with eMAC %@", buf, 0x16u);
    }

    v31 = v15;
LABEL_13:
    objc_autoreleasePoolPop(v31);
    retryCompletionHandler = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    completionCopy[2](completionCopy, retryCompletionHandler);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = HMFBooleanToString();
    nodeID = [serverCopy nodeID];
    *buf = 138544130;
    v39 = v19;
    v40 = 2112;
    v41 = addressCopy;
    v42 = 2112;
    v43 = v20;
    v44 = 2112;
    v45 = nodeID;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@start accessory pairing for accessory with eMAC = %@, isWED = %@, accessory nodeID = %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  [(HMMTRThreadRadioManager *)selfCopy2 overrideLocationCheckForPairingForFabricUUID:fabricUUIDOfActiveThreadNetwork2];

  fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  [(HMMTRThreadRadioManager *)selfCopy2 startThreadRadioForHomeWithFabricUUID:fabricUUIDOfActiveThreadNetwork3 preventDisconnect:1];

  [(HMMTRThreadRadioManager *)selfCopy2 setPairingActive:1];
  [(HMMTRThreadRadioManager *)selfCopy2 setPairingAccessoryServer:serverCopy];
  [(HMMTRThreadRadioManager *)selfCopy2 setIsWEDConnectionRetryActive:0];
  retryCompletionHandler = [(HMMTRThreadRadioManager *)selfCopy2 retryCompletionHandler];
  [(HMMTRThreadRadioManager *)selfCopy2 setRetryCompletionHandler:0];
  if (retryCompletionHandler)
  {
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    (retryCompletionHandler)[2](retryCompletionHandler, v25);
  }

  if (addressCopy)
  {
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
    [(HMMTRThreadRadioManager *)selfCopy2 setEMACAddressOfWEDAccessory:v26];
  }

  else
  {
    [(HMMTRThreadRadioManager *)selfCopy2 setEMACAddressOfWEDAccessory:0];
  }

  delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
  fabricUUIDOfActiveThreadNetwork4 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __112__HMMTRThreadRadioManager___startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke;
  v35[3] = &unk_2786F0C10;
  v35[4] = selfCopy2;
  v36 = addressCopy;
  v37 = completionCopy;
  [delegate startAccessoryPairingWithExtendedMACAddress:v36 fabricUUID:fabricUUIDOfActiveThreadNetwork4 isWedDevice:deviceCopy completion:v35];

LABEL_14:
}

void __112__HMMTRThreadRadioManager___startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      v10 = "%{public}@Failed to inform thread SW of start pairing with emac %@, error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v17, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v14;
    v10 = "%{public}@Informed thread SW of start pairing with emac %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);
}

- (void)_startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  serverCopy = server;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke;
  v45[3] = &unk_2786EDF00;
  objc_copyWeak(&v49, &location);
  v13 = completionCopy;
  v48 = v13;
  v44 = addressCopy;
  v46 = v44;
  deviceCopy = device;
  v14 = serverCopy;
  v47 = v14;
  v15 = MEMORY[0x2318887D0](v45);
  pendingStartPairingBlock = [(HMMTRThreadRadioManager *)self pendingStartPairingBlock];

  if (pendingStartPairingBlock)
  {
    pendingStartPairingBlock2 = [(HMMTRThreadRadioManager *)self pendingStartPairingBlock];
    if (pendingStartPairingBlock2)
    {
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      (pendingStartPairingBlock2)[2](pendingStartPairingBlock2, v18);
    }
  }

  delegate = [(HMMTRThreadRadioManager *)self delegate];
  fabricUUID = [v14 fabricUUID];
  v21 = [delegate getThreadNetworkConnectionStateWithFabricUUID:fabricUUID];

  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];
  if (fabricUUIDOfActiveThreadNetwork && ((-[HMMTRThreadRadioManager fabricUUIDOfActiveThreadNetwork](self, "fabricUUIDOfActiveThreadNetwork"), v23 = objc_claimAutoreleasedReturnValue(), [v14 fabricUUID], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "isEqual:", v24), v21 == 3) ? (v26 = v25) : (v26 = 0), v24, v23, fabricUUIDOfActiveThreadNetwork, (v26 & 1) != 0))
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [(HMMTRThreadRadioManager *)selfCopy _connectionStateValueToString:3];
      fabricUUID2 = [v14 fabricUUID];
      fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfActiveThreadNetwork];
      *buf = 138544130;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = fabricUUID2;
      v58 = 2112;
      v59 = fabricUUIDOfActiveThreadNetwork2;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, calling start pairing block now. ActiveThreadNetworkFabricID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    fabricUUID3 = [v14 fabricUUID];
    [(HMMTRThreadRadioManager *)selfCopy setFabricUUIDOfPendingStartPairingBlock:fabricUUID3];

    v35 = MEMORY[0x2318887D0](v15);
    fabricUUID5 = v35;
    if (v35)
    {
      (*(v35 + 16))(v35, 0);
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [(HMMTRThreadRadioManager *)selfCopy2 _connectionStateValueToString:v21];
      fabricUUID4 = [v14 fabricUUID];
      fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
      *buf = 138544130;
      v53 = v40;
      v54 = 2112;
      v55 = v41;
      v56 = 2112;
      v57 = fabricUUID4;
      v58 = 2112;
      v59 = fabricUUIDOfActiveThreadNetwork3;
      _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Thread network connection state: %@ for fabric: %@, deferring call to start pairing block. ActiveThreadNetworkFabricUUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v37);
    [(HMMTRThreadRadioManager *)selfCopy2 setPendingStartPairingBlock:v15];
    fabricUUID5 = [v14 fabricUUID];
    [(HMMTRThreadRadioManager *)selfCopy2 setFabricUUIDOfPendingStartPairingBlock:fabricUUID5];
  }

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

void __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Aborting call to thread start pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x2318887D0](*(a1 + 48));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, v3);
    }

    [v7 setPendingStartPairingBlock:0];
    [v7 setFabricUUIDOfPendingStartPairingBlock:0];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __111__HMMTRThreadRadioManager__startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke_22;
    v12[3] = &unk_2786EF8F0;
    v12[4] = WeakRetained;
    v13 = *(a1 + 32);
    v16 = *(a1 + 64);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v5 dispatchBlock:v12];
    [v5 setPendingStartPairingBlock:0];
    [v5 setFabricUUIDOfPendingStartPairingBlock:0];
  }
}

- (void)startAccessoryPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device accessoryServer:(id)server completion:(id)completion
{
  addressCopy = address;
  serverCopy = server;
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HMMTRThreadRadioManager_startAccessoryPairingWithExtendedMACAddress_isWedDevice_accessoryServer_completion___block_invoke;
  v16[3] = &unk_2786EF8F0;
  v16[4] = self;
  v17 = addressCopy;
  deviceCopy = device;
  v18 = serverCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = serverCopy;
  v15 = addressCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v16];
}

- (void)_connectToAccessoryWithExtendedMACAddress:(id)address forRetry:(BOOL)retry completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, v12 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v11, !v12))
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_10:

      objc_autoreleasePoolPop(v15);
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
      completionCopy[2](completionCopy, v14);
      goto LABEL_11;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v18;
    v19 = "%{public}@Thread radio feature is not enabled";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEBUG;
    v22 = 12;
LABEL_9:
    _os_log_impl(&dword_22AEAE000, v20, v21, v19, buf, v22);

    goto LABEL_10;
  }

  fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)self fabricUUIDOfActiveThreadNetwork];

  if (!fabricUUIDOfActiveThreadNetwork)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v18;
    v53 = 2112;
    v54 = addressCopy;
    v19 = "%{public}@No active thread network configured, dropping request to connect to accessory with eMAC %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 22;
    goto LABEL_9;
  }

  if (addressCopy)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
  }

  else
  {
    v14 = 0;
  }

  if (-[HMMTRThreadRadioManager isPairingActive](self, "isPairingActive") && !v14 || -[HMMTRThreadRadioManager isPairingActive](self, "isPairingActive") && (-[HMMTRThreadRadioManager eMACAddressOfWEDAccessory](self, "eMACAddressOfWEDAccessory"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 isEqualToString:v14], v29, (v30 & 1) == 0))
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      eMACAddressOfWEDAccessory = [(HMMTRThreadRadioManager *)selfCopy3 eMACAddressOfWEDAccessory];
      *buf = 138543874;
      v52 = v26;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = eMACAddressOfWEDAccessory;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Not processing connect request to a different WED accessory emac %@ when pairing is active for emac %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
    completionCopy[2](completionCopy, v28);
  }

  else
  {
    if (addressCopy)
    {
      [(HMMTRThreadRadioManager *)self setEMACAddressOfWEDAccessory:v14];
    }

    else
    {
      if (retry || ([(HMMTRThreadRadioManager *)self retryCompletionHandler], v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
      {
        retryCompletionHandler = 0;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v35;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Previously attempted WED connection is aborted", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        retryCompletionHandler = [(HMMTRThreadRadioManager *)selfCopy4 retryCompletionHandler];
        [(HMMTRThreadRadioManager *)selfCopy4 setRetryCompletionHandler:0];
      }

      [(HMMTRThreadRadioManager *)self setEMACAddressOfWEDAccessory:0];
      [(HMMTRThreadRadioManager *)self setIsWEDConnectionRetryActive:0];
      if (retryCompletionHandler)
      {
        v37 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
        (retryCompletionHandler)[2](retryCompletionHandler, v37);
      }

      [(HMMTRThreadRadioManager *)self setWedAccessoryServer:0];
    }

    v38 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      eMACAddressOfWEDAccessory2 = [(HMMTRThreadRadioManager *)selfCopy5 eMACAddressOfWEDAccessory];
      *buf = 138543618;
      v52 = v41;
      v53 = 2112;
      v54 = eMACAddressOfWEDAccessory2;
      _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Set eMACAddress of WED accessory to :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke;
    v49[3] = &unk_2786EDEB0;
    v49[4] = selfCopy5;
    v43 = addressCopy;
    v50 = v43;
    v44 = MEMORY[0x2318887D0](v49);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_2;
    v45[3] = &unk_2786EDED8;
    v45[4] = selfCopy5;
    v46 = v43;
    retryCopy = retry;
    v47 = completionCopy;
    (v44)[2](v44, v45);
  }

LABEL_11:
}

void __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 threadNetworkActivatedForSystemCommissionerFabric];
  v8 = [*(a1 + 32) delegate];
  v6 = *(a1 + 40);
  if (v5)
  {
    [v8 connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:*(a1 + 40) completion:v4];
  }

  else
  {
    v7 = [*(a1 + 32) fabricUUIDOfActiveThreadNetwork];
    [v8 connectToAccessoryWithExtendedMACAddress:v6 withFabricUUID:v7 completion:v4];

    v4 = v7;
  }
}

void __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_3;
  v6[3] = &unk_2786EF8F0;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 dispatchBlock:v6];
}

void *__89__HMMTRThreadRadioManager__connectToAccessoryWithExtendedMACAddress_forRetry_completion___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    return (*(*(a1 + 56) + 16))();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to accessory with emac %@, error %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isWEDConnectionRetryActive])
  {
    return (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 40) setIsWEDConnectionRetryActive:1];
  if ((*(a1 + 64) & 1) == 0)
  {
    [*(a1 + 40) setRetryCompletionHandler:*(a1 + 56)];
  }

  result = [*(a1 + 40) _retryWEDConnectionToAccessoryWithDelayInMs:100.0];
  if (*(a1 + 64) == 1)
  {
    return (*(*(a1 + 56) + 16))();
  }

  return result;
}

- (void)connectToAccessoryWithExtendedMACAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMMTRThreadRadioManager_connectToAccessoryWithExtendedMACAddress_completion___block_invoke;
  v10[3] = &unk_2786F0EA8;
  v10[4] = self;
  v11 = addressCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = addressCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v10];
}

- (void)connectToWEDAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  accessoryCopy = accessory;
  [(HMMTRThreadRadioManager *)self setWedAccessoryServer:accessoryCopy];
  eMACAddress = [accessoryCopy eMACAddress];

  v9 = [eMACAddress dataUsingEncoding:4];

  [(HMMTRThreadRadioManager *)self connectToAccessoryWithExtendedMACAddress:v9 completion:completionCopy];
}

- (void)disconnectFromWEDAccessory:(id)accessory completion:(id)completion
{
  [(HMMTRThreadRadioManager *)self connectToAccessoryWithExtendedMACAddress:0 completion:completion];

  [(HMMTRThreadRadioManager *)self setWedAccessoryServer:0];
}

- (void)_startThreadRadioForTargetFabricUUID:(id)d preventDisconnect:(BOOL)disconnect
{
  disconnectCopy = disconnect;
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() || ([(HMMTRThreadRadioManager *)self delegate], (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, v9 = [(HMMTRThreadRadioManager *)self deviceSupportsThreadService], v8, !v9))
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    v18 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v18;
    v19 = "%{public}@Thread radio feature is not enabled";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEBUG;
LABEL_12:
    v22 = 12;
    goto LABEL_13;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMFBooleanToString();
    v42 = 138544130;
    v43 = v13;
    v44 = 2112;
    v45 = dCopy;
    v46 = 2112;
    v47 = v14;
    v48 = 2048;
    lastKnownThreadNetworkConnectionState = [(HMMTRThreadRadioManager *)selfCopy2 lastKnownThreadNetworkConnectionState];
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Start thread for fabric %@, preventDisconnect = %@, last known connectionState: %ld", &v42, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (!dCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = selfCopy2;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v18 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v18;
    v19 = "%{public}@Invalid target fabric UUID, ignoring thread radio start";
    v20 = v17;
    v21 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

  if (![(HMMTRThreadRadioManager *)selfCopy2 pendingThreadStart])
  {
    fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
    if (fabricUUIDOfActiveThreadNetwork)
    {
      v25 = fabricUUIDOfActiveThreadNetwork;
      lastKnownThreadNetworkConnectionState2 = [(HMMTRThreadRadioManager *)selfCopy2 lastKnownThreadNetworkConnectionState];

      if (lastKnownThreadNetworkConnectionState2 != 1)
      {
        fabricUUIDOfActiveThreadNetwork2 = [(HMMTRThreadRadioManager *)selfCopy2 fabricUUIDOfActiveThreadNetwork];
        v28 = [fabricUUIDOfActiveThreadNetwork2 isEqual:dCopy];

        if (v28)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy2;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            v33 = HMFBooleanToString();
            v42 = 138543618;
            v43 = v32;
            v44 = 2112;
            v45 = v33;
            _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Thread network is already running for this fabric, calling threadStart and setting preventDisconnect to %@", &v42, 0x16u);
          }
        }

        else
        {
          preventDisconnect = [(HMMTRThreadRadioManager *)selfCopy2 preventDisconnect];
          v29 = objc_autoreleasePoolPush();
          v35 = selfCopy2;
          v31 = HMFGetOSLogHandle();
          v36 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
          if (preventDisconnect)
          {
            if (v36)
            {
              v37 = HMFGetLogIdentifier();
              fabricUUIDOfActiveThreadNetwork3 = [(HMMTRThreadRadioManager *)v35 fabricUUIDOfActiveThreadNetwork];
              v42 = 138543874;
              v43 = v37;
              v44 = 2112;
              v45 = dCopy;
              v46 = 2112;
              v47 = fabricUUIDOfActiveThreadNetwork3;
              _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Ignoring thread start for fabric %@, network is locked to fabric %@", &v42, 0x20u);
            }

            v23 = v29;
            goto LABEL_15;
          }

          if (v36)
          {
            v39 = HMFGetLogIdentifier();
            fabricUUIDOfActiveThreadNetwork4 = [(HMMTRThreadRadioManager *)v35 fabricUUIDOfActiveThreadNetwork];
            v42 = 138543874;
            v43 = v39;
            v44 = 2112;
            v45 = dCopy;
            v46 = 2112;
            v47 = fabricUUIDOfActiveThreadNetwork4;
            _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Thread start called for new fabric %@, will be disconnecting from thread network for fabric %@", &v42, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    [(HMMTRThreadRadioManager *)selfCopy2 _updateFabricUUIDOfActiveThreadNetwork:dCopy isFabricUUIDOfSystemCommissioner:0];
    [(HMMTRThreadRadioManager *)selfCopy2 setPreventDisconnect:disconnectCopy];
    delegate = [(HMMTRThreadRadioManager *)selfCopy2 delegate];
    [delegate startThreadRadioForHomeWithFabricUUID:dCopy];

    goto LABEL_16;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = selfCopy2;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v42 = 138543618;
    v43 = v18;
    v44 = 2112;
    v45 = dCopy;
    v19 = "%{public}@Thread start already pending, ignoring startThread request for fabric %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 22;
LABEL_13:
    _os_log_impl(&dword_22AEAE000, v20, v21, v19, &v42, v22);
  }

LABEL_14:

  v23 = v15;
LABEL_15:
  objc_autoreleasePoolPop(v23);
LABEL_16:
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)d preventDisconnect:(BOOL)disconnect
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HMMTRThreadRadioManager_startThreadRadioForHomeWithFabricUUID_preventDisconnect___block_invoke;
  v8[3] = &unk_2786F0418;
  v8[4] = self;
  v9 = dCopy;
  disconnectCopy = disconnect;
  v7 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v8];
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMMTRThreadRadioManager_startThreadRadioForHomeWithFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v6];
}

- (void)stopThreadOnUserLogout
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping thread due to user logout", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMMTRThreadRadioManager_stopThreadOnUserLogout__block_invoke;
  v7[3] = &unk_2786F0CA8;
  v7[4] = selfCopy;
  [(HMMTRThreadRadioManager *)selfCopy dispatchBlock:v7];
}

void __49__HMMTRThreadRadioManager_stopThreadOnUserLogout__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) preventDisconnect])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@stopping thread even though preventDisconnect is true due to logout", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) _allowDisconnect];
  }

  v6 = [*(a1 + 32) threadNetworkActivatedForSystemCommissionerFabric];
  v7 = [*(a1 + 32) delegate];
  v8 = v7;
  if (v6)
  {
    [v7 stopThreadRadioForUserPreferredNetwork];
  }

  else
  {
    v9 = [*(a1 + 32) fabricUUIDOfActiveThreadNetwork];
    [v8 stopThreadRadioForHomeWithFabricUUID:v9];
  }

  [*(a1 + 32) _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
  v10 = [*(a1 + 32) delegate];
  [v10 stopThreadRadioOnDeviceLock];
}

- (void)stopThreadOnDeviceLockTimeout
{
  v17 = *MEMORY[0x277D85DE8];
  preventDisconnect = [(HMMTRThreadRadioManager *)self preventDisconnect];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (preventDisconnect)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopThreadOnDeviceLockTimeout - not stopping because preventDisconnect is true", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMMTRThreadRadioManager *)selfCopy setDeviceIsLockedAndPendingStopThread:1];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopping thread due to device lock", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    threadNetworkActivatedForSystemCommissionerFabric = [(HMMTRThreadRadioManager *)selfCopy threadNetworkActivatedForSystemCommissionerFabric];
    delegate = [(HMMTRThreadRadioManager *)selfCopy delegate];
    v12 = delegate;
    if (threadNetworkActivatedForSystemCommissionerFabric)
    {
      [delegate stopThreadRadioForUserPreferredNetwork];
    }

    else
    {
      fabricUUIDOfActiveThreadNetwork = [(HMMTRThreadRadioManager *)selfCopy fabricUUIDOfActiveThreadNetwork];
      [v12 stopThreadRadioForHomeWithFabricUUID:fabricUUIDOfActiveThreadNetwork];
    }

    [(HMMTRThreadRadioManager *)selfCopy _updateFabricUUIDOfActiveThreadNetwork:0 isFabricUUIDOfSystemCommissioner:0];
    delegate2 = [(HMMTRThreadRadioManager *)selfCopy delegate];
    [delegate2 stopThreadRadioOnDeviceLock];
  }
}

- (void)handleDeviceLockStateChange:(BOOL)change
{
  changeCopy = change;
  [(HMMTRThreadRadioManager *)self setDeviceIsLockedAndPendingStopThread:0];
  if (changeCopy)
  {
    v5 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v6 = __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke;
  }

  else
  {
    v5 = &v7;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v6 = __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke_17;
  }

  v5[2] = v6;
  v5[3] = &unk_2786F0CA8;
  v5[4] = self;
  [(HMMTRThreadRadioManager *)self dispatchBlock:v7, v8];
}

void __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disconnectTimer];
  v3 = [v2 isRunning];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Thread disconnect timer is already running", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = 0x402E000000000000;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting %f seconds thread disconnect timer", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) disconnectTimer];
    [v10 resume];
  }
}

void __55__HMMTRThreadRadioManager_handleDeviceLockStateChange___block_invoke_17(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@starting thread on device unlock", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) disconnectTimer];
  [v6 suspend];

  v7 = [*(a1 + 32) browser];
  v8 = [v7 currentFabricUUID];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Not starting thread on device unlock - fabric is already active", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v13 browser];
    v15 = [v14 systemCommissionerFabricUUID];
    [v13 startThreadRadioForSystemCommissionerFabricUUID:v15];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMTRThreadRadioControllerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRThreadRadioManager)initWithBrowser:(id)browser
{
  browserCopy = browser;
  v19.receiver = self;
  v19.super_class = HMMTRThreadRadioManager;
  v5 = [(HMMTRThreadRadioManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    fabricUUIDOfActiveThreadNetwork = v5->_fabricUUIDOfActiveThreadNetwork;
    v5->_fabricUUIDOfActiveThreadNetwork = 0;

    v6->_threadNetworkActivatedForSystemCommissionerFabric = 0;
    v6->_preventDisconnect = 0;
    v6->_lastKnownThreadNetworkConnectionState = 0;
    v6->_deviceSupportsThreadService = 0;
    v6->_pairingActive = 0;
    v6->_firmwareUpdateActive = 0;
    v6->_pendingThreadStart = 0;
    v6->_isWEDConnectionRetryActive = 0;
    v6->_deviceIsLockedAndPendingStopThread = 0;
    eMACAddressOfWEDAccessory = v6->_eMACAddressOfWEDAccessory;
    v6->_eMACAddressOfWEDAccessory = 0;

    eMACAddressOfFWUpdatesAccessory = v6->_eMACAddressOfFWUpdatesAccessory;
    v6->_eMACAddressOfFWUpdatesAccessory = 0;

    v10 = HMFDispatchQueueName();
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    workQueue = v6->_workQueue;
    v6->_workQueue = v12;

    objc_storeWeak(&v6->_browser, browserCopy);
    v14 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:15.0];
    disconnectTimer = v6->_disconnectTimer;
    v6->_disconnectTimer = v14;

    [(HMFTimer *)v6->_disconnectTimer setDelegateQueue:v6->_workQueue];
    [(HMFTimer *)v6->_disconnectTimer setDelegate:v6];
    pendingStartPairingBlock = v6->_pendingStartPairingBlock;
    v6->_pendingStartPairingBlock = 0;

    fabricUUIDOfPendingStartPairingBlock = v6->_fabricUUIDOfPendingStartPairingBlock;
    v6->_fabricUUIDOfPendingStartPairingBlock = 0;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t93 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t93, &__block_literal_global_4637);
  }

  v3 = logCategory__hmf_once_v94;

  return v3;
}

uint64_t __38__HMMTRThreadRadioManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v94;
  logCategory__hmf_once_v94 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end