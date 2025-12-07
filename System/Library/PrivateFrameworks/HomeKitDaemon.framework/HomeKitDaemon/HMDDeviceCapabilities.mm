@interface HMDDeviceCapabilities
+ (BOOL)isAppleMediaAccessory;
+ (BOOL)isCompanionCapable;
+ (BOOL)isInternalVirtualDevice;
+ (BOOL)supportsAddingAccessory;
+ (BOOL)supportsAudioDestinationControllerCreation;
+ (BOOL)supportsAudioDestinationCreation;
+ (BOOL)supportsBackboard;
+ (BOOL)supportsBidirectionalAudioForCameraStreaming;
+ (BOOL)supportsBulletinBoard;
+ (BOOL)supportsCameraSnapshotRequestViaRelay;
+ (BOOL)supportsCustomerReset;
+ (BOOL)supportsDeviceLock;
+ (BOOL)supportsDismissUserNotificationAndDialog;
+ (BOOL)supportsHomeApp;
+ (BOOL)supportsHomeKitDataStream;
+ (BOOL)supportsIntentDonation;
+ (BOOL)supportsLocalization;
+ (BOOL)supportsReceivingRemoteCameraStream;
+ (BOOL)supportsRemoteAccess;
+ (BOOL)supportsSiriUnsecuringActionsWithWatchAuth;
+ (BOOL)supportsSymptomsHandler;
+ (BOOL)supportsSyncingToSharedUsers;
+ (BOOL)supportsTargetControllerAutoConfigure;
+ (BOOL)supportsUserNotifications;
+ (HMDDeviceCapabilities)deviceCapabilities;
+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)identifier;
+ (id)logCategory;
+ (unint64_t)supportedPairingCapabilities;
- (BOOL)clearsKeychainWhenRemovedFromHome;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRemoteGatewayCapable;
- (BOOL)isResidentCapable;
- (BOOL)supportsAccessCodes;
- (BOOL)supportsAnnounce;
- (BOOL)supportsAssistantAccessControl;
- (BOOL)supportsAudioAnalysis;
- (BOOL)supportsAudioReturnChannel;
- (BOOL)supportsCHIP;
- (BOOL)supportsCameraActivityZones;
- (BOOL)supportsCameraPackageDetection;
- (BOOL)supportsCameraRecording;
- (BOOL)supportsCameraRecordingReachabilityNotifications;
- (BOOL)supportsCaptiveNetworks;
- (BOOL)supportsCloudDataSync;
- (BOOL)supportsCompanionInitiatedObliterate;
- (BOOL)supportsCompanionInitiatedRestart;
- (BOOL)supportsCoordinationDoorbellChime;
- (BOOL)supportsCoordinationFreeDoorbellChime;
- (BOOL)supportsCustomMediaApplicationDestination;
- (BOOL)supportsDeviceSetup;
- (BOOL)supportsDoorbellChime;
- (BOOL)supportsDropIn;
- (BOOL)supportsFaceClassification;
- (BOOL)supportsFirmwareUpdate;
- (BOOL)supportsHomeHub;
- (BOOL)supportsHomeInvitation;
- (BOOL)supportsHomeLevelLocationServiceSetting;
- (BOOL)supportsIDSActivityMonitorPresence;
- (BOOL)supportsJustSiri;
- (BOOL)supportsKeyTransferClient;
- (BOOL)supportsKeyTransferServer;
- (BOOL)supportsKeychainSync;
- (BOOL)supportsLockNotificationContext;
- (BOOL)supportsManagedConfigurationProfile;
- (BOOL)supportsMatterOwnerCertFetch;
- (BOOL)supportsMatterSharedAdminPairing;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMessagedHomePodSettings;
- (BOOL)supportsModernTransport;
- (BOOL)supportsMultiUser;
- (BOOL)supportsMusicAlarm;
- (BOOL)supportsNaturalLighting;
- (BOOL)supportsPreferredMediaUser;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsResidentFirmwareUpdate;
- (BOOL)supportsResidentFirstAccessoryCommunication;
- (BOOL)supportsRouterManagement;
- (BOOL)supportsShortcutActions;
- (BOOL)supportsSiriEndpointSetup;
- (BOOL)supportsStandaloneMode;
- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification;
- (BOOL)supportsTargetControl;
- (BOOL)supportsThirdPartyMusic;
- (BOOL)supportsThreadBorderRouter;
- (BOOL)supportsThreadNetworkCredentialSharing;
- (BOOL)supportsThreadService;
- (BOOL)supportsUnifiedMediaNotifications;
- (BOOL)supportsUserMediaSettings;
- (BOOL)supportsWakeOnLAN;
- (BOOL)supportsWalletKey;
- (BOOL)supportsWholeHouseAudio;
- (HMDDeviceCapabilities)initWithCoder:(id)coder;
- (HMDDeviceCapabilities)initWithObjectModel:(id)model;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client featuresDataSource:(id)source;
- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client homekitVersion:(id)version featuresDataSource:(id)source;
- (NSUUID)modelIdentifier;
- (NSUUID)modelParentIdentifier;
- (id)attributeDescriptions;
- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)modelBackedObjects;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)objectModel;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setModelParentIdentifier:(id)identifier;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDDeviceCapabilities

+ (HMDDeviceCapabilities)deviceCapabilities
{
  if (deviceCapabilities_onceToken != -1)
  {
    dispatch_once(&deviceCapabilities_onceToken, &__block_literal_global_227880);
  }

  v3 = deviceCapabilities_deviceCapabilities;

  return v3;
}

- (BOOL)supportsCloudDataSync
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCloudDataSync = [objectModel supportsCloudDataSync];
  bOOLValue = [supportsCloudDataSync BOOLValue];

  return bOOLValue;
}

- (id)objectModel
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)supportsDeviceLock
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass > 0xB) | (0xFAFu >> productClass) & 1;
}

- (id)modelBackedObjects
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)backingStoreObjectsWithChangeType:(unint64_t)type version:(int64_t)version
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDDeviceCapabilities *)self modelObjectWithChangeType:type version:version];
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  v6 = objc_msgSend_copy(objectModel);

  [v6 setObjectChangeType:type];

  return v6;
}

- (void)setModelParentIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    os_unfair_lock_lock_with_options();
    parentUUID = [(HMDBackingStoreModelObject *)self->_objectModel parentUUID];
    if (parentUUID)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Parent identifier is already present for this object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [[HMDAssertionLogEvent alloc] initWithReason:@"Parent identifier is already present for this object"];
      v23 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v23 submitLogEvent:v22];

      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Parent identifier is already present for this object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      v6 = __identifierForParentUUID(identifierCopy);
      v7 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:v6 parentUUID:identifierCopy];
      objectModel = self->_objectModel;
      v28 = 0;
      v9 = [(HMDBackingStoreModelObject *)v7 merge:objectModel error:&v28];
      v10 = v28;
      if (v9)
      {
        objc_storeStrong(&self->_objectModel, v7);
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v30 = v17;
          v31 = 2112;
          v32 = v10;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Model parent UUID is a required argument", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (NSUUID)modelParentIdentifier
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  parentUUID = [objectModel parentUUID];

  return parentUUID;
}

- (NSUUID)modelIdentifier
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  uuid = [objectModel uuid];

  return uuid;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v39[1] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v10 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = v12;
    v31 = messageCopy;
    if (self)
    {
      os_unfair_lock_lock_with_options();
      objectModel = self->_objectModel;
      v33 = 0;
      v15 = [(HMDBackingStoreModelObject *)objectModel diff:v13 differingFields:&v33];
      v16 = v33;
      if (v15)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v19;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating device capabilities", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v20 = objc_msgSend_copy(selfCopy->_objectModel);
        v21 = [(HMDBackingStoreModelObject *)v20 merge:v13];
        v22 = selfCopy->_objectModel;
        selfCopy->_objectModel = v20;

        os_unfair_lock_unlock(&self->_lock);
        v39[0] = @"HMDDeviceCapabilitiesUpdatedDifferingFieldsNotificationKey";
        *buf = v16;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v39 count:1];
        logAndPostNotification(@"HMDDeviceCapabilitiiesUpdatedNotification", selfCopy, v23);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v27;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = objc_opt_class();
      v28 = v38;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated:newValues:message:]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v29];
  }
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = removedCopy;
    v18 = 2112;
    v19 = objc_opt_class();
    v12 = v19;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved:message:]", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v13];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  uuid = [objectModel uuid];
  [coderCopy encodeObject:uuid forKey:@"HM.deviceCapabilities.identifier"];

  objectModel2 = [(HMDDeviceCapabilities *)self objectModel];
  v8 = coderCopy;
  v9 = __HMDDeviceCapabilitiesModelCodingKeyMapping();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____HMDDeviceCapabilitiesModelEncodeWithCoder_block_invoke;
  v12[3] = &unk_278681FB0;
  v13 = objectModel2;
  v14 = v8;
  v10 = objectModel2;
  v11 = v8;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

- (HMDDeviceCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.deviceCapabilities.identifier"];
  if (!uUID)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v6 = [(HMDBackingStoreModelObject *)[HMDDeviceCapabilitiesModel alloc] initWithUUID:uUID];
  v7 = coderCopy;
  v8 = __HMDDeviceCapabilitiesModelCodingKeyMapping();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = ____HMDDeviceCapabilitiesModelDecodeWithCoder_block_invoke;
  v16 = &unk_278681FB0;
  v17 = v7;
  v18 = v6;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [(HMDDeviceCapabilities *)self initWithObjectModel:v10, v13, v14, v15, v16];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  v7 = [objectModel copyWithZone:zone];
  v8 = [v5 initWithObjectModel:v7];

  return v8;
}

- (BOOL)clearsKeychainWhenRemovedFromHome
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  clearsKeychainWhenRemovedFromHome = [objectModel clearsKeychainWhenRemovedFromHome];
  bOOLValue = [clearsKeychainWhenRemovedFromHome BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsTVOSUpdateManualUpdateAvailableNotification
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsTVOSUpdateManualUpdateAvailableNotification = [objectModel supportsTVOSUpdateManualUpdateAvailableNotification];
  bOOLValue = [supportsTVOSUpdateManualUpdateAvailableNotification BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCoordinationFreeDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCoordinationFreeDoorbellChime = [objectModel supportsCoordinationFreeDoorbellChime];
  bOOLValue = [supportsCoordinationFreeDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMatterOwnerCertFetch
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMatterOwnerCertFetch = [objectModel supportsMatterOwnerCertFetch];
  bOOLValue = [supportsMatterOwnerCertFetch BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadService
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadService = [objectModel supportsThreadService];
  bOOLValue = [supportsThreadService BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsJustSiri
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsJustSiri = [objectModel supportsJustSiri];
  bOOLValue = [supportsJustSiri BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsRMVonAppleTV
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsRMVonAppleTV = [objectModel supportsRMVonAppleTV];
  bOOLValue = [supportsRMVonAppleTV BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCustomMediaApplicationDestination
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCustomMediaApplicationDestination = [objectModel supportsCustomMediaApplicationDestination];
  bOOLValue = [supportsCustomMediaApplicationDestination BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMessagedHomePodSettings
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMessagedHomePodSettings = [objectModel supportsMessagedHomePodSettings];
  bOOLValue = [supportsMessagedHomePodSettings BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsResidentFirstAccessoryCommunication
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsResidentFirstAccessoryCommunication = [objectModel supportsResidentFirstAccessoryCommunication];
  bOOLValue = [supportsResidentFirstAccessoryCommunication BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsModernTransport
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsModernTransport = [objectModel supportsModernTransport];
  bOOLValue = [supportsModernTransport BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCaptiveNetworks
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCaptiveNetworks = [objectModel supportsCaptiveNetworks];
  bOOLValue = [supportsCaptiveNetworks BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsUnifiedMediaNotifications
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsUnifiedMediaNotifications = [objectModel supportsUnifiedMediaNotifications];
  bOOLValue = [supportsUnifiedMediaNotifications BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCHIP
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCHIP = [objectModel supportsCHIP];
  bOOLValue = [supportsCHIP BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraPackageDetection
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraPackageDetection = [objectModel supportsCameraPackageDetection];
  bOOLValue = [supportsCameraPackageDetection BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsLockNotificationContext
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsLockNotificationContext = [objectModel supportsLockNotificationContext];
  bOOLValue = [supportsLockNotificationContext BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMatterSharedAdminPairing
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMatterSharedAdminPairing = [objectModel supportsMatterSharedAdminPairing];
  bOOLValue = [supportsMatterSharedAdminPairing BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadNetworkCredentialSharing
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadNetworkCredentialSharing = [objectModel supportsThreadNetworkCredentialSharing];
  bOOLValue = [supportsThreadNetworkCredentialSharing BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWakeOnLAN
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWakeOnLAN = [objectModel supportsWakeOnLAN];
  bOOLValue = [supportsWakeOnLAN BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThreadBorderRouter
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThreadBorderRouter = [objectModel supportsThreadBorderRouter];
  bOOLValue = [supportsThreadBorderRouter BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsPreferredMediaUser
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsPreferredMediaUser = [objectModel supportsPreferredMediaUser];
  bOOLValue = [supportsPreferredMediaUser BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsThirdPartyMusic
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsThirdPartyMusic = [objectModel supportsThirdPartyMusic];
  bOOLValue = [supportsThirdPartyMusic BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeHub
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeHub = [objectModel supportsHomeHub];
  bOOLValue = [supportsHomeHub BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsSiriEndpointSetup
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsSiriEndpointSetup = [objectModel supportsSiriEndpointSetup];
  bOOLValue = [supportsSiriEndpointSetup BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsUserMediaSettings
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsUserMediaSettings = [objectModel supportsUserMediaSettings];
  bOOLValue = [supportsUserMediaSettings BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDoorbellChime = [objectModel supportsDoorbellChime];
  bOOLValue = [supportsDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDropIn
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDropIn = [objectModel supportsDropIn];
  bOOLValue = [supportsDropIn BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAudioAnalysis
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAudioAnalysis = [objectModel supportsAudioAnalysis];
  bOOLValue = [supportsAudioAnalysis BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAnnounce
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAnnounce = [objectModel supportsAnnounce];
  bOOLValue = [supportsAnnounce BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraRecordingReachabilityNotifications
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraRecordingReachabilityNotifications = [objectModel supportsCameraRecordingReachabilityNotifications];
  bOOLValue = [supportsCameraRecordingReachabilityNotifications BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsIDSActivityMonitorPresence
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsIDSActivityMonitorPresence = [objectModel supportsIDSActivityMonitorPresence];
  bOOLValue = [supportsIDSActivityMonitorPresence BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAccessCodes
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAccessCodes = [objectModel supportsAccessCodes];
  bOOLValue = [supportsAccessCodes BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWalletKey
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWalletKey = [objectModel supportsWalletKey];
  bOOLValue = [supportsWalletKey BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsNaturalLighting
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsNaturalLighting = [objectModel supportsNaturalLighting];
  bOOLValue = [supportsNaturalLighting BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsManagedConfigurationProfile
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsManagedConfigurationProfile = [objectModel supportsManagedConfigurationProfile];
  bOOLValue = [supportsManagedConfigurationProfile BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsFaceClassification
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsFaceClassification = [objectModel supportsFaceClassification];
  bOOLValue = [supportsFaceClassification BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCoordinationDoorbellChime
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCoordinationDoorbellChime = [objectModel supportsCoordinationDoorbellChime];
  bOOLValue = [supportsCoordinationDoorbellChime BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMusicAlarm
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMusicAlarm = [objectModel supportsMusicAlarm];
  bOOLValue = [supportsMusicAlarm BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraActivityZones
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraActivityZones = [objectModel supportsCameraActivityZones];
  bOOLValue = [supportsCameraActivityZones BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsResidentFirmwareUpdate = [objectModel supportsResidentFirmwareUpdate];
  bOOLValue = [supportsResidentFirmwareUpdate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsFirmwareUpdate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsFirmwareUpdate = [objectModel supportsFirmwareUpdate];
  bOOLValue = [supportsFirmwareUpdate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMediaActions
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMediaActions = [objectModel supportsMediaActions];
  bOOLValue = [supportsMediaActions BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsShortcutActions
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsShortcutActions = [objectModel supportsShortcutActions];
  bOOLValue = [supportsShortcutActions BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsRouterManagement
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsRouterManagement = [objectModel supportsRouterManagement];
  bOOLValue = [supportsRouterManagement BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCameraRecording
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCameraRecording = [objectModel supportsCameraRecording];
  bOOLValue = [supportsCameraRecording BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCompanionInitiatedObliterate = [objectModel supportsCompanionInitiatedObliterate];
  bOOLValue = [supportsCompanionInitiatedObliterate BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsCompanionInitiatedRestart
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsCompanionInitiatedRestart = [objectModel supportsCompanionInitiatedRestart];
  bOOLValue = [supportsCompanionInitiatedRestart BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAudioReturnChannel
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAudioReturnChannel = [objectModel supportsAudioReturnChannel];
  bOOLValue = [supportsAudioReturnChannel BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeLevelLocationServiceSetting
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeLevelLocationServiceSetting = [objectModel supportsHomeLevelLocationServiceSetting];
  bOOLValue = [supportsHomeLevelLocationServiceSetting BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsMultiUser
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsMultiUser = [objectModel supportsMultiUser];
  bOOLValue = [supportsMultiUser BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsTargetControl
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsTargetControl = [objectModel supportsTargetControl];
  bOOLValue = [supportsTargetControl BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsHomeInvitation
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsHomeInvitation = [objectModel supportsHomeInvitation];
  bOOLValue = [supportsHomeInvitation BOOLValue];

  return bOOLValue;
}

- (BOOL)isRemoteGatewayCapable
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  remoteGatewayCapable = [objectModel remoteGatewayCapable];
  bOOLValue = [remoteGatewayCapable BOOLValue];

  return bOOLValue;
}

- (BOOL)isResidentCapable
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  residentCapable = [objectModel residentCapable];
  bOOLValue = [residentCapable BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsAssistantAccessControl
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsAssistantAccessControl = [objectModel supportsAssistantAccessControl];
  bOOLValue = [supportsAssistantAccessControl BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsWholeHouseAudio
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsWholeHouseAudio = [objectModel supportsWholeHouseAudio];
  bOOLValue = [supportsWholeHouseAudio BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsStandaloneMode
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsStandaloneMode = [objectModel supportsStandaloneMode];
  bOOLValue = [supportsStandaloneMode BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeyTransferServer
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeyTransferServer = [objectModel supportsKeyTransferServer];
  bOOLValue = [supportsKeyTransferServer BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeyTransferClient
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeyTransferClient = [objectModel supportsKeyTransferClient];
  bOOLValue = [supportsKeyTransferClient BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsDeviceSetup
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsDeviceSetup = [objectModel supportsDeviceSetup];
  bOOLValue = [supportsDeviceSetup BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsKeychainSync
{
  objectModel = [(HMDDeviceCapabilities *)self objectModel];
  supportsKeychainSync = [objectModel supportsKeychainSync];
  bOOLValue = [supportsKeychainSync BOOLValue];

  return bOOLValue;
}

- (id)attributeDescriptions
{
  v167[54] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeychainSync];
  v166 = HMFBooleanToString();
  v165 = [v3 initWithName:@"Keychain Sync" value:v166];
  v167[0] = v165;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsDeviceSetup];
  v164 = HMFBooleanToString();
  v163 = [v4 initWithName:@"Device Setup" value:v164];
  v167[1] = v163;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
  v162 = HMFBooleanToString();
  v161 = [v5 initWithName:@"Key Transfer Client" value:v162];
  v167[2] = v161;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
  v160 = HMFBooleanToString();
  v159 = [v6 initWithName:@"Key Transfer Server" value:v160];
  v167[3] = v159;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsStandaloneMode];
  v158 = HMFBooleanToString();
  v157 = [v7 initWithName:@"Standalone Mode" value:v158];
  v167[4] = v157;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCloudDataSync];
  v156 = HMFBooleanToString();
  v155 = [v8 initWithName:@"Cloud Data Sync" value:v156];
  v167[5] = v155;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
  v154 = HMFBooleanToString();
  v153 = [v9 initWithName:@"Whole House Audio" value:v154];
  v167[6] = v153;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
  v152 = HMFBooleanToString();
  v151 = [v10 initWithName:@"Assistant Access Control" value:v152];
  v167[7] = v151;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self isResidentCapable];
  v150 = HMFBooleanToString();
  v149 = [v11 initWithName:@"Resident" value:v150];
  v167[8] = v149;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
  v148 = HMFBooleanToString();
  v147 = [v12 initWithName:@"Remote Gateway" value:v148];
  v167[9] = v147;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsTargetControl];
  v146 = HMFBooleanToString();
  v145 = [v13 initWithName:@"Target Control" value:v146];
  v167[10] = v145;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMultiUser];
  v144 = HMFBooleanToString();
  v143 = [v14 initWithName:@"Multi-User" value:v144];
  v167[11] = v143;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
  v142 = HMFBooleanToString();
  v141 = [v15 initWithName:@"Home Level Location Services" value:v142];
  v167[12] = v141;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
  v140 = HMFBooleanToString();
  v139 = [v16 initWithName:@"Restart" value:v140];
  v167[13] = v139;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
  v138 = HMFBooleanToString();
  v137 = [v17 initWithName:@"Factory Reset" value:v138];
  v167[14] = v137;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeInvitation];
  v136 = HMFBooleanToString();
  v135 = [v18 initWithName:@"Home Invitation" value:v136];
  v167[15] = v135;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraRecording];
  v134 = HMFBooleanToString();
  v133 = [v19 initWithName:@"Camera Recording" value:v134];
  v167[16] = v133;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsRouterManagement];
  v132 = HMFBooleanToString();
  v131 = [v20 initWithName:@"Router Management" value:v132];
  v167[17] = v131;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsShortcutActions];
  v130 = HMFBooleanToString();
  v129 = [v21 initWithName:@"Shortcut Actions" value:v130];
  v167[18] = v129;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMediaActions];
  v128 = HMFBooleanToString();
  v127 = [v22 initWithName:@"Media Actions" value:v128];
  v167[19] = v127;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
  v126 = HMFBooleanToString();
  v125 = [v23 initWithName:@"Firmware Update" value:v126];
  v167[20] = v125;
  v24 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
  v124 = HMFBooleanToString();
  v123 = [v24 initWithName:@"Resident Firmware Update" value:v124];
  v167[21] = v123;
  v25 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
  v122 = HMFBooleanToString();
  v121 = [v25 initWithName:@"Camera Activity Zones" value:v122];
  v167[22] = v121;
  v26 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMusicAlarm];
  v120 = HMFBooleanToString();
  v119 = [v26 initWithName:@"Music Alarms" value:v120];
  v167[23] = v119;
  v27 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsFaceClassification];
  v118 = HMFBooleanToString();
  v117 = [v27 initWithName:@"Face Classification" value:v118];
  v167[24] = v117;
  v28 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsNaturalLighting];
  v116 = HMFBooleanToString();
  v115 = [v28 initWithName:@"Natural Lighting" value:v116];
  v167[25] = v115;
  v29 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
  v114 = HMFBooleanToString();
  v113 = [v29 initWithName:@"IDS Activity Monitor (Presence)" value:v114];
  v167[26] = v113;
  v30 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  v112 = HMFBooleanToString();
  v111 = [v30 initWithName:@"Camera Recording Reachability Notifications" value:v112];
  v167[27] = v111;
  v31 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAnnounce];
  v110 = HMFBooleanToString();
  v109 = [v31 initWithName:@"Announce" value:v110];
  v167[28] = v109;
  v32 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
  v108 = HMFBooleanToString();
  v107 = [v32 initWithName:@"Sound Analysis" value:v108];
  v167[29] = v107;
  v33 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsDropIn];
  v106 = HMFBooleanToString();
  v105 = [v33 initWithName:@"Drop In" value:v106];
  v167[30] = v105;
  v34 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
  v104 = HMFBooleanToString();
  v103 = [v34 initWithName:@"ThirdPartyMusic" value:v104];
  v167[31] = v103;
  v35 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
  v102 = HMFBooleanToString();
  v101 = [v35 initWithName:@"PreferredMediaUser" value:v102];
  v167[32] = v101;
  v36 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
  v100 = HMFBooleanToString();
  v99 = [v36 initWithName:@"Thread Border Router" value:v100];
  v167[33] = v99;
  v37 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
  v98 = HMFBooleanToString();
  v97 = [v37 initWithName:@"Siri Endpoint Setup" value:v98];
  v167[34] = v97;
  v38 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsHomeHub];
  v96 = HMFBooleanToString();
  v95 = [v38 initWithName:@"Home Hub" value:v96];
  v167[35] = v95;
  v39 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
  v94 = HMFBooleanToString();
  v93 = [v39 initWithName:@"LPM Wake On LAN" value:v94];
  v167[36] = v93;
  v40 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
  v92 = HMFBooleanToString();
  v91 = [v40 initWithName:@"Lock Notification Context" value:v92];
  v167[37] = v91;
  v41 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
  v90 = HMFBooleanToString();
  v89 = [v41 initWithName:@"Audio Return Channel" value:v90];
  v167[38] = v89;
  v42 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsWalletKey];
  v88 = HMFBooleanToString();
  v87 = [v42 initWithName:@"Wallet Key" value:v88];
  v167[39] = v87;
  v43 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
  v86 = HMFBooleanToString();
  v85 = [v43 initWithName:@"Camera Package Detection" value:v86];
  v167[40] = v85;
  v44 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsAccessCodes];
  v84 = HMFBooleanToString();
  v83 = [v44 initWithName:@"Access Codes" value:v84];
  v167[41] = v83;
  v45 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCHIP];
  v82 = HMFBooleanToString();
  v81 = [v45 initWithName:@"CHIP" value:v82];
  v167[42] = v81;
  v46 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
  v80 = HMFBooleanToString();
  v79 = [v46 initWithName:@"Unified Media Notifications" value:v80];
  v167[43] = v79;
  v47 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
  v78 = HMFBooleanToString();
  v77 = [v47 initWithName:@"Captive Networks" value:v78];
  v167[44] = v77;
  v48 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsModernTransport];
  v76 = HMFBooleanToString();
  v75 = [v48 initWithName:@"Modern Transport" value:v76];
  v167[45] = v75;
  v49 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
  v74 = HMFBooleanToString();
  v73 = [v49 initWithName:@"Resident First Accessory Communication" value:v74];
  v167[46] = v73;
  v50 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination];
  v72 = HMFBooleanToString();
  v71 = [v50 initWithName:@"Custom Destination Media Action" value:v72];
  v167[47] = v71;
  v51 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing];
  v70 = HMFBooleanToString();
  v69 = [v51 initWithName:@"Thread Network Credential Sharing" value:v70];
  v167[48] = v69;
  v52 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing];
  v53 = HMFBooleanToString();
  v54 = [v52 initWithName:@"Matter Shared Admin Pairing" value:v53];
  v167[49] = v54;
  v55 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsRMVonAppleTV];
  v56 = HMFBooleanToString();
  v57 = [v55 initWithName:@"RMV on AppleTV" value:v56];
  v167[50] = v57;
  v58 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsJustSiri];
  v59 = HMFBooleanToString();
  v60 = [v58 initWithName:@"Just Siri" value:v59];
  v167[51] = v60;
  v61 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsThreadService];
  v62 = HMFBooleanToString();
  v63 = [v61 initWithName:@"Thread Service" value:v62];
  v167[52] = v63;
  v64 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
  v65 = HMFBooleanToString();
  v66 = [v64 initWithName:@"Matter Owner Cert Fetch" value:v65];
  v167[53] = v66;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:54];

  return v68;
}

- (id)shortDescription
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(HMDDeviceCapabilities *)self supportsKeychainSync])
  {
    [array addObject:@"KCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDeviceSetup])
  {
    [array addObject:@"DS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferClient])
  {
    [array addObject:@"KTC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsKeyTransferServer])
  {
    [array addObject:@"KTS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsStandaloneMode])
  {
    [array addObject:@"SAM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCloudDataSync])
  {
    [array addObject:@"CS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWholeHouseAudio])
  {
    [array addObject:@"WHA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAssistantAccessControl])
  {
    [array addObject:@"AAC"];
  }

  if ([(HMDDeviceCapabilities *)self isResidentCapable])
  {
    [array addObject:@"RC"];
  }

  if ([(HMDDeviceCapabilities *)self isRemoteGatewayCapable])
  {
    [array addObject:@"RGC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeInvitation])
  {
    [array addObject:@"HI"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTargetControl])
  {
    [array addObject:@"TC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMultiUser])
  {
    [array addObject:@"MU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting])
  {
    [array addObject:@"HLLS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart])
  {
    [array addObject:@"CIR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate])
  {
    [array addObject:@"CIFR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecording])
  {
    [array addObject:@"CR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRouterManagement])
  {
    [array addObject:@"RM"];
  }

  if ([(HMDDeviceCapabilities *)self supportsShortcutActions])
  {
    [array addObject:@"SA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMediaActions])
  {
    [array addObject:@"MAS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMusicAlarm])
  {
    [array addObject:@"MA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFirmwareUpdate])
  {
    [array addObject:@"AFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate])
  {
    [array addObject:@"RAFU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraActivityZones])
  {
    [array addObject:@"CAZ"];
  }

  if ([(HMDDeviceCapabilities *)self supportsFaceClassification])
  {
    [array addObject:@"FC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsNaturalLighting])
  {
    [array addObject:@"NL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence])
  {
    [array addObject:@"IAMP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications])
  {
    [array addObject:@"CRRN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAnnounce])
  {
    [array addObject:@"AN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioAnalysis])
  {
    [array addObject:@"SAN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsDropIn])
  {
    [array addObject:@"DIN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThirdPartyMusic])
  {
    [array addObject:@"BLT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsPreferredMediaUser])
  {
    [array addObject:@"PMU"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadBorderRouter])
  {
    [array addObject:@"TDR"];
  }

  if ([(HMDDeviceCapabilities *)self supportsSiriEndpointSetup])
  {
    [array addObject:@"SES"];
  }

  if ([(HMDDeviceCapabilities *)self supportsHomeHub])
  {
    [array addObject:@"HH"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWakeOnLAN])
  {
    [array addObject:@"WOL"];
  }

  if ([(HMDDeviceCapabilities *)self supportsLockNotificationContext])
  {
    [array addObject:@"LNC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime])
  {
    [array addObject:@"CDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime])
  {
    [array addObject:@"CFDC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification])
  {
    [array addObject:@"TVMUN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAudioReturnChannel])
  {
    [array addObject:@"ARC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsWalletKey])
  {
    [array addObject:@"WK"];
  }

  if ([(HMDDeviceCapabilities *)self supportsAccessCodes])
  {
    [array addObject:@"AC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCameraPackageDetection])
  {
    [array addObject:@"CPD"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCHIP])
  {
    [array addObject:@"CHIP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications])
  {
    [array addObject:@"UMN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile])
  {
    [array addObject:@"MCP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsUserMediaSettings])
  {
    [array addObject:@"UMS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCaptiveNetworks])
  {
    [array addObject:@"CN"];
  }

  if ([(HMDDeviceCapabilities *)self supportsModernTransport])
  {
    [array addObject:@"MT"];
  }

  if ([(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication])
  {
    [array addObject:@"RFAC"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings])
  {
    [array addObject:@"MHPS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination])
  {
    [array addObject:@"CMDA"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing])
  {
    [array addObject:@"TNCS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing])
  {
    [array addObject:@"MSAP"];
  }

  if ([(HMDDeviceCapabilities *)self supportsRMVonAppleTV])
  {
    [array addObject:@"TVRMV"];
  }

  if ([(HMDDeviceCapabilities *)self supportsJustSiri])
  {
    [array addObject:@"HSJS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsThreadService])
  {
    [array addObject:@"THRDS"];
  }

  if ([(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch])
  {
    [array addObject:@"MOCF"];
  }

  v4 = [array componentsJoinedByString:{@", "}];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v65) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6
      && (v7 = [(HMDDeviceCapabilities *)self supportsKeychainSync], v7 == [(HMDDeviceCapabilities *)v6 supportsKeychainSync])
      && (v8 = [(HMDDeviceCapabilities *)self supportsDeviceSetup], v8 == [(HMDDeviceCapabilities *)v6 supportsDeviceSetup])
      && (v9 = [(HMDDeviceCapabilities *)self supportsKeyTransferClient], v9 == [(HMDDeviceCapabilities *)v6 supportsKeyTransferClient])
      && (v10 = [(HMDDeviceCapabilities *)self supportsKeyTransferServer], v10 == [(HMDDeviceCapabilities *)v6 supportsKeyTransferServer])
      && (v11 = [(HMDDeviceCapabilities *)self supportsStandaloneMode], v11 == [(HMDDeviceCapabilities *)v6 supportsStandaloneMode])
      && (v12 = [(HMDDeviceCapabilities *)self supportsCloudDataSync], v12 == [(HMDDeviceCapabilities *)v6 supportsCloudDataSync])
      && (v13 = [(HMDDeviceCapabilities *)self supportsWholeHouseAudio], v13 == [(HMDDeviceCapabilities *)v6 supportsWholeHouseAudio])
      && (v14 = [(HMDDeviceCapabilities *)self supportsAssistantAccessControl], v14 == [(HMDDeviceCapabilities *)v6 supportsAssistantAccessControl])
      && (v15 = [(HMDDeviceCapabilities *)self isResidentCapable], v15 == [(HMDDeviceCapabilities *)v6 isResidentCapable])
      && (v16 = [(HMDDeviceCapabilities *)self isRemoteGatewayCapable], v16 == [(HMDDeviceCapabilities *)v6 isRemoteGatewayCapable])
      && (v17 = [(HMDDeviceCapabilities *)self supportsHomeInvitation], v17 == [(HMDDeviceCapabilities *)v6 supportsHomeInvitation])
      && (v18 = [(HMDDeviceCapabilities *)self supportsTargetControl], v18 == [(HMDDeviceCapabilities *)v6 supportsTargetControl])
      && (v19 = [(HMDDeviceCapabilities *)self supportsMultiUser], v19 == [(HMDDeviceCapabilities *)v6 supportsMultiUser])
      && (v20 = [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting], v20 == [(HMDDeviceCapabilities *)v6 supportsHomeLevelLocationServiceSetting])
      && (v21 = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart], v21 == [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedRestart])
      && (v22 = [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate], v22 == [(HMDDeviceCapabilities *)v6 supportsCompanionInitiatedObliterate])
      && (v23 = [(HMDDeviceCapabilities *)self supportsCameraRecording], v23 == [(HMDDeviceCapabilities *)v6 supportsCameraRecording])
      && (v24 = [(HMDDeviceCapabilities *)self supportsRouterManagement], v24 == [(HMDDeviceCapabilities *)v6 supportsRouterManagement])
      && (v25 = [(HMDDeviceCapabilities *)self supportsShortcutActions], v25 == [(HMDDeviceCapabilities *)v6 supportsShortcutActions])
      && (v26 = [(HMDDeviceCapabilities *)self supportsMediaActions], v26 == [(HMDDeviceCapabilities *)v6 supportsMediaActions])
      && (v27 = [(HMDDeviceCapabilities *)self supportsMusicAlarm], v27 == [(HMDDeviceCapabilities *)v6 supportsMusicAlarm])
      && (v28 = [(HMDDeviceCapabilities *)self supportsFirmwareUpdate], v28 == [(HMDDeviceCapabilities *)v6 supportsFirmwareUpdate])
      && (v29 = [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate], v29 == [(HMDDeviceCapabilities *)v6 supportsResidentFirmwareUpdate])
      && (v30 = [(HMDDeviceCapabilities *)self supportsCameraActivityZones], v30 == [(HMDDeviceCapabilities *)v6 supportsCameraActivityZones])
      && (v31 = [(HMDDeviceCapabilities *)self supportsFaceClassification], v31 == [(HMDDeviceCapabilities *)v6 supportsFaceClassification])
      && (v32 = [(HMDDeviceCapabilities *)self supportsNaturalLighting], v32 == [(HMDDeviceCapabilities *)v6 supportsNaturalLighting])
      && (v33 = [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence], v33 == [(HMDDeviceCapabilities *)v6 supportsIDSActivityMonitorPresence])
      && (v34 = [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications], v34 == [(HMDDeviceCapabilities *)v6 supportsCameraRecordingReachabilityNotifications])
      && (v35 = [(HMDDeviceCapabilities *)self supportsAnnounce], v35 == [(HMDDeviceCapabilities *)v6 supportsAnnounce])
      && (v36 = [(HMDDeviceCapabilities *)self supportsAudioAnalysis], v36 == [(HMDDeviceCapabilities *)v6 supportsAudioAnalysis])
      && (v37 = [(HMDDeviceCapabilities *)self supportsDropIn], v37 == [(HMDDeviceCapabilities *)v6 supportsDropIn])
      && (v38 = [(HMDDeviceCapabilities *)self supportsThirdPartyMusic], v38 == [(HMDDeviceCapabilities *)v6 supportsThirdPartyMusic])
      && (v39 = [(HMDDeviceCapabilities *)self supportsPreferredMediaUser], v39 == [(HMDDeviceCapabilities *)v6 supportsPreferredMediaUser])
      && (v40 = [(HMDDeviceCapabilities *)self supportsThreadBorderRouter], v40 == [(HMDDeviceCapabilities *)v6 supportsThreadBorderRouter])
      && (v41 = [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup], v41 == [(HMDDeviceCapabilities *)v6 supportsSiriEndpointSetup])
      && (v42 = [(HMDDeviceCapabilities *)self supportsHomeHub], v42 == [(HMDDeviceCapabilities *)v6 supportsHomeHub])
      && (v43 = [(HMDDeviceCapabilities *)self supportsWakeOnLAN], v43 == [(HMDDeviceCapabilities *)v6 supportsWakeOnLAN])
      && (v44 = [(HMDDeviceCapabilities *)self supportsLockNotificationContext], v44 == [(HMDDeviceCapabilities *)v6 supportsLockNotificationContext])
      && (v45 = [(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime], v45 == [(HMDDeviceCapabilities *)v6 supportsCoordinationDoorbellChime])
      && (v46 = [(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime], v46 == [(HMDDeviceCapabilities *)v6 supportsCoordinationFreeDoorbellChime])
      && (v47 = [(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification], v47 == [(HMDDeviceCapabilities *)v6 supportsTVOSUpdateManualUpdateAvailableNotification])
      && (v48 = [(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile], v48 == [(HMDDeviceCapabilities *)v6 supportsManagedConfigurationProfile])
      && (v49 = [(HMDDeviceCapabilities *)self supportsAudioReturnChannel], v49 == [(HMDDeviceCapabilities *)v6 supportsAudioReturnChannel])
      && (v50 = [(HMDDeviceCapabilities *)self supportsWalletKey], v50 == [(HMDDeviceCapabilities *)v6 supportsWalletKey])
      && (v51 = [(HMDDeviceCapabilities *)self supportsCameraPackageDetection], v51 == [(HMDDeviceCapabilities *)v6 supportsCameraPackageDetection])
      && (v52 = [(HMDDeviceCapabilities *)self supportsAccessCodes], v52 == [(HMDDeviceCapabilities *)v6 supportsAccessCodes])
      && (v53 = [(HMDDeviceCapabilities *)self supportsCHIP], v53 == [(HMDDeviceCapabilities *)v6 supportsCHIP])
      && (v54 = [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications], v54 == [(HMDDeviceCapabilities *)v6 supportsUnifiedMediaNotifications])
      && (v55 = [(HMDDeviceCapabilities *)self supportsCaptiveNetworks], v55 == [(HMDDeviceCapabilities *)v6 supportsCaptiveNetworks])
      && (v56 = [(HMDDeviceCapabilities *)self supportsModernTransport], v56 == [(HMDDeviceCapabilities *)v6 supportsModernTransport])
      && (v57 = [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication], v57 == [(HMDDeviceCapabilities *)v6 supportsResidentFirstAccessoryCommunication])
      && (v58 = [(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings], v58 == [(HMDDeviceCapabilities *)v6 supportsMessagedHomePodSettings])
      && (v59 = [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination], v59 == [(HMDDeviceCapabilities *)v6 supportsCustomMediaApplicationDestination])
      && (v60 = [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing], v60 == [(HMDDeviceCapabilities *)v6 supportsThreadNetworkCredentialSharing])
      && (v61 = [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing], v61 == [(HMDDeviceCapabilities *)v6 supportsMatterSharedAdminPairing])
      && (v62 = [(HMDDeviceCapabilities *)self supportsRMVonAppleTV], v62 == [(HMDDeviceCapabilities *)v6 supportsRMVonAppleTV])
      && (v63 = [(HMDDeviceCapabilities *)self supportsJustSiri], v63 == [(HMDDeviceCapabilities *)v6 supportsJustSiri])
      && (v64 = [(HMDDeviceCapabilities *)self supportsThreadService], v64 == [(HMDDeviceCapabilities *)v6 supportsThreadService]))
    {
      supportsMatterOwnerCertFetch = [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
      v65 = supportsMatterOwnerCertFetch ^ [(HMDDeviceCapabilities *)v6 supportsMatterOwnerCertFetch]^ 1;
    }

    else
    {
      LOBYTE(v65) = 0;
    }
  }

  return v65;
}

- (unint64_t)hash
{
  [(HMDDeviceCapabilities *)self supportsKeychainSync];
  [(HMDDeviceCapabilities *)self supportsDeviceSetup];
  [(HMDDeviceCapabilities *)self supportsKeyTransferClient];
  [(HMDDeviceCapabilities *)self supportsKeyTransferServer];
  [(HMDDeviceCapabilities *)self supportsStandaloneMode];
  [(HMDDeviceCapabilities *)self supportsCloudDataSync];
  [(HMDDeviceCapabilities *)self supportsWholeHouseAudio];
  [(HMDDeviceCapabilities *)self supportsAssistantAccessControl];
  [(HMDDeviceCapabilities *)self isResidentCapable];
  [(HMDDeviceCapabilities *)self isRemoteGatewayCapable];
  [(HMDDeviceCapabilities *)self supportsHomeInvitation];
  [(HMDDeviceCapabilities *)self supportsTargetControl];
  [(HMDDeviceCapabilities *)self supportsMultiUser];
  [(HMDDeviceCapabilities *)self supportsHomeLevelLocationServiceSetting];
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedRestart];
  [(HMDDeviceCapabilities *)self supportsCompanionInitiatedObliterate];
  [(HMDDeviceCapabilities *)self supportsCameraRecording];
  [(HMDDeviceCapabilities *)self supportsRouterManagement];
  [(HMDDeviceCapabilities *)self supportsShortcutActions];
  [(HMDDeviceCapabilities *)self supportsMediaActions];
  [(HMDDeviceCapabilities *)self supportsFirmwareUpdate];
  [(HMDDeviceCapabilities *)self supportsResidentFirmwareUpdate];
  [(HMDDeviceCapabilities *)self supportsCameraActivityZones];
  [(HMDDeviceCapabilities *)self supportsMusicAlarm];
  [(HMDDeviceCapabilities *)self supportsFaceClassification];
  [(HMDDeviceCapabilities *)self supportsNaturalLighting];
  [(HMDDeviceCapabilities *)self supportsIDSActivityMonitorPresence];
  [(HMDDeviceCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  [(HMDDeviceCapabilities *)self supportsAnnounce];
  [(HMDDeviceCapabilities *)self supportsAudioAnalysis];
  [(HMDDeviceCapabilities *)self supportsDropIn];
  [(HMDDeviceCapabilities *)self supportsDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsThirdPartyMusic];
  [(HMDDeviceCapabilities *)self supportsThreadBorderRouter];
  [(HMDDeviceCapabilities *)self supportsPreferredMediaUser];
  [(HMDDeviceCapabilities *)self supportsSiriEndpointSetup];
  [(HMDDeviceCapabilities *)self supportsHomeHub];
  [(HMDDeviceCapabilities *)self supportsWakeOnLAN];
  [(HMDDeviceCapabilities *)self supportsLockNotificationContext];
  [(HMDDeviceCapabilities *)self supportsCoordinationDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsCoordinationFreeDoorbellChime];
  [(HMDDeviceCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification];
  [(HMDDeviceCapabilities *)self supportsAudioReturnChannel];
  [(HMDDeviceCapabilities *)self supportsWalletKey];
  [(HMDDeviceCapabilities *)self supportsCameraPackageDetection];
  [(HMDDeviceCapabilities *)self supportsAccessCodes];
  [(HMDDeviceCapabilities *)self supportsCHIP];
  [(HMDDeviceCapabilities *)self supportsUnifiedMediaNotifications];
  [(HMDDeviceCapabilities *)self supportsManagedConfigurationProfile];
  [(HMDDeviceCapabilities *)self supportsUserMediaSettings];
  [(HMDDeviceCapabilities *)self supportsCaptiveNetworks];
  [(HMDDeviceCapabilities *)self supportsModernTransport];
  [(HMDDeviceCapabilities *)self supportsResidentFirstAccessoryCommunication];
  [(HMDDeviceCapabilities *)self supportsMessagedHomePodSettings];
  [(HMDDeviceCapabilities *)self supportsCustomMediaApplicationDestination];
  [(HMDDeviceCapabilities *)self supportsThreadNetworkCredentialSharing];
  [(HMDDeviceCapabilities *)self supportsMatterSharedAdminPairing];
  [(HMDDeviceCapabilities *)self supportsRMVonAppleTV];
  [(HMDDeviceCapabilities *)self supportsJustSiri];
  [(HMDDeviceCapabilities *)self supportsThreadService];
  [(HMDDeviceCapabilities *)self supportsMatterOwnerCertFetch];
  [(HMDDeviceCapabilities *)self supportsWiFiRepairV2];
  [(HMDDeviceCapabilities *)self supportsStereoOdeonTTSUBypassingPrimary];
  [(HMDDeviceCapabilities *)self supportsNetworkDiagnostics];

  return [(HMDDeviceCapabilities *)self supportsCrossfadeAsAirPlaySource];
}

- (HMDDeviceCapabilities)initWithObjectModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if (modelCopy)
  {
    v13.receiver = self;
    v13.super_class = HMDDeviceCapabilities;
    v6 = [(HMDDeviceCapabilities *)&v13 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_objectModel, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Model object is a required argument", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client homekitVersion:(id)version featuresDataSource:(id)source
{
  v98 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  clientCopy = client;
  versionCopy = version;
  sourceCopy = source;
  v14 = sourceCopy;
  if (infoCopy)
  {
    v95 = sourceCopy;
    v15 = [HMDDeviceCapabilitiesModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v17 = [(HMDBackingStoreModelObject *)v15 initWithUUID:uUID];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeychainSync:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsDeviceSetup(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDeviceSetup:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsKeyTransferClient(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferClient:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeyTransferServer(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsKeyTransferServer:v21];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsKeychainSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsStandaloneMode:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCloudDataSync(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCloudDataSync:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWholeHouseAudio(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWholeHouseAudio:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAssistantAccessControl(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAssistantAccessControl:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:productIsResidentCapable(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setResidentCapable:v26];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "productClass") == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setRemoteGatewayCapable:v27];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeInvitation(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeInvitation:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsTargetControl(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTargetControl:v29];

    v30 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMultiUser(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMultiUser:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsHomeLevelLocationServiceSetting(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeLevelLocationServiceSetting:v31];

    v32 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedRestart(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedRestart:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCompanionInitiatedObliterate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCompanionInitiatedObliterate:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraRecording(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecording:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRouterManagement(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRouterManagement:v35];

    v36 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsShortcutActions(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsShortcutActions:v36];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMediaActions(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMediaActions:v37];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsFirmwareUpdate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFirmwareUpdate:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirmwareUpdate(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirmwareUpdate:v39];

    v40 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraActivityZones:v40];

    v41 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsMusicAlarm(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMusicAlarm:v41];

    v42 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsFaceClassification:v42];

    v43 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsNaturalLighting:v43];

    v44 = MEMORY[0x277CCABB0];
    productPlatform = [infoCopy productPlatform];
    v46 = [v44 numberWithBool:(productPlatform > 5) | (0x10u >> productPlatform) & 1];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsIDSActivityMonitorPresence:v46];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCameraActivityZones(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraRecordingReachabilityNotifications:v47];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsAnnounce(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAnnounce:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioAnalysis(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioAnalysis:v49];

    v50 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsDropIn(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDropIn:v50];

    v51 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThirdPartyMusic:v51];

    v52 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsPreferredMediaUser(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsPreferredMediaUser:v52];

    v53 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadBorderRouter:v53];

    v54 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsThirdPartyMusic(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsDoorbellChime:v54];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUserMediaSettings:v55];

    v56 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationDoorbellChime(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationDoorbellChime:v56];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCoordinationFreeDoorbellChime(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCoordinationFreeDoorbellChime:v57];

    v58 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(infoCopy, "productClass") & 0xFFFFFFFFFFFFFFFDLL) == 4}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsTVOSUpdateManualUpdateAvailableNotification:v58];

    v59 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsSiriEndpointSetup(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsSiriEndpointSetup:v59];

    v60 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsHomeHub(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsHomeHub:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsWakeOnLAN(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWakeOnLAN:v61];

    v62 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsLockNotificationContext:v62];

    v63 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsAudioReturnChannel(infoCopy, clientCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAudioReturnChannel:v63];

    v64 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsWalletKey:v64];

    v65 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCameraPackageDetection:v65];

    v66 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsAccessCodes:v66];

    v67 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsLockNotificationContext(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCHIP:v67];

    v68 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUnifiedMediaNotifications(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsUnifiedMediaNotifications:v68];

    v69 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsUserMediaSettings(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsManagedConfigurationProfile:v69];

    v70 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCaptiveNetworks(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCaptiveNetworks:v70];

    [(HMDDeviceCapabilitiesModel *)v17 setSupportsModernTransport:MEMORY[0x277CBEC28]];
    v71 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsResidentFirstAccessoryCommunication(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsResidentFirstAccessoryCommunication:v71];

    v72 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMessagedHomePodSettings(infoCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMessagedHomePodSettings:v72];

    v73 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsCustomMediaApplicationDestination(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsCustomMediaApplicationDestination:v73];

    v74 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsThreadNetworkCredentialSharing(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadNetworkCredentialSharing:v74];

    v75 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterSharedAdminPairing(infoCopy, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterSharedAdminPairing:v75];

    v76 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsRMVonAppleTV(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsRMVonAppleTV:v76];

    v77 = [MEMORY[0x277CCABB0] numberWithBool:productSupportsJustSiri(infoCopy)];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsJustSiri:v77];

    v78 = MEMORY[0x277CCABB0];
    v97 = 0;
    memset(buf, 0, sizeof(buf));
    v79 = infoCopy;
    softwareVersion = [v79 softwareVersion];
    v81 = softwareVersion;
    if (softwareVersion)
    {
      objc_msgSend_operatingSystemVersion(softwareVersion);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v97 = 0;
    }

    productPlatform2 = [v79 productPlatform];
    productClass = [v79 productClass];

    if (productPlatform2 == 1 && HMFOperatingSystemVersionCompare() != 1 && (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) != 0)
    {
      goto LABEL_16;
    }

    v88 = 0;
    if (productClass > 0xA || ((1 << productClass) & 0x78A) == 0)
    {
      goto LABEL_18;
    }

    if (productPlatform2 == 2 && HMFOperatingSystemVersionCompare() != 1 && isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
    {
LABEL_16:
      v88 = MGGetBoolAnswer();
    }

    else
    {
      v88 = 0;
    }

LABEL_18:
    v89 = [v78 numberWithBool:v88];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsThreadService:v89];

    v90 = [MEMORY[0x277CCABB0] numberWithBool:{productSupportsMatterOwnerCertFetch(v79, clientCopy, versionCopy)}];
    [(HMDDeviceCapabilitiesModel *)v17 setSupportsMatterOwnerCertFetch:v90];

    v91 = MEMORY[0x277CCABB0];
    productClass2 = [v79 productClass];
    v93 = [v91 numberWithBool:(productClass2 < 0xC) & (0x40u >> productClass2)];
    [(HMDDeviceCapabilitiesModel *)v17 setClearsKeychainWhenRemovedFromHome:v93];

    self = [(HMDDeviceCapabilities *)self initWithObjectModel:v17];
    selfCopy = self;
    v14 = v95;
    goto LABEL_19;
  }

  v82 = objc_autoreleasePoolPush();
  v83 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
  {
    v84 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v84;
    _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_ERROR, "%{public}@Product info is a required argument", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v82);
  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info mobileGestaltClient:(id)client featuresDataSource:(id)source
{
  clientCopy = client;
  infoCopy = info;
  v9 = +[HMDFeaturesDataSource defaultDataSource];
  v10 = [(HMDDeviceCapabilities *)self initWithProductInfo:infoCopy mobileGestaltClient:clientCopy homekitVersion:0 featuresDataSource:v9];

  return v10;
}

- (HMDDeviceCapabilities)initWithProductInfo:(id)info
{
  infoCopy = info;
  v5 = +[HMDFeaturesDataSource defaultDataSource];
  v6 = [(HMDDeviceCapabilities *)self initWithProductInfo:infoCopy mobileGestaltClient:0 homekitVersion:0 featuresDataSource:v5];

  return v6;
}

+ (id)deviceCapabilitiesModelIdentifierWithParentIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = __identifierForParentUUID(identifier);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)supportedPairingCapabilities
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if ((productClass - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

+ (BOOL)supportsAudioDestinationCreation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass != 6)
  {
    return 0;
  }

  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return +[HMDDeviceCapabilities isInternalVirtualDevice];
}

+ (BOOL)supportsAudioDestinationControllerCreation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass != 4)
  {
    return 0;
  }

  if (MGGetBoolAnswer())
  {
    return 1;
  }

  return +[HMDDeviceCapabilities isInternalVirtualDevice];
}

+ (BOOL)isInternalVirtualDevice
{
  if (isInternalVirtualDevice_onceToken != -1)
  {
    dispatch_once(&isInternalVirtualDevice_onceToken, &__block_literal_global_397);
  }

  if (isInternalVirtualDevice_result != 1)
  {
    return 0;
  }

  return isInternalBuild();
}

uint64_t __48__HMDDeviceCapabilities_isInternalVirtualDevice__block_invoke(uint64_t a1, uint64_t a2)
{
  result = MGGetBoolAnswer();
  isInternalVirtualDevice_result = result;
  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_227873 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_227873, &__block_literal_global_217_227874);
  }

  v3 = logCategory__hmf_once_v5_227875;

  return v3;
}

void __36__HMDDeviceCapabilities_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_227875;
  logCategory__hmf_once_v5_227875 = v0;
}

void __43__HMDDeviceCapabilities_deviceCapabilities__block_invoke()
{
  v0 = [HMDDeviceCapabilities alloc];
  v6 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = objc_alloc_init(HMDMobileGestaltClient);
  v2 = +[HMDHomeKitVersion currentVersion];
  v3 = +[HMDFeaturesDataSource defaultDataSource];
  v4 = [(HMDDeviceCapabilities *)v0 initWithProductInfo:v6 mobileGestaltClient:v1 homekitVersion:v2 featuresDataSource:v3];
  v5 = deviceCapabilities_deviceCapabilities;
  deviceCapabilities_deviceCapabilities = v4;
}

+ (BOOL)supportsSiriUnsecuringActionsWithWatchAuth
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] == 1;

  return v3;
}

+ (BOOL)supportsBulletinBoard
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform)
  {
    v4 = productPlatform == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)supportsHomeKitDataStream
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform)
  {
    v4 = productPlatform == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

+ (BOOL)isCompanionCapable
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] == 1;

  return v3;
}

+ (BOOL)supportsBackboard
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass < 0xC) & (0x83Eu >> productClass);
}

+ (BOOL)supportsSyncingToSharedUsers
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass > 0xB) | (0xFDFu >> productClass) & 1;
}

+ (BOOL)supportsAddingAccessory
{
  systemInfo = [MEMORY[0x277D0F910] systemInfo];
  if ([systemInfo productPlatform] == 1)
  {
    systemInfo2 = [MEMORY[0x277D0F910] systemInfo];
    v4 = [systemInfo2 productVariant] == 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)supportsBidirectionalAudioForCameraStreaming
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform > 5) | (0x2Fu >> productPlatform) & 1;
}

+ (BOOL)supportsReceivingRemoteCameraStream
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsDismissUserNotificationAndDialog
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsUserNotifications
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x26u >> productPlatform);
}

+ (BOOL)supportsCameraSnapshotRequestViaRelay
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)supportsTargetControllerAutoConfigure
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo productClass] == 1)
  {
    goto LABEL_4;
  }

  productInfo2 = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo2 productClass] == 3)
  {

LABEL_4:
    IsResidentCapable = 1;
    goto LABEL_5;
  }

  productInfo3 = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo3 productClass];

  if (productClass == 2)
  {
    return 1;
  }

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  IsResidentCapable = productIsResidentCapable(productInfo);
LABEL_5:

  return IsResidentCapable;
}

+ (BOOL)supportsRemoteAccess
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Eu >> productPlatform);
}

+ (BOOL)isAppleMediaAccessory
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  return (productClass & 0xFFFFFFFFFFFFFFFDLL) == 4;
}

+ (BOOL)supportsCustomerReset
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform - 1) < 2;
}

+ (BOOL)supportsSymptomsHandler
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x24u >> productPlatform);
}

+ (BOOL)supportsIntentDonation
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Cu >> productPlatform);
}

+ (BOOL)supportsHomeApp
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productPlatform = [productInfo productPlatform];

  return (productPlatform < 6) & (0x2Cu >> productPlatform);
}

+ (BOOL)supportsLocalization
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] != 6;

  return v3;
}

@end