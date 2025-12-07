@interface HMDAccessory
+ (BOOL)splitProductDataIntoProductGroupAndProductNumber:(id)number productGroup:(id *)group productNumber:(id *)productNumber;
+ (BOOL)validateProductData:(id)data;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_allowSoftwareUpdateChangeFromSource:(unint64_t)source;
- (BOOL)_getLastKnownLowBatteryStatus;
- (BOOL)_updateRoom:(id)room source:(unint64_t)source;
- (BOOL)hasActiveSession;
- (BOOL)hasMediaProfile;
- (BOOL)hasSiriEndpointProfile;
- (BOOL)isCurrentDemoAccessory;
- (BOOL)isDemoAccessory;
- (BOOL)isFirstPartyAccessory;
- (BOOL)isKnownManufacturer;
- (BOOL)isLastSeenDateValid;
- (BOOL)isLowBattery;
- (BOOL)isReachable;
- (BOOL)isReachableForXPCClients;
- (BOOL)isRemotelyReachable;
- (BOOL)isSuspendCapable;
- (BOOL)reachabilityPingEnabled;
- (BOOL)reachabilityPingNotificationEnabled;
- (BOOL)resetOnBackoffExpiry;
- (HMAccessoryLastSeenStatus)lastSeenStatus;
- (HMDAccessory)hostAccessory;
- (HMDAccessory)init;
- (HMDAccessory)initWithCoder:(id)coder;
- (HMDAccessory)initWithNotificationCenter:(id)center;
- (HMDAccessory)initWithTransaction:(id)transaction home:(id)home;
- (HMDAccessoryVersion)firmwareVersion;
- (HMDApplicationData)appData;
- (HMDHome)home;
- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)metadataIdentifier;
- (HMDRoom)room;
- (HMDSoftwareUpdate)softwareUpdate;
- (HMDVendorModelEntry)vendorInfo;
- (HMFVersion)primaryProfileVersion;
- (NSArray)accessoryProfiles;
- (NSArray)transportReports;
- (NSData)wiFiUniquePreSharedKey;
- (NSDate)lastSeenDate;
- (NSDate)timeBecameReachable;
- (NSDate)timeBecameUnreachable;
- (NSDictionary)assistantObject;
- (NSNumber)initialCategoryIdentifier;
- (NSNumber)networkClientIdentifier;
- (NSString)contextID;
- (NSString)displayableFirmwareVersion;
- (NSString)hashRouteID;
- (NSString)identifier;
- (NSString)initialManufacturer;
- (NSString)initialModel;
- (NSString)manufacturer;
- (NSString)model;
- (NSString)name;
- (NSString)pendingConfigurationIdentifier;
- (NSString)productData;
- (NSString)productGroup;
- (NSString)providedName;
- (NSString)serialNumber;
- (NSString)urlString;
- (NSUUID)configuredNetworkProtectionGroupUUID;
- (NSUUID)contextSPIUniqueIdentifier;
- (NSUUID)defaultNetworkProtectionGroupUUID;
- (NSUUID)networkClientProfileFingerprint;
- (NSUUID)networkRouterUUID;
- (NSUUID)spiClientIdentifier;
- (_TtPO13HomeKitDaemon13LocalPresence4Room_)lpRoom;
- (double)lastPairingFailureTime;
- (id)_updateCategory:(id)category notifyClients:(BOOL)clients;
- (id)accessoryBulletinContext;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpNetworkState;
- (id)dumpSimpleState;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)findVendorInfoAndManufacturerKnown:(BOOL *)known;
- (id)getConfiguredName;
- (id)logIdentifier;
- (id)messageDestination;
- (id)messageSendPolicy;
- (id)metricLoggingTransportDetails;
- (id)metricLoggingVendorDetails;
- (id)modelWithUpdatedRoom:(id)room;
- (id)networkProtectionBindingForMessage:(id)message;
- (id)networkProtectionGroupUUID;
- (id)privateDescription;
- (id)runtimeState;
- (id)shortDescription;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)currentNetworkProtectionMode;
- (int64_t)networkClientLAN;
- (int64_t)reachableTransports;
- (int64_t)targetNetworkProtectionMode;
- (int64_t)wiFiCredentialType;
- (unint64_t)configNumber;
- (unint64_t)consecutivePairingFailure;
- (unint64_t)supportedTransports;
- (void)__handleGetAccessoryAdvertisingParams:(id)params;
- (void)__handleIdentify:(id)identify;
- (void)__handleListPairings:(id)pairings;
- (void)__handlePairingIdentityRequest:(id)request;
- (void)__handleSetAppData:(id)data;
- (void)__handleShowMatterLockNotification:(id)notification;
- (void)__handleUpdatePendingConfigurationIdentifierMessage:(id)message;
- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion;
- (void)_configNumberUpdated;
- (void)_handleLinkQualityRequestMessage:(id)message;
- (void)_handlePreviewAllowedHosts:(id)hosts;
- (void)_handleRenameMessage:(id)message;
- (void)_handleUpdateRoomMessage:(id)message;
- (void)_handleUpdatedName:(id)name;
- (void)_handleWiFiReconfiguration:(id)reconfiguration;
- (void)_notifyConnectivityChangedWithRemoteAccessChanged:(BOOL)changed;
- (void)_registerForMessages;
- (void)_relayIdentifyAccessorytoResidentForMessage:(id)message;
- (void)_remoteAccessEnabled:(BOOL)enabled;
- (void)_renameAccessory:(id)accessory resetName:(BOOL)name message:(id)message;
- (void)_updateBridgedAccessoriesWithLastSeenDate:(id)date;
- (void)_updateHost:(id)host;
- (void)addAccessoryProfile:(id)profile;
- (void)addHostedAccessory:(id)accessory;
- (void)appDataRemoved:(id)removed message:(id)message;
- (void)appDataUpdated:(id)updated message:(id)message;
- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration;
- (void)dealloc;
- (void)decodePreferredMediaUser:(id)user;
- (void)didEncounterError:(id)error;
- (void)encodePreferredMediaUser:(id)user;
- (void)encodeProfiles:(id)profiles forXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage:(id)message;
- (void)handleAddedAccessoryProfile:(id)profile;
- (void)handleAddedMediaProfile:(id)profile;
- (void)handleAddedSiriEndpointProfile:(id)profile;
- (void)handleAddedSoftwareUpdateModel:(id)model message:(id)message;
- (void)handleIdentifyAccessoryMessage:(id)message;
- (void)handleRemovedSoftwareUpdateModel:(id)model message:(id)message;
- (void)handleUpdatedSoftwareUpdateModel:(id)model newValues:(id)values message:(id)message;
- (void)notifyAccessoryNameChanged:(BOOL)changed;
- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)populateVendorDetailsForCoreAnalytics:(id)analytics keyPrefix:(id)prefix;
- (void)postAccessoryRenamedNotification;
- (void)remoteAccessEnabled:(BOOL)enabled;
- (void)removeAccessoryProfile:(id)profile;
- (void)removeCloudData;
- (void)removeHostedAccessory:(id)accessory;
- (void)renameDemoAccessory:(id)accessory;
- (void)resetHashedRoute;
- (void)runTransactionWithModel:(id)model label:(id)label completion:(id)completion;
- (void)runTransactionWithModels:(id)models label:(id)label completion:(id)completion;
- (void)saveCurrentNetworkProtectionMode:(int64_t)mode assignedLAN:(int64_t)n allowedWANHosts:(id)hosts profileFingerprint:(id)fingerprint;
- (void)saveNetworkAccessViolation:(id)violation;
- (void)saveNetworkClientIdentifier:(id)identifier networkRouterUUID:(id)d clearProfileFingerprint:(BOOL)fingerprint;
- (void)saveWiFiUniquePreSharedKey:(id)key credentialType:(int64_t)type;
- (void)sendRemovalRequestWithCompletion:(id)completion;
- (void)setAccessoryProfiles:(id)profiles;
- (void)setAppData:(id)data;
- (void)setCategory:(id)category;
- (void)setConfigNumber:(unint64_t)number;
- (void)setConfiguredName:(id)name;
- (void)setConfiguredNetworkProtectionGroupUUID:(id)d;
- (void)setConnected:(BOOL)connected;
- (void)setConsecutivePairingFailure:(unint64_t)failure;
- (void)setCurrentNetworkProtectionMode:(int64_t)mode;
- (void)setDefaultPreferredMediaUserIfRemoved:(id)removed defaultUser:(id)user completion:(id)completion;
- (void)setDisplayableFirmwareVersion:(id)version;
- (void)setFirmwareVersion:(id)version;
- (void)setHostAccessory:(id)accessory;
- (void)setIdentifier:(id)identifier;
- (void)setInitialCategoryIdentifier:(id)identifier;
- (void)setInitialManufacturer:(id)manufacturer;
- (void)setInitialModel:(id)model;
- (void)setIsKnownManufacturer:(BOOL)manufacturer;
- (void)setLastPairingFailureTime:(double)time;
- (void)setLastSeenDate:(id)date;
- (void)setLowBattery:(BOOL)battery;
- (void)setManufacturer:(id)manufacturer;
- (void)setModel:(id)model;
- (void)setNetworkClientIdentifier:(id)identifier;
- (void)setNetworkClientLAN:(int64_t)n;
- (void)setNetworkClientProfileFingerprint:(id)fingerprint;
- (void)setNetworkRouterUUID:(id)d;
- (void)setPendingConfigurationIdentifier:(id)identifier;
- (void)setPreferredMediaUser:(id)user selectionType:(unint64_t)type completion:(id)completion;
- (void)setPrimaryProfileVersion:(id)version;
- (void)setProductData:(id)data;
- (void)setProvidedName:(id)name;
- (void)setReachabilityPingEnabled:(BOOL)enabled;
- (void)setReachable:(BOOL)reachable;
- (void)setRemotelyReachable:(BOOL)reachable;
- (void)setResetOnBackoffExpiry:(BOOL)expiry;
- (void)setRoom:(id)room;
- (void)setSerialNumber:(id)number;
- (void)setSoftwareUpdate:(id)update;
- (void)setSoftwareUpdateForTesting:(id)testing;
- (void)setSuspendedCapable:(BOOL)capable;
- (void)setTimeBecameReachable:(id)reachable;
- (void)setTimeBecameUnreachable:(id)unreachable;
- (void)setVendorInfo:(id)info;
- (void)setWiFiUniquePreSharedKey:(id)key;
- (void)setWifiCredentialType:(int64_t)type;
- (void)setreachabilityPingNotificationEnabled:(BOOL)enabled;
- (void)startReachabilityCheck;
- (void)stopReachabilityCheck;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
- (void)transactionAccessoryUpdatedForPreferredMediaUser:(id)user completionHandler:(id)handler;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)updateCategory:(id)category;
- (void)updateGenerationCounterWithReason:(id)reason sourceUUID:(id)d shouldNotifyClients:(BOOL)clients;
- (void)updateLastSeenStatusWithDate:(id)date lowBatteryStatus:(id)status;
- (void)updateMediaSession:(id)session;
- (void)updateRoom:(id)room source:(unint64_t)source;
- (void)updateSoftwareUpdate:(id)update completionHandler:(id)handler;
- (void)updateVendorInfo;
@end

@implementation HMDAccessory

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)isDemoAccessory
{
  selfCopy = self;
  v3 = HMDAccessory.isDemoAccessory.getter();

  return v3 & 1;
}

- (BOOL)isCurrentDemoAccessory
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return ([v2 variant] >> 7) & 1;
  }

  return v2;
}

- (void)renameDemoAccessory:(id)accessory
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  HMDAccessory.renameDemoAccessory(_:)(v8);
}

- (_TtPO13HomeKitDaemon13LocalPresence4Room_)lpRoom
{
  room = [(HMDAccessory *)self room];

  return room;
}

- (id)accessoryBulletinContext
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"accessory";
  contextID = [(HMDAccessory *)self contextID];
  v6[0] = contextID;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (NSUUID)contextSPIUniqueIdentifier
{
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  uuid = [(HMDAccessory *)self uuid];
  v6 = [v4 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:v3];

  return v6;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDAccessory *)self home];
  contextID = [home contextID];
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"%@:%@", contextID, uUIDString];

  return v8;
}

- (void)_handlePreviewAllowedHosts:(id)hosts
{
  hostsCopy = hosts;
  if ([(HMDAccessory *)self supportsNetworkProtection])
  {
    home = [(HMDAccessory *)self home];
    v6 = [HMDAccessoryAllowedHostsPreviewHelper helperForHome:home];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__HMDAccessory_NetworkProtection2___handlePreviewAllowedHosts___block_invoke;
    v8[3] = &unk_27867E6F8;
    v9 = hostsCopy;
    [v6 fetchAllowedHostsForAccessory:self completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [hostsCopy respondWithError:v7];
  }
}

void __63__HMDAccessory_NetworkProtection2___handlePreviewAllowedHosts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v10 = *MEMORY[0x277CD09E0];
    v8 = encodeRootObjectForSPIClients(v5);
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v9 = 0;
  }

  [*(a1 + 32) respondWithPayload:v9 error:v7];
}

- (id)networkProtectionBindingForMessage:(id)message
{
  v12[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  name = [messageCopy name];
  v5 = HMFEqualObjects();

  if (v5)
  {
    v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v12[0] = v6;
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

    name2 = [messageCopy name];
    v10 = HMFCreateMessageBindingWithReceiver();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)submitLogEvent:(id)event error:(id)error
{
  errorCopy = error;
  eventCopy = event;
  home = [(HMDAccessory *)self home];
  logEventSubmitter = [home logEventSubmitter];
  [logEventSubmitter submitLogEvent:eventCopy error:errorCopy];
}

- (void)submitLogEvent:(id)event
{
  eventCopy = event;
  home = [(HMDAccessory *)self home];
  logEventSubmitter = [home logEventSubmitter];
  [logEventSubmitter submitLogEvent:eventCopy error:0];
}

- (void)notifyClientsOfUpdatedAccessoryControllableValue:(BOOL)value
{
  valueCopy = value;
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Notifying clients of updated accessory controllable value: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{valueCopy, *MEMORY[0x277CCE9E0]}];
  v29 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v12 = *MEMORY[0x277CCE9E8];
  v13 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCE9E8] messagePayload:v11];
  v14 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessory *)selfCopy messageTargetUUID];
  v16 = [v14 initWithTarget:messageTargetUUID];
  [v13 setDestination:v16];

  v17 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:0 options:-1 active:1];
  [v13 setSendPolicy:v17];

  msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
  v19 = objc_msgSend_copy(v13);
  [msgDispatcher sendMessage:v19 completionHandler:0];

  v20 = selfCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    supportsFirmwareUpdate = [(HMDAccessory *)v25 supportsFirmwareUpdate];
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    supportsFirmwareUpdate = 0;
    if (v22)
    {
LABEL_14:
      home = [(HMDAccessory *)v23 home];
      [home saveToCurrentAccountWithReason:v12];

      goto LABEL_15;
    }
  }

  if (supportsFirmwareUpdate)
  {
    goto LABEL_14;
  }

LABEL_15:
}

- (void)stopReachabilityCheck
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)startReachabilityCheck
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)handleRemovedSoftwareUpdateModel:(id)model message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  v9 = -[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [transactionResult source]);
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v13)
    {
      v18 = HMFGetLogIdentifier();
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionResult, "source")}];
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing software update is not allowed from source %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    responseHandler2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:responseHandler2];
    goto LABEL_9;
  }

  if (v13)
  {
    v14 = HMFGetLogIdentifier();
    softwareUpdate = [(HMDAccessory *)selfCopy softwareUpdate];
    v20 = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = softwareUpdate;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing software update: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMDAccessory *)selfCopy setSoftwareUpdate:0];
  [transactionResult markChanged];
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
LABEL_9:
  }
}

- (void)handleAddedSoftwareUpdateModel:(id)model message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  if (-[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [transactionResult source]))
  {
    v9 = [[HMDSoftwareUpdate alloc] initWithModel:modelCopy];
    [(HMDAccessory *)self setSoftwareUpdate:v9];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Added software update: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [transactionResult markChanged];
    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [messageCopy responseHandler];
      responseHandler2[2](responseHandler2, 0, 0);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionResult, "source")}];
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding software update is not allowed from source %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v9];
  }
}

- (void)handleUpdatedSoftwareUpdateModel:(id)model newValues:(id)values message:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  valuesCopy = values;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  if (-[HMDAccessory _allowSoftwareUpdateChangeFromSource:](self, "_allowSoftwareUpdateChangeFromSource:", [transactionResult source]))
  {
    softwareUpdate = [(HMDAccessory *)self softwareUpdate];
    [softwareUpdate transactionObjectUpdated:modelCopy newValues:valuesCopy message:messageCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(transactionResult, "source")}];
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating software update is not allowed from source %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    softwareUpdate = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:softwareUpdate];
  }
}

- (BOOL)_allowSoftwareUpdateChangeFromSource:(unint64_t)source
{
  home = [(HMDAccessory *)self home];
  isOwnerUser = [home isOwnerUser];

  if (!isOwnerUser)
  {
    return 1;
  }

  result = [(HMDAccessory *)self supportsFirmwareUpdate];
  if (source < 2)
  {
    return 1;
  }

  return result;
}

- (void)_applySoftwareUpdateModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];
  v11 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  v12 = [backingStore transaction:@"HMDAccessorySoftwareUpdate" options:v11];

  [v12 add:modelCopy withMessage:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HMDAccessory__applySoftwareUpdateModel_completion___block_invoke;
  v14[3] = &unk_278688DD0;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 run:v14];
}

uint64_t __53__HMDAccessory__applySoftwareUpdateModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSoftwareUpdate:(id)update completionHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDAccessory_updateSoftwareUpdate_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  v12 = updateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __55__HMDAccessory_updateSoftwareUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) supportsSoftwareUpdate])
  {
    v2 = [*(a1 + 32) softwareUpdate];
    if (HMFEqualObjects())
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 32);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v6;
        _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot update software update, matches existing update", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
      if (!*(a1 + 48))
      {
        goto LABEL_39;
      }

      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      (*(*(a1 + 48) + 16))();
      goto LABEL_38;
    }

    v12 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;

    if (([v7 supportsCHIP] & 1) == 0)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_23;
      }

      v14 = [*(a1 + 32) firmwareVersion];
      v15 = [*(a1 + 40) version];
      v16 = [v14 isAtLeastVersion:v15];

      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [*(a1 + 40) version];
          v22 = [v21 versionString];
          v23 = [*(a1 + 32) firmwareVersion];
          [v23 versionString];
          v24 = v41 = v17;
          *buf = 138543874;
          v43 = v20;
          v44 = 2112;
          v45 = v22;
          v46 = 2112;
          v47 = v24;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Software update, '%@', is older than current software version, '%@'", buf, 0x20u);

          v17 = v41;
        }

        objc_autoreleasePoolPop(v17);
        if (!*(a1 + 48))
        {
          goto LABEL_38;
        }

        v25 = MEMORY[0x277CCA9B8];
        v26 = 44;
        goto LABEL_36;
      }
    }

    v27 = *(a1 + 40);
    if (v27 && ![v27 downloadSize])
    {
      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 32);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = HMFGetLogIdentifier();
        v40 = *(a1 + 40);
        *buf = 138543618;
        v43 = v39;
        v44 = 2112;
        v45 = v40;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Software update, '%@', has invalid 0 download size.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      if (!*(a1 + 48))
      {
        goto LABEL_38;
      }

      v25 = MEMORY[0x277CCA9B8];
      v26 = 3;
LABEL_36:
      v34 = [v25 hmErrorWithCode:v26];
      (*(*(a1 + 48) + 16))();
LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

LABEL_23:
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 40);
      *buf = 138543618;
      v43 = v31;
      v44 = 2112;
      v45 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Updating software update to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    [*(a1 + 40) configureWithAccessory:*(a1 + 32) dataSource:*(a1 + 32) messageDispatcher:0];
    v33 = *(a1 + 40);
    if (v33)
    {
      v34 = [v33 model];
    }

    else
    {
      v34 = [v2 transactionWithObjectChangeType:0];
      [v34 setSoftwareVersion:0];
      [v34 setDisplayableSoftwareVersion:0];
      [v34 setState:0];
      [v34 setInstallDuration:0];
      [v34 setDownloadSize:0];
      [v34 setReleaseDate:0];
    }

    if (v2)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    [v34 setObjectChangeType:v35];
    [*(a1 + 32) _applySoftwareUpdateModel:v34 completion:*(a1 + 48)];
    goto LABEL_37;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot update software update for an accessory that does not support software update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (*(a1 + 48))
  {
    v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(*(a1 + 48) + 16))();
LABEL_39:
  }
}

- (void)updateGenerationCounterWithReason:(id)reason sourceUUID:(id)d shouldNotifyClients:(BOOL)clients
{
  clientsCopy = clients;
  dCopy = d;
  reasonCopy = reason;
  home = [(HMDAccessory *)self home];
  homeManager = [home homeManager];
  [homeManager updateGenerationCounterWithReason:reasonCopy sourceUUID:dCopy shouldNotifyClients:clientsCopy];
}

- (void)setSoftwareUpdate:(id)update
{
  updateCopy = update;
  os_unfair_recursive_lock_lock_with_options();
  if (HMFEqualObjects())
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v5 = self->_softwareUpdate;
    objc_storeStrong(&self->_softwareUpdate, update);
    os_unfair_recursive_lock_unlock();
    msgDispatcher = [(HMDAccessory *)self msgDispatcher];
    [updateCopy configureWithAccessory:self dataSource:self messageDispatcher:msgDispatcher];

    home = [(HMDAccessory *)self home];
    v8 = home;
    if (home)
    {
      [home reevaluateAccessoryInfo];
    }

    if (v5)
    {
      [(HMDSoftwareUpdate *)v5 invalidate];
    }
  }
}

- (void)setSoftwareUpdateForTesting:(id)testing
{
  testingCopy = testing;
  os_unfair_recursive_lock_lock_with_options();
  softwareUpdate = self->_softwareUpdate;
  self->_softwareUpdate = testingCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDSoftwareUpdate)softwareUpdate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareUpdate;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)__handlePairingIdentityRequest:(id)request
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CCF0B0]];
  uuid = [(HMDAccessory *)self uuid];
  v7 = HMFEqualObjects();

  if (v7)
  {
    selfCopy = self;
    if ([(HMDAccessory *)selfCopy conformsToProtocol:&unk_283F01280])
    {
      v9 = selfCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (!v10)
    {
      if (v14)
      {
        v30 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v30;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity from an accessory that does not support pairing identity", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      pairingIdentity = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [requestCopy respondWithError:pairingIdentity];
      goto LABEL_26;
    }

    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v38 = 138543362;
      v39 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received request to to retrieve pairing identity for accessory", &v38, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    pairingIdentity = [(HMDAccessory *)v10 pairingIdentity];
    if (pairingIdentity)
    {
      v17 = [requestCopy BOOLForKey:*MEMORY[0x277CCEC28]];
      proxyConnection = [requestCopy proxyConnection];
      entitlements = [proxyConnection entitlements];

      if (!v17 || (entitlements & 0x10) != 0)
      {
        home = [(HMDAccessory *)v12 home];
        homeManager = [home homeManager];
        [homeManager sendPairingIdentity:pairingIdentity includePrivateKey:v17 requestMessage:requestCopy];

        goto LABEL_25;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = v12;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Client requested private key but does not have entitlement for private key", &v38, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 17;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v12;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        name = [(HMDAccessory *)v32 name];
        v38 = 138543618;
        v39 = v34;
        v40 = 2112;
        v41 = name;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Pairing identity for accessory not found : %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 2;
    }

    home = [v24 hmErrorWithCode:v25];
    [requestCopy respondWithError:home];
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v38 = 138543618;
    v39 = v29;
    v40 = 2112;
    v41 = requestCopy;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Attempt to retrieve pairing identity with mismatching identifier from message: %@", &v38, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [requestCopy respondWithError:v10];
LABEL_27:
}

- (void)_updateHost:(id)host
{
  v30 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  hostAccessory = [(HMDAccessory *)self hostAccessory];
  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  v6 = [hostCopy isEqual:hmf_zeroUUID];

  if (v6)
  {
    v7 = hostAccessory == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!hostAccessory || ([hostAccessory uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", hostCopy), v8, (v9 & 1) == 0))
    {
      v10 = hostCopy;
      if (self)
      {
        home = [(HMDAccessory *)self home];
        v12 = [home accessoryWithUUID:v10];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v23 = home;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          allNewlyConfiguredAccessories = [home allNewlyConfiguredAccessories];
          v16 = [allNewlyConfiguredAccessories countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(allNewlyConfiguredAccessories);
                }

                v20 = *(*(&v25 + 1) + 8 * i);
                uuid = [v20 uuid];
                v22 = [uuid isEqual:v10];

                if (v22)
                {
                  v14 = v20;

                  goto LABEL_21;
                }
              }

              v17 = [allNewlyConfiguredAccessories countByEnumeratingWithState:&v25 objects:v29 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v14 = 0;
LABEL_21:
          v13 = 0;
          home = v23;
        }
      }

      else
      {
        v14 = 0;
      }

      [hostAccessory removeHostedAccessory:self];
      [v14 addHostedAccessory:self];
      [(HMDAccessory *)self setHostAccessory:v14];
    }
  }

  else
  {
    [hostAccessory removeHostedAccessory:self];
    [(HMDAccessory *)self setHostAccessory:0];
  }
}

- (HMDAccessory)hostAccessory
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_hostAccessory);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (void)setHostAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_recursive_lock_lock_with_options();
  objc_storeWeak(&self->_hostAccessory, accessoryCopy);

  os_unfair_recursive_lock_unlock();
}

- (void)removeHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)addHostedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (NSString)hashRouteID
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessory *)self providesHashRouteID])
  {
    os_unfair_recursive_lock_lock_with_options();
    hashRouteID = self->_hashRouteID;
    if (hashRouteID)
    {
      v4 = hashRouteID;
    }

    else
    {
      os_unfair_recursive_lock_unlock();
      v5 = objc_autoreleasePoolPush();
      selfCopy = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Do not have cached hashed route, reaching out to siri to fetch it", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      hashedRouteFactory = [(HMDAccessory *)selfCopy hashedRouteFactory];
      identifier = [(HMDAccessory *)selfCopy identifier];
      v4 = (hashedRouteFactory)[2](hashedRouteFactory, identifier);

      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Caching hashed route from siri: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      os_unfair_recursive_lock_lock_with_options();
      objc_storeStrong(&self->_hashRouteID, v4);
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetHashedRoute
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessory *)self providesHashRouteID])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting cached hashed route", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    os_unfair_recursive_lock_lock_with_options();
    hashRouteID = selfCopy->_hashRouteID;
    selfCopy->_hashRouteID = 0;

    os_unfair_recursive_lock_unlock();
  }
}

- (void)encodeProfiles:(id)profiles forXPCCoder:(id)coder
{
  coderCopy = coder;
  profilesCopy = profiles;
  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v9 = __43__HMDAccessory_encodeProfiles_forXPCCoder___block_invoke;
  }

  else
  {
    v8 = &v11;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v9 = __43__HMDAccessory_encodeProfiles_forXPCCoder___block_invoke_2;
  }

  v8[2] = v9;
  v8[3] = &unk_2786756E8;
  v8[4] = self;
  v10 = [profilesCopy na_filter:{v11, v12}];

  [coderCopy encodeObject:v10 forKey:@"HM.accessoryProfiles"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  hmd_homeManagerOptions = [coderCopy hmd_homeManagerOptions];
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"accessoryUUID"];

  getConfiguredName = [(HMDAccessory *)self getConfiguredName];
  [coderCopy encodeObject:getConfiguredName forKey:@"accessoryConfiguredName"];

  displayableFirmwareVersion = [(HMDAccessory *)self displayableFirmwareVersion];
  [coderCopy encodeObject:displayableFirmwareVersion forKey:*MEMORY[0x277CCEA38]];

  if (hmd_isForXPCTransport)
  {
    name = [(HMDAccessory *)self name];
    [coderCopy encodeObject:name forKey:@"accessoryName"];

    firmwareVersion = [(HMDAccessory *)self firmwareVersion];
    shortVersionString = [firmwareVersion shortVersionString];
    [coderCopy encodeObject:shortVersionString forKey:@"HM.firmwareVersion"];

    if (!hmd_isForXPCTransportEntitledForSPIAccess)
    {
      v14 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    configuredName = [(HMDAccessory *)self configuredName];
    [coderCopy encodeObject:configuredName forKey:@"accessoryName"];

    firmwareVersion2 = [(HMDAccessory *)self firmwareVersion];
    rawVersionString = [firmwareVersion2 rawVersionString];
    [coderCopy encodeObject:rawVersionString forKey:@"HM.firmwareVersion"];
  }

  serialNumber = [(HMDAccessory *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"HM.serialNumber"];

  v14 = 0;
LABEL_6:
  manufacturer = [(HMDAccessory *)self manufacturer];
  [coderCopy encodeObject:manufacturer forKey:@"HM.manufacturer"];

  model = [(HMDAccessory *)self model];
  [coderCopy encodeObject:model forKey:@"HM.model"];

  isSuspendCapable = [(HMDAccessory *)self isSuspendCapable];
  [coderCopy encodeBool:isSuspendCapable forKey:*MEMORY[0x277CD1FA0]];
  isDemoAccessory = [(HMDAccessory *)self isDemoAccessory];
  [coderCopy encodeBool:isDemoAccessory forKey:*MEMORY[0x277CCEA10]];
  if (hmd_isForXPCTransportEntitledForSPIAccess)
  {
    [coderCopy encodeInt32:-[HMDAccessory accessoryReprovisionState](self forKey:{"accessoryReprovisionState"), @"HM.accessoryReprovisionState"}];
  }

  isCurrentAccessory = [(HMDAccessory *)self isCurrentAccessory];
  if (hmd_isForXPCTransport)
  {
    [coderCopy encodeBool:isCurrentAccessory forKey:*MEMORY[0x277CCE9F0]];
    supportsIdentify = [(HMDAccessory *)self supportsIdentify];
    [coderCopy encodeBool:supportsIdentify forKey:*MEMORY[0x277CCEFB0]];
  }

  if ((hmd_homeManagerOptions & 0x9741) != 0 || isCurrentAccessory && (hmd_homeManagerOptions & 0x10) != 0)
  {
    home = [(HMDAccessory *)self home];
    allowedHosts = [(HMDAccessory *)self allowedHosts];
    [coderCopy encodeObject:allowedHosts forKey:*MEMORY[0x277CCE7E8]];

    networkAccessViolation = [(HMDAccessory *)self networkAccessViolation];
    [coderCopy encodeObject:networkAccessViolation forKey:*MEMORY[0x277CCEBA0]];

    if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
    {
      category = [(HMDAccessory *)self category];
      [coderCopy encodeObject:category forKey:@"HM.accessoryCategory"];
    }

    if ((hmd_isForXPCTransport & 1) == 0)
    {
      firmwareVersion3 = [(HMDAccessory *)self firmwareVersion];
      [coderCopy encodeObject:firmwareVersion3 forKey:@"HM.firmwareVersionObject"];

      productData = [(HMDAccessory *)self productData];
      [coderCopy encodeObject:productData forKey:@"HMDA.productData2"];

      primaryProfileVersion = [(HMDAccessory *)self primaryProfileVersion];
      versionString = [primaryProfileVersion versionString];
      [coderCopy encodeObject:versionString forKey:@"HMDA.primaryProfileVersion"];
    }

    if ([coderCopy hmd_isForLocalStore])
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessory configNumber](self, "configNumber")}];
      [coderCopy encodeObject:v33 forKey:@"HMDAccessoryConfigurationNumberCodingKey"];

      lastSeenDate = [(HMDAccessory *)self lastSeenDate];
      [coderCopy encodeObject:lastSeenDate forKey:@"HMDAccessoryLastSeenDateCodingKey"];

      [coderCopy encodeBool:-[HMDAccessory isLowBattery](self forKey:{"isLowBattery"), @"HMDAccessoryLowBatteryCodingKey"}];
    }

    if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransport") && (objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") & 1) == 0 && (objc_msgSend(coderCopy, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount") && (objc_msgSend(coderCopy, "hmd_isForRemoteGatewayCoder") & 1) == 0)
    {
      networkClientIdentifier = [(HMDAccessory *)self networkClientIdentifier];
      [coderCopy encodeObject:networkClientIdentifier forKey:@"HMDA.nci"];

      networkRouterUUID = [(HMDAccessory *)self networkRouterUUID];
      uUIDString2 = [networkRouterUUID UUIDString];
      [coderCopy encodeObject:uUIDString2 forKey:@"HMDA.nruuid"];

      [coderCopy encodeInteger:-[HMDAccessory networkClientLAN](self forKey:{"networkClientLAN"), @"HMDA.ncl"}];
      networkClientProfileFingerprint = [(HMDAccessory *)self networkClientProfileFingerprint];
      uUIDString3 = [networkClientProfileFingerprint UUIDString];
      [coderCopy encodeObject:uUIDString3 forKey:@"HMDA.ncfp"];

      wiFiUniquePreSharedKey = [(HMDAccessory *)self wiFiUniquePreSharedKey];
      [coderCopy encodeObject:wiFiUniquePreSharedKey forKey:@"HMDA.wifiUniquePSK"];

      initialManufacturer = [(HMDAccessory *)self initialManufacturer];
      [coderCopy encodeObject:initialManufacturer forKey:@"HMDA.initialManufacturer"];

      initialModel = [(HMDAccessory *)self initialModel];
      [coderCopy encodeObject:initialModel forKey:@"HMDA.initialModel"];

      initialCategoryIdentifier = [(HMDAccessory *)self initialCategoryIdentifier];
      [coderCopy encodeObject:initialCategoryIdentifier forKey:@"HMDA.initialCategoryIdentifier"];
    }

    if (((v14 | [coderCopy hmd_isForRemoteGatewayCoder]) & 1) == 0)
    {
      targetNetworkProtectionMode = [(HMDAccessory *)self targetNetworkProtectionMode];
      [coderCopy encodeInteger:targetNetworkProtectionMode forKey:*MEMORY[0x277CCF088]];
      currentNetworkProtectionMode = [(HMDAccessory *)self currentNetworkProtectionMode];
      [coderCopy encodeInteger:currentNetworkProtectionMode forKey:*MEMORY[0x277CCE9F8]];
      wiFiCredentialType = [(HMDAccessory *)self wiFiCredentialType];
      [coderCopy encodeInteger:wiFiCredentialType forKey:*MEMORY[0x277CCF100]];
      if (hmd_isForXPCTransport)
      {
        networkProtectionGroupUUID = [(HMDAccessory *)self networkProtectionGroupUUID];
        v48 = MEMORY[0x277CCEC68];
      }

      else
      {
        networkProtectionGroupUUID = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
        v48 = MEMORY[0x277CCE9B8];
      }

      uUIDString4 = [networkProtectionGroupUUID UUIDString];
      [coderCopy encodeObject:uUIDString4 forKey:*v48];

      if ([(HMDAccessory *)self supportsSoftwareUpdate])
      {
        if (([coderCopy hmd_isForNonAdminSharedUser] & 1) == 0)
        {
          if (hmd_isForXPCTransport && ![home isAdminUser])
          {
            goto LABEL_35;
          }

          softwareUpdate = [(HMDAccessory *)self softwareUpdate];
          [coderCopy encodeObject:softwareUpdate forKey:*MEMORY[0x277CCEEE8]];
        }
      }
    }

    if (!hmd_isForXPCTransport)
    {
      [coderCopy encodeConditionalObject:home forKey:@"home"];
      appData = [(HMDAccessory *)self appData];
      [coderCopy encodeObject:appData forKey:@"HM.appDataRepository"];

      if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
      {
        providedName = [(HMDAccessory *)self providedName];
        [coderCopy encodeObject:providedName forKey:@"accessoryProvidedName"];

        room = [(HMDAccessory *)self room];
        [coderCopy encodeConditionalObject:room forKey:@"accessoryRoom"];
      }

      identifier = [(HMDAccessory *)self identifier];
      [coderCopy encodeObject:identifier forKey:@"accessoryServerIdentifier"];
      goto LABEL_50;
    }

LABEL_35:
    [coderCopy encodeBool:-[HMDAccessory isReachableForXPCClients](self forKey:{"isReachableForXPCClients"), @"reachable"}];
    if (hmd_isForXPCTransportEntitledForSPIAccess)
    {
      reachableTransports = [(HMDAccessory *)self reachableTransports];
      [coderCopy encodeInteger:reachableTransports forKey:*MEMORY[0x277CD1FF0]];
    }

    room2 = [(HMDAccessory *)self room];
    [coderCopy encodeObject:room2 forKey:@"accessoryRoom"];

    supportsNetworkProtection = [(HMDAccessory *)self supportsNetworkProtection];
    [coderCopy encodeBool:supportsNetworkProtection forKey:*MEMORY[0x277CCEC18]];
    v54 = [(HMDAccessory *)self currentNetworkProtectionMode]== 1;
    [coderCopy encodeBool:v54 forKey:*MEMORY[0x277CCEBB8]];
    vendorInfo = [(HMDAccessory *)self vendorInfo];
    identifier = vendorInfo;
    if (hmd_isForXPCTransportEntitledForSPIAccess)
    {
      appBundleID = [vendorInfo appBundleID];
      [coderCopy encodeObject:appBundleID forKey:@"HM.bundleID"];

      appStoreID = [identifier appStoreID];
      [coderCopy encodeObject:appStoreID forKey:@"HM.storeID"];

      firmwareVersion4 = [(HMDAccessory *)self firmwareVersion];
      if (firmwareVersion4 && [(HMDAccessory *)self isPrimary])
      {
        firmwareVersion5 = [identifier firmwareVersion];
        firmwareVersion6 = [(HMDAccessory *)self firmwareVersion];
        v62 = [firmwareVersion5 isGreaterThanVersion:firmwareVersion6];
      }

      else
      {
        v62 = 0;
      }

      [coderCopy encodeBool:v62 forKey:@"HM.firmwareUpdateAvailable"];
      identifier2 = [(HMDAccessory *)self identifier];
      [coderCopy encodeObject:identifier2 forKey:@"accessoryServerIdentifier"];

      supportsWiFiReconfiguration = [(HMDAccessory *)self supportsWiFiReconfiguration];
      [coderCopy encodeBool:supportsWiFiReconfiguration forKey:*MEMORY[0x277CCF110]];
      supportsMultiUser = [(HMDAccessory *)self supportsMultiUser];
      [coderCopy encodeBool:supportsMultiUser forKey:*MEMORY[0x277CCEB98]];
      supportsHomeLevelLocationServiceSetting = [(HMDAccessory *)self supportsHomeLevelLocationServiceSetting];
      [coderCopy encodeBool:supportsHomeLevelLocationServiceSetting forKey:*MEMORY[0x277CCEB00]];
      supportsDoorbellChime = [(HMDAccessory *)self supportsDoorbellChime];
      [coderCopy encodeBool:supportsDoorbellChime forKey:*MEMORY[0x277CCEFA0]];
      supportsUserMediaSettings = [(HMDAccessory *)self supportsUserMediaSettings];
      [coderCopy encodeBool:supportsUserMediaSettings forKey:*MEMORY[0x277CCF038]];
      supportsAudioReturnChannel = [(HMDAccessory *)self supportsAudioReturnChannel];
      [coderCopy encodeBool:supportsAudioReturnChannel forKey:*MEMORY[0x277CCEF60]];
      supportsMusicAlarm = [(HMDAccessory *)self supportsMusicAlarm];
      [coderCopy encodeBool:supportsMusicAlarm forKey:*MEMORY[0x277CCEFE8]];
      supportsAnnounce = [(HMDAccessory *)self supportsAnnounce];
      [coderCopy encodeBool:supportsAnnounce forKey:*MEMORY[0x277CCEF50]];
      supportsMediaActions = [(HMDAccessory *)self supportsMediaActions];
      v69 = MEMORY[0x277CCEFD0];
    }

    else
    {
      hmd_message = [coderCopy hmd_message];
      v67 = [hmd_message isEntitledForVendorAccessForAccessoryWithVendorInfo:identifier];

      if (!v67)
      {
LABEL_49:
        appData2 = [(HMDAccessory *)self appData];
        [appData2 encodeForXPCTransportWithCoder:coderCopy key:@"HM.appData"];

        accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
        v81 = objc_msgSend_copy(accessoryProfiles);

        [(HMDAccessory *)self encodeProfiles:v81 forXPCCoder:coderCopy];
LABEL_50:

        [coderCopy encodeBool:-[HMDAccessory isPrimary](self forKey:{"isPrimary"), @"isPrimary"}];
        if ((v14 & 1) == 0)
        {
          pendingConfigurationIdentifier = [(HMDAccessory *)self pendingConfigurationIdentifier];
          [coderCopy encodeObject:pendingConfigurationIdentifier forKey:*MEMORY[0x277CCEC40]];
        }

        goto LABEL_53;
      }

      supportsMediaActions = 1;
      v69 = MEMORY[0x277CCEB28];
    }

    [coderCopy encodeBool:supportsMediaActions forKey:*v69];
    goto LABEL_49;
  }

LABEL_53:
}

- (void)handleIdentifyAccessoryMessage:(id)message
{
  v3 = MEMORY[0x277CCA9B8];
  messageCopy = message;
  v5 = [v3 hmErrorWithCode:48];
  [messageCopy respondWithError:v5];
}

- (HMDAccessory)initWithCoder:(id)coder
{
  v108 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDAccessory *)self init];
  if (!v5)
  {
LABEL_39:
    v19 = v5;
    goto LABEL_40;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_uuid, v7);
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
      objc_storeWeak(&v5->_home, v9);

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryRoom"];
      room = v5->_room;
      v5->_room = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategory"];
      category = v5->_category;
      v5->_category = v12;

      if (v5->_category)
      {
        v14 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:?];
        categoryIdentifier = v5->_categoryIdentifier;
        v5->_categoryIdentifier = v14;
      }

      else
      {
        v20 = +[HMDHAPMetadata getSharedInstance];
        categoryForOther = [v20 categoryForOther];
        identifier = [categoryForOther identifier];
        v23 = v5->_categoryIdentifier;
        v5->_categoryIdentifier = identifier;

        v24 = [MEMORY[0x277CD1680] categoryWithCategoryIdentifier:v5->_categoryIdentifier];
        categoryIdentifier = v5->_category;
        v5->_category = v24;
      }

      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryLastSeenDateCodingKey"];
      lastSeenDate = v5->_lastSeenDate;
      v5->_lastSeenDate = v25;

      v5->_lowBattery = [coderCopy decodeBoolForKey:@"HMDAccessoryLowBatteryCodingKey"];
      if ([coderCopy containsValueForKey:@"HMDAccessoryConfigurationNumberCodingKey"])
      {
        v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryConfigurationNumberCodingKey"];
        v5->_configNumber = [v27 unsignedIntegerValue];
      }

      categoryType = [(HMAccessoryCategory *)v5->_category categoryType];
      v29 = [categoryType isEqualToString:*MEMORY[0x277CCE928]];

      if (v29)
      {
        v30 = MEMORY[0x277CD1680];
        v31 = objc_alloc(MEMORY[0x277CCAD78]);
        v32 = [v31 initWithUUIDString:*MEMORY[0x277CCE920]];
        v33 = [v30 categoryWithIdentifier:v32];
        v34 = v5->_category;
        v5->_category = v33;
      }

      v35 = [coderCopy containsValueForKey:@"accessoryConfiguredName"];
      v36 = objc_opt_class();
      if (v35)
      {
        v37 = @"accessoryConfiguredName";
      }

      else
      {
        v37 = @"accessoryName";
      }

      v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
      hm_truncatedNameString = [v38 hm_truncatedNameString];
      configuredName = v5->_configuredName;
      v5->_configuredName = hm_truncatedNameString;

      v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProvidedName"];
      hm_truncatedNameString2 = [v41 hm_truncatedNameString];
      providedName = v5->_providedName;
      v5->_providedName = hm_truncatedNameString2;

      v5->_suspendCapable = [coderCopy decodeBoolForKey:*MEMORY[0x277CD1FA0]];
      LODWORD(v41) = [coderCopy containsValueForKey:@"accessoryServerIdentifier"];
      v44 = objc_opt_class();
      if (v41)
      {
        v45 = [coderCopy decodeObjectOfClass:v44 forKey:@"accessoryServerIdentifier"];
        identifier = v5->_identifier;
        v5->_identifier = v45;
      }

      else
      {
        identifier = [coderCopy decodeObjectOfClass:v44 forKey:@"accessoryIdentifier"];
        v47 = [MEMORY[0x277CFE9F8] serverIdentifierWithUniqueIdentifier:identifier];
        v48 = v5->_identifier;
        v5->_identifier = v47;
      }

      v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.manufacturer"];
      manufacturer = v5->_manufacturer;
      v5->_manufacturer = v49;

      v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.model"];
      model = v5->_model;
      v5->_model = v51;

      v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
      serialNumber = v5->_serialNumber;
      v5->_serialNumber = v53;

      v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialManufacturer"];
      initialManufacturer = v5->_initialManufacturer;
      v5->_initialManufacturer = v55;

      v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialModel"];
      initialModel = v5->_initialModel;
      v5->_initialModel = v57;

      v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.initialCategoryIdentifier"];
      initialCategoryIdentifier = v5->_initialCategoryIdentifier;
      v5->_initialCategoryIdentifier = v59;

      if ([coderCopy containsValueForKey:@"HMDA.productData2"])
      {
        v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.productData2"];
        productData = v5->_productData;
        v5->_productData = v61;
      }

      v63 = *MEMORY[0x277CCEA38];
      if ([coderCopy containsValueForKey:*MEMORY[0x277CCEA38]])
      {
        v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v63];
        displayableFirmwareVersion = v5->_displayableFirmwareVersion;
        v5->_displayableFirmwareVersion = v64;
      }

      if ([coderCopy containsValueForKey:@"HM.firmwareVersionObject"])
      {
        v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.firmwareVersionObject"];
        firmwareVersion = v5->_firmwareVersion;
        v5->_firmwareVersion = v66;
      }

      else
      {
        firmwareVersion = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.firmwareVersion"];
        if (firmwareVersion)
        {
          v68 = [[HMDAccessoryVersion alloc] initWithString:firmwareVersion];
          v69 = v5->_firmwareVersion;
          v5->_firmwareVersion = v68;
        }
      }

      v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEEE8]];
      softwareUpdate = v5->_softwareUpdate;
      v5->_softwareUpdate = v70;

      v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
      appData = v5->_appData;
      v5->_appData = v72;

      [(HMDApplicationData *)v5->_appData updateParentUUIDIfNil:v5->_uuid];
      v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.nci"];
      networkClientIdentifier = v5->_networkClientIdentifier;
      v5->_networkClientIdentifier = v74;

      v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.nruuid"];
      v77 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v76];
      networkRouterUUID = v5->_networkRouterUUID;
      v5->_networkRouterUUID = v77;

      v5->_networkClientLAN = [coderCopy decodeIntegerForKey:@"HMDA.ncl"];
      v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.ncfp"];
      v80 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v79];
      networkClientProfileFingerprint = v5->_networkClientProfileFingerprint;
      v5->_networkClientProfileFingerprint = v80;

      v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBA0]];
      networkAccessViolation = v5->_networkAccessViolation;
      v5->_networkAccessViolation = v82;

      v84 = *MEMORY[0x277CCE9F8];
      if ([coderCopy containsValueForKey:*MEMORY[0x277CCE9F8]])
      {
        v5->_currentNetworkProtectionMode = [coderCopy decodeIntegerForKey:v84];
      }

      v85 = *MEMORY[0x277CCF100];
      if ([coderCopy containsValueForKey:*MEMORY[0x277CCF100]])
      {
        v5->_wiFiCredentialType = [coderCopy decodeIntegerForKey:v85];
      }

      v86 = MEMORY[0x277CBEB98];
      v103[0] = objc_opt_class();
      v103[1] = objc_opt_class();
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
      v88 = [v86 setWithArray:{v87, v103[0]}];
      v89 = [coderCopy decodeObjectOfClasses:v88 forKey:*MEMORY[0x277CCE7E8]];
      allowedHosts = v5->_allowedHosts;
      v5->_allowedHosts = v89;

      v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.wifiUniquePSK"];
      wiFiUniquePreSharedKey = v5->_wiFiUniquePreSharedKey;
      v5->_wiFiUniquePreSharedKey = v91;

      v93 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCE9B8]];
      if (v93)
      {
        v94 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v93];
        configuredNetworkProtectionGroupUUID = v5->_configuredNetworkProtectionGroupUUID;
        v5->_configuredNetworkProtectionGroupUUID = v94;
      }

      v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDA.primaryProfileVersion"];
      if (v96)
      {
        v97 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v96];
        primaryProfileVersion = v5->_primaryProfileVersion;
        v5->_primaryProfileVersion = v97;
      }

      if ([coderCopy containsValueForKey:@"HM.hostAccessory"])
      {
        v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.hostAccessory"];
        [v99 addHostedAccessory:v5];
        objc_storeWeak(&v5->_hostAccessory, v99);
      }

      v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC40]];
      pendingConfigurationIdentifier = v5->_pendingConfigurationIdentifier;
      v5->_pendingConfigurationIdentifier = v100;

      goto LABEL_39;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v105 = v18;
    v106 = 2112;
    v107 = v6;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Cannot decode accessory with invalid uuid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = 0;
LABEL_40:

  return v19;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessory *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    uuid = [(HMDAccessory *)self uuid];
    name = [(HMDAccessory *)self name];
    uUIDString = [v3 stringWithFormat:@"%@/%@", uuid, name];
  }

  else
  {
    uuid = [(HMDAccessory *)self uuid];
    uUIDString = [uuid UUIDString];
  }

  return uUIDString;
}

- (id)dumpNetworkState
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    uuid = [(HMDAccessory *)v4 uuid];
    uUIDString = [uuid UUIDString];
    if ([(HMDAccessory *)v4 isIPSecureSessionEstablished])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if ([(HMDAccessory *)v4 isBLESecureSessionEstablished])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 stringWithFormat:@"uuid: %@ ipSession: %@ bleSession: %@ ", uUIDString, v9, v10];

    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  }

  return v5;
}

- (id)dumpSimpleState
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v15 = MEMORY[0x277CCACA8];
  name = [(HMDAccessory *)self name];
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = "YES";
  if (![(HMDAccessory *)self isReachable]&& ![(HMDAccessory *)self isRemotelyReachable])
  {
    v7 = "NO";
  }

  if ([(HMDAccessory *)self isReachable])
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  if ([(HMDAccessory *)self isRemotelyReachable])
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  room = [(HMDAccessory *)self room];
  name2 = [room name];
  firmwareVersion = [(HMDAccessory *)self firmwareVersion];
  v13 = [v15 stringWithFormat:@"name: %@, uuid: %@, Accessory Reachable: %s (local: %s, remote: %s), room: %@, firmwareVersion: %@", name, uUIDString, v7, v8, v9, name2, firmwareVersion];

  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F170]];

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v101 = *MEMORY[0x277D85DE8];
  v83 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = selfCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v81 = v6;
  isSecureSessionEstablished = [(HMDAccessory *)v6 isSecureSessionEstablished];
  v84 = MEMORY[0x277CCAB68];
  name = [(HMDAccessory *)selfCopy name];
  providedName = [(HMDAccessory *)selfCopy providedName];
  obj = [(HMDAccessory *)selfCopy configuredName];
  uuid = [(HMDAccessory *)selfCopy uuid];
  uUIDString = [uuid UUIDString];
  identifier = [(HMDAccessory *)selfCopy identifier];
  v8 = "YES";
  if (![(HMDAccessory *)selfCopy isReachable]&& ![(HMDAccessory *)selfCopy isRemotelyReachable])
  {
    v8 = "NO";
  }

  isReachable = [(HMDAccessory *)selfCopy isReachable];
  v88 = selfCopy;
  v10 = "Yes";
  if (isReachable)
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  v73 = v11;
  if ([(HMDAccessory *)v88 isRemotelyReachable])
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  v72 = v12;
  if ([(HMDAccessory *)v88 isSuspendCapable])
  {
    v13 = "Yes";
  }

  else
  {
    v13 = "No";
  }

  v71 = v13;
  if (!isSecureSessionEstablished)
  {
    v10 = "No";
  }

  room = [(HMDAccessory *)v88 room];
  name2 = [room name];
  firmwareVersion = [(HMDAccessory *)v88 firmwareVersion];
  primaryProfileVersion = [(HMDAccessory *)v88 primaryProfileVersion];
  productData = [(HMDAccessory *)v88 productData];
  pendingConfigurationIdentifier = [(HMDAccessory *)v88 pendingConfigurationIdentifier];
  urlString = [(HMDAccessory *)v88 urlString];
  lastSeenDate = [(HMDAccessory *)v88 lastSeenDate];
  [(HMDAccessory *)v88 isLowBattery];
  v19 = HMFBooleanToString();
  v68 = v10;
  v20 = v88;
  v85 = [v84 stringWithFormat:@"name: %@, providedName: %@, configuredName: %@, uuid: %@, identifier: %@, Accessory Reachable: %s (local: %s, remote: %s), suspendCapable: %s, HAP secure session: %s, room: %@, firmwareVersion: %@, primaryProfileVersion: %@, productData: %@pendingConfigurationIdentifier: %@, assistantIdentifier: %@, lastSeenDate: %@, lowBattery: %@", name, providedName, obj, uUIDString, identifier, v8, v73, v72, v71, v68, name2, firmwareVersion, primaryProfileVersion, productData, pendingConfigurationIdentifier, urlString, lastSeenDate, v19];

  wiFiUniquePreSharedKey = [(HMDAccessory *)v88 wiFiUniquePreSharedKey];
  if (wiFiUniquePreSharedKey)
  {
    if (isInternalBuild())
    {
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:wiFiUniquePreSharedKey encoding:1];
    }

    else
    {
      v22 = @"(present)";
    }
  }

  else
  {
    v22 = @"(null)";
  }

  levelCopy2 = level;
  v23 = v83;
  v25 = v85;
  [(HMDAccessory *)v88 supportsWiFiReconfiguration];
  v26 = HMFBooleanToString();
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory wiFiCredentialType](v88, "wiFiCredentialType")}];
  [v85 appendFormat:@", supportsWiFiReconfiguration: %@, wiFiCredentialType: %@, wiFiUniquePreSharedKey: %@", v26, v27, v22];

  [(HMDAccessory *)v88 supportsNetworkProtection];
  v28 = HMFBooleanToString();
  [v85 appendFormat:@", supportsNetworkProtection: %@", v28];

  v87 = v22;
  if ([(HMDAccessory *)v88 supportsNetworkProtection])
  {
    v80 = wiFiUniquePreSharedKey;
    networkClientIdentifier = [(HMDAccessory *)v88 networkClientIdentifier];
    networkRouterUUID = [(HMDAccessory *)v88 networkRouterUUID];
    uUIDString2 = [networkRouterUUID UUIDString];
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory targetNetworkProtectionMode](v88, "targetNetworkProtectionMode")}];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory currentNetworkProtectionMode](v88, "currentNetworkProtectionMode")}];
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory networkClientLAN](v88, "networkClientLAN")}];
    networkClientProfileFingerprint = [(HMDAccessory *)v88 networkClientProfileFingerprint];
    [v85 appendFormat:@", networkClientIdentifier: %@, networkRouterUUID: %@, targetNetworkProtectionMode: %@, currentNetworkProtectionMode: %@, LAN: %@, Fingerprint: %@", networkClientIdentifier, uUIDString2, v32, v33, v34, networkClientProfileFingerprint];

    allowedHosts = [(HMDAccessory *)v88 allowedHosts];
    v37 = allowedHosts;
    if (allowedHosts)
    {
      v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allowedHosts, "count")}];
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v78 = v37;
      obja = v37;
      v39 = [obja countByEnumeratingWithState:&v95 objects:v100 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v96;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v96 != v41)
            {
              objc_enumerationMutation(obja);
            }

            v43 = *(*(&v95 + 1) + 8 * i);
            v44 = MEMORY[0x277CCACA8];
            name3 = [v43 name];
            addresses = [v43 addresses];
            allObjects = [addresses allObjects];
            v48 = [allObjects componentsJoinedByString:{@", "}];
            v49 = [v44 stringWithFormat:@"Allow %@ (%@) purpose = 0x%lx", name3, v48, objc_msgSend(v43, "purpose")];
            [v38 addObject:v49];
          }

          v40 = [obja countByEnumeratingWithState:&v95 objects:v100 count:16];
        }

        while (v40);
      }

      v50 = objc_msgSend_copy(v38);
      [v83 setObject:v50 forKeyedSubscript:@"Accessory Firewall WAN Rule"];

      v20 = v88;
      v25 = v85;
      v37 = v78;
    }

    levelCopy2 = level;
    v23 = v83;
    wiFiUniquePreSharedKey = v80;
    v22 = v87;
  }

  vendorInfo = [(HMDAccessory *)v20 vendorInfo];

  if (vendorInfo)
  {
    vendorInfo2 = [(HMDAccessory *)v20 vendorInfo];
    [v25 appendFormat:@", vendorInfo: %@", vendorInfo2];
  }

  v53 = objc_msgSend_copy(v25);
  [v23 setObject:v53 forKeyedSubscript:*MEMORY[0x277D0F170]];

  appData = [(HMDAccessory *)v20 appData];
  v55 = [appData dumpStateWithPrivacyLevel:levelCopy2];
  [v23 setObject:v55 forKeyedSubscript:*MEMORY[0x277D0F050]];

  category = [(HMDAccessory *)v20 category];

  if (category)
  {
    category2 = [(HMDAccessory *)v20 category];
    dumpState = [category2 dumpState];
    [v23 setObject:dumpState forKeyedSubscript:*MEMORY[0x277D0F020]];
  }

  accessoryProfiles = [(HMDAccessory *)v20 accessoryProfiles];
  if ([accessoryProfiles count])
  {
    v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(accessoryProfiles, "count")}];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v61 = accessoryProfiles;
    v62 = [v61 countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v92;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v92 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v91 + 1) + 8 * j) dumpStateWithPrivacyLevel:levelCopy2];
          [v60 addObject:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v63);
    }

    [v23 setObject:v60 forKeyedSubscript:*MEMORY[0x277D0F030]];
    v25 = v85;
    v22 = v87;
  }

  return v23;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = removedCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HMDAccessory *)self appDataRemoved:v10 message:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = objc_opt_class();
      v15 = v22;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v16];
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    __transactionAccessoryUpdated(self, v12, messageCopy);
    v13 = valuesCopy;
  }

  else
  {
    v13 = valuesCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      [(HMDAccessory *)self appDataUpdated:v15 message:messageCopy];
    }

    else
    {
      v13 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        softwareUpdate = [(HMDAccessory *)self softwareUpdate];
        if (softwareUpdate)
        {
          if ([v17 propertyWasSet:@"softwareVersion"])
          {
            softwareVersion = [v17 softwareVersion];

            if (softwareVersion)
            {
              softwareVersion2 = [v17 softwareVersion];
              version = [softwareUpdate version];
              v22 = [softwareVersion2 isEqualToVersion:version];

              if (v22)
              {
                [(HMDAccessory *)self handleUpdatedSoftwareUpdateModel:updatedCopy newValues:v17 message:messageCopy];
              }

              else
              {
                [(HMDAccessory *)self handleAddedSoftwareUpdateModel:v17 message:messageCopy];
              }
            }

            else
            {
              [(HMDAccessory *)self handleRemovedSoftwareUpdateModel:v17 message:messageCopy];
            }
          }

          else
          {
            [(HMDAccessory *)self handleUpdatedSoftwareUpdateModel:updatedCopy newValues:v17 message:messageCopy];
          }
        }

        else
        {
          softwareVersion3 = [v17 softwareVersion];

          if (softwareVersion3)
          {
            [(HMDAccessory *)self handleAddedSoftwareUpdateModel:v17 message:messageCopy];
          }
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v29 = 138543874;
          v30 = v26;
          v31 = 2112;
          v32 = v13;
          v33 = 2112;
          v34 = objc_opt_class();
          v27 = v34;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v29, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v13];
      }
    }
  }
}

- (void)__handleShowMatterLockNotification:(id)notification
{
  v38 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    messagePayload = [notificationCopy messagePayload];
    v32 = 138543874;
    v33 = v9;
    v34 = 2112;
    v35 = uUID;
    v36 = 2112;
    v37 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Lock Notifications}] HomeUtil command for matter lock notifications called with message=%@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = selfCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    messagePayload2 = [notificationCopy messagePayload];
    v16 = [messagePayload2 objectForKeyedSubscript:@"kShowMatterLockNotificationKeyType"];
    intValue = [v16 intValue];

    messagePayload3 = [notificationCopy messagePayload];
    v19 = [messagePayload3 objectForKeyedSubscript:@"kShowMatterLockNotificationKeyValue"];

    messagePayload4 = [notificationCopy messagePayload];
    v21 = [messagePayload4 objectForKeyedSubscript:@"kShowMatterLockNotificationKeyName"];

    v22 = +[HMDBulletinBoard sharedBulletinBoard];
    switch(intValue)
    {
      case 2:
        intValue2 = [v19 intValue];
        messagePayload5 = [notificationCopy messagePayload];
        v30 = [messagePayload5 objectForKeyedSubscript:@"kShowMatterLockNotificationKeyLockDataType"];
        intValue3 = [v30 intValue];

        [v22 insertBulletinForLockUserChange:v14 lockDataType:intValue3 dataOperationType:intValue2 ecosystemName:0 isAffectedUser:objc_msgSend(notificationCopy flow:{"BOOLForKey:", @"kShowMatterLockNotificationKeyIsAffectedUser", internalOnlyInitializer}];
        break;
      case 1:
        [v22 insertBulletinForLockOperation:v14 userDisplayName:v21 lockOperationType:objc_msgSend(v19 ecosystemName:"intValue") flow:{0, internalOnlyInitializer}];
        break;
      case 0:
        [v22 insertBulletinForDoorLockAlarm:v14 alarmCode:objc_msgSend(v19 flow:{"intValue"), internalOnlyInitializer}];
        break;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v12;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      v32 = 138543618;
      v33 = v26;
      v34 = 2112;
      v35 = uUID2;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed casting to HMDHAPAccessory", &v32, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [notificationCopy respondWithError:v19];
  }
}

- (void)__handleListPairings:(id)pairings
{
  v17 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  selfCopy = self;
  if ([(HMDAccessory *)selfCopy conformsToProtocol:&unk_283F01280])
  {
    v6 = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__HMDAccessory___handleListPairings___block_invoke;
    v13[3] = &unk_27867E6F8;
    v14 = pairingsCopy;
    [(HMDAccessory *)v7 pairingsWithCompletionHandler:v13];
    v8 = v14;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Does not support user management", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [pairingsCopy respondWithError:v8];
  }
}

void __37__HMDAccessory___handleListPairings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v23 = a1;
    v8 = [MEMORY[0x277CCAB68] string];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = MEMORY[0x277CCACA8];
          v15 = [v13 identifier];
          v16 = [v13 publicKey];
          v17 = [v16 data];
          [v13 permissions];
          v18 = HMFBooleanToString();
          v19 = [v14 stringWithFormat:@"Identifier = %@, PublicKey = %@, Admin = %@\n", v15, v17, v18];
          [v8 appendString:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v10);
    }

    v30 = @"kDescriptionKey";
    v20 = objc_msgSend_copy(v8);
    v31 = v20;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v6 = 0;
    v5 = v24;
    a1 = v23;
  }

  v21 = [*(a1 + 32) responseHandler];

  if (v21)
  {
    v22 = [*(a1 + 32) responseHandler];
    (v22)[2](v22, v6, v7);
  }
}

- (void)didEncounterError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v8;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    home = [(HMDAccessory *)selfCopy home];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
    v11 = v10;
    if (home && v10)
    {
      v12 = objc_alloc(MEMORY[0x277D0F820]);
      messageTargetUUID = [home messageTargetUUID];
      v14 = [v12 initWithTarget:messageTargetUUID];

      v15 = MEMORY[0x277D0F848];
      v16 = *MEMORY[0x277CCFDA8];
      uuid = [(HMDAccessory *)selfCopy uuid];
      uUIDString = [uuid UUIDString];
      v23[1] = *MEMORY[0x277CCFEF0];
      v24[0] = uUIDString;
      v24[1] = v11;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v20 = [v15 messageWithName:v16 destination:v14 payload:v19];

      v21 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:0 options:-1 active:1];
      [v20 setSendPolicy:v21];

      msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
      [msgDispatcher sendMessage:v20 completionHandler:0];
    }
  }
}

- (void)__handleUpdatePendingConfigurationIdentifierMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = messagePayload;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update pending configuration identifier message payload: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  if (home)
  {
    v11 = [messageCopy stringForKey:*MEMORY[0x277CCEC40]];
    v12 = [(HMDAccessory *)selfCopy transactionWithObjectChangeType:2];
    [v12 setPendingConfigurationIdentifier:v11];
    backingStore = [home backingStore];
    name = [messageCopy name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [backingStore transaction:name options:v15];

    [v16 add:v12 withMessage:messageCopy];
    [v16 run];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Home is nil", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v11];
  }
}

- (void)setPendingConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(identifierCopy);
  pendingConfigurationIdentifier = self->_pendingConfigurationIdentifier;
  self->_pendingConfigurationIdentifier = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)pendingConfigurationIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pendingConfigurationIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredNetworkProtectionGroupUUID:(id)d
{
  dCopy = d;
  os_unfair_recursive_lock_lock_with_options();
  configuredNetworkProtectionGroupUUID = self->_configuredNetworkProtectionGroupUUID;
  self->_configuredNetworkProtectionGroupUUID = dCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)configuredNetworkProtectionGroupUUID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredNetworkProtectionGroupUUID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)defaultNetworkProtectionGroupUUID
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  v4 = WeakRetained;
  defaultNetworkProtectionGroupUUID = self->_defaultNetworkProtectionGroupUUID;
  if (defaultNetworkProtectionGroupUUID)
  {
    v6 = 1;
  }

  else
  {
    v6 = WeakRetained == 0;
  }

  if (!v6)
  {
    if (self->_initialManufacturer && self->_initialCategoryIdentifier)
    {
      v7 = [HMDAccessoryNetworkProtectionGroupModel modelIDForHome:"modelIDForHome:manufacturer:category:" manufacturer:WeakRetained category:?];
      v8 = self->_defaultNetworkProtectionGroupUUID;
      self->_defaultNetworkProtectionGroupUUID = v7;

      defaultNetworkProtectionGroupUUID = self->_defaultNetworkProtectionGroupUUID;
    }

    else
    {
      defaultNetworkProtectionGroupUUID = 0;
    }
  }

  v9 = defaultNetworkProtectionGroupUUID;

  os_unfair_recursive_lock_unlock();

  return v9;
}

- (id)networkProtectionGroupUUID
{
  configuredNetworkProtectionGroupUUID = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
  v4 = configuredNetworkProtectionGroupUUID;
  if (configuredNetworkProtectionGroupUUID)
  {
    defaultNetworkProtectionGroupUUID = configuredNetworkProtectionGroupUUID;
  }

  else
  {
    defaultNetworkProtectionGroupUUID = [(HMDAccessory *)self defaultNetworkProtectionGroupUUID];
  }

  v6 = defaultNetworkProtectionGroupUUID;

  return v6;
}

- (void)saveNetworkAccessViolation:(id)violation
{
  violationCopy = violation;
  workQueue = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDAccessory_saveNetworkAccessViolation___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = violationCopy;
  v6 = violationCopy;
  dispatch_async(workQueue, v7);
}

void __43__HMDAccessory_saveNetworkAccessViolation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkAccessViolation];
  v3 = HMFEqualObjects();

  if ((v3 & 1) == 0)
  {
    v12 = [*(a1 + 32) transactionWithObjectChangeType:2];
    v4 = [*(a1 + 40) lastViolationDate];
    v5 = EpochIntervalFromDate(v4);
    [v12 setLastNetworkAccessViolationOccurrenceSince1970:v5];

    v6 = [*(a1 + 40) lastResetDate];
    v7 = EpochIntervalFromDate(v6);
    [v12 setLastNetworkAccessViolationResetSince1970:v7];

    v8 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
    v9 = [*(a1 + 32) home];
    v10 = [v9 backingStore];
    v11 = [v10 transaction:@"SaveNetworkAccessViolation" options:v8];

    [v11 add:v12];
    [v11 run];
  }
}

- (void)_handleWiFiReconfiguration:(id)reconfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  reconfigurationCopy = reconfiguration;
  v5 = [reconfigurationCopy numberForKey:*MEMORY[0x277CD09F8]];
  v6 = [reconfigurationCopy BOOLForKey:*MEMORY[0x277CD0A18]];
  if (!v5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 27;
LABEL_7:
    routerClientManager = [v12 hmErrorWithCode:v13];
    [reconfigurationCopy respondWithError:routerClientManager];
    goto LABEL_12;
  }

  v7 = v6;
  if (([v5 integerValue] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 3;
    goto LABEL_7;
  }

  home = [(HMDAccessory *)self home];
  routerClientManager = [home routerClientManager];

  if (routerClientManager)
  {
    integerValue = [v5 integerValue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__HMDAccessory__handleWiFiReconfiguration___block_invoke;
    v18[3] = &unk_27868A250;
    v19 = reconfigurationCopy;
    [routerClientManager migrateAccessory:self toCredentialType:integerValue rotate:v7 completion:v18];
    v11 = v19;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to perform Wi-Fi reconfiguration -- no Client Manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    [reconfigurationCopy respondWithError:v11];
  }

LABEL_12:
}

- (void)saveWiFiUniquePreSharedKey:(id)key credentialType:(int64_t)type
{
  keyCopy = key;
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessory_saveWiFiUniquePreSharedKey_credentialType___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v10 = keyCopy;
  typeCopy = type;
  v8 = keyCopy;
  dispatch_async(workQueue, block);
}

void __58__HMDAccessory_saveWiFiUniquePreSharedKey_credentialType___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) wiFiUniquePreSharedKey];
  v3 = HMFEqualObjects();

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) transactionWithObjectChangeType:2];
    [v4 setWiFiUniquePreSharedKey:*(a1 + 40)];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    [v4 setWiFiCredentialType:v5];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 wiFiCredentialType];
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Setting wiFiCredentialType to %@ in accessory transaction", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v12 = [*(a1 + 32) home];
    v13 = [v12 backingStore];
    v14 = [v13 transaction:@"SaveWiFiUniquePreSharedKey" options:v11];

    [v14 add:v4];
    [v14 run];
  }
}

- (void)setWiFiUniquePreSharedKey:(id)key
{
  keyCopy = key;
  os_unfair_recursive_lock_lock_with_options();
  wiFiUniquePreSharedKey = self->_wiFiUniquePreSharedKey;
  self->_wiFiUniquePreSharedKey = keyCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSData)wiFiUniquePreSharedKey
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_wiFiUniquePreSharedKey;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setWifiCredentialType:(int64_t)type
{
  os_unfair_recursive_lock_lock_with_options();
  self->_wiFiCredentialType = type;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)wiFiCredentialType
{
  os_unfair_recursive_lock_lock_with_options();
  wiFiCredentialType = self->_wiFiCredentialType;
  os_unfair_recursive_lock_unlock();
  return wiFiCredentialType;
}

- (void)saveCurrentNetworkProtectionMode:(int64_t)mode assignedLAN:(int64_t)n allowedWANHosts:(id)hosts profileFingerprint:(id)fingerprint
{
  hostsCopy = hosts;
  fingerprintCopy = fingerprint;
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__HMDAccessory_saveCurrentNetworkProtectionMode_assignedLAN_allowedWANHosts_profileFingerprint___block_invoke;
  block[3] = &unk_2786756C0;
  block[4] = self;
  v16 = hostsCopy;
  modeCopy = mode;
  nCopy = n;
  v17 = fingerprintCopy;
  v13 = fingerprintCopy;
  v14 = hostsCopy;
  dispatch_async(workQueue, block);
}

void __96__HMDAccessory_saveCurrentNetworkProtectionMode_assignedLAN_allowedWANHosts_profileFingerprint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowedHosts];
  v3 = HMFEqualObjects();

  if (!v3 || [*(a1 + 32) currentNetworkProtectionMode] != *(a1 + 56) || objc_msgSend(*(a1 + 32), "networkClientLAN") != *(a1 + 64) || (objc_msgSend(*(a1 + 32), "networkClientProfileFingerprint"), v4 = objc_claimAutoreleasedReturnValue(), v5 = HMFEqualObjects(), v4, (v5 & 1) == 0))
  {
    v15 = [*(a1 + 32) transactionWithObjectChangeType:2];
    v6 = [*(a1 + 40) na_map:&__block_literal_global_329];
    if ([v6 count])
    {
      v7 = objc_msgSend_copy(v6);
      [v15 setAppliedFirewallWANRules:v7];
    }

    else
    {
      [v15 setAppliedFirewallWANRules:0];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    [v15 setCurrentNetworkProtectionMode:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    [v15 setNetworkClientLAN:v9];

    v10 = [*(a1 + 48) UUIDString];
    [v15 setNetworkClientProfileFingerprint:v10];

    v11 = [*(a1 + 32) home];
    v12 = [v11 backingStore];
    v13 = +[HMDBackingStoreTransactionOptions defaultResidenceOptions];
    v14 = [v12 transaction:@"SaveCurrentNetworkProtectionModeAndFirewallWANRules" options:v13];

    [v14 add:v15];
    [v14 run];
  }
}

- (void)setNetworkClientProfileFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  os_unfair_recursive_lock_lock_with_options();
  networkClientProfileFingerprint = self->_networkClientProfileFingerprint;
  self->_networkClientProfileFingerprint = fingerprintCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)networkClientProfileFingerprint
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkClientProfileFingerprint;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setNetworkClientLAN:(int64_t)n
{
  os_unfair_recursive_lock_lock_with_options();
  self->_networkClientLAN = n;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)networkClientLAN
{
  os_unfair_recursive_lock_lock_with_options();
  networkClientLAN = self->_networkClientLAN;
  os_unfair_recursive_lock_unlock();
  return networkClientLAN;
}

- (void)setCurrentNetworkProtectionMode:(int64_t)mode
{
  os_unfair_recursive_lock_lock_with_options();
  self->_currentNetworkProtectionMode = mode;

  os_unfair_recursive_lock_unlock();
}

- (int64_t)currentNetworkProtectionMode
{
  os_unfair_recursive_lock_lock_with_options();
  currentNetworkProtectionMode = self->_currentNetworkProtectionMode;
  os_unfair_recursive_lock_unlock();
  return currentNetworkProtectionMode;
}

- (int64_t)targetNetworkProtectionMode
{
  home = [(HMDAccessory *)self home];
  networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
  networkProtectionGroupUUID = [(HMDAccessory *)self networkProtectionGroupUUID];
  v6 = [networkProtectionGroupRegistry targetProtectionModeForGroupWithUUID:networkProtectionGroupUUID];

  return v6;
}

- (void)saveNetworkClientIdentifier:(id)identifier networkRouterUUID:(id)d clearProfileFingerprint:(BOOL)fingerprint
{
  identifierCopy = identifier;
  dCopy = d;
  workQueue = [(HMDAccessory *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__HMDAccessory_saveNetworkClientIdentifier_networkRouterUUID_clearProfileFingerprint___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = dCopy;
  fingerprintCopy = fingerprint;
  v11 = dCopy;
  v12 = identifierCopy;
  dispatch_async(workQueue, v13);
}

void __86__HMDAccessory_saveNetworkClientIdentifier_networkRouterUUID_clearProfileFingerprint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkClientIdentifier];
  v3 = HMFEqualObjects();

  if (!v3 || ([*(a1 + 32) networkRouterUUID], v4 = objc_claimAutoreleasedReturnValue(), v5 = HMFEqualObjects(), v4, !v5) || *(a1 + 56) == 1 && (objc_msgSend(*(a1 + 32), "networkClientProfileFingerprint"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v12 = [*(a1 + 32) transactionWithObjectChangeType:2];
    [v12 setNetworkClientIdentifier:*(a1 + 40)];
    v7 = [*(a1 + 48) UUIDString];
    [v12 setNetworkRouterUUID:v7];

    if (*(a1 + 56) == 1)
    {
      [v12 setNetworkClientProfileFingerprint:0];
    }

    v8 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v9 = [*(a1 + 32) home];
    v10 = [v9 backingStore];
    v11 = [v10 transaction:@"SaveNetworkClientIdentifier" options:v8];

    [v11 add:v12];
    [v11 run];
  }
}

- (void)setNetworkRouterUUID:(id)d
{
  dCopy = d;
  os_unfair_recursive_lock_lock_with_options();
  networkRouterUUID = self->_networkRouterUUID;
  self->_networkRouterUUID = dCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSUUID)networkRouterUUID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkRouterUUID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setNetworkClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  networkClientIdentifier = self->_networkClientIdentifier;
  self->_networkClientIdentifier = identifierCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSNumber)networkClientIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_networkClientIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setPrimaryProfileVersion:(id)version
{
  versionCopy = version;
  os_unfair_recursive_lock_lock_with_options();
  primaryProfileVersion = self->_primaryProfileVersion;
  self->_primaryProfileVersion = versionCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMFVersion)primaryProfileVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_primaryProfileVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setAccessoryProfiles:(id)profiles
{
  profilesCopy = profiles;
  os_unfair_recursive_lock_lock_with_options();
  if (profilesCopy)
  {
    v4 = [MEMORY[0x277CBEB58] setWithArray:?];
    accessoryProfiles = self->_accessoryProfiles;
    self->_accessoryProfiles = v4;
  }

  else
  {
    [(NSMutableSet *)self->_accessoryProfiles removeAllObjects];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)removeAccessoryProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    v5 = profileCopy;
    os_unfair_recursive_lock_lock_with_options();
    [(NSMutableSet *)self->_accessoryProfiles removeObject:v5];
    os_unfair_recursive_lock_unlock();
    profileCopy = v5;
  }
}

- (void)handleAddedSiriEndpointProfile:(id)profile
{
  v13 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = profileCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling added siri endpoint profile: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleAddedMediaProfile:(id)profile
{
  v13 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = profileCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling added media profile: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)handleAddedAccessoryProfile:(id)profile
{
  profileCopy = profile;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = profileCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    [(HMDAccessory *)self handleAddedMediaProfile:v6];
  }

  v9 = profileCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [(HMDAccessory *)self handleAddedSiriEndpointProfile:v8];
  }

  logAndPostNotification(@"HMDAccessoryProfileAddedNotification", self, 0);
}

- (void)addAccessoryProfile:(id)profile
{
  profileCopy = profile;
  if (profileCopy)
  {
    v7 = profileCopy;
    os_unfair_recursive_lock_lock_with_options();
    [(NSMutableSet *)self->_accessoryProfiles addObject:v7];
    os_unfair_recursive_lock_unlock();
    msgDispatcher = [(HMDAccessory *)self msgDispatcher];

    if (msgDispatcher)
    {
      msgDispatcher2 = [(HMDAccessory *)self msgDispatcher];
      [v7 configureWithMessageDispatcher:msgDispatcher2 configurationTracker:0];
    }

    [(HMDAccessory *)self handleAddedAccessoryProfile:v7];
    profileCopy = v7;
  }
}

- (NSArray)accessoryProfiles
{
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_accessoryProfiles allObjects];
  os_unfair_recursive_lock_unlock();

  return allObjects;
}

- (void)appDataRemoved:(id)removed message:(id)message
{
  messageCopy = message;
  [(HMDAccessory *)self setAppData:0];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)appDataUpdated:(id)updated message:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  appData = [(HMDAccessory *)self appData];

  if (appData)
  {
    appData2 = [(HMDAccessory *)self appData];
    [appData2 updateWithModel:updatedCopy];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    appDataDictionary = [updatedCopy appDataDictionary];
    uuid = [(HMDAccessory *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDAccessory *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      appDataDictionary2 = [updatedCopy appDataDictionary];
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = appDataDictionary2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)__handleSetAppData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  home = [(HMDAccessory *)self home];
  if (home)
  {
    v23 = 0;
    v6 = [dataCopy appDataDictionaryWithError:&v23];
    v7 = v23;
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v11;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Going to update appData for accessory to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      appData = [(HMDAccessory *)selfCopy appData];
      uuid = [(HMDAccessory *)selfCopy uuid];
      v14 = [HMDApplicationDataModel modelWithAppDataPayload:v6 existingAppData:appData parentUUID:uuid];

      if (v14)
      {
        backingStore = [home backingStore];
        name = [dataCopy name];
        v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v18 = [backingStore transaction:name options:v17];

        [v18 add:v14 withMessage:dataCopy];
        [v18 run];
      }

      else
      {
        [dataCopy respondWithSuccess];
      }
    }

    else
    {
      [dataCopy respondWithError:v7];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Attempted to set appData on an accessory that is no longer part of a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
    [dataCopy respondWithError:v7];
  }
}

- (void)setAppData:(id)data
{
  dataCopy = data;
  os_unfair_recursive_lock_lock_with_options();
  appData = self->_appData;
  self->_appData = dataCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDApplicationData)appData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_appData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_configNumberUpdated
{
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
}

- (void)setConfigNumber:(unint64_t)number
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  configNumber = self->_configNumber;
  self->_configNumber = number;
  v7 = configNumber != number && configNumber != 0;
  os_unfair_recursive_lock_unlock();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v11;
    v17 = 1024;
    v18 = configNumber;
    v19 = 1024;
    numberCopy = number;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@c# was set %u -> %u", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    workQueue = [(HMDAccessory *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__HMDAccessory_setConfigNumber___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDAccessoryConfigNumberUpdatedNotification" object:selfCopy];
  }
}

- (unint64_t)configNumber
{
  os_unfair_recursive_lock_lock_with_options();
  configNumber = self->_configNumber;
  os_unfair_recursive_lock_unlock();
  return configNumber;
}

- (id)runtimeState
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"kAccessoryIsReachableKey";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessory isReachableForXPCClients](self, "isReachableForXPCClients")}];
  v8[0] = v3;
  v7[1] = *MEMORY[0x277CCEC80];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory reachableTransports](self, "reachableTransports")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)_remoteAccessEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMDAccessory *)self isRemoteAccessEnabled]!= enabled)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      [(HMDAccessory *)selfCopy isRemoteAccessEnabled];
      v9 = HMFBooleanToString();
      v10 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating remote access enabled from %{public}@ to %{public}@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    home = [(HMDAccessory *)selfCopy home];
    isResidentSupported = [home isResidentSupported];

    if (isResidentSupported)
    {
      [(HMDAccessory *)selfCopy setRemotelyReachable:enabledCopy];
    }

    else
    {
      [(HMDAccessory *)selfCopy _notifyConnectivityChangedWithRemoteAccessChanged:1];
    }

    [(HMDAccessory *)selfCopy setRemoteAccessEnabled:enabledCopy];
  }
}

- (void)remoteAccessEnabled:(BOOL)enabled
{
  workQueue = [(HMDAccessory *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HMDAccessory_remoteAccessEnabled___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  enabledCopy = enabled;
  dispatch_async(workQueue, v6);
}

- (void)_notifyConnectivityChangedWithRemoteAccessChanged:(BOOL)changed
{
  v12 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  if (([home isResidentSupported] & 1) != 0 || changed || !-[HMDAccessory isRemoteAccessEnabled](self, "isRemoteAccessEnabled"))
  {
    [home notifyClientsOfReachabilityUpdateForAccessory:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring non-remote reachability change while remote access is enabled", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (id)messageSendPolicy
{
  v2 = [[HMDHomeManagerXPCMessageSendPolicy alloc] initWithEntitlements:1 options:1];

  return v2;
}

- (void)setConnected:(BOOL)connected
{
  os_unfair_recursive_lock_lock_with_options();
  self->_connected = connected;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)hasActiveSession
{
  os_unfair_recursive_lock_lock_with_options();
  connected = self->_connected;
  os_unfair_recursive_lock_unlock();
  return connected;
}

- (int64_t)reachableTransports
{
  home = [(HMDAccessory *)self home];
  isResidentSupported = [home isResidentSupported];

  if (isResidentSupported)
  {
    isRemotelyReachable = [(HMDAccessory *)self isRemotelyReachable];
  }

  else
  {
    isRemotelyReachable = [(HMDAccessory *)self isRemoteAccessEnabled];
  }

  if (isRemotelyReachable)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isReachableForXPCClients
{
  home = [(HMDAccessory *)self home];
  if ([home isResidentSupported])
  {
  }

  else
  {
    isRemoteAccessEnabled = [(HMDAccessory *)self isRemoteAccessEnabled];

    if (isRemoteAccessEnabled)
    {
      return 1;
    }
  }

  if ([(HMDAccessory *)self isReachable])
  {
    return 1;
  }

  return [(HMDAccessory *)self isRemotelyReachable];
}

- (BOOL)isLowBattery
{
  os_unfair_recursive_lock_lock_with_options();
  lowBattery = self->_lowBattery;
  os_unfair_recursive_lock_unlock();
  return lowBattery;
}

- (void)setLowBattery:(BOOL)battery
{
  os_unfair_recursive_lock_lock_with_options();
  self->_lowBattery = battery;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isLastSeenDateValid
{
  os_unfair_recursive_lock_lock_with_options();
  lastSeenDate = self->_lastSeenDate;
  if (lastSeenDate)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    if ([lastSeenDate isEqual:distantPast])
    {
      LOBYTE(lastSeenDate) = 0;
    }

    else
    {
      v5 = self->_lastSeenDate;
      lastSeenDate = [MEMORY[0x277CBEAA8] distantFuture];
      LOBYTE(v5) = [(NSDate *)v5 isEqual:lastSeenDate];

      LOBYTE(lastSeenDate) = v5 ^ 1;
    }
  }

  os_unfair_recursive_lock_unlock();
  return lastSeenDate;
}

- (NSDate)lastSeenDate
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastSeenDate;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setLastSeenDate:(id)date
{
  dateCopy = date;
  os_unfair_recursive_lock_lock_with_options();
  lastSeenDate = self->_lastSeenDate;
  self->_lastSeenDate = dateCopy;

  os_unfair_recursive_lock_unlock();
  home = [(HMDAccessory *)self home];
  lastSeenStatusManager = [home lastSeenStatusManager];
  [lastSeenStatusManager syncLastSeenStateForAccessory:self];
}

- (void)setRemotelyReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_remotelyReachable == reachableCopy)
  {

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_remotelyReachable = reachableCopy;
    reachable = self->_reachable;
    os_unfair_recursive_lock_unlock();
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updated isRemotelyReachable to %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    home = [(HMDAccessory *)selfCopy home];

    if (home && !reachable)
    {
      [(HMDAccessory *)selfCopy _notifyConnectivityChangedWithRemoteAccessChanged:0];
    }

    notificationCenter = [(HMDAccessory *)selfCopy notificationCenter];
    v13 = notificationCenter;
    if (reachableCopy)
    {
      v14 = @"HMDAccessoryIsRemotelyReachableNotification";
    }

    else
    {
      v14 = @"HMDAccessoryIsNotRemotelyReachableNotification";
    }

    logAndPostNotificationWithNotificationCenter(notificationCenter, v14, selfCopy, 0);
  }
}

- (BOOL)isRemotelyReachable
{
  os_unfair_recursive_lock_lock_with_options();
  remotelyReachable = self->_remotelyReachable;
  os_unfair_recursive_lock_unlock();
  return remotelyReachable;
}

- (BOOL)_getLastKnownLowBatteryStatus
{
  isLowBattery = [(HMDAccessory *)self isLowBattery];
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = selfCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(HMDAccessory *)v6 findCharacteristicType:*MEMORY[0x277CCFAA8] forServiceType:*MEMORY[0x277CD0DE8]];

  value = [v7 value];

  if (value)
  {
    value2 = [v7 value];
    isLowBattery = [value2 BOOLValue];
  }

  return isLowBattery;
}

- (void)updateLastSeenStatusWithDate:(id)date lowBatteryStatus:(id)status
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  statusCopy = status;
  if (dateCopy)
  {
    [(HMDAccessory *)self setLastSeenDate:dateCopy];
  }

  if (statusCopy)
  {
    if ([statusCopy unsignedIntValue] == 1)
    {
      selfCopy2 = self;
      v9 = 1;
LABEL_8:
      [(HMDAccessory *)selfCopy2 setLowBattery:v9];
      goto LABEL_12;
    }

    if ([statusCopy unsignedIntValue] == 2)
    {
      selfCopy2 = self;
      v9 = 0;
      goto LABEL_8;
    }

    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v13;
      v16 = 2112;
      v17 = statusCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Ignoring battery status value: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

LABEL_12:
}

- (HMAccessoryLastSeenStatus)lastSeenStatus
{
  if ([(HMDAccessory *)self isReachable]&& [(HMDAccessory *)self isPrimary])
  {
    v3 = 0;
  }

  else
  {
    if ([(HMDAccessory *)self hasBattery])
    {
      if ([(HMDAccessory *)self _getLastKnownLowBatteryStatus])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = objc_alloc(MEMORY[0x277CD1748]);
    lastSeenDate = [(HMDAccessory *)self lastSeenDate];
    if (lastSeenDate)
    {
      [(HMDAccessory *)self lastSeenDate];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v7 = ;
    v3 = [v5 initWithLastSeenDate:v7 batteryStatus:v4];
  }

  return v3;
}

- (void)setReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  if (self->_reachable == reachableCopy)
  {

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    self->_reachable = reachableCopy;
    remotelyReachable = self->_remotelyReachable;
    os_unfair_recursive_lock_unlock();
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      v22 = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Updated isReachable to %{public}@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    home = [(HMDAccessory *)selfCopy home];
    v12 = home;
    if (home)
    {
      [home reachabilityChangedForAccessory:selfCopy reachable:reachableCopy];
      if (!remotelyReachable)
      {
        [(HMDAccessory *)selfCopy _notifyConnectivityChangedWithRemoteAccessChanged:0];
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    if (reachableCopy)
    {
      [(HMDAccessory *)selfCopy setTimeBecameReachable:date];

      if ([v12 isCurrentDeviceConfirmedPrimaryResident] && -[HMDAccessory isPrimary](selfCopy, "isPrimary"))
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        [(HMDAccessory *)selfCopy setLastSeenDate:distantPast];
      }

      notificationCenter = [(HMDAccessory *)selfCopy notificationCenter];
      logAndPostNotificationWithNotificationCenter(notificationCenter, @"HMDAccessoryIsReachableNotification", selfCopy, 0);

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        [(HMDAccessory *)v17 reachabilityPingEnabled];
        v20 = HMFBooleanToString();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@reachabilityPingEnabled: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if ([(HMDAccessory *)v17 reachabilityPingEnabled])
      {
        [(HMDAccessory *)v17 startReachabilityCheck];
      }
    }

    else
    {
      [(HMDAccessory *)selfCopy setTimeBecameUnreachable:date];
      if ([v12 isCurrentDeviceConfirmedPrimaryResident] && -[HMDAccessory isPrimary](selfCopy, "isPrimary"))
      {
        [(HMDAccessory *)selfCopy setLastSeenDate:date];
        [(HMDAccessory *)selfCopy _updateBridgedAccessoriesWithLastSeenDate:date];
      }

      notificationCenter2 = [(HMDAccessory *)selfCopy notificationCenter];
      logAndPostNotificationWithNotificationCenter(notificationCenter2, @"HMDAccessoryIsNotReachableNotification", selfCopy, 0);
    }
  }
}

- (void)_updateBridgedAccessoriesWithLastSeenDate:(id)date
{
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  home = [(HMDAccessory *)self home];
  if (home)
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = selfCopy;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v28 = v8;
    if (v8 && (-[HMDAccessory identifiersForBridgedAccessories](v8, "identifiersForBridgedAccessories"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
    {
      identifiersForBridgedAccessories = [(HMDAccessory *)v8 identifiersForBridgedAccessories];
      v12 = objc_msgSend_copy(identifiersForBridgedAccessories);
    }

    else
    {
      v12 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      v29 = dateCopy;
      v30 = home;
      do
      {
        v17 = 0;
        v31 = v15;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [home accessoryWithUUID:*(*(&v33 + 1) + 8 * v17)];
          v19 = v18;
          if (v18 && ([v18 isLastSeenDateValid] & 1) == 0)
          {
            context = objc_autoreleasePoolPush();
            v20 = selfCopy;
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = HMFGetLogIdentifier();
              lastSeenDate = [v19 lastSeenDate];
              [v19 uuid];
              v24 = v16;
              v25 = v13;
              v27 = v26 = selfCopy;
              *buf = 138543874;
              v38 = v22;
              v39 = 2112;
              v40 = lastSeenDate;
              v41 = 2112;
              v42 = v27;
              _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Bridge became unreachable. Updated last seen date to %@ for bridged accessory %@", buf, 0x20u);

              selfCopy = v26;
              v13 = v25;
              v16 = v24;
              v15 = v31;

              dateCopy = v29;
              home = v30;
            }

            objc_autoreleasePoolPop(context);
            [v19 setLastSeenDate:dateCopy];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v15);
    }
  }
}

- (BOOL)isReachable
{
  os_unfair_recursive_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_recursive_lock_unlock();
  return reachable;
}

- (NSDate)timeBecameReachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_timeBecameReachable;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setTimeBecameReachable:(id)reachable
{
  reachableCopy = reachable;
  os_unfair_recursive_lock_lock_with_options();
  timeBecameReachable = self->_timeBecameReachable;
  self->_timeBecameReachable = reachableCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSDate)timeBecameUnreachable
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_timeBecameUnreachable;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setTimeBecameUnreachable:(id)unreachable
{
  unreachableCopy = unreachable;
  os_unfair_recursive_lock_lock_with_options();
  timeBecameUnreachable = self->_timeBecameUnreachable;
  self->_timeBecameUnreachable = unreachableCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setreachabilityPingNotificationEnabled:(BOOL)enabled
{
  os_unfair_recursive_lock_lock_with_options();
  self->_reachabilityPingNotificationEnabled = enabled;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)reachabilityPingNotificationEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  reachabilityPingNotificationEnabled = self->_reachabilityPingNotificationEnabled;
  os_unfair_recursive_lock_unlock();
  return reachabilityPingNotificationEnabled;
}

- (void)setReachabilityPingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  supportsUnreachablePing = [(HMDAccessory *)self supportsUnreachablePing];
  os_unfair_recursive_lock_lock_with_options();
  self->_reachabilityPingEnabled = enabledCopy;
  v6 = self->_reachable || supportsUnreachablePing;
  os_unfair_recursive_lock_unlock();
  if (v6 && enabledCopy)
  {

    [(HMDAccessory *)self startReachabilityCheck];
  }

  else
  {

    [(HMDAccessory *)self stopReachabilityCheck];
  }
}

- (BOOL)reachabilityPingEnabled
{
  os_unfair_recursive_lock_lock_with_options();
  reachabilityPingEnabled = self->_reachabilityPingEnabled;
  os_unfair_recursive_lock_unlock();
  return reachabilityPingEnabled;
}

- (void)setSuspendedCapable:(BOOL)capable
{
  os_unfair_recursive_lock_lock_with_options();
  self->_suspendCapable = capable;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isSuspendCapable
{
  os_unfair_recursive_lock_lock_with_options();
  suspendCapable = self->_suspendCapable;
  os_unfair_recursive_lock_unlock();
  return suspendCapable;
}

- (void)notifyAccessoryNameChanged:(BOOL)changed
{
  changedCopy = changed;
  v37 = *MEMORY[0x277D85DE8];
  name = [(HMDAccessory *)self name];
  home = [(HMDAccessory *)self home];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (name && home)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = name;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Name changed to %@, notifying clients", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = MEMORY[0x277D0F818];
    v13 = *MEMORY[0x277CD1FC0];
    messageDestination = [(HMDAccessory *)selfCopy messageDestination];
    v15 = *MEMORY[0x277CD1FC8];
    v32[0] = name;
    v16 = *MEMORY[0x277CD0640];
    v31[0] = v15;
    v31[1] = v16;
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    v32[1] = uUIDString;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v20 = [v12 messageWithName:v13 destination:messageDestination payload:v19];

    msgDispatcher = [(HMDAccessory *)selfCopy msgDispatcher];
    [msgDispatcher sendMessage:v20 completionHandler:0];

    workQueue = [(HMDAccessory *)selfCopy workQueue];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __43__HMDAccessory_notifyAccessoryNameChanged___block_invoke;
    v28 = &unk_27868A750;
    v29 = selfCopy;
    v30 = name;
    dispatch_async(workQueue, &v25);

    if (changedCopy)
    {
      homeManager = [home homeManager];
      [homeManager assistantSyncDataChanged:v13];
    }

    [(HMDAccessory *)selfCopy postAccessoryRenamedNotification:v25];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Name or home is nil, cannot send name changed notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)updateMediaSession:(id)session
{
  sessionCopy = session;
  workQueue = [(HMDAccessory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDAccessory_updateMediaSession___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(workQueue, v7);
}

void __35__HMDAccessory_updateMediaSession___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) accessoryProfiles];
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

        [v9 setMediaSession:*(a1 + 40)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)updateVendorInfo
{
  v5 = 0;
  v3 = [(HMDAccessory *)self findVendorInfoAndManufacturerKnown:&v5];
  os_unfair_recursive_lock_lock_with_options();
  vendorInfo = self->_vendorInfo;
  self->_vendorInfo = v3;

  self->_isKnownManufacturer = v5;
  os_unfair_recursive_lock_unlock();
}

- (void)setIsKnownManufacturer:(BOOL)manufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  self->_isKnownManufacturer = manufacturer;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)isKnownManufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  isKnownManufacturer = self->_isKnownManufacturer;
  os_unfair_recursive_lock_unlock();
  return isKnownManufacturer;
}

- (void)setVendorInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  vendorInfo = self->_vendorInfo;
  self->_vendorInfo = infoCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDVendorModelEntry)vendorInfo
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_vendorInfo;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)findVendorInfoAndManufacturerKnown:(BOOL *)known
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = +[HMDVendorDataManager sharedVendorDataManager];
  productData = [(HMDAccessory *)self productData];
  if (!productData || ([v5 vendorModelEntryForProductData:productData], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    manufacturer = [(HMDAccessory *)self manufacturer];
    model = [(HMDAccessory *)self model];
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = selfCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13 && ([(HMDAccessory *)v13 bridge], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, v16 = [(HMDAccessory *)selfCopy isPrimary], v15, !v16))
    {
      bridge = [(HMDAccessory *)v13 bridge];
      manufacturer2 = [bridge manufacturer];

      model2 = [bridge model];

      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v25 = v28 = bridge;
        [(HMDAccessory *)v23 uuid];
        v26 = v29 = v22;
        *buf = 138544130;
        v31 = v25;
        v32 = 2114;
        v33 = v26;
        v34 = 2114;
        v35 = manufacturer2;
        v36 = 2114;
        v37 = model2;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Overriding vendor info for %{public}@ with Manufacturer: %{public}@ Model: %{public}@", buf, 0x2Au);

        v22 = v29;
        bridge = v28;
      }

      objc_autoreleasePoolPop(v22);
      if (manufacturer2)
      {
LABEL_12:
        if (model2)
        {
          v19 = [v5 vendorModelEntryForManufacturer:manufacturer2 model:model2];
          v8 = v19;
          if (v19)
          {
            if (known)
            {
              *known = 1;
            }

            v20 = v19;
          }

          else if (known)
          {
            *known = [v5 databaseContainsManufacturer:manufacturer2];
          }

          goto LABEL_28;
        }

        if (known)
        {
          v8 = 0;
          *known = [v5 databaseContainsManufacturer:manufacturer2];
LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    else
    {
      model2 = model;
      manufacturer2 = manufacturer;
      if (manufacturer)
      {
        goto LABEL_12;
      }
    }

    if (known)
    {
      v8 = 0;
      *known = 0;
      goto LABEL_28;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_28;
  }

  v8 = v7;
  if (known)
  {
    *known = 1;
  }

LABEL_29:

  return v8;
}

- (NSString)productGroup
{
  v3 = objc_opt_class();
  productData = [(HMDAccessory *)self productData];
  v8 = 0;
  [v3 splitProductDataIntoProductGroupAndProductNumber:productData productGroup:&v8 productNumber:0];
  v5 = v8;
  v6 = v8;

  return v5;
}

- (void)setProductData:(id)data
{
  dataCopy = data;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(dataCopy);
  productData = self->_productData;
  self->_productData = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)productData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_productData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(numberCopy);
  serialNumber = self->_serialNumber;
  self->_serialNumber = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)serialNumber
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_serialNumber;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setDisplayableFirmwareVersion:(id)version
{
  v18 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  hm_truncatedDisplayableVersionString = [versionCopy hm_truncatedDisplayableVersionString];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    displayableFirmwareVersion = [(HMDAccessory *)selfCopy displayableFirmwareVersion];
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = displayableFirmwareVersion;
    v16 = 2112;
    v17 = hm_truncatedDisplayableVersionString;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating displayable firmware version string from %@ to %@.", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_recursive_lock_lock_with_options();
  displayableFirmwareVersion = selfCopy->_displayableFirmwareVersion;
  selfCopy->_displayableFirmwareVersion = hm_truncatedDisplayableVersionString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)displayableFirmwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_displayableFirmwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setFirmwareVersion:(id)version
{
  v17 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    firmwareVersion = [(HMDAccessory *)selfCopy firmwareVersion];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = firmwareVersion;
    v15 = 2112;
    v16 = versionCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating firmware version from %@ to %@.", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_recursive_lock_lock_with_options();
  firmwareVersion = selfCopy->_firmwareVersion;
  selfCopy->_firmwareVersion = versionCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDAccessoryVersion)firmwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_firmwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setInitialManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(manufacturerCopy);
  initialManufacturer = self->_initialManufacturer;
  self->_initialManufacturer = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)initialManufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialManufacturer;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(manufacturerCopy);
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)manufacturer
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setInitialModel:(id)model
{
  modelCopy = model;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(modelCopy);
  initialModel = self->_initialModel;
  self->_initialModel = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)initialModel
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialModel;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setModel:(id)model
{
  modelCopy = model;
  os_unfair_recursive_lock_lock_with_options();
  v4 = objc_msgSend_copy(modelCopy);
  model = self->_model;
  self->_model = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)model
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_model;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleRenameMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy stringForKey:*MEMORY[0x277CD1FC8]];
  v6 = [messageCopy BOOLForKey:@"kAccessoryNameResetKey"];
  if (v6 != ([v5 length] == 0))
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = 3;
LABEL_7:
    v14 = [v7 hmErrorWithCode:v8];
    [messageCopy respondWithError:v14];
    goto LABEL_8;
  }

  v9 = HMMaxLengthForNaming();
  if ([v5 length] > v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7 = MEMORY[0x277CCA9B8];
    v8 = 46;
    goto LABEL_7;
  }

  home = [(HMDAccessory *)self home];
  v14 = home;
  if (home)
  {
    if (v5 && ([home validateName:v5], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      [messageCopy respondWithError:v16];
    }

    else
    {
      [(HMDAccessory *)self _renameAccessory:v5 resetName:v6 message:messageCopy];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to change name as no home is associated to the accessory", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = MEMORY[0x277CCA9B8];
    v23 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2018];
    v24 = [v22 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v23];
    [messageCopy respondWithError:v24];
  }

LABEL_8:
}

- (void)postAccessoryRenamedNotification
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = self;
  v3 = *MEMORY[0x277CD1FC8];
  v7[0] = @"HMDAccessoryKey";
  v7[1] = v3;
  name = [(HMDAccessory *)self name];
  v8[1] = name;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  notificationCenter = [(HMDAccessory *)self notificationCenter];
  logAndPostNotificationWithNotificationCenter(notificationCenter, @"HMDAccessoryNameUpdatedNotification", self, v5);
}

- (void)_renameAccessory:(id)accessory resetName:(BOOL)name message:(id)message
{
  messageCopy = message;
  accessoryCopy = accessory;
  v10 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
  [v10 setConfiguredName:accessoryCopy];

  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];
  name = [messageCopy name];
  v14 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v15 = [backingStore transaction:name options:v14];

  if (name)
  {
    [v15 add:v10 withMessage:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HMDAccessory__renameAccessory_resetName_message___block_invoke_2;
    v16[3] = &unk_27868A1D8;
    v16[4] = self;
    v17 = messageCopy;
    [v15 run:v16];
  }

  else
  {
    [v15 add:v10 withMessage:messageCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__HMDAccessory__renameAccessory_resetName_message___block_invoke;
    v18[3] = &unk_27868A250;
    v18[4] = self;
    [v15 run:v18];
  }
}

id *__51__HMDAccessory__renameAccessory_resetName_message___block_invoke(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] postAccessoryRenamedNotification];
  }

  return result;
}

void __51__HMDAccessory__renameAccessory_resetName_message___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) name];
    v6 = v5;
    if (v5)
    {
      v7 = *MEMORY[0x277CD1FC8];
      v8[0] = v5;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) postAccessoryRenamedNotification];
  }

  [*(a1 + 40) respondWithPayload:v4 error:v3];
}

- (void)setProvidedName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  providedName = self->_providedName;
  self->_providedName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)providedName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_providedName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (id)getConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_handleUpdatedName:(id)name
{
  workQueue = [(HMDAccessory *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDAccessory *)self postAccessoryRenamedNotification];
}

- (NSString)name
{
  configuredName = self->_configuredName;
  if (!configuredName)
  {
    configuredName = self->_providedName;
  }

  v3 = objc_msgSend_copy(configuredName, a2);

  return v3;
}

- (void)__handleGetAccessoryAdvertisingParams:(id)params
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB38];
  paramsCopy = params;
  identifier = [(HMDAccessory *)self identifier];
  v11[0] = identifier;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = @"kIdentifierKey";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v9 = [v4 dictionaryWithObjects:v7 forKeys:v8];
  [paramsCopy respondWithPayload:v9];
}

- (void)setInitialCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  initialCategoryIdentifier = self->_initialCategoryIdentifier;
  self->_initialCategoryIdentifier = identifierCopy;

  os_unfair_recursive_lock_unlock();
}

- (NSNumber)initialCategoryIdentifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_initialCategoryIdentifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)_updateCategory:(id)category notifyClients:(BOOL)clients
{
  v28[1] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if (![(HMDAccessory *)self isPrimary])
  {
    goto LABEL_13;
  }

  if (!categoryCopy)
  {
    category = [(HMDAccessory *)self category];

    if (category)
    {
      goto LABEL_13;
    }
  }

  [(HMDAccessory *)self setCategoryIdentifier:categoryCopy];
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v7 categoryForIdentifier:categoryCopy];
  if (v8)
  {
    categoryForOther = v8;
    goto LABEL_8;
  }

  categoryForOther = [v7 categoryForOther];
  if (categoryForOther)
  {
LABEL_8:
    category2 = [(HMDAccessory *)self category];
    if (!category2 || (v12 = category2, -[HMDAccessory category](self, "category"), v13 = objc_claimAutoreleasedReturnValue(), [v13 categoryType], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(categoryForOther, "uuidStr"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, v12, (v16 & 1) == 0))
    {
      v17 = objc_alloc(MEMORY[0x277CD1680]);
      uuidStr = [categoryForOther uuidStr];
      catDescription = [categoryForOther catDescription];
      v20 = [v17 initWithType:uuidStr name:catDescription];
      [(HMDAccessory *)self setCategory:v20];

      if (clients)
      {
        category3 = [(HMDAccessory *)self category];
        v22 = encodeRootObjectForIncomingXPCMessage(category3, 0);

        v23 = MEMORY[0x277D0F818];
        v27 = @"kAccessoryCategory";
        v28[0] = v22;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        v25 = [v23 messageWithName:@"kAccessoryCategoryChangedNotificationKey" messagePayload:v24];

        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v25 = 0;
LABEL_14:

  return v25;
}

- (void)updateCategory:(id)category
{
  v23 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if (categoryCopy && (-[HMDAccessory categoryIdentifier](self, "categoryIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqual:categoryCopy], v5, !v6))
  {
    v12 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
    [v12 setAccessoryCategory:categoryCopy];
    home = [(HMDAccessory *)self home];
    backingStore = [home backingStore];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v16 = [backingStore transaction:@"AccessoryUpdated" options:v15];

    [v16 add:v12 withMessage:0];
    [v16 run];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      categoryIdentifier = [(HMDAccessory *)selfCopy categoryIdentifier];
      v17 = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = categoryIdentifier;
      v21 = 2112;
      v22 = categoryCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No change in category -- old: %@, new: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (BOOL)_updateRoom:(id)room source:(unint64_t)source
{
  v45 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  home = [(HMDAccessory *)self home];
  roomForEntireHome = [home roomWithUUID:roomCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    name = [roomForEntireHome name];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
    *buf = 138543874;
    v40 = v12;
    v41 = 2112;
    v42 = name;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@_updateRoom to: room: %@, source: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (roomForEntireHome)
  {
    if (!home)
    {
      goto LABEL_12;
    }
  }

  else
  {
    roomForEntireHome = [home roomForEntireHome];
    if (!home)
    {
LABEL_12:
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v27;
        v41 = 2112;
        v42 = roomCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room since room with UUID %@ or its home cannot be found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = 0;
      goto LABEL_21;
    }
  }

  if (!roomForEntireHome)
  {
    goto LABEL_12;
  }

  room = [(HMDAccessory *)selfCopy room];
  uuid = [roomForEntireHome uuid];
  uuid2 = [room uuid];
  LODWORD(v18) = [uuid hmf_isEqualToUUID:uuid2];

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
  if (v18)
  {
    if (v22)
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Accessory is already in the same room. not updating.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    if (v22)
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v29;
      v41 = 2112;
      v42 = room;
      v43 = 2112;
      v44 = roomForEntireHome;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating room: %@ new room: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    room2 = [(HMDAccessory *)v20 room];
    name2 = [room2 name];

    [(HMDAccessory *)v20 setRoom:roomForEntireHome];
    v32 = objc_alloc(MEMORY[0x277CBEB38]);
    v37 = @"HMIsCloudSourceKey";
    v33 = [MEMORY[0x277CCABB0] numberWithBool:(source & 0xFFFFFFFFFFFFFFFELL) == 2];
    v38 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v35 = [v32 initWithDictionary:v34];

    if (name2)
    {
      [v35 setObject:name2 forKey:@"kRoomOldNameKey"];
    }

    [v35 setObject:v20 forKeyedSubscript:@"HMDAccessoryKey"];
    v18 = objc_msgSend_copy(v35);
    logAndPostNotification(@"HMDNotificationAccessoryChangedRoom", v20, v18);

    LOBYTE(v18) = 0;
  }

  v28 = v18 ^ 1;

LABEL_21:
  return v28;
}

- (void)_handleUpdateRoomMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy uuidForKey:*MEMORY[0x277CD0D40]];
  home = [(HMDAccessory *)self home];
  v7 = [home roomWithUUID:v5];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    rooms = [home rooms];
    *buf = 138544130;
    v42 = v11;
    v43 = 2112;
    v44 = home;
    v45 = 2112;
    v46 = rooms;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@_handleUpdateRoomMessage: home: %@, rooms: %@, newRoom: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!home)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      name = [(HMDAccessory *)v21 name];
      *buf = 138543618;
      v42 = v23;
      v43 = 2112;
      v44 = name;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room for accessory %@ since home cannot be found on accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2018;
    goto LABEL_15;
  }

  if (!v7)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      name2 = [(HMDAccessory *)v28 name];
      *buf = 138543874;
      v42 = v30;
      v43 = 2112;
      v44 = name2;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to change room for accessory %@ since room with UUID %@ cannot be found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v25 = MEMORY[0x277CCA9B8];
    v26 = 2017;
LABEL_15:
    v32 = [v25 hmPrivateErrorWithCode:v26];
LABEL_16:
    v15 = v32;
    [messageCopy respondWithError:v32];
    goto LABEL_17;
  }

  if (v5)
  {
    roomForEntireHome = [home roomForEntireHome];
    v14 = [v7 isEqual:roomForEntireHome];

    if ((v14 & 1) == 0 && [home accessoryCountForRoom:v7] >= 0x3E8)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        name3 = [(HMDAccessory *)v34 name];
        name4 = [v7 name];
        *buf = 138543874;
        v42 = v36;
        v43 = 2112;
        v44 = name3;
        v45 = 2112;
        v46 = name4;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Can't assign %@  to room %@; already at maximum accessories allowed", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:49];
      goto LABEL_16;
    }
  }

  v15 = [(HMDAccessory *)selfCopy modelWithUpdatedRoom:v7];
  backingStore = [home backingStore];
  name5 = [messageCopy name];
  v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v19 = [backingStore transaction:name5 options:v18];

  [v19 add:v15 withMessage:messageCopy];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __41__HMDAccessory__handleUpdateRoomMessage___block_invoke;
  v39[3] = &unk_27868A1D8;
  v39[4] = selfCopy;
  v40 = v7;
  [v19 run:v39];

LABEL_17:
}

void __41__HMDAccessory__handleUpdateRoomMessage___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) name];
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Finished updating the room (%@) for the accessory finished with error: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)modelWithUpdatedRoom:(id)room
{
  v18 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  if (roomCopy)
  {
    v5 = [(HMDAccessory *)self transactionWithObjectChangeType:2];
    uuid = [roomCopy uuid];
    uUIDString = [uuid UUIDString];
    [v5 setRoomUUID:uUIDString];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      name = [(HMDAccessory *)selfCopy name];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = name;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot create update room model because room was not specified for accessory %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v5 = 0;
  }

  return v5;
}

- (void)updateRoom:(id)room source:(unint64_t)source
{
  roomCopy = room;
  workQueue = [(HMDAccessory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDAccessory_updateRoom_source___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v10 = roomCopy;
  sourceCopy = source;
  v8 = roomCopy;
  dispatch_async(workQueue, block);
}

void __34__HMDAccessory_updateRoom_source___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  [v2 _updateRoom:v3 source:*(a1 + 48)];
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  os_unfair_recursive_lock_lock_with_options();
  room = self->_room;
  self->_room = roomCopy;

  os_unfair_recursive_lock_unlock();
  home = [(HMDAccessory *)self home];
  [home configureBulletinNotification];
}

- (HMDRoom)room
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_room;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)spiClientIdentifier
{
  uuid = [(HMDAccessory *)self uuid];
  v3 = spiClientIdentifierForUUID(uuid);

  return v3;
}

- (void)setResetOnBackoffExpiry:(BOOL)expiry
{
  os_unfair_recursive_lock_lock_with_options();
  self->_resetOnBackoffExpiry = expiry;

  os_unfair_recursive_lock_unlock();
}

- (BOOL)resetOnBackoffExpiry
{
  os_unfair_recursive_lock_lock_with_options();
  resetOnBackoffExpiry = self->_resetOnBackoffExpiry;
  os_unfair_recursive_lock_unlock();
  return resetOnBackoffExpiry;
}

- (void)setConsecutivePairingFailure:(unint64_t)failure
{
  os_unfair_recursive_lock_lock_with_options();
  self->_consecutivePairingFailures = failure;

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)consecutivePairingFailure
{
  os_unfair_recursive_lock_lock_with_options();
  consecutivePairingFailures = self->_consecutivePairingFailures;
  os_unfair_recursive_lock_unlock();
  return consecutivePairingFailures;
}

- (void)setLastPairingFailureTime:(double)time
{
  os_unfair_recursive_lock_lock_with_options();
  self->_lastPairingFailureTime = time;

  os_unfair_recursive_lock_unlock();
}

- (double)lastPairingFailureTime
{
  os_unfair_recursive_lock_lock_with_options();
  lastPairingFailureTime = self->_lastPairingFailureTime;
  os_unfair_recursive_lock_unlock();
  return lastPairingFailureTime;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    os_unfair_recursive_lock_lock_with_options();
    v5 = objc_msgSend_copy(v7);
    identifier = self->_identifier;
    self->_identifier = v5;

    os_unfair_recursive_lock_unlock();
    identifierCopy = v7;
  }
}

- (NSString)identifier
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)removeCloudData
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v3 = [accessoryProfiles countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(accessoryProfiles);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeCloudData];
      }

      while (v4 != v6);
      v4 = [accessoryProfiles countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)unconfigure
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v4 = [accessoryProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(accessoryProfiles);
        }

        [*(*(&v11 + 1) + 8 * v7++) unconfigure];
      }

      while (v5 != v7);
      v5 = [accessoryProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(HMDAccessory *)self setAccessoryProfiles:0];
  msgDispatcher = [(HMDAccessory *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDAccessory *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];
}

- (BOOL)hasSiriEndpointProfile
{
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v3 = [accessoryProfiles na_any:&__block_literal_global_309];

  return v3;
}

uint64_t __38__HMDAccessory_hasSiriEndpointProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (BOOL)hasMediaProfile
{
  accessoryProfiles = [(HMDAccessory *)self accessoryProfiles];
  v3 = [accessoryProfiles na_any:&__block_literal_global_306];

  return v3;
}

uint64_t __31__HMDAccessory_hasMediaProfile__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (BOOL)isFirstPartyAccessory
{
  selfCopy = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (selfCopy != 0);
}

- (void)configureWithHome:(id)home msgDispatcher:(id)dispatcher configurationTracker:(id)tracker initialConfiguration:(BOOL)configuration
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  v12 = trackerCopy;
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  [(HMDAccessory *)self setHome:homeCopy];
  [(HMDAccessory *)self setMsgDispatcher:dispatcherCopy];
  workQueue = [(HMDAccessory *)self workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HMDAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke;
  v17[3] = &unk_2786891E0;
  v17[4] = self;
  v18 = homeCopy;
  v19 = dispatcherCopy;
  v20 = v12;
  v14 = v12;
  v15 = dispatcherCopy;
  v16 = homeCopy;
  dispatch_async(workQueue, v17);
}

void __90__HMDAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) room];

  if (!v2)
  {
    v3 = [*(a1 + 40) roomForEntireHome];
    [*(a1 + 32) setRoom:v3];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 32) _registerForMessages];
  }

  [*(a1 + 32) _registerForNotifications];
  if (*(a1 + 48))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1 + 32) accessoryProfiles];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v8++) configureWithMessageDispatcher:*(a1 + 48) configurationTracker:*(a1 + 56)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  v9 = [*(a1 + 32) softwareUpdate];
  [v9 configureWithAccessory:*(a1 + 32) dataSource:*(a1 + 32) messageDispatcher:*(a1 + 48)];

  [*(a1 + 32) updateVendorInfo];
  v10 = *(a1 + 56);
  if (v10)
  {
    dispatch_group_leave(v10);
  }
}

- (void)_relayIdentifyAccessorytoResidentForMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x277D0F818];
  messagePayload = [messageCopy messagePayload];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDAccessory__relayIdentifyAccessorytoResidentForMessage___block_invoke;
  v12[3] = &unk_278689DC0;
  v13 = messageCopy;
  v7 = messageCopy;
  v8 = [v5 messageWithMessage:v7 messagePayload:messagePayload responseHandler:v12];

  home = [(HMDAccessory *)self home];
  uuid = [(HMDAccessory *)self uuid];
  workQueue = [(HMDAccessory *)self workQueue];
  [home redispatchToResidentMessage:v8 target:uuid responseQueue:workQueue];
}

void __60__HMDAccessory__relayIdentifyAccessorytoResidentForMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)__handleIdentify:(id)identify
{
  v25 = *MEMORY[0x277D85DE8];
  identifyCopy = identify;
  isWatch();
  isReachable = [(HMDAccessory *)self isReachable];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isReachable)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling identify", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessory *)selfCopy handleIdentifyAccessoryMessage:identifyCopy];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      isWatch();
      v12 = HMFBooleanToString();
      [(HMDAccessory *)selfCopy isReachable];
      v13 = HMFBooleanToString();
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Relaying request to identify accessory because we are a watch (%@) or the accessory is unreachable (%@)", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if ([(HMDAccessory *)selfCopy isRemoteAccessEnabled])
    {
      [(HMDAccessory *)selfCopy _relayIdentifyAccessorytoResidentForMessage:identifyCopy];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay request to identify accessory because remote access is not enabled", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [identifyCopy respondWithError:v18];
    }
  }
}

- (void)handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory update should process transaction removal value request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v10 = *MEMORY[0x277CCF0D8];
  v18 = 0;
  v11 = [messagePayload hmf_BOOLForKey:v10 error:&v18];
  v12 = v18;

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = messagePayload2;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get value from payload: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [messageCopy respondWithError:v12];
  }

  else
  {
    [(HMDAccessory *)selfCopy setShouldProcessTransactionRemoval:v11];
    [messageCopy respondWithSuccess];
  }
}

- (void)_handleLinkQualityRequestMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (_os_feature_enabled_impl())
  {
    v5 = [HMDRemoteMessage alloc];
    name = [messageCopy name];
    destination = [messageCopy destination];
    messagePayload = [messageCopy messagePayload];
    v9 = [(HMDRemoteMessage *)v5 initWithName:name destination:destination payload:messagePayload type:0 timeout:1 secure:10.0];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__HMDAccessory__handleLinkQualityRequestMessage___block_invoke;
    v21[3] = &unk_278689DC0;
    v10 = messageCopy;
    v22 = v10;
    [(HMDRemoteMessage *)v9 setResponseHandler:v21];
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = selfCopy;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13 && [(HMDAccessory *)v13 communicationProtocol]== 2)
    {
      home = [(HMDAccessory *)selfCopy home];
      if ([home isCurrentDeviceConfirmedPrimaryResident])
      {
        [(HMDAccessory *)v13 handleLinkQualityRequestMessage:v9];
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = selfCopy;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@LinkQuality: Re-dispatching to primary resident", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        uuid = [(HMDAccessory *)v16 uuid];
        workQueue = [(HMDAccessory *)v16 workQueue];
        [home redispatchToResidentMessage:v9 target:uuid responseQueue:workQueue];
      }
    }

    else
    {
      home = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"This Accessory type does not support link quality" reason:0 suggestion:0];
      [v10 respondWithError:home];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Feature is disabled" reason:@"Feature flag is disabled" suggestion:0];
    [messageCopy respondWithError:v9];
  }
}

uint64_t __49__HMDAccessory__handleLinkQualityRequestMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithPayload:?];
  }
}

- (void)_registerForMessages
{
  v78[2] = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  featuresDataSource = [home featuresDataSource];
  isMessageBindingsEnabled = [featuresDataSource isMessageBindingsEnabled];

  if ((isMessageBindingsEnabled & 1) == 0)
  {
    v65 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    administratorHandler = [home administratorHandler];
    v7 = *MEMORY[0x277CD12B0];
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v77[0] = v8;
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v77[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
    [administratorHandler registerForMessage:v7 receiver:self policies:v10 selector:sel__handleUpdateRoomMessage_];

    administratorHandler2 = [home administratorHandler];
    v12 = *MEMORY[0x277CD0CA8];
    v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v76[0] = v13;
    v14 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v76[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
    [administratorHandler2 registerForMessage:v12 receiver:self policies:v15 selector:sel__handleRenameMessage_];

    administratorHandler3 = [home administratorHandler];
    v17 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v75[0] = v17;
    v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
    v75[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
    [administratorHandler3 registerForMessage:@"kSetAppDataRequestKey" receiver:self policies:v19 selector:sel___handleSetAppData_];

    administratorHandler4 = [home administratorHandler];
    v21 = *MEMORY[0x277CCF0C8];
    v22 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v74[0] = v22;
    v23 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
    v74[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    [administratorHandler4 registerForMessage:v21 receiver:self policies:v24 selector:sel___handleUpdatePendingConfigurationIdentifierMessage_];

    msgDispatcher = [(HMDAccessory *)self msgDispatcher];
    v26 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v73[0] = v26;
    v73[1] = v65;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    [msgDispatcher registerForMessage:@"kAccessoryAdvertisingParamsRequestKey" receiver:self policies:v27 selector:sel___handleGetAccessoryAdvertisingParams_];

    msgDispatcher2 = [(HMDAccessory *)self msgDispatcher];
    v29 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v72[0] = v29;
    v30 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v72[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    [msgDispatcher2 registerForMessage:@"kListPairingsRequestKey" receiver:self policies:v31 selector:sel___handleListPairings_];

    if (isInternalBuild())
    {
      msgDispatcher3 = [(HMDAccessory *)self msgDispatcher];
      v33 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v71[0] = v33;
      v34 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
      v71[1] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
      [msgDispatcher3 registerForMessage:@"kShowMatterLockNotificationKey" receiver:self policies:v35 selector:sel___handleShowMatterLockNotification_];
    }

    msgDispatcher4 = [(HMDAccessory *)self msgDispatcher];
    v37 = *MEMORY[0x277CCEC30];
    v38 = [HMDXPCMessagePolicy policyWithEntitlements:13];
    v70[0] = v38;
    v70[1] = v65;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [msgDispatcher4 registerForMessage:v37 receiver:self policies:v39 selector:sel___handlePairingIdentityRequest_];

    v40 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v40 setRoles:{objc_msgSend(v40, "roles") | 6}];
    v41 = objc_msgSend_copy(v40);
    msgDispatcher5 = [(HMDAccessory *)self msgDispatcher];
    v43 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v69[0] = v43;
    v69[1] = v41;
    v69[2] = v65;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
    [msgDispatcher5 registerForMessage:@"kIdentifyAccessoryRequestKey" receiver:self policies:v44 selector:sel___handleIdentify_];

    if (isInternalBuild())
    {
      msgDispatcher6 = [(HMDAccessory *)self msgDispatcher];
      v46 = *MEMORY[0x277CD0A00];
      v47 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v68[0] = v47;
      v48 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v68[1] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      [msgDispatcher6 registerForMessage:v46 receiver:self policies:v49 selector:sel__handleWiFiReconfiguration_];

      msgDispatcher7 = [(HMDAccessory *)self msgDispatcher];
      v51 = *MEMORY[0x277CCF0E0];
      v52 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v67[0] = v52;
      v53 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
      v67[1] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
      [msgDispatcher7 registerForMessage:v51 receiver:self policies:v54 selector:sel_handleAccessoryUpdateShouldProcessTransactionRemovalValueRequestMessage_];
    }

    msgDispatcher8 = [(HMDAccessory *)self msgDispatcher];
    v56 = *MEMORY[0x277CCEC78];
    v66[0] = v65;
    v57 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v66[1] = v57;
    v58 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v66[2] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
    [msgDispatcher8 registerForMessage:v56 receiver:self policies:v59 selector:sel__handleLinkQualityRequestMessage_];

    if (self)
    {
      msgDispatcher9 = [(HMDAccessory *)self msgDispatcher];
      v61 = *MEMORY[0x277CD09F0];
      v62 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v78[0] = v62;
      v63 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v78[1] = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
      [msgDispatcher9 registerForMessage:v61 receiver:self policies:v64 selector:sel__handlePreviewAllowedHosts_];
    }
  }
}

- (id)backingStoreObjects:(int64_t)objects
{
  array = [MEMORY[0x277CBEB18] array];
  appData = [(HMDAccessory *)self appData];

  if (objects >= 3 && appData)
  {
    appData2 = [(HMDAccessory *)self appData];
    v8 = [appData2 modelObjectWithChangeType:1];
    [array addObject:v8];
  }

  if (objects > 3)
  {
    softwareUpdate = [(HMDAccessory *)self softwareUpdate];
    v10 = softwareUpdate;
    if (softwareUpdate && [softwareUpdate downloadSize])
    {
      model = [v10 model];
      [model setObjectChangeType:1];
      parentUUID = [model parentUUID];

      if (!parentUUID)
      {
        uuid = [(HMDAccessory *)self uuid];
        [model setParentUUIDIfNotNil:uuid];
      }

      [array addObject:model];
    }
  }

  return array;
}

- (void)populateModelObject:(id)object version:(int64_t)version
{
  v78 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  name = [(HMDAccessory *)self name];
  [v8 setName:name];

  configuredName = [(HMDAccessory *)self configuredName];
  [v8 setConfiguredName:configuredName];

  providedName = [(HMDAccessory *)self providedName];
  [v8 setProvidedName:providedName];

  categoryIdentifier = [(HMDAccessory *)self categoryIdentifier];
  [v8 setPropertyIfNotNil:categoryIdentifier named:@"accessoryCategory"];

  identifier = [(HMDAccessory *)self identifier];
  [v8 setIdentifier:identifier];

  room = [(HMDAccessory *)self room];
  uuid = [room uuid];
  if (uuid)
  {
    v16 = uuid;
    room2 = [(HMDAccessory *)self room];
    [room2 uuid];
    v18 = v72 = version;
    home = [(HMDAccessory *)self home];
    [home roomForEntireHome];
    v21 = v20 = objectCopy;
    uuid2 = [v21 uuid];
    v71 = [v18 isEqual:uuid2];

    objectCopy = v20;
    version = v72;

    if (v71)
    {
      goto LABEL_8;
    }

    room = [(HMDAccessory *)self room];
    uuid3 = [room uuid];
    uUIDString = [uuid3 UUIDString];
    [v8 setRoomUUID:uUIDString];
  }

LABEL_8:
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_suspendCapable];
  [v8 setSuspendCapable:v25];

  if (version >= 4)
  {
    model = [(HMDAccessory *)self model];
    [v8 setPropertyIfNotNil:model named:@"model"];

    manufacturer = [(HMDAccessory *)self manufacturer];
    [v8 setPropertyIfNotNil:manufacturer named:@"manufacturer"];

    firmwareVersion = [(HMDAccessory *)self firmwareVersion];
    rawVersionString = [firmwareVersion rawVersionString];
    [v8 setPropertyIfNotNil:rawVersionString named:@"firmwareVersion"];

    displayableFirmwareVersion = [(HMDAccessory *)self displayableFirmwareVersion];
    [v8 setPropertyIfNotNil:displayableFirmwareVersion named:@"displayableFirmwareVersion"];

    serialNumber = [(HMDAccessory *)self serialNumber];
    [v8 setPropertyIfNotNil:serialNumber named:@"serialNumber"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory currentNetworkProtectionMode](self, "currentNetworkProtectionMode")}];
    [v8 setCurrentNetworkProtectionMode:v32];

    networkAccessViolation = [(HMDAccessory *)self networkAccessViolation];
    lastViolationDate = [networkAccessViolation lastViolationDate];
    v35 = EpochIntervalFromDate(lastViolationDate);
    [v8 setLastNetworkAccessViolationOccurrenceSince1970:v35];

    networkAccessViolation2 = [(HMDAccessory *)self networkAccessViolation];
    lastResetDate = [networkAccessViolation2 lastResetDate];
    v38 = EpochIntervalFromDate(lastResetDate);
    [v8 setLastNetworkAccessViolationResetSince1970:v38];

    v39 = MEMORY[0x277CBEB18];
    allowedHosts = [(HMDAccessory *)self allowedHosts];
    v41 = [v39 arrayWithCapacity:{objc_msgSend(allowedHosts, "count")}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    allowedHosts2 = [(HMDAccessory *)self allowedHosts];
    v43 = [allowedHosts2 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v74;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v74 != v45)
          {
            objc_enumerationMutation(allowedHosts2);
          }

          jsonWANRule = [*(*(&v73 + 1) + 8 * i) jsonWANRule];
          [v41 addObject:jsonWANRule];
        }

        v44 = [allowedHosts2 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v44);
    }

    v48 = objc_msgSend_copy(v41);
    [v8 setAppliedFirewallWANRules:v48];

    productData = [(HMDAccessory *)self productData];
    [v8 setPropertyIfNotNil:productData named:@"productDataV2"];

    configuredNetworkProtectionGroupUUID = [(HMDAccessory *)self configuredNetworkProtectionGroupUUID];
    uUIDString2 = [configuredNetworkProtectionGroupUUID UUIDString];
    [v8 setConfiguredNetworkProtectionGroupUUIDString:uUIDString2];

    networkClientIdentifier = [(HMDAccessory *)self networkClientIdentifier];
    [v8 setNetworkClientIdentifier:networkClientIdentifier];

    networkRouterUUID = [(HMDAccessory *)self networkRouterUUID];
    uUIDString3 = [networkRouterUUID UUIDString];
    [v8 setNetworkRouterUUID:uUIDString3];

    v55 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory networkClientLAN](self, "networkClientLAN")}];
    [v8 setNetworkClientLAN:v55];

    networkClientProfileFingerprint = [(HMDAccessory *)self networkClientProfileFingerprint];
    uUIDString4 = [networkClientProfileFingerprint UUIDString];
    [v8 setNetworkClientProfileFingerprint:uUIDString4];

    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessory wiFiCredentialType](self, "wiFiCredentialType")}];
    [v8 setWiFiCredentialType:v58];

    wiFiUniquePreSharedKey = [(HMDAccessory *)self wiFiUniquePreSharedKey];
    [v8 setWiFiUniquePreSharedKey:wiFiUniquePreSharedKey];

    pendingConfigurationIdentifier = [(HMDAccessory *)self pendingConfigurationIdentifier];
    [v8 setPendingConfigurationIdentifier:pendingConfigurationIdentifier];

    primaryProfileVersion = [(HMDAccessory *)self primaryProfileVersion];
    versionString = [primaryProfileVersion versionString];
    [v8 setPropertyIfNotNil:versionString named:@"primaryProfileVersion"];

    initialManufacturer = [(HMDAccessory *)self initialManufacturer];
    [v8 setPropertyIfNotNil:initialManufacturer named:@"initialManufacturer"];

    initialModel = [(HMDAccessory *)self initialModel];
    [v8 setPropertyIfNotNil:initialModel named:@"initialModel"];

    initialCategoryIdentifier = [(HMDAccessory *)self initialCategoryIdentifier];
    [v8 setPropertyIfNotNil:initialCategoryIdentifier named:@"initialCategoryIdentifier"];

    hostAccessory = [(HMDAccessory *)self hostAccessory];
    uuid4 = [hostAccessory uuid];
    uUIDString5 = [uuid4 UUIDString];
    [v8 setHostAccessoryUUID:uUIDString5];

    lastSeenDate = [(HMDAccessory *)self lastSeenDate];
    [v8 setPropertyIfNotNil:lastSeenDate named:@"lastSeenDate"];

    v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessory isLowBattery](self, "isLowBattery")}];
    [v8 setPropertyIfNotNil:v70 named:@"lowBattery"];
  }
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAccessoryTransaction alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (NSArray)transportReports
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)shortDescription
{
  v3 = isInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    name = [(HMDAccessory *)self name];
    uuid = [(HMDAccessory *)self uuid];
    identifier = [(HMDAccessory *)self identifier];
    [(HMDAccessory *)self isReachable];
    v8 = HMFBooleanToString();
    v9 = [v4 stringWithFormat:@"%@/%@/%@/%@", name, uuid, identifier, v8];
  }

  else
  {
    name = [(HMDAccessory *)self uuid];
    uuid = [(HMDAccessory *)self identifier];
    [(HMDAccessory *)self isReachable];
    identifier = HMFBooleanToString();
    v9 = [v4 stringWithFormat:@"%@/%@/%@", name, uuid, identifier];
  }

  return v9;
}

- (void)setCategory:(id)category
{
  v4 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:category];
  category = self->_category;
  self->_category = v4;
}

- (unint64_t)supportedTransports
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)attributeDescriptions
{
  v50[14] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDAccessory *)self name];
  v48 = [v3 initWithName:@"Nm" value:name];
  v50[0] = v48;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  getConfiguredName = [(HMDAccessory *)self getConfiguredName];
  v46 = [v4 initWithName:@"CN" value:getConfiguredName];
  v50[1] = v46;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  providedName = [(HMDAccessory *)self providedName];
  v44 = [v5 initWithName:@"PN" value:providedName];
  v50[2] = v44;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDAccessory *)self uuid];
  v42 = [v6 initWithName:@"UUID" value:uuid];
  v50[3] = v42;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  category = [(HMDAccessory *)self category];
  name2 = [category name];
  v39 = [v7 initWithName:@"Cat" value:name2];
  v50[4] = v39;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  home = [(HMDAccessory *)self home];
  name3 = [home name];
  v36 = [v8 initWithName:@"HM" value:name3];
  v50[5] = v36;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  room = [(HMDAccessory *)self room];
  name4 = [room name];
  v33 = [v9 initWithName:@"RM" value:name4];
  v50[6] = v33;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  manufacturer = [(HMDAccessory *)self manufacturer];
  v31 = [v10 initWithName:@"MFG" value:manufacturer];
  v50[7] = v31;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMDAccessory *)self model];
  v29 = [v11 initWithName:@"MO" value:model];
  v50[8] = v29;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  serialNumber = [(HMDAccessory *)self serialNumber];
  v13 = [v12 initWithName:@"SN" value:serialNumber];
  v50[9] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  productData = [(HMDAccessory *)self productData];
  v16 = [v14 initWithName:@"PD" value:productData];
  v50[10] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMDAccessory *)self firmwareVersion];
  v19 = [v17 initWithName:@"FV" value:firmwareVersion];
  v50[11] = v19;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  displayableFirmwareVersion = [(HMDAccessory *)self displayableFirmwareVersion];
  v22 = [v20 initWithName:@"DFV" value:displayableFirmwareVersion];
  v50[12] = v22;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  softwareUpdate = [(HMDAccessory *)self softwareUpdate];
  v25 = [v23 initWithName:@"SU" value:softwareUpdate];
  v50[13] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:14];

  return v26;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  uuid = [(HMDAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (void)dealloc
{
  msgDispatcher = [(HMDAccessory *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDAccessory *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDAccessory;
  [(HMDAccessory *)&v6 dealloc];
}

- (void)sendRemovalRequestWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [(HMDAccessory *)selfCopy shortDescription];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending removal request for accessory: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDAccessory *)selfCopy home];
  [home handleRemoveAccessory:selfCopy completion:completionCopy];
}

- (void)setDefaultPreferredMediaUserIfRemoved:(id)removed defaultUser:(id)user completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  userCopy = user;
  completionCopy = completion;
  if (!removedCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = completionCopy;
  uuid = [removedCopy uuid];
  preferredMediaUserUUID = [(HMDAccessory *)self preferredMediaUserUUID];
  v14 = [uuid hmf_isEqualToUUID:preferredMediaUserUUID];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v18;
      v27 = 2112;
      v28 = removedCopy;
      v29 = 2112;
      v30 = userCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Resetting preferred media user: %@ to default user: %@.", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (userCopy)
    {
      uuid2 = [userCopy uuid];
      [(HMDAccessory *)selfCopy setPreferredMediaUser:uuid2 selectionType:0 completion:v11];
    }

    else
    {
      [(HMDAccessory *)selfCopy setPreferredMediaUser:0 selectionType:0 completion:v11];
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v24;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removed user is not current preferred media user: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (v11)
    {
      (v11)[2](v11, v20);
    }
  }
}

- (void)setPreferredMediaUser:(id)user selectionType:(unint64_t)type completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HMDAccessory_setPreferredMediaUser_selectionType_completion___block_invoke;
  v11[3] = &unk_278686D60;
  objc_copyWeak(&v13, &location);
  v10 = completionCopy;
  v12 = v10;
  [(HMDAccessory *)self runTransactionWithPreferredMediaUserUUID:userCopy selectionType:type completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __63__HMDAccessory_setPreferredMediaUser_selectionType_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to set preferred media user, error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)encodePreferredMediaUser:(id)user
{
  userCopy = user;
  preferredMediaUserUUID = [(HMDAccessory *)self preferredMediaUserUUID];
  [userCopy encodeObject:preferredMediaUserUUID forKey:*MEMORY[0x277CCEC48]];

  preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];

  if (preferredMediaUserSelectionTypeNumber)
  {
    preferredMediaUserSelectionTypeNumber2 = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    [userCopy encodeObject:preferredMediaUserSelectionTypeNumber2 forKey:*MEMORY[0x277CCEC58]];
  }
}

- (void)decodePreferredMediaUser:(id)user
{
  userCopy = user;
  v5 = [userCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC48]];
  [(HMDAccessory *)self setPreferredMediaUserUUID:v5];

  v6 = [userCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC58]];

  [(HMDAccessory *)self setPreferredMediaUserSelectionTypeNumber:v6];
}

- (void)transactionAccessoryUpdatedForPreferredMediaUser:(id)user completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  userCopy = user;
  handlerCopy = handler;
  if ([userCopy propertyWasSet:@"preferredMediaUserUUID"] && (objc_msgSend(userCopy, "preferredMediaUserUUID"), v8 = objc_claimAutoreleasedReturnValue(), -[HMDAccessory preferredMediaUserUUID](self, "preferredMediaUserUUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, (v10 & 1) == 0))
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      preferredMediaUserUUID = [userCopy preferredMediaUserUUID];
      v27 = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = preferredMediaUserUUID;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updated preferred media user UUID: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    preferredMediaUserUUID2 = [userCopy preferredMediaUserUUID];
    [(HMDAccessory *)selfCopy setPreferredMediaUserUUID:preferredMediaUserUUID2];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if ([userCopy propertyWasSet:@"preferredUserSelectionType"])
  {
    preferredUserSelectionType = [userCopy preferredUserSelectionType];
    preferredMediaUserSelectionTypeNumber = [(HMDAccessory *)self preferredMediaUserSelectionTypeNumber];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        preferredUserSelectionType2 = [userCopy preferredUserSelectionType];
        v27 = 138543618;
        v28 = v24;
        v29 = 2112;
        v30 = preferredUserSelectionType2;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Updated preferred media user selection type: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      preferredUserSelectionType3 = [userCopy preferredUserSelectionType];
      [(HMDAccessory *)selfCopy2 setPreferredMediaUserSelectionTypeNumber:preferredUserSelectionType3];

      v11 = 1;
    }
  }

  handlerCopy[2](handlerCopy, v11);
}

- (void)runTransactionWithModels:(id)models label:(id)label completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  labelCopy = label;
  completionCopy = completion;
  home = [(HMDAccessory *)self home];
  backingStore = [home backingStore];

  v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v14 = [backingStore transaction:labelCopy options:v13];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = modelsCopy;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 add:*(*(&v23 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__HMDAccessory_runTransactionWithModels_label_completion___block_invoke;
  v21[3] = &unk_278688DD0;
  v22 = completionCopy;
  v20 = completionCopy;
  [v14 run:v21];
}

uint64_t __58__HMDAccessory_runTransactionWithModels_label_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)runTransactionWithModel:(id)model label:(id)label completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v8 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  labelCopy = label;
  modelCopy2 = model;
  v12 = [v8 arrayWithObjects:&modelCopy count:1];

  [(HMDAccessory *)self runTransactionWithModels:v12 label:labelCopy completion:completionCopy, modelCopy, v14];
}

- (HMDAccessory)initWithTransaction:(id)transaction home:(id)home
{
  v102 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  v8 = [(HMDAccessory *)self init];
  if (!v8)
  {
LABEL_37:
    v26 = v8;
    goto LABEL_38;
  }

  uuid = [transactionCopy uuid];
  uuid = v8->_uuid;
  v8->_uuid = uuid;

  configuredName = [transactionCopy configuredName];
  hm_truncatedNameString = [configuredName hm_truncatedNameString];
  configuredName = v8->_configuredName;
  v8->_configuredName = hm_truncatedNameString;

  identifier = [transactionCopy identifier];
  identifier = v8->_identifier;
  v8->_identifier = identifier;

  if (v8->_identifier)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    roomUUID = [transactionCopy roomUUID];

    if (roomUUID)
    {
      v17 = objc_alloc(MEMORY[0x277CCAD78]);
      roomUUID2 = [transactionCopy roomUUID];
      v19 = [v17 initWithUUIDString:roomUUID2];
      v20 = [homeCopy roomWithUUID:v19];
      room = v8->_room;
      v8->_room = v20;
    }

    else
    {
      roomForEntireHome = [homeCopy roomForEntireHome];
      roomUUID2 = v8->_room;
      v8->_room = roomForEntireHome;
    }

    providedName = [transactionCopy providedName];
    hm_truncatedNameString2 = [providedName hm_truncatedNameString];
    providedName = v8->_providedName;
    v8->_providedName = hm_truncatedNameString2;

    model = [transactionCopy model];
    model = v8->_model;
    v8->_model = model;

    manufacturer = [transactionCopy manufacturer];
    manufacturer = v8->_manufacturer;
    v8->_manufacturer = manufacturer;

    v8->_accessoryReprovisionState = 0;
    firmwareVersion = [transactionCopy firmwareVersion];

    if (firmwareVersion)
    {
      v36 = [HMDAccessoryVersion alloc];
      firmwareVersion2 = [transactionCopy firmwareVersion];
      v38 = [(HMDAccessoryVersion *)v36 initWithString:firmwareVersion2];
      firmwareVersion = v8->_firmwareVersion;
      v8->_firmwareVersion = v38;
    }

    displayableFirmwareVersion = [transactionCopy displayableFirmwareVersion];

    if (displayableFirmwareVersion)
    {
      displayableFirmwareVersion2 = [transactionCopy displayableFirmwareVersion];
      displayableFirmwareVersion = v8->_displayableFirmwareVersion;
      v8->_displayableFirmwareVersion = displayableFirmwareVersion2;
    }

    serialNumber = [transactionCopy serialNumber];
    serialNumber = v8->_serialNumber;
    v8->_serialNumber = serialNumber;

    initialModel = [transactionCopy initialModel];
    initialModel = v8->_initialModel;
    v8->_initialModel = initialModel;

    initialManufacturer = [transactionCopy initialManufacturer];
    initialManufacturer = v8->_initialManufacturer;
    v8->_initialManufacturer = initialManufacturer;

    initialCategoryIdentifier = [transactionCopy initialCategoryIdentifier];
    initialCategoryIdentifier = v8->_initialCategoryIdentifier;
    v8->_initialCategoryIdentifier = initialCategoryIdentifier;

    productDataV2 = [transactionCopy productDataV2];
    productData = productDataV2;
    if (!productDataV2)
    {
      productData = [transactionCopy productData];
    }

    objc_storeStrong(&v8->_productData, productData);
    if (!productDataV2)
    {
    }

    suspendCapable = [transactionCopy suspendCapable];

    if (suspendCapable)
    {
      suspendCapable2 = [transactionCopy suspendCapable];
      v8->_suspendCapable = [suspendCapable2 BOOLValue];
    }

    lastSeenDate = [transactionCopy lastSeenDate];

    if (lastSeenDate)
    {
      lastSeenDate2 = [transactionCopy lastSeenDate];
      lastSeenDate = v8->_lastSeenDate;
      v8->_lastSeenDate = lastSeenDate2;
    }

    lowBattery = [transactionCopy lowBattery];

    if (lowBattery)
    {
      lowBattery2 = [transactionCopy lowBattery];
      v8->_lowBattery = [lowBattery2 BOOLValue];
    }

    msgDispatcher = [homeCopy msgDispatcher];
    msgDispatcher = v8->_msgDispatcher;
    v8->_msgDispatcher = msgDispatcher;

    accessoryCategory = [transactionCopy accessoryCategory];
    v63 = [(HMDAccessory *)v8 _updateCategory:accessoryCategory notifyClients:0];

    networkClientIdentifier = [transactionCopy networkClientIdentifier];
    networkClientIdentifier = v8->_networkClientIdentifier;
    v8->_networkClientIdentifier = networkClientIdentifier;

    v66 = objc_alloc(MEMORY[0x277CCAD78]);
    networkRouterUUID = [transactionCopy networkRouterUUID];
    v68 = [v66 initWithUUIDString:networkRouterUUID];
    networkRouterUUID = v8->_networkRouterUUID;
    v8->_networkRouterUUID = v68;

    currentNetworkProtectionMode = [transactionCopy currentNetworkProtectionMode];

    if (currentNetworkProtectionMode)
    {
      currentNetworkProtectionMode2 = [transactionCopy currentNetworkProtectionMode];
      v8->_currentNetworkProtectionMode = [currentNetworkProtectionMode2 integerValue];
    }

    wiFiCredentialType = [transactionCopy wiFiCredentialType];

    if (wiFiCredentialType)
    {
      v73 = objc_autoreleasePoolPush();
      v74 = v8;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        wiFiCredentialType2 = [transactionCopy wiFiCredentialType];
        v98 = 138543618;
        v99 = v76;
        v100 = 2112;
        v101 = wiFiCredentialType2;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Setting accessory wiFiCredentialType to %@", &v98, 0x16u);
      }

      objc_autoreleasePoolPop(v73);
      wiFiCredentialType3 = [transactionCopy wiFiCredentialType];
      v74->_wiFiCredentialType = [wiFiCredentialType3 integerValue];
    }

    appliedFirewallWANRules = [transactionCopy appliedFirewallWANRules];
    v80 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:appliedFirewallWANRules];
    allowedHosts = v8->_allowedHosts;
    v8->_allowedHosts = v80;

    wiFiUniquePreSharedKey = [transactionCopy wiFiUniquePreSharedKey];
    wiFiUniquePreSharedKey = v8->_wiFiUniquePreSharedKey;
    v8->_wiFiUniquePreSharedKey = wiFiUniquePreSharedKey;

    v84 = [HMDAccessoryNetworkAccessViolation alloc];
    lastNetworkAccessViolationOccurrenceSince1970 = [transactionCopy lastNetworkAccessViolationOccurrenceSince1970];
    lastNetworkAccessViolationResetSince1970 = [transactionCopy lastNetworkAccessViolationResetSince1970];
    v87 = [(HMDAccessoryNetworkAccessViolation *)v84 initWithLastViolationTimeInterval:lastNetworkAccessViolationOccurrenceSince1970 lastViolationResetTimeInterval:lastNetworkAccessViolationResetSince1970];

    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&v8->_networkAccessViolation, v87);
    }

    primaryProfileVersion = [transactionCopy primaryProfileVersion];

    if (primaryProfileVersion)
    {
      v89 = objc_alloc(MEMORY[0x277D0F940]);
      primaryProfileVersion2 = [transactionCopy primaryProfileVersion];
      v91 = [v89 initWithString:primaryProfileVersion2];
      primaryProfileVersion = v8->_primaryProfileVersion;
      v8->_primaryProfileVersion = v91;
    }

    pendingConfigurationIdentifier = [transactionCopy pendingConfigurationIdentifier];
    pendingConfigurationIdentifier = v8->_pendingConfigurationIdentifier;
    v8->_pendingConfigurationIdentifier = pendingConfigurationIdentifier;

    hostAccessoryUUID = [transactionCopy hostAccessoryUUID];
    if (hostAccessoryUUID)
    {
      v96 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:hostAccessoryUUID];
    }

    else
    {
      v96 = 0;
    }

    [(HMDAccessory *)v8 _updateHost:v96];

    goto LABEL_37;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v8;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v98 = 138543618;
    v99 = v25;
    v100 = 2112;
    v101 = transactionCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create accessory from transaction with nil identifier: %@", &v98, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v26 = 0;
LABEL_38:

  return v26;
}

- (HMDAccessory)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v27.receiver = self;
  v27.super_class = HMDAccessory;
  v6 = [(HMDAccessory *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationCenter, center);
    v8 = HMDispatchQueueNameString();
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_get_global_queue(21, 0);
    v12 = dispatch_queue_create_with_target_V2(uTF8String, v10, v11);
    workQueue = v7->_workQueue;
    v7->_workQueue = v12;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v7->_workQueue];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v7->_uuid;
    v7->_uuid = uUID;

    v16 = [MEMORY[0x277CBEB58] set];
    accessoryProfiles = v7->_accessoryProfiles;
    v7->_accessoryProfiles = v16;

    v7->_currentNetworkProtectionMode = 4;
    v7->_wiFiCredentialType = 0;
    v18 = +[HMDAccessoryNetworkAccessViolation noViolation];
    networkAccessViolation = v7->_networkAccessViolation;
    v7->_networkAccessViolation = v18;

    v7->_reachabilityPingEnabled = 0;
    v7->_reachabilityPingNotificationEnabled = 0;
    date = [MEMORY[0x277CBEAA8] date];
    timeBecameUnreachable = v7->_timeBecameUnreachable;
    v7->_timeBecameUnreachable = date;

    timeBecameReachable = v7->_timeBecameReachable;
    v7->_timeBecameReachable = 0;

    v7->_shouldProcessTransactionRemoval = 1;
    v23 = objc_alloc_init(HMDFeaturesDataSource);
    featuresDataSource = v7->_featuresDataSource;
    v7->_featuresDataSource = v23;

    hashedRouteFactory = v7->_hashedRouteFactory;
    v7->_hashedRouteFactory = &__block_literal_global_71817;
  }

  return v7;
}

id __43__HMDAccessory_initWithNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HMDHelper sharedHelper];
  v4 = [v3 hashedRouteIDForIdentifier:v2];

  return v4;
}

- (HMDAccessory)init
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(HMDAccessory *)self initWithNotificationCenter:defaultCenter];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t173 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t173, &__block_literal_global_453);
  }

  v3 = logCategory__hmf_once_v174;

  return v3;
}

void __27__HMDAccessory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v174;
  logCategory__hmf_once_v174 = v0;
}

+ (BOOL)splitProductDataIntoProductGroupAndProductNumber:(id)number productGroup:(id *)group productNumber:(id *)productNumber
{
  numberCopy = number;
  v8 = [objc_opt_class() validateProductData:numberCopy];
  if (v8)
  {
    if (group)
    {
      *group = [numberCopy substringWithRange:{0, 8}];
    }

    if (productNumber)
    {
      *productNumber = [numberCopy substringWithRange:{8, 8}];
    }
  }

  return v8;
}

+ (BOOL)validateProductData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 16)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
    invertedSet = [v4 invertedSet];

    v6 = [dataCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v98 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  home = [v12 home];
  if (home)
  {
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    name = [messageCopy name];
    v16 = HMFEqualObjects();

    if (v16)
    {
      v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v91[0] = v17;
      v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v91[1] = v18;
      v19 = objc_opt_new();
      v91[2] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

      name2 = [messageCopy name];
LABEL_16:
      v27 = HMFCreateMessageBindingWithReceiver();

LABEL_17:
      goto LABEL_18;
    }

    name3 = [messageCopy name];
    v29 = HMFEqualObjects();

    if (v29)
    {
      v30 = [HMDXPCMessagePolicy policyWithEntitlements:1];
      v90[0] = v30;
      v31 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
      v90[1] = v31;
      v32 = objc_opt_new();
      v90[2] = v32;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];

      name2 = [messageCopy name];
      goto LABEL_16;
    }

    name4 = [messageCopy name];
    v34 = HMFEqualObjects();

    if (v34)
    {
      v35 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v89[0] = v35;
      v36 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
      v89[1] = v36;
      v37 = objc_opt_new();
      v89[2] = v37;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:3];

      name2 = [messageCopy name];
      goto LABEL_16;
    }

    name5 = [messageCopy name];
    v39 = HMFEqualObjects();

    if (v39)
    {
      v40 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v88[0] = v40;
      v41 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
      v88[1] = v41;
      v42 = objc_opt_new();
      v88[2] = v42;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];

      name2 = [messageCopy name];
      goto LABEL_16;
    }

    name6 = [messageCopy name];
    v45 = HMFEqualObjects();

    if (v45)
    {
      v46 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v87[0] = v46;
      v87[1] = v14;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];

      name7 = [messageCopy name];
LABEL_23:
      v27 = HMFCreateMessageBindingWithReceiver();

LABEL_24:
      goto LABEL_17;
    }

    name8 = [messageCopy name];
    v50 = HMFEqualObjects();

    if (v50)
    {
      v51 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v86[0] = v51;
      v52 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
      v86[1] = v52;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];

      name9 = [messageCopy name];
    }

    else if (isInternalBuild() && ([messageCopy name], v55 = objc_claimAutoreleasedReturnValue(), v56 = HMFEqualObjects(), v55, v56))
    {
      v57 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v85[0] = v57;
      v58 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
      v85[1] = v58;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];

      name9 = [messageCopy name];
    }

    else
    {
      name10 = [messageCopy name];
      v60 = HMFEqualObjects();

      if (v60)
      {
        v61 = [HMDXPCMessagePolicy policyWithEntitlements:13];
        v84[0] = v61;
        v84[1] = v14;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];

        name7 = [messageCopy name];
        goto LABEL_23;
      }

      name11 = [messageCopy name];
      v63 = HMFEqualObjects();

      if (v63)
      {
        v47 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
        [v47 setRoles:{objc_msgSend(v47, "roles") | 6}];
        v79 = objc_msgSend_copy(v47);
        v64 = [HMDXPCMessagePolicy policyWithEntitlements:1];
        v83[0] = v64;
        v83[1] = v79;
        v83[2] = v14;
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];

        name12 = [messageCopy name];
        v27 = HMFCreateMessageBindingWithReceiver();

        goto LABEL_24;
      }

      if (isInternalBuild() && ([messageCopy name], v67 = objc_claimAutoreleasedReturnValue(), v68 = HMFEqualObjects(), v67, v68))
      {
        v69 = [HMDXPCMessagePolicy policyWithEntitlements:5];
        v82[0] = v69;
        v70 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
        v82[1] = v70;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];

        name9 = [messageCopy name];
      }

      else
      {
        name13 = [messageCopy name];
        v72 = HMFEqualObjects();

        if (v72)
        {
          v73 = [HMDXPCMessagePolicy policyWithEntitlements:5];
          v81[0] = v73;
          v74 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
          v81[1] = v74;
          v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];

          name9 = [messageCopy name];
        }

        else
        {
          name14 = [messageCopy name];
          v76 = HMFEqualObjects();

          if (!v76)
          {
            v27 = [v12 networkProtectionBindingForMessage:messageCopy];
            goto LABEL_17;
          }

          v80[0] = v14;
          v77 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
          v80[1] = v77;
          v78 = [HMDXPCMessagePolicy policyWithEntitlements:5];
          v80[2] = v78;
          v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];

          name9 = [messageCopy name];
        }
      }
    }

    v27 = HMFCreateMessageBindingWithReceiver();

    goto LABEL_17;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    name15 = [messageCopy name];
    *buf = 138543874;
    v93 = v25;
    v94 = 2112;
    v95 = name15;
    v96 = 2112;
    v97 = receiverCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, receiver does not have valid home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v27 = 0;
LABEL_18:

  return v27;
}

- (id)metricLoggingTransportDetails
{
  v2 = [[HMDAccessoryMetricTransportDetails alloc] initWithAccessory:self];

  return v2;
}

- (void)populateVendorDetailsForCoreAnalytics:(id)analytics keyPrefix:(id)prefix
{
  prefixCopy = prefix;
  analyticsCopy = analytics;
  v20 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:self];
  productData = [(HMDAccessoryMetricVendorDetails *)v20 productData];
  v9 = [prefixCopy stringByAppendingString:@"ProductData"];
  [analyticsCopy setObject:productData forKeyedSubscript:v9];

  manufacturer = [(HMDAccessoryMetricVendorDetails *)v20 manufacturer];
  v11 = [prefixCopy stringByAppendingString:@"Manufacturer"];
  [analyticsCopy setObject:manufacturer forKeyedSubscript:v11];

  model = [(HMDAccessoryMetricVendorDetails *)v20 model];
  v13 = [prefixCopy stringByAppendingString:@"Model"];
  [analyticsCopy setObject:model forKeyedSubscript:v13];

  firmwareVersion = [(HMDAccessoryMetricVendorDetails *)v20 firmwareVersion];
  v15 = [prefixCopy stringByAppendingString:@"FirmwareVersion"];
  [analyticsCopy setObject:firmwareVersion forKeyedSubscript:v15];

  category = [(HMDAccessoryMetricVendorDetails *)v20 category];
  v17 = [prefixCopy stringByAppendingString:@"Category"];
  [analyticsCopy setObject:category forKeyedSubscript:v17];

  differentiationNumber = [(HMDAccessoryMetricVendorDetails *)v20 differentiationNumber];
  v19 = [prefixCopy stringByAppendingString:@"DifferentiationNumber"];

  [analyticsCopy setObject:differentiationNumber forKeyedSubscript:v19];
}

- (id)metricLoggingVendorDetails
{
  v2 = [[HMDAccessoryMetricVendorDetails alloc] initWithAccessory:self];

  return v2;
}

- (NSDictionary)assistantObject
{
  v34 = *MEMORY[0x277D85DE8];
  home = [(HMDAccessory *)self home];
  if (home && ([(HMDAccessory *)self name], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v27[0] = *MEMORY[0x277D48148];
    v6 = [(HMDAccessory *)self name:@"objectType"];
    v27[1] = v6;
    v26[2] = @"objectIdentifier";
    urlString = [(HMDAccessory *)self urlString];
    v27[2] = urlString;
    v26[3] = @"objectHome";
    name = [home name];
    v27[3] = name;
    v26[4] = @"objectHomeIdentifier";
    urlString2 = [home urlString];
    v26[5] = @"objectReference";
    v27[4] = urlString2;
    v27[5] = self;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
    v11 = [v5 initWithDictionary:v10];

    hashRouteID = [(HMDAccessory *)self hashRouteID];
    if (hashRouteID)
    {
      [v11 setObject:hashRouteID forKey:@"objectHashedRouteUID"];
    }

    room = [(HMDAccessory *)self room];
    name2 = [room name];
    if (name2)
    {
      name3 = [home name];
      v16 = [name2 isEqualToString:name3];

      if ((v16 & 1) == 0)
      {
        [v11 setObject:name2 forKey:@"objectRoom"];
        urlString3 = [room urlString];
        [v11 setObject:urlString3 forKey:@"objectRoomIdentifier"];
      }
    }

    v18 = objc_msgSend_copy(v11);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      name4 = [(HMDAccessory *)self name];
      uuid = [(HMDAccessory *)self uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = name4;
      v32 = 2112;
      v33 = uUIDString;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because accessory.home or accessory.name is nil for %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  return v18;
}

- (NSString)urlString
{
  uuid = [(HMDAccessory *)self uuid];
  v3 = hm_assistantIdentifier();

  return v3;
}

- (HMDNetworkRouterFirewallRuleAccessoryIdentifier)metadataIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  productData = [(HMDAccessory *)self productData];
  if (productData)
  {
    firmwareVersion = [(HMDAccessory *)self firmwareVersion];
    v5 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier createWithProductData:productData firmwareVersion:firmwareVersion];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543874;
        v18 = v15;
        v19 = 2112;
        v20 = productData;
        v21 = 2112;
        v22 = firmwareVersion;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate meta-data identifier with product data '%@' and firmware version '%@'", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = selfCopy2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to generate meta-data identifier because the productData is nil -- %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  return v6;
}

@end