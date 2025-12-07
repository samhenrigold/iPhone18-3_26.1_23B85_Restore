@interface HMMTRAccessoryServerBrowser
+ (id)logCategory;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_isDeviceIDPaired:(id)paired nodeID:(id *)d targetFabricUUID:(id *)iD;
- (BOOL)_isDevicePaired:(unint64_t)paired fabricUUID:(id)d;
- (BOOL)_isNodeIDPaired:(id)paired targetFabricUUID:(id *)d;
- (BOOL)_isWedPollingDisabledForTests;
- (BOOL)_pollWedAccessoriesIfAllowed;
- (BOOL)_tryAddAccessoryConnectionRequestToExistingFabric:(id)fabric;
- (BOOL)canEstablishConnectionForNodeID:(id)d;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResident;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:(id)fabric;
- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:(id)d;
- (BOOL)isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:(id)fabric;
- (BOOL)isCurrentDeviceMobileAndAllowedAccessoryControl;
- (BOOL)isCurrentDeviceMobileAndResidentReachable;
- (BOOL)isOperationAllowedForAccessoryServer:(id)server;
- (BOOL)isOwnerForHomeWithFabric:(id)fabric;
- (BOOL)locallyDiscoveredAccessoryServerMatchesDiscriminatorOfSetupPayload:(id)payload;
- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory;
- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)d;
- (HAPAccessoryServerBrowserDelegate)delegate;
- (HMMTRAccessoryServer)commissioneeAccessoryServer;
- (HMMTRAccessoryServerBrowser)initWithQueue:(id)queue storeDirectoryURL:(id)l dataSource:(id)source;
- (HMMTRAccessoryServerBrowserDelegate)accessoryServerBrowserDelegate;
- (HMMTRControllerWrapper)systemCommissionerControllerWrapper;
- (HMMTRMatterKeypair)systemCommissionerNocSigner;
- (NSData)systemCommissionerFabricRootPublicKey;
- (NSNumber)systemCommissionerFabricID;
- (NSSet)fabricsWithActiveClients;
- (NSSet)fabricsWithActiveSecondaryClients;
- (id)_allServers;
- (id)_createCHIPAccessoryForNodeID:(unint64_t)d ifPaired:(BOOL)paired fabricUUID:(id)iD fatalError:(id *)error;
- (id)_discoveredServerWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD;
- (id)_getSystemCommissionerFabricRootCertificateWithIndex:(id)index ipk:(id *)ipk controllerNodeID:(id *)d;
- (id)_populateControllerFactoryParams;
- (id)_serverFromMTSDevicePairing:(id)pairing;
- (id)accessoryServerWithNodeID:(id)d;
- (id)appleHomeFabricWithTargetFabricUUID:(id)d;
- (id)controllerWrapperForFabricUUID:(id)d;
- (id)createSystemCommissionerFabricNOCWithSigningCertificate:(id)certificate operationalPublicKey:(__SecKey *)key fabricID:(id)d nodeID:(id)iD caseAuthenticatedTags:(id)tags error:(id *)error;
- (id)currentFabric;
- (id)deviceControllerForFabricUUID:(id)d;
- (id)discoveredAccessoryServers;
- (id)fabricDataForPairingTargetFabricUUID:(id)d;
- (id)fabricsWithActiveConnections;
- (id)fabricsWithPendingConnections;
- (id)stagedAccessoryServerWithIdentifier:(id)identifier;
- (id)storageForFabricUUID:(id)d sharedAdmin:(BOOL)admin;
- (id)storageForSystemCommissioner;
- (id)suspendedActiveClientFabricUUID;
- (id)suspendedActiveSecondaryClientFabricUUIDs;
- (int)_discriminator:(id *)_discriminator vendorID:(id *)d productID:(id *)iD CM:(id *)m fromTXTRecord:(id)record;
- (int)_initializeAndStartBonjourBrowser;
- (unint64_t)_generateNodeID;
- (unint64_t)_getRandomFabricId;
- (void)_abortAllOperationsForFabricUUID:(id)d reason:(id)reason;
- (void)_accessoryServerForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)_addDiscoveredAccessoryServerWithNodeID:(id)d fabricUUID:(id)iD;
- (void)_addToActiveFabrics:(id)fabrics;
- (void)_addToPendingFabrics:(id)fabrics;
- (void)_cleanUpMTRDevicesWithFabricUUID:(id)d;
- (void)_cleanupDisappearedServersOverBLE;
- (void)_cleanupDiscoveredServers;
- (void)_cleanupDiscoveredServersWithReason:(id)reason completion:(id)completion;
- (void)_cleanupLocallyDiscoveredServers;
- (void)_cleanupStagedServers;
- (void)_clearLocallyDiscoveredFlags;
- (void)_connectPendingFabricConnections;
- (void)_connectPendingFabricConnectionsForTargetFabricUUID:(id)d;
- (void)_deleteOldPairingsForFabricUUID:(id)d;
- (void)_disconnectFromIdleFabric:(id)fabric reason:(id)reason;
- (void)_establishConnectionWhenAllowedWithAccessoryConnectionRequest:(id)request;
- (void)_establishConnectionWhenAllowedWithFabricConnectionRequest:(id)request;
- (void)_fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)_handleAddOrUpdateWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD overBLE:(BOOL)e;
- (void)_handleBonjourBrowserBatchResults;
- (void)_handleBonjourRemoveWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD txtRecordRemove:(BOOL)remove;
- (void)_handleClientsRemovedWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason;
- (void)_handleDeviceActivityStateChange:(BOOL)change reason:(int64_t)reason;
- (void)_handleLockStateNotification;
- (void)_invalidateAccessoryServer:(id)server reason:(id)reason withCompletion:(id)completion;
- (void)_logHMMTRFeatures;
- (void)_notifyDelegateOfPairingStep:(unint64_t)step;
- (void)_operationsCompletedForFabricConnectionRequest:(id)request reason:(id)reason;
- (void)_preWarmCommissioningSession;
- (void)_prepareForPairingWithSetupPayload:(id)payload targetFabricUUID:(id)d fabricID:(id)iD controllerWrapper:(id)wrapper hasPriorSuccessfulPairing:(BOOL)pairing category:(id)category completionHandler:(id)handler;
- (void)_prepareServerForBLEDiscovery;
- (void)_queueBonjourBrowserOldResult:(id)result newResult:(id)newResult;
- (void)_reenumeratePairedDevices;
- (void)_removeFromActiveFabrics:(id)fabrics;
- (void)_removeFromPendingFabrics:(id)fabrics;
- (void)_removeOrSuspendAllActiveClientsWithCurrentFabricUUID:(id)d reason:(int64_t)reason;
- (void)_reportAccessoriesKnownToSystemCommissioner;
- (void)_restartDiscovery;
- (void)_setReachability:(BOOL)reachability forServer:(id)server;
- (void)_setUpBrowserTargetFabricIfNotFabricUUID:(id)d rediscoverAccessories:(BOOL)accessories;
- (void)_setUpBrowserTargetFabricUUID:(id)d;
- (void)_setUpUpdatedBrowserTargetFabricUUID:(id)d rediscoverAccessories:(BOOL)accessories overrideAccessoryControlAllowed:(BOOL)allowed;
- (void)_setupPairedDevices;
- (void)_stageAccessoryServerWithSetupPayload:(id)payload deviceCredentialHandler:(id)handler wifiScanResultsHandler:(id)resultsHandler threadScanResultsHandler:(id)scanResultsHandler readyToCancelHandler:(id)cancelHandler progressUpdateHandler:(id)updateHandler commissioneeInfoHandler:(id)infoHandler scanningNetworks:(BOOL)self0 hasPriorSuccessfulPairing:(BOOL)self1 category:(id)self2 completionHandler:(id)self3;
- (void)_startDiscoveringAccessoryServersWithNoResponseToDelegate;
- (void)_stopMatterStackWithReason:(id)reason;
- (void)_stopSystemCommissionerFabricWithReason:(id)reason;
- (void)_storageDidBecomeAvailable:(id)available;
- (void)_suspendOperationsForTargetFabricUUID:(id)d;
- (void)_updateACLOnPairedAccessories;
- (void)_updateAccessoryControlListForServer:(id)server completion:(id)completion;
- (void)_updateCentralManager;
- (void)_updateDiscoveredAccessoryServersWithNodes:(id)nodes fabricUUID:(id)d;
- (void)_updateLocallyDiscoveredServerPairedStates;
- (void)_updatePairingMetricsUponAccessoryDiscovery;
- (void)abortAndSuspendAllOperationsWithReason:(id)reason;
- (void)abortOperationsForAccessoryServer:(id)server reason:(id)reason;
- (void)accessoryServerForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)addFabricWithActiveClientForTargetFabricUUID:(id)d;
- (void)addFabricWithActiveClients:(id)clients;
- (void)addFabricWithActiveSecondaryClients:(id)clients;
- (void)addSuspendedActiveSecondaryClientFabricUUIDs:(id)ds;
- (void)announceOtaProviderForNodeID:(id)d isRetry:(BOOL)retry;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload;
- (void)clearOperationalFabricDataForTargetFabricUUID:(id)d;
- (void)clearSuspendedActiveSecondaryClientFabricUUIDs;
- (void)commitStagedAccessoryServer:(id)server;
- (void)configure;
- (void)connectToAccessoryWhenAllowed:(id)allowed priority:(unint64_t)priority completion:(id)completion;
- (void)createNewSystemCommissionerFabricNodeIDWithCompletion:(id)completion;
- (void)dealloc;
- (void)didFinishPairingAccessoryServer:(id)server operationDisabled:(BOOL)disabled;
- (void)disableUnrestrictedOperationsForAccessoryServer:(id)server;
- (void)discardStagedAccessoryServerWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)discoverAccessoryServerWithNodeID:(id)d completion:(id)completion;
- (void)dispatchAfter:(unint64_t)after block:(id)block;
- (void)dispatchAfterConfiguration:(id)configuration;
- (void)dispatchBlock:(id)block;
- (void)enableUnrestrictedOperationsForAccessoryServer:(id)server;
- (void)fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)fetchCertificatesForMatterNodeWithCommissionerNodeID:(id)d commissioneeNodeID:(id)iD forOwner:(BOOL)owner publicKey:(id)key fabricData:(id)data adminCAT:(id)t opCAT:(id)aT completionHandler:(id)self0;
- (void)fetchCommissioningCertificatesFromOwnerForPublicKey:(id)key fabricID:(id)d completionHandler:(id)handler;
- (void)fetchPreferredThreadCredentialsForServer:(id)server withCompletion:(id)completion;
- (void)fetchSystemCommissionerRootCertificateWithCompletion:(id)completion;
- (void)finishSystemCommissionerFabricCommissioningWithFabricID:(id)d rootCACert:(id)cert ipk:(id)ipk controllerNodeID:(id)iD commissioneeNodeID:(id)nodeID queue:(id)queue completion:(id)completion;
- (void)handleDeviceNoLongerPrimaryResidentWithCompletion:(id)completion;
- (void)handleHomeAddedAccessoryWithNodeID:(id)d fabricUUID:(id)iD localControl:(BOOL)control;
- (void)handleHomeDeletionWithFabricUUID:(id)d;
- (void)handleHomeRemovedAccessoryWithNodeID:(id)d fabricUUID:(id)iD;
- (void)handlePairingCompletionForAccessoryWithNodeID:(id)d targetFabricUUID:(id)iD fabricID:(id)fabricID vendorID:(id)vendorID productID:(id)productID configNumber:(id)number category:(id)category topology:(id)self0;
- (void)handlePairingForThreadAccessoryWithTargetFabricUUID:(id)d nodeID:(id)iD;
- (void)handlePrimaryResidentDataReady;
- (void)handleResidentReachabilityChangeForFabric:(id)fabric;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification;
- (void)handleThreadNetworkStateChangedNotification:(id)notification;
- (void)handleThreadRadioStateChanged;
- (void)handleUpdateNotificationsEnabled:(BOOL)enabled forFabric:(id)fabric keepAliveOnly:(BOOL)only;
- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary;
- (void)invalidateAccessoryServer:(id)server reason:(id)reason withCompletion:(id)completion;
- (void)invalidateAllDiscoveredServersWithReason:(id)reason completion:(id)completion;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)notifyDiscoveredAccessoryServer:(id)server;
- (void)notifyPairingCompletionForAccessoryServer:(id)server;
- (void)openCommissioningWindowForSystemCommissionerDeviceWithNodeID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)operationsStartedForFabricConnectionRequest:(id)request;
- (void)prepareForPairingWithSetupPayload:(id)payload targetFabricUUID:(id)d completionHandler:(id)handler;
- (void)readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)registerPairingWindowWithSetupPayload:(id)payload duration:(double)duration accessoryServer:(id)server;
- (void)removeAccessoryServer:(id)server fromDiscoveredAccessoryServerListWithReason:(id)reason;
- (void)removeActiveClientWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason;
- (void)removeActiveSecondaryClientWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason;
- (void)removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID:(id)d fabric:(id)fabric completionHandler:(id)handler;
- (void)removeFabricWithActiveClients:(id)clients;
- (void)removeFabricWithActiveSecondaryClients:(id)clients;
- (void)removeSystemCommissionerFabricAccessoryWithNodeID:(id)d completionHandler:(id)handler;
- (void)restartDiscovery;
- (void)resumeAllOperations;
- (void)runAfterCommissioningToTargetFabricUUID:(id)d controllerSetUpBlock:(id)block;
- (void)setCommissioneeAccessoryServer:(id)server;
- (void)setConnectionRequestSuspended:(BOOL)suspended;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setOperationalFabricData:(id)data operationalCertIssuer:(id)issuer storageDataSource:(id)source allTargetFabricUUIDs:(id)ds entityIdentifier:(id)identifier accessoryServerNodeIDs:(id)iDs forTargetFabricUUID:(id)d;
- (void)setPairingTargetFabricData:(id)data targetFabricUUID:(id)d;
- (void)setSuspendedActiveClientFabricUUID:(id)d;
- (void)setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:(id)d;
- (void)setUpBrowserTargetFabricUUID:(id)d;
- (void)setUpBrowserTargetFabricUUID:(id)d completion:(id)completion;
- (void)setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID:(id)d;
- (void)setupPairedDevices;
- (void)stageAccessoryServerWithSetupPayload:(id)payload fabricID:(id)d deviceCredentialHandler:(id)handler wifiScanResultsHandler:(id)resultsHandler threadScanResultsHandler:(id)scanResultsHandler readyToCancelHandler:(id)cancelHandler progressUpdateHandler:(id)updateHandler commissioneeInfoHandler:(id)self0 scanningNetworks:(BOOL)self1 completionHandler:(id)self2;
- (void)stageAccessoryServerWithSetupPayload:(id)payload hasPriorSuccessfulPairing:(BOOL)pairing category:(id)category completionHandler:(id)handler;
- (void)startBluetoothScan;
- (void)startDiscoveringAccessoryServers;
- (void)startDiscoveringAccessoryServersWithNoResponseToDelegate;
- (void)stopBluetoothScan;
- (void)stopDiscoveringAccessoryServers;
- (void)storageDidBecomeAvailable:(id)available;
- (void)storageDidUpdateData:(id)data isLocalChange:(BOOL)change;
- (void)updateAccessoryACLForFabric:(id)fabric;
- (void)updateDiscoveredAccessoryServersWithNodes:(id)nodes fabricUUID:(id)d;
- (void)waitForDeviceControllerWithCompletion:(id)completion;
@end

@implementation HMMTRAccessoryServerBrowser

void __40__HMMTRAccessoryServerBrowser_configure__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLockStateNotification];
}

- (void)_handleLockStateNotification
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if ([(HMMTRAccessoryServerBrowser *)self _delegateRespondsToSelector:sel_accessoryServerBrowser_getLockedState_])
  {
    delegate = [(HMMTRAccessoryServerBrowser *)self delegate];
    [delegate accessoryServerBrowser:self getLockedState:&v9];
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    *buf = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Lock state changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMMTRAccessoryServerBrowser *)selfCopy _handleDeviceActivityStateChange:v9 reason:8];
}

- (HAPAccessoryServerBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t370 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t370, &__block_literal_global_372);
  }

  v3 = logCategory__hmf_once_v371;

  return v3;
}

- (HMMTRAccessoryServerBrowserDelegate)accessoryServerBrowserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServerBrowserDelegate);

  return WeakRetained;
}

- (void)dispatchAfter:(unint64_t)after block:(id)block
{
  blockCopy = block;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_after(after, workQueue, blockCopy);
}

- (void)dispatchBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_async(workQueue, blockCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v38 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  selfCopy = self;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDCF0]];
  if ([v9 BOOLValue])
  {
    v30 = v9;
    v31 = dataCopy;
    v10 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
    v11 = v10;
    if (v10)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            data = [v16 data];
            v18 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FFF6"];
            data2 = [v18 data];
            v20 = [data isEqual:data2];

            if (v20)
            {
              v21 = [v11 objectForKey:v16];
              if ([v21 length] == 8)
              {
                bytes = [v21 bytes];
                v23 = *(bytes + 3);
                v24 = *(bytes + 5);
                if (*bytes <= 1u && v23 != 0 && v24 != 0)
                {
                  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bytes[1] | ((bytes[2] & 0xF) << 8)];
                  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23];
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
                  [(HMMTRAccessoryServerBrowser *)selfCopy _handleBLEAddOrUpdateWithDiscriminator:v27 vendorID:v28 productID:v29];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v13);
      }
    }

    v9 = v30;
    dataCopy = v31;
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMMTRAccessoryServerBrowser *)self _updateCentralManager];
}

- (void)_updateCentralManager
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    cbCentral = [(HMMTRAccessoryServerBrowser *)selfCopy cbCentral];
    *buf = 138543618;
    v36 = v6;
    v37 = 2048;
    state = [cbCentral state];
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@CBCentralManager state: %ld", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  cbCentral2 = [(HMMTRAccessoryServerBrowser *)selfCopy cbCentral];
  v9 = [cbCentral2 state] == 5;

  if (v9)
  {
    bleScanActive = [(HMMTRAccessoryServerBrowser *)selfCopy bleScanActive];
    requestedBLEScan = [(HMMTRAccessoryServerBrowser *)selfCopy requestedBLEScan];
    if (bleScanActive)
    {
      if (requestedBLEScan)
      {
        objc_initWeak(buf, selfCopy);
        v12 = dispatch_time(0, 60000000000);
        workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __52__HMMTRAccessoryServerBrowser__updateCentralManager__block_invoke;
        v30[3] = &unk_2786EF2B8;
        objc_copyWeak(&v31, buf);
        dispatch_after(v12, workQueue, v30);

        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v36 = v27;
          _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Stopping BLE scan", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        cbCentral3 = [(HMMTRAccessoryServerBrowser *)v25 cbCentral];
        [cbCentral3 stopScan];

        cbCentral4 = [(HMMTRAccessoryServerBrowser *)v25 cbCentral];
        [cbCentral4 setDelegate:0];

        [(HMMTRAccessoryServerBrowser *)v25 setCbCentral:0];
        [(HMMTRAccessoryServerBrowser *)v25 setBleScanActive:0];
        [(HMMTRAccessoryServerBrowser *)v25 _cleanupDisappearedServersOverBLE];
      }
    }

    else if (requestedBLEScan)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v17;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting BLE scan", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      [(HMMTRAccessoryServerBrowser *)v15 _prepareServerForBLEDiscovery];
      [(HMMTRAccessoryServerBrowser *)v15 setBleScanActive:1];
      cbCentral5 = [(HMMTRAccessoryServerBrowser *)v15 cbCentral];
      v19 = [MEMORY[0x277CBE0A0] UUIDWithString:@"FFF6"];
      v34 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      v21 = *MEMORY[0x277CBDDA8];
      v32[0] = *MEMORY[0x277CBDDB0];
      v32[1] = v21;
      v33[0] = MEMORY[0x277CBEC38];
      v33[1] = MEMORY[0x277CBEC28];
      v22 = *MEMORY[0x277CBDE38];
      v32[2] = *MEMORY[0x277CBDE58];
      v32[3] = v22;
      v33[2] = &unk_283EE87F0;
      v33[3] = &unk_283EE8808;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
      [cbCentral5 scanForPeripheralsWithServices:v20 options:v23];

      [(HMMTRAccessoryServerBrowser *)v15 _updateCentralManager];
    }
  }
}

void __52__HMMTRAccessoryServerBrowser__updateCentralManager__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Refreshing BLE discovered servers", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _cleanupDisappearedServersOverBLE];
  [v3 _prepareServerForBLEDiscovery];
  [v3 _updateCentralManager];
}

- (void)stopBluetoothScan
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMMTRAccessoryServerBrowser_stopBluetoothScan__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __48__HMMTRAccessoryServerBrowser_stopBluetoothScan__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRequestedBLEScan:0];
  [*(a1 + 32) _updateCentralManager];
  v2 = [*(a1 + 32) bonjourBrowser];

  if (v2)
  {
    v3 = [*(a1 + 32) bonjourBrowser];
    nw_browser_cancel(v3);
  }

  [*(a1 + 32) _cleanupLocallyDiscoveredServers];
  [*(a1 + 32) _clearLocallyDiscoveredFlags];
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = [v4 productPlatform];

  if ((v5 - 1) <= 1 && isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Resume all thread connection requests due to BLE scan end", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) resumeAllOperations];
  }
}

- (void)startBluetoothScan
{
  objc_initWeak(&location, self);
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke;
  v4[3] = &unk_2786EF2B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productPlatform];

  if ((v3 - 1) <= 1)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
      v4 = objc_autoreleasePoolPush();
      v5 = WeakRetained;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v7;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Aborting all thread connection requests due to BLE scan", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:6];
      [v5 abortAndSuspendAllOperationsWithReason:v8];
    }

    [WeakRetained _preWarmCommissioningSession];
    [WeakRetained _cleanupLocallyDiscoveredServers];
    [WeakRetained setRequestedBLEScan:1];
    v9 = [WeakRetained cbCentral];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBDFF8]);
      v11 = [WeakRetained workQueue];
      v12 = [v10 initWithDelegate:WeakRetained queue:v11];
      [WeakRetained setCbCentral:v12];
    }

    [WeakRetained _updateCentralManager];
    v13 = [WeakRetained _initializeAndStartBonjourBrowser];
    if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
    {
      v14 = [WeakRetained delegateQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke_364;
      v15[3] = &unk_2786EEFF8;
      v15[4] = WeakRetained;
      v16 = v13;
      dispatch_async(v14, v15);
    }

    [WeakRetained _reportAccessoriesKnownToSystemCommissioner];
  }
}

void __49__HMMTRAccessoryServerBrowser_startBluetoothScan__block_invoke_364(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = HMErrorFromOSStatus();
  [v4 accessoryServerBrowser:v2 didStartDiscoveringWithError:v3];
}

- (void)_preWarmCommissioningSession
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD5328] = [MEMORY[0x277CD5328] sharedInstance];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Pre-warming device controller factory", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [mEMORY[0x277CD5328] preWarmCommissioningSession];
}

- (void)fetchPreferredThreadCredentialsForServer:(id)server withCompletion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  delegateQueue = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = serverCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = serverCopy;
  dispatch_async(delegateQueue, block);
}

void __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] delegate];
  v3 = a1[4];
  v4 = [a1[5] identifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke_2;
  v5[3] = &unk_2786EEFD0;
  v5[4] = a1[4];
  v7 = a1[6];
  v6 = a1[5];
  [v2 accessoryServerBrowser:v3 getThreadNetworkCredentialsForAccessoryWithIdentifier:v4 withCompletion:v5];
}

void __87__HMMTRAccessoryServerBrowser_fetchPreferredThreadCredentialsForServer_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5 && !v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched Preferred Thread Credentials from owner.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 32);
    v13 = [v12 currentFabric];
    LODWORD(v12) = [v12 isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v13];

    if (!v12)
    {
      goto LABEL_14;
    }

    v14 = [*(a1 + 32) threadRadioManager];
    v15 = [*(a1 + 32) currentFabricUUID];
    [v14 overrideLocationCheckForPairingForFabricUUID:v15];

    v16 = [*(a1 + 40) knownToSystemCommissioner];
    v17 = [*(a1 + 32) threadRadioManager];
    v18 = [*(a1 + 32) currentFabricUUID];
    if (v16)
    {
      [v17 startThreadRadioForSystemCommissionerFabricUUID:v18];
    }

    else
    {
      v21 = [v17 hasMatterThreadAccessoryInHomeWithFabricUUID:v18];

      if (!v21)
      {
LABEL_14:
        v20 = *(*(a1 + 48) + 16);
        goto LABEL_15;
      }

      v17 = [*(a1 + 32) threadRadioManager];
      v18 = [*(a1 + 32) currentFabricUUID];
      [v17 startThreadRadioForHomeWithFabricUUID:v18];
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v19 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch Preferred Thread Credentials from owner with error %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v20 = *(*(a1 + 48) + 16);
LABEL_15:
  v20();
}

- (void)fetchCommissioningCertificatesFromOwnerForPublicKey:(id)key fabricID:(id)d completionHandler:(id)handler
{
  keyCopy = key;
  dCopy = d;
  handlerCopy = handler;
  delegateQueue = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = dCopy;
  v17 = keyCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = keyCopy;
  v14 = dCopy;
  dispatch_async(delegateQueue, v15);
}

void __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke_2;
  v6[3] = &unk_2786EEFA8;
  v6[4] = v3;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 accessoryServerBrowser:v3 getCommissioningCertificatesForNodeID:0 fabricID:v4 publicKey:v5 completion:v6];
}

void __110__HMMTRAccessoryServerBrowser_fetchCommissioningCertificatesFromOwnerForPublicKey_fabricID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch commissioning certificates from owner with error %@", &v22, 0x16u);
    }
  }

  else if (v19)
  {
    v21 = HMFGetLogIdentifier();
    v22 = 138544130;
    v23 = v21;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched commissioning certificates from owner. Root Certificate %@, Operational certificate %@, Owner NodeID %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  (*(*(a1 + 40) + 16))();
}

- (void)handleHomeDeletionWithFabricUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Home with fabric %@ has been deleted, cleaning up state", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (dCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke;
    v10[3] = &unk_2786EF328;
    v10[4] = selfCopy;
    v11 = dCopy;
    [(HMMTRAccessoryServerBrowser *)selfCopy dispatchBlock:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke_2;
    v9[3] = &unk_2786F0CA8;
    v9[4] = selfCopy;
    [(HMMTRAccessoryServerBrowser *)selfCopy dispatchBlock:v9];
  }
}

uint64_t __64__HMMTRAccessoryServerBrowser_handleHomeDeletionWithFabricUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFabricWithActiveClients:*(a1 + 40)];
  [*(a1 + 32) removeFabricWithActiveSecondaryClients:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:4];
  [v2 _abortAllOperationsForFabricUUID:v3 reason:v4];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 clearOperationalFabricDataForTargetFabricUUID:v6];
}

- (void)_handleDeviceActivityStateChange:(BOOL)change reason:(int64_t)reason
{
  changeCopy = change;
  v23 = *MEMORY[0x277D85DE8];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMFBooleanToString();
      currentFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
      v15 = 138544130;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2048;
      reasonCopy = reason;
      v21 = 2112;
      v22 = currentFabricUUID;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@deviceActivityState change - goOffline=%@, reason=%ld, current active fabric %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (changeCopy)
    {
      currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
      [(HMMTRAccessoryServerBrowser *)selfCopy _removeOrSuspendAllActiveClientsWithCurrentFabricUUID:currentFabricUUID2 reason:reason];
    }

    else
    {
      [(HMMTRAccessoryServerBrowser *)selfCopy _resumeSuspendedActiveClients];
    }

    if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
      if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
      {
        threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
        [threadRadioManager handleDeviceLockStateChange:changeCopy];
      }
    }
  }
}

- (void)_handleClientsRemovedWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason
{
  timeoutCopy = timeout;
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  reasonCopy = reason;
  if (dCopy)
  {
    fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
    v11 = [fabricsWithActiveClients containsObject:dCopy];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v15;
        v48 = 2112;
        v49 = dCopy;
        v16 = "%{public}@Not shutting down stack for fabric %@ because there is an active client";
LABEL_8:
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    v18 = [fabricsWithActiveSecondaryClients containsObject:dCopy];

    if (v18)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v15;
        v48 = 2112;
        v49 = dCopy;
        v16 = "%{public}@Not shutting down stack for fabric %@ because there is an active secondary client";
        goto LABEL_8;
      }

LABEL_9:

      objc_autoreleasePoolPop(v12);
      goto LABEL_10;
    }

    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v20 = [currentFabricUUID isEqual:dCopy];

    if (v20)
    {
      v38 = reasonCopy;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      fabricsWithActiveConnections = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveConnections];
      v22 = [fabricsWithActiveConnections countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(fabricsWithActiveConnections);
            }

            v26 = *(*(&v41 + 1) + 8 * i);
            fabricUUID = [v26 fabricUUID];
            v28 = HMFEqualObjects();

            if (v28)
            {
              reasonCopy = v38;
              [v26 abortAllLowPriorityOperationsWithReason:v38];
              if (timeoutCopy)
              {
                [v26 updateAllConnectionIdleTimeoutsToMinimum];
              }

              v34 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = HMFGetLogIdentifier();
                *buf = 138543618;
                v47 = v37;
                v48 = 2112;
                v49 = dCopy;
                _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Not shutting down stack for fabric %@ because there is an active connection", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v34);
              goto LABEL_10;
            }
          }

          v23 = [fabricsWithActiveConnections countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v32;
        v48 = 2112;
        v49 = dCopy;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_INFO, "%{public}@Shutting down stack for fabric %@ because there are no active clients", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      workQueue = [(HAPAccessoryServerBrowser *)selfCopy4 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__HMMTRAccessoryServerBrowser__handleClientsRemovedWithFabricUUID_updateConnectionIdleTimeout_reason___block_invoke;
      block[3] = &unk_2786EF328;
      block[4] = selfCopy4;
      reasonCopy = v38;
      v40 = v38;
      dispatch_async(workQueue, block);
    }
  }

LABEL_10:
}

void __102__HMMTRAccessoryServerBrowser__handleClientsRemovedWithFabricUUID_updateConnectionIdleTimeout_reason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentFabricUUID];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 currentFabricUUID];
    [v3 _disconnectFromIdleFabric:v4 reason:*(a1 + 40)];
  }
}

- (void)_removeOrSuspendAllActiveClientsWithCurrentFabricUUID:(id)d reason:(int64_t)reason
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
  if ([fabricsWithActiveSecondaryClients count])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = fabricsWithActiveSecondaryClients;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing fabrics with secondary clients fabricUUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = fabricsWithActiveSecondaryClients;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        v16 = 0;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(HMMTRAccessoryServerBrowser *)selfCopy removeFabricWithActiveSecondaryClients:*(*(&v32 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }
  }

  fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  if ([fabricsWithActiveClients count])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v21;
      v40 = 2112;
      v41 = fabricsWithActiveClients;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Removing active clients fabricUUIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = fabricsWithActiveClients;
    v23 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      do
      {
        v26 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(HMMTRAccessoryServerBrowser *)selfCopy2 removeFabricWithActiveClients:*(*(&v28 + 1) + 8 * v26++), v28];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v24);
    }
  }

  if (dCopy)
  {
    v27 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:reason];
    [(HMMTRAccessoryServerBrowser *)self _handleClientsRemovedWithFabricUUID:dCopy updateConnectionIdleTimeout:1 reason:v27];
  }
}

- (void)removeActiveSecondaryClientWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason
{
  if (d)
  {
    timeoutCopy = timeout;
    reasonCopy = reason;
    dCopy = d;
    [(HMMTRAccessoryServerBrowser *)self removeFabricWithActiveSecondaryClients:dCopy];
    [(HMMTRAccessoryServerBrowser *)self _handleClientsRemovedWithFabricUUID:dCopy updateConnectionIdleTimeout:timeoutCopy reason:reasonCopy];
  }
}

- (void)removeActiveClientWithFabricUUID:(id)d updateConnectionIdleTimeout:(BOOL)timeout reason:(id)reason
{
  if (d)
  {
    timeoutCopy = timeout;
    reasonCopy = reason;
    dCopy = d;
    [(HMMTRAccessoryServerBrowser *)self removeFabricWithActiveClients:dCopy];
    [(HMMTRAccessoryServerBrowser *)self _handleClientsRemovedWithFabricUUID:dCopy updateConnectionIdleTimeout:timeoutCopy reason:reasonCopy];
  }
}

- (void)handleUpdateNotificationsEnabled:(BOOL)enabled forFabric:(id)fabric keepAliveOnly:(BOOL)only
{
  v46 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  targetFabricUUID = [fabricCopy targetFabricUUID];
  if (isFeatureMatterLocalFabricConfigEnabled(targetFabricUUID, v10))
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (targetFabricUUID)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v21 = HMFBooleanToString();
        v15 = HMFBooleanToString();
        [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
        v16 = v23 = only;
        browserState = [(HMMTRAccessoryServerBrowser *)selfCopy browserState];
        [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveClients];
        v17 = v24 = v11;
        fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveSecondaryClients];
        *buf = 138545154;
        v31 = v22;
        v32 = 2112;
        v33 = targetFabricUUID;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v16;
        v40 = 2048;
        v41 = browserState;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = fabricsWithActiveSecondaryClients;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@UpdateNotifications received for target fabric UUID:%@ enabled:%@ keepAliveOnly:%@. currentFabricUUID %@, browserState = %lu, fabricsWithActiveClients = %@, fabricWithActiveSecondaryClients = %@", buf, 0x52u);

        v11 = v24;
        only = v23;
      }

      objc_autoreleasePoolPop(v11);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke;
      v25[3] = &unk_2786EEF80;
      onlyCopy = only;
      enabledCopy = enabled;
      v25[4] = selfCopy;
      v26 = targetFabricUUID;
      v27 = fabricCopy;
      [(HMMTRAccessoryServerBrowser *)selfCopy dispatchAfterConfiguration:v25];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = fabricCopy;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@UpdateNotifications received nil target fabric UUID for fabric: %@. Ignoring request", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

void __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57))
    {
      v3 = *(a1 + 32);

      [v3 addFabricWithActiveSecondaryClients:v1];
      return;
    }

    v31 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:7];
    [v2 removeActiveSecondaryClientWithFabricUUID:v1 updateConnectionIdleTimeout:0 reason:?];
    goto LABEL_16;
  }

  if (!*(a1 + 57))
  {
    v31 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:7];
    [v2 removeActiveClientWithFabricUUID:v1 updateConnectionIdleTimeout:0 reason:?];
LABEL_16:

    return;
  }

  [*(a1 + 32) addFabricWithActiveClients:v1];
  v5 = [*(a1 + 32) currentFabricUUID];

  if (!v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      *buf = 138543618;
      v38 = v17;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting stack for target fabric UUID %@ because there are active clients and local stack is unconfigured", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = *(a1 + 32);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_356;
    v35[3] = &unk_2786EF328;
    v35[4] = v19;
    v36 = *(a1 + 40);
    [v19 dispatchBlock:v35];
    v20 = v36;
    goto LABEL_29;
  }

  v6 = [*(a1 + 32) currentFabricUUID];
  v7 = [v6 isEqual:*(a1 + 40)];

  if (!v7)
  {
    v21 = [*(a1 + 48) delegate];
    if ([v21 isPrimaryResidentNodeReachable])
    {
      v22 = _os_feature_enabled_impl();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [*(a1 + 32) currentFabricUUID];
      v28 = *(a1 + 40);
      *buf = 138543874;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Shutting down active fabric %@ to start new fabric %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v29 = [*(a1 + 32) workQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_358;
    v32[3] = &unk_2786EF328;
    v30 = *(a1 + 40);
    v32[4] = *(a1 + 32);
    v33 = v30;
    dispatch_async(v29, v32);

    v20 = v33;
LABEL_29:

    return;
  }

  if ([*(a1 + 32) isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:*(a1 + 48)] && objc_msgSend(*(a1 + 32), "browserState") != 2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting discovery stack for target fabric UUID %@ because there are active clients", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_357;
    block[3] = &unk_2786F0CA8;
    block[4] = *(a1 + 32);
    dispatch_async(v13, block);
  }
}

uint64_t __88__HMMTRAccessoryServerBrowser_handleUpdateNotificationsEnabled_forFabric_keepAliveOnly___block_invoke_358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentFabricUUID];
  v4 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
  [v2 _abortAllOperationsForFabricUUID:v3 reason:v4];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
  [v5 _stopMatterStackWithReason:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _setUpUpdatedBrowserTargetFabricUUID:v8];
}

- (void)handleResidentReachabilityChangeForFabric:(id)fabric
{
  v36 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  targetFabricUUID = [fabricCopy targetFabricUUID];
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    goto LABEL_18;
  }

  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];

  if (currentFabricUUID)
  {
    currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v8 = [currentFabricUUID2 isEqual:targetFabricUUID];

    if (v8)
    {
      if (![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl]|| [(HMMTRAccessoryServerBrowser *)self browserState]== 2)
      {
        goto LABEL_18;
      }

      fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
      if ([fabricsWithActiveClients containsObject:targetFabricUUID])
      {

LABEL_20:
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v26;
          v32 = 2112;
          v33 = targetFabricUUID;
          _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@No resident reachable for target fabric UUID %@ and there are active clients, start local stack", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        delegateQueue = [(HMMTRAccessoryServerBrowser *)selfCopy delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__HMMTRAccessoryServerBrowser_handleResidentReachabilityChangeForFabric___block_invoke;
        block[3] = &unk_2786F0CA8;
        block[4] = selfCopy;
        dispatch_async(delegateQueue, block);

        goto LABEL_18;
      }

      fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
      v22 = [fabricsWithActiveSecondaryClients containsObject:targetFabricUUID];

      if (v22)
      {
        goto LABEL_20;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        fabricsWithActiveClients2 = [(HMMTRAccessoryServerBrowser *)selfCopy3 fabricsWithActiveClients];
        *buf = 138543874;
        v31 = v14;
        v32 = 2112;
        v33 = targetFabricUUID;
        v34 = 2112;
        v35 = fabricsWithActiveClients2;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Fabric %@ does not have active clients, fabricsWithActiveClients - %@", buf, 0x20u);

        goto LABEL_12;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v14;
        v32 = 2112;
        v33 = targetFabricUUID;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Resident reachability changed for non-current target fabric UUID %@, ignoring", buf, 0x16u);
LABEL_12:
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_18;
  }

  fabricsWithActiveClients3 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  if ([fabricsWithActiveClients3 containsObject:targetFabricUUID])
  {
  }

  else
  {
    fabricsWithActiveSecondaryClients2 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    v16 = [fabricsWithActiveSecondaryClients2 containsObject:targetFabricUUID];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v20;
    v32 = 2112;
    v33 = targetFabricUUID;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Starting stack for target fabric UUID %@ because there are active clients and local stack is unconfigured", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  [(HMMTRAccessoryServerBrowser *)selfCopy4 _setUpUpdatedBrowserTargetFabricUUID:targetFabricUUID];
LABEL_18:
}

void __73__HMMTRAccessoryServerBrowser_handleResidentReachabilityChangeForFabric___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentFabricUUID];
  [v1 _setUpUpdatedBrowserTargetFabricUUID:v2];
}

- (void)_updateACLOnPairedAccessories
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v4 = [discoveredAccessoryServers copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 removalInProgress] & 1) == 0)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __60__HMMTRAccessoryServerBrowser__updateACLOnPairedAccessories__block_invoke;
          v10[3] = &unk_2786EF9E0;
          v10[4] = self;
          v10[5] = v9;
          [(HMMTRAccessoryServerBrowser *)self _updateAccessoryControlListForServer:v9 completion:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __60__HMMTRAccessoryServerBrowser__updateACLOnPairedAccessories__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated ACL after user CAT update on server %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)updateAccessoryACLForFabric:(id)fabric
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMMTRAccessoryServerBrowser_updateAccessoryACLForFabric___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)isOwnerForHomeWithFabric:(id)fabric
{
  delegate = [fabric delegate];
  isCurrentUserOwner = [delegate isCurrentUserOwner];

  return isCurrentUserOwner;
}

- (BOOL)canEstablishConnectionForNodeID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    goto LABEL_10;
  }

  threadRadioManager = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  deviceSupportsThreadService = [threadRadioManager deviceSupportsThreadService];

  if (!deviceSupportsThreadService || ![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    goto LABEL_10;
  }

  v7 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:dCopy];
  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for canEstablishConnectionForNodeID:%@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 linkLayerType] & 0xFFFFFFFFFFFFFFFBLL;

  if (v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)isCurrentDeviceMobileAndResidentReachable
{
  currentFabric = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    delegate = [currentFabric delegate];
    isPrimaryResidentNodeReachable = [delegate isPrimaryResidentNodeReachable];
  }

  else
  {
    isPrimaryResidentNodeReachable = 0;
  }

  return isPrimaryResidentNodeReachable;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResident
{
  selfCopy = self;
  currentFabric = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  LOBYTE(selfCopy) = [(HMMTRAccessoryServerBrowser *)selfCopy isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:currentFabric];

  return selfCopy;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:(id)fabric
{
  result = isFeatureMatteriPhoneOnlyPairingControlEnabled();
  if (!fabric)
  {
    return 0;
  }

  return result;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
    v6 = [dCopy isEqual:systemCommissionerFabricUUID];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HMMTRAccessoryServerBrowser *)self appleHomeFabricWithTargetFabricUUID:dCopy];
      v7 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:(id)fabric
{
  fabricCopy = fabric;
  v4 = isFeatureMatteriPhoneOnlyPairingControlEnabled();
  LOBYTE(v5) = 0;
  if (fabricCopy && v4)
  {
    delegate = [fabricCopy delegate];
    v5 = [delegate isPrimaryResidentNodeReachable] ^ 1;
  }

  return v5;
}

- (BOOL)isCurrentDeviceMobileAndAllowedAccessoryControl
{
  selfCopy = self;
  currentFabric = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];

    LOBYTE(selfCopy) = 0;
    if (currentFabricUUID && currentFabric)
    {
      delegate = [currentFabric delegate];
      LODWORD(selfCopy) = [delegate isPrimaryResidentNodeReachable] ^ 1;
    }
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (void)handlePrimaryResidentDataReady
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMMTRAccessoryServerBrowser_handlePrimaryResidentDataReady__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__61__HMMTRAccessoryServerBrowser_handlePrimaryResidentDataReady__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isCurrentDevicePrimaryResident] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "isCurrentDeviceMobileAndAllowedAccessoryControl"), result))
  {
    v3 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (v3)
    {
      v4 = [*(a1 + 32) controllerFactory];
      v5 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [v4 enableNormalOperationWithToken:v5];

      [*(a1 + 32) setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Primary resident data is ready. Re-enumerating accessories from storage", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    return [*(a1 + 32) _reenumeratePairedDevices];
  }

  return result;
}

- (void)handleDeviceNoLongerPrimaryResidentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMMTRAccessoryServerBrowser_handleDeviceNoLongerPrimaryResidentWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HMMTRAccessoryServerBrowser *)self invalidateAllDiscoveredServersWithReason:v5 completion:v7];
}

void __81__HMMTRAccessoryServerBrowser_handleDeviceNoLongerPrimaryResidentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if ((isFeatureMatterRVCEnabled() & 1) == 0)
  {
    v3 = [*(a1 + 32) controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (!v3)
    {
      v4 = [*(a1 + 32) homeFabricControllers];
      [v4 removeAllGetters];

      v6 = [*(a1 + 32) controllerFactory];
      v5 = [v6 disableNormalOperation];
      [*(a1 + 32) setControllerFactoryEnablePerPrimaryResidentConfirmationToken:v5];
    }
  }
}

- (void)storageDidUpdateData:(id)data isLocalChange:(BOOL)change
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  fabricID = [dataCopy fabricID];

  if (!fabricID)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v31;
      v32 = "%{public}@Updated storage doesn't contain fabric ID; ignoring the update";
LABEL_15:
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, v32, buf, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v28);
    goto LABEL_17;
  }

  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  fabricDataSource = [storage fabricDataSource];

  if (!fabricDataSource)
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v31;
      v32 = "%{public}@CHIP Storage updated for other fabric; ignoring the update";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!change)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      fabricID2 = [dataCopy fabricID];
      storage2 = [(HMMTRAccessoryServerBrowser *)selfCopy3 storage];
      fabricDataSource2 = [storage2 fabricDataSource];
      [fabricDataSource2 keyValueStore];
      v15 = v35 = v10;
      allKeys = [v15 allKeys];
      v17 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
      *buf = 138543874;
      v37 = v13;
      v38 = 2112;
      v39 = fabricID2;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@CHIP Storage updated for fabric ID = %@. Currently contains %@", buf, 0x20u);

      v10 = v35;
    }

    objc_autoreleasePoolPop(v10);
  }

  homeFabricControllers = [(HMMTRAccessoryServerBrowser *)self homeFabricControllers];
  storage3 = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage3 dataSource];
  allTargetFabricUUIDs = [dataSource allTargetFabricUUIDs];
  [homeFabricControllers updateAllTargetFabricUUIDs:allTargetFabricUUIDs];

  v22 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    [(HMMTRAccessoryServerBrowser *)selfCopy4 isCurrentDevicePrimaryResident];
    v26 = HMFBooleanToString();
    v27 = HMFBooleanToString();
    *buf = 138543874;
    v37 = v25;
    v38 = 2112;
    v39 = v26;
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Partially handling data storage update as isPrimaryResident = %@, isLocalChange = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  if (!change)
  {
    [(HMMTRAccessoryServerBrowser *)selfCopy4 _updateLocallyDiscoveredServerPairedStates];
  }

LABEL_17:
}

- (void)_stopSystemCommissionerFabricWithReason:(id)reason
{
  v37 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping operation with system commissioner fabric", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = selfCopy->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if ([v15 knownToSystemCommissioner])
        {
          [array addObject:v15];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = array;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        [v21 disable];
        [(HMMTRAccessoryServerBrowser *)selfCopy _invalidateAccessoryServer:v21 reason:reasonCopy withCompletion:0];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricUUID];
  [(HMMTRAccessoryServerBrowser *)selfCopy _suspendOperationsForTargetFabricUUID:systemCommissionerFabricUUID];

  threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
  systemCommissionerFabricUUID2 = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricUUID];
  [threadRadioManager stopThreadRadioForSystemCommissionerFabricUUID:systemCommissionerFabricUUID2];
}

- (void)_disconnectFromIdleFabric:(id)fabric reason:(id)reason
{
  v50 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  reasonCopy = reason;
  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v9 = HMFEqualObjects();

  if (v9)
  {
    fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
    currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    if ([fabricsWithActiveClients containsObject:currentFabricUUID2])
    {

LABEL_11:
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        objc_autoreleasePoolPop(v27);
        goto LABEL_15;
      }

      v30 = HMFGetLogIdentifier();
      currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)selfCopy2 currentFabricUUID];
      fabricsWithActiveClients2 = [(HMMTRAccessoryServerBrowser *)selfCopy2 fabricsWithActiveClients];
      fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)selfCopy2 fabricsWithActiveSecondaryClients];
      v42 = 138544130;
      v43 = v30;
      v44 = 2112;
      v45 = currentFabricUUID3;
      v46 = 2112;
      v47 = fabricsWithActiveClients2;
      v48 = 2112;
      v49 = fabricsWithActiveSecondaryClients;
      v34 = "%{public}@Connection has become idle but there are still active clients, keeping matter stack active for fabric %@. Fabrics with active clients: %@, secondary clients: %@";
LABEL_13:
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, v34, &v42, 0x2Au);

      goto LABEL_14;
    }

    fabricsWithActiveSecondaryClients2 = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveSecondaryClients];
    currentFabricUUID4 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v26 = [fabricsWithActiveSecondaryClients2 containsObject:currentFabricUUID4];

    if (v26)
    {
      goto LABEL_11;
    }

    threadSoftwareUpdateController = [(HMMTRAccessoryServerBrowser *)self threadSoftwareUpdateController];
    currentFabricUUID5 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v37 = [threadSoftwareUpdateController isFirmwareUpdateInProgressForFabricUUID:currentFabricUUID5];

    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v37)
    {
      if (!v38)
      {
        goto LABEL_14;
      }

      v30 = HMFGetLogIdentifier();
      currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)selfCopy2 currentFabricUUID];
      fabricsWithActiveClients2 = [(HMMTRAccessoryServerBrowser *)selfCopy2 fabricsWithActiveClients];
      fabricsWithActiveSecondaryClients = [(HMMTRAccessoryServerBrowser *)selfCopy2 fabricsWithActiveSecondaryClients];
      v42 = 138544130;
      v43 = v30;
      v44 = 2112;
      v45 = currentFabricUUID3;
      v46 = 2112;
      v47 = fabricsWithActiveClients2;
      v48 = 2112;
      v49 = fabricsWithActiveSecondaryClients;
      v34 = "%{public}@Connection has become idle, but FW update is active, keeping matter stack active for fabric %@. Fabrics with active clients: %@, secondary clients: %@";
      goto LABEL_13;
    }

    if (v38)
    {
      v39 = HMFGetLogIdentifier();
      currentFabricUUID6 = [(HMMTRAccessoryServerBrowser *)selfCopy2 currentFabricUUID];
      fabricsWithActiveClients3 = [(HMMTRAccessoryServerBrowser *)selfCopy2 fabricsWithActiveClients];
      v42 = 138543874;
      v43 = v39;
      v44 = 2112;
      v45 = currentFabricUUID6;
      v46 = 2112;
      v47 = fabricsWithActiveClients3;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Connection has become idle, shutting down matter stack for fabric %@. Fabrics with active clients: %@", &v42, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    [(HMMTRAccessoryServerBrowser *)selfCopy2 _stopMatterStackWithReason:reasonCopy];
  }

  else if (fabricCopy && (-[HMMTRAccessoryServerBrowser systemCommissionerFabricUUID](self, "systemCommissionerFabricUUID"), v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v13) && (-[HMMTRAccessoryServerBrowser fabricsWithActiveClients](self, "fabricsWithActiveClients"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 containsObject:fabricCopy], v14, (v15 & 1) == 0))
  {
    [(HMMTRAccessoryServerBrowser *)self _stopSystemCommissionerFabricWithReason:reasonCopy];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      currentFabricUUID7 = [(HMMTRAccessoryServerBrowser *)selfCopy3 currentFabricUUID];
      fabricsWithActiveClients4 = [(HMMTRAccessoryServerBrowser *)selfCopy3 fabricsWithActiveClients];
      v42 = 138544130;
      v43 = v19;
      v44 = 2112;
      v45 = fabricCopy;
      v46 = 2112;
      v47 = currentFabricUUID7;
      v48 = 2112;
      v49 = fabricsWithActiveClients4;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric %@ has become idle, but current fabric is %@, not stopping current matter stack. fabrics with active clients:%@", &v42, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    homeFabricControllers = [(HMMTRAccessoryServerBrowser *)selfCopy3 homeFabricControllers];
    v23 = [homeFabricControllers cachedWrapperWithTargetFabricUUID:fabricCopy];
    [v23 suspendOrShutdown];
  }

LABEL_15:
}

- (void)_storageDidBecomeAvailable:(id)available
{
  v51 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  fabricID = [storage fabricID];

  if (!fabricID)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v40;
      v41 = "%{public}@Updated storage doesn't contain fabric ID; ignoring the update";
LABEL_25:
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, v41, buf, 0xCu);
    }

LABEL_26:

    objc_autoreleasePoolPop(v9);
    goto LABEL_28;
  }

  storage2 = [(HMMTRAccessoryServerBrowser *)self storage];
  fabricDataSource = [storage2 fabricDataSource];

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!fabricDataSource)
  {
    if (v12)
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v40;
      v41 = "%{public}@CHIP Storage updated for other fabric; ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v12)
  {
    v13 = HMFGetLogIdentifier();
    storage3 = [(HMMTRAccessoryServerBrowser *)selfCopy2 storage];
    fabricDataSource2 = [storage3 fabricDataSource];
    keyValueStore = [fabricDataSource2 keyValueStore];
    *buf = 138543618;
    v48 = v13;
    v49 = 2112;
    v50 = keyValueStore;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@CHIP Storage is available. Currently contains %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy2;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    storage4 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    fabricDataSource3 = [storage4 fabricDataSource];
    allNodeIDs = [fabricDataSource3 allNodeIDs];
    *buf = 138543618;
    v48 = v20;
    v49 = 2112;
    v50 = allNodeIDs;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Currently paired nodes %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if ([(HMMTRAccessoryServerBrowser *)v18 isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    storage5 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    fabricUUID = [storage5 fabricUUID];
    [(HMMTRAccessoryServerBrowser *)v18 _setUpBrowserTargetFabricUUID:fabricUUID];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    storage6 = [(HMMTRAccessoryServerBrowser *)v18 storage];
    fabricDataSource4 = [storage6 fabricDataSource];
    allNodeIDs2 = [fabricDataSource4 allNodeIDs];

    v29 = [allNodeIDs2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v43;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(allNodeIDs2);
          }

          v33 = *(*(&v42 + 1) + 8 * i);
          if (v33 && ([*(*(&v42 + 1) + 8 * i) isEqual:&unk_283EE87C0] & 1) == 0)
          {
            nodesAddedToHome = [(HMMTRAccessoryServerBrowser *)v18 nodesAddedToHome];
            [nodesAddedToHome addObject:v33];
          }
        }

        v30 = [allNodeIDs2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v30);
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v18;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      nodesAddedToHome2 = [(HMMTRAccessoryServerBrowser *)v36 nodesAddedToHome];
      *buf = 138543618;
      v48 = v38;
      v49 = 2112;
      v50 = nodesAddedToHome2;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@All nodes to add when storage became available: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [(HMMTRAccessoryServerBrowser *)v36 setupPairedDevices];
    [(HMMTRAccessoryServerBrowser *)v36 startDiscoveringAccessoryServersWithNoResponseToDelegate];
  }

  else
  {
    [(HMMTRAccessoryServerBrowser *)v18 _cleanupStagedServers];
  }

LABEL_28:
}

- (void)storageDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMMTRAccessoryServerBrowser_storageDidBecomeAvailable___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = availableCopy;
  v5 = availableCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

- (void)_notifyDelegateOfPairingStep:(unint64_t)step
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMMTRAccessoryPairingStepAsString(step);
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying matter petric pairing step %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMMTRAccessoryServerBrowser *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_283F23578])
  {
    v11 = delegate;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 notifyMatterAccessoryPairingStep:step];
}

- (void)setPairingTargetFabricData:(id)data targetFabricUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_fabricDataPerPairingTargetFabricUUID setObject:dataCopy forKeyedSubscript:dCopy];
  os_unfair_lock_unlock(&self->_pairingTargetFabricDataLock);
}

- (id)createSystemCommissionerFabricNOCWithSigningCertificate:(id)certificate operationalPublicKey:(__SecKey *)key fabricID:(id)d nodeID:(id)iD caseAuthenticatedTags:(id)tags error:(id *)error
{
  v14 = MEMORY[0x277CD5230];
  tagsCopy = tags;
  iDCopy = iD;
  dCopy = d;
  certificateCopy = certificate;
  systemCommissionerNocSigner = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
  v20 = [v14 createOperationalCertificate:systemCommissionerNocSigner signingCertificate:certificateCopy operationalPublicKey:key fabricID:dCopy nodeID:iDCopy caseAuthenticatedTags:tagsCopy error:error];

  return v20;
}

- (void)createNewSystemCommissionerFabricNodeIDWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemCommissionerFabricID];

  if (v2)
  {
    v3 = [*(a1 + 32) systemCommissionerPairingManager];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke_2;
    v6[3] = &unk_2786EEF58;
    v7 = *(a1 + 40);
    [v3 fetchSystemCommissionerPairingsWithCompletionHandler:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
    (*(v4 + 16))(v4, v5);
  }
}

void __85__HMMTRAccessoryServerBrowser_createNewSystemCommissionerFabricNodeIDWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_353_9096];
  v10 = v3;
  if (v3)
  {
    [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;
  do
  {
    v5 = +[HMMTRUtilities randomNodeID];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
    v7 = [v4 containsObject:v6];
  }

  while ((v7 & 1) != 0);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  (*(v8 + 16))(v8, v9);
}

- (void)fetchSystemCommissionerRootCertificateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HMMTRAccessoryServerBrowser_fetchSystemCommissionerRootCertificateWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __84__HMMTRAccessoryServerBrowser_fetchSystemCommissionerRootCertificateWithCompletion___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) systemCommissionerControllerParams];
  v43 = 0;
  v44 = 0;
  v3 = [v2 fetchControllerParamsAllowingNew:1 nocSigner:&v44 controllerWrapper:&v43];
  v4 = v44;
  v5 = v43;

  if ((v3 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v9;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller parameters could not be fetched. No certs are fetched.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, 0, 0, v11);
  }

  v12 = [v5 startupParams];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CD5228]);
    v14 = MEMORY[0x277CD5230];
    v15 = [v12 operationalCertificate];
    v16 = [v14 convertX509Certificate:v15];
    v17 = [v13 initWithTLVBytes:v16];

    v18 = [v17 subject];
    v19 = [v18 nodeID];

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      v42 = v5;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        [v12 fabricID];
        v25 = v41 = v4;
        v26 = [v17 subject];
        v27 = [v26 nodeID];
        *buf = 138543874;
        v46 = v24;
        v47 = 2112;
        v48 = v25;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Fetching system commissioner certs for fabric ID %@ and controller node ID %@", buf, 0x20u);

        v4 = v41;
      }

      objc_autoreleasePoolPop(v20);
      v28 = *(a1 + 40);
      v29 = [v12 rootCertificate];
      v30 = [v12 fabricID];
      v31 = [v12 ipk];
      v32 = [v17 subject];
      v33 = [v32 nodeID];
      (*(v28 + 16))(v28, v29, v30, v31, v33, 0);

      v5 = v42;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v39;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@System commissioner operational cert missing controller node ID. No certs are fetched.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v40 = *(a1 + 40);
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v40 + 16))(v40, 0, 0, 0, 0, v29);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v37;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller parameters are not available. No certs are fetched.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
    v38 = *(a1 + 40);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(v38 + 16))(v38, 0, 0, 0, 0, v17);
  }
}

- (id)_getSystemCommissionerFabricRootCertificateWithIndex:(id)index ipk:(id *)ipk controllerNodeID:(id *)d
{
  v105 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v9 = objc_alloc_init(MEMORY[0x277CD55A8]);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 storedValueForKey:@"IPK"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
      *ipk = v14;

      if (*ipk)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v100 = v18;
          v19 = "%{public}@IPK retrieved from MatterSupport storage";
          v20 = v17;
          v21 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_22AEAE000, v20, v21, v19, buf, 0xCu);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else
    {
      *ipk = 0;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v100 = v18;
      v19 = "%{public}@No IPK in MatterSupport storage";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

LABEL_16:

    objc_autoreleasePoolPop(v15);
    if (indexCopy)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/r", objc_msgSend(indexCopy, "unsignedIntValue")];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", objc_msgSend(indexCopy, "unsignedIntValue")];
      v98 = v28;
      v30 = [v10 storedValueForKey:v28];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v32 && (v33 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v32 options:0]) != 0)
      {
        v34 = v33;
        dCopy = d;
        v97 = v29;
        v35 = [MEMORY[0x277CD5230] convertMatterCertificate:v33];
        v36 = MEMORY[0x277CD5230];
        systemCommissionerNocSigner = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
        v96 = v35;
        LOBYTE(v36) = [v36 keypair:systemCommissionerNocSigner matchesCertificate:v35];

        if (v36)
        {
          v38 = [v10 storedValueForKey:v97];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;

          if (v40 && (v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v40 options:0]) != 0)
          {
            v42 = v41;
            v89 = v34;
            v43 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v41];
            subject = [v43 subject];
            fabricID = [subject fabricID];

            systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
            v90 = fabricID;
            LOBYTE(fabricID) = [fabricID isEqual:systemCommissionerFabricID];

            v87 = v43;
            v88 = v42;
            if (fabricID)
            {
              v91 = v40;
              subject2 = [v43 subject];
              nodeID = [subject2 nodeID];

              v49 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v51 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                v52 = HMFGetLogIdentifier();
                unsignedIntValue = [indexCopy unsignedIntValue];
                *buf = 138544130;
                v100 = v52;
                v101 = 2112;
                *v102 = v90;
                *&v102[8] = 1024;
                *&v102[10] = unsignedIntValue;
                v103 = 2112;
                v104 = nodeID;
                _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved root cert for fabric ID %@ with fabric index 0x%x. Controller node ID is %@.", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v49);
              v54 = nodeID;
              v55 = v96;
              *dCopy = nodeID;
              v26 = v96;

              v29 = v97;
              v34 = v89;
              v40 = v91;
            }

            else
            {
              v79 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v81 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                v82 = HMFGetLogIdentifier();
                unsignedIntValue2 = [indexCopy unsignedIntValue];
                [(HMMTRAccessoryServerBrowser *)selfCopy4 systemCommissionerFabricID];
                v95 = v79;
                v85 = v84 = v40;
                *buf = 138544130;
                v100 = v82;
                v101 = 1024;
                *v102 = unsignedIntValue2;
                *&v102[4] = 2112;
                *&v102[6] = v90;
                v103 = 2112;
                v104 = v85;
                _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/n fabric ID %@ doesn't match system commissioner fabric ID %@", buf, 0x26u);

                v40 = v84;
                v79 = v95;
              }

              objc_autoreleasePoolPop(v79);
              v26 = 0;
              v55 = v96;
              v29 = v97;
              v34 = v89;
            }
          }

          else
          {
            v92 = v40;
            v72 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v75 = HMFGetLogIdentifier();
              v76 = v34;
              unsignedIntValue3 = [indexCopy unsignedIntValue];
              unsignedIntValue4 = [indexCopy unsignedIntValue];
              *buf = 138543874;
              v100 = v75;
              v101 = 1024;
              *v102 = unsignedIntValue3;
              v34 = v76;
              *&v102[4] = 1024;
              *&v102[6] = unsignedIntValue4;
              _os_log_impl(&dword_22AEAE000, v74, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't have matching f/%x/n", buf, 0x18u);
            }

            objc_autoreleasePoolPop(v72);
            v26 = 0;
            v55 = v96;
            v29 = v97;
            v40 = v92;
          }
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            v94 = v65;
            v69 = v34;
            unsignedIntValue5 = [indexCopy unsignedIntValue];
            systemCommissionerNocSigner2 = [(HMMTRAccessoryServerBrowser *)selfCopy6 systemCommissionerNocSigner];
            *buf = 138543874;
            v100 = v68;
            v101 = 1024;
            *v102 = unsignedIntValue5;
            v34 = v69;
            v65 = v94;
            *&v102[4] = 2112;
            *&v102[6] = systemCommissionerNocSigner2;
            _os_log_impl(&dword_22AEAE000, v67, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't match system commissioner keypair %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v65);
          v26 = 0;
          v55 = v96;
          v29 = v97;
        }
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          unsignedIntValue6 = [indexCopy unsignedIntValue];
          *buf = 138543618;
          v100 = v59;
          v101 = 1024;
          *v102 = unsignedIntValue6;
          _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r isn't base64 encoded", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v56);
        v26 = 0;
      }
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v64 = HMFGetLogIdentifier();
        *buf = 138543362;
        v100 = v64;
        _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_DEBUG, "%{public}@Not fetching root cert since fabric index is unknown", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v61);
      v26 = 0;
    }

    goto LABEL_52;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v100 = v25;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Couldn't access MatterSupport key store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = 0;
LABEL_52:

  return v26;
}

- (id)_serverFromMTSDevicePairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = [HMMTRAccessoryServerFactory alloc];
  keyStore = [(HAPAccessoryServerBrowser *)self keyStore];
  v7 = [(HMMTRAccessoryServerFactory *)v5 initWithKeystore:keyStore browser:self];

  nodeID = [pairingCopy nodeID];
  vendorID = [pairingCopy vendorID];
  productID = [pairingCopy productID];
  serialNumber = [pairingCopy serialNumber];
  v12 = [(HMMTRAccessoryServerFactory *)v7 vendAccessoryServerWithNodeID:nodeID setupCode:0 discriminator:0 category:0 vendorID:vendorID productID:productID serialNumber:serialNumber firmwareRevision:0];

  category = [v12 category];

  if (!category)
  {
    deviceType = [pairingCopy deviceType];
    [v12 setCategory:deviceType];
  }

  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  fabricDataSource = [storage fabricDataSource];
  nodeID2 = [pairingCopy nodeID];
  v18 = [fabricDataSource storageDataSourceForDeviceWithNodeID:nodeID2];
  vendorID2 = [pairingCopy vendorID];
  productID2 = [pairingCopy productID];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__HMMTRAccessoryServerBrowser__serverFromMTSDevicePairing___block_invoke;
  v32[3] = &unk_2786EF9E0;
  v32[4] = self;
  v21 = pairingCopy;
  v33 = v21;
  [v18 updateVendorID:vendorID2 productID:productID2 completion:v32];

  systemCommissionerControllerWrapper = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerWrapper];
  [v12 setControllerWrapper:systemCommissionerControllerWrapper];

  [v12 setKnownToSystemCommissioner:1];
  systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
  [v12 setFabricID:systemCommissionerFabricID];

  systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
  [v12 setFabricUUID:systemCommissionerFabricUUID];

  [v12 setPairedState:3];
  uuid = [v21 uuid];
  [v12 setCommissioningID:uuid];

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    storageForSystemCommissioner = [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    nodeID3 = [v21 nodeID];
    [v12 setWedDevice:{objc_msgSend(storageForSystemCommissioner, "wedSupportedForSystemCommissionerFabricNode:", nodeID3)}];

    nodeID4 = [v21 nodeID];
    v29 = [storageForSystemCommissioner extendedMACAddressForSystemCommissionerFabricNode:nodeID4];
    [v12 setEMACAddress:v29];
  }

  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  [discoveredAccessoryServers addObject:v12];

  return v12;
}

void __59__HMMTRAccessoryServerBrowser__serverFromMTSDevicePairing___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) vendorID];
      v9 = [*(a1 + 40) productID];
      v10 = 138544386;
      v11 = v7;
      v12 = 2080;
      v13 = "[HMMTRAccessoryServerBrowser _serverFromMTSDevicePairing:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@%s: Failed to update vendorID to %@ and productID to %@ with error: %@", &v10, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (id)accessoryServerWithNodeID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_discoveredAccessoryServers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        nodeID = [v9 nodeID];
        v11 = [dCopy isEqualToNumber:nodeID];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)handlePairingCompletionForAccessoryWithNodeID:(id)d targetFabricUUID:(id)iD fabricID:(id)fabricID vendorID:(id)vendorID productID:(id)productID configNumber:(id)number category:(id)category topology:(id)self0
{
  v69 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  fabricIDCopy = fabricID;
  vendorIDCopy = vendorID;
  productIDCopy = productID;
  numberCopy = number;
  categoryCopy = category;
  topologyCopy = topology;
  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v25 = v41 = v22;
    *buf = 138545154;
    v54 = v25;
    v55 = 2112;
    v56 = dCopy;
    v57 = 2112;
    v58 = fabricIDCopy;
    v59 = 2112;
    v60 = vendorIDCopy;
    v61 = 2112;
    v62 = productIDCopy;
    v63 = 2112;
    v64 = numberCopy;
    v65 = 2112;
    v66 = categoryCopy;
    v67 = 2112;
    v68 = iDCopy;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Handling pairing completion for Accessory with Node ID %@, Fabric ID %@, Vendor ID %@, Product ID %@, Config Number %@, Category %@, fabric UUID %@", buf, 0x52u);

    v22 = v41;
  }

  objc_autoreleasePoolPop(v22);
  nodesWithPendingACLOverwrite = [(HMMTRAccessoryServerBrowser *)selfCopy nodesWithPendingACLOverwrite];
  [nodesWithPendingACLOverwrite addObject:dCopy];

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v30;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating storage with information for newly paired accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  v31 = [(HMMTRAccessoryServerBrowser *)v28 storageForFabricUUID:iDCopy sharedAdmin:0];
  workQueue = [(HAPAccessoryServerBrowser *)v28 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __153__HMMTRAccessoryServerBrowser_handlePairingCompletionForAccessoryWithNodeID_targetFabricUUID_fabricID_vendorID_productID_configNumber_category_topology___block_invoke;
  block[3] = &unk_2786EEF10;
  v45 = v31;
  v46 = dCopy;
  v47 = vendorIDCopy;
  v48 = fabricIDCopy;
  v49 = productIDCopy;
  v50 = categoryCopy;
  v51 = numberCopy;
  v52 = topologyCopy;
  v33 = topologyCopy;
  v34 = numberCopy;
  v35 = categoryCopy;
  v36 = productIDCopy;
  v37 = fabricIDCopy;
  v38 = vendorIDCopy;
  v39 = dCopy;
  v40 = v31;
  dispatch_async(workQueue, block);
}

uint64_t __153__HMMTRAccessoryServerBrowser_handlePairingCompletionForAccessoryWithNodeID_targetFabricUUID_fabricID_vendorID_productID_configNumber_category_topology___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startLocalStorageMode];
  [*(a1 + 32) addPairedNodeID:*(a1 + 40)];
  [*(a1 + 32) setVendorID:*(a1 + 48) forNode:*(a1 + 40)];
  [*(a1 + 32) setFabricID:*(a1 + 56) forNode:*(a1 + 40)];
  [*(a1 + 32) setProductID:*(a1 + 64) forNode:*(a1 + 40)];
  [*(a1 + 32) setCategory:*(a1 + 72) forNode:*(a1 + 40)];
  [*(a1 + 32) setConfigNumber:*(a1 + 80) forNode:*(a1 + 40)];
  [*(a1 + 32) setStaged:0 forNode:*(a1 + 40)];
  [*(a1 + 32) setTopology:*(a1 + 88) forNode:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 endLocalStorageModeBySyncingToRemote:1];
}

- (void)notifyPairingCompletionForAccessoryServer:(id)server
{
  serverCopy = server;
  delegate = [(HMMTRAccessoryServerBrowser *)self delegate];
  [delegate accessoryServerBrowser:self didFinishPairingForAccessoryServer:serverCopy];
}

- (void)fetchCertificatesForMatterNodeWithCommissionerNodeID:(id)d commissioneeNodeID:(id)iD forOwner:(BOOL)owner publicKey:(id)key fabricData:(id)data adminCAT:(id)t opCAT:(id)aT completionHandler:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  dataCopy = data;
  tCopy = t;
  aTCopy = aT;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __166__HMMTRAccessoryServerBrowser_fetchCertificatesForMatterNodeWithCommissionerNodeID_commissioneeNodeID_forOwner_publicKey_fabricData_adminCAT_opCAT_completionHandler___block_invoke;
  block[3] = &unk_2786EEEE8;
  v32 = dataCopy;
  selfCopy = self;
  ownerCopy = owner;
  v34 = iDCopy;
  v35 = keyCopy;
  v36 = dCopy;
  v37 = tCopy;
  v38 = aTCopy;
  v39 = handlerCopy;
  v24 = aTCopy;
  v25 = tCopy;
  v26 = dCopy;
  v27 = keyCopy;
  v28 = iDCopy;
  v29 = handlerCopy;
  v30 = dataCopy;
  dispatch_async(workQueue, block);
}

void __166__HMMTRAccessoryServerBrowser_fetchCertificatesForMatterNodeWithCommissionerNodeID_commissioneeNodeID_forOwner_publicKey_fabricData_adminCAT_opCAT_completionHandler___block_invoke(uint64_t a1)
{
  v118[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rootKeyPair];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) rootCert];

    if (v4)
    {
      v5 = "non-owner";
      if (*(a1 + 96))
      {
        v5 = "Owner";
      }

      v98 = v5;
      v6 = *(a1 + 48);
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v6)
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 48);
        *buf = 138543874;
        v102 = v11;
        v103 = 2080;
        v104 = v98;
        v105 = 2112;
        v106 = v12;
        v13 = "%{public}@Received request from %s controller to generate Operational Certificate for Node ID %@";
        v14 = v9;
        v15 = 32;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v102 = v11;
        v103 = 2080;
        v104 = v98;
        v13 = "%{public}@Received request from %s controller to generate Operational certificate for itself";
        v14 = v9;
        v15 = 22;
      }

      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);

LABEL_14:
      objc_autoreleasePoolPop(v7);
      v24 = *MEMORY[0x277CDC000];
      v25 = *MEMORY[0x277CDC028];
      v117[0] = *MEMORY[0x277CDBFE0];
      v117[1] = v25;
      v26 = *MEMORY[0x277CDC040];
      v118[0] = v24;
      v118[1] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
      v97 = error = 0;
      v27 = SecKeyCreateWithData(*(a1 + 56), v97, &error);
      if (!v27)
      {
        v33 = error;
        v34 = objc_autoreleasePoolPush();
        v35 = *(a1 + 40);
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          v102 = v37;
          v103 = 2112;
          v104 = v33;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert Public Key Data to SecKey with error %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v22 = 0;
        goto LABEL_38;
      }

      v28 = v27;
      v29 = *(a1 + 48);
      if (!v29)
      {
        v38 = *(a1 + 64);
        if (!v38 || ([v38 isEqualToNumber:&unk_283EE87C0] & 1) != 0 || (v39 = *(a1 + 48), objc_msgSend(*(a1 + 32), "residentNodeID"), v40 = objc_claimAutoreleasedReturnValue(), LOBYTE(v39) = objc_msgSend(v39, "isEqualToNumber:", v40), v40, (v39 & 1) != 0))
        {
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
          v41 = objc_autoreleasePoolPush();
          v42 = *(a1 + 40);
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543874;
            v102 = v44;
            v103 = 2080;
            v104 = v98;
            v105 = 2112;
            v106 = v32;
            _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Generating a Random Node ID for %s Controller as %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v41);
          if (v6)
          {
            goto LABEL_32;
          }

LABEL_27:
          if (isFeatureMatterLocalFabricConfigEnabled(v30, v31))
          {
            v45 = 80;
            if (*(a1 + 96))
            {
              v45 = 72;
            }

            v46 = *(a1 + v45);
            if (v46)
            {
              v94 = v46;
              v47 = [MEMORY[0x277CBEB98] setWithObject:v46];
              goto LABEL_33;
            }
          }

LABEL_32:
          v94 = 0;
          v47 = 0;
LABEL_33:
          v48 = objc_autoreleasePoolPush();
          v49 = *(a1 + 40);
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v51 = v28;
            v53 = v52 = v32;
            [*(a1 + 32) rootKeyPair];
            v54 = v92 = v48;
            v55 = [*(a1 + 32) rootCert];
            v56 = [*(a1 + 32) fabricID];
            *buf = 138545154;
            v102 = v53;
            v103 = 2080;
            v104 = v98;
            v105 = 2112;
            v106 = v54;
            v107 = 2112;
            v108 = v55;
            v109 = 2112;
            v110 = v51;
            v111 = 2112;
            v112 = v56;
            v113 = 2112;
            v114 = v52;
            v115 = 2112;
            v116 = v47;
            _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_INFO, "%{public}@Generating a OP cert for %s with nocSigner %@, rootCert = %@, pubKeyAsSecKey %@, fabricID %@, nodeID %@ CATs = %@", buf, 0x52u);

            v48 = v92;
            v32 = v52;
            v28 = v51;
          }

          objc_autoreleasePoolPop(v48);
          v57 = MEMORY[0x277CD5230];
          v58 = [*(a1 + 32) rootKeyPair];
          v59 = [*(a1 + 32) rootCert];
          v60 = [*(a1 + 32) fabricID];
          v99 = 0;
          v23 = [v57 createOperationalCertificate:v58 signingCertificate:v59 operationalPublicKey:v28 fabricID:v60 nodeID:v32 caseAuthenticatedTags:v47 error:&v99];
          v22 = v99;

          CFRelease(v28);
          if (v23)
          {
            v61 = objc_autoreleasePoolPush();
            v62 = *(a1 + 40);
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = HMFGetLogIdentifier();
              *buf = 138543618;
              v102 = v64;
              v103 = 2080;
              v104 = v98;
              _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_INFO, "%{public}@Successfully generated Operational Certificate for %s Controller", buf, 0x16u);
            }

LABEL_41:

            objc_autoreleasePoolPop(v61);
            if (*(a1 + 48))
            {
              v66 = objc_autoreleasePoolPush();
              v67 = *(a1 + 40);
              v68 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                v69 = HMFGetLogIdentifier();
                v95 = v66;
                v70 = MEMORY[0x277CD5230];
                v71 = [*(a1 + 32) rootCert];
                v72 = [v70 shortDescriptionForX509Certificate:v71];
                v73 = [MEMORY[0x277CD5230] shortDescriptionForX509Certificate:v23];
                *buf = 138544130;
                v102 = v69;
                v103 = 2112;
                v104 = v72;
                v105 = 2112;
                v106 = v73;
                v107 = 2080;
                v108 = v98;
                _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_INFO, "%{public}@Returning Root Certificate %@, Operational Certificate %@ to %s Controller", buf, 0x2Au);

                v66 = v95;
              }

              objc_autoreleasePoolPop(v66);
              v74 = MEMORY[0x277CD5230];
              v75 = [*(a1 + 32) rootCert];
              [v74 printX509Certificate:v75];

              [MEMORY[0x277CD5230] printX509Certificate:v23];
              v76 = *(a1 + 88);
              v77 = [*(a1 + 32) rootCert];
              (*(v76 + 16))(v76, v77, v23, 0, 0, 0);
            }

            else
            {
              v77 = [*(a1 + 32) ipk];
              v78 = [*(a1 + 32) residentNodeID];
              v79 = objc_autoreleasePoolPush();
              v80 = *(a1 + 40);
              v81 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v93 = v79;
                v82 = v96 = v78;
                v83 = MEMORY[0x277CD5230];
                v91 = [*(a1 + 32) rootCert];
                v84 = [v83 shortDescriptionForX509Certificate:v91];
                v85 = [MEMORY[0x277CD5230] shortDescriptionForX509Certificate:v23];
                v86 = [v77 hmmtr_sha256hash];
                *buf = 138544642;
                v102 = v82;
                v103 = 2112;
                v104 = v84;
                v105 = 2112;
                v106 = v85;
                v107 = 2112;
                v108 = v96;
                v109 = 2112;
                v110 = v86;
                v111 = 2080;
                v112 = v98;
                _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_INFO, "%{public}@Returning Root Certificate %@, Operational Certificate %@, Resident NodeID %@, and IPK %@ to %s Controller", buf, 0x3Eu);

                v79 = v93;
                v78 = v96;
              }

              objc_autoreleasePoolPop(v79);
              v87 = MEMORY[0x277CD5230];
              v88 = [*(a1 + 32) rootCert];
              [v87 printX509Certificate:v88];

              [MEMORY[0x277CD5230] printX509Certificate:v23];
              v89 = *(a1 + 88);
              v90 = [*(a1 + 32) rootCert];
              (*(v89 + 16))(v89, v90, v23, v78, v77, 0);
            }

            goto LABEL_49;
          }

LABEL_38:
          v61 = objc_autoreleasePoolPush();
          v62 = *(a1 + 40);
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            *buf = 138543618;
            v102 = v65;
            v103 = 2112;
            v104 = v22;
            _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate Operational Certificate %@", buf, 0x16u);
          }

          v23 = 0;
          goto LABEL_41;
        }

        v29 = *(a1 + 64);
      }

      v30 = v29;
      v32 = v30;
      if (v6)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 40);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v102 = v19;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric key pairs or root cert are missing. Declining to fetch certificates.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = *(a1 + 88);
  v21 = MEMORY[0x277CCA9B8];
  v22 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:1];
  v23 = [v21 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v22];
  (*(v20 + 16))(v20, 0, 0, 0, 0, v23);
LABEL_49:
}

- (void)_reportAccessoriesKnownToSystemCommissioner
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
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Reporting accessories known to System Commissioner", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)selfCopy discoveredAccessoryServers];
  v8 = [discoveredAccessoryServers copy];

  systemCommissionerPairingManager = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerPairingManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke;
  v11[3] = &unk_2786EEEC0;
  v11[4] = selfCopy;
  v12 = v8;
  v10 = v8;
  [systemCommissionerPairingManager fetchSystemCommissionerPairingsWithCompletionHandler:v11];
}

void __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke_2;
  block[3] = &unk_2786EF3C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __74__HMMTRAccessoryServerBrowser__reportAccessoriesKnownToSystemCommissioner__block_invoke_2(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v46;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [a1[5] _serverFromMTSDevicePairing:*(*(&v45 + 1) + 8 * i)];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v5);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v42;
    *&v11 = 138543618;
    v33 = v11;
    obj = v9;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v41 + 1) + 8 * j);
        if ([v15 isKnownToSystemCommissioner] && (objc_msgSend(v2, "containsObject:", v15) & 1) == 0)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = a1[5];
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v33;
            v51 = v19;
            v52 = 2112;
            v53 = v15;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalidating stale discovered server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v20 = a1[5];
          v21 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
          [v20 invalidateAccessoryServer:v15 reason:v21];

          v9 = obj;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v12);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obja = v2;
  v22 = [obja countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v38;
    *&v23 = 138543618;
    v34 = v23;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v37 + 1) + 8 * k);
        if ([a1[5] _delegateRespondsToSelector:{sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_, v34}])
        {
          v28 = objc_autoreleasePoolPush();
          v29 = a1[5];
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v34;
            v51 = v31;
            v52 = 2112;
            v53 = v27;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Reporting SC server %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v32 = [a1[5] delegate];
          [v32 accessoryServerBrowser:a1[5] didFindAccessoryServer:v27 stateChanged:0 stateNumber:0];
        }
      }

      v24 = [obja countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v24);
  }
}

- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload
{
  payloadCopy = payload;
  numberCopy = number;
  productIDCopy = productID;
  iDCopy = iD;
  dCopy = d;
  systemCommissionerPairingManager = [(HMMTRAccessoryServerBrowser *)self systemCommissionerPairingManager];
  [systemCommissionerPairingManager cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:dCopy vendorID:iDCopy productID:productIDCopy serialNumber:numberCopy setupPayload:payloadCopy];
}

- (void)finishSystemCommissionerFabricCommissioningWithFabricID:(id)d rootCACert:(id)cert ipk:(id)ipk controllerNodeID:(id)iD commissioneeNodeID:(id)nodeID queue:(id)queue completion:(id)completion
{
  dCopy = d;
  nodeIDCopy = nodeID;
  queueCopy = queue;
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke;
  block[3] = &unk_2786F0260;
  block[4] = self;
  v22 = dCopy;
  v24 = nodeIDCopy;
  v25 = completionCopy;
  v23 = queueCopy;
  v17 = nodeIDCopy;
  v18 = completionCopy;
  v19 = queueCopy;
  v20 = dCopy;
  dispatch_async(workQueue, block);
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
  v3 = [*(a1 + 32) systemCommissionerControllerWrapper];
  v4 = [v3 controller];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Connecting to the commissionee to complete commissioning...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [MEMORY[0x277CD5220] deviceWithNodeID:*(a1 + 56) controller:v4];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CD51F8]);
      v12 = [*(a1 + 32) workQueue];
      v13 = [v11 initWithDevice:v10 endpointID:&unk_283EE87C0 queue:v12];

      if (v13)
      {
        [*(a1 + 32) _notifyDelegateOfPairingStep:21];
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v17;
          _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending commissioning complete...", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_331;
        v33[3] = &unk_2786EEE98;
        v33[4] = *(a1 + 32);
        v18 = v34;
        v34[0] = *(a1 + 48);
        v34[1] = v2;
        v36 = *(a1 + 64);
        v35 = v10;
        [v13 commissioningCompleteWithCompletion:v33];
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 32);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v31;
          _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to create GeneralCommissioning cluster object", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v32 = *(a1 + 48);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_330;
        v37[3] = &unk_2786EF5A8;
        v37[4] = v2;
        v18 = &v38;
        v38 = *(a1 + 64);
        dispatch_async(v32, v37);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 56);
        *buf = 138543618;
        v44 = v25;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device (%@) to complete commissioning", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = *(a1 + 48);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_328;
      v39[3] = &unk_2786EF5A8;
      v39[4] = v2;
      v40 = *(a1 + 64);
      dispatch_async(v27, v39);
    }
  }

  else
  {
    if (v8)
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      *buf = 138543618;
      v44 = v19;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Failed to start system commissioner controller for fabric ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v21 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_327;
    block[3] = &unk_2786EF5A8;
    block[4] = v2;
    v42 = *(a1 + 64);
    dispatch_async(v21, block);
  }
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_327(uint64_t a1)
{
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_328(uint64_t a1)
{
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_330(uint64_t a1)
{
  v2 = [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:20 error:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_331(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 errorCode], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, objc_msgSend(v5, "errorCode"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqual:", &unk_283EE87C0), v19, v18, (v20 & 1) == 0))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 errorCode];
      v12 = [v5 debugText];
      *buf = 138544130;
      v36 = v10;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Commissioning complete failed with %@ (%@: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v13 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_332;
    block[3] = &unk_2786F0EA8;
    v14 = v6;
    v15 = *(a1 + 48);
    v32 = v14;
    v33 = v15;
    v34 = *(a1 + 64);
    dispatch_async(v13, block);

    v16 = v32;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Commissioning complete responded. Fetching serial number.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = *(a1 + 56);
    v26 = [*(a1 + 32) workQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_333;
    v28[3] = &unk_2786EEE70;
    v27 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v27;
    v30 = *(a1 + 64);
    [v25 fetchSerialNumberWithCallbackQueue:v26 completionHandler:v28];

    v16 = v29;
  }
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_332(void *a1)
{
  if (a1[4])
  {
    [HMMTRAccessoryPairingEndContext mtrContextWithStep:21 error:?];
  }

  else
  {
    [HMMTRAccessoryPairingEndContext hmmtrContextWithStep:21 error:a1[5]];
  }
  v2 = ;
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  v4 = v2;
  (*(a1[6] + 16))(a1[6], 0, v3);
}

void __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_333(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Accessory returned Serial Number as %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_335;
    block[3] = &unk_2786EF5A8;
    v12 = &v18;
    v13 = *(a1 + 40);
    v18 = *(a1 + 48);
    v17 = v5;
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve serial number: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __155__HMMTRAccessoryServerBrowser_finishSystemCommissionerFabricCommissioningWithFabricID_rootCACert_ipk_controllerNodeID_commissioneeNodeID_queue_completion___block_invoke_334;
    v19[3] = &unk_2786EF878;
    v12 = &v20;
    v15 = *(a1 + 40);
    v20 = *(a1 + 48);
    dispatch_async(v15, v19);
  }
}

- (void)_prepareForPairingWithSetupPayload:(id)payload targetFabricUUID:(id)d fabricID:(id)iD controllerWrapper:(id)wrapper hasPriorSuccessfulPairing:(BOOL)pairing category:(id)category completionHandler:(id)handler
{
  pairingCopy = pairing;
  v93 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  iDCopy = iD;
  wrapperCopy = wrapper;
  categoryCopy = category;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];

  if (!dCopy || dataSource)
  {
    v80 = wrapperCopy;
    if (!dCopy)
    {
      dCopy = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
    }

    [(HMMTRAccessoryServerBrowser *)self addFabricWithActiveClients:dCopy];
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveClients];
      *buf = 138543874;
      v86 = v31;
      v87 = 2112;
      v88 = iDCopy;
      v89 = 2112;
      v90 = fabricsWithActiveClients;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Added active client for pairing into fabric ID %@, currently active clients: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    controllerFactoryEnablePerPrimaryResidentConfirmationToken = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (controllerFactoryEnablePerPrimaryResidentConfirmationToken)
    {
      controllerFactory = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactory];
      controllerFactoryEnablePerPrimaryResidentConfirmationToken2 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [controllerFactory enableNormalOperationWithToken:controllerFactoryEnablePerPrimaryResidentConfirmationToken2];

      [(HMMTRAccessoryServerBrowser *)selfCopy setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }

    v81 = payloadCopy;
    v77 = handlerCopy;
    v79 = iDCopy;
    if (dCopy)
    {
      systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricUUID];
      v37 = [dCopy isEqual:systemCommissionerFabricUUID];

      if ((v37 & 1) == 0)
      {
        [(HMMTRAccessoryServerBrowser *)selfCopy _deleteOldPairingsForFabricUUID:dCopy];
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMMTRAccessoryServerBrowser _generateNodeID](selfCopy, "_generateNodeID")}];
    discriminator = [v81 discriminator];
    unsignedShortValue = [discriminator unsignedShortValue];

    if ([v81 hasShortDiscriminator])
    {
      v41 = unsignedShortValue << 8;
    }

    else
    {
      v41 = unsignedShortValue;
    }

    v42 = [HMMTRAccessoryServerFactory alloc];
    keyStore = [(HAPAccessoryServerBrowser *)selfCopy keyStore];
    v44 = [(HMMTRAccessoryServerFactory *)v42 initWithKeystore:keyStore browser:selfCopy];

    setupCode = [v81 setupCode];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v41];
    vendorID = [v81 vendorID];
    productID = [v81 productID];
    serialNumber = [v81 serialNumber];
    v75 = v44;
    v76 = categoryCopy;
    v50 = v44;
    v27 = v38;
    v51 = [v50 vendAccessoryServerWithNodeID:v38 setupCode:setupCode discriminator:v46 category:categoryCopy vendorID:vendorID productID:productID serialNumber:serialNumber firmwareRevision:@"1.0.0"];

    if (v51)
    {
      [v51 setFabricUUID:dCopy];
      [v51 setFabricID:v79];
      handlerCopy = v77;
      if (dCopy)
      {
        systemCommissionerFabricUUID2 = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricUUID];
        [v51 setKnownToSystemCommissioner:{objc_msgSend(dCopy, "isEqual:", systemCommissionerFabricUUID2)}];
      }

      else
      {
        [v51 setKnownToSystemCommissioner:1];
      }

      payloadCopy = v81;
      [v51 setHasPriorSuccessfulPairing:pairingCopy];
      [v51 setDiscriminatorIsOriginatedFromShort:{objc_msgSend(v81, "hasShortDiscriminator")}];
      setupPayloadString = [v81 setupPayloadString];
      [v51 setSetupPayloadString:setupPayloadString];

      [v51 setControllerWrapper:v80];
      if (isFeatureMatterRVCEnabled())
      {
        [v80 resume];
      }

      pairingWindowInfoTable = [(HMMTRAccessoryServerBrowser *)selfCopy pairingWindowInfoTable];
      setupPayloadString2 = [v81 setupPayloadString];
      v61 = [MEMORY[0x277CBEAA8] now];
      v57 = [pairingWindowInfoTable retrieveAccessoryServerForPairingWindowWithSetupPayload:setupPayloadString2 currentDate:v61];

      if (v57)
      {
        if ([v57 isWEDDevice])
        {
          [v51 setWedDevice:1];
          eMACAddress = [v57 eMACAddress];
          [v51 setEMACAddress:eMACAddress];
        }

        [v51 setLinkLayerType:{objc_msgSend(v57, "linkLayerType")}];
        v63 = objc_autoreleasePoolPush();
        v64 = selfCopy;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v66 = v82 = v63;
          if ([v51 isWEDDevice])
          {
            v67 = " WED";
          }

          else
          {
            v67 = "";
          }

          linkLayerType = [v51 linkLayerType];
          v69 = "non-Thread";
          *buf = 138544130;
          v86 = v66;
          v87 = 2080;
          if (linkLayerType == 4)
          {
            v69 = "Thread";
          }

          v88 = v67;
          handlerCopy = v77;
          v89 = 2080;
          v90 = v69;
          v91 = 2112;
          v92 = v51;
          _os_log_impl(&dword_22AEAE000, v65, OS_LOG_TYPE_INFO, "%{public}@Pairing with%s %s accessory %@ via locally opened pairing window", buf, 0x2Au);

          v63 = v82;
        }

        objc_autoreleasePoolPop(v63);
      }

      v70 = objc_autoreleasePoolPush();
      v71 = selfCopy;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v73;
        v87 = 2112;
        v88 = v51;
        _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_INFO, "%{public}@Ready to pair with Accessory %@.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v70);
      [v71[7] addObject:v51];
      (*(handlerCopy + 2))(handlerCopy, 0, v51, 0);
      if ([v71 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
      {
        delegateQueue = [v71 delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __163__HMMTRAccessoryServerBrowser__prepareForPairingWithSetupPayload_targetFabricUUID_fabricID_controllerWrapper_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
        block[3] = &unk_2786EF328;
        block[4] = v71;
        v84 = v51;
        dispatch_async(delegateQueue, block);
      }

      wrapperCopy = v80;
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v86 = v56;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create server...pairing won't work.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v53);
      v57 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      handlerCopy = v77;
      (*(v77 + 2))(v77, 0, 0, v57);
      wrapperCopy = v80;
      payloadCopy = v81;
    }

    iDCopy = v79;
    categoryCopy = v76;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v86 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@CHIP Storage has not been initialized...pairing won't work", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v27);
  }
}

void __163__HMMTRAccessoryServerBrowser__prepareForPairingWithSetupPayload_targetFabricUUID_fabricID_controllerWrapper_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)prepareForPairingWithSetupPayload:(id)payload targetFabricUUID:(id)d completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v14;
    v32 = 2112;
    v33 = payloadCopy;
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Prepare pairing with setup payload: %@, targetfabricUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  homeFabricControllers = [(HMMTRAccessoryServerBrowser *)selfCopy homeFabricControllers];
  v16 = [homeFabricControllers cachedWrapperWithTargetFabricUUID:dCopy];

  if (v16)
  {
    startupParams = [v16 startupParams];
    fabricID = [startupParams fabricID];

    [(HMMTRAccessoryServerBrowser *)selfCopy setCurrentFabricUUID:dCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __100__HMMTRAccessoryServerBrowser_prepareForPairingWithSetupPayload_targetFabricUUID_completionHandler___block_invoke;
    v24[3] = &unk_2786EEE48;
    v24[4] = selfCopy;
    v25 = payloadCopy;
    v26 = dCopy;
    v27 = fabricID;
    v28 = v16;
    v29 = handlerCopy;
    v19 = fabricID;
    [(HMMTRAccessoryServerBrowser *)selfCopy dispatchBlock:v24];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = dCopy;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cached wrapper required for pairing prep was not found for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v19);
  }
}

- (void)_deleteOldPairingsForFabricUUID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];
  v7 = [dataSource storageDataSourceForFabricUUID:dCopy];

  allNodeIDs = [v7 allNodeIDs];
  v9 = [(HMMTRAccessoryServerBrowser *)self storageForFabricUUID:dCopy sharedAdmin:0];
  pairedNodeIDs = [v9 pairedNodeIDs];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (pairedNodeIDs)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v15;
      v50 = 2112;
      v51 = pairedNodeIDs;
      v52 = 2112;
      v53 = allNodeIDs;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Preparing for cleanup: comparing paired node IDs %@ vs all node IDs %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    if (allNodeIDs)
    {
      v37 = v9;
      v38 = v7;
      v39 = dCopy;
      v16 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerWrapperForFabricUUID:dCopy];
      controller = [v16 controller];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v36 = pairedNodeIDs;
      obj = pairedNodeIDs;
      v17 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v44;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v44 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v43 + 1) + 8 * i);
            if (([allNodeIDs containsObject:{v21, v36}] & 1) == 0)
            {
              v22 = allNodeIDs;
              v23 = objc_autoreleasePoolPush();
              v24 = selfCopy;
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v49 = v27;
                v50 = 2112;
                v51 = v21;
                _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Cleaning up unpaired server with nodeID:%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v23);
              v28 = [MEMORY[0x277CD5220] deviceWithNodeID:v21 controller:controller];
              if (!v28)
              {
                v32 = objc_autoreleasePoolPush();
                v33 = v25;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v49 = v35;
                  v50 = 2112;
                  v51 = v21;
                  _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device(%@), cleaning up locally", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v32);
                v7 = v38;
                dCopy = v39;
                pairedNodeIDs = v36;
                v9 = v37;
                allNodeIDs = v22;
                goto LABEL_24;
              }

              v29 = v28;
              workQueue = [(HAPAccessoryServerBrowser *)v25 workQueue];
              v42[0] = MEMORY[0x277D85DD0];
              v42[1] = 3221225472;
              v42[2] = __63__HMMTRAccessoryServerBrowser__deleteOldPairingsForFabricUUID___block_invoke;
              v42[3] = &unk_2786EF9E0;
              v42[4] = v25;
              v42[5] = v21;
              [v29 unpairDevice:workQueue completionHandler:v42];

              selfCopy = v24;
              allNodeIDs = v22;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v9 = v37;
      [v37 removeAndSyncAllKeysNotIncludedInActiveNodeIDs:allNodeIDs];

      v7 = v38;
      dCopy = v39;
      pairedNodeIDs = v36;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v31;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@No paired nodeIDs... Is this the first pairing?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

LABEL_24:
}

void __63__HMMTRAccessoryServerBrowser__deleteOldPairingsForFabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Notified device(%@) of removal, cleaning up locally. Error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_setUpBrowserTargetFabricUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting up target Fabric UUID = %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (dCopy)
  {
    [(HMMTRAccessoryServerBrowser *)selfCopy setCurrentFabricUUID:dCopy];
    v9 = [(HMMTRAccessoryServerBrowser *)selfCopy deviceControllerForFabricUUID:dCopy];

    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = dCopy;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to start matter stack for target fabric UUID: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }

    [(HMMTRAccessoryServerBrowser *)selfCopy setBrowserState:1];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot set nil target fabric UUID", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)didFinishPairingAccessoryServer:(id)server operationDisabled:(BOOL)disabled
{
  [(HMMTRAccessoryServerBrowser *)self disableUnrestrictedOperationsForAccessoryServer:server];
  [(HMMTRAccessoryServerBrowser *)self resumeAllOperations];
  threadRadioManager = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMMTRAccessoryServerBrowser_didFinishPairingAccessoryServer_operationDisabled___block_invoke;
  v7[3] = &unk_2786EF290;
  v7[4] = self;
  [threadRadioManager stopAccessoryPairingWithCompletion:v7];

  if (!disabled)
  {
    [(HMMTRAccessoryServerBrowser *)self restartDiscovery];
  }
}

void __81__HMMTRAccessoryServerBrowser_didFinishPairingAccessoryServer_operationDisabled___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@stopAccessoryPairingWithCompletion completed, error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_restartDiscovery
{
  v27 = *MEMORY[0x277D85DE8];
  currentFabric = [(HMMTRAccessoryServerBrowser *)self currentFabric];
  v4 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:currentFabric];

  if (v4)
  {
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v6 = [(HMMTRAccessoryServerBrowser *)self controllerWrapperForFabricUUID:currentFabricUUID];
    [v6 resume];

    currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    [(HMMTRAccessoryServerBrowser *)self _connectPendingFabricConnectionsForTargetFabricUUID:currentFabricUUID2];

    threadRadioManager = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
    currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v10 = [threadRadioManager hasMatterThreadAccessoryInHomeWithFabricUUID:currentFabricUUID3];

    if (v10)
    {
      threadRadioManager2 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
      currentFabricUUID4 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
      [threadRadioManager2 startThreadRadioForHomeWithFabricUUID:currentFabricUUID4];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        currentFabricUUID5 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
        v23 = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = currentFabricUUID5;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Not starting thread because fabric %@ has no thread accessories", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      currentFabricUUID6 = [(HMMTRAccessoryServerBrowser *)selfCopy2 currentFabricUUID];
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = currentFabricUUID6;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for fabric %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMMTRAccessoryServerBrowser *)selfCopy2 setupPairedDevices];
    [(HMMTRAccessoryServerBrowser *)selfCopy2 startDiscoveringAccessoryServersWithNoResponseToDelegate];
  }
}

- (void)restartDiscovery
{
  objc_initWeak(&location, self);
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMMTRAccessoryServerBrowser_restartDiscovery__block_invoke;
  v4[3] = &unk_2786EF2B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__HMMTRAccessoryServerBrowser_restartDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restartDiscovery];
}

- (void)_stopMatterStackWithReason:(id)reason
{
  v45 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    *buf = 138543618;
    v42 = v7;
    v43 = 2112;
    v44 = currentFabricUUID;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Stopping the matter stack for target fabric UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = selfCopy->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        fabricUUID = [v15 fabricUUID];
        currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
        v18 = [fabricUUID isEqual:currentFabricUUID2];

        if (v18)
        {
          [array addObject:v15];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = array;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * j);
        [v24 disable];
        [(HMMTRAccessoryServerBrowser *)selfCopy _invalidateAccessoryServer:v24 reason:reasonCopy withCompletion:0];
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
  [(HMMTRAccessoryServerBrowser *)selfCopy _suspendOperationsForTargetFabricUUID:currentFabricUUID3];

  if (![(HMMTRAccessoryServerBrowser *)selfCopy preventThreadStopDuringStackRestart])
  {
    threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    currentFabricUUID4 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    [threadRadioManager stopThreadRadioForHomeWithFabricUUID:currentFabricUUID4];
  }

  [(HMMTRAccessoryServerBrowser *)selfCopy setPreventThreadStopDuringStackRestart:0];
  currentFabricUUID5 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
  v29 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerWrapperForFabricUUID:currentFabricUUID5];
  [v29 suspendOrShutdown];

  [(HMMTRAccessoryServerBrowser *)selfCopy setCurrentFabricUUID:0];
}

- (void)handlePairingForThreadAccessoryWithTargetFabricUUID:(id)d nodeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__HMMTRAccessoryServerBrowser_handlePairingForThreadAccessoryWithTargetFabricUUID_nodeID___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

void __90__HMMTRAccessoryServerBrowser_handlePairingForThreadAccessoryWithTargetFabricUUID_nodeID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpBrowserTargetFabricIfNotFabricUUID:*(a1 + 40) rediscoverAccessories:0];
  if ([*(a1 + 32) canEstablishConnectionForNodeID:*(a1 + 48)])
  {
    v3 = [*(a1 + 32) threadRadioManager];
    v2 = [*(a1 + 32) currentFabricUUID];
    [v3 startThreadRadioForHomeWithFabricUUID:v2];
  }
}

- (void)addFabricWithActiveClientForTargetFabricUUID:(id)d
{
  dCopy = d;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMMTRAccessoryServerBrowser_addFabricWithActiveClientForTargetFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

void __76__HMMTRAccessoryServerBrowser_addFabricWithActiveClientForTargetFabricUUID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addFabricWithActiveClients:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) fabricsWithActiveClients];
    v8 = 138543874;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Added active client for pairing into fabric %@, currently active clients: %@", &v8, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_setUpBrowserTargetFabricIfNotFabricUUID:(id)d rediscoverAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  dCopy = d;
  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v7 = [currentFabricUUID isEqual:dCopy];

  if ((v7 & 1) == 0)
  {
    [(HMMTRAccessoryServerBrowser *)self _setUpUpdatedBrowserTargetFabricUUID:dCopy rediscoverAccessories:accessoriesCopy];
  }
}

- (void)_setUpUpdatedBrowserTargetFabricUUID:(id)d rediscoverAccessories:(BOOL)accessories overrideAccessoryControlAllowed:(BOOL)allowed
{
  accessoriesCopy = accessories;
  v64 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    v58 = 138543874;
    v59 = v12;
    v60 = 2112;
    v61 = dCopy;
    v62 = 2112;
    v63 = currentFabricUUID;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting up controller wrapper for Target Fabric UUID = %@, currentFabricUUID = %@", &v58, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (dCopy)
  {
    currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    if (currentFabricUUID2)
    {
      v15 = currentFabricUUID2;
      currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
      v17 = [currentFabricUUID3 isEqual:dCopy];

      if (v17)
      {
        [(HMMTRAccessoryServerBrowser *)selfCopy setPreventThreadStopDuringStackRestart:1];
      }
    }
  }

  if (![(HMMTRAccessoryServerBrowser *)selfCopy preventThreadStopDuringStackRestart])
  {
    threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricUUID];
    [threadRadioManager stopThreadRadioForSystemCommissionerFabricUUID:systemCommissionerFabricUUID];

    threadRadioManager2 = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    currentFabricUUID4 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    [threadRadioManager2 stopThreadRadioForHomeWithFabricUUID:currentFabricUUID4];
  }

  [(HMMTRAccessoryServerBrowser *)selfCopy setPreventThreadStopDuringStackRestart:0];
  [(HMMTRAccessoryServerBrowser *)selfCopy _setUpBrowserTargetFabricUUID:dCopy];
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if (!dCopy)
    {
      threadRadioManager3 = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
      [threadRadioManager3 allowDisconnect];

      fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveClients];
      v24 = [fabricsWithActiveClients count];

      if (v24)
      {
        fabricsWithActiveClients2 = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveClients];
        dCopy = [fabricsWithActiveClients2 anyObject];

        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v58 = 138543618;
          v59 = v29;
          v60 = 2112;
          v61 = dCopy;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@no target fabric UUID was provided, restarting with fabric with active client: %@", &v58, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [(HMMTRAccessoryServerBrowser *)v27 _setUpBrowserTargetFabricUUID:dCopy];
      }

      else
      {
        dCopy = 0;
      }
    }

    currentFabricUUID5 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];

    if (currentFabricUUID5)
    {
      if (allowed || ([(HMMTRAccessoryServerBrowser *)selfCopy currentFabric], v31 = objc_claimAutoreleasedReturnValue(), v32 = [(HMMTRAccessoryServerBrowser *)selfCopy isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:v31], v31, v32))
      {
        currentFabricUUID6 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
        v34 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerWrapperForFabricUUID:currentFabricUUID6];
        [v34 resume];

        if (accessoriesCopy && (-[HMMTRAccessoryServerBrowser fabricsWithActiveClients](selfCopy, "fabricsWithActiveClients"), v35 = objc_claimAutoreleasedReturnValue(), -[HMMTRAccessoryServerBrowser currentFabricUUID](selfCopy, "currentFabricUUID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v35 containsObject:v36], v36, v35, v37))
        {
          v38 = objc_autoreleasePoolPush();
          v39 = selfCopy;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            currentFabricUUID7 = [(HMMTRAccessoryServerBrowser *)v39 currentFabricUUID];
            v58 = 138543618;
            v59 = v41;
            v60 = 2112;
            v61 = currentFabricUUID7;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Starting discovery for target fabric UUID %@ because there are active clients", &v58, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [(HMMTRAccessoryServerBrowser *)v39 _restartDiscovery];
        }

        else
        {
          threadRadioManager4 = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
          currentFabricUUID8 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
          v49 = [threadRadioManager4 hasMatterThreadAccessoryInHomeWithFabricUUID:currentFabricUUID8];

          if (v49)
          {
            v50 = objc_autoreleasePoolPush();
            v51 = selfCopy;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v53 = HMFGetLogIdentifier();
              currentFabricUUID9 = [(HMMTRAccessoryServerBrowser *)v51 currentFabricUUID];
              v58 = 138543618;
              v59 = v53;
              v60 = 2112;
              v61 = currentFabricUUID9;
              _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Starting thread for target fabric UUID %@ because it became the current fabric", &v58, 0x16u);
            }

            objc_autoreleasePoolPop(v50);
            threadRadioManager5 = [(HMMTRAccessoryServerBrowser *)v51 threadRadioManager];
            currentFabricUUID10 = [(HMMTRAccessoryServerBrowser *)v51 currentFabricUUID];
            [threadRadioManager5 startThreadRadioForHomeWithFabricUUID:currentFabricUUID10];
          }
        }

        goto LABEL_34;
      }

      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        currentFabricUUID11 = [(HMMTRAccessoryServerBrowser *)v44 currentFabricUUID];
        v58 = 138543618;
        v59 = v46;
        v60 = 2112;
        v61 = currentFabricUUID11;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Not starting local discovery for target fabric UUID %@, resident available", &v58, 0x16u);

        goto LABEL_32;
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = selfCopy;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v58 = 138543362;
        v59 = v46;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Fabric not provided and no active clients, not configuring any controller wrapper", &v58, 0xCu);
LABEL_32:
      }
    }

    objc_autoreleasePoolPop(v43);
  }

LABEL_34:
}

- (void)setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID:(id)d
{
  dCopy = d;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricWithoutRediscoveringAccessoriesForHomeFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

- (void)setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID:(id)d
{
  dCopy = d;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricAndRediscoverAccessoriesForHomeFabricUUID___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
}

- (void)setUpBrowserTargetFabricUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID_completion___block_invoke;
  v10[3] = &unk_2786F0EA8;
  v10[4] = self;
  v11 = dCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

uint64_t __71__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpBrowserTargetFabricUUID:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)setUpBrowserTargetFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HMMTRAccessoryServerBrowser_setUpBrowserTargetFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

- (unint64_t)_getRandomFabricId
{
  selfCopy = self;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];

  allFabricIDs = [dataSource allFabricIDs];
  v14 = selfCopy;
  do
  {
    while (1)
    {
      v6 = +[HMMTRUtilities randomNodeID];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      if ([allFabricIDs containsObject:v7])
      {
        do
        {

          v6 = +[HMMTRUtilities randomNodeID];
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
        }

        while (([allFabricIDs containsObject:v7] & 1) != 0);
      }

      storage2 = [(HMMTRAccessoryServerBrowser *)selfCopy storage];
      fabricID = [storage2 fabricID];
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      if (([fabricID isEqualToNumber:v10] & 1) == 0)
      {
        break;
      }
    }

    systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricID];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v15 = [systemCommissionerFabricID isEqualToNumber:v12];

    selfCopy = v14;
  }

  while ((v15 & 1) != 0);

  return v6;
}

- (unint64_t)_generateNodeID
{
  v18 = *MEMORY[0x277D85DE8];
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  fabricDataSource = [storage fabricDataSource];
  allNodeIDs = [fabricDataSource allNodeIDs];

  do
  {
    v6 = +[HMMTRUtilities randomNodeID];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    v8 = [allNodeIDs containsObject:v7];
  }

  while ((v8 & 1) != 0);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Picking nodeID = %llu for the pairing request", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  return v6;
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HMMTRAccessoryServerBrowser *)self delegate];
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

- (id)_allServers
{
  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v4 = [discoveredAccessoryServers mutableCopy];

  stagedAccessoryServers = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
  [v4 unionSet:stagedAccessoryServers];

  return v4;
}

- (void)announceOtaProviderForNodeID:(id)d isRetry:(BOOL)retry
{
  retryCopy = retry;
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(HMMTRAccessoryServerBrowser *)self isCurrentDevicePrimaryResident]|| [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl]|| [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResident])
  {
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v7 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:dCopy];
      v8 = v7;
      if (v7)
      {
        matterFirmwareUpdateStatus = [v7 matterFirmwareUpdateStatus];
        [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:3];

        matterFirmwareUpdateStatus2 = [v8 matterFirmwareUpdateStatus];
        v11 = matterFirmwareUpdateStatus2;
        if (retryCopy)
        {
          incrementOtaAnnounceDelayCounter = [matterFirmwareUpdateStatus2 incrementOtaAnnounceDelayCounter];
        }

        else
        {
          [matterFirmwareUpdateStatus2 resetOtaAnnounceDelayCounter];
          incrementOtaAnnounceDelayCounter = 0;
        }

        deviceController = [v8 deviceController];
        controllerNodeId = [deviceController controllerNodeId];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __68__HMMTRAccessoryServerBrowser_announceOtaProviderForNodeID_isRetry___block_invoke;
        v23[3] = &unk_2786EF9E0;
        v23[4] = self;
        v24 = v8;
        [v24 announceOtaProvider:controllerNodeId providerEndpoint:&unk_283EE87C0 immediateAnnouncement:0 delayCounter:incrementOtaAnnounceDelayCounter completionHandler:v23];
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v16;
          v27 = 2112;
          v28 = dCopy;
          _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not associate with a paired accessory for announceOtaProviderForNodeID:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Current device cannot be an OTA provider", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __68__HMMTRAccessoryServerBrowser_announceOtaProviderForNodeID_isRetry___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@OTA Announce failed for server %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@OTA Announce completed for server: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_updateAccessoryControlListForServer:(id)server completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  completionCopy = completion;
  populateACLEntriesAfterPairing = [serverCopy populateACLEntriesAfterPairing];
  v9 = [populateACLEntriesAfterPairing objectForKeyedSubscript:@"adminNodesForPairing"];
  v10 = [populateACLEntriesAfterPairing objectForKeyedSubscript:@"regularNodesForPairing"];
  nodesWithPendingACLOverwrite = [(HMMTRAccessoryServerBrowser *)self nodesWithPendingACLOverwrite];
  nodeID = [serverCopy nodeID];
  v13 = [nodesWithPendingACLOverwrite containsObject:nodeID];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Overwriting ACL on accessory to remove node ID of shared Admin controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke;
    v25[3] = &unk_2786F0C10;
    v18 = &v26;
    v25[4] = selfCopy;
    v26 = serverCopy;
    v19 = &v27;
    v27 = completionCopy;
    v20 = completionCopy;
    [serverCopy updateAccessoryControlToAdministratorNodes:v9 sharedUserNodes:v10 completion:v25];
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke_322;
    v22[3] = &unk_2786F0C10;
    v18 = &v23;
    v22[4] = self;
    v23 = serverCopy;
    v19 = &v24;
    v24 = completionCopy;
    v21 = completionCopy;
    [serverCopy updateAccessoryControlToIncludeAdministratorNodes:v9 sharedUserNodes:v10 completion:v22];
  }
}

void __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update Access Control List on the accessory with error %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated Access Control List on accessory %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(a1 + 32) nodesWithPendingACLOverwrite];
    v12 = [*(a1 + 40) nodeID];
    [v11 removeObject:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void __79__HMMTRAccessoryServerBrowser__updateAccessoryControlListForServer_completion___block_invoke_322(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v3;
      v9 = "%{public}@Failed to update Access Control List on the accessory with error %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v12;
    v9 = "%{public}@Updated Access Control List on accessory %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v13, v14);
}

- (id)_createCHIPAccessoryForNodeID:(unint64_t)d ifPaired:(BOOL)paired fabricUUID:(id)iD fatalError:(id *)error
{
  pairedCopy = paired;
  v193 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  if (!pairedCopy || [(HMMTRAccessoryServerBrowser *)self _isDevicePaired:d fabricUUID:iDCopy])
  {
    if (iDCopy)
    {
      [(HMMTRAccessoryServerBrowser *)self storageForFabricUUID:iDCopy sharedAdmin:0];
    }

    else
    {
      [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    }
    v156 = ;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    v11 = [v156 isStagedForNode:v10];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v178 = v15;
        v179 = 2048;
        dCopy3 = d;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Found staged accessory %llu in storage, skipping...", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_100;
    }

    obj = error;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    v18 = [v156 vendorIDForNode:v17];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    productID = [v156 productIDForNode:v19];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    v22 = [v156 configNumberForNode:v21];

    dCopy2 = d;
    if (iDCopy)
    {
      storage = [(HMMTRAccessoryServerBrowser *)self storage];
      dataSource = [storage dataSource];
      v25 = [dataSource storageDataSourceForFabricUUID:iDCopy];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
      v154 = v25;
      v27 = [v25 primaryAccessoryCategoryForNodeID:v26];
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
      v27 = [v156 categoryForNode:v26];
      v154 = 0;
    }

    if (!v18 || !productID)
    {
      v32 = productID;
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
      v34 = [v154 storageDataSourceForDeviceWithNodeID:v33];
      vendorID = [v34 vendorID];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
      v37 = [v154 storageDataSourceForDeviceWithNodeID:v36];
      productID = [v37 productID];

      v18 = vendorID;
    }

    if (v18)
    {
      v38 = productID == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = !v38;
    v151 = v39;
    v153 = v27;
    if (v38 || !v27 || !v22)
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
        v45 = v44 = v22;
        *buf = 138544642;
        v178 = v43;
        v179 = 2112;
        dCopy3 = v18;
        v181 = 2112;
        v182 = productID;
        v183 = 2112;
        v184 = v153;
        v185 = 2112;
        v186 = v44;
        v187 = 2112;
        v188 = v45;
        _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_INFO, "%{public}@vendorID = %@, productID = %@, category = %@, configNumber = %@, nodeID = %@", buf, 0x3Eu);

        v22 = v44;
        v27 = v153;
      }

      objc_autoreleasePoolPop(v40);
      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy2;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543362;
        v178 = v49;
        _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@All parameters are not available", buf, 0xCu);

        v27 = v153;
      }

      objc_autoreleasePoolPop(v46);
    }

    v50 = [HMMTRAccessoryServerFactory alloc];
    keyStore = [(HAPAccessoryServerBrowser *)self keyStore];
    v52 = productID;
    v53 = [(HMMTRAccessoryServerFactory *)v50 initWithKeystore:keyStore browser:self];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
    v160 = v18;
    v55 = v18;
    v56 = v52;
    v16 = [(HMMTRAccessoryServerFactory *)v53 vendAccessoryServerWithNodeID:v54 setupCode:0 discriminator:0 category:v27 vendorID:v55 productID:v52 serialNumber:0 firmwareRevision:@"1.0.0"];

    if (!v16)
    {
      v71 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543618;
        v178 = v74;
        v179 = 2048;
        dCopy3 = dCopy2;
        _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to recover stored accessory for NodeID %llu...skipping", buf, 0x16u);

        v27 = v153;
      }

      objc_autoreleasePoolPop(v71);
      if (obj)
      {
        [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
        *obj = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_99;
    }

    v149 = v53;
    [v16 setConfigNumber:{objc_msgSend(v22, "integerValue")}];
    v57 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      configNumber = [v16 configNumber];
      *buf = 138543618;
      v178 = v60;
      v179 = 2048;
      dCopy3 = configNumber;
      _os_log_impl(&dword_22AEAE000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Loading with config number %tu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v57);
    v152 = v56;
    v150 = v22;
    if (iDCopy)
    {
      v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
      v63 = [v154 storageDataSourceForDeviceWithNodeID:v62];

      [v16 setWedDevice:{objc_msgSend(v63, "wedSupport")}];
      extendedMACAddress = [v63 extendedMACAddress];
      [v16 setEMACAddress:extendedMACAddress];

      supportedLinkLayerTypes = [v63 supportedLinkLayerTypes];
      [v16 setSupportedLinkLayerTypes:supportedLinkLayerTypes];

      [v16 configureDefaultRequiresThreadRouter];
      softwareVersionNumber = [v63 softwareVersionNumber];
      if (softwareVersionNumber)
      {
        v67 = objc_autoreleasePoolPush();
        v68 = selfCopy4;
        v69 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = HMFGetLogIdentifier();
          *buf = 138543618;
          v178 = v70;
          v179 = 2112;
          dCopy3 = softwareVersionNumber;
          _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_INFO, "%{public}@Accessory software version number = %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v67);
        [v16 updateSoftwareVersion:softwareVersionNumber];
        [v16 notifyMatterFirmwareRevisionNumberCharacteristicChanged];
      }
    }

    else
    {
      if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
      {
LABEL_50:
        supportedLinkLayerTypes2 = [v16 supportedLinkLayerTypes];
        [supportedLinkLayerTypes2 unsignedIntValue];

        supportedLinkLayerTypes3 = [v16 supportedLinkLayerTypes];
        [supportedLinkLayerTypes3 unsignedIntValue];

        supportedLinkLayerTypes4 = [v16 supportedLinkLayerTypes];
        [supportedLinkLayerTypes4 unsignedIntValue];

        v79 = objc_autoreleasePoolPush();
        v80 = selfCopy4;
        v81 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          v147 = HMFGetLogIdentifier();
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
          [v16 isWEDDevice];
          v146 = HMFBooleanToString();
          [v16 eMACAddress];
          v83 = v148 = v79;
          supportedLinkLayerTypes5 = [v16 supportedLinkLayerTypes];
          v85 = HMFBooleanToString();
          v86 = HMFBooleanToString();
          v87 = HMFBooleanToString();
          *buf = 138545154;
          v178 = v147;
          v179 = 2112;
          dCopy3 = v82;
          v181 = 2112;
          v182 = v146;
          v183 = 2112;
          v184 = v83;
          v185 = 2112;
          v186 = supportedLinkLayerTypes5;
          v187 = 2112;
          v188 = v85;
          v88 = v85;
          v189 = 2112;
          v190 = v86;
          v89 = v86;
          v191 = 2112;
          v192 = v87;
          v90 = v87;
          _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_INFO, "%{public}@nodeID: %@ WED: %@ eMAC: %@, supportedLinkLayerTypes: %@ [WiFi:%@, Ethernet:%@, Thread:%@]", buf, 0x52u);

          v79 = v148;
        }

        objc_autoreleasePoolPop(v79);
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        _allServers = [(HMMTRAccessoryServerBrowser *)v80 _allServers];
        v92 = [_allServers countByEnumeratingWithState:&v171 objects:v176 count:16];
        if (v92)
        {
          v93 = v92;
          v94 = v80;
          v95 = *v172;
LABEL_54:
          v96 = 0;
          while (1)
          {
            if (*v172 != v95)
            {
              objc_enumerationMutation(_allServers);
            }

            v97 = *(*(&v171 + 1) + 8 * v96);
            if ([v97 isEqual:v16])
            {
              break;
            }

            if (v93 == ++v96)
            {
              v93 = [_allServers countByEnumeratingWithState:&v171 objects:v176 count:16];
              if (v93)
              {
                goto LABEL_54;
              }

              v80 = v94;
              goto LABEL_76;
            }
          }

          v80 = v94;
          if (![(HMMTRAccessoryServerBrowser *)v94 isCurrentDeviceMobileAndAllowedAccessoryControl])
          {
            goto LABEL_68;
          }

          if ([v97 delayDiscovery])
          {
            v98 = objc_autoreleasePoolPush();
            v99 = v94;
            v100 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              v101 = HMFGetLogIdentifier();
              *buf = 138543874;
              v178 = v101;
              v179 = 2048;
              dCopy3 = dCopy2;
              v181 = 2112;
              v182 = v97;
              _os_log_impl(&dword_22AEAE000, v100, OS_LOG_TYPE_INFO, "%{public}@Found existing server for nodeID %llu in unpaired state, but discovery is delayed for server %@", buf, 0x20u);
            }

            v56 = v152;

            objc_autoreleasePoolPop(v98);
LABEL_72:

            v16 = 0;
            goto LABEL_98;
          }

          if ([v97 pairedState] == 3)
          {
LABEL_68:
            v102 = objc_autoreleasePoolPush();
            v103 = v94;
            v104 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              v105 = HMFGetLogIdentifier();
              *buf = 138543618;
              v178 = v105;
              v179 = 2048;
              dCopy3 = dCopy2;
              _os_log_impl(&dword_22AEAE000, v104, OS_LOG_TYPE_ERROR, "%{public}@Found existing server for node %llu...skipping", buf, 0x16u);
            }

            v56 = v152;

            objc_autoreleasePoolPop(v102);
            if (obj)
            {
              *obj = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
            }

            goto LABEL_72;
          }

          v106 = objc_autoreleasePoolPush();
          v107 = v94;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
          {
            v109 = HMFGetLogIdentifier();
            *buf = 138543874;
            v178 = v109;
            v179 = 2048;
            dCopy3 = dCopy2;
            v181 = 2112;
            v182 = v16;
            _os_log_impl(&dword_22AEAE000, v108, OS_LOG_TYPE_INFO, "%{public}@Found existing server for nodeID %llu in unpaired state, using it instead of new server = %@ ", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v106);
          v110 = v97;

          v16 = v110;
        }

LABEL_76:

        if (v151)
        {
          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
          v112 = [v154 allStorageDataSourcesForDeviceWithNodeID:v111];

          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          obja = v112;
          v113 = [obja countByEnumeratingWithState:&v167 objects:v175 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v168;
            do
            {
              for (i = 0; i != v114; ++i)
              {
                if (*v168 != v115)
                {
                  objc_enumerationMutation(obja);
                }

                v117 = *(*(&v167 + 1) + 8 * i);
                v164[0] = MEMORY[0x277D85DD0];
                v164[1] = 3221225472;
                v164[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke;
                v164[3] = &unk_2786EEE20;
                v164[4] = v80;
                v118 = v160;
                v165 = v118;
                v166 = v152;
                [v117 updateVendorID:v118 productID:v166 completion:v164];
              }

              v114 = [obja countByEnumeratingWithState:&v167 objects:v175 count:16];
            }

            while (v114);
          }
        }

        [v16 setPairedState:3];
        [v16 setFabricUUID:iDCopy];
        if (iDCopy)
        {
          storage2 = [(HMMTRAccessoryServerBrowser *)v80 storage];
          dataSource2 = [storage2 dataSource];
          v121 = [dataSource2 fabricIDFromFabricUUID:iDCopy];
          [v16 setFabricID:v121];

          v122 = [(HMMTRAccessoryServerBrowser *)v80 controllerWrapperForFabricUUID:iDCopy];
          [v16 setControllerWrapper:v122];

          v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
          v124 = [v156 topologyForNode:v123];
          [v16 setTopology:v124];

          topology = [v16 topology];

          if (!topology)
          {
            v126 = objc_autoreleasePoolPush();
            v127 = v80;
            v128 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
            {
              v129 = HMFGetLogIdentifier();
              *buf = 138543362;
              v178 = v129;
              _os_log_impl(&dword_22AEAE000, v128, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch topology from storage. This would require rebuilding topology again from resident", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v126);
          }

          if ([(HMMTRAccessoryServerBrowser *)v80 isCurrentDevicePrimaryResident])
          {
            v163[0] = MEMORY[0x277D85DD0];
            v163[1] = 3221225472;
            v163[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_320;
            v163[3] = &unk_2786EF290;
            v163[4] = v80;
            [(HMMTRAccessoryServerBrowser *)v80 _updateAccessoryControlListForServer:v16 completion:v163];
          }

          v161[0] = MEMORY[0x277D85DD0];
          v161[1] = 3221225472;
          v161[2] = __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_321;
          v161[3] = &unk_2786EF9E0;
          v161[4] = v80;
          v130 = v16;
          v162 = v130;
          [v130 enumerateHAPServices:v161];
          v131 = objc_autoreleasePoolPush();
          v132 = v80;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            v134 = HMFGetLogIdentifier();
            identifier = [v130 identifier];
            *buf = 138543618;
            v178 = v134;
            v179 = 2112;
            dCopy3 = identifier;
            _os_log_impl(&dword_22AEAE000, v133, OS_LOG_TYPE_INFO, "%{public}@Adding previously paired server with Identifier %@", buf, 0x16u);
          }

          v56 = v152;

          objc_autoreleasePoolPop(v131);
          v136 = v162;
          v16 = v130;
        }

        else
        {
          v56 = v152;
          v137 = objc_autoreleasePoolPush();
          v138 = v80;
          v139 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
          {
            v140 = HMFGetLogIdentifier();
            v141 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
            *buf = 138543874;
            v178 = v140;
            v179 = 2112;
            dCopy3 = v16;
            v181 = 2112;
            v182 = v141;
            _os_log_impl(&dword_22AEAE000, v139, OS_LOG_TYPE_INFO, "%{public}@Created %@ for System Commissioner Fabric Node %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v137);
          systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerFabricID];
          [v16 setFabricID:systemCommissionerFabricID];

          systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerFabricUUID];
          [v16 setFabricUUID:systemCommissionerFabricUUID];

          [v16 setKnownToSystemCommissioner:1];
          systemCommissionerControllerWrapper = [(HMMTRAccessoryServerBrowser *)v138 systemCommissionerControllerWrapper];
          [v16 setControllerWrapper:systemCommissionerControllerWrapper];
        }

LABEL_98:
        v53 = v149;
        v22 = v150;
        v27 = v153;
LABEL_99:

LABEL_100:
        goto LABEL_101;
      }

      v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
      [v16 setWedDevice:{objc_msgSend(v156, "wedSupportedForSystemCommissionerFabricNode:", v75)}];

      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:dCopy2];
      softwareVersionNumber = [v156 extendedMACAddressForSystemCommissionerFabricNode:v63];
      [v16 setEMACAddress:softwareVersionNumber];
    }

    goto LABEL_50;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v178 = v31;
    v179 = 2048;
    dCopy3 = d;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@No CHIP accessory for nodeID %llu, skipping...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v16 = 0;
LABEL_101:

  return v16;
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 138544386;
      v11 = v7;
      v12 = 2080;
      v13 = "[HMMTRAccessoryServerBrowser _createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@%s: Failed to update vendorID to %@ and productID to %@ with error: %@", &v10, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_320(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update ACL on accessory with error %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void __92__HMMTRAccessoryServerBrowser__createCHIPAccessoryForNodeID_ifPaired_fabricUUID_fatalError___block_invoke_321(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Enumerated HAP Services for server :%@ with Error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Not sending an OTA announcement or setting this device as a OTA provider", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)_reenumeratePairedDevices
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_discoveredAccessoryServers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138543618;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (([v9 removalInProgress] & 1) == 0)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = selfCopy;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v13 = v3;
            v15 = v14 = selfCopy;
            *buf = v16;
            v23 = v15;
            v24 = 2112;
            v25 = v9;
            _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Re-enumerating server %@", buf, 0x16u);

            selfCopy = v14;
            v3 = v13;
          }

          objc_autoreleasePoolPop(v10);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __56__HMMTRAccessoryServerBrowser__reenumeratePairedDevices__block_invoke;
          v17[3] = &unk_2786EF9E0;
          v17[4] = v11;
          v17[5] = v9;
          [v9 enumerateHAPServices:v17];
        }
      }

      v6 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }
}

void __56__HMMTRAccessoryServerBrowser__reenumeratePairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Re-enumeration completed for server %@, error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_updateDiscoveredAccessoryServersWithNodes:(id)nodes fabricUUID:(id)d
{
  v61 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v56 = v11;
    v57 = 2112;
    v58 = dCopy;
    v59 = 2112;
    v60 = nodesCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating discovered accessory servers for fabric %@ with paired nodes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  discoveredAccessoryServers = selfCopy->_discoveredAccessoryServers;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __85__HMMTRAccessoryServerBrowser__updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke;
  v50[3] = &unk_2786EEDF8;
  v13 = dCopy;
  v51 = v13;
  v14 = nodesCopy;
  v52 = v14;
  v38 = [(NSMutableSet *)discoveredAccessoryServers na_filter:v50];
  controllerFactoryEnablePerPrimaryResidentConfirmationToken = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactoryEnablePerPrimaryResidentConfirmationToken];

  if (controllerFactoryEnablePerPrimaryResidentConfirmationToken)
  {
    controllerFactory = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactory];
    controllerFactoryEnablePerPrimaryResidentConfirmationToken2 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactoryEnablePerPrimaryResidentConfirmationToken];
    [controllerFactory enableNormalOperationWithToken:controllerFactoryEnablePerPrimaryResidentConfirmationToken2];

    [(HMMTRAccessoryServerBrowser *)selfCopy setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v14;
  v41 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v41)
  {
    v40 = *v47;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        storage = [(HMMTRAccessoryServerBrowser *)selfCopy storage];
        dataSource = [storage dataSource];
        [dataSource storageDataSourceForFabricUUID:v13];
        v24 = v23 = v13;
        allNodeIDs = [v24 allNodeIDs];
        v26 = [allNodeIDs containsObject:v19];

        if (v26)
        {
          [(HMMTRAccessoryServerBrowser *)selfCopy _addDiscoveredAccessoryServerWithNodeID:v19 fabricUUID:v23];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v28 = selfCopy;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v30;
            v57 = 2112;
            v58 = v19;
            _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Node %@ is removed in a race, server shall not be created while updating discovered accessory servers", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
        }

        v13 = v23;
        objc_autoreleasePoolPop(v20);
      }

      v41 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v41);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = v38;
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * j);
        [v36 disable];
        v37 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
        [(HMMTRAccessoryServerBrowser *)selfCopy invalidateAccessoryServer:v36 reason:v37];
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v33);
  }
}

uint64_t __85__HMMTRAccessoryServerBrowser__updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isKnownToSystemCommissioner])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 fabricUUID];
    if ([v5 isEqual:*(a1 + 32)])
    {
      v6 = *(a1 + 40);
      v7 = [v3 nodeID];
      if ([v6 containsObject:v7])
      {
        v4 = 0;
      }

      else
      {
        v4 = [v3 isPairedInStorage] ^ 1;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)_addDiscoveredAccessoryServerWithNodeID:(id)d fabricUUID:(id)iD
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v16 = 0;
  v8 = -[HMMTRAccessoryServerBrowser _createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:](self, "_createCHIPAccessoryForNodeID:ifPaired:fabricUUID:fatalError:", [dCopy unsignedLongLongValue], 0, iDCopy, &v16);
  v9 = v16;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Set up new accessory server: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(NSMutableSet *)selfCopy->_discoveredAccessoryServers addObject:v8];
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = dCopy;
      v21 = 2112;
      v22 = iDCopy;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@There must have been an existing server for node %@, fabric %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)updateDiscoveredAccessoryServersWithNodes:(id)nodes fabricUUID:(id)d
{
  nodesCopy = nodes;
  dCopy = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HMMTRAccessoryServerBrowser_updateDiscoveredAccessoryServersWithNodes_fabricUUID___block_invoke;
  v10[3] = &unk_2786EF3C8;
  v10[4] = self;
  v11 = nodesCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = nodesCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

- (void)_setupPairedDevices
{
  v74 = *MEMORY[0x277D85DE8];
  if (![(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v14;
      v15 = "%{public}@Not the primary Resident, not restoring previously paired accessories...";
LABEL_42:
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
    }

LABEL_43:

    objc_autoreleasePoolPop(v11);
    nodesAddedToHome = [(HMMTRAccessoryServerBrowser *)selfCopy3 nodesAddedToHome];
    [nodesAddedToHome removeAllObjects];
    goto LABEL_44;
  }

  nodesAddedToHome2 = [(HMMTRAccessoryServerBrowser *)self nodesAddedToHome];
  if ([nodesAddedToHome2 count])
  {
    controllerFactoryEnablePerPrimaryResidentConfirmationToken = [(HMMTRAccessoryServerBrowser *)self controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (controllerFactoryEnablePerPrimaryResidentConfirmationToken)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v8;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Voting to enable controller factory when setting up paired devices", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      controllerFactory = [(HMMTRAccessoryServerBrowser *)selfCopy2 controllerFactory];
      controllerFactoryEnablePerPrimaryResidentConfirmationToken2 = [(HMMTRAccessoryServerBrowser *)selfCopy2 controllerFactoryEnablePerPrimaryResidentConfirmationToken];
      [controllerFactory enableNormalOperationWithToken:controllerFactoryEnablePerPrimaryResidentConfirmationToken2];

      [(HMMTRAccessoryServerBrowser *)selfCopy2 setControllerFactoryEnablePerPrimaryResidentConfirmationToken:0];
    }
  }

  else
  {
  }

  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v17 = [(HMMTRAccessoryServerBrowser *)self deviceControllerForFabricUUID:currentFabricUUID];
  isRunning = [v17 isRunning];

  if ((isRunning & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v14;
      v15 = "%{public}@CHIP Controller hasn't been setup, maybe storage isn't available yet?";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ([(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl])
  {
    storage = [(HMMTRAccessoryServerBrowser *)self storage];
    dataSource = [storage dataSource];
    currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
    v22 = [dataSource storageDataSourceForFabricUUID:currentFabricUUID2];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    allNodeIDs = [v22 allNodeIDs];
    v24 = [allNodeIDs countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v65;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v65 != v26)
          {
            objc_enumerationMutation(allNodeIDs);
          }

          v28 = *(*(&v64 + 1) + 8 * i);
          if (v28)
          {
            if (([*(*(&v64 + 1) + 8 * i) isEqual:&unk_283EE87C0] & 1) == 0)
            {
              v29 = [(HMMTRAccessoryServerBrowser *)self accessoryServerWithNodeID:v28];

              if (!v29)
              {
                nodesAddedToHome3 = [(HMMTRAccessoryServerBrowser *)self nodesAddedToHome];
                [nodesAddedToHome3 addObject:v28];
              }
            }
          }
        }

        v25 = [allNodeIDs countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v25);
    }
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v70 = v34;
    _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_INFO, "%{public}@Checking for new devices in storage...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  nodesAddedToHome4 = [(HMMTRAccessoryServerBrowser *)selfCopy4 nodesAddedToHome];
  v36 = [nodesAddedToHome4 copy];

  v37 = objc_autoreleasePoolPush();
  v38 = selfCopy4;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543618;
    v70 = v40;
    v71 = 2112;
    v72 = v36;
    _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@Looking through all paired NodeIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  nodesAddedToHome = v36;
  v58 = [nodesAddedToHome countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v58)
  {
    v57 = *v61;
    *&v42 = 138543618;
    v55 = v42;
    obj = nodesAddedToHome;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v61 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v60 + 1) + 8 * j);
        v45 = objc_autoreleasePoolPush();
        unsignedLongLongValue = [v44 unsignedLongLongValue];
        currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)v38 currentFabricUUID];
        v59 = 0;
        v48 = [(HMMTRAccessoryServerBrowser *)v38 _createCHIPAccessoryForNodeID:unsignedLongLongValue ifPaired:0 fabricUUID:currentFabricUUID3 fatalError:&v59];
        v49 = v59;

        if (v48)
        {
          v50 = objc_autoreleasePoolPush();
          v51 = v38;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            *buf = v55;
            v70 = v53;
            v71 = 2112;
            v72 = v44;
            _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_INFO, "%{public}@Found new device(%@) in storage...", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          [v51[7] addObject:v48];
        }

        nodesAddedToHome5 = [(HMMTRAccessoryServerBrowser *)v38 nodesAddedToHome];
        [nodesAddedToHome5 removeObject:v44];

        objc_autoreleasePoolPop(v45);
      }

      nodesAddedToHome = obj;
      v58 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v58);
  }

LABEL_44:
}

- (void)setupPairedDevices
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMMTRAccessoryServerBrowser_setupPairedDevices__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)_isNodeIDPaired:(id)paired targetFabricUUID:(id *)d
{
  pairedCopy = paired;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMMTRAccessoryServerBrowser__isNodeIDPaired_targetFabricUUID___block_invoke;
  v11[3] = &unk_2786EEDD0;
  v9 = pairedCopy;
  v12 = v9;
  v13 = &v15;
  dCopy = d;
  [dataSource forAllStorageDataSourcesDo:v11];

  LOBYTE(d) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return d;
}

uint64_t __64__HMMTRAccessoryServerBrowser__isNodeIDPaired_targetFabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allNodeIDs];
  v5 = [v4 containsObject:*(a1 + 32)];
  if (v5)
  {
    **(a1 + 48) = [v3 fabricUUID];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5 ^ 1u;
}

- (BOOL)_isDeviceIDPaired:(id)paired nodeID:(id *)d targetFabricUUID:(id *)iD
{
  pairedCopy = paired;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMMTRAccessoryServerBrowser__isDeviceIDPaired_nodeID_targetFabricUUID___block_invoke;
  v13[3] = &unk_2786EEDA8;
  v11 = pairedCopy;
  dCopy = d;
  iDCopy = iD;
  v14 = v11;
  v15 = &v18;
  [dataSource forAllStorageDataSourcesDo:v13];

  LOBYTE(iD) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return iD;
}

uint64_t __73__HMMTRAccessoryServerBrowser__isDeviceIDPaired_nodeID_targetFabricUUID___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 allNodeIDs];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [HMMTRUtilities identifierStringWithCHIPNodeID:v9, v15];
        LODWORD(v10) = [v10 hasPrefix:v11];

        if (v10)
        {
          v13 = v9;
          **(a1 + 48) = v9;
          [v3 fabricUUID];
          **(a1 + 56) = v12 = 0;
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)_isDevicePaired:(unint64_t)paired fabricUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    storage = [(HMMTRAccessoryServerBrowser *)self storage];
    dataSource = [storage dataSource];
    storageForSystemCommissioner = [dataSource storageDataSourceForFabricUUID:dCopy];

    [storageForSystemCommissioner allNodeIDs];
  }

  else
  {
    storageForSystemCommissioner = [(HMMTRAccessoryServerBrowser *)self storageForSystemCommissioner];
    [storageForSystemCommissioner pairedNodeIDsOnSystemCommissionerFabric:1];
  }
  v10 = ;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:paired];
  v12 = [v10 containsObject:v11];

  return v12;
}

- (void)_cleanupStagedServers
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting staged accessory pairings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

void __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 storage];
  v4 = [v3 fabricUUID];
  v5 = [v2 storageForFabricUUID:v4 sharedAdmin:0];

  v6 = [v5 pairedNodeIDs];
  v7 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v37;
    *&v10 = 138543618;
    v32 = v10;
    v33 = v8;
    v34 = v5;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        if ([v5 isStagedForNode:{v14, v32}])
        {
          v15 = v7;
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v32;
            v41 = v19;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Deleting staged accessory for nodeID %@...", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v20 = *(a1 + 32);
          v21 = [v20 storage];
          v22 = [v21 fabricUUID];
          v23 = [v20 controllerWrapperForFabricUUID:v22];
          v24 = [v23 controller];

          v25 = [MEMORY[0x277CD5220] deviceWithNodeID:v14 controller:v24];
          if (!v25)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = *(a1 + 32);
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = HMFGetLogIdentifier();
              *buf = v32;
              v41 = v31;
              v42 = 2112;
              v43 = v14;
              _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to get connected device(%@), cleaning up locally", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            v8 = v33;

            v7 = v15;
            v5 = v34;
            goto LABEL_17;
          }

          v26 = v25;
          v27 = [*(a1 + 32) workQueue];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke_317;
          v35[3] = &unk_2786EF9E0;
          v35[4] = *(a1 + 32);
          v35[5] = v14;
          [v26 unpairDevice:v27 completionHandler:v35];

          v7 = v15;
          [v15 addObject:v14];

          v8 = v33;
          v5 = v34;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [v5 removeRecordsForNodeIDs:v7 systemCommissionerFabric:{objc_msgSend(v5, "isSystemCommissionerFabric")}];
LABEL_17:
}

void __52__HMMTRAccessoryServerBrowser__cleanupStagedServers__block_invoke_317(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Notified device(%@) of removal, cleaning up locally. Error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (NSNumber)systemCommissionerFabricID
{
  systemCommissionerControllerWrapper = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerWrapper];
  startupParams = [systemCommissionerControllerWrapper startupParams];
  fabricID = [startupParams fabricID];

  return fabricID;
}

- (HMMTRMatterKeypair)systemCommissionerNocSigner
{
  systemCommissionerControllerParams = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v8 = 0;
  v9 = 0;
  v3 = [systemCommissionerControllerParams fetchControllerParamsAllowingNew:0 nocSigner:&v9 controllerWrapper:&v8];
  v4 = v9;
  v5 = v8;

  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (HMMTRControllerWrapper)systemCommissionerControllerWrapper
{
  systemCommissionerControllerParams = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v8 = 0;
  v9 = 0;
  v3 = [systemCommissionerControllerParams fetchControllerParamsAllowingNew:0 nocSigner:&v9 controllerWrapper:&v8];
  v4 = v9;
  v5 = v8;

  v6 = 0;
  if (v3)
  {
    v6 = v5;
  }

  return v6;
}

- (id)storageForSystemCommissioner
{
  v3 = [HMMTRStorage alloc];
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v5 = [(HMMTRStorage *)v3 initWithQueue:workQueue dataSource:0 systemCommissionerFabric:1 fabricUUID:0 sharedAdmin:0];

  return v5;
}

- (id)storageForFabricUUID:(id)d sharedAdmin:(BOOL)admin
{
  adminCopy = admin;
  dCopy = d;
  v7 = [HMMTRStorage alloc];
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];
  v11 = [(HMMTRStorage *)v7 initWithQueue:workQueue dataSource:dataSource systemCommissionerFabric:0 fabricUUID:dCopy sharedAdmin:adminCopy];

  return v11;
}

- (void)waitForDeviceControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMMTRAccessoryServerBrowser_waitForDeviceControllerWithCompletion___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMMTRAccessoryServerBrowser_waitForDeviceControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v8 = [v2 fabricUUID];

  if (v8)
  {
    v3 = [*(a1 + 32) homeFabricControllers];
    v4 = [v3 cachedWrapperWithTargetFabricUUID:v8];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 controller];
  if ([v5 isRunning])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) deviceControllerHandlers];
    v7 = MEMORY[0x2318887D0](*(a1 + 40));
    [v6 addObject:v7];
  }
}

- (id)deviceControllerForFabricUUID:(id)d
{
  v4 = [(HMMTRAccessoryServerBrowser *)self controllerWrapperForFabricUUID:d];
  controller = [v4 controller];

  if (controller)
  {
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HMMTRAccessoryServerBrowser_deviceControllerForFabricUUID___block_invoke;
    v8[3] = &unk_2786EF328;
    v8[4] = self;
    v9 = controller;
    dispatch_async(workQueue, v8);
  }

  return controller;
}

void __61__HMMTRAccessoryServerBrowser_deviceControllerForFabricUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceControllerHandlers];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) deviceControllerHandlers];
  [v4 removeAllObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)controllerWrapperForFabricUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    homeFabricControllers = [(HMMTRAccessoryServerBrowser *)self homeFabricControllers];
    v6 = [homeFabricControllers cachedWrapperWithTargetFabricUUID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateLocallyDiscoveredServerPairedStates
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_discoveredAccessoryServers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138543874;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 locallyDiscovered])
        {
          stagedAccessoryServers = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
          v11 = [stagedAccessoryServers containsObject:v9];

          isPairedInStorage = [v9 isPairedInStorage];
          if ([v9 pairedState])
          {
            if ((([v9 storageUpdatePending] | isPairedInStorage | v11) & 1) == 0 && (objc_msgSend(v9, "removalInProgress") & 1) == 0 && (objc_msgSend(v9, "blockInvalidation") & 1) == 0)
            {
              v13 = objc_autoreleasePoolPush();
              selfCopy = self;
              v15 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                v16 = HMFGetLogIdentifier();
                *buf = v17;
                v23 = v16;
                v24 = 1024;
                v25 = 1;
                v26 = 2112;
                v27 = v9;
                _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating server paired state because it was removed from storage(%d). Server:%@", buf, 0x1Cu);
              }

              objc_autoreleasePoolPop(v13);
              [v9 setPairedState:0];
            }
          }
        }
      }

      v6 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)_cleanUpMTRDevicesWithFabricUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Cleaning up stale MTRDevices", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  storage = [(HMMTRAccessoryServerBrowser *)selfCopy storage];
  dataSource = [storage dataSource];
  v10 = [dataSource storageDataSourceForFabricUUID:dCopy];
  allNodeIDs = [v10 allNodeIDs];

  homeFabricControllers = [(HMMTRAccessoryServerBrowser *)selfCopy homeFabricControllers];
  v13 = [homeFabricControllers cachedWrapperWithTargetFabricUUID:dCopy];
  controller = [v13 controller];

  v33 = controller;
  [controller nodesWithStoredData];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v37 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v35;
    *&v17 = 138544130;
    v30 = v17;
    do
    {
      v20 = 0;
      v32 = v18;
      do
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v34 + 1) + 8 * v20);
        if (([allNodeIDs containsObject:{v21, v30}] & 1) == 0)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v25 = v19;
            v26 = allNodeIDs;
            v27 = v15;
            v29 = v28 = selfCopy;
            *buf = v30;
            v39 = v29;
            v40 = 2112;
            v41 = v21;
            v42 = 2112;
            v43 = dCopy;
            v44 = 2112;
            v45 = v33;
            _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing unpaired node %@ from fabric %@ controller %@", buf, 0x2Au);

            selfCopy = v28;
            v15 = v27;
            allNodeIDs = v26;
            v19 = v25;
            v18 = v32;
          }

          objc_autoreleasePoolPop(v22);
          [v33 forgetDeviceWithNodeID:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v18);
  }
}

- (void)_cleanupDiscoveredServersWithReason:(id)reason completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v33 = [MEMORY[0x277CBEB58] set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = self->_discoveredAccessoryServers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    v32 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        if (([v11 isKnownToSystemCommissioner] & 1) == 0)
        {
          stagedAccessoryServers = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServers];
          v13 = [stagedAccessoryServers containsObject:v11];

          isPairedInStorage = [v11 isPairedInStorage];
          if (![v11 pairedState] || ((objc_msgSend(v11, "storageUpdatePending") | isPairedInStorage | v13) & 1) != 0 || (objc_msgSend(v11, "removalInProgress") & 1) != 0)
          {
            v15 = 0;
          }

          else
          {
            v15 = [v11 blockInvalidation] ^ 1;
          }

          if (([v11 isDisabled] & 1) != 0 || v15)
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              isDisabled = [v11 isDisabled];
              *buf = 138544130;
              v49 = v19;
              v50 = 1024;
              v51 = isDisabled;
              v52 = 1024;
              v53 = v15;
              v54 = 2112;
              v55 = v11;
              _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Invalidating server because it is disabled(%d) or was removed from storage(%d). Server:%@", buf, 0x22u);

              v6 = v32;
            }

            objc_autoreleasePoolPop(v16);
            [v33 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v21 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v43 objects:v56 count:16];
      v8 = v21;
    }

    while (v21);
  }

  v22 = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v33;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        dispatch_group_enter(v22);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke;
        v37[3] = &unk_2786F0CA8;
        v38 = v22;
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v28 reason:reasonCopy withCompletion:v37];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v25);
  }

  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke_2;
  block[3] = &unk_2786EF5A8;
  block[4] = self;
  v36 = completionCopy;
  v30 = completionCopy;
  dispatch_group_notify(v22, workQueue, block);
}

uint64_t __78__HMMTRAccessoryServerBrowser__cleanupDiscoveredServersWithReason_completion___block_invoke_2(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(*(v1 + 32) + 56);
      v12 = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Discovered Servers: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = objc_autoreleasePoolPush();
    v8 = *(v1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(*(v1 + 32) + 288);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Staged Servers: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)_cleanupDiscoveredServers
{
  v3 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServersWithReason:v3 completion:0];
}

- (void)handleThreadNetworkStateChangedNotification:(id)notification
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMMTRAccessoryServerBrowser_handleThreadNetworkStateChangedNotification___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __75__HMMTRAccessoryServerBrowser_handleThreadNetworkStateChangedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling thread network state changed notification", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) handleThreadRadioStateChanged];
}

- (void)handleThreadRadioStateChanged
{
  v13 = *MEMORY[0x277D85DE8];
  fabricsWithActiveConnections = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveConnections];
  [fabricsWithActiveConnections count];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = fabricsWithActiveConnections;
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

        [*(*(&v8 + 1) + 8 * v7++) retryOperations];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_abortAllOperationsForFabricUUID:(id)d reason:(id)reason
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  reasonCopy = reason;
  v27 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_fabricsWithActiveConnections;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v8)
  {
    v9 = *v34;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      fabricUUID = [v11 fabricUUID];
      v13 = HMFEqualObjects();

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_12;
    }

    os_unfair_lock_unlock((self + v27));
    goto LABEL_23;
  }

LABEL_9:

LABEL_12:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_fabricsWithPendingConnections;
  v14 = [(NSMutableOrderedSet *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v14)
  {
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        fabricUUID2 = [v18 fabricUUID];
        fabricUUID3 = [v18 fabricUUID];
        v21 = HMFEqualObjects();

        if (v21)
        {
          v14 = v18;
          goto LABEL_22;
        }
      }

      v14 = [(NSMutableOrderedSet *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  os_unfair_lock_unlock((self + v27));
  if (v14)
  {
LABEL_23:
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      fabricUUID4 = [v14 fabricUUID];
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = fabricUUID4;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@Aborting operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    [v14 abortAllOperationsWithReason:reasonCopy];
  }
}

- (void)_connectPendingFabricConnectionsForTargetFabricUUID:(id)d
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v54 = v8;
    v55 = 2112;
    v56 = dCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@_connectPendingFabricConnectionsForTargetFabricUUIDID for - %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    fabricsWithPendingConnections = [v10 fabricsWithPendingConnections];
    fabricsWithActiveConnections = [v10 fabricsWithActiveConnections];
    *buf = 138543874;
    v54 = v12;
    v55 = 2112;
    v56 = fabricsWithPendingConnections;
    v57 = 2112;
    v58 = fabricsWithActiveConnections;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %@, Connected/Connecting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v16 = v10[11];
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v17)
  {
    v18 = *v48;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        fabricUUID = [v20 fabricUUID];
        v22 = HMFEqualObjects();

        if (v22)
        {
          v42 = v20;
          goto LABEL_15;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v42 = 0;
LABEL_15:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v10[12];
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v24)
  {
    v25 = *v44;
    while (2)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        fabricUUID2 = [v27 fabricUUID];
        v29 = HMFEqualObjects();

        if (v29)
        {
          v24 = v27;
          goto LABEL_25;
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  os_unfair_lock_unlock((v10 + v15));
  if (v42)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v10;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      fabricUUID3 = [v42 fabricUUID];
      *buf = 138543618;
      v54 = v33;
      v55 = 2112;
      v56 = fabricUUID3;
      _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@Re-starting operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    [v42 startOperations];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v10;
    v37 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (v24)
    {
      if (v38)
      {
        v39 = HMFGetLogIdentifier();
        fabricUUID4 = [v24 fabricUUID];
        *buf = 138543618;
        v54 = v39;
        v55 = 2112;
        v56 = fabricUUID4;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@Connecting pending fabric fabric: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      [v36 _removeFromPendingFabrics:v24];
      [v36 _establishConnectionWhenAllowedWithFabricConnectionRequest:v24];
    }

    else
    {
      if (v38)
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v41;
        v55 = 2112;
        v56 = dCopy;
        _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_INFO, "%{public}@fabric %@ not found in either lists", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
    }
  }
}

- (void)_suspendOperationsForTargetFabricUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_fabricsWithActiveConnections;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        fabricUUID = [v10 fabricUUID];
        v12 = HMFEqualObjects();

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock((self + v5));
  if (v7)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      fabricUUID2 = [v7 fabricUUID];
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = fabricUUID2;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Suspending operations for fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [v7 suspendOperations];
  }

  threadSoftwareUpdateController = [(HMMTRAccessoryServerBrowser *)self threadSoftwareUpdateController];
  [threadSoftwareUpdateController suspendOperationsForFabricUUID:dCopy];
}

- (BOOL)_pollWedAccessoriesIfAllowed
{
  v78 = *MEMORY[0x277D85DE8];
  if ([(HMMTRAccessoryServerBrowser *)self _isWedPollingDisabledForTests])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v6;
      v7 = "%{public}@WED polling not scheduled: disabled via preference";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_22AEAE000, v8, v9, v7, buf, 0xCu);

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  threadRadioManager = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  deviceSupportsThreadService = [threadRadioManager deviceSupportsThreadService];

  if ((deviceSupportsThreadService & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v6;
      v7 = "%{public}@WED polling not scheduled: device doesn't support thread";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEBUG;
      goto LABEL_29;
    }

LABEL_30:

    objc_autoreleasePoolPop(v3);
    return 0;
  }

  if ([(HMMTRAccessoryServerBrowser *)self connectionRequestSuspended])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: in pairing mode";
LABEL_28:
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];

  if (!currentFabricUUID)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: current fabric UUID is nil";
    goto LABEL_28;
  }

  currentFabricUUID2 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  systemCommissionerFabricUUID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricUUID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: current fabric UUID is system commissioner";
    goto LABEL_28;
  }

  currentFabricUUID3 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v17 = [(HMMTRAccessoryServerBrowser *)self deviceControllerForFabricUUID:currentFabricUUID3];
  isRunning = [v17 isRunning];

  if ((isRunning & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: device controller is not running for current fabric";
    goto LABEL_28;
  }

  fabricsWithActiveClients = [(HMMTRAccessoryServerBrowser *)self fabricsWithActiveClients];
  v20 = [fabricsWithActiveClients count];

  if (!v20)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: no active clients";
    goto LABEL_28;
  }

  currentFabricUUID4 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v22 = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabricUUID:currentFabricUUID4];

  if (!v22)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: resident is reachable";
    goto LABEL_28;
  }

  threadRadioManager2 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  isThreadNetworkConnected = [threadRadioManager2 isThreadNetworkConnected];

  if (isThreadNetworkConnected)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: connected to thread network";
    goto LABEL_28;
  }

  threadRadioManager3 = [(HMMTRAccessoryServerBrowser *)self threadRadioManager];
  isReadyToEstablishWEDConnection = [threadRadioManager3 isReadyToEstablishWEDConnection];

  if ((isReadyToEstablishWEDConnection & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v74 = v6;
    v7 = "%{public}@WED polling not scheduled: not ready to establish wed connection";
    goto LABEL_28;
  }

  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v30 = [discoveredAccessoryServers copy];

  array = [MEMORY[0x277CBEB18] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v68 objects:v77 count:16];
  v62 = v32;
  if (v33)
  {
    v34 = v33;
    v35 = *v69;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v69 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v68 + 1) + 8 * i);
        if (([v37 isDisabled] & 1) == 0)
        {
          if ([v37 isWEDDevice])
          {
            currentFabricUUID5 = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
            fabricUUID = [v37 fabricUUID];
            v40 = HMFEqualObjects();

            v32 = v62;
            if (v40)
            {
              [array addObject:v37];
            }
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v34);
  }

  v41 = [array count];
  v25 = v41 != 0;
  v42 = objc_autoreleasePoolPush();
  selfCopy11 = self;
  v44 = HMFGetOSLogHandle();
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
  if (v41)
  {
    if (v45)
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v46;
      v75 = 2112;
      v76 = array;
      _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_INFO, "%{public}@WED polling scheduled for the following accessories: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61 = array;
    obj = array;
    v47 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v65;
      v50 = &__block_literal_global_314;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v64 + 1) + 8 * j);
          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy11;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v56 = v49;
            v57 = selfCopy11;
            v59 = v58 = v50;
            *buf = 138543618;
            v74 = v59;
            v75 = 2112;
            v76 = v52;
            _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@WED polling accessory: %@", buf, 0x16u);

            v50 = v58;
            selfCopy11 = v57;
            v49 = v56;
          }

          objc_autoreleasePoolPop(v53);
          [(HMMTRAccessoryServerBrowser *)v54 connectToAccessoryWhenAllowed:v52 priority:2 completion:v50];
        }

        v48 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v48);
    }

    array = v61;
    v25 = 1;
  }

  else
  {
    if (v45)
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v60;
      _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_INFO, "%{public}@WED polling not scheduled: no wed accessories in home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  return v25;
}

- (void)_connectPendingFabricConnections
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    fabricsWithPendingConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithPendingConnections];
    fabricsWithActiveConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveConnections];
    *buf = 138543874;
    v35 = v6;
    v36 = 2112;
    v37 = fabricsWithPendingConnections;
    v38 = 2112;
    v39 = fabricsWithActiveConnections;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Current pending connections: %@, Connected/Connecting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  fabricsWithPendingConnections2 = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithPendingConnections];
  v10 = [fabricsWithPendingConnections2 count];

  if (v10)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    fabricsWithPendingConnections3 = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithPendingConnections];
    v12 = [fabricsWithPendingConnections3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      hasPendingLowPriorityConnectionRequestsOnly = 0;
      v15 = 0;
      v16 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(fabricsWithPendingConnections3);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          if ([v18 hasPendingHighPriorityConnectionRequest])
          {
            v20 = v18;

            v15 = v20;
            goto LABEL_21;
          }

          if (v15)
          {
            if (hasPendingLowPriorityConnectionRequestsOnly)
            {
              if ([v18 hasPendingLowPriorityConnectionRequestsOnly])
              {
                hasPendingLowPriorityConnectionRequestsOnly = 1;
              }

              else
              {
                v19 = v18;

                hasPendingLowPriorityConnectionRequestsOnly = 0;
                v15 = v19;
              }
            }

            else
            {
              hasPendingLowPriorityConnectionRequestsOnly = 0;
            }
          }

          else
          {
            v15 = v18;
            hasPendingLowPriorityConnectionRequestsOnly = [v15 hasPendingLowPriorityConnectionRequestsOnly];
          }
        }

        v13 = [fabricsWithPendingConnections3 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_21:

      if (v15)
      {
        [(HMMTRAccessoryServerBrowser *)selfCopy _removeFromPendingFabrics:v15];
        [(HMMTRAccessoryServerBrowser *)selfCopy _establishConnectionWhenAllowedWithFabricConnectionRequest:v15];

        return;
      }
    }

    else
    {
    }

    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@No fabric to connect", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@No more pending fabric connection requests", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [(HMMTRAccessoryServerBrowser *)v22 _pollWedAccessoriesIfAllowed];
  }
}

- (void)_operationsCompletedForFabricConnectionRequest:(id)request reason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    fabricUUID = [requestCopy fabricUUID];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Marking operation complete for fabric: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMTRAccessoryServerBrowser *)selfCopy _removeFromActiveFabrics:requestCopy];
  fabricUUID2 = [requestCopy fabricUUID];
  [(HMMTRAccessoryServerBrowser *)selfCopy _disconnectFromIdleFabric:fabricUUID2 reason:reasonCopy];

  [(HMMTRAccessoryServerBrowser *)selfCopy _connectPendingFabricConnections];
}

- (void)operationsStartedForFabricConnectionRequest:(id)request
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabricUUID = [requestCopy fabricUUID];
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = fabricUUID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting operations for fabric: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (([requestCopy systemCommissionerFabric] & 1) == 0)
  {
    fabricUUID2 = [requestCopy fabricUUID];
    [(HMMTRAccessoryServerBrowser *)selfCopy _setUpBrowserTargetFabricIfNotFabricUUID:fabricUUID2 rediscoverAccessories:0];
  }

  if ([requestCopy systemCommissionerFabric])
  {
    threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    fabricUUID3 = [requestCopy fabricUUID];
    [threadRadioManager startThreadRadioForSystemCommissionerFabricUUID:fabricUUID3];
  }

  else
  {
    threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabric];
    if (![(HMMTRAccessoryServerBrowser *)selfCopy isCurrentDeviceAllowedAccessoryControlDespiteReachableResidentForFabric:threadRadioManager])
    {
      goto LABEL_11;
    }

    threadRadioManager2 = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    v16 = [threadRadioManager2 hasMatterThreadAccessoryInHomeWithFabricUUID:currentFabricUUID];

    if (!v16)
    {
      goto LABEL_12;
    }

    threadRadioManager = [(HMMTRAccessoryServerBrowser *)selfCopy threadRadioManager];
    fabricUUID3 = [(HMMTRAccessoryServerBrowser *)selfCopy currentFabricUUID];
    [threadRadioManager startThreadRadioForHomeWithFabricUUID:fabricUUID3];
  }

LABEL_11:
LABEL_12:
  if (isFeatureMatterRVCEnabled())
  {
    fabricUUID4 = [requestCopy fabricUUID];
    v18 = [(HMMTRAccessoryServerBrowser *)selfCopy controllerWrapperForFabricUUID:fabricUUID4];
    [v18 resume];
  }
}

- (void)_establishConnectionWhenAllowedWithFabricConnectionRequest:(id)request
{
  v59 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    fabricUUID = [requestCopy fabricUUID];
    fabricsWithActiveConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveConnections];
    v11 = [fabricsWithActiveConnections count];
    fabricsWithPendingConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithPendingConnections];
    *buf = 138544130;
    v52 = v8;
    v53 = 2112;
    v54 = fabricUUID;
    v55 = 2048;
    v56 = v11;
    v57 = 2048;
    v58 = [fabricsWithPendingConnections count];
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connection request for fabric %@, Current active fabric count: %tu, Pending: %tu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  fabricsWithActiveConnections2 = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveConnections];
  v14 = [fabricsWithActiveConnections2 count];

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (v18)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v19;
      v53 = 2112;
      v54 = requestCopy;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@establishConnectionWhenAllowedWithFabricConnectionRequest add to pending %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRAccessoryServerBrowser *)v16 _addToPendingFabrics:requestCopy];
    fabricUUID2 = [requestCopy fabricUUID];
    currentFabricUUID = [(HMMTRAccessoryServerBrowser *)v16 currentFabricUUID];
    v22 = HMFEqualObjects();

    if ((v22 & 1) != 0 || ([requestCopy fabricUUID], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v16;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        fabricUUID3 = [requestCopy fabricUUID];
        *buf = 138543618;
        v52 = v27;
        v53 = 2112;
        v54 = fabricUUID3;
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Making room for target fabric UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      fabricsWithActiveConnections3 = [(HMMTRAccessoryServerBrowser *)v25 fabricsWithActiveConnections];
      v30 = [fabricsWithActiveConnections3 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(fabricsWithActiveConnections3);
            }

            v34 = *(*(&v46 + 1) + 8 * i);
            fabricUUID4 = [requestCopy fabricUUID];
            fabricUUID5 = [v34 fabricUUID];
            v37 = HMFEqualObjects();

            if ((v37 & 1) == 0)
            {
              v39 = objc_autoreleasePoolPush();
              v40 = v25;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                fabricUUID6 = [v34 fabricUUID];
                *buf = 138543618;
                v52 = v42;
                v53 = 2112;
                v54 = fabricUUID6;
                _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Evicting fabric: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v39);
              fabricUUID7 = [v34 fabricUUID];
              v45 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:5];
              [(HMMTRAccessoryServerBrowser *)v40 _abortAllOperationsForFabricUUID:fabricUUID7 reason:v45];

              goto LABEL_25;
            }
          }

          v31 = [fabricsWithActiveConnections3 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }
  }

  else
  {
    if (v18)
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v38;
      v53 = 2112;
      v54 = requestCopy;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@establishConnectionWhenAllowedWithFabricConnectionRequest add to active %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMMTRAccessoryServerBrowser *)v16 _addToActiveFabrics:requestCopy];
  }
}

- (void)_establishConnectionWhenAllowedWithAccessoryConnectionRequest:(id)request
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    fabricsWithActiveConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithActiveConnections];
    v10 = [fabricsWithActiveConnections count];
    fabricsWithPendingConnections = [(HMMTRAccessoryServerBrowser *)selfCopy fabricsWithPendingConnections];
    v25 = 138544130;
    v26 = v8;
    v27 = 2112;
    v28 = requestCopy;
    v29 = 2048;
    v30 = v10;
    v31 = 2048;
    v32 = [fabricsWithPendingConnections count];
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Connection request for accessory %@. Current active fabric count: %tu, Pending: %tu", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  server = [requestCopy server];
  v13 = [(HMMTRAccessoryServerBrowser *)selfCopy isOperationAllowedForAccessoryServer:server];

  if (!v13)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      nodeID = [requestCopy nodeID];
      allowedNodeIDsForConnectionRequests = [(HMMTRAccessoryServerBrowser *)v20 allowedNodeIDsForConnectionRequests];
      v25 = 138543874;
      v26 = v22;
      v27 = 2112;
      v28 = nodeID;
      v29 = 2112;
      v30 = allowedNodeIDsForConnectionRequests;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Connection requests rejected for nodeID %@: Allowed NodeIDs: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:9 userInfo:0];
    [requestCopy abortAllPendingOperations:v18];
    goto LABEL_9;
  }

  if (![(HMMTRAccessoryServerBrowser *)selfCopy _tryAddAccessoryConnectionRequestToExistingFabric:requestCopy])
  {
    v14 = [HMMTRFabricConnectionRequest alloc];
    workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
    fabricUUID = [requestCopy fabricUUID];
    server2 = [requestCopy server];
    v18 = -[HMMTRFabricConnectionRequest initWithQueue:browser:fabricUUID:systemCommissionerFabric:](v14, "initWithQueue:browser:fabricUUID:systemCommissionerFabric:", workQueue, selfCopy, fabricUUID, [server2 knownToSystemCommissioner]);

    [(HMMTRAccessoryServerBrowser *)selfCopy _establishConnectionWhenAllowedWithFabricConnectionRequest:v18];
    [(HMMTRFabricConnectionRequest *)v18 connectToAccessoryWhenAllowed:requestCopy];
LABEL_9:
  }
}

- (void)disableUnrestrictedOperationsForAccessoryServer:(id)server
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  allowedNodeIDsForConnectionRequests = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  nodeID = [serverCopy nodeID];
  [allowedNodeIDsForConnectionRequests removeObject:nodeID];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    allowedNodeIDsForConnectionRequests2 = [(HMMTRAccessoryServerBrowser *)selfCopy allowedNodeIDsForConnectionRequests];
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = allowedNodeIDsForConnectionRequests2;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Connection requests: Allowed NodeIDs: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)enableUnrestrictedOperationsForAccessoryServer:(id)server
{
  v16 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  [(HMMTRAccessoryServerBrowser *)self setConnectionRequestSuspended:1];
  allowedNodeIDsForConnectionRequests = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  nodeID = [serverCopy nodeID];
  [allowedNodeIDsForConnectionRequests addObject:nodeID];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    allowedNodeIDsForConnectionRequests2 = [(HMMTRAccessoryServerBrowser *)selfCopy allowedNodeIDsForConnectionRequests];
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = allowedNodeIDsForConnectionRequests2;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Connection requests: Allowed NodeIDs: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)resumeAllOperations
{
  v10 = *MEMORY[0x277D85DE8];
  allowedNodeIDsForConnectionRequests = [(HMMTRAccessoryServerBrowser *)self allowedNodeIDsForConnectionRequests];
  [allowedNodeIDsForConnectionRequests removeAllObjects];

  [(HMMTRAccessoryServerBrowser *)self setConnectionRequestSuspended:0];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Connection requests resumed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)abortAndSuspendAllOperationsWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMMTRAccessoryServerBrowser_abortAndSuspendAllOperationsWithReason___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workQueue, v7);
}

void __70__HMMTRAccessoryServerBrowser_abortAndSuspendAllOperationsWithReason___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionRequestSuspended])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Connection requests already suspended", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    [*(a1 + 32) setConnectionRequestSuspended:1];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [*(a1 + 32) fabricsWithActiveConnections];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * v10++) abortAllOperationsWithReason:*(a1 + 40)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [*(a1 + 32) fabricsWithPendingConnections];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) abortAllOperationsWithReason:*(a1 + 40)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    v16 = [*(a1 + 32) threadSoftwareUpdateController];
    [v16 suspendOperations];
  }
}

- (BOOL)isOperationAllowedForAccessoryServer:(id)server
{
  v26 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if ([(HMMTRAccessoryServerBrowser *)self connectionRequestSuspended])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      allowedNodeIDsForConnectionRequests = [(HMMTRAccessoryServerBrowser *)selfCopy allowedNodeIDsForConnectionRequests];
      *buf = 138543618;
      v23 = v8;
      v24 = 2112;
      v25 = allowedNodeIDsForConnectionRequests;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Connection requests are currently suspended. Only allowing nodeIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allowedNodeIDsForConnectionRequests2 = [(HMMTRAccessoryServerBrowser *)selfCopy allowedNodeIDsForConnectionRequests];
    v11 = [allowedNodeIDsForConnectionRequests2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(allowedNodeIDsForConnectionRequests2);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          nodeID = [serverCopy nodeID];
          LOBYTE(v14) = [v14 isEqualToNumber:nodeID];

          if (v14)
          {
            LOBYTE(v11) = 1;
            goto LABEL_15;
          }
        }

        v11 = [allowedNodeIDsForConnectionRequests2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)setConnectionRequestSuspended:(BOOL)suspended
{
  if (self->_connectionRequestSuspended != suspended)
  {
    self->_connectionRequestSuspended = suspended;
  }
}

- (void)abortOperationsForAccessoryServer:(id)server reason:(id)reason
{
  serverCopy = server;
  reasonCopy = reason;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMMTRAccessoryServerBrowser_abortOperationsForAccessoryServer_reason___block_invoke;
  block[3] = &unk_2786EF3C8;
  block[4] = self;
  v12 = serverCopy;
  v13 = reasonCopy;
  v9 = reasonCopy;
  v10 = serverCopy;
  dispatch_async(workQueue, block);
}

void __72__HMMTRAccessoryServerBrowser_abortOperationsForAccessoryServer_reason___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [HMMTRAccessoryConnectionRequest alloc];
  v3 = [*(a1 + 32) workQueue];
  v4 = [(HMMTRAccessoryConnectionRequest *)v2 initWithQueue:v3 server:*(a1 + 40) highPriority:0 completion:&__block_literal_global_311];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [*(a1 + 32) fabricsWithActiveConnections];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v18 + 1) + 8 * v9) abortOperationsForConnectionRequest:v4 reason:*(a1 + 48)])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [*(a1 + 32) fabricsWithPendingConnections];
    v10 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
LABEL_11:
      v13 = 0;
      while (1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v13) abortOperationsForConnectionRequest:v4 reason:*(a1 + 48)])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }
  }
}

- (void)connectToAccessoryWhenAllowed:(id)allowed priority:(unint64_t)priority completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  allowedCopy = allowed;
  completionCopy = completion;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];

  if (workQueue)
  {
    if (priority < 3)
    {
      workQueue2 = [(HAPAccessoryServerBrowser *)self workQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__HMMTRAccessoryServerBrowser_connectToAccessoryWhenAllowed_priority_completion___block_invoke;
      v17[3] = &unk_2786EF850;
      v17[4] = self;
      v18 = allowedCopy;
      priorityCopy = priority;
      v19 = completionCopy;
      dispatch_async(workQueue2, v17);
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v14;
        v23 = 2048;
        priorityCopy2 = priority;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid request priority: %lu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __81__HMMTRAccessoryServerBrowser_connectToAccessoryWhenAllowed_priority_completion___block_invoke(uint64_t a1)
{
  v2 = [HMMTRAccessoryConnectionRequest alloc];
  v3 = [*(a1 + 32) workQueue];
  v4 = [(HMMTRAccessoryConnectionRequest *)v2 initWithQueue:v3 server:*(a1 + 40) priority:*(a1 + 56) completion:*(a1 + 48)];

  [*(a1 + 32) _establishConnectionWhenAllowedWithAccessoryConnectionRequest:v4];
}

- (void)_removeFromPendingFabrics:(id)fabrics
{
  v15 = *MEMORY[0x277D85DE8];
  fabricsCopy = fabrics;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_fabricsWithPendingConnections containsObject:fabricsCopy])
  {
    [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections removeObject:fabricsCopy];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      fabricUUID = [fabricsCopy fabricUUID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed pending connection for fabric: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock((self + v5));
  }
}

- (void)_addToPendingFabrics:(id)fabrics
{
  v15 = *MEMORY[0x277D85DE8];
  fabricsCopy = fabrics;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_fabricsWithPendingConnections containsObject:fabricsCopy]& 1) != 0)
  {
    os_unfair_lock_unlock((self + v5));
  }

  else
  {
    [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections addObject:fabricsCopy];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      fabricUUID = [fabricsCopy fabricUUID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Pending connection to fabric: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (id)fabricsWithPendingConnections
{
  v3 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_fabricsWithPendingConnections array];
  v6 = [v4 arrayWithArray:array];

  os_unfair_lock_unlock((self + v3));

  return v6;
}

- (BOOL)_tryAddAccessoryConnectionRequestToExistingFabric:(id)fabric
{
  v35 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  v23 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v5 = self->_fabricsWithActiveConnections;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        fabricUUID = [v9 fabricUUID];
        fabricUUID2 = [fabricCopy fabricUUID];
        v12 = HMFEqualObjects();

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = self->_fabricsWithPendingConnections;
  v14 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = *v26;
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v25 + 1) + 8 * j);
        fabricUUID3 = [v17 fabricUUID];
        fabricUUID4 = [fabricCopy fabricUUID];
        v20 = HMFEqualObjects();

        if (v20)
        {
          v21 = v17;

          v6 = v21;
          goto LABEL_21;
        }
      }

      v14 = [(NSMutableOrderedSet *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  os_unfair_lock_unlock((selfCopy + v23));
  if (v6)
  {
    [v6 connectToAccessoryWhenAllowed:fabricCopy];
  }

  return v6 != 0;
}

- (void)_removeFromActiveFabrics:(id)fabrics
{
  v15 = *MEMORY[0x277D85DE8];
  fabricsCopy = fabrics;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if ([(NSMutableOrderedSet *)self->_fabricsWithActiveConnections containsObject:fabricsCopy])
  {
    [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections removeObject:fabricsCopy];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      fabricUUID = [fabricsCopy fabricUUID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Removed active connection for fabric: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [fabricsCopy stopOperations];
  }

  else
  {
    os_unfair_lock_unlock((self + v5));
  }
}

- (void)_addToActiveFabrics:(id)fabrics
{
  v15 = *MEMORY[0x277D85DE8];
  fabricsCopy = fabrics;
  v5 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  if (([(NSMutableOrderedSet *)self->_fabricsWithActiveConnections containsObject:fabricsCopy]& 1) != 0)
  {
    os_unfair_lock_unlock((self + v5));
  }

  else
  {
    [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections addObject:fabricsCopy];
    os_unfair_lock_unlock((self + v5));
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      fabricUUID = [fabricsCopy fabricUUID];
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = fabricUUID;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding active connection for fabric: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [fabricsCopy startOperations];
  }
}

- (id)fabricsWithActiveConnections
{
  v3 = *MEMORY[0x277CFECE8];
  os_unfair_lock_lock_with_options();
  v4 = MEMORY[0x277CBEA60];
  array = [(NSMutableOrderedSet *)self->_fabricsWithActiveConnections array];
  v6 = [v4 arrayWithArray:array];

  os_unfair_lock_unlock((self + v3));

  return v6;
}

- (id)fabricDataForPairingTargetFabricUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_fabricDataPerPairingTargetFabricUUID objectForKeyedSubscript:dCopy];
  os_unfair_lock_unlock(&self->_pairingTargetFabricDataLock);

  return v5;
}

- (void)registerPairingWindowWithSetupPayload:(id)payload duration:(double)duration accessoryServer:(id)server
{
  serverCopy = server;
  payloadCopy = payload;
  pairingWindowInfoTable = [(HMMTRAccessoryServerBrowser *)self pairingWindowInfoTable];
  v10 = [MEMORY[0x277CBEAA8] now];
  [pairingWindowInfoTable registerPairingWindowWithSetupPayload:payloadCopy currentDate:v10 duration:serverCopy accessoryServer:duration];
}

- (BOOL)supportsCommissioningCertificateRetrievalForHomeUUID:(id)d
{
  dCopy = d;
  delegate = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(HMMTRAccessoryServerBrowser *)self delegate];
    v7 = [delegate2 supportsCommissioningCertificateRetrievalForHomeUUID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory
{
  delegate = [(HMMTRAccessoryServerBrowser *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(HMMTRAccessoryServerBrowser *)self delegate];
    supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory = [delegate2 supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory];
  }

  else
  {
    supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory = 0;
  }

  return supportsCommissioningCertificateRetrievalForCurrentlyPairingAccessory;
}

- (void)commitStagedAccessoryServer:(id)server
{
  serverCopy = server;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMMTRAccessoryServerBrowser_commitStagedAccessoryServer___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = serverCopy;
  v6 = serverCopy;
  dispatch_async(workQueue, v7);
}

void __59__HMMTRAccessoryServerBrowser_commitStagedAccessoryServer___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Committing staged server: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) commitStagedPairing];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) identifier];
  [v7 registerPairedAccessoryWithIdentifier:v8];

  v9 = [*(a1 + 32) discoveredAccessoryServers];
  [v9 addObject:*(a1 + 40)];

  v10 = [*(a1 + 32) stagedAccessoryServers];
  [v10 removeObject:*(a1 + 40)];
}

- (void)removeAccessoryServer:(id)server fromDiscoveredAccessoryServerListWithReason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  reasonCopy = reason;
  removeReason = [serverCopy removeReason];
  pairingEndContextWhenRemove = [serverCopy pairingEndContextWhenRemove];
  v10 = pairingEndContextWhenRemove;
  if (!removeReason || !pairingEndContextWhenRemove)
  {
    v11 = reasonCopy;

    v12 = [HMMTRAccessoryPairingEndContext hmmtrContextWithCancelledError:v11];

    v10 = v12;
    removeReason = v11;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v25 = v16;
    v26 = 2112;
    v27 = serverCopy;
    v28 = 2112;
    v29 = removeReason;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing from discovered accessory server list: %@ for reason: %@, context: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  [serverCopy setRemoveReason:0 pairingEndContextWhenRemove:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke;
  v20[3] = &unk_2786EF378;
  v20[4] = selfCopy;
  v21 = serverCopy;
  v22 = removeReason;
  v23 = v10;
  v17 = v10;
  v18 = removeReason;
  v19 = serverCopy;
  [(HMMTRAccessoryServerBrowser *)selfCopy dispatchBlock:v20];
}

void __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 7) containsObject:a1[5]])
  {
    [a1[5] handleRemoveFromBrowser];
    [*(a1[4] + 7) removeObject:a1[5]];
    v2 = [a1[4] delegate];
    if ([v2 conformsToProtocol:&unk_283F23578])
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [a1[4] delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__HMMTRAccessoryServerBrowser_removeAccessoryServer_fromDiscoveredAccessoryServerListWithReason___block_invoke_305;
      block[3] = &unk_2786EED80;
      v21 = v4;
      v19 = *(a1 + 2);
      v6 = *(&v19 + 1);
      v7 = a1[6];
      v8 = a1[7];
      *&v9 = v7;
      *(&v9 + 1) = v8;
      v22 = v19;
      v23 = v9;
      dispatch_async(v5, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1[4];
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate conforming to HMMTRHAPAccessoryServerBrowserPairingDelegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[4];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = a1[5];
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Server %@ already removed from discovered server list", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_invalidateAccessoryServer:(id)server reason:(id)reason withCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = completionCopy;
  if (serverCopy)
  {
    removeReason = [serverCopy removeReason];
    pairingEndContextWhenRemove = [serverCopy pairingEndContextWhenRemove];
    v14 = pairingEndContextWhenRemove;
    if (!removeReason || !pairingEndContextWhenRemove)
    {
      v15 = reasonCopy;

      v16 = [HMMTRAccessoryPairingEndContext hmmtrContextWithCancelledError:v15];

      v14 = v16;
      removeReason = v15;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v40 = v20;
      v41 = 2112;
      v42 = serverCopy;
      v43 = 2112;
      v44 = removeReason;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Invalidating accessory Server: %@ for reason: %@ context: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    [serverCopy setRemoveReason:0 pairingEndContextWhenRemove:0];
    if (([serverCopy locallyDiscovered] & 1) == 0)
    {
      [serverCopy handleRemoveFromBrowser];
      [(NSMutableSet *)selfCopy->_discoveredAccessoryServers removeObject:serverCopy];
    }

    [(NSMutableSet *)selfCopy->_stagedAccessoryServers removeObject:serverCopy];
    if ([serverCopy locallyDiscovered])
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v24;
        v41 = 2112;
        v42 = serverCopy;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Keeping the locally discovered server: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }

    else
    {
      [serverCopy setReachable:0];
      [serverCopy setControllerWrapper:0];
    }

    [serverCopy setSecuritySessionOpen:0];
    if (([serverCopy locallyDiscovered] & 1) == 0)
    {
      delegate = [(HMMTRAccessoryServerBrowser *)selfCopy delegate];
      if ([delegate conformsToProtocol:&unk_283F23578])
      {
        v26 = delegate;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      if (v27)
      {
        delegateQueue = [(HMMTRAccessoryServerBrowser *)selfCopy delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __80__HMMTRAccessoryServerBrowser__invalidateAccessoryServer_reason_withCompletion___block_invoke;
        block[3] = &unk_2786EED80;
        v34 = v27;
        v35 = selfCopy;
        v36 = serverCopy;
        v37 = removeReason;
        v38 = v14;
        dispatch_async(delegateQueue, block);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v32;
          _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find delegate conforming to HMMTRHAPAccessoryServerBrowserPairingDelegate", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    if (v11)
    {
      v11[2](v11);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)invalidateAccessoryServer:(id)server reason:(id)reason withCompletion:(id)completion
{
  serverCopy = server;
  reasonCopy = reason;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRAccessoryServerBrowser_invalidateAccessoryServer_reason_withCompletion___block_invoke;
  v14[3] = &unk_2786EED58;
  objc_copyWeak(&v18, &location);
  v11 = serverCopy;
  v15 = v11;
  v12 = reasonCopy;
  v16 = v12;
  v13 = completionCopy;
  v17 = v13;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __79__HMMTRAccessoryServerBrowser_invalidateAccessoryServer_reason_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _invalidateAccessoryServer:*(a1 + 32) reason:*(a1 + 40) withCompletion:*(a1 + 48)];
}

- (void)invalidateAllDiscoveredServersWithReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HMMTRAccessoryServerBrowser_invalidateAllDiscoveredServersWithReason_completion___block_invoke;
  v11[3] = &unk_2786EF558;
  objc_copyWeak(&v14, &location);
  v12 = reasonCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reasonCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__HMMTRAccessoryServerBrowser_invalidateAllDiscoveredServersWithReason_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Disabling and invalidating all servers...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v3 _allServers];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v11 isKnownToSystemCommissioner] & 1) == 0)
        {
          if ([v11 pairedState] && (objc_msgSend(v11, "removalInProgress") & 1) == 0)
          {
            v16 = objc_autoreleasePoolPush();
            v17 = v3;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v26 = v19;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Disabling server: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            [v11 disable];
          }

          else
          {
            v12 = objc_autoreleasePoolPush();
            v13 = v3;
            v14 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v15 = HMFGetLogIdentifier();
              *buf = 138543618;
              v26 = v15;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring unpaired server: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v12);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  [v3 _cleanupDiscoveredServersWithReason:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)handleHomeRemovedAccessoryWithNodeID:(id)d fabricUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMMTRAccessoryServerBrowser_handleHomeRemovedAccessoryWithNodeID_fabricUUID___block_invoke;
  v10[3] = &unk_2786EF3C8;
  v10[4] = self;
  v11 = dCopy;
  v12 = iDCopy;
  v8 = iDCopy;
  v9 = dCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];
}

uint64_t __79__HMMTRAccessoryServerBrowser_handleHomeRemovedAccessoryWithNodeID_fabricUUID___block_invoke(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory with node ID %@ was removed from home", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _cleanupDiscoveredServers];
  return [*(a1 + 32) _cleanUpMTRDevicesWithFabricUUID:*(a1 + 48)];
}

- (void)handleHomeAddedAccessoryWithNodeID:(id)d fabricUUID:(id)iD localControl:(BOOL)control
{
  dCopy = d;
  iDCopy = iD;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HMMTRAccessoryServerBrowser_handleHomeAddedAccessoryWithNodeID_fabricUUID_localControl___block_invoke;
  v12[3] = &unk_2786EEAB8;
  v12[4] = self;
  v13 = iDCopy;
  v14 = dCopy;
  controlCopy = control;
  v10 = dCopy;
  v11 = iDCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v12];
}

uint64_t __90__HMMTRAccessoryServerBrowser_handleHomeAddedAccessoryWithNodeID_fabricUUID_localControl___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _cleanUpMTRDevicesWithFabricUUID:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = HMFBooleanToString();
    v12 = 138544130;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory with node ID %@ was added to home with fabric %@, for local control: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    return [v9 _addDiscoveredAccessoryServerWithNodeID:*(a1 + 48) fabricUUID:*(a1 + 40)];
  }

  v11 = [v9 nodesAddedToHome];
  [v11 addObject:*(a1 + 48)];

  return [*(a1 + 32) _setupPairedDevices];
}

- (void)accessoryServerForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMMTRAccessoryServerBrowser_accessoryServerForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to read commissioning window status for node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = selfCopy;
  v16 = dCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  dispatch_async(workQueue, block);
}

void __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
  v7[3] = &unk_2786EED08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  [v2 _accessoryServerForSystemCommissionerDeviceWithNodeID:v3 completionHandler:v7];
}

void __116__HMMTRAccessoryServerBrowser_readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 readPairingWindowStatusWithCompletionHandler:*(a1 + 48)];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve accessory server for node %@ to read commissioning window status, error: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)openCommissioningWindowForSystemCommissionerDeviceWithNodeID:(id)d duration:(double)duration completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v13;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Received request to open commissioning window for node (%@) from System Commissioner Fabric, for %fs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke;
  v17[3] = &unk_2786EF850;
  v17[4] = selfCopy;
  v18 = dCopy;
  durationCopy2 = duration;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  dispatch_async(workQueue, v17);
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_2;
  v4[3] = &unk_2786EED30;
  v7 = *(a1 + 56);
  v4[4] = v2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v2 _accessoryServerForSystemCommissionerDeviceWithNodeID:v3 completionHandler:v4];
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_3;
    v13[3] = &unk_2786EF990;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    [v5 openPairingWindowWithPINForDuration:v13 completionHandler:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve accessory server for node %@ to open commissioning window, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }
}

void __119__HMMTRAccessoryServerBrowser_openCommissioningWindowForSystemCommissionerDeviceWithNodeID_duration_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v15 = 0;
  v7 = [MEMORY[0x277CD5528] setupPayloadWithOnboardingPayload:v5 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {

    v9 = v7;
LABEL_5:
    v10 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert onboarding payload to setup payload", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v10 = *(*(a1 + 40) + 16);
LABEL_9:
  v10();
}

- (void)removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to remove node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v15[3] = &unk_2786F0EA8;
  v15[4] = selfCopy;
  v16 = dCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  [(HMMTRAccessoryServerBrowser *)selfCopy invalidateAllDiscoveredServersWithReason:v12 completion:v15];
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
  v4[3] = &unk_2786EED08;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _accessoryServerForSystemCommissionerDeviceWithNodeID:v5 completionHandler:v4];
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) storageForSystemCommissioner];
  [v4 removeRecordsForSystemCommissionerFabricNode:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  if (v3)
  {
    [v3 setRemovalInProgress:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_3;
    v14[3] = &unk_2786EF328;
    v5 = v3;
    v6 = *(a1 + 32);
    v15 = v5;
    v16 = v6;
    v7 = MEMORY[0x2318887D0](v14);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_4;
    v10[3] = &unk_2786EECE0;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = v5;
    v13 = v7;
    v9 = v7;
    [v12 fetchPairingsWithCompletionHandler:v10];
  }
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 disable];
    v5 = a1 + 32;
    v3 = *(a1 + 32);
    v4 = *(v5 + 8);
    v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
    [v4 invalidateAccessoryServer:v3 reason:v6];
  }
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v33 = a3;
  v8 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__9232;
  v46 = __Block_byref_object_dispose__9233;
  v47 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v10)
  {
    v11 = *v39;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 vendorID];
        v15 = [v14 integerValue] == 4937;

        if (v15)
        {
          v16 = v43[5];
          v17 = [v13 nodeID];
          [v16 addObject:v17];

          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v13 nodeID];
            v23 = *(a1 + 40);
            *buf = 138543874;
            v49 = v21;
            v50 = 2112;
            v51 = v22;
            v52 = 2112;
            v53 = v23;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Found Apple Home pairing with node id %@ during removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v38 objects:v54 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [*(a1 + 48) setBlockInvalidation:1];
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 32);
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = *(a1 + 40);
    *buf = 138543618;
    v49 = v27;
    v50 = 2112;
    v51 = v28;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_INFO, "%{public}@Now removing all connected services for %@ ...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_214;
  v34[3] = &unk_2786F0FC0;
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v36 = v30;
  v34[4] = v31;
  v35 = v32;
  v37 = &v42;
  [v29 removeAllPairingsWithCompletionHandler:v34];

  _Block_object_dispose(&v42, 8);
}

void __110__HMMTRAccessoryServerBrowser_removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_214(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v3;
    v9 = "%{public}@Failed remove all connected services for node (%@) with error";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v12;
    v9 = "%{public}@Successfully removed all connected services for node (%@)";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_22AEAE000, v10, v11, v9, buf, 0x16u);

LABEL_7:
  v24 = v3;

  objc_autoreleasePoolPop(v4);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = *(*(*(a1 + 56) + 8) + 40);
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v22;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Apple Home pairing is present. Removing accessory from Apple Home with node ID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [*(a1 + 32) accessoryServerBrowserDelegate];
        [v23 browser:*(a1 + 32) didRemoveAccessoryPairingWithNodeID:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)_fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v10[3] = &unk_2786EED08;
  v11 = dCopy;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = dCopy;
  v9 = handlerCopy;
  [(HMMTRAccessoryServerBrowser *)self _accessoryServerForSystemCommissionerDeviceWithNodeID:v8 completionHandler:v10];
}

void __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_2;
    v22[3] = &unk_2786EECB8;
    v23 = *(a1 + 48);
    v7 = MEMORY[0x2318887D0](v22);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Now fetching connected services for %@ ...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_212;
    v17[3] = &unk_2786EECE0;
    v13 = v5;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    v21 = v7;
    v20 = v15;
    v16 = v7;
    [v13 fetchPairingsWithCompletionHandler:v17];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __107__HMMTRAccessoryServerBrowser__fetchDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke_212(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) setBlockInvalidation:0];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch connected services for node (%@) with error", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = *(a1 + 56);
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 16))(v15, 0, v16, v17);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 48);
      v20 = 138543874;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched connected services for node (%@) %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_accessoryServerForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];

  if (!systemCommissionerFabricID)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v23;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@System Commissioner Fabric is not set up yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, v24);
    goto LABEL_29;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __103__HMMTRAccessoryServerBrowser__accessoryServerForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v44[3] = &unk_2786EEC90;
  v38 = handlerCopy;
  v45 = handlerCopy;
  v37 = MEMORY[0x2318887D0](v44);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(HMMTRAccessoryServerBrowser *)self _allServers];
  v9 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v9)
  {
LABEL_15:

    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v41;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v41 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v40 + 1) + 8 * v12);
    nodeID = [v13 nodeID];
    if (![nodeID isEqualToNumber:dCopy])
    {
      goto LABEL_12;
    }

    v15 = dCopy;
    fabricID = [v13 fabricID];
    selfCopy2 = self;
    systemCommissionerFabricID2 = [(HMMTRAccessoryServerBrowser *)self systemCommissionerFabricID];
    if (([fabricID isEqual:systemCommissionerFabricID2] & 1) == 0)
    {

      dCopy = v15;
      self = selfCopy2;
LABEL_12:

      goto LABEL_13;
    }

    knownToSystemCommissioner = [v13 knownToSystemCommissioner];

    dCopy = v15;
    self = selfCopy2;
    if (knownToSystemCommissioner)
    {
      break;
    }

LABEL_13:
    if (v10 == ++v12)
    {
      v10 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v25 = v13;

  if (v25)
  {
    goto LABEL_22;
  }

LABEL_20:
  v26 = -[HMMTRAccessoryServerBrowser _createSystemCommissionerCHIPAccessoryForNodeID:](self, "_createSystemCommissionerCHIPAccessoryForNodeID:", [dCopy unsignedLongLongValue]);
  if (v26)
  {
    v25 = v26;
LABEL_22:
    v27 = v37;
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v31;
      v48 = 2112;
      v49 = dCopy;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Found paired device (%@) in System Commissioner Storage", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    [v25 setBlockInvalidation:1];
    systemCommissionerControllerWrapper = [(HMMTRAccessoryServerBrowser *)selfCopy3 systemCommissionerControllerWrapper];
    [v25 setControllerWrapper:systemCommissionerControllerWrapper];

    (*(v37 + 16))(v37, v25, 0);
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v35 = HMFGetOSLogHandle();
    v27 = v37;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v36;
      v48 = 2112;
      v49 = dCopy;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Failed to create server with node ID (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v37 + 16))(v37, 0, v25);
  }

  handlerCopy = v38;

  v24 = v45;
LABEL_29:
}

- (void)removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID:(id)d fabric:(id)fabric completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fabricCopy = fabric;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v15;
    v29 = 2112;
    v30 = fabricCopy;
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request to remove connected service with UUID %@ for node (%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke;
  v25[3] = &unk_2786F0BC0;
  v26 = handlerCopy;
  v16 = handlerCopy;
  v17 = MEMORY[0x2318887D0](v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_2;
  v21[3] = &unk_2786EEC68;
  v21[4] = selfCopy;
  v22 = fabricCopy;
  v23 = dCopy;
  v24 = v17;
  v18 = dCopy;
  v19 = v17;
  v20 = fabricCopy;
  [(HMMTRAccessoryServerBrowser *)selfCopy _fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:v18 completionHandler:v21];
}

void __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v59 = a1;
    v54 = v7;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v67 objects:v71 count:16];
    v55 = v8;
    if (v17)
    {
      v18 = v17;
      v58 = 0;
      obj = v16;
      v57 = *v68;
LABEL_7:
      v19 = 0;
      while (1)
      {
        if (*v68 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v67 + 1) + 8 * v19);
        v21 = objc_alloc(MEMORY[0x277CD5590]);
        v22 = [v20 vendorID];
        v23 = [v20 vendorName];
        v24 = [v21 initWithIdentifier:v22 displayName:v23];

        v25 = objc_alloc(MEMORY[0x277CD5578]);
        v26 = [v20 rootPublicKey];
        v27 = [v25 initWithRootPublicKey:v26 vendor:v24];

        v28 = objc_alloc(MEMORY[0x277CD5580]);
        v29 = [v20 fabricID];
        v30 = [v20 fabricID];
        v31 = [v20 fabricLabel];
        v32 = [v28 initWithIdentifier:v29 index:v30 displayName:v31 ecosystem:v27];

        v33 = objc_alloc(MEMORY[0x277CD5570]);
        v34 = [v20 nodeID];
        v35 = [v33 initWithNodeID:v34 fabric:v32];

        v36 = [v35 uuid];
        v37 = [v36 isEqual:*(v59 + 40)];

        if (v37)
        {
          v38 = v20;

          v58 = v38;
        }

        if (v37)
        {
          break;
        }

        if (v18 == ++v19)
        {
          v18 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
          if (v18)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (v58)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = *(v59 + 32);
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          v43 = *(v59 + 40);
          *buf = 138543618;
          v73 = v42;
          v74 = 2112;
          v75 = v43;
          _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Now removing connected service (%@)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        [v55 setBlockInvalidation:1];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_210;
        v60[3] = &unk_2786EEC40;
        v44 = v55;
        v45 = *(v59 + 32);
        v46 = *(v59 + 40);
        v61 = v44;
        v62 = v45;
        v63 = v46;
        v66 = *(v59 + 56);
        v64 = *(v59 + 48);
        v65 = v58;
        v47 = v58;
        [v44 removePairing:v47 completionHandler:v60];

LABEL_23:
        v7 = v54;
        v8 = v55;
        v9 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v48 = objc_autoreleasePoolPush();
    v49 = *(v59 + 32);
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      v52 = *(v59 + 40);
      *buf = 138543874;
      v73 = v51;
      v74 = 2112;
      v75 = v52;
      v76 = 2112;
      v77 = 0;
      _os_log_impl(&dword_22AEAE000, v50, OS_LOG_TYPE_INFO, "%{public}@Couldn't find connected service (%@) to remove for node (%@) with error", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    v53 = *(v59 + 56);
    v47 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v53 + 16))(v53, v47);
    goto LABEL_23;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = *(v11 + 40);
    *buf = 138543874;
    v73 = v14;
    v74 = 2112;
    v75 = v15;
    v76 = 2112;
    v77 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove connected service (%@) for node (%@) with error", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  (*(*(v11 + 56) + 16))();
LABEL_24:
}

void __119__HMMTRAccessoryServerBrowser_removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID_fabric_completionHandler___block_invoke_210(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setBlockInvalidation:0];
  [*(a1 + 32) disable];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v4 invalidateAccessoryServer:v5 reason:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v28 = 138543874;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v3;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove connected service (%@) for node (%@) with error", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = *(a1 + 72);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v28 = 138543874;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully removed connected services (%@) for node (%@)", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v18 = [*(a1 + 64) vendorID];
    v19 = [v18 integerValue];

    if (v19 == 4937)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 64) nodeID];
        v28 = 138543618;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Apple Home pairing has been removed. Removing accessory from Apple Home with node ID %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [*(a1 + 40) accessoryServerBrowserDelegate];
      v26 = *(a1 + 40);
      v27 = [*(a1 + 64) nodeID];
      [v25 browser:v26 didRemoveAccessoryPairingWithNodeID:v27];
    }

    (*(*(a1 + 72) + 16))();
  }
}

- (void)fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID:(id)d completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to fetch connected services for node (%@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HMMTRAccessoryServerBrowser_fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke;
  v14[3] = &unk_2786EEC18;
  v15 = dCopy;
  v16 = handlerCopy;
  v14[4] = selfCopy;
  v12 = dCopy;
  v13 = handlerCopy;
  [(HMMTRAccessoryServerBrowser *)selfCopy _fetchDevicePairingsForSystemCommissionerDeviceWithNodeID:v12 completionHandler:v14];
}

void __109__HMMTRAccessoryServerBrowser_fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v8 disable];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v10 invalidateAccessoryServer:v8 reason:v11];

  if (v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v15;
      v57 = 2112;
      v58 = v9;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch connected services for node (%@) with error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = *(a1 + 48);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v18 = *(v16 + 16);
    v19 = v16;
    v20 = v17;
    v18(v19, 0, v17);
  }

  else
  {
    v46 = a1;
    v47 = v8;
    v20 = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v48 = v7;
    obj = v7;
    v21 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v50 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          v24 = v20;
          if (*v52 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          v26 = objc_alloc(MEMORY[0x277CD5590]);
          v27 = [v25 vendorID];
          v28 = [v25 vendorName];
          v29 = [v26 initWithIdentifier:v27 displayName:v28];

          v30 = objc_alloc(MEMORY[0x277CD5578]);
          v31 = [v25 rootPublicKey];
          v32 = [v30 initWithRootPublicKey:v31 vendor:v29];

          v33 = objc_alloc(MEMORY[0x277CD5580]);
          v34 = [v25 fabricID];
          v35 = [v25 fabricID];
          v36 = [v25 fabricLabel];
          v37 = [v33 initWithIdentifier:v34 index:v35 displayName:v36 ecosystem:v32];

          v38 = objc_alloc(MEMORY[0x277CD5570]);
          v39 = [v25 nodeID];
          v40 = [v38 initWithNodeID:v39 fabric:v37];

          v20 = v24;
          [v24 addObject:v40];
        }

        v22 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v22);
    }

    v41 = objc_autoreleasePoolPush();
    v42 = *(v46 + 32);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      v45 = *(v46 + 40);
      *buf = 138543874;
      v56 = v44;
      v57 = 2112;
      v58 = v45;
      v59 = 2112;
      v60 = v20;
      _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched connected services for node (%@) as %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    (*(*(v46 + 48) + 16))();
    v8 = v47;
    v7 = v48;
    v9 = 0;
  }
}

- (void)removeSystemCommissionerFabricAccessoryWithNodeID:(id)d completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Received request to remove node (%@) from System Commissioner Fabric", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  systemCommissionerFabricID = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerFabricID];
  v13 = systemCommissionerFabricID == 0;

  if (v13)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@System Commissioner Fabric is not set up yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    storageForSystemCommissioner = [(HMMTRAccessoryServerBrowser *)v29 storageForSystemCommissioner];
    [storageForSystemCommissioner removeRecordsForSystemCommissionerFabricNode:dCopy];
    v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, v33);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = __Block_byref_object_copy__9232;
    v49 = __Block_byref_object_dispose__9233;
    v50 = 0;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    _allServers = [(HMMTRAccessoryServerBrowser *)selfCopy _allServers];
    v15 = [_allServers countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v15)
    {
      v16 = *v39;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(_allServers);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          nodeID = [v18 nodeID];
          v20 = [nodeID isEqualToNumber:dCopy];

          if (v20)
          {
            objc_storeStrong((*&buf[8] + 40), v18);
            goto LABEL_14;
          }
        }

        v15 = [_allServers countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (*(*&buf[8] + 40) || (-[HMMTRAccessoryServerBrowser _createSystemCommissionerCHIPAccessoryForNodeID:](selfCopy, "_createSystemCommissionerCHIPAccessoryForNodeID:", [dCopy unsignedLongLongValue]), v21 = objc_claimAutoreleasedReturnValue(), v22 = *(*&buf[8] + 40), *(*&buf[8] + 40) = v21, v22, *(*&buf[8] + 40)))
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *v42 = 138543618;
        v43 = v26;
        v44 = 2112;
        v45 = dCopy;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Found paired device (%@) in System Commissioner Storage", v42, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [*(*&buf[8] + 40) setRemovalInProgress:1];
    }

    v27 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke;
    v34[3] = &unk_2786EF788;
    v34[4] = selfCopy;
    v35 = dCopy;
    v37 = buf;
    v36 = handlerCopy;
    [(HMMTRAccessoryServerBrowser *)selfCopy invalidateAllDiscoveredServersWithReason:v27 completion:v34];

    _Block_object_dispose(buf, 8);
  }
}

void __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storageForSystemCommissioner];
  [v2 removeRecordsForSystemCommissionerFabricNode:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setBlockInvalidation:1];
  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_2;
  block[3] = &unk_2786EF878;
  v12 = *(a1 + 48);
  dispatch_async(v3, block);

  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [*(a1 + 32) workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_3;
  v8[3] = &unk_2786F0D68;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a1 + 56);
  v8[4] = v6;
  v9 = v7;
  [v4 removePairingForCurrentControllerOnQueue:v5 completion:v8];
}

void __99__HMMTRAccessoryServerBrowser_removeSystemCommissionerFabricAccessoryWithNodeID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(*(a1 + 48) + 8) + 40) setBlockInvalidation:0];
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:12];
  [v4 invalidateAccessoryServer:v5 reason:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove node (%@) from System Commissioner Fabric with error", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully removed node (%@) from System Commissioner Fabric", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)discardStagedAccessoryServerWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [(HMMTRAccessoryServerBrowser *)self stagedAccessoryServerWithIdentifier:identifierCopy];
  if (v8)
  {
    v9 = MEMORY[0x2318887D0](handlerCopy);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &__block_literal_global_9264;
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = @"hmmtrAccessoryServerMetricsStagedPairingCancelled";
      v33 = 2112;
      v34 = @"Pairing Cancelled";
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    mEMORY[0x277D17DE8] = [MEMORY[0x277D17DE8] sharedInstance];
    v16 = objc_alloc(MEMORY[0x277D17DF8]);
    v17 = [v16 initWithTag:@"hmmtrAccessoryServerMetricsStagedPairingCancelled" data:MEMORY[0x277CBEC10]];
    activity = [(__CFString *)v8 activity];
    tagProcessorList = [activity tagProcessorList];
    [mEMORY[0x277D17DE8] submitTaggedEvent:v17 processorList:tagProcessorList];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Attempting to discard staged server: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    nodeID = [(__CFString *)v8 nodeID];
    [(HMMTRAccessoryServerBrowser *)v21 removeSystemCommissionerFabricAccessoryWithNodeID:nodeID completionHandler:v10];
    goto LABEL_14;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v28;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Did not find staged accessory server to discard with identifier: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v10 = MEMORY[0x2318887D0](handlerCopy);
  if (v10)
  {
    nodeID = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v10[2](v10, nodeID);
LABEL_14:
  }
}

- (id)stagedAccessoryServerWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Looking for staged server with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__9232;
  v18 = __Block_byref_object_dispose__9233;
  v19 = 0;
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMMTRAccessoryServerBrowser_stagedAccessoryServerWithIdentifier___block_invoke;
  block[3] = &unk_2786F0468;
  block[4] = selfCopy;
  v14 = identifierCopy;
  v15 = buf;
  v10 = identifierCopy;
  dispatch_sync(workQueue, block);

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v11;
}

void __67__HMMTRAccessoryServerBrowser_stagedAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = a1;
  v49 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isSystemCommissionerFeatureEnabled])
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    obj = [*(v1 + 32) discoveredAccessoryServers];
    v2 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v2)
    {
      v4 = v2;
      v5 = *v36;
      *&v3 = 138544130;
      v27 = v3;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v36 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v35 + 1) + 8 * i);
          if (([v7 removalInProgress] & 1) == 0)
          {
            v8 = objc_autoreleasePoolPush();
            v9 = *(v1 + 32);
            v10 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = HMFGetLogIdentifier();
              v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "pairedState")}];
              [v7 knownToSystemCommissioner];
              v13 = HMFBooleanToString();
              *buf = v27;
              v41 = v11;
              v42 = 2112;
              v43 = v7;
              v44 = 2112;
              v45 = v12;
              v46 = 2112;
              v47 = v13;
              _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Found staged server: %@, state = %@, knownToSystemCommissioner %@", buf, 0x2Au);

              v1 = a1;
            }

            objc_autoreleasePoolPop(v8);
            if ([v7 pairedState] == 3)
            {
              v14 = [v7 identifier];
              if ([v14 isEqualToString:*(v1 + 40)])
              {
                v15 = [v7 knownToSystemCommissioner];

                if (v15)
                {
                  goto LABEL_31;
                }
              }

              else
              {
              }
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    obj = [*(v1 + 32) stagedAccessoryServers];
    v16 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v32;
      *&v17 = 138543618;
      v28 = v17;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v31 + 1) + 8 * j);
          if (([v7 removalInProgress] & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = *(v1 + 32);
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = v28;
              v41 = v24;
              v42 = 2112;
              v43 = v7;
              _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Found staged server: %@", buf, 0x16u);

              v1 = a1;
            }

            objc_autoreleasePoolPop(v21);
            if ([v7 pairedState] == 2)
            {
              v25 = [v7 identifier];
              v26 = [v25 isEqualToString:*(v1 + 40)];

              if (v26)
              {
LABEL_31:
                objc_storeStrong((*(*(v1 + 48) + 8) + 40), v7);
                goto LABEL_32;
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_32:
}

- (void)_stageAccessoryServerWithSetupPayload:(id)payload deviceCredentialHandler:(id)handler wifiScanResultsHandler:(id)resultsHandler threadScanResultsHandler:(id)scanResultsHandler readyToCancelHandler:(id)cancelHandler progressUpdateHandler:(id)updateHandler commissioneeInfoHandler:(id)infoHandler scanningNetworks:(BOOL)self0 hasPriorSuccessfulPairing:(BOOL)self1 category:(id)self2 completionHandler:(id)self3
{
  v64 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  scanResultsHandlerCopy = scanResultsHandler;
  cancelHandlerCopy = cancelHandler;
  updateHandlerCopy = updateHandler;
  infoHandlerCopy = infoHandler;
  categoryCopy = category;
  completionHandlerCopy = completionHandler;
  LODWORD(scanResultsHandler) = [(HMMTRAccessoryServerBrowser *)self isSystemCommissionerFeatureEnabled];
  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (scanResultsHandler)
  {
    v44 = infoHandlerCopy;
    v45 = resultsHandlerCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v28;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Received request for staging", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    systemCommissionerControllerParams = [(HMMTRAccessoryServerBrowser *)selfCopy systemCommissionerControllerParams];
    v60 = 0;
    v61 = 0;
    v30 = [systemCommissionerControllerParams fetchControllerParamsAllowingNew:1 nocSigner:&v61 controllerWrapper:&v60];
    v31 = v61;
    v32 = v60;

    startupParams = [v32 startupParams];
    fabricID = [startupParams fabricID];

    if (v30 && fabricID)
    {

      [(HMMTRAccessoryServerBrowser *)selfCopy setCurrentFabricUUID:0];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
      v50[3] = &unk_2786EEBD0;
      v50[4] = selfCopy;
      v51 = fabricID;
      v52 = completionHandlerCopy;
      v53 = handlerCopy;
      resultsHandlerCopy = v45;
      v54 = v45;
      v55 = scanResultsHandlerCopy;
      v56 = cancelHandlerCopy;
      v57 = updateHandlerCopy;
      v58 = infoHandlerCopy;
      networksCopy = networks;
      fabricID = fabricID;
      v35 = selfCopy;
      v36 = payloadCopy;
      [(HMMTRAccessoryServerBrowser *)v35 _prepareForPairingWithSetupPayload:payloadCopy targetFabricUUID:0 fabricID:fabricID controllerWrapper:v32 hasPriorSuccessfulPairing:pairing category:categoryCopy completionHandler:v50];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v42 = v41 = handlerCopy;
        *buf = 138543362;
        v63 = v42;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@System commissioner controller is not ready to start. Aborting staging.", buf, 0xCu);

        handlerCopy = v41;
      }

      objc_autoreleasePoolPop(v38);
      v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0, v43);

      resultsHandlerCopy = v45;
      v36 = payloadCopy;
      infoHandlerCopy = v44;
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v37;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Staging is no longer supported when system commissioner feature is disabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    fabricID = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0, fabricID);
    v36 = payloadCopy;
  }
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_2;
  v18[3] = &unk_2786EEBA8;
  v9 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v6;
  v20 = v9;
  v10 = *(a1 + 48);
  v21 = v7;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v22 = v15;
  v23 = v14;
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v16 = v7;
  v17 = v6;
  dispatch_async(v8, v18);
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Staging server: %@ with fabric ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) systemCommissionerControllerWrapper];
    v9 = [v8 controller];
    v10 = [v9 isRunning];

    if (v10)
    {
      v11 = [*(a1 + 40) nodeID];
      v12 = [*(a1 + 32) systemCommissionerControllerParams];
      [v12 setCommissioneeNodeID:v11];

      v13 = *(a1 + 72);
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
      v16 = *(a1 + 96);
      v17 = *(a1 + 104);
      v18 = *(a1 + 112);
      v19 = *(a1 + 120);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_197;
      v31[3] = &unk_2786EEB80;
      v20 = *(a1 + 40);
      v31[4] = *(a1 + 32);
      v32 = *(a1 + 64);
      LOBYTE(v30) = v19;
      [v20 startStagedPairingWithDeviceCredentialHandler:v13 wifiScanResultsHandler:v14 threadScanResultsHandler:v15 readyToCancelHandler:v16 progressUpdateHandler:v17 commissioneeInfoHandler:v18 scanningNetworks:v30 completion:v31];
      v21 = [*(a1 + 32) stagedAccessoryServers];
      [v21 addObject:*(a1 + 40)];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v26;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@CHIP Stack is not running. Aborting pairing.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = *(a1 + 64);
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v27 + 16))(v27, 0, 0, v28);
    }
  }

  else
  {
    v22 = *(a1 + 64);
    if (*(a1 + 56))
    {
      (*(v22 + 16))(*(a1 + 64), 0, 0);
    }

    else
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
      (*(v22 + 16))(v22, 0, 0, v29);
    }
  }
}

void __278__HMMTRAccessoryServerBrowser__stageAccessoryServerWithSetupPayload_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_hasPriorSuccessfulPairing_category_completionHandler___block_invoke_197(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v9 = a3;
  v8 = [v6 systemCommissionerControllerParams];
  [v8 setCommissioneeNodeID:0];

  (*(*(a1 + 40) + 16))();
}

- (void)stageAccessoryServerWithSetupPayload:(id)payload fabricID:(id)d deviceCredentialHandler:(id)handler wifiScanResultsHandler:(id)resultsHandler threadScanResultsHandler:(id)scanResultsHandler readyToCancelHandler:(id)cancelHandler progressUpdateHandler:(id)updateHandler commissioneeInfoHandler:(id)self0 scanningNetworks:(BOOL)self1 completionHandler:(id)self2
{
  payloadCopy = payload;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  scanResultsHandlerCopy = scanResultsHandler;
  cancelHandlerCopy = cancelHandler;
  updateHandlerCopy = updateHandler;
  infoHandlerCopy = infoHandler;
  completionHandlerCopy = completionHandler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __251__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_fabricID_deviceCredentialHandler_wifiScanResultsHandler_threadScanResultsHandler_readyToCancelHandler_progressUpdateHandler_commissioneeInfoHandler_scanningNetworks_completionHandler___block_invoke;
  block[3] = &unk_2786EEB58;
  block[4] = self;
  v35 = payloadCopy;
  v36 = handlerCopy;
  v37 = resultsHandlerCopy;
  v38 = scanResultsHandlerCopy;
  v39 = cancelHandlerCopy;
  v40 = updateHandlerCopy;
  v41 = infoHandlerCopy;
  networksCopy = networks;
  v42 = completionHandlerCopy;
  v25 = completionHandlerCopy;
  v26 = infoHandlerCopy;
  v27 = updateHandlerCopy;
  v28 = cancelHandlerCopy;
  v29 = scanResultsHandlerCopy;
  v30 = resultsHandlerCopy;
  v31 = handlerCopy;
  v32 = payloadCopy;
  dispatch_async(workQueue, block);
}

- (void)stageAccessoryServerWithSetupPayload:(id)payload hasPriorSuccessfulPairing:(BOOL)pairing category:(id)category completionHandler:(id)handler
{
  payloadCopy = payload;
  categoryCopy = category;
  handlerCopy = handler;
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_hasPriorSuccessfulPairing_category_completionHandler___block_invoke;
  block[3] = &unk_2786EF8F0;
  block[4] = self;
  v18 = payloadCopy;
  pairingCopy = pairing;
  v19 = categoryCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = categoryCopy;
  v16 = payloadCopy;
  dispatch_async(workQueue, block);
}

uint64_t __121__HMMTRAccessoryServerBrowser_stageAccessoryServerWithSetupPayload_hasPriorSuccessfulPairing_category_completionHandler___block_invoke(uint64_t a1)
{
  BYTE1(v2) = *(a1 + 64);
  LOBYTE(v2) = 0;
  return [*(a1 + 32) _stageAccessoryServerWithSetupPayload:*(a1 + 40) deviceCredentialHandler:0 wifiScanResultsHandler:0 threadScanResultsHandler:0 readyToCancelHandler:0 progressUpdateHandler:0 commissioneeInfoHandler:0 scanningNetworks:v2 hasPriorSuccessfulPairing:*(a1 + 48) category:*(a1 + 56) completionHandler:?];
}

- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  dCopy = d;
  identifierCopy = identifier;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__HMMTRAccessoryServerBrowser_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_2786EED58;
  objc_copyWeak(&v18, &location);
  v11 = handlerCopy;
  v17 = v11;
  v12 = dCopy;
  v15 = v12;
  v13 = identifierCopy;
  v16 = v13;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __98__HMMTRAccessoryServerBrowser_matchAccessoryServerWithSetupID_serverIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 48))
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v4 = [WeakRetained _allServers];
    v5 = [v4 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v38;
      v30 = v3;
      v34 = *v38;
      v36 = v4;
      while (2)
      {
        v9 = 0;
        v31 = v6;
        do
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v37 + 1) + 8 * v9);
          if ([v10 matchesSetupID:*(a1 + 32) serverIdentifier:*(a1 + 40)] && (objc_msgSend(v10, "removalInProgress") & 1) == 0)
          {
            v11 = [v10 identifier];
            v12 = [v3 isPaired:v11];

            v13 = [v10 hasPairings];
            if (((v12 | (v13 | v7)) & 1) == 0)
            {
              v12 = 0;
              v14 = 0;
LABEL_19:
              v23 = objc_autoreleasePoolPush();
              v24 = v3;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                v35 = v23;
                v26 = *(a1 + 32);
                [MEMORY[0x277CCABB0] numberWithBool:v12];
                v28 = v27 = v3;
                v29 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
                *buf = 138544386;
                v42 = v33;
                v43 = 2112;
                v44 = v10;
                v45 = 2112;
                v46 = v26;
                v23 = v35;
                v47 = 2112;
                v48 = v28;
                v49 = 2112;
                v50 = v29;
                _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory server %@ matches setupID %@ and is paired/hasPairings: (%@/%@)", buf, 0x34u);

                v3 = v27;
              }

              objc_autoreleasePoolPop(v23);
              v22 = v10;
              v4 = v36;
              goto LABEL_22;
            }

            v14 = v13;
            if (*(a1 + 40))
            {
              goto LABEL_19;
            }

            v15 = objc_autoreleasePoolPush();
            v16 = v3;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v32 = v15;
              v19 = *(a1 + 32);
              v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
              v21 = [MEMORY[0x277CCABB0] numberWithBool:v14 & 1];
              *buf = 138544386;
              v42 = v18;
              v43 = 2112;
              v44 = v10;
              v45 = 2112;
              v46 = v19;
              v6 = v31;
              v15 = v32;
              v47 = 2112;
              v48 = v20;
              v49 = 2112;
              v50 = v21;
              _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Paired CHIP Accessory server %@ matches setupID %@ (isPaired/hasPairings: %@/%@) but will be ignored when searched without identifier", buf, 0x34u);

              v3 = v30;
            }

            objc_autoreleasePoolPop(v15);
            v7 = 1;
            v8 = v34;
            v4 = v36;
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v22 = 0;
    }

    else
    {
      v22 = 0;
    }

LABEL_22:

    (*(*(a1 + 48) + 16))();
  }
}

- (void)indicateNotificationFromServer:(id)server notifyType:(unint64_t)type withDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dictionaryCopy = dictionary;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    nodeID = [serverCopy nodeID];
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = nodeID;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification from accessory server with nodeID %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
}

- (void)discoverAccessoryServerWithNodeID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke;
  v11[3] = &unk_2786EF558;
  objc_copyWeak(&v14, &location);
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke(id *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[4];
    *buf = 138543618;
    v45 = v6;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@discoverAccessoryServerWithNodeId %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = [v4 discoveredAccessoryServers];
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = a1[4];
        v15 = [v13 nodeID];
        if ([v14 isEqual:v15] && (objc_msgSend(v13, "isDisabled") & 1) == 0)
        {
          v16 = [v13 serviceEnumerationFailed];

          if ((v16 & 1) == 0)
          {
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_195;
            v38[3] = &unk_2786EFA88;
            v38[4] = v4;
            v38[5] = v13;
            v39 = a1[5];
            [v13 isDiscoverableWithCompletion:v38];

            goto LABEL_26;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = a1[4];
  v37 = 0;
  v18 = [v4 _isNodeIDPaired:v17 targetFabricUUID:&v37];
  v8 = v37;
  if (v18 && isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v4;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [HMMTRUtilities identifierStringWithCHIPNodeID:a1[4]];
      v24 = a1[4];
      *buf = 138543874;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@Paired device %@ with node ID %@ fakes discovery for local fallback", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [v20 appleHomeFabricWithTargetFabricUUID:v8];
    [v20 _setUpUpdatedBrowserTargetFabricUUID:v8 rediscoverAccessories:0 overrideAccessoryControlAllowed:{objc_msgSend(v20, "isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:", v25)}];
    v26 = [a1[4] unsignedLongLongValue];
    v36 = 0;
    v27 = [v20 _createCHIPAccessoryForNodeID:v26 ifPaired:1 fabricUUID:v8 fatalError:&v36];
    v28 = v36;
    if (v27)
    {
      v29 = [v20 discoveredAccessoryServers];
      [v29 addObject:v27];

      v30 = *(a1[5] + 2);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v20;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v35 = v31;
        *buf = 138543618;
        v45 = v34;
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not create server for local try: %@", buf, 0x16u);

        v31 = v35;
      }

      objc_autoreleasePoolPop(v31);
      v30 = *(a1[5] + 2);
    }

    v30();
  }

  else
  {
    (*(a1[5] + 2))();
  }

LABEL_26:
}

void __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_195(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_2;
  v5[3] = &unk_2786EEB30;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

uint64_t __76__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithNodeID_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2 == 1)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v12, 0x16u);
    }
  }

  else if (v6)
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  return (*(*(a1 + 48) + 16))();
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke;
  v6[3] = &unk_2786EEB08;
  objc_copyWeak(&v8, &location);
  v5 = identifierCopy;
  v7 = v5;
  [(HMMTRAccessoryServerBrowser *)self dispatchAfterConfiguration:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@discoverAccessoryServerWithIdentifier %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = [v4 discoveredAccessoryServers];
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 identifier];
        if ([v14 isEqual:v15] && (objc_msgSend(v13, "isDisabled") & 1) == 0)
        {
          v16 = [v13 serviceEnumerationFailed];

          if ((v16 & 1) == 0)
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_187;
            v49[3] = &unk_2786EEAE0;
            v49[4] = v4;
            v49[5] = v13;
            v50 = *(a1 + 32);
            [v13 isDiscoverableWithCompletion:v49];

            goto LABEL_37;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = *(a1 + 32);
  v47 = 0;
  v48 = 0;
  v18 = [v4 _isDeviceIDPaired:v17 nodeID:&v48 targetFabricUUID:&v47];
  v8 = v48;
  v19 = v47;
  if (!v18 || !isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    if ([v4 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v32 = [v4 delegateQueue];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_194;
      v40[3] = &unk_2786EF328;
      v40[4] = v4;
      v41 = *(a1 + 32);
      dispatch_async(v32, v40);
    }

    goto LABEL_36;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = v4;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(a1 + 32);
    *buf = 138543874;
    v56 = v23;
    v57 = 2112;
    v58 = v24;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Paired device %@ with node ID %@ fakes discovery for local fallback", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [v21 appleHomeFabricWithTargetFabricUUID:v19];
  [v21 _setUpUpdatedBrowserTargetFabricUUID:v19 rediscoverAccessories:0 overrideAccessoryControlAllowed:{objc_msgSend(v21, "isCurrentDeviceAllowedAccessoryControlPerExplicitRequestDespiteReachableResidentForFabric:", v25)}];
  v26 = [v21 controllerWrapperForFabricUUID:v19];

  if (!v26)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v21;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v36;
      v57 = 2112;
      v58 = v8;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Device controller is not set up yet to fake discover node ID %@", buf, 0x16u);
    }

    v28 = 0;
    goto LABEL_31;
  }

  v46 = 0;
  v27 = [v21 _createCHIPAccessoryForNodeID:objc_msgSend(v8 ifPaired:"unsignedLongLongValue") fabricUUID:1 fatalError:{v19, &v46}];
  v28 = v46;
  if (!v27)
  {
    v39 = objc_autoreleasePoolPush();
    v37 = v21;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v38;
      v57 = 2112;
      v58 = v28;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not create server for local try: %@", buf, 0x16u);
    }

    v33 = v39;
LABEL_31:

    objc_autoreleasePoolPop(v33);
    if (![v21 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      v27 = 0;
      goto LABEL_35;
    }

    v30 = [v21 delegateQueue];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_192;
    v44[3] = &unk_2786EF328;
    v44[4] = v21;
    v31 = &v45;
    v45 = *(a1 + 32);
    dispatch_async(v30, v44);
    v27 = 0;
    goto LABEL_33;
  }

  v29 = [v21 discoveredAccessoryServers];
  [v29 addObject:v27];

  if ([v21 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
  {
    v30 = [v21 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2_193;
    block[3] = &unk_2786EF328;
    block[4] = v21;
    v31 = &v43;
    v27 = v27;
    v43 = v27;
    dispatch_async(v30, block);
LABEL_33:
  }

LABEL_35:

LABEL_36:
LABEL_37:
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_187(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2;
  v5[3] = &unk_2786EEAB8;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_192(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2_193(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_194(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server with identifier: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 40)];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if (![v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
    {
      return;
    }

    v4 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_3;
    block[3] = &unk_2786EF328;
    v10 = *(a1 + 32);
    dispatch_async(v4, block);
  }

  else
  {
    if (![v3 _delegateRespondsToSelector:sel_accessoryServerBrowser_didFailToDiscoverAccessoryServerWithIdentifier_])
    {
      return;
    }

    v5 = [*(a1 + 32) delegateQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_190;
    v6[3] = &unk_2786EF3C8;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    dispatch_async(v5, v6);

    v4 = v8;
  }
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_3(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Found server %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

void __69__HMMTRAccessoryServerBrowser_discoverAccessoryServerWithIdentifier___block_invoke_190(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to discover server: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  [v7 accessoryServerBrowser:*(a1 + 32) didFailToDiscoverAccessoryServerWithIdentifier:*(a1 + 48)];
}

- (void)notifyDiscoveredAccessoryServer:(id)server
{
  serverCopy = server;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = serverCopy;
  v5 = serverCopy;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v6];
}

void __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) discoveringAccessoryServersRequested] && objc_msgSend(*(a1 + 40), "pairedState") && (objc_msgSend(*(a1 + 40), "isDisabled") & 1) == 0 && (objc_msgSend(*(a1 + 40), "removalInProgress") & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) commissioneeAccessoryServer];
    if (v2 == v3)
    {
    }

    else
    {
      v8 = v3;
      v4 = [*(a1 + 32) discoveredAccessoryServers];
      v5 = [v4 containsObject:*(a1 + 40)];

      if (v5)
      {
        v6 = [*(a1 + 32) delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke_2;
        block[3] = &unk_2786EF328;
        v7 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v10 = v7;
        dispatch_async(v6, block);
      }
    }
  }
}

void __63__HMMTRAccessoryServerBrowser_notifyDiscoveredAccessoryServer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)stopDiscoveringAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for CHIP accessories", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setDiscoveringAccessoryServersRequested:0];
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didStopDiscoveringWithError_])
  {
    v6 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke_186;
    block[3] = &unk_2786F0CA8;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __62__HMMTRAccessoryServerBrowser_stopDiscoveringAccessoryServers__block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStopDiscoveringWithError:0];
}

- (void)startDiscoveringAccessoryServers
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting browse for accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, selfCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke;
  v7[3] = &unk_2786EF2B8;
  objc_copyWeak(&v8, buf);
  [(HMMTRAccessoryServerBrowser *)selfCopy dispatchBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDiscoveringAccessoryServersWithNoResponseToDelegate];
  [WeakRetained setDiscoveringAccessoryServersRequested:1];
  if ([WeakRetained _delegateRespondsToSelector:sel_accessoryServerBrowser_didStartDiscoveringWithError_])
  {
    v2 = [WeakRetained delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke_2;
    block[3] = &unk_2786F0CA8;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __63__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didStartDiscoveringWithError:0];
}

- (void)startDiscoveringAccessoryServersWithNoResponseToDelegate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke;
  v3[3] = &unk_2786EF2B8;
  objc_copyWeak(&v4, &location);
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __87__HMMTRAccessoryServerBrowser_startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDiscoveringAccessoryServersWithNoResponseToDelegate];
}

- (void)_startDiscoveringAccessoryServersWithNoResponseToDelegate
{
  v28 = *MEMORY[0x277D85DE8];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform == 4)
  {
    if ([(HMMTRAccessoryServerBrowser *)self discoveringAccessoryServersRequested])
    {
LABEL_23:
      [(HMMTRAccessoryServerBrowser *)self setBrowserState:2];
      return;
    }

LABEL_8:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
    v12 = [discoveredAccessoryServers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(discoveredAccessoryServers);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 pairedState])
          {
            if (([v16 isDisabled] & 1) == 0 && (objc_msgSend(v16, "removalInProgress") & 1) == 0)
            {
              commissioneeAccessoryServer = [(HMMTRAccessoryServerBrowser *)self commissioneeAccessoryServer];

              if (v16 != commissioneeAccessoryServer && (!-[HMMTRAccessoryServerBrowser isCurrentDeviceMobileAndAllowedAccessoryControl](self, "isCurrentDeviceMobileAndAllowedAccessoryControl") || ([v16 delayDiscovery] & 1) == 0))
              {
                delegateQueue = [(HMMTRAccessoryServerBrowser *)self delegateQueue];
                v20[0] = MEMORY[0x277D85DD0];
                v20[1] = 3221225472;
                v20[2] = __88__HMMTRAccessoryServerBrowser__startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke;
                v20[3] = &unk_2786EF328;
                v20[4] = self;
                v20[5] = v16;
                dispatch_async(delegateQueue, v20);
              }
            }
          }
        }

        v13 = [discoveredAccessoryServers countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    goto LABEL_23;
  }

  isCurrentDeviceMobileAndAllowedAccessoryControl = [(HMMTRAccessoryServerBrowser *)self isCurrentDeviceMobileAndAllowedAccessoryControl];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isCurrentDeviceMobileAndAllowedAccessoryControl)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v10;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@startDiscoveringAccessoryServers invoked while resident is down - allowing discovery", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMMTRAccessoryServerBrowser *)selfCopy discoveringAccessoryServersRequested];
    goto LABEL_8;
  }

  if (v9)
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v19;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@startDiscoveringAccessoryServers: resident is up - preventing discovery of all accessory servers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
}

void __88__HMMTRAccessoryServerBrowser__startDiscoveringAccessoryServersWithNoResponseToDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)setCommissioneeAccessoryServer:(id)server
{
  v17 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  if (WeakRetained && ([serverCopy fabricUUID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "fabricUUID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    v9 = MEMORY[0x2318887D0](self->_controllerSetUpBlockToRunAfterCommissioning);
    controllerSetUpBlockToRunAfterCommissioning = self->_controllerSetUpBlockToRunAfterCommissioning;
    self->_controllerSetUpBlockToRunAfterCommissioning = 0;
  }

  else
  {
    v9 = 0;
  }

  objc_storeWeak(&self->_commissioneeAccessoryServer, serverCopy);

  os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
  if (v9)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Setting deferred controller parameters after pairing is complete", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9[2](v9);
  }
}

- (HMMTRAccessoryServer)commissioneeAccessoryServer
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);

  return WeakRetained;
}

- (void)runAfterCommissioningToTargetFabricUUID:(id)d controllerSetUpBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_commissioneeAccessoryServer);
  fabricUUID = [WeakRetained fabricUUID];
  v10 = [fabricUUID isEqual:dCopy];

  if (v10)
  {
    v11 = MEMORY[0x2318887D0](blockCopy);
    controllerSetUpBlockToRunAfterCommissioning = self->_controllerSetUpBlockToRunAfterCommissioning;
    self->_controllerSetUpBlockToRunAfterCommissioning = v11;

    os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting controller parameters for target fabric UUID %@ was deferred during pairing", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    os_unfair_lock_unlock(&self->_commissioneeAccessoryServerLock);
    blockCopy[2](blockCopy);
  }
}

- (void)clearOperationalFabricDataForTargetFabricUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HMMTRAccessoryServerBrowser_clearOperationalFabricDataForTargetFabricUUID___block_invoke;
  v6[3] = &unk_2786EF328;
  v6[4] = self;
  v7 = dCopy;
  v5 = dCopy;
  [(HMMTRAccessoryServerBrowser *)self runAfterCommissioningToTargetFabricUUID:v5 controllerSetUpBlock:v6];
}

void __77__HMMTRAccessoryServerBrowser_clearOperationalFabricDataForTargetFabricUUID___block_invoke(uint64_t a1)
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
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Clearing fabric data for target fabric UUID %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setPairingTargetFabricData:0 targetFabricUUID:*(a1 + 40)];
  v7 = [*(a1 + 32) homeFabricControllers];
  [v7 removeTargetFabricUUID:*(a1 + 40)];
}

- (void)setOperationalFabricData:(id)data operationalCertIssuer:(id)issuer storageDataSource:(id)source allTargetFabricUUIDs:(id)ds entityIdentifier:(id)identifier accessoryServerNodeIDs:(id)iDs forTargetFabricUUID:(id)d
{
  v75 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  issuerCopy = issuer;
  sourceCopy = source;
  dsCopy = ds;
  identifierCopy = identifier;
  iDsCopy = iDs;
  dCopy = d;
  storage = [(HMMTRAccessoryServerBrowser *)self storage];
  dataSource = [storage dataSource];

  if (dataSource)
  {
    v62 = dsCopy;
    v63 = sourceCopy;
    v60 = dCopy;
    v61 = identifierCopy;
    if ([(HMMTRAccessoryServerBrowser *)self _isPerControllerStorageEnabled])
    {
      if (!sourceCopy)
      {
        _HMFPreconditionFailure();
      }

      v59 = issuerCopy;
      v23 = dispatch_queue_create("HMMTRPerControllerStorage queue", 0);
      v24 = [[HMMTRPerControllerStorage alloc] initWithQueue:v23 privateDataSource:sourceCopy];
      v25 = [HMMTRControllerParameters alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v27 = [dataCopy ipk];
      operationalKeyPair = [dataCopy operationalKeyPair];
      operationalCert = [dataCopy operationalCert];
      rootCert = [dataCopy rootCert];
      v31 = [(HMMTRControllerParameters *)v25 initWithStorageDelegate:v24 storageDelegateQueue:v23 uniqueIdentifier:uUID ipk:v27 vendorID:&unk_283EE87D8 operationalKeypair:operationalKeyPair operationalCertificate:operationalCert intermediateCertificate:0 rootCertificate:rootCert];

      issuerCopy = v59;
    }

    else
    {
      v38 = [HMMTRControllerParameters alloc];
      v39 = [dataCopy ipk];
      operationalKeyPair2 = [dataCopy operationalKeyPair];
      operationalCert2 = [dataCopy operationalCert];
      rootCert2 = [dataCopy rootCert];
      v31 = [(HMMTRControllerParameters *)v38 initWithIPK:v39 operationalKeypair:operationalKeyPair2 operationalCertificate:operationalCert2 intermediateCertificate:0 rootCertificate:rootCert2];

      [(HMMTRControllerParameters *)v31 setVendorID:&unk_283EE87D8];
    }

    [(HMMTRControllerParameters *)v31 setOperationalCertificateIssuer:issuerCopy];
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    [(HMMTRControllerParameters *)v31 setOperationalCertificateIssuerQueue:workQueue];

    otaProviderDelegate = [(HMMTRAccessoryServerBrowser *)self otaProviderDelegate];
    [(HMMTRControllerParameters *)v31 setOtaProviderDelegate:otaProviderDelegate];

    workQueue2 = [(HAPAccessoryServerBrowser *)self workQueue];
    [(HMMTRControllerParameters *)v31 setOtaProviderDelegateQueue:workQueue2];

    attestationDataStore = [(HMMTRAccessoryServerBrowser *)self attestationDataStore];
    cdCertificates = [attestationDataStore cdCertificates];
    [(HMMTRControllerParameters *)v31 setCertificationDeclarationCertificates:cdCertificates];

    attestationDataStore2 = [(HMMTRAccessoryServerBrowser *)self attestationDataStore];
    paaCertificates = [attestationDataStore2 paaCertificates];
    [(HMMTRControllerParameters *)v31 setProductAttestationAuthorityCertificates:paaCertificates];

    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productPlatform = [productInfo productPlatform];

    identifierCopy = v61;
    dsCopy = v62;
    v37 = iDsCopy;
    if (productPlatform == 4)
    {
      v52 = issuerCopy;
      [(HMMTRControllerParameters *)v31 setShouldAdvertiseOperational:1];
      v53 = objc_autoreleasePoolPush();
      selfCopy = self;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v56;
        _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_INFO, "%{public}@Requesting operational discovery for current controller node", buf, 0xCu);

        identifierCopy = v61;
        v37 = iDsCopy;
      }

      objc_autoreleasePoolPop(v53);
      issuerCopy = v52;
    }

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __177__HMMTRAccessoryServerBrowser_setOperationalFabricData_operationalCertIssuer_storageDataSource_allTargetFabricUUIDs_entityIdentifier_accessoryServerNodeIDs_forTargetFabricUUID___block_invoke;
    v65[3] = &unk_2786EEA90;
    v66 = v31;
    selfCopy2 = self;
    v68 = v60;
    v69 = v62;
    v70 = identifierCopy;
    v71 = dataCopy;
    v72 = v37;
    v57 = v31;
    dCopy = v60;
    v58 = v57;
    [(HMMTRAccessoryServerBrowser *)self runAfterCommissioningToTargetFabricUUID:v68 controllerSetUpBlock:v65];

    sourceCopy = v63;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v35 = dCopy;
      *buf = 138543362;
      v74 = v36;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Ignoring setOperationalFabricData call because storage data source is not configured yet", buf, 0xCu);

      dCopy = v35;
    }

    objc_autoreleasePoolPop(v32);
    v37 = iDsCopy;
  }
}

void __177__HMMTRAccessoryServerBrowser_setOperationalFabricData_operationalCertIssuer_storageDataSource_allTargetFabricUUIDs_entityIdentifier_accessoryServerNodeIDs_forTargetFabricUUID___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) operationalKeypair];
  v3 = SecKeyCopyExternalRepresentation([v2 publicKey], 0);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) rootCertificate];
    v9 = [*(a1 + 32) operationalCertificate];
    v54 = *(a1 + 48);
    v10 = [*(a1 + 32) uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v3, "hash")}];
    *buf = 138544642;
    v56 = v7;
    v57 = 2112;
    v58 = v8;
    v59 = 2112;
    v60 = v9;
    v61 = 2112;
    v62 = v54;
    v63 = 2112;
    v64 = v10;
    v65 = 2112;
    v66 = v11;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting root and operational cert in start up params %@ %@ for target fabric UUID %@ with UUID %@ using operational key %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v4);
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = MEMORY[0x277CD5230];
    v17 = [*(a1 + 32) rootCertificate];
    v18 = [v16 shortDescriptionForX509Certificate:v17];
    *buf = 138543618;
    v56 = v15;
    v57 = 2112;
    v58 = v18;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Controller Root certificate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v19 = MEMORY[0x277CD5230];
  v20 = [*(a1 + 32) rootCertificate];
  [v19 printX509Certificate:v20];

  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 40);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = MEMORY[0x277CD5230];
    v26 = [*(a1 + 32) operationalCertificate];
    v27 = [v25 shortDescriptionForX509Certificate:v26];
    *buf = 138543618;
    v56 = v24;
    v57 = 2112;
    v58 = v27;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Controller NOC: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v28 = MEMORY[0x277CD5230];
  v29 = [*(a1 + 32) operationalCertificate];
  [v28 printX509Certificate:v29];

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 40);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [*(a1 + 32) ipk];
    v35 = [v34 hmmtr_sha256hash];
    *buf = 138543618;
    v56 = v33;
    v57 = 2112;
    v58 = v35;
    _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_INFO, "%{public}@IPK: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v36 = [*(a1 + 40) homeFabricControllers];
  v37 = [v36 wrapperWithTargetFabricUUID:*(a1 + 48) startupParams:*(a1 + 32) allTargetFabricUUIDs:*(a1 + 56) entityIdentifier:*(a1 + 64)];

  v38 = objc_autoreleasePoolPush();
  v39 = *(a1 + 40);
  v40 = HMFGetOSLogHandle();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
  if (v37)
  {
    if (v41)
    {
      v42 = HMFGetLogIdentifier();
      v43 = *(a1 + 48);
      *buf = 138543618;
      v56 = v42;
      v57 = 2112;
      v58 = v43;
      _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Operational fabric data was set successfully for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    [*(a1 + 40) setPairingTargetFabricData:*(a1 + 72) targetFabricUUID:*(a1 + 48)];
    if (isFeatureMatterRVCEnabled())
    {
      v44 = [v37 controller];
      v45 = objc_autoreleasePoolPush();
      v46 = *(a1 + 40);
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = *(a1 + 48);
        *buf = 138543874;
        v56 = v48;
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = v49;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_INFO, "%{public}@Retrieved controller %@ for fabric UUID %@ upon setting the startup parameters", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v45);
    }

    v50 = *(a1 + 80);
    if (v50)
    {
      [*(a1 + 40) updateDiscoveredAccessoryServersWithNodes:v50 fabricUUID:*(a1 + 48)];
      v51 = [*(a1 + 40) deviceControllerForFabricUUID:*(a1 + 48)];
    }
  }

  else
  {
    if (v41)
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(a1 + 48);
      *buf = 138543618;
      v56 = v52;
      v57 = 2112;
      v58 = v53;
      _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@Operational fabric data wasn't set for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    [*(a1 + 40) setPairingTargetFabricData:0 targetFabricUUID:*(a1 + 48)];
  }
}

- (void)_clearLocallyDiscoveredFlags
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  discoveredAccessoryServers = [(HMMTRAccessoryServerBrowser *)self discoveredAccessoryServers];
  v3 = [discoveredAccessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(discoveredAccessoryServers);
        }

        [*(*(&v7 + 1) + 8 * v6++) setLocallyDiscovered:0];
      }

      while (v4 != v6);
      v4 = [discoveredAccessoryServers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_cleanupDisappearedServersOverBLE
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138543874;
    v24 = v6;
    v25 = v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if ([v10 discoveredOverBLE] && objc_msgSend(v10, "bleScanPending"))
        {
          [v10 setLocallyDiscovered:0];
          setupPayloadString = [v10 setupPayloadString];

          if (setupPayloadString)
          {
            [v10 setDiscoveredOverBLE:0];
          }

          else if (([v10 isPairingInProgress] & 1) == 0 && (!objc_msgSend(v10, "pairedState") || objc_msgSend(v10, "isDisabled")))
          {
            v12 = objc_autoreleasePoolPush();
            selfCopy = self;
            v14 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v15 = v26 = v12;
              identifier = [v10 identifier];
              *buf = v24;
              v37 = v15;
              v38 = 2112;
              v39 = identifier;
              v40 = 1024;
              v41 = 0;
              _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalidating server disappeared from BLE, id %@, pairingInProgress %d", buf, 0x1Cu);

              v3 = v25;
              v12 = v26;
            }

            objc_autoreleasePoolPop(v12);
            [v3 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v3;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:13];
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v22 reason:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)_prepareServerForBLEDiscovery
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_discoveredAccessoryServers;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 discoveredOverBLE])
        {
          [v7 setBleScanPending:1];
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_cleanupLocallyDiscoveredServers
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    *&v6 = 138543618;
    v25 = v6;
    selfCopy = self;
    v27 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 locallyDiscovered] && (!objc_msgSend(v10, "pairedState") && !objc_msgSend(v10, "isPairingInProgress") || objc_msgSend(v10, "isDisabled")))
        {
          v11 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v14 = v3;
            [v10 identifier];
            v17 = v16 = v8;
            *buf = v25;
            v38 = v15;
            v39 = 2112;
            v40 = v17;
            _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Invalidating only locally discovered server, id %@", buf, 0x16u);

            v8 = v16;
            v3 = v14;
            self = selfCopy;
            v4 = v27;
          }

          objc_autoreleasePoolPop(v11);
          [v10 setLocallyDiscovered:0];
          [v3 addObject:v10];
        }
      }

      v7 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v3;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        v24 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
        [(HMMTRAccessoryServerBrowser *)self invalidateAccessoryServer:v23 reason:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }
}

- (void)_handleBonjourRemoveWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD txtRecordRemove:(BOOL)remove
{
  removeCopy = remove;
  v27 = *MEMORY[0x277D85DE8];
  discriminatorCopy = discriminator;
  dCopy = d;
  iDCopy = iD;
  v13 = [(HMMTRAccessoryServerBrowser *)self _discoveredServerWithDiscriminator:discriminatorCopy vendorID:dCopy productID:iDCopy];
  if ([v13 locallyDiscovered])
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      if (removeCopy)
      {
        v18 = "remove";
      }

      else
      {
        v18 = "non-commissioning";
      }

      identifier = [v13 identifier];
      v21 = 138543874;
      v22 = v17;
      v23 = 2080;
      v24 = v18;
      v25 = 2112;
      v26 = identifier;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Received bonjour %s for server id %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [v13 setLocallyDiscovered:0];
    if (([v13 isPairingInProgress] & 1) == 0 && (!objc_msgSend(v13, "pairedState") || objc_msgSend(v13, "isDisabled")))
    {
      v20 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:13];
      [(HMMTRAccessoryServerBrowser *)selfCopy invalidateAccessoryServer:v13 reason:v20];
    }
  }
}

- (void)_handleAddOrUpdateWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD overBLE:(BOOL)e
{
  discriminatorCopy = discriminator;
  dCopy = d;
  iDCopy = iD;
  v13 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:9];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke;
  v17[3] = &unk_2786EEA68;
  v17[4] = self;
  v18 = discriminatorCopy;
  v19 = dCopy;
  v20 = iDCopy;
  eCopy = e;
  v14 = iDCopy;
  v15 = dCopy;
  v16 = discriminatorCopy;
  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServersWithReason:v13 completion:v17];
}

void __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _discoveredServerWithDiscriminator:*(a1 + 40) vendorID:*(a1 + 48) productID:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    if ([v2 pairedState] && !objc_msgSend(v3, "isDisabled"))
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v3 identifier];
        v35 = v34;
        v36 = *(a1 + 64);
        *buf = 138543874;
        v46 = v33;
        if (v36)
        {
          v37 = "BLE";
        }

        else
        {
          v37 = "Bonjour";
        }

        v47 = 2114;
        v48 = v34;
        v49 = 2080;
        v50 = v37;
        _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@CHIP accessory server %{public}@ paired or being paired was unexpectedly discovered over %s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
    }

    else
    {
      if (*(a1 + 64) != 1 || ![v3 locallyDiscovered] || !objc_msgSend(v3, "discoveredOverBLE") || objc_msgSend(v3, "bleScanPending"))
      {
        v4 = objc_autoreleasePoolPush();
        v5 = *(a1 + 32);
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = HMFGetLogIdentifier();
          v8 = [v3 identifier];
          v9 = v8;
          v10 = *(a1 + 64);
          *buf = 138543874;
          v46 = v7;
          if (v10)
          {
            v11 = "BLE";
          }

          else
          {
            v11 = "Bonjour";
          }

          v47 = 2114;
          v48 = v8;
          v49 = 2080;
          v50 = v11;
          _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Updating CHIP accessory server %{public}@ with new discovery over %s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v4);
      }

      [v3 setLocallyDiscovered:1];
      [v3 setDiscoveredOverBLE:*(a1 + 64)];
      [v3 setBleScanPending:0];
    }
  }

  else
  {
    v12 = [HMMTRAccessoryServerFactory alloc];
    v13 = [*(a1 + 32) keyStore];
    v14 = [(HMMTRAccessoryServerFactory *)v12 initWithKeystore:v13 browser:*(a1 + 32)];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "_generateNodeID")}];
    v16 = [(HMMTRAccessoryServerFactory *)v14 vendAccessoryServerWithNodeID:v15 setupCode:0 discriminator:*(a1 + 40) category:0 vendorID:*(a1 + 48) productID:*(a1 + 56) serialNumber:0 firmwareRevision:@"1.0.0"];
    v17 = v16;
    if (v16)
    {
      [v16 setFabricID:0];
      [v17 setKnownToSystemCommissioner:0];
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v21 = v42 = v14;
        v22 = [v17 name];
        v23 = [v17 identifier];
        v24 = v23;
        v25 = *(a1 + 64);
        v26 = *(a1 + 40);
        *buf = 138544386;
        if (v25)
        {
          v27 = "BLE";
        }

        else
        {
          v27 = "Bonjour";
        }

        v46 = v21;
        v47 = 2112;
        v48 = v22;
        v49 = 2114;
        v50 = v23;
        v51 = 2080;
        v52 = v27;
        v53 = 2112;
        v54 = v26;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Discovered new accessory server %@/%{public}@ with new discovery over %s, D=%@", buf, 0x34u);

        v14 = v42;
      }

      objc_autoreleasePoolPop(v18);
      [v17 setLocallyDiscovered:1];
      [v17 setDiscoveredOverBLE:*(a1 + 64)];
      [v17 setBleScanPending:0];
      v28 = [*(a1 + 32) discoveredAccessoryServers];
      [v28 addObject:v17];

      if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServerBrowser_didFindAccessoryServer_stateChanged_stateNumber_])
      {
        v29 = [*(a1 + 32) delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke_170;
        block[3] = &unk_2786EF328;
        block[4] = *(a1 + 32);
        v44 = v17;
        dispatch_async(v29, block);
      }

      [v17 registerForNotifications:*(a1 + 32)];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 32);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v41;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an accessory server from a new discovery", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
    }
  }

  [*(a1 + 32) _updatePairingMetricsUponAccessoryDiscovery];
}

void __94__HMMTRAccessoryServerBrowser__handleAddOrUpdateWithDiscriminator_vendorID_productID_overBLE___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServerBrowser:*(a1 + 32) didFindAccessoryServer:*(a1 + 40) stateChanged:0 stateNumber:0];
}

- (void)_updatePairingMetricsUponAccessoryDiscovery
{
  v15 = *MEMORY[0x277D85DE8];
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_discoveredAccessoryServers;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isPairingInProgress])
        {
          if ([v9 accessoryWithSameDiscriminatorDiscovered])
          {
            [v9 notifyDelegateOfAccessoryMatchingCommissioningDiscriminatorDiscovered];
          }

          goto LABEL_12;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
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

- (BOOL)locallyDiscoveredAccessoryServerMatchesDiscriminatorOfSetupPayload:(id)payload
{
  v32 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSMutableSet *)self->_discoveredAccessoryServers copy];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isLocallyDiscoveredAndMatchesDiscriminatorOfSetupPayload:payloadCopy])
        {
          v12 = objc_autoreleasePoolPush();
          selfCopy = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            discriminator = [payloadCopy discriminator];
            [payloadCopy hasShortDiscriminator];
            v17 = HMFBooleanToString();
            *buf = 138544130;
            v24 = v15;
            v25 = 2112;
            v26 = v10;
            v27 = 2112;
            v28 = discriminator;
            v29 = 2112;
            v30 = v17;
            _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Locally discovered server %@ matches the discriminator %@ (short %@)", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v12);
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_discoveredServerWithDiscriminator:(id)discriminator vendorID:(id)d productID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  discriminatorCopy = discriminator;
  dCopy = d;
  iDCopy = iD;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_discoveredAccessoryServers;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([v14 removalInProgress] & 1) == 0)
        {
          vendorID = [v14 vendorID];
          if (![vendorID isEqual:dCopy])
          {
            goto LABEL_12;
          }

          productID = [v14 productID];
          if (([productID isEqual:iDCopy] & 1) == 0)
          {

LABEL_12:
            continue;
          }

          v17 = [v14 doesMatchDiscriminator:discriminatorCopy];

          if (v17)
          {
            v11 = v14;
            goto LABEL_15;
          }
        }
      }

      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

LABEL_15:

  return v11;
}

- (int)_discriminator:(id *)_discriminator vendorID:(id *)d productID:(id *)iD CM:(id *)m fromTXTRecord:(id)record
{
  recordCopy = record;
  *_discriminator = 0;
  *d = 0;
  *iD = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__9232;
  v40 = __Block_byref_object_dispose__9233;
  v41 = &unk_283EE87C0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9232;
  v34 = __Block_byref_object_dispose__9233;
  v35 = &unk_283EE87C0;
  access_value[0] = MEMORY[0x277D85DD0];
  access_value[1] = 3221225472;
  access_value[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke;
  access_value[3] = &unk_2786EEA18;
  access_value[4] = self;
  access_value[5] = &v36;
  access_value[6] = &v30;
  if (nw_txt_record_access_key(recordCopy, "VP", access_value))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__9232;
    v27 = __Block_byref_object_dispose__9233;
    v28 = &unk_283EE87C0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_161;
    v22[3] = &unk_2786EEA40;
    v22[4] = self;
    v22[5] = &v23;
    if (nw_txt_record_access_key(recordCopy, "D", v22))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__9232;
      v20 = __Block_byref_object_dispose__9233;
      v21 = &unk_283EE87C0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_163;
      v15[3] = &unk_2786EEA40;
      v15[4] = self;
      v15[5] = &v16;
      nw_txt_record_access_key(recordCopy, "CM", v15);
      *d = v37[5];
      *iD = v31[5];
      *_discriminator = v24[5];
      *m = v17[5];
      _Block_object_dispose(&v16, 8);

      v13 = 0;
    }

    else
    {
      v13 = -6737;
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = -6737;
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  return v13;
}

uint64_t __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v7 = [v6 componentsSeparatedByString:@"+"];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v34 = 138543874;
      v35 = v11;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@VP value: %@, split int components: %@", &v34, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if ([v7 count] == 2)
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v7 objectAtIndexedSubscript:0];
      v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = MEMORY[0x277CCABB0];
      v18 = [v7 objectAtIndexedSubscript:1];
      v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue")}];
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      if (([*(*(*(a1 + 40) + 8) + 40) isEqual:&unk_283EE87C0] & 1) == 0 && !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isEqual:", &unk_283EE87C0))
      {
        v32 = 1;
        goto LABEL_16;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v25;
        v36 = 2112;
        v37 = v7;
        v26 = "%{public}@Invalid VP values in TXT record: %@";
LABEL_14:
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, v26, &v34, 0x16u);
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v25;
        v36 = 2112;
        v37 = v6;
        v26 = "%{public}@Invalid VP value format in TXT record: %@";
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v22);
    v32 = 0;
LABEL_16:

    return v32;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = *(a1 + 32);
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v34 = 138543618;
    v35 = v31;
    v36 = 1024;
    LODWORD(v37) = a3;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Missing VP value in TXT record: %d", &v34, 0x12u);
  }

  objc_autoreleasePoolPop(v28);
  return 0;
}

uint64_t __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_161(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "integerValue")}];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(*(a1 + 40) + 8) + 40) isEqual:&unk_283EE87C0];
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(*(*(a1 + 40) + 8) + 40);
        v22 = 138543618;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid discriminator value in TXT record: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    v16 = v10 ^ 1u;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Missing discriminator value in TXT record", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    return 0;
  }

  return v16;
}

BOOL __82__HMMTRAccessoryServerBrowser__discriminator_vendorID_productID_CM_fromTXTRecord___block_invoke_163(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Missing CM value in TXT record", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  return a3 == 4;
}

- (void)_handleBonjourBrowserBatchResults
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v65 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Handle bonjour results batch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(HMMTRAccessoryServerBrowser *)selfCopy bonjourBrowserChanges];
  v7 = selfCopy;
  v50 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v50)
  {
    v49 = *v61;
    v9 = 0x277CBE000uLL;
    *&v8 = 138543874;
    v45 = v8;
    v47 = selfCopy;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        v12 = [v11 objectAtIndexedSubscript:{0, v45}];
        v13 = [v11 objectAtIndexedSubscript:1];
        null = [*(v9 + 2920) null];
        v15 = [v12 isEqual:null];

        if (v15)
        {

          v12 = 0;
        }

        null2 = [*(v9 + 2920) null];
        v17 = [v13 isEqual:null2];

        if (v17)
        {

          v13 = 0;
        }

        v18 = objc_autoreleasePoolPush();
        v19 = v7;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = HMFGetLogIdentifier();
          *buf = v45;
          v65 = v21;
          v66 = 2112;
          v67 = v12;
          v68 = 2112;
          v69 = v13;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Batch result: %@ -> %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        changes = nw_browse_result_get_changes(v12, v13);
        v51 = v12;
        if ((changes & 0x22) != 0)
        {
          v23 = nw_browse_result_copy_txt_record_object(v13);
          v24 = objc_autoreleasePoolPush();
          v25 = v19;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v27;
            v66 = 2112;
            v67 = v23;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@New txt record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
          if (v23)
          {
            v48 = v13;
            v58 = 0;
            v59 = 0;
            v56 = 0;
            v57 = 0;
            v28 = [(HMMTRAccessoryServerBrowser *)v25 _discriminator:&v59 vendorID:&v58 productID:&v57 CM:&v56 fromTXTRecord:v23];
            v29 = v59;
            v30 = v58;
            v31 = v57;
            v32 = v56;
            v33 = v32;
            if (!v28)
            {
              if ([v32 isEqual:&unk_283EE87C0])
              {
                [(HMMTRAccessoryServerBrowser *)v25 _handleBonjourRemoveWithDiscriminator:v29 vendorID:v30 productID:v31 txtRecordRemove:0];
              }

              else
              {
                [(HMMTRAccessoryServerBrowser *)v25 _handleBonjourAddOrUpdateWithDiscriminator:v29 vendorID:v30 productID:v31];
              }
            }

            v7 = v47;
            v13 = v48;
          }

          v9 = 0x277CBE000;
          v12 = v51;
        }

        if ((changes & 4) != 0)
        {
          v34 = nw_browse_result_copy_txt_record_object(v12);
          v35 = objc_autoreleasePoolPush();
          v36 = v19;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v38;
            v66 = 2112;
            v67 = v34;
            _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Removed txt record: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          if (v34)
          {
            v54 = 0;
            v55 = 0;
            v52 = 0;
            v53 = 0;
            v39 = [(HMMTRAccessoryServerBrowser *)v36 _discriminator:&v55 vendorID:&v54 productID:&v53 CM:&v52 fromTXTRecord:v34];
            v40 = v55;
            v41 = v54;
            v42 = v53;
            v43 = v52;
            if (!v39)
            {
              [(HMMTRAccessoryServerBrowser *)v36 _handleBonjourRemoveWithDiscriminator:v40 vendorID:v41 productID:v42 txtRecordRemove:1];
            }

            v7 = v47;
            v9 = 0x277CBE000;
          }

          v12 = v51;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v50);
  }

  bonjourBrowserChanges = [(HMMTRAccessoryServerBrowser *)v7 bonjourBrowserChanges];
  [bonjourBrowserChanges removeAllObjects];
}

- (void)_queueBonjourBrowserOldResult:(id)result newResult:(id)newResult
{
  v23 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  newResultCopy = newResult;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = resultCopy;
    v21 = 2112;
    v22 = newResultCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Queued bonjour old result: %@, new result: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  bonjourBrowserChanges = [(HMMTRAccessoryServerBrowser *)selfCopy bonjourBrowserChanges];
  null = resultCopy;
  if (!resultCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = null;
  null2 = newResultCopy;
  if (!newResultCopy)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null2;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [bonjourBrowserChanges addObject:v15];

  if (!newResultCopy)
  {

    if (resultCopy)
    {
      goto LABEL_9;
    }

LABEL_11:

    goto LABEL_9;
  }

  if (!resultCopy)
  {
    goto LABEL_11;
  }

LABEL_9:
}

- (int)_initializeAndStartBonjourBrowser
{
  v30 = *MEMORY[0x277D85DE8];
  bonjourBrowser = [(HMMTRAccessoryServerBrowser *)self bonjourBrowser];

  v4 = bonjourBrowser == 0;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting Bonjour Browser...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HMMTRAccessoryServerBrowser *)selfCopy setBonjourBrowserChanges:v12];

    bonjour_service = nw_browse_descriptor_create_bonjour_service("_matterc._udp", "local");
    nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
    v14 = nw_browser_create(bonjour_service, 0);
    if (v14)
    {
      [(HMMTRAccessoryServerBrowser *)selfCopy setBonjourBrowser:v14];
      workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
      nw_browser_set_queue(v14, workQueue);

      objc_initWeak(buf, selfCopy);
      state_changed_handler[0] = MEMORY[0x277D85DD0];
      state_changed_handler[1] = 3221225472;
      state_changed_handler[2] = __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke;
      state_changed_handler[3] = &unk_2786EE9C8;
      objc_copyWeak(&v27, buf);
      v26 = v14;
      nw_browser_set_state_changed_handler(v26, state_changed_handler);
      bonjourBrowser2 = [(HMMTRAccessoryServerBrowser *)selfCopy bonjourBrowser];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke_149;
      handler[3] = &unk_2786EE9F0;
      objc_copyWeak(&v24, buf);
      nw_browser_set_browse_results_changed_handler(bonjourBrowser2, handler);

      bonjourBrowser3 = [(HMMTRAccessoryServerBrowser *)selfCopy bonjourBrowser];
      nw_browser_start(bonjourBrowser3);

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
      v10 = 0;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v21;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@nw_browser_create failed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v10 = -6728;
    }
  }

  else
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Bonjour Browser already active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return v10;
}

void __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v10;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Bonjour browser state: %d, error: %@", &v11, 0x1Cu);
  }

  objc_autoreleasePoolPop(v7);
  if (a2 == 2)
  {
    goto LABEL_6;
  }

  if (a2 == 3)
  {
    nw_browser_set_browse_results_changed_handler(*(a1 + 32), 0);
    nw_browser_set_state_changed_handler(*(a1 + 32), 0);
LABEL_6:
    [v8 setBonjourBrowser:0];
  }
}

void __64__HMMTRAccessoryServerBrowser__initializeAndStartBonjourBrowser__block_invoke_149(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queueBonjourBrowserOldResult:v8 newResult:v7];

  if (a4)
  {
    [WeakRetained _handleBonjourBrowserBatchResults];
  }
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling system keychain store updated notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HAPAccessoryServerBrowser *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMMTRAccessoryServerBrowser_handleSystemKeychainStoreUpdatedNotification___block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

void __76__HMMTRAccessoryServerBrowser_handleSystemKeychainStoreUpdatedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemCommissionerControllerParams];
  [v2 handleKeyPairDataChanged];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"HMMTRUserFabricKeyUpdatedNotification" object:*(a1 + 32)];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMMTRAccessoryServerBrowser_setDelegate_queue___block_invoke;
  v10[3] = &unk_2786EE9A0;
  objc_copyWeak(&v13, &location);
  v8 = delegateCopy;
  v11 = v8;
  v9 = queueCopy;
  v12 = v9;
  [(HMMTRAccessoryServerBrowser *)self dispatchBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __49__HMMTRAccessoryServerBrowser_setDelegate_queue___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Setting Delegate...", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [v4 setDelegate:*(a1 + 32)];
  [v4 setDelegateQueue:*(a1 + 40)];
}

- (id)discoveredAccessoryServers
{
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMMTRAccessoryServerBrowser *)self _cleanupDiscoveredServers];
  discoveredAccessoryServers = self->_discoveredAccessoryServers;

  return discoveredAccessoryServers;
}

- (id)appleHomeFabricWithTargetFabricUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    storage = [(HMMTRAccessoryServerBrowser *)self storage];
    dataSource = [storage dataSource];
    v7 = [dataSource appleHomeFabricWithTargetFabricUUID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)currentFabric
{
  currentFabricUUID = [(HMMTRAccessoryServerBrowser *)self currentFabricUUID];
  v4 = [(HMMTRAccessoryServerBrowser *)self appleHomeFabricWithTargetFabricUUID:currentFabricUUID];

  return v4;
}

- (BOOL)_isWedPollingDisabledForTests
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"hmmtr.thread.wed.polling.disable"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSData)systemCommissionerFabricRootPublicKey
{
  v18 = *MEMORY[0x277D85DE8];
  systemCommissionerNocSigner = [(HMMTRAccessoryServerBrowser *)self systemCommissionerNocSigner];
  v4 = systemCommissionerNocSigner;
  if (systemCommissionerNocSigner && [systemCommissionerNocSigner publicKey])
  {
    v0MatterKeypairFromKeychain = v4;
    goto LABEL_6;
  }

  systemCommissionerControllerParams = [(HMMTRAccessoryServerBrowser *)self systemCommissionerControllerParams];
  v0MatterKeypairFromKeychain = [systemCommissionerControllerParams v0MatterKeypairFromKeychain];

  if (v0MatterKeypairFromKeychain && [v0MatterKeypairFromKeychain publicKey])
  {
LABEL_6:
    v7 = SecKeyCopyExternalRepresentation([v0MatterKeypairFromKeychain publicKey], 0);
    if (v7)
    {
      v8 = v7;
      goto LABEL_14;
    }

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      v13 = "%{public}@Failed to fetch system commissioner fabric public key";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v12;
    v13 = "%{public}@Failed to fetch system commissioner fabric public key; Key-pair doesn't exist";
LABEL_12:
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, v13, &v16, 0xCu);
  }

LABEL_13:

  objc_autoreleasePoolPop(v9);
  v8 = 0;
LABEL_14:

  return v8;
}

- (void)dealloc
{
  homeKeychainReadyNotificationToken = self->_homeKeychainReadyNotificationToken;
  if (homeKeychainReadyNotificationToken)
  {
    notify_cancel(homeKeychainReadyNotificationToken);
  }

  mtsKeychainReadyNotificationToken = self->_mtsKeychainReadyNotificationToken;
  if (mtsKeychainReadyNotificationToken)
  {
    notify_cancel(mtsKeychainReadyNotificationToken);
  }

  if (self->_lockStateNotificationRegistered)
  {
    notify_cancel(self->_lockStateNotificationRegistrationToken);
  }

  v5.receiver = self;
  v5.super_class = HMMTRAccessoryServerBrowser;
  [(HMMTRAccessoryServerBrowser *)&v5 dealloc];
}

- (void)dispatchAfterConfiguration:(id)configuration
{
  block = configuration;
  if (isFeatureMatterRVCEnabled())
  {
    configureDispatchGroup = [(HMMTRAccessoryServerBrowser *)self configureDispatchGroup];
    workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
    dispatch_group_notify(configureDispatchGroup, workQueue, block);
  }

  else
  {
    [(HMMTRAccessoryServerBrowser *)self dispatchBlock:block];
  }
}

- (void)configure
{
  v29 = *MEMORY[0x277D85DE8];
  [(HMMTRAccessoryServerBrowser *)self _logHMMTRFeatures];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo productPlatform] == 4 && !-[HMMTRAccessoryServerBrowser isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident"))
  {
    controllerFactoryEnablePerPrimaryResidentConfirmationToken = [(HMMTRAccessoryServerBrowser *)self controllerFactoryEnablePerPrimaryResidentConfirmationToken];

    if (!controllerFactoryEnablePerPrimaryResidentConfirmationToken)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Disable controller factory operation while not a primary resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      controllerFactory = [(HMMTRAccessoryServerBrowser *)selfCopy controllerFactory];
      disableNormalOperation = [controllerFactory disableNormalOperation];
      [(HMMTRAccessoryServerBrowser *)selfCopy setControllerFactoryEnablePerPrimaryResidentConfirmationToken:disableNormalOperation];
    }
  }

  else
  {
  }

  out_token = 0;
  objc_initWeak(&location, self);
  workQueue = [(HAPAccessoryServerBrowser *)self workQueue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__HMMTRAccessoryServerBrowser_configure__block_invoke;
  handler[3] = &unk_2786EE978;
  objc_copyWeak(&v22, &location);
  v5 = notify_register_dispatch("com.apple.springboard.lockstate", &out_token, workQueue, handler);

  v6 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  if (v5)
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v9;
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to register a handler for lock state notification with status: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Registered lock state notification handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMMTRAccessoryServerBrowser *)selfCopy2 setLockStateNotificationRegistrationToken:out_token];
  }

  [(HMMTRAccessoryServerBrowser *)selfCopy2 setLockStateNotificationRegistered:v5 == 0];
  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() && CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v12 = dispatch_time(0, 150000000);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__HMMTRAccessoryServerBrowser_configure__block_invoke_141;
    v20[3] = &unk_2786F0CA8;
    v20[4] = selfCopy2;
    [(HMMTRAccessoryServerBrowser *)selfCopy2 dispatchAfter:v12 block:v20];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_logHMMTRFeatures
{
  v69 = *MEMORY[0x277D85DE8];
  if (!isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v10 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature is disabled";
    goto LABEL_8;
  }

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass != 3)
  {
    productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
    productPlatform = [productInfo2 productPlatform];

    if (productPlatform == 1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForMacEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      v29 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!AppBooleanValue)
      {
        if (v29)
        {
          v10 = HMFGetLogIdentifier();
          v67 = 138543362;
          v68 = v10;
          v11 = "%{public}@iPhoneOnly Pairing and Control feature for Mac is enabled";
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (!v29)
      {
        goto LABEL_9;
      }

      v10 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v10;
      v11 = "%{public}@iPhoneOnly Pairing and Control feature for Mac is enabled through profile";
    }

    else
    {
      v64 = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
      v6 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v8 = HMFGetOSLogHandle();
      v66 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v64)
      {
        if (v66)
        {
          v10 = HMFGetLogIdentifier();
          v67 = 138543362;
          v68 = v10;
          v11 = "%{public}@iPhoneOnly Pairing and Control feature is enabled";
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (!v66)
      {
        goto LABEL_9;
      }

      v10 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v10;
      v11 = "%{public}@iPhoneOnly Pairing and Control feature is enabled through profile";
    }

LABEL_8:
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_DEFAULT, v11, &v67, 0xCu);

    goto LABEL_9;
  }

  v5 = CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingForIPadEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v6 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature for iPad is enabled through profile";
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v10;
    v11 = "%{public}@iPhoneOnly Pairing and Control feature for iPad is enabled";
    goto LABEL_8;
  }

LABEL_9:

  objc_autoreleasePoolPop(v6);
  if (!isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v23;
    v24 = "%{public}@ThreadService feature is disabled";
    goto LABEL_39;
  }

  v13 = CFPreferencesGetAppBooleanValue(@"ThreadServiceEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v14 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v18;
    v19 = "%{public}@ThreadService feature is enabled through profile";
  }

  else
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v18;
    v19 = "%{public}@ThreadService feature is enabled";
  }

  _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEFAULT, v19, &v67, 0xCu);

LABEL_22:
  objc_autoreleasePoolPop(v14);
  v30 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy6;
  v33 = HMFGetOSLogHandle();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v30)
  {
    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v35;
    v36 = "%{public}@StartThreadOnWake feature is enabled through profile";
  }

  else
  {
    if (!v34)
    {
      goto LABEL_28;
    }

    v35 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v35;
    v36 = "%{public}@StartThreadOnWake feature is disabled";
  }

  _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_DEFAULT, v36, &v67, 0xCu);

LABEL_28:
  objc_autoreleasePoolPop(v31);
  v37 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeBypassAccessoryRequirement", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v38 = objc_autoreleasePoolPush();
  v39 = v32;
  v40 = HMFGetOSLogHandle();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (v37)
  {
    if (!v41)
    {
      goto LABEL_34;
    }

    v42 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v42;
    v43 = "%{public}@StartThreadOnWakeBypassAccessoryRequirement feature is enabled through profile";
  }

  else
  {
    if (!v41)
    {
      goto LABEL_34;
    }

    v42 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v42;
    v43 = "%{public}@StartThreadOnWakeBypassAccessoryRequirement feature is disabled";
  }

  _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_DEFAULT, v43, &v67, 0xCu);

LABEL_34:
  objc_autoreleasePoolPop(v38);
  v44 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeAllowHomeThreadStop", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0);
  v20 = objc_autoreleasePoolPush();
  v45 = v39;
  v22 = HMFGetOSLogHandle();
  v46 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v23;
    v24 = "%{public}@StartThreadOnWakeAllowHomeThreadStop feature is enabled through profile";
  }

  else
  {
    if (!v46)
    {
      goto LABEL_40;
    }

    v23 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v23;
    v24 = "%{public}@StartThreadOnWakeAllowHomeThreadStop feature is disabled";
  }

LABEL_39:
  _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEFAULT, v24, &v67, 0xCu);

LABEL_40:
  objc_autoreleasePoolPop(v20);
  if (_os_feature_enabled_impl())
  {
    v47 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v49 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v50 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v50;
    v51 = "%{public}@RVC feature is enabled";
  }

  else
  {
    v52 = HM_FEATURE_RVC_DEFAULTS_ENABLED();
    v47 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v49 = HMFGetOSLogHandle();
    v54 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      if (!v54)
      {
        goto LABEL_49;
      }

      v50 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v50;
      v51 = "%{public}@RVC feature is enabled through profile";
    }

    else
    {
      if (!v54)
      {
        goto LABEL_49;
      }

      v50 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v50;
      v51 = "%{public}@RVC feature is disabled";
    }
  }

  _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_DEFAULT, v51, &v67, 0xCu);

LABEL_49:
  objc_autoreleasePoolPop(v47);
  v57 = isFeatureMatterLocalFabricConfigEnabled(v55, v56);
  v58 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v60 = HMFGetOSLogHandle();
  v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT);
  if (v57)
  {
    if (v61)
    {
      v62 = HMFGetLogIdentifier();
      v67 = 138543362;
      v68 = v62;
      v63 = "%{public}@Local fabric config feature is enabled";
LABEL_54:
      _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_DEFAULT, v63, &v67, 0xCu);
    }
  }

  else if (v61)
  {
    v62 = HMFGetLogIdentifier();
    v67 = 138543362;
    v68 = v62;
    v63 = "%{public}@Local fabric config feature is disabled";
    goto LABEL_54;
  }

  objc_autoreleasePoolPop(v58);
}

- (void)clearSuspendedActiveSecondaryClientFabricUUIDs
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs removeAllObjects];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addSuspendedActiveSecondaryClientFabricUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs addObject:dsCopy];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (id)suspendedActiveSecondaryClientFabricUUIDs
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_suspendedActiveSecondaryClientFabricUUIDs copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (id)suspendedActiveClientFabricUUID
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSUUID *)self->_suspendedActiveClientFabricUUID copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (void)setSuspendedActiveClientFabricUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_fabricSetLock);
  v4 = dCopy;
  if (dCopy)
  {
    v4 = [(NSUUID *)dCopy copy];
  }

  suspendedActiveClientFabricUUID = self->_suspendedActiveClientFabricUUID;
  self->_suspendedActiveClientFabricUUID = v4;

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)removeFabricWithActiveSecondaryClients:(id)clients
{
  clientsCopy = clients;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients removeObject:clientsCopy];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addFabricWithActiveSecondaryClients:(id)clients
{
  clientsCopy = clients;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients addObject:clientsCopy];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)removeFabricWithActiveClients:(id)clients
{
  clientsCopy = clients;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveClients removeObject:clientsCopy];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (void)addFabricWithActiveClients:(id)clients
{
  clientsCopy = clients;
  os_unfair_lock_lock(&self->_fabricSetLock);
  [(NSMutableSet *)self->_fabricsWithActiveClients addObject:clientsCopy];

  os_unfair_lock_unlock(&self->_fabricSetLock);
}

- (NSSet)fabricsWithActiveSecondaryClients
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_fabricsWithActiveSecondaryClients copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (NSSet)fabricsWithActiveClients
{
  os_unfair_lock_lock(&self->_fabricSetLock);
  v3 = [(NSMutableSet *)self->_fabricsWithActiveClients copy];
  os_unfair_lock_unlock(&self->_fabricSetLock);

  return v3;
}

- (id)_populateControllerFactoryParams
{
  if ([(HMMTRAccessoryServerBrowser *)self _isPerControllerStorageEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = +[HMMTRControllerFactory factoryParamsWithCommonStorage];
    paaCertificates = [(HMMTRAttestationDataStore *)self->_attestationDataStore paaCertificates];
    [v3 setProductAttestationAuthorityCertificates:paaCertificates];

    cdCertificates = [(HMMTRAttestationDataStore *)self->_attestationDataStore cdCertificates];
    [v3 setCertificationDeclarationCertificates:cdCertificates];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      [v3 setOtaProviderDelegate:self->_otaProviderDelegate];
    }
  }

  return v3;
}

- (HMMTRAccessoryServerBrowser)initWithQueue:(id)queue storeDirectoryURL:(id)l dataSource:(id)source
{
  queueCopy = queue;
  lCopy = l;
  sourceCopy = source;
  v94.receiver = self;
  v94.super_class = HMMTRAccessoryServerBrowser;
  v11 = [(HAPAccessoryServerBrowser *)&v94 initWithQueue:queueCopy];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    discoveredAccessoryServers = v11->_discoveredAccessoryServers;
    v11->_discoveredAccessoryServers = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    stagedAccessoryServers = v11->_stagedAccessoryServers;
    v11->_stagedAccessoryServers = v14;

    v16 = [[HMMTRStorageEventDispatcher alloc] initWithQueue:queueCopy];
    storage = v11->_storage;
    v11->_storage = v16;

    [(HMMTRStorageEventDispatcher *)v11->_storage setDelegate:v11];
    v18 = objc_alloc_init(HMMTRResidentStateManager);
    residentStateManager = v11->_residentStateManager;
    v11->_residentStateManager = v18;

    v11->_browserState = 0;
    [(HMMTRResidentStateManager *)v11->_residentStateManager setDelegate:v11];
    v11->_fabricSetLock._os_unfair_lock_opaque = 0;
    v20 = [MEMORY[0x277CBEB58] set];
    fabricsWithActiveClients = v11->_fabricsWithActiveClients;
    v11->_fabricsWithActiveClients = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    fabricsWithActiveSecondaryClients = v11->_fabricsWithActiveSecondaryClients;
    v11->_fabricsWithActiveSecondaryClients = v22;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    fabricsWithActiveConnections = v11->_fabricsWithActiveConnections;
    v11->_fabricsWithActiveConnections = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    fabricsWithPendingConnections = v11->_fabricsWithPendingConnections;
    v11->_fabricsWithPendingConnections = orderedSet2;

    v28 = [MEMORY[0x277CBEB58] set];
    suspendedActiveSecondaryClientFabricUUIDs = v11->_suspendedActiveSecondaryClientFabricUUIDs;
    v11->_suspendedActiveSecondaryClientFabricUUIDs = v28;

    v11->_connectionRequestSuspended = 0;
    v30 = [MEMORY[0x277CBEB58] set];
    allowedNodeIDsForConnectionRequests = v11->_allowedNodeIDsForConnectionRequests;
    v11->_allowedNodeIDsForConnectionRequests = v30;

    v11->_commissioneeAccessoryServerLock._os_unfair_lock_opaque = 0;
    v32 = [sourceCopy makeThreadRadioManagerWithBrowser:v11];
    threadRadioManager = v11->_threadRadioManager;
    v11->_threadRadioManager = v32;

    v34 = [lCopy URLByAppendingPathComponent:@"chip-vendor-metadata"];
    v35 = [v34 URLByAppendingPathExtension:@"plist"];

    v93 = v35;
    v36 = [[HMMTRVendorMetadataFileStore alloc] initWithFileURL:v35];
    vendorMetadataStore = v11->_vendorMetadataStore;
    v11->_vendorMetadataStore = v36;

    v38 = [lCopy URLByAppendingPathComponent:@"chip-attestation-data-store"];
    v39 = [v38 URLByAppendingPathExtension:@"plist"];

    v40 = [[HMMTRAttestationDataStore alloc] initWithFileURL:v39];
    attestationDataStore = v11->_attestationDataStore;
    v11->_attestationDataStore = v40;

    v42 = [[HMMTRUIDialogPresenter alloc] initWithQueue:queueCopy context:v11];
    uiDialogPresenter = v11->_uiDialogPresenter;
    v11->_uiDialogPresenter = v42;

    v44 = [[HMMTRAttestationStatus alloc] initWithQueue:queueCopy uiDialogPresenter:v11->_uiDialogPresenter failSafeExpiryTimeoutSecs:&unk_283EE87A8];
    attestationStatus = v11->_attestationStatus;
    v11->_attestationStatus = v44;

    v92 = [[HMMTRUserAuthorizationForPairing alloc] initWithUiDialogPresenter:v11->_uiDialogPresenter];
    [(HMMTRAttestationStatus *)v11->_attestationStatus setUserAuthorizationDelegate:?];
    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v46 = [[HMMTRSoftwareUpdateProvider alloc] initWithQueue:queueCopy browser:v11];
      softwareUpdateProvider = v11->_softwareUpdateProvider;
      v11->_softwareUpdateProvider = v46;

      v48 = [[HMMTROTAProviderDelegate alloc] initWithQueue:queueCopy browser:v11];
      otaProviderDelegate = v11->_otaProviderDelegate;
      v11->_otaProviderDelegate = v48;

      v50 = [[HMMTRThreadSoftwareUpdateController alloc] initWithQueue:queueCopy browser:v11];
      threadSoftwareUpdateController = v11->_threadSoftwareUpdateController;
      v11->_threadSoftwareUpdateController = v50;
    }

    v52 = [sourceCopy makeSystemCommissionerPairingManagerWithQueue:queueCopy browser:v11];
    systemCommissionerPairingManager = v11->_systemCommissionerPairingManager;
    v11->_systemCommissionerPairingManager = v52;

    v11->_requestedBLEScan = 0;
    v11->_bleScanActive = 0;
    v11->_restartCount = 0;
    v54 = [MEMORY[0x277CBEB58] set];
    nodesWithPendingACLOverwrite = v11->_nodesWithPendingACLOverwrite;
    v11->_nodesWithPendingACLOverwrite = v54;

    v11->_systemCommissionerFeatureEnabled = [(HMMTRAccessoryServerBrowser *)v11 _isSystemCommissionerFeaturePreferenceEnabled];
    makeMatterKeypair = [sourceCopy makeMatterKeypair];
    ownerSharedOperationalKeyPair = v11->_ownerSharedOperationalKeyPair;
    v11->_ownerSharedOperationalKeyPair = makeMatterKeypair;

    v58 = objc_alloc_init(HMMTRRegulatoryInfo);
    regulatoryInfo = v11->_regulatoryInfo;
    v11->_regulatoryInfo = v58;

    v60 = [MEMORY[0x277CBEB58] set];
    nodesAddedToHome = v11->_nodesAddedToHome;
    v11->_nodesAddedToHome = v60;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v63 = *MEMORY[0x277CFE930];
    systemStore = [MEMORY[0x277CFEC78] systemStore];
    [defaultCenter addObserver:v11 selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:v63 object:systemStore];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMMTRThreadRadioStateChangedNotification" object:0];

    v66 = [HMMTRControllerFactory alloc];
    v67 = dispatch_queue_create("HMMTRControllerFactory queue", 0);
    _populateControllerFactoryParams = [(HMMTRAccessoryServerBrowser *)v11 _populateControllerFactoryParams];
    v69 = [(HMMTRControllerFactory *)v66 initWithWorkQueue:v67 factoryParams:_populateControllerFactoryParams];
    controllerFactory = v11->_controllerFactory;
    v11->_controllerFactory = v69;

    v71 = [HMMTRFabricControllerStore alloc];
    v72 = dispatch_queue_create("HMMTRFabricControllerStore queue", 0);
    v73 = [(HMMTRFabricControllerStore *)v71 initWithQueue:v72 controllerFactory:v11->_controllerFactory];
    homeFabricControllers = v11->_homeFabricControllers;
    v11->_homeFabricControllers = v73;

    v75 = [HMMTRSystemCommissionerControllerParams alloc];
    v76 = dispatch_queue_create("HMMTRSystemCommissionerControllerParams queue", 0);
    v77 = [(HMMTRSystemCommissionerControllerParams *)v75 initWithQueue:v76 controllerFactory:v11->_controllerFactory];
    systemCommissionerControllerParams = v11->_systemCommissionerControllerParams;
    v11->_systemCommissionerControllerParams = v77;

    if ([(HMMTRAccessoryServerBrowser *)v11 _isSystemCommissionerFeaturePreferenceEnabled]&& [(HMMTRAccessoryServerBrowser *)v11 _isPerControllerStorageEnabled])
    {
      paaCertificates = [(HMMTRAttestationDataStore *)v11->_attestationDataStore paaCertificates];
      [(HMMTRSystemCommissionerControllerParams *)v11->_systemCommissionerControllerParams setProductAttestationAuthorityCertificates:paaCertificates];

      cdCertificates = [(HMMTRAttestationDataStore *)v11->_attestationDataStore cdCertificates];
      [(HMMTRSystemCommissionerControllerParams *)v11->_systemCommissionerControllerParams setCertificationDeclarationCertificates:cdCertificates];
    }

    v81 = objc_alloc_init(HMMTRPairingWindowInfoTable);
    pairingWindowInfoTable = v11->_pairingWindowInfoTable;
    v11->_pairingWindowInfoTable = v81;

    array = [MEMORY[0x277CBEB18] array];
    deviceControllerHandlers = v11->_deviceControllerHandlers;
    v11->_deviceControllerHandlers = array;

    v85 = dispatch_group_create();
    configureDispatchGroup = v11->_configureDispatchGroup;
    v11->_configureDispatchGroup = v85;

    v11->_pairingTargetFabricDataLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    fabricDataPerPairingTargetFabricUUID = v11->_fabricDataPerPairingTargetFabricUUID;
    v11->_fabricDataPerPairingTargetFabricUUID = dictionary;

    uUID = [MEMORY[0x277CCAD78] UUID];
    systemCommissionerFabricUUID = v11->_systemCommissionerFabricUUID;
    v11->_systemCommissionerFabricUUID = uUID;
  }

  return v11;
}

uint64_t __42__HMMTRAccessoryServerBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v371;
  logCategory__hmf_once_v371 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end