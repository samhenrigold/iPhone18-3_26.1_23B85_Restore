@interface UARPController
- (BOOL)accessoryIDKnown:(id)known;
- (BOOL)accessoryKnown:(id)known;
- (BOOL)accessoryReachable:(id)reachable;
- (BOOL)accessoryReachableInternal:(id)internal;
- (BOOL)accessoryUnreachable:(id)unreachable;
- (BOOL)accessoryUnreachableInternal:(id)internal;
- (BOOL)addAccessory:(id)accessory assetID:(id)d;
- (BOOL)applyStagedFirmwareOnAccessoryList:(id)list withUserIntent:(BOOL)intent;
- (BOOL)cancelFirmwareStagingForAccessory:(id)accessory assetID:(id)d;
- (BOOL)changeAssetLocation:(id)location assetID:(id)d;
- (BOOL)checkForUpdate:(id)update;
- (BOOL)createUploader;
- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)d;
- (BOOL)downloadAvailableFirmwareUpdate:(id)update assetID:(id)d withUserIntent:(BOOL)intent;
- (BOOL)downloadReleaseNotes:(id)notes assetID:(id)d;
- (BOOL)dynamicAssetAvailableForAccessory:(id)accessory assetID:(id)d error:(id *)error;
- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)d;
- (BOOL)getAttestationCertificates:(id)certificates assetLocationType:(int64_t)type;
- (BOOL)getAttestationCertificatesInternal:(id)internal assetID:(id)d;
- (BOOL)getBatchedSupportedAccessories:(id)accessories assetLocationType:(int64_t)type;
- (BOOL)getSupportedAccessories:(id)accessories assetLocationType:(int64_t)type;
- (BOOL)getSupportedAccessoriesInternal:(id)internal assetID:(id)d batchRequest:(BOOL)request;
- (BOOL)pauseAssetTransfersForAccessory:(id)accessory;
- (BOOL)recvDataFromAccessory:(id)accessory data:(id)data error:(id *)error;
- (BOOL)registerForAssetAvailabilityNotification:(id)notification;
- (BOOL)registerForAttestationCertificatesAvailability:(id)availability;
- (BOOL)registerForGenericNotification:(id)notification notificationName:(id)name;
- (BOOL)registerForSupplementalAssetAvailabilityNotification:(id)notification;
- (BOOL)registerForSupportedAccessoriesAvailability:(id)availability;
- (BOOL)removeAccessory:(id)accessory;
- (BOOL)requestConsent:(id)consent;
- (BOOL)rescindStagedFirmwareOnAccessoryList:(id)list withUserIntent:(BOOL)intent;
- (BOOL)resumeAssetTransfersForAccessory:(id)accessory;
- (BOOL)revokeConsentRequest:(id)request;
- (BOOL)solicitDynamicAsset:(id)asset assetID:(id)d;
- (BOOL)stageFirmwareUpdateOnAccessoryList:(id)list withUserIntent:(BOOL)intent;
- (BOOL)startPacketCapture:(id)capture;
- (BOOL)startTapToRadar:(id)radar;
- (BOOL)triggerUnsolicitedDynamicAsset:(id)asset assetTag:(id)tag;
- (BOOL)updateProperty:(unint64_t)property value:(id)value forAccessory:(id)accessory;
- (NSArray)accessoryList;
- (UARPController)init;
- (UARPControllerDelegateProtocol)delegate;
- (id)assetAvailabilityTokenForAccessory:(id)accessory;
- (id)createSupportedAccessory:(id)accessory accessoryMetadata:(id)metadata;
- (id)pendingAssetForAccessory:(id)accessory assetID:(id)d;
- (id)pendingTatsuRequests;
- (id)personalizationHelperQueryPendingTssRequests:(id)requests;
- (id)supplementalAssetAvailabilityTokenForAccessory:(id)accessory;
- (id)unsolicitedDynamicAssetOffered:(id)offered assetID:(id)d;
- (int64_t)queryProperty:(unint64_t)property forAccessory:(id)accessory;
- (void)accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded;
- (void)assetAvailabilityNotificationPosted:(int)posted;
- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total;
- (void)assetStagingPause:(id)pause;
- (void)assetStagingResume:(id)resume;
- (void)availabilityNotificationForAttestationCertificatesPosted:(int)posted;
- (void)availabilityNotificationForSupportedAccessoriesPosted:(int)posted;
- (void)dealloc;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingDataBlockTransferred:(id)transferred assetID:(id)d offset:(unsigned int)offset blockSize:(unsigned int)size;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total filterProgress:(BOOL)filterProgress;
- (void)firmwareUpdateResult:(id)result vendorSpecificStatus:(unsigned int)status error:(id)error;
- (void)genericNotificationPosted:(int)posted;
- (void)handleReceivedAttestationCertificates:(id)certificates forSubjectKeyIdentifier:(id)identifier;
- (void)pendingTatsuRequests;
- (void)personalizationHelperTssResponse:(id)response updaterName:(id)name;
- (void)progressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)progressForUARPConsentInPostLogout:(id)logout bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory boardID:(unint64_t)d error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory chipID:(unint64_t)d error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory chipRevision:(unint64_t)revision error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory ecid:(unint64_t)ecid error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory enableMixMatch:(BOOL)match error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory epoch:(unint64_t)epoch error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory liveNonce:(BOOL)nonce error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manifestPrefix:(id)prefix error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory nonceHash:(id)hash error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory nonceSeed:(id)seed error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory prefixNeedsLUN:(BOOL)n error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory productionMode:(unint64_t)mode error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory securityDomain:(unint64_t)domain error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory securityMode:(unint64_t)mode error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory suffixNeedsLUN:(BOOL)n error:(id)error;
- (void)queryFirmwareUpdateResultForAccessory:(id)accessory;
- (void)sendFirmwareUpdateProgressForAccessory:(id)accessory assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)sendFirmwareUpdateProgressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg;
- (void)setChipInfoDelegate:(id)delegate;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
- (void)startPersonalizationHelperService:(id)service entitlement:(id)entitlement;
- (void)stopPacketCapture;
- (void)stopTapToRadar;
- (void)supplementalAssetAvailabilityNotificationPosted:(int)posted;
- (void)supplementalAssetAvailablityUpdateForAccessory:(id)accessory assetName:(id)name;
- (void)supplementalAssetAvailablityUpdateForAccessoryID:(id)d assetName:(id)name;
- (void)supportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete;
- (void)tssResponse:(id)response;
- (void)unregisterForAllAssetAvailabilityNotifications;
- (void)unregisterForAllAttestationCertificatesAvailabilityNotifications;
- (void)unregisterForAllGenericNotifications;
- (void)unregisterForAllSupplementalAssetAvailabilityNotifications;
- (void)unregisterForAssetAvailabilityNotification:(id)notification;
- (void)unregisterForAttestationCertificatesAvailability:(int)availability;
- (void)unregisterForSupplementalAssetAvailabilityNotification:(id)notification;
- (void)unregisterForSupportedAccessoriesAvailability:(int)availability;
- (void)updatePendingAssetsForAccessory:(id)accessory assetID:(id)d;
@end

@implementation UARPController

- (UARPController)init
{
  v32.receiver = self;
  v32.super_class = UARPController;
  v2 = [(UARPController *)&v32 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    accessories = v2->_accessories;
    v2->_accessories = dictionary;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    assetCache = v2->_assetCache;
    v2->_assetCache = v5;

    v7 = dispatch_queue_create("UARPController internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;

    v9 = dispatch_queue_create("UARPController delegate", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v9;

    v11 = os_log_create("com.apple.accessoryupdater.uarp", "xpc");
    xpcLog = v2->_xpcLog;
    v2->_xpcLog = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "uarpController");
    controllerLog = v2->_controllerLog;
    v2->_controllerLog = v13;

    v15 = [[UARPControllerXPC alloc] initWithController:v2];
    internalDelegate = v2->_internalDelegate;
    v2->_internalDelegate = v15;

    v17 = objc_alloc_init(UARPPowerLogManager);
    powerLogManager = v2->_powerLogManager;
    v2->_powerLogManager = v17;

    v19 = [[UARPAnalyticsUpdateFirmwareManager alloc] initWithController:v2 queue:v2->_internalQueue];
    updateFirmwareAnalytics = v2->_updateFirmwareAnalytics;
    v2->_updateFirmwareAnalytics = v19;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    assetAvailabilityNotificationTokenDict = v2->_assetAvailabilityNotificationTokenDict;
    v2->_assetAvailabilityNotificationTokenDict = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    supplementalAssetAvailabilityNotificationTokenDict = v2->_supplementalAssetAvailabilityNotificationTokenDict;
    v2->_supplementalAssetAvailabilityNotificationTokenDict = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    assetAvailabilityUARPProductGroupNotificationTokenDict = v2->_assetAvailabilityUARPProductGroupNotificationTokenDict;
    v2->_assetAvailabilityUARPProductGroupNotificationTokenDict = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = v2->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
    v2->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = dictionary5;

    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    generalNotificationTokenDict = v2->_generalNotificationTokenDict;
    v2->_generalNotificationTokenDict = dictionary6;

    v2->_isInternalBuild = MGGetBoolAnswer();
  }

  return v2;
}

- (void)setChipInfoDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = self;
  objc_sync_enter(obj);
  chipInfoDelegate = obj->_chipInfoDelegate;
  obj->_chipInfoDelegate = delegateCopy;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(UARPController *)self unregisterForAllAssetAvailabilityNotifications];
  [(UARPController *)self unregisterForAllSupplementalAssetAvailabilityNotifications];
  [(UARPController *)self unregisterForAllGenericNotifications];
  [(UARPController *)self unregisterForAllAttestationCertificatesAvailabilityNotifications];
  v3.receiver = self;
  v3.super_class = UARPController;
  [(UARPController *)&v3 dealloc];
}

- (BOOL)accessoryReachableInternal:(id)internal
{
  v18 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  accessories = self->_accessories;
  getID = [internalCopy getID];
  v7 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:getID];

  [v7 setSuppressAutomaticDynamicAssets:{objc_msgSend(internalCopy, "suppressAutomaticDynamicAssets")}];
  [v7 setSuppressInfoQueries:{objc_msgSend(internalCopy, "suppressInfoQueries")}];
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = internalCopy;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Accessory reported as reachable %@", &v16, 0xCu);
  }

  if (![(UARPController *)self createUploader])
  {
    goto LABEL_12;
  }

  if (v7)
  {
    reachable = [v7 reachable];
    v10 = self->_controllerLog;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (reachable)
    {
      if (v11)
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is already reachable %@", &v16, 0xCu);
      }

      goto LABEL_11;
    }

    if (v11)
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is newly reachable %@", &v16, 0xCu);
    }

    [v7 setReachable:1];
    if ([(UARPUploader *)self->_uploader accessoryReachable:internalCopy error:0])
    {
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

LABEL_11:
  powerLogManager = self->_powerLogManager;
  getID2 = [internalCopy getID];
  [(UARPPowerLogManager *)powerLogManager setAccessoryIDReachable:getID2];

  v14 = 1;
LABEL_13:

  return v14;
}

- (BOOL)accessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__UARPController_accessoryReachable___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = reachableCopy;
  v10 = &v11;
  block[4] = self;
  v6 = reachableCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__37__UARPController_accessoryReachable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessoryReachableInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)accessoryUnreachableInternal:(id)internal
{
  v40 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  accessories = self->_accessories;
  getID = [internalCopy getID];
  v7 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:getID];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = internalCopy;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Accessory reported as unreachable %@", buf, 0xCu);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  reachable = [v7 reachable];
  v10 = self->_controllerLog;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!reachable)
  {
    if (v11)
    {
      *buf = 138412290;
      v36 = v7;
      v24 = 1;
      _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is already unreachable %@", buf, 0xCu);
    }

    else
    {
      v24 = 1;
    }

    goto LABEL_24;
  }

  if (v11)
  {
    *buf = 138412290;
    v36 = v7;
    _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Accessory is newly unreachable %@", buf, 0xCu);
  }

  if (![(UARPUploader *)self->_uploader accessoryUnreachable:internalCopy error:0])
  {
LABEL_20:
    v24 = 0;
    goto LABEL_24;
  }

  v30 = internalCopy;
  [v7 setReachable:0];
  pendingAssets = [v7 pendingAssets];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = [pendingAssets countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(pendingAssets);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 id];
        getID2 = [v7 getID];
        v20 = [v18 isStagingInProgressOnAccessoryID:getID2];

        if (v20)
        {
          v21 = self->_controllerLog;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v17;
            v37 = 2112;
            v38 = v7;
            _os_log_impl(&dword_247AA7000, v21, OS_LOG_TYPE_DEFAULT, "Asset %@ not being staged anymore on %@", buf, 0x16u);
          }

          v22 = [v17 id];
          getID3 = [v7 getID];
          [v22 stagingCompleteOnAccessoryID:getID3];
        }
      }

      v14 = [pendingAssets countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v14);
  }

  v24 = 1;
  internalCopy = v30;
LABEL_24:
  updateFirmwareAnalytics = self->_updateFirmwareAnalytics;
  getID4 = [internalCopy getID];
  [(UARPAnalyticsUpdateFirmwareManager *)updateFirmwareAnalytics setAccessoryIDUnreachable:getID4];

  powerLogManager = self->_powerLogManager;
  getID5 = [internalCopy getID];
  [(UARPPowerLogManager *)powerLogManager setAccessoryIDUnreachable:getID5];

  return v24;
}

- (BOOL)accessoryUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UARPController_accessoryUnreachable___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = unreachableCopy;
  v10 = &v11;
  block[4] = self;
  v6 = unreachableCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__39__UARPController_accessoryUnreachable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessoryUnreachableInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (NSArray)accessoryList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__UARPController_accessoryList__block_invoke;
  v5[3] = &unk_278EC2878;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__UARPController_accessoryList__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)stageFirmwareUpdateOnAccessoryList:(id)list withUserIntent:(BOOL)intent
{
  listCopy = list;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__UARPController_stageFirmwareUpdateOnAccessoryList_withUserIntent___block_invoke;
  block[3] = &unk_278EC28A0;
  v11 = listCopy;
  selfCopy = self;
  intentCopy = intent;
  v8 = listCopy;
  dispatch_sync(internalQueue, block);

  return 1;
}

void __68__UARPController_stageFirmwareUpdateOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v28 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v28)
  {
    v27 = *v38;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v37 + 1) + 8 * i);
        v4 = *(*(a1 + 40) + 32);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v3;
          _os_log_impl(&dword_247AA7000, v4, OS_LOG_TYPE_INFO, "stage assets for accessory %@", buf, 0xCu);
        }

        v5 = [v3 pendingAssets];
        if ([v5 count])
        {
          v29 = v5;
          v30 = i;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v32 = v5;
          v6 = [v32 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v34;
            do
            {
              v9 = 0;
              v31 = v7;
              do
              {
                if (*v34 != v8)
                {
                  objc_enumerationMutation(v32);
                }

                v10 = *(*(&v33 + 1) + 8 * v9);
                v11 = [v10 id];
                v12 = [v3 getID];
                v13 = [v11 isStagingInProgressOnAccessoryID:v12];

                v14 = *(*(a1 + 40) + 32);
                if (v13)
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v42 = v10;
                    v43 = 2112;
                    v44 = v3;
                    _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_DEFAULT, "Asset %@ already being staged on accessory %@", buf, 0x16u);
                  }
                }

                else
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v42 = v10;
                    v43 = 2112;
                    v44 = v3;
                    _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "staging %@ for accessory %@", buf, 0x16u);
                  }

                  [v3 setFirmwareUpdateBytesTotal:{objc_msgSend(v10, "fileLength")}];
                  v15 = [v10 id];
                  v16 = [v3 getID];
                  [v15 stagingStartedOnAccessoryID:v16];

                  v17 = *(*(a1 + 40) + 88);
                  v18 = [v3 getID];
                  v19 = [v10 id];
                  [v17 stagingStartedForAccessoryID:v18 assetID:v19 userIntent:*(a1 + 48)];

                  v20 = *(*(a1 + 40) + 144);
                  v21 = [v3 getID];
                  v22 = [v10 id];
                  v23 = [v22 assetVersion];
                  v24 = [v3 firmwareVersion];
                  [v20 setAssetOfferedForAccessoryID:v21 offeredFirmwareVersion:v23 activeFirmwareVersion:v24];

                  [*(*(a1 + 40) + 64) offerAssetToAccessory:v3 asset:v10 error:0];
                  v7 = v31;
                }

                ++v9;
              }

              while (v7 != v9);
              v7 = [v32 countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v7);
          }

          v5 = v29;
          i = v30;
        }

        else
        {
          v25 = *(*(a1 + 40) + 32);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v3;
            _os_log_impl(&dword_247AA7000, v25, OS_LOG_TYPE_INFO, "no assets to stage for accessory %@", buf, 0xCu);
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v28);
  }
}

- (BOOL)applyStagedFirmwareOnAccessoryList:(id)list withUserIntent:(BOOL)intent
{
  listCopy = list;
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__UARPController_applyStagedFirmwareOnAccessoryList_withUserIntent___block_invoke;
  v9[3] = &unk_278EC1140;
  v10 = listCopy;
  selfCopy = self;
  v7 = listCopy;
  dispatch_sync(internalQueue, v9);

  return 1;
}

void __68__UARPController_applyStagedFirmwareOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 64) applyStagedAssetsForAccessory:*(*(&v7 + 1) + 8 * v6++) error:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)rescindStagedFirmwareOnAccessoryList:(id)list withUserIntent:(BOOL)intent
{
  listCopy = list;
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__UARPController_rescindStagedFirmwareOnAccessoryList_withUserIntent___block_invoke;
  v9[3] = &unk_278EC1140;
  v10 = listCopy;
  selfCopy = self;
  v7 = listCopy;
  dispatch_sync(internalQueue, v9);

  return 1;
}

void __70__UARPController_rescindStagedFirmwareOnAccessoryList_withUserIntent___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 64) rescindStagedAssetsForAccessory:*(*(&v7 + 1) + 8 * v6++) error:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)cancelFirmwareStagingForAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke;
  v12[3] = &unk_278EC28C8;
  v12[4] = self;
  v13 = accessoryCopy;
  v14 = dCopy;
  v15 = &v16;
  v9 = dCopy;
  v10 = accessoryCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = [*(a1 + 32) pendingAssetForAccessory:*(a1 + 40) assetID:*(a1 + 48)];
  v4 = *(v2 - 8);
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(v4 + 64) cancelAssetStagingForAccessory:*(a1 + 40) asset:v3];
  }

  else if (os_log_type_enabled(*(v4 + 32), OS_LOG_TYPE_ERROR))
  {
    __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke_cold_1();
  }
}

- (BOOL)recvDataFromAccessory:(id)accessory data:(id)data error:(id *)error
{
  accessoryCopy = accessory;
  dataCopy = data;
  if ([dataCopy length])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__UARPController_recvDataFromAccessory_data_error___block_invoke;
    block[3] = &unk_278EC28F0;
    v16 = &v24;
    block[4] = self;
    v14 = accessoryCopy;
    v15 = dataCopy;
    v17 = &v18;
    dispatch_sync(internalQueue, block);
    if (error)
    {
      *error = v19[5];
    }

    v11 = *(v25 + 24);

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController recvDataFromAccessory:data:error:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

void __51__UARPController_recvDataFromAccessory_data_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 64);
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 recvDataFromAccessory:v2 data:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
  v7 = a1[6];
  if (*(*(a1[7] + 8) + 24))
  {
    v8 = 0;
  }

  else
  {
    v8 = 11;
  }

  v9 = a1[5];
  v10 = *(a1[4] + 96);
  v11 = [v9 getID];
  [v10 dump:v7 accessoryID:v11 uarpStatus:v8 direction:1];
}

- (BOOL)accessoryKnown:(id)known
{
  accessories = self->_accessories;
  getID = [known getID];
  v5 = [(NSMutableDictionary *)accessories objectForKeyedSubscript:getID];
  LOBYTE(accessories) = v5 != 0;

  return accessories;
}

- (BOOL)accessoryIDKnown:(id)known
{
  v3 = [(NSMutableDictionary *)self->_accessories objectForKeyedSubscript:known];
  v4 = v3 != 0;

  return v4;
}

- (void)updatePendingAssetsForAccessory:(id)accessory assetID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  localURL = [dCopy localURL];
  if (!localURL || [dCopy downloadStatus] != 1)
  {
    goto LABEL_21;
  }

  updateAvailabilityStatus = [dCopy updateAvailabilityStatus];

  if (updateAvailabilityStatus == 3)
  {
    localURL = [(UARPController *)self pendingAssetForAccessory:accessoryCopy assetID:dCopy];
    if (localURL)
    {
      xpcLog = self->_xpcLog;
      if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
        v25 = 2112;
        v26 = dCopy;
        _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_DEFAULT, "%s: AssetID %@ already present in accessory's pending list", &v23, 0x16u);
      }

      goto LABEL_21;
    }

    v11 = [(NSCache *)self->_assetCache objectForKey:dCopy];
    if (!v11)
    {
      v12 = [(UARPControllerInternalDelegate *)self->_internalDelegate getSandboxExtensionTokenForAssetID:dCopy];
      v13 = [UARPAsset alloc];
      if (v12)
      {
        v14 = [(UARPAsset *)v13 initWithID:dCopy sandboxToken:v12];
      }

      else
      {
        v14 = [(UARPAsset *)v13 initWithID:dCopy];
      }

      v11 = v14;
      if (!v14)
      {
        v22 = self->_xpcLog;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [UARPController updatePendingAssetsForAccessory:v22 assetID:?];
        }

        goto LABEL_20;
      }

      [(NSCache *)self->_assetCache setObject:v14 forKey:dCopy];
    }

    v15 = self->_xpcLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      pendingAssets = [accessoryCopy pendingAssets];
      v23 = 136315650;
      v24 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v25 = 2112;
      v26 = accessoryCopy;
      v27 = 2112;
      v28 = pendingAssets;
      _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Current PendingAssetList for %@: %@", &v23, 0x20u);
    }

    v18 = self->_xpcLog;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_DEFAULT, "%s: Adding Asset %@", &v23, 0x16u);
    }

    [accessoryCopy addPendingAsset:v11];
    v19 = self->_xpcLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      pendingAssets2 = [accessoryCopy pendingAssets];
      v23 = 136315650;
      v24 = "[UARPController updatePendingAssetsForAccessory:assetID:]";
      v25 = 2112;
      v26 = accessoryCopy;
      v27 = 2112;
      v28 = pendingAssets2;
      _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Updated PendingAssetList for %@: %@", &v23, 0x20u);
    }

    v12 = v11;
LABEL_20:

LABEL_21:
  }
}

- (id)pendingAssetForAccessory:(id)accessory assetID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[UARPController pendingAssetForAccessory:assetID:]";
    v34 = 2112;
    v35 = dCopy;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_DEFAULT, "%s: Looking for matching asset on pending queue for asset %@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [accessoryCopy pendingAssets];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = accessoryCopy;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 id];
        firmwareHash = [v14 firmwareHash];
        firmwareHash2 = [dCopy firmwareHash];
        v17 = [firmwareHash isEqualToString:firmwareHash2];

        v18 = self->_xpcLog;
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            v23 = v18;
            v24 = [v13 id];
            *buf = 136315650;
            v33 = "[UARPController pendingAssetForAccessory:assetID:]";
            v34 = 2112;
            v35 = v24;
            v36 = 2112;
            v37 = dCopy;
            _os_log_impl(&dword_247AA7000, v23, OS_LOG_TYPE_DEFAULT, "%s: Assets matched %@ and %@", buf, 0x20u);
          }

          v22 = v13;
          goto LABEL_17;
        }

        if (v19)
        {
          v20 = v18;
          v21 = [v13 id];
          *buf = 136315650;
          v33 = "[UARPController pendingAssetForAccessory:assetID:]";
          v34 = 2112;
          v35 = v21;
          v36 = 2112;
          v37 = dCopy;
          _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_DEFAULT, "%s: Assets NOT matched %@ and %@", buf, 0x20u);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v22 = 0;
LABEL_17:
    accessoryCopy = v26;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  getID = [completeCopy getID];
  [dCopy stagingCompleteOnAccessoryID:getID];

  v11 = [(UARPController *)self pendingAssetForAccessory:completeCopy assetID:dCopy];
  if (v11)
  {
    [completeCopy removePendingAsset:v11];
  }

  if (([dCopy isDynamicAsset] & 1) == 0)
  {
    updateFirmwareAnalytics = self->_updateFirmwareAnalytics;
    getID2 = [completeCopy getID];
    [(UARPAnalyticsUpdateFirmwareManager *)updateFirmwareAnalytics stagingCompleteForAccessoryID:getID2 assetID:dCopy status:status];

    powerLogManager = self->_powerLogManager;
    getID3 = [completeCopy getID];
    assetVersion = [dCopy assetVersion];
    firmwareVersion = [completeCopy firmwareVersion];
    [(UARPPowerLogManager *)powerLogManager setStagingCompleteForAccessoryID:getID3 stagedFirmwareVersion:assetVersion activeFirmareVersion:firmwareVersion status:status];

    if (self->_isInternalBuild)
    {
      internalDelegate = self->_internalDelegate;
      getID4 = [completeCopy getID];
      [(UARPControllerInternalDelegate *)internalDelegate stagingCompleteForAccessoryID:getID4 assetID:dCopy status:status];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    reportProgressToDelegates = [dCopy reportProgressToDelegates];

    if (reportProgressToDelegates)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v31 = completeCopy;
      v32 = dCopy;
      statusCopy = status;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    reportProgressToDelegates2 = [dCopy reportProgressToDelegates];

    if (reportProgressToDelegates2)
    {
      v25 = self->_delegateQueue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke_2;
      v26[3] = &unk_278EC2918;
      v26[4] = self;
      v27 = completeCopy;
      v28 = dCopy;
      statusCopy2 = status;
      dispatch_async(v25, v26);
    }
  }

  else
  {
  }
}

void __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareUpdateComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

void __61__UARPController_firmwareStagingComplete_assetID_withStatus___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareStagingComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__UARPController_stagedFirmwareApplicationComplete_withStatus___block_invoke;
    block[3] = &unk_278EC2530;
    block[4] = self;
    v11 = completeCopy;
    statusCopy = status;
    dispatch_async(delegateQueue, block);
  }
}

void __63__UARPController_stagedFirmwareApplicationComplete_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained stagedFirmwareApplicationComplete:a1[5] withStatus:a1[6]];
}

- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__UARPController_stagedFirmwareRescindComplete_withStatus___block_invoke;
    block[3] = &unk_278EC2530;
    block[4] = self;
    v11 = completeCopy;
    statusCopy = status;
    dispatch_async(delegateQueue, block);
  }
}

void __59__UARPController_stagedFirmwareRescindComplete_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained stagedFirmwareRescindComplete:a1[5] withStatus:a1[6]];
}

- (BOOL)updateProperty:(unint64_t)property value:(id)value forAccessory:(id)accessory
{
  valueCopy = value;
  accessoryCopy = accessory;
  v10 = accessoryCopy;
  v11 = 0;
  if (property > 4)
  {
    if (property > 11)
    {
      switch(property)
      {
        case 0xCuLL:
          [accessoryCopy setHwFusingType:valueCopy];
          break;
        case 0xDuLL:
          [accessoryCopy setFriendlyName:valueCopy];
          break;
        case 0x23uLL:
          break;
        default:
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (property != 5)
    {
      if (property == 7)
      {
        [accessoryCopy setProductGroup:valueCopy];
        goto LABEL_26;
      }

      if (property == 8)
      {
        [accessoryCopy setProductNumber:valueCopy];
LABEL_26:
        v11 = [(UARPControllerInternalDelegate *)self->_internalDelegate updateProperty:property value:valueCopy forAccessory:v10];
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    [accessoryCopy setStagedFirmwareVersion:valueCopy];
    powerLogManager = self->_powerLogManager;
    getID = [v10 getID];
    [(UARPPowerLogManager *)powerLogManager setStagedFirmwareVersionForAccessoryID:getID stagedFirmwareVersion:valueCopy];
LABEL_24:

    goto LABEL_26;
  }

  if (property > 1)
  {
    if (property == 2)
    {
      [accessoryCopy setSerialNumber:valueCopy];
      goto LABEL_26;
    }

    if (property == 3)
    {
      [accessoryCopy setHwRevision:valueCopy];
      goto LABEL_26;
    }

    [accessoryCopy setFirmwareVersion:valueCopy];
    v12 = self->_powerLogManager;
    getID = [v10 getID];
    [(UARPPowerLogManager *)v12 setActiveFirmwareVersionForAccessoryID:getID activeFirmwareVersion:valueCopy];
    goto LABEL_24;
  }

  if (!property)
  {
    [accessoryCopy setManufacturer:valueCopy];
    goto LABEL_26;
  }

  if (property == 1)
  {
    [accessoryCopy setModelName:valueCopy];
    goto LABEL_26;
  }

LABEL_27:

  return v11;
}

- (void)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg
{
  accessoryCopy = accessory;
  msgCopy = msg;
  if ([msgCopy length])
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__4;
    v12[4] = __Block_byref_object_dispose__4;
    v13 = [MEMORY[0x277CBEA90] dataWithData:msgCopy];
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke;
    block[3] = &unk_278EC2480;
    block[4] = self;
    v10 = accessoryCopy;
    v11 = v12;
    dispatch_async(delegateQueue, block);

    _Block_object_dispose(v12, 8);
  }

  else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController sendMessageToAccessory:uarpMsg:];
  }
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  v3 = a1[5];
  v4 = *(*(a1[6] + 8) + 40);
  v15 = 0;
  v5 = [WeakRetained sendMessageToAccessory:v3 uarpMsg:v4 error:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_cold_1();
    }
  }

  v8 = a1[4];
  v9 = *(v8 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_24;
  block[3] = &unk_278EC2940;
  v14 = v5;
  block[4] = v8;
  v11 = *(a1 + 5);
  v10 = v11;
  v13 = v11;
  dispatch_async(v9, block);
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_24(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = 0;
  }

  else
  {
    v1 = 11;
  }

  v2 = *(*(a1 + 32) + 96);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [*(a1 + 40) getID];
  [v2 dump:v3 accessoryID:v4 uarpStatus:v1 direction:0];
}

- (BOOL)startPacketCapture:(id)capture
{
  captureCopy = capture;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__UARPController_startPacketCapture___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = captureCopy;
  v10 = &v11;
  v6 = captureCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __37__UARPController_startPacketCapture___block_invoke(void *a1)
{
  if (!*(a1[4] + 96))
  {
    v2 = [[UARPPacketDumper alloc] initWithFileName:a1[5]];
    v3 = a1[4];
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    *(*(a1[6] + 8) + 24) = *(a1[4] + 96) != 0;
  }
}

- (void)stopPacketCapture
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__UARPController_stopPacketCapture__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __35__UARPController_stopPacketCapture__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

- (BOOL)solicitDynamicAsset:(id)asset assetID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  localURL = [dCopy localURL];

  if (localURL)
  {
    internalQueue = self->_internalQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__UARPController_solicitDynamicAsset_assetID___block_invoke;
    v12[3] = &unk_278EC28C8;
    v12[4] = self;
    v13 = assetCopy;
    v14 = dCopy;
    v15 = &v16;
    dispatch_sync(internalQueue, v12);
    v10 = *(v17 + 24);
  }

  else
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController solicitDynamicAsset:assetID:];
    }

    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v10 & 1;
}

void __46__UARPController_solicitDynamicAsset_assetID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    if (v6)
    {
LABEL_5:
      *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 64) solicitDynamicAssetForAccessory:*(a1 + 40) asset:v6 error:0];

      goto LABEL_6;
    }

    v7 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
    v8 = *(a1 + 32);
    if (v7)
    {
      v6 = v7;
      [*(v8 + 16) setObject:v7 forKey:*v5];
      goto LABEL_5;
    }

    v9 = *(v8 + 24);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(v5, v9);
    }
  }

LABEL_6:
}

- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  v10 = [(UARPController *)self pendingAssetForAccessory:completeCopy assetID:dCopy];
  if (v10)
  {
    [completeCopy removePendingAsset:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    reportProgressToDelegates = [dCopy reportProgressToDelegates];

    if (reportProgressToDelegates)
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__UARPController_assetSolicitationComplete_assetID_withStatus___block_invoke;
      v14[3] = &unk_278EC2918;
      v14[4] = self;
      v15 = completeCopy;
      v16 = dCopy;
      statusCopy = status;
      dispatch_async(delegateQueue, v14);
    }
  }

  else
  {
  }
}

void __63__UARPController_assetSolicitationComplete_assetID_withStatus___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetSolicitationComplete:a1[5] assetID:a1[6] withStatus:a1[7]];
}

- (BOOL)dynamicAssetAvailableForAccessory:(id)accessory assetID:(id)d error:(id *)error
{
  accessoryCopy = accessory;
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke;
  block[3] = &unk_278EC2968;
  block[4] = self;
  v11 = accessoryCopy;
  v16 = v11;
  v12 = dCopy;
  v17 = v12;
  v18 = &v26;
  v19 = &v20;
  dispatch_sync(internalQueue, block);
  if (error)
  {
    *error = v21[5];
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    if (v6)
    {
LABEL_5:
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 64);
      v11 = *(*(a1 + 64) + 8);
      obj = *(v11 + 40);
      v12 = [v10 offerDynamicAssetToAccessory:v9 asset:v6 error:&obj];
      objc_storeStrong((v11 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v12;

      goto LABEL_6;
    }

    v7 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
    v8 = *(a1 + 32);
    if (v7)
    {
      v6 = v7;
      [*(v8 + 16) setObject:v7 forKey:*v5];
      goto LABEL_5;
    }

    v13 = *(v8 + 24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke_cold_1(v5, v13);
    }
  }

LABEL_6:
}

- (BOOL)triggerUnsolicitedDynamicAsset:(id)asset assetTag:(id)tag
{
  assetCopy = asset;
  tagCopy = tag;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__UARPController_triggerUnsolicitedDynamicAsset_assetTag___block_invoke;
  v12[3] = &unk_278EC2990;
  v12[4] = self;
  v13 = assetCopy;
  v14 = tagCopy;
  v15 = &v16;
  v9 = tagCopy;
  v10 = assetCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __58__UARPController_triggerUnsolicitedDynamicAsset_assetTag___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 64) unsolicitedDynamicAssetForAccessory:*(a1 + 40) assetTag:*(a1 + 48) error:0];
  }
}

- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v33 = "[UARPController assetAvailablityUpdateForAccessory:assetID:]";
    v34 = 2112;
    v35 = accessoryCopy;
    v36 = 2112;
    v37 = dCopy;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  assetVersion = [dCopy assetVersion];
  if (assetVersion && (v10 = assetVersion, [accessoryCopy stagedFirmwareVersion], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11) && (objc_msgSend(accessoryCopy, "stagedFirmwareVersion"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dCopy, "assetVersion"), v13 = objc_claimAutoreleasedReturnValue(), v14 = uarpVersionCompareStrings(v12, v13), v13, v12, v14 != 1))
  {
    v22 = self->_xpcLog;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      assetVersion2 = [dCopy assetVersion];
      stagedFirmwareVersion = [accessoryCopy stagedFirmwareVersion];
      *buf = 138412802;
      v33 = assetVersion2;
      v34 = 2112;
      v35 = stagedFirmwareVersion;
      v36 = 2112;
      v37 = accessoryCopy;
      _os_log_impl(&dword_247AA7000, v23, OS_LOG_TYPE_DEFAULT, "assetID assetVersion %@ is not greater than staged version %@ for accessory %@", buf, 0x20u);
    }
  }

  else
  {
    assetVersion3 = [dCopy assetVersion];
    [accessoryCopy setAvailableFirmwareVersion:assetVersion3];

    [(UARPController *)self updatePendingAssetsForAccessory:accessoryCopy assetID:dCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke;
      block[3] = &unk_278EC29B8;
      block[4] = self;
      v30 = accessoryCopy;
      v31 = dCopy;
      dispatch_async(delegateQueue, block);
    }

    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = self->_delegateQueue;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke_2;
      v26[3] = &unk_278EC29B8;
      v26[4] = self;
      v27 = accessoryCopy;
      v28 = dCopy;
      dispatch_async(v21, v26);
    }
  }
}

void __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetAvailablityUpdateForAccessory:a1[5] assetID:a1[6]];
}

void __61__UARPController_assetAvailablityUpdateForAccessory_assetID___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetAvailablityUpdateForAccessoryID:a1[5] assetID:a1[6]];
}

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_sync(internalQueue, block);
}

void __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v4 = *(v2 - 1);
  if (v3)
  {
    [(os_log_t *)v4 assetAvailablityUpdateForAccessory:v3 assetID:a1[6]];
  }

  else if (os_log_type_enabled(v4[3], OS_LOG_TYPE_ERROR))
  {
    __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke_cold_1();
  }
}

- (void)supplementalAssetAvailablityUpdateForAccessory:(id)accessory assetName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  nameCopy = name;
  xpcLog = self->_xpcLog;
  if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[UARPController supplementalAssetAvailablityUpdateForAccessory:assetName:]";
    v17 = 2112;
    v18 = accessoryCopy;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@ %@", buf, 0x20u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__UARPController_supplementalAssetAvailablityUpdateForAccessory_assetName___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v13 = accessoryCopy;
  v14 = nameCopy;
  v10 = nameCopy;
  v11 = accessoryCopy;
  dispatch_async(internalQueue, block);
}

- (void)supplementalAssetAvailablityUpdateForAccessoryID:(id)d assetName:(id)name
{
  dCopy = d;
  nameCopy = name;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = dCopy;
  v13 = nameCopy;
  v9 = nameCopy;
  v10 = dCopy;
  dispatch_sync(internalQueue, block);
}

void __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v4 = *(v2 - 1);
  if (v3)
  {
    [(os_log_t *)v4 supplementalAssetAvailablityUpdateForAccessory:v3 assetName:a1[6]];
  }

  else if (os_log_type_enabled(v4[3], OS_LOG_TYPE_ERROR))
  {
    __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke_cold_1();
  }
}

- (void)supportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete
{
  v29 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  groupCopy = group;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = accessoriesCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(UARPController *)self createSupportedAccessory:groupCopy accessoryMetadata:*(*(&v24 + 1) + 8 * v15)];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  if (![v10 count])
  {

    v10 = 0;
  }

  delegateQueue = self->_delegateQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke;
  v20[3] = &unk_278EC29E0;
  v20[4] = self;
  v21 = v10;
  v22 = groupCopy;
  completeCopy = complete;
  v18 = groupCopy;
  v19 = v10;
  dispatch_async(delegateQueue, v20);
}

void __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 168));
  v7 = v4;
  if (v3)
  {
    [v4 supportedAccessories:*(a1 + 40) forProductGroup:*(a1 + 48) isComplete:*(a1 + 56)];
LABEL_5:

    return;
  }

  v5 = objc_opt_respondsToSelector();

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = objc_loadWeakRetained((v6 + 168));
    [v7 supportedAccessories:*(a1 + 40) forProductGroup:*(a1 + 48)];
    goto LABEL_5;
  }

  if (os_log_type_enabled(*(v6 + 24), OS_LOG_TYPE_ERROR))
  {
    __66__UARPController_supportedAccessories_forProductGroup_isComplete___block_invoke_cold_1();
  }
}

- (void)handleReceivedAttestationCertificates:(id)certificates forSubjectKeyIdentifier:(id)identifier
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__UARPController_handleReceivedAttestationCertificates_forSubjectKeyIdentifier___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = certificatesCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = certificatesCopy;
  dispatch_async(delegateQueue, block);
}

void __80__UARPController_handleReceivedAttestationCertificates_forSubjectKeyIdentifier___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained attestationCertificates:a1[5] forSubjectKeyIdentifier:a1[6]];
}

- (id)createSupportedAccessory:(id)accessory accessoryMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy accessoryCapability] == 16)
  {
    v5 = [UARPAccessoryHardwareCHIP alloc];
    productGroup = [metadataCopy productGroup];
    integerValue = [productGroup integerValue];
    productNumber = [metadataCopy productNumber];
    v9 = -[UARPAccessoryHardwareCHIP initWithVendorID:productID:hardwareID:metadata:](v5, "initWithVendorID:productID:hardwareID:metadata:", integerValue, [productNumber integerValue], 0, metadataCopy);

    v10 = [UARPSupportedAccessory alloc];
    productGroup2 = [metadataCopy productGroup];
    productNumber2 = [metadataCopy productNumber];
    v13 = -[UARPSupportedAccessory initWithHardwareID:productGroup:productNumber:capabilities:](v10, "initWithHardwareID:productGroup:productNumber:capabilities:", v9, productGroup2, productNumber2, [metadataCopy accessoryCapability]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)queryFirmwareUpdateResultForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__UARPController_queryFirmwareUpdateResultForAccessory___block_invoke;
  v7[3] = &unk_278EC1140;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(internalQueue, v7);
}

- (int64_t)queryProperty:(unint64_t)property forAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__UARPController_queryProperty_forAccessory___block_invoke;
  v11[3] = &unk_278EC2A08;
  v13 = &v15;
  propertyCopy = property;
  v11[4] = self;
  v12 = accessoryCopy;
  v8 = accessoryCopy;
  dispatch_sync(internalQueue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

void *__45__UARPController_queryProperty_forAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) queryPropertyInternal:*(a1 + 56) forAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);

    return [v3 addPendingClientPropertyQuery:v4];
  }

  return result;
}

- (void)firmwareUpdateResult:(id)result vendorSpecificStatus:(unsigned int)status error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  delegateQueue = self->_delegateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__UARPController_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke;
  v13[3] = &unk_278EC2A30;
  v13[4] = self;
  v14 = resultCopy;
  statusCopy = status;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = resultCopy;
  dispatch_async(delegateQueue, v13);
}

void __66__UARPController_firmwareUpdateResult_vendorSpecificStatus_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 168));
    [v4 firmwareUpdateResult:*(a1 + 40) vendorSpecificStatus:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error
{
  accessoryCopy = accessory;
  manufacturerCopy = manufacturer;
  errorCopy = error;
  [(UARPController *)self updateProperty:0 value:manufacturerCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:0])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_manufacturer_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = manufacturerCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{0, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_manufacturer_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] manufacturer:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  [(UARPController *)self updateProperty:1 value:nameCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:1])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_modelName_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = nameCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{1, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_modelName_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] modelName:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  [(UARPController *)self updateProperty:4 value:versionCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __66__UARPController_queryCompleteForAccessory_firmwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = versionCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{4, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __66__UARPController_queryCompleteForAccessory_firmwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] firmwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  [(UARPController *)self updateProperty:5 value:versionCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __72__UARPController_queryCompleteForAccessory_stagedFirmwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = versionCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{5, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __72__UARPController_queryCompleteForAccessory_stagedFirmwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] stagedFirmwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error
{
  accessoryCopy = accessory;
  statsCopy = stats;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:6])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __56__UARPController_queryCompleteForAccessory_stats_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = statsCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{6, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __56__UARPController_queryCompleteForAccessory_stats_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] stats:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  [(UARPController *)self updateProperty:3 value:versionCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __66__UARPController_queryCompleteForAccessory_hardwareVersion_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = versionCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{3, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __66__UARPController_queryCompleteForAccessory_hardwareVersion_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] hardwareVersion:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  [(UARPController *)self updateProperty:2 value:numberCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:2])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_serialNumber_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = numberCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{2, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_serialNumber_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] serialNumber:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  [(UARPController *)self updateProperty:11 value:numberCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:11])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __67__UARPController_queryCompleteForAccessory_appleModelNumber_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = numberCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{11, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __67__UARPController_queryCompleteForAccessory_appleModelNumber_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] appleModelNumber:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  typeCopy = type;
  errorCopy = error;
  modelNumber = [accessoryCopy modelNumber];
  v12 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  if (!self->_isInternalBuild && -[__CFString isEqualToString:](typeCopy, "isEqualToString:", @"unfused") && ([v12 fusingOverrideUnfused], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    fusingOverrideUnfused = [v12 fusingOverrideUnfused];
    v15 = [fusingOverrideUnfused isEqualToString:@"dev"];

    if (v15)
    {
      v16 = @"dev";
    }

    else
    {
      v16 = @"prod";
    }

    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = accessoryCopy;
      v32 = 2114;
      v33 = typeCopy;
      v34 = 2114;
      v35 = v16;
      _os_log_error_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_ERROR, "Overriding hw fusing for %{public}@, from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v16 = typeCopy;
  }

  [(UARPController *)self updateProperty:12 value:v16 forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:12])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegateQueue = self->_delegateQueue;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __63__UARPController_queryCompleteForAccessory_hwFusingType_error___block_invoke;
      v25 = &unk_278EC2A58;
      selfCopy = self;
      v21 = accessoryCopy;
      v27 = v21;
      v28 = v16;
      v29 = errorCopy;
      dispatch_async(delegateQueue, &v22);
      [v21 removePendingClientPropertyQuery:{12, v22, v23, v24, v25, selfCopy}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_hwFusingType_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] hwFusingType:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  [(UARPController *)self updateProperty:13 value:nameCopy forAccessory:accessoryCopy];
  if ([accessoryCopy clientQueryPendingForProperty:13])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __63__UARPController_queryCompleteForAccessory_friendlyName_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = nameCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{13, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __63__UARPController_queryCompleteForAccessory_friendlyName_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] friendlyName:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory manifestPrefix:(id)prefix error:(id)error
{
  accessoryCopy = accessory;
  prefixCopy = prefix;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:14])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke;
      block[3] = &unk_278EC2A58;
      block[4] = self;
      v14 = accessoryCopy;
      v26 = v14;
      v27 = prefixCopy;
      v28 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v14 removePendingClientPropertyQuery:14];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:14] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = self->_delegateQueue;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke_2;
    v20 = &unk_278EC2A58;
    selfCopy = self;
    v16 = accessoryCopy;
    v22 = v16;
    v23 = prefixCopy;
    v24 = errorCopy;
    dispatch_async(v15, &v17);
    [v16 removePendingClientPropertyQuery:{14, v17, v18, v19, v20, selfCopy}];
  }
}

void __65__UARPController_queryCompleteForAccessory_manifestPrefix_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] manifestPrefix:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory boardID:(unint64_t)d error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:15])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      dCopy = d;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:15];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:15] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    dCopy2 = d;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{15, v16, v17, v18, v19, selfCopy}];
  }
}

void __58__UARPController_queryCompleteForAccessory_boardID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] boardID:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory chipID:(unint64_t)d error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:16])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      dCopy = d;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:16];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:16] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    dCopy2 = d;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{16, v16, v17, v18, v19, selfCopy}];
  }
}

void __57__UARPController_queryCompleteForAccessory_chipID_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] chipID:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory chipRevision:(unint64_t)revision error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:17])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      revisionCopy = revision;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:17];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:17] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    revisionCopy2 = revision;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{17, v16, v17, v18, v19, selfCopy}];
  }
}

void __63__UARPController_queryCompleteForAccessory_chipRevision_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] chipRevision:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory ecid:(unint64_t)ecid error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:18])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      ecidCopy = ecid;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:18];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:18] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    ecidCopy2 = ecid;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{18, v16, v17, v18, v19, selfCopy}];
  }
}

void __55__UARPController_queryCompleteForAccessory_ecid_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] ecid:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory securityDomain:(unint64_t)domain error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:19])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      domainCopy = domain;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:19];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:19] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    domainCopy2 = domain;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{19, v16, v17, v18, v19, selfCopy}];
  }
}

void __65__UARPController_queryCompleteForAccessory_securityDomain_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] securityDomain:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory securityMode:(unint64_t)mode error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:20])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      modeCopy = mode;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:20];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:20] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    modeCopy2 = mode;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{20, v16, v17, v18, v19, selfCopy}];
  }
}

void __63__UARPController_queryCompleteForAccessory_securityMode_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] securityMode:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory productionMode:(unint64_t)mode error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:21])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      modeCopy = mode;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:21];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:21] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    modeCopy2 = mode;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{21, v16, v17, v18, v19, selfCopy}];
  }
}

void __65__UARPController_queryCompleteForAccessory_productionMode_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] productionMode:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory epoch:(unint64_t)epoch error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:22])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke;
      block[3] = &unk_278EC2918;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      epochCopy = epoch;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:22];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:22] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke_2;
    v19 = &unk_278EC2918;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    epochCopy2 = epoch;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{22, v16, v17, v18, v19, selfCopy}];
  }
}

void __56__UARPController_queryCompleteForAccessory_epoch_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] epoch:a1[7] error:a1[6]];
}

- (void)queryCompleteForAccessory:(id)accessory enableMixMatch:(BOOL)match error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:23])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke;
      block[3] = &unk_278EC29E0;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      matchCopy = match;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:23];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:23] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke_2;
    v19 = &unk_278EC29E0;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    matchCopy2 = match;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{23, v16, v17, v18, v19, selfCopy}];
  }
}

void __65__UARPController_queryCompleteForAccessory_enableMixMatch_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained queryCompleteForAccessory:*(a1 + 40) enableMixMatch:*(a1 + 56) error:*(a1 + 48)];
}

- (void)queryCompleteForAccessory:(id)accessory liveNonce:(BOOL)nonce error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:24])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke;
      block[3] = &unk_278EC29E0;
      block[4] = self;
      v13 = accessoryCopy;
      v25 = v13;
      nonceCopy = nonce;
      v26 = errorCopy;
      dispatch_async(delegateQueue, block);
      [v13 removePendingClientPropertyQuery:24];
    }
  }

  if ([accessoryCopy clientQueryPendingForProperty:24] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = self->_delegateQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke_2;
    v19 = &unk_278EC29E0;
    selfCopy = self;
    v15 = accessoryCopy;
    v21 = v15;
    nonceCopy2 = nonce;
    v22 = errorCopy;
    dispatch_async(v14, &v16);
    [v15 removePendingClientPropertyQuery:{24, v16, v17, v18, v19, selfCopy}];
  }
}

void __60__UARPController_queryCompleteForAccessory_liveNonce_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained queryCompleteForAccessory:*(a1 + 40) liveNonce:*(a1 + 56) error:*(a1 + 48)];
}

- (void)queryCompleteForAccessory:(id)accessory prefixNeedsLUN:(BOOL)n error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:25] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __65__UARPController_queryCompleteForAccessory_prefixNeedsLUN_error___block_invoke;
    v15 = &unk_278EC29E0;
    selfCopy = self;
    v11 = accessoryCopy;
    v17 = v11;
    nCopy = n;
    v18 = errorCopy;
    dispatch_async(delegateQueue, &v12);
    [v11 removePendingClientPropertyQuery:{25, v12, v13, v14, v15, selfCopy}];
  }
}

- (void)queryCompleteForAccessory:(id)accessory suffixNeedsLUN:(BOOL)n error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:26] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __65__UARPController_queryCompleteForAccessory_suffixNeedsLUN_error___block_invoke;
    v15 = &unk_278EC29E0;
    selfCopy = self;
    v11 = accessoryCopy;
    v17 = v11;
    nCopy = n;
    v18 = errorCopy;
    dispatch_async(delegateQueue, &v12);
    [v11 removePendingClientPropertyQuery:{26, v12, v13, v14, v15, selfCopy}];
  }
}

- (void)queryCompleteForAccessory:(id)accessory nonceSeed:(id)seed error:(id)error
{
  accessoryCopy = accessory;
  seedCopy = seed;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:42])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_nonceSeed_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = seedCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{42, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_nonceSeed_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] nonceSeed:a1[6] error:a1[7]];
}

- (void)queryCompleteForAccessory:(id)accessory nonceHash:(id)hash error:(id)error
{
  accessoryCopy = accessory;
  hashCopy = hash;
  errorCopy = error;
  if ([accessoryCopy clientQueryPendingForProperty:43])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __60__UARPController_queryCompleteForAccessory_nonceHash_error___block_invoke;
      v18 = &unk_278EC2A58;
      selfCopy = self;
      v14 = accessoryCopy;
      v20 = v14;
      v21 = hashCopy;
      v22 = errorCopy;
      dispatch_async(delegateQueue, &v15);
      [v14 removePendingClientPropertyQuery:{43, v15, v16, v17, v18, selfCopy}];
    }
  }
}

void __60__UARPController_queryCompleteForAccessory_nonceHash_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained queryCompleteForAccessory:a1[5] nonceHash:a1[6] error:a1[7]];
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total filterProgress:(BOOL)filterProgress
{
  progressCopy = progress;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    reportProgressToDelegates = [dCopy reportProgressToDelegates];

    if (reportProgressToDelegates)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__UARPController_firmwareStagingProgress_assetID_bytesSent_bytesTotal_filterProgress___block_invoke;
      block[3] = &unk_278EC2A80;
      block[4] = self;
      v18 = progressCopy;
      v19 = dCopy;
      sentCopy = sent;
      totalCopy = total;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }

  if (!filterProgress)
  {
    [(UARPControllerInternalDelegate *)self->_internalDelegate sendFirmwareUpdateProgressForAccessory:progressCopy assetID:dCopy bytesSent:sent bytesTotal:total];
  }
}

void __86__UARPController_firmwareStagingProgress_assetID_bytesSent_bytesTotal_filterProgress___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained firmwareStagingProgress:a1[5] assetID:a1[6] bytesSent:a1[7] bytesTotal:a1[8]];
}

- (void)firmwareStagingDataBlockTransferred:(id)transferred assetID:(id)d offset:(unsigned int)offset blockSize:(unsigned int)size
{
  v6 = *&size;
  v7 = *&offset;
  powerLogManager = self->_powerLogManager;
  getID = [transferred getID];
  [(UARPPowerLogManager *)powerLogManager updateStagingProgressForAccessoryID:getID requestedOffset:v7 requestedLength:v6];
}

- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    reportProgressToDelegates = [dCopy reportProgressToDelegates];

    if (reportProgressToDelegates)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__UARPController_assetSolicitationProgress_assetID_bytesReceived_bytesTotal___block_invoke;
      block[3] = &unk_278EC2A80;
      block[4] = self;
      v16 = progressCopy;
      v17 = dCopy;
      receivedCopy = received;
      totalCopy = total;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
  }
}

void __77__UARPController_assetSolicitationProgress_assetID_bytesReceived_bytesTotal___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained assetSolicitationProgress:a1[5] assetID:a1[6] bytesReceived:a1[7] bytesTotal:a1[8]];
}

- (id)unsolicitedDynamicAssetOffered:(id)offered assetID:(id)d
{
  offeredCopy = offered;
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__UARPController_unsolicitedDynamicAssetOffered_assetID___block_invoke;
  v13[3] = &unk_278EC2990;
  v13[4] = self;
  v14 = offeredCopy;
  v15 = dCopy;
  v16 = &v17;
  v9 = dCopy;
  v10 = offeredCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __57__UARPController_unsolicitedDynamicAssetOffered_assetID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = (a1 + 48);
    v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 48)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = [[UARPAsset alloc] initWithID:*(a1 + 48)];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(*(a1 + 56) + 8) + 40);
      v13 = *(a1 + 32);
      if (v12)
      {
        [*(v13 + 16) setObject:v12 forKey:*v5];
      }

      else
      {
        v14 = *(v13 + 24);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(v5, v14);
        }
      }
    }
  }
}

- (void)accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded
{
  neededCopy = needed;
  if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController accessoryTransportNeeded:isNeeded:];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke;
  block[3] = &unk_278EC28A0;
  block[4] = self;
  v10 = neededCopy;
  isNeededCopy = isNeeded;
  v8 = neededCopy;
  dispatch_sync(internalQueue, block);
}

void __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = *(v8 + 48);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke_2;
      block[3] = &unk_278EC28A0;
      block[4] = v8;
      v11 = v7;
      v12 = *(a1 + 48);
      dispatch_async(v9, block);
    }
  }
}

void __52__UARPController_accessoryTransportNeeded_isNeeded___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained accessoryTransportNeeded:*(a1 + 40) isNeeded:*(a1 + 48)];
}

- (BOOL)addAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__UARPController_addAccessory_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = accessoryCopy;
  v14 = dCopy;
  v15 = &v16;
  v9 = dCopy;
  v10 = accessoryCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __39__UARPController_addAccessory_assetID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 72) addAccessory:*(a1 + 40) assetID:*(a1 + 48)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 8);
    v4 = [v2 getID];
    [v3 setObject:v2 forKeyedSubscript:v4];

    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForAssetAvailabilityNotification:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) removeAccessory:*(a1 + 40)];
      }

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForSupplementalAssetAvailabilityNotification:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) removeAccessory:*(a1 + 40)];
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [*(a1 + 40) bsdNotifications];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v18;
      *&v7 = 138412290;
      v16 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = *(*(a1 + 32) + 32);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v16;
            v22 = v11;
            _os_log_debug_impl(&dword_247AA7000, v12, OS_LOG_TYPE_DEBUG, "registering bsd notification; %@", buf, 0xCu);
          }

          [*(a1 + 32) registerForGenericNotification:*(a1 + 40) notificationName:{v11, v16}];
        }

        v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 32) + 144);
      v15 = [v13 getID];
      [v14 addAccessoryID:v15];
    }
  }
}

- (BOOL)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__UARPController_removeAccessory___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = accessoryCopy;
  v10 = &v11;
  block[4] = self;
  v6 = accessoryCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __34__UARPController_removeAccessory___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 72) removeAccessory:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) accessoryUnreachableInternal:*(a1 + 40)];
    v2 = *(*(a1 + 32) + 8);
    v3 = [*(a1 + 40) getID];
    [v2 removeObjectForKey:v3];

    [*(a1 + 32) unregisterForAssetAvailabilityNotification:*(a1 + 40)];
    [*(a1 + 32) unregisterForSupplementalAssetAvailabilityNotification:*(a1 + 40)];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 144);
    v6 = [v4 getID];
    [v5 removeAccessoryID:v6];
  }
}

- (BOOL)changeAssetLocation:(id)location assetID:(id)d
{
  locationCopy = location;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__UARPController_changeAssetLocation_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = locationCopy;
  v14 = dCopy;
  v15 = &v16;
  v9 = dCopy;
  v10 = locationCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void *__46__UARPController_changeAssetLocation_assetID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) changeAssetLocation:a1[5] assetID:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)requestConsent:(id)consent
{
  consentCopy = consent;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__UARPController_requestConsent___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = consentCopy;
  v10 = &v11;
  block[4] = self;
  v6 = consentCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__33__UARPController_requestConsent___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) requestConsent:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)revokeConsentRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UARPController_revokeConsentRequest___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = requestCopy;
  v10 = &v11;
  block[4] = self;
  v6 = requestCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__39__UARPController_revokeConsentRequest___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) revokeConsentRequest:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)pauseAssetTransfersForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__UARPController_pauseAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = accessoryCopy;
  v10 = &v11;
  v6 = accessoryCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __50__UARPController_pauseAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    if ([v5 assetTransfersPaused])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 64) pauseAssetTransfersForAccessory:*(a1 + 40)];
      v4 = v5;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_7;
      }

      [v5 setAssetTransfersPaused:1];
    }

    v4 = v5;
  }

LABEL_7:
}

- (BOOL)resumeAssetTransfersForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__UARPController_resumeAssetTransfersForAccessory___block_invoke;
  block[3] = &unk_278EC2480;
  block[4] = self;
  v9 = accessoryCopy;
  v10 = &v11;
  v6 = accessoryCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void __51__UARPController_resumeAssetTransfersForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) getID];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    if ([v5 assetTransfersPaused])
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 64) resumeAssetTransfersForAccessory:*(a1 + 40)];
      v4 = v5;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_7;
      }

      [v5 setAssetTransfersPaused:0];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v4 = v5;
  }

LABEL_7:
}

- (BOOL)downloadAvailableFirmwareUpdate:(id)update assetID:(id)d withUserIntent:(BOOL)intent
{
  updateCopy = update;
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__UARPController_downloadAvailableFirmwareUpdate_assetID_withUserIntent___block_invoke;
  block[3] = &unk_278EC2AD0;
  block[4] = self;
  v15 = updateCopy;
  v16 = dCopy;
  v17 = &v19;
  intentCopy = intent;
  v11 = dCopy;
  v12 = updateCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return internalQueue;
}

void *__73__UARPController_downloadAvailableFirmwareUpdate_assetID_withUserIntent___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) downloadAvailableFirmwareUpdate:*(a1 + 40) assetID:*(a1 + 48) withUserIntent:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)downloadReleaseNotes:(id)notes assetID:(id)d
{
  notesCopy = notes;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__UARPController_downloadReleaseNotes_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = notesCopy;
  v14 = dCopy;
  v15 = &v16;
  v9 = dCopy;
  v10 = notesCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void *__47__UARPController_downloadReleaseNotes_assetID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) downloadReleaseNotes:a1[5] assetID:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)sendFirmwareUpdateProgressForAccessory:(id)accessory assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  accessoryCopy = accessory;
  dCopy = d;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__UARPController_sendFirmwareUpdateProgressForAccessory_assetID_bytesSent_bytesTotal___block_invoke;
  block[3] = &unk_278EC2A80;
  block[4] = self;
  v16 = accessoryCopy;
  v17 = dCopy;
  sentCopy = sent;
  totalCopy = total;
  v13 = dCopy;
  v14 = accessoryCopy;
  dispatch_sync(internalQueue, block);
}

- (void)sendFirmwareUpdateProgressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  consentCopy = consent;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__UARPController_sendFirmwareUpdateProgressForUARPConsent_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = consentCopy;
  sentCopy = sent;
  totalCopy = total;
  v10 = consentCopy;
  dispatch_sync(internalQueue, v11);
}

- (void)progressForUARPConsent:(id)consent bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  consentCopy = consent;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__UARPController_progressForUARPConsent_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = consentCopy;
  sentCopy = sent;
  totalCopy = total;
  v10 = consentCopy;
  dispatch_sync(internalQueue, v11);
}

- (void)progressForUARPConsentInPostLogout:(id)logout bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  logoutCopy = logout;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__UARPController_progressForUARPConsentInPostLogout_bytesSent_bytesTotal___block_invoke;
  v11[3] = &unk_278EC2AF8;
  v11[4] = self;
  v12 = logoutCopy;
  sentCopy = sent;
  totalCopy = total;
  v10 = logoutCopy;
  dispatch_sync(internalQueue, v11);
}

- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UARPController_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__66__UARPController_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) enableTRMSystemAuthenticationForRegistryEntryID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__UARPController_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__67__UARPController_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) disableTRMSystemAuthenticationForRegistryEntryID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)checkForUpdate:(id)update
{
  updateCopy = update;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__UARPController_checkForUpdate___block_invoke;
  block[3] = &unk_278EC2850;
  v9 = updateCopy;
  v10 = &v11;
  block[4] = self;
  v6 = updateCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__33__UARPController_checkForUpdate___block_invoke(void *a1)
{
  result = [*(a1[4] + 72) checkForUpdate:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)getSupportedAccessoriesInternal:(id)internal assetID:(id)d batchRequest:(BOOL)request
{
  internalCopy = internal;
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke;
  block[3] = &unk_278EC2AD0;
  block[4] = self;
  v15 = internalCopy;
  v16 = dCopy;
  v17 = &v19;
  requestCopy = request;
  v11 = dCopy;
  v12 = internalCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return internalQueue;
}

void __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 56) + 8) + 24) = [v2 getSupportedAccessories:v3 assetID:*(a1 + 48) batchRequest:*(a1 + 64)];

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForSupportedAccessoriesAvailability:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
      {
        __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke_cold_1();
      }
    }
  }
}

- (BOOL)getSupportedAccessories:(id)accessories assetLocationType:(int64_t)type
{
  accessoriesCopy = accessories;
  v7 = [[UARPAssetID alloc] initWithLocationType:type remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getSupportedAccessoriesInternal:accessoriesCopy assetID:v7 batchRequest:0];

  return self;
}

- (BOOL)getBatchedSupportedAccessories:(id)accessories assetLocationType:(int64_t)type
{
  accessoriesCopy = accessories;
  v7 = [[UARPAssetID alloc] initWithLocationType:type remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getSupportedAccessoriesInternal:accessoriesCopy assetID:v7 batchRequest:1];

  return self;
}

- (BOOL)getAttestationCertificatesInternal:(id)internal assetID:(id)d
{
  internalCopy = internal;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke;
  v12[3] = &unk_278EC2AA8;
  v12[4] = self;
  v13 = internalCopy;
  v14 = dCopy;
  v15 = &v16;
  v9 = dCopy;
  v10 = internalCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  *(*(*(v2 + 16) + 8) + 24) = [*(*(a1 + 32) + 72) getAttestationCertificates:*(a1 + 40) assetID:*(a1 + 48)];
  if (*(*(*(v2 + 16) + 8) + 24) == 1)
  {
    if ([*(*(a1 + 32) + 72) useAssetAvailabilityNotifications])
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) registerForAttestationCertificatesAvailability:*(a1 + 40)];
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
      {
        __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke_cold_1();
      }
    }
  }
}

- (BOOL)getAttestationCertificates:(id)certificates assetLocationType:(int64_t)type
{
  certificatesCopy = certificates;
  v7 = [[UARPAssetID alloc] initWithLocationType:type remoteURL:0];
  LOBYTE(self) = [(UARPController *)self getAttestationCertificatesInternal:certificatesCopy assetID:v7];

  return self;
}

- (void)assetAvailabilityNotificationPosted:(int)posted
{
  v15 = *MEMORY[0x277D85DE8];
  assetAvailabilityNotificationTokenDict = self->_assetAvailabilityNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)assetAvailabilityNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[UARPController assetAvailabilityNotificationPosted:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Asset availability notification for %@", &v11, 0x16u);
    }

    internalDelegate = self->_internalDelegate;
    getID = [v6 getID];
    v10 = [(UARPControllerInternalDelegate *)internalDelegate getAssetIDForAccessoryID:getID];

    if (v10)
    {
      [(UARPController *)self assetAvailablityUpdateForAccessory:v6 assetID:v10];
    }

    else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController assetAvailabilityNotificationPosted:];
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController assetAvailabilityNotificationPosted:];
  }
}

- (BOOL)registerForAssetAvailabilityNotification:(id)notification
{
  notificationCopy = notification;
  out_token = -1;
  getID = [notificationCopy getID];
  assetAvailabilityUpdateNotification = [getID assetAvailabilityUpdateNotification];

  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__UARPController_registerForAssetAvailabilityNotification___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v13, &location);
  v8 = notify_register_dispatch(assetAvailabilityUpdateNotification, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForAssetAvailabilityNotification:];
    }
  }

  else
  {
    assetAvailabilityNotificationTokenDict = self->_assetAvailabilityNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)assetAvailabilityNotificationTokenDict setObject:notificationCopy forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __59__UARPController_registerForAssetAvailabilityNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained assetAvailabilityNotificationPosted:a2];
}

- (void)availabilityNotificationForSupportedAccessoriesPosted:(int)posted
{
  v3 = *&posted;
  v17 = *MEMORY[0x277D85DE8];
  assetAvailabilityUARPProductGroupNotificationTokenDict = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)assetAvailabilityUARPProductGroupNotificationTokenDict objectForKeyedSubscript:v6];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[UARPController availabilityNotificationForSupportedAccessoriesPosted:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: availability notification for supported accessories for productGroup %@", &v13, 0x16u);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  internalDelegate = self->_internalDelegate;
  identifier = [v7 identifier];
  v12 = [(UARPControllerInternalDelegate *)internalDelegate getSupportedAccessories:v9 forProductGroup:identifier];

  [(UARPController *)self supportedAccessories:v9 forProductGroup:v7 isComplete:v12];
  if (v12)
  {
    [(UARPController *)self unregisterForSupportedAccessoriesAvailability:v3];
  }
}

- (BOOL)registerForSupportedAccessoriesAvailability:(id)availability
{
  availabilityCopy = availability;
  out_token = -1;
  identifier = [availabilityCopy identifier];

  v6 = MEMORY[0x277CCACA8];
  if (identifier)
  {
    identifier2 = [availabilityCopy identifier];
    v8 = [v6 stringWithFormat:@"%@-%@", @"com.apple.accessoryUpdater.uarp.supportedAccessoriesMetadataAvailable", identifier2];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com.apple.accessoryUpdater.uarp.supportedAccessoriesMetadataAvailable"];
  }

  objc_initWeak(&location, self);
  uTF8String = [v8 UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62__UARPController_registerForSupportedAccessoriesAvailability___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v16, &location);
  v11 = notify_register_dispatch(uTF8String, &out_token, internalQueue, handler);
  if (v11)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else if (availabilityCopy)
  {
    assetAvailabilityUARPProductGroupNotificationTokenDict = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)assetAvailabilityUARPProductGroupNotificationTokenDict setObject:availabilityCopy forKeyedSubscript:v13];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11 == 0;
}

void __62__UARPController_registerForSupportedAccessoriesAvailability___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained availabilityNotificationForSupportedAccessoriesPosted:a2];
}

- (id)assetAvailabilityTokenForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_assetAvailabilityNotificationTokenDict;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict objectForKeyedSubscript:v11, v15];
        if ([accessoryCopy isEqual:v12])
        {
          v13 = v11;

          v8 = v13;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unregisterForAssetAvailabilityNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [(UARPController *)self assetAvailabilityTokenForAccessory:notificationCopy];
  v6 = v5;
  if (v5)
  {
    notify_cancel([v5 intValue]);
    [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict removeObjectForKey:v6];
    controllerLog = self->_controllerLog;
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[UARPController unregisterForAssetAvailabilityNotification:]";
      v10 = 2112;
      v11 = notificationCopy;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: unregistered %@", &v8, 0x16u);
    }
  }
}

- (void)unregisterForSupportedAccessoriesAvailability:(int)availability
{
  v3 = *&availability;
  v10 = *MEMORY[0x277D85DE8];
  notify_cancel(availability);
  assetAvailabilityUARPProductGroupNotificationTokenDict = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [(NSMutableDictionary *)assetAvailabilityUARPProductGroupNotificationTokenDict removeObjectForKey:v6];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[UARPController unregisterForSupportedAccessoriesAvailability:]";
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_DEFAULT, "%s: unregistered for SupportedAccessoriesAvailability", &v8, 0xCu);
  }
}

- (void)unregisterForAllAssetAvailabilityNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_assetAvailabilityNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        notify_cancel([*(*(&v17 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_assetAvailabilityNotificationTokenDict removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_assetAvailabilityUARPProductGroupNotificationTokenDict;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        notify_cancel([*(*(&v13 + 1) + 8 * v12++) intValue]);
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_assetAvailabilityUARPProductGroupNotificationTokenDict removeAllObjects];
}

- (void)supplementalAssetAvailabilityNotificationPosted:(int)posted
{
  v15 = *MEMORY[0x277D85DE8];
  supplementalAssetAvailabilityNotificationTokenDict = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)supplementalAssetAvailabilityNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[UARPController supplementalAssetAvailabilityNotificationPosted:]";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Supplemental Asset availability notification for %@", &v11, 0x16u);
    }

    internalDelegate = self->_internalDelegate;
    getID = [v6 getID];
    v10 = [(UARPControllerInternalDelegate *)internalDelegate getSupplementalAssetNameForAccessoryID:getID];

    if (v10)
    {
      [(UARPController *)self supplementalAssetAvailablityUpdateForAccessory:v6 assetName:v10];
    }

    else if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController supplementalAssetAvailabilityNotificationPosted:];
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController supplementalAssetAvailabilityNotificationPosted:];
  }
}

- (BOOL)registerForSupplementalAssetAvailabilityNotification:(id)notification
{
  notificationCopy = notification;
  out_token = -1;
  getID = [notificationCopy getID];
  supplementalAssetAvailabilityUpdateNotification = [getID supplementalAssetAvailabilityUpdateNotification];

  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__UARPController_registerForSupplementalAssetAvailabilityNotification___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v13, &location);
  v8 = notify_register_dispatch(supplementalAssetAvailabilityUpdateNotification, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForAssetAvailabilityNotification:];
    }
  }

  else
  {
    supplementalAssetAvailabilityNotificationTokenDict = self->_supplementalAssetAvailabilityNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)supplementalAssetAvailabilityNotificationTokenDict setObject:notificationCopy forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __71__UARPController_registerForSupplementalAssetAvailabilityNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained supplementalAssetAvailabilityNotificationPosted:a2];
}

- (id)supplementalAssetAvailabilityTokenForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict objectForKeyedSubscript:v11, v15];
        if ([accessoryCopy isEqual:v12])
        {
          v13 = v11;

          v8 = v13;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unregisterForSupplementalAssetAvailabilityNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [(UARPController *)self supplementalAssetAvailabilityTokenForAccessory:notificationCopy];
  v6 = v5;
  if (v5)
  {
    notify_cancel([v5 intValue]);
    [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict removeObjectForKey:v6];
    controllerLog = self->_controllerLog;
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[UARPController unregisterForSupplementalAssetAvailabilityNotification:]";
      v10 = 2112;
      v11 = notificationCopy;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: unregistered %@", &v8, 0x16u);
    }
  }
}

- (void)unregisterForAllSupplementalAssetAvailabilityNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_supplementalAssetAvailabilityNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        notify_cancel([*(*(&v8 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_supplementalAssetAvailabilityNotificationTokenDict removeAllObjects];
}

- (void)availabilityNotificationForAttestationCertificatesPosted:(int)posted
{
  v3 = *&posted;
  v14 = *MEMORY[0x277D85DE8];
  attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict objectForKeyedSubscript:v6];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[UARPController availabilityNotificationForAttestationCertificatesPosted:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: availability notification for attestation certificates for subjectKeyIdentifier %@", &v10, 0x16u);
  }

  v9 = [(UARPControllerInternalDelegate *)self->_internalDelegate getAttestationCertificates:v7];
  [(UARPController *)self handleReceivedAttestationCertificates:v9 forSubjectKeyIdentifier:v7];
  [(UARPController *)self unregisterForAttestationCertificatesAvailability:v3];
}

- (BOOL)registerForAttestationCertificatesAvailability:(id)availability
{
  availabilityCopy = availability;
  out_token = -1;
  if (availabilityCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"com.apple.accessoryUpdater.uarp.attestationCertificatesAvailable", availabilityCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"com.apple.accessoryUpdater.uarp.attestationCertificatesAvailable", v12];
  }
  v5 = ;
  objc_initWeak(&location, self);
  uTF8String = [v5 UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __65__UARPController_registerForAttestationCertificatesAvailability___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v14, &location);
  v8 = notify_register_dispatch(uTF8String, &out_token, internalQueue, handler);
  if (v8)
  {
    if (os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else if (availabilityCopy)
  {
    attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict setObject:availabilityCopy forKeyedSubscript:v10];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8 == 0;
}

void __65__UARPController_registerForAttestationCertificatesAvailability___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained availabilityNotificationForAttestationCertificatesPosted:a2];
}

- (void)unregisterForAttestationCertificatesAvailability:(int)availability
{
  v3 = *&availability;
  v10 = *MEMORY[0x277D85DE8];
  notify_cancel(availability);
  attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [(NSMutableDictionary *)attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict removeObjectForKey:v6];

  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[UARPController unregisterForAttestationCertificatesAvailability:]";
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_DEFAULT, "%s: unregistered for AttestationCertificatesAvailability", &v8, 0xCu);
  }
}

- (void)unregisterForAllAttestationCertificatesAvailabilityNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        notify_cancel([*(*(&v8 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_attestationCertificatesAvailabilitySubjectKeyIdentifierNotificationTokenDict removeAllObjects];
}

- (BOOL)registerForGenericNotification:(id)notification notificationName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  nameCopy = name;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = nameCopy;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "Registering for BSD notification %@", buf, 0xCu);
  }

  [(NSMutableDictionary *)self->_generalNotificationTokenDict allValues];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v9 = v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v27 + 1) + 8 * i) isEqualToString:nameCopy])
        {
          v19 = self->_controllerLog;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = nameCopy;
            _os_log_impl(&dword_247AA7000, v19, OS_LOG_TYPE_INFO, "Already registered for notification %@", buf, 0xCu);
          }

          v17 = 1;
          goto LABEL_21;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  out_token = -1;
  objc_initWeak(&location, self);
  v13 = nameCopy;
  uTF8String = [nameCopy UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66__UARPController_registerForGenericNotification_notificationName___block_invoke;
  handler[3] = &unk_278EC2B20;
  objc_copyWeak(&v24, &location);
  v16 = notify_register_dispatch(uTF8String, &out_token, internalQueue, handler);
  v17 = v16 == 0;
  v18 = self->_controllerLog;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [UARPController registerForSupportedAccessoriesAvailability:];
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = nameCopy;
      _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "Registered for BSD notification %@", buf, 0xCu);
    }

    generalNotificationTokenDict = self->_generalNotificationTokenDict;
    v21 = [MEMORY[0x277CCABB0] numberWithInt:out_token];
    [(NSMutableDictionary *)generalNotificationTokenDict setObject:nameCopy forKeyedSubscript:v21];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_21:

  return v17;
}

void __66__UARPController_registerForGenericNotification_notificationName___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained genericNotificationPosted:a2];
}

- (void)genericNotificationPosted:(int)posted
{
  v27 = *MEMORY[0x277D85DE8];
  generalNotificationTokenDict = self->_generalNotificationTokenDict;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v6 = [(NSMutableDictionary *)generalNotificationTokenDict objectForKeyedSubscript:v5];

  controllerLog = self->_controllerLog;
  if (v6)
  {
    if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[UARPController genericNotificationPosted:]";
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Notification posted %@", buf, 0x16u);
    }

    allValues = [(NSMutableDictionary *)self->_accessories allValues];
    v9 = [allValues copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          bsdNotifications = [v15 bsdNotifications];
          v17 = [bsdNotifications containsObject:v6];

          if (v17)
          {
            [(UARPUploader *)self->_uploader genericNotification:v15 notificationName:v6 error:0];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_ERROR))
  {
    [UARPController genericNotificationPosted:];
  }
}

- (void)unregisterForAllGenericNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_generalNotificationTokenDict;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        notify_cancel([*(*(&v8 + 1) + 8 * v7++) intValue]);
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_generalNotificationTokenDict removeAllObjects];
}

- (BOOL)createUploader
{
  if (self->_uploader)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      newUploader = [v6 newUploader];
      uploader = self->_uploader;
      self->_uploader = newUploader;
    }

    else
    {
      v9 = objc_alloc_init(UARPUploaderUARP);
      v6 = self->_uploader;
      self->_uploader = &v9->super;
    }

    if ([(UARPUploader *)self->_uploader setController:self])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v2 = os_log_type_enabled(self->_controllerLog, OS_LOG_TYPE_ERROR);
      if (v2)
      {
        [UARPController createUploader];
        LOBYTE(v2) = 0;
      }
    }
  }

  return v2;
}

- (BOOL)startTapToRadar:(id)radar
{
  radarCopy = radar;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  if ([(UARPController *)self createUploader])
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__UARPController_startTapToRadar___block_invoke;
    block[3] = &unk_278EC2B48;
    block[4] = self;
    v10 = &v11;
    v9 = radarCopy;
    dispatch_async(internalQueue, block);
    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void __34__UARPController_startTapToRadar___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "start TTR called.", v5, 2u);
  }

  v3 = a1[4];
  v4 = *(v3 + 64);
  if (v4)
  {
    *(*(a1[6] + 8) + 24) = [v4 startTapToRadar:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(*(v3 + 32), OS_LOG_TYPE_ERROR))
    {
      __34__UARPController_startTapToRadar___block_invoke_cold_1();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)stopTapToRadar
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__UARPController_stopTapToRadar__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __32__UARPController_stopTapToRadar__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "stop TTR called.", v4, 2u);
  }

  return [*(*(a1 + 32) + 64) stopTapToRadar];
}

- (void)startPersonalizationHelperService:(id)service entitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  serviceCopy = service;
  v8 = dispatch_queue_create("UARPController personalization", 0);
  personalizationQueue = self->_personalizationQueue;
  self->_personalizationQueue = v8;

  v10 = [[UARPPersonalizationManager alloc] initWithMachServiceName:serviceCopy entitlement:entitlementCopy delegate:self queue:self->_personalizationQueue];
  personalizationManager = self->_personalizationManager;
  self->_personalizationManager = v10;
}

- (id)personalizationHelperQueryPendingTssRequests:(id)requests
{
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog personalizationHelperQueryPendingTssRequests:v5, v6, v7, v8, v9, v10, v11];
  }

  pendingTatsuRequests = [(UARPController *)self pendingTatsuRequests];

  return pendingTatsuRequests;
}

- (void)personalizationHelperTssResponse:(id)response updaterName:(id)name
{
  responseCopy = response;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog personalizationHelperTssResponse:v7 updaterName:v8, v9, v10, v11, v12, v13];
  }

  [(UARPController *)self tssResponse:responseCopy];
}

- (id)pendingTatsuRequests
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = objc_opt_new();
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_DEBUG))
  {
    [(UARPController *)controllerLog pendingTatsuRequests:v4];
  }

  internalQueue = self->_internalQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__UARPController_pendingTatsuRequests__block_invoke;
  v16[3] = &unk_278EC2408;
  v16[4] = self;
  v16[5] = &v17;
  dispatch_sync(internalQueue, v16);
  v12 = self->_controllerLog;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v18[5];
    *buf = 136315394;
    v24 = "[UARPController pendingTatsuRequests]";
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_247AA7000, v12, OS_LOG_TYPE_INFO, "%s: Pending Tatsu Requests %@", buf, 0x16u);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v18[5]];
  _Block_object_dispose(&v17, 8);

  return v14;
}

void __38__UARPController_pendingTatsuRequests__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__UARPController_pendingTatsuRequests__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(*(a1 + 32) + 64) pendingTssRequests];
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v10];
}

- (void)tssResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  controllerLog = self->_controllerLog;
  if (os_log_type_enabled(controllerLog, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPController tssResponse:]";
    v12 = 2112;
    v13 = responseCopy;
    _os_log_impl(&dword_247AA7000, controllerLog, OS_LOG_TYPE_INFO, "%s: Tatsu Response, %@", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__UARPController_tssResponse___block_invoke;
  v8[3] = &unk_278EC1140;
  v8[4] = self;
  v9 = responseCopy;
  v7 = responseCopy;
  dispatch_sync(internalQueue, v8);
}

uint64_t __30__UARPController_tssResponse___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[UARPController tssResponse:]_block_invoke";
    _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "%s: on queue", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 64) tssResponse:*(a1 + 40)];
}

- (void)assetStagingPause:(id)pause
{
  pauseCopy = pause;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__UARPController_assetStagingPause___block_invoke;
    v8[3] = &unk_278EC1140;
    v8[4] = self;
    v9 = pauseCopy;
    dispatch_async(delegateQueue, v8);
  }
}

void __36__UARPController_assetStagingPause___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained assetStagingPause:*(a1 + 40)];
}

- (void)assetStagingResume:(id)resume
{
  resumeCopy = resume;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__UARPController_assetStagingResume___block_invoke;
    v8[3] = &unk_278EC1140;
    v8[4] = self;
    v9 = resumeCopy;
    dispatch_async(delegateQueue, v8);
  }
}

void __37__UARPController_assetStagingResume___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained assetStagingResume:*(a1 + 40)];
}

- (UARPControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__UARPController_cancelFirmwareStagingForAccessory_assetID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)updatePendingAssetsForAccessory:(void *)a1 assetID:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_11() localURL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v4, v5, "Unable to initialize asset at %@", v6, v7, v8, v9);
}

void __49__UARPController_sendMessageToAccessory_uarpMsg___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)solicitDynamicAsset:assetID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __46__UARPController_solicitDynamicAsset_assetID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_11() localURL];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v5, v6, "Unable to initialize asset at %@", v7, v8, v9, v10);
}

void __66__UARPController_dynamicAssetAvailableForAccessory_assetID_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_11() localPath];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_247AA7000, v5, v6, "Unable to initialize dynamic asset at %@", v7, v8, v9, v10);
}

void __63__UARPController_assetAvailablityUpdateForAccessoryID_assetID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __77__UARPController_supplementalAssetAvailablityUpdateForAccessoryID_assetName___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)accessoryTransportNeeded:isNeeded:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __71__UARPController_getSupportedAccessoriesInternal_assetID_batchRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __61__UARPController_getAttestationCertificatesInternal_assetID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)assetAvailabilityNotificationPosted:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)assetAvailabilityNotificationPosted:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)registerForAssetAvailabilityNotification:.cold.1()
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)registerForSupportedAccessoriesAvailability:.cold.1()
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)supplementalAssetAvailabilityNotificationPosted:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)supplementalAssetAvailabilityNotificationPosted:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)genericNotificationPosted:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)personalizationHelperQueryPendingTssRequests:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPController personalizationHelperQueryPendingTssRequests:]";
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: ", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)personalizationHelperTssResponse:(uint64_t)a3 updaterName:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPController personalizationHelperTssResponse:updaterName:]";
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pendingTatsuRequests
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPController pendingTatsuRequests]";
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, self, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __38__UARPController_pendingTatsuRequests__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[UARPController pendingTatsuRequests]_block_invoke";
  OUTLINED_FUNCTION_1_5(&dword_247AA7000, a1, a3, "%s: on queue", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end