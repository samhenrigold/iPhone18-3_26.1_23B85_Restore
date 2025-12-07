@interface HMDHomeModel
+ (id)cd_getHomeFromUUID:(id)d;
+ (id)properties;
- (HMDHomeNFCReaderKey)nfcReaderKey;
- (HMDNaturalLightingContext)naturalLightingContext;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (void)setNaturalLightingContext:(id)context;
- (void)setNfcReaderKey:(id)key;
@end

@implementation HMDHomeModel

+ (id)properties
{
  if (properties_onceToken_123915 != -1)
  {
    dispatch_once(&properties_onceToken_123915, &__block_literal_global_123916);
  }

  v3 = properties__properties_123917;

  return v3;
}

void __26__HMDHomeModel_properties__block_invoke()
{
  v57[54] = *MEMORY[0x277D85DE8];
  v56[0] = @"name";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[0] = v55;
  v56[1] = @"ownerName";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[1] = v54;
  v56[2] = @"ownerUserID";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[2] = v53;
  v56[3] = @"ownerUUID";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[3] = v52;
  v56[4] = @"creationDate";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[4] = v51;
  v56[5] = @"firstHAPAccessoryAddedDate";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[5] = v50;
  v56[6] = @"defaultRoomUUID";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[6] = v49;
  v56[7] = @"presenceAuthorizationStatus";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[7] = v48;
  v56[8] = @"presenceComputeStatus";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[8] = v47;
  v56[9] = @"ownerPublicKey";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[9] = v46;
  v56[10] = @"homeLocationData";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[10] = v45;
  v56[11] = @"primaryResidentUUID";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[11] = v44;
  v56[12] = @"sharedHomeSourceVersion";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[12] = v43;
  v56[13] = @"networkProtectionMode";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[13] = v42;
  v56[14] = @"supportsNetworkProtection";
  v41 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v57[14] = v41;
  v56[15] = @"activeNetworkRouterAccessoryUUID";
  v40 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v57[15] = v40;
  v56[16] = @"primaryNetworkRouterManagingDeviceUUID";
  v39 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v57[16] = v39;
  v56[17] = @"multiUserEnabled";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[17] = v38;
  v56[18] = @"matCredGRK";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[18] = v37;
  v56[19] = @"hasAnyUserAcknowledgedCameraRecordingOnboarding";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[19] = v36;
  v56[20] = @"hasOnboardedForAccessCode";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[20] = v35;
  v56[21] = @"hasOnboardedForWalletKey";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[21] = v34;
  v56[22] = @"encodedNfcReaderKey";
  v33 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v57[22] = v33;
  v56[23] = @"encodedNaturalLightingContext";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[23] = v32;
  v56[24] = @"chipFabricID";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[24] = v31;
  v56[25] = @"chipFabricIndex";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[25] = v30;
  v56[26] = @"chipLastNodeID";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[26] = v29;
  v56[27] = @"chipRootCertificate";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[27] = v28;
  v56[28] = @"chipOperationalCertificate";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[28] = v27;
  v56[29] = @"chipIntermediateCertificate";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[29] = v26;
  v56[30] = @"chipKeyValueStore";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[30] = v25;
  v56[31] = @"matterControllerNodeID";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[31] = v24;
  v56[32] = @"matterFabricID";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[32] = v23;
  v56[33] = @"threadOperationalDataset";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[33] = v22;
  v56[34] = @"soundCheckEnabled";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[34] = v21;
  v56[35] = @"analysisOptions";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[35] = v20;
  v56[36] = @"didOnboardAnalysis";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[36] = v19;
  v56[37] = @"siriPhraseOptions";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[37] = v18;
  v56[38] = @"locationServicesEnabled";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[38] = v17;
  v56[39] = @"didOnboardLocationServices";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[39] = v16;
  v56[40] = @"residentSyncClientDidSync";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[40] = v15;
  v56[41] = @"owned";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[41] = v14;
  v56[42] = @"hh2EncodedNfcReaderKey";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[42] = v13;
  v56[43] = @"primaryIPv4NetworkSignature";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[43] = v12;
  v56[44] = @"primaryIPv6NetworkSignature";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[44] = v11;
  v56[45] = @"primaryWiFiSSID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[45] = v0;
  v56[46] = @"primaryWiFiRequiresPassword";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[46] = v1;
  v56[47] = @"residentSelectionVersion";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[47] = v2;
  v56[48] = @"didOnboardEventLog";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[48] = v3;
  v56[49] = @"eventLogHomeSettingEnabled";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[49] = v4;
  v56[50] = @"eventLogDuration";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[50] = v5;
  v56[51] = @"timeZone";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[51] = v6;
  v56[52] = @"numberOfCameras";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[52] = v7;
  v56[53] = @"isAllowedToEnableAdaptiveTemperatureAutomations";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v57[53] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:54];
  v10 = properties__properties_123917;
  properties__properties_123917 = v9;
}

- (HMDHomeNFCReaderKey)nfcReaderKey
{
  v18 = *MEMORY[0x277D85DE8];
  hh2EncodedNfcReaderKey = [(HMDHomeModel *)self hh2EncodedNfcReaderKey];
  if (hh2EncodedNfcReaderKey)
  {
    v11 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:hh2EncodedNfcReaderKey error:&v11];
    v4 = v11;
    v5 = v4;
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v13 = v9;
        v14 = 2112;
        v15 = hh2EncodedNfcReaderKey;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode nfc reader key set on model %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNfcReaderKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v11 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:keyCopy requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    [(HMDHomeModel *)self setHh2EncodedNfcReaderKey:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = keyCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded nfc reader key on model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (HMDNaturalLightingContext)naturalLightingContext
{
  v16 = *MEMORY[0x277D85DE8];
  encodedNaturalLightingContext = [(HMDHomeModel *)self encodedNaturalLightingContext];
  if (encodedNaturalLightingContext)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:encodedNaturalLightingContext error:&v9];
    v4 = v9;
    if (!v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543874;
        v11 = v7;
        v12 = 2112;
        v13 = encodedNaturalLightingContext;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode natural lighting context set on home model %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNaturalLightingContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v10 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v10];
  v6 = v10;
  if (v5)
  {
    [(HMDHomeModel *)self setEncodedNaturalLightingContext:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v12 = v9;
      v13 = 2112;
      v14 = contextCopy;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded natural lighting context on the home model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v62 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"owner"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"ownerUUID"])
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      ownerUUID = [(HMDHomeModel *)self ownerUUID];
      dictionary = [v11 initWithUUIDString:ownerUUID];

      if (dictionary)
      {
        v55 = 0;
        defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dictionary ofModelType:objc_opt_class() error:&v55];
        v15 = v55;
        managedObject = v15;
        if (defaultRoom && !v15)
        {
          goto LABEL_23;
        }

        v17 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v19 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

          objc_autoreleasePoolPop(v17);
LABEL_23:

LABEL_28:
          goto LABEL_46;
        }

        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v57 = v20;
        v58 = 2112;
        v59 = dictionary;
        v60 = 2112;
        v61 = managedObject;
        v21 = "%{public}@Unable to find NSManagedObject for home owner with UUID %@: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v21, buf, 0x20u);

        goto LABEL_17;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"primaryResident"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"primaryResidentUUID"])
    {
      primaryResidentUUID = [(HMDHomeModel *)self primaryResidentUUID];

      if (primaryResidentUUID)
      {
        v23 = objc_alloc(MEMORY[0x277CCAD78]);
        primaryResidentUUID2 = [(HMDHomeModel *)self primaryResidentUUID];
        dictionary = [v23 initWithUUIDString:primaryResidentUUID2];

        if (dictionary)
        {
          v54 = 0;
          defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dictionary ofModelType:objc_opt_class() error:&v54];
          v25 = v54;
          managedObject = v25;
          if (defaultRoom && !v25)
          {
            goto LABEL_23;
          }

          v17 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v57 = v20;
          v58 = 2112;
          v59 = dictionary;
          v60 = 2112;
          v61 = managedObject;
          v21 = "%{public}@Unable to find NSManagedObject for resident device with UUID %@: %@";
          goto LABEL_16;
        }

LABEL_27:
        defaultRoom = 0;
        goto LABEL_28;
      }

      null = [MEMORY[0x277CBEB68] null];
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"defaultRoom"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"defaultRoomUUID"])
    {
      dictionary = contextCopy;
      if (self)
      {
        managedObject = [(HMDBackingStoreModelObject *)self managedObject];
        defaultRoom = [managedObject defaultRoom];
        if (!defaultRoom)
        {
          v26 = objc_alloc(MEMORY[0x277CCAD78]);
          defaultRoomUUID = [(HMDHomeModel *)self defaultRoomUUID];
          v28 = [v26 initWithUUIDString:defaultRoomUUID];

          defaultRoom = [[_MKFRoom alloc] initWithContext:dictionary];
          [(_MKFRoom *)defaultRoom setModelID:v28];
          [(_MKFRoom *)defaultRoom setHome:managedObject];
          [managedObject addRooms_Object:defaultRoom];
          [managedObject setDefaultRoom:defaultRoom];
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if ([fieldCopy isEqualToString:@"naturalLightingContext"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"encodedNaturalLightingContext"])
    {
      goto LABEL_45;
    }

    naturalLightingContext = [(HMDHomeModel *)self naturalLightingContext];
    goto LABEL_32;
  }

  if (![fieldCopy isEqualToString:@"nfcReaderKey"])
  {
    if (([fieldCopy isEqualToString:@"location"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"locationUpdateTimeStamp") & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", @"locationSource"))
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"homeLocationData"])
      {
        goto LABEL_45;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = objc_alloc(MEMORY[0x277CCAAC8]);
      homeLocationData = [(HMDHomeModel *)self homeLocationData];
      v53 = 0;
      v36 = [v34 initForReadingFromData:homeLocationData error:&v53];
      v37 = v53;

      if (v37)
      {
        v38 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v41;
          v58 = 2112;
          v59 = v37;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to initialize unarchiver for HomeLocationData: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        objc_autoreleasePoolPop(v33);
        goto LABEL_45;
      }

      v43 = [v36 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      if (!v43)
      {
        v45 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543362;
          v57 = v48;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive HomeLocationData", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v45);
        defaultRoom = 0;
        goto LABEL_60;
      }

      if ([fieldCopy isEqualToString:@"location"])
      {
        location = [v43 location];
LABEL_59:
        defaultRoom = location;
LABEL_60:

        objc_autoreleasePoolPop(v33);
        goto LABEL_46;
      }

      if ([fieldCopy isEqualToString:@"locationUpdateTimeStamp"])
      {
        location = [v43 locationUpdateTimestamp];
        goto LABEL_59;
      }

      if ([fieldCopy isEqualToString:@"locationSource"])
      {
        location = [v43 locationSource];
        goto LABEL_59;
      }

      objc_autoreleasePoolPop(v33);
    }

    if ([fieldCopy isEqualToString:@"matterKeyValueStore"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricID"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipFabricIndex"]|| [(HMDBackingStoreModelObject *)self propertyWasSet:@"chipKeyValueStore"])
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        chipFabricID = [(HMDHomeModel *)self chipFabricID];
        [dictionary setObject:chipFabricID forKeyedSubscript:@"HMDHMMKVS.fabricID"];

        chipFabricIndex = [(HMDHomeModel *)self chipFabricIndex];
        [dictionary setObject:chipFabricIndex forKeyedSubscript:@"HMDHMMKVS.fabricIndex"];

        chipKeyValueStore = [(HMDHomeModel *)self chipKeyValueStore];
        [dictionary addEntriesFromDictionary:chipKeyValueStore];

        defaultRoom = objc_msgSend_copy(dictionary);
        goto LABEL_28;
      }

      goto LABEL_45;
    }

    if ([fieldCopy isEqualToString:@"didOnboardMemory"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"didOnboardEventLog"])
      {
        goto LABEL_45;
      }

      naturalLightingContext = [(HMDHomeModel *)self didOnboardEventLog];
    }

    else if ([fieldCopy isEqualToString:@"memoryEnabled"])
    {
      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogHomeSettingEnabled"])
      {
        goto LABEL_45;
      }

      naturalLightingContext = [(HMDHomeModel *)self eventLogHomeSettingEnabled];
    }

    else
    {
      if (![fieldCopy isEqualToString:@"memoryDuration"])
      {
        v52.receiver = self;
        v52.super_class = HMDHomeModel;
        null = [(HMDBackingStoreModelObject *)&v52 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_36:
        defaultRoom = null;
        goto LABEL_46;
      }

      if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"eventLogDuration"])
      {
LABEL_45:
        defaultRoom = 0;
        goto LABEL_46;
      }

      naturalLightingContext = [(HMDHomeModel *)self eventLogDuration];
    }

    goto LABEL_32;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"hh2EncodedNfcReaderKey"])
  {
    goto LABEL_45;
  }

  naturalLightingContext = [(HMDHomeModel *)self nfcReaderKey];
LABEL_32:
  v30 = naturalLightingContext;
  v31 = *MEMORY[0x277CBEEE8];
  if (naturalLightingContext)
  {
    v31 = naturalLightingContext;
  }

  defaultRoom = v31;

LABEL_46:

  return defaultRoom;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  v55 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"residentSyncClientDidSync"])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objectCopy, "residentSyncClientDidSync")}];
LABEL_3:
    v12 = v11;
    goto LABEL_22;
  }

  if ([fieldCopy isEqualToString:@"ownerName"])
  {
    owner = [objectCopy owner];
    pairingIdentity = [owner pairingIdentity];
    identifier = [pairingIdentity identifier];
LABEL_16:
    publicKey = identifier;
    v20 = *MEMORY[0x277CBEEE8];
    if (identifier)
    {
      v20 = identifier;
    }

    v12 = v20;
LABEL_19:

LABEL_20:
LABEL_21:

    goto LABEL_22;
  }

  if ([fieldCopy isEqualToString:@"ownerUserID"])
  {
    owner = [objectCopy owner];
    userID = [owner userID];
LABEL_8:
    pairingIdentity = userID;
    v17 = *MEMORY[0x277CBEEE8];
    if (userID)
    {
      v17 = userID;
    }

    v12 = v17;
    goto LABEL_20;
  }

  if ([fieldCopy isEqualToString:@"ownerUUID"])
  {
    owner2 = [objectCopy owner];
LABEL_15:
    owner = owner2;
    pairingIdentity = [owner2 modelID];
    identifier = [pairingIdentity UUIDString];
    goto LABEL_16;
  }

  if ([fieldCopy isEqualToString:@"primaryResidentUUID"])
  {
    owner2 = [objectCopy primaryResident];
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"encodedNaturalLightingContext"])
  {
    owner = [objectCopy naturalLightingContext];
    if (owner)
    {
      v50 = 0;
      v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:owner requiringSecureCoding:1 error:&v50];
      v23 = v50;
      if (!v22)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v27;
          v53 = 2112;
          v54 = v23;
          v28 = "%{public}@Failed to encode natural lighting context while MFK -> HMD conversion: %@";
LABEL_35:
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_37;
    }

LABEL_40:
    null = [MEMORY[0x277CBEB68] null];
LABEL_41:
    v12 = null;
    goto LABEL_21;
  }

  if ([fieldCopy isEqualToString:@"hh2EncodedNfcReaderKey"])
  {
    owner = [objectCopy nfcReaderKey];
    if (owner)
    {
      v49 = 0;
      v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:owner requiringSecureCoding:1 error:&v49];
      v23 = v49;
      if (!v22)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v27;
          v53 = 2112;
          v54 = v23;
          v28 = "%{public}@Failed to encode nfc reader key while MFK -> HMD conversion: %@";
          goto LABEL_35;
        }

LABEL_36:

        objc_autoreleasePoolPop(v24);
      }

LABEL_37:
      v29 = *MEMORY[0x277CBEEE8];
      if (v22)
      {
        v29 = v22;
      }

      v12 = v29;

      goto LABEL_21;
    }

    goto LABEL_40;
  }

  if ([fieldCopy isEqualToString:@"defaultRoomUUID"])
  {
    owner2 = [objectCopy defaultRoom];
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"ownerPublicKey"])
  {
    owner = [objectCopy owner];
    pairingIdentity = [owner pairingIdentity];
    publicKey = [pairingIdentity publicKey];
    data = [publicKey data];
    v32 = data;
    v33 = *MEMORY[0x277CBEEE8];
    if (data)
    {
      v33 = data;
    }

    v12 = v33;

    goto LABEL_19;
  }

  if (![fieldCopy isEqualToString:@"homeLocationData"])
  {
    if ([fieldCopy isEqualToString:@"chipFabricID"])
    {
      matterKeyValueStore = [objectCopy matterKeyValueStore];
      owner = matterKeyValueStore;
      v45 = @"HMDHMMKVS.fabricID";
    }

    else
    {
      if (![fieldCopy isEqualToString:@"chipFabricIndex"])
      {
        if ([fieldCopy isEqualToString:@"chipKeyValueStore"])
        {
          matterKeyValueStore2 = [objectCopy matterKeyValueStore];
        }

        else if ([fieldCopy isEqualToString:@"didOnboardEventLog"])
        {
          matterKeyValueStore2 = [objectCopy didOnboardEventLog];
        }

        else if ([fieldCopy isEqualToString:@"eventLogHomeSettingEnabled"])
        {
          matterKeyValueStore2 = [objectCopy eventLogEnabled];
        }

        else
        {
          if (![fieldCopy isEqualToString:@"eventLogDuration"])
          {
            v48.receiver = self;
            v48.super_class = HMDHomeModel;
            v11 = [(HMDBackingStoreModelObject *)&v48 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
            goto LABEL_3;
          }

          matterKeyValueStore2 = [objectCopy eventLogDuration];
        }

        owner = matterKeyValueStore2;
        v47 = *MEMORY[0x277CBEEE8];
        if (matterKeyValueStore2)
        {
          v47 = matterKeyValueStore2;
        }

        null = v47;
        goto LABEL_41;
      }

      matterKeyValueStore = [objectCopy matterKeyValueStore];
      owner = matterKeyValueStore;
      v45 = @"HMDHMMKVS.fabricIndex";
    }

    userID = [matterKeyValueStore objectForKeyedSubscript:v45];
    goto LABEL_8;
  }

  location = [objectCopy location];
  if (!location)
  {
    goto LABEL_61;
  }

  v35 = location;
  locationUpdateTimeStamp = [objectCopy locationUpdateTimeStamp];
  if (!locationUpdateTimeStamp)
  {

    goto LABEL_61;
  }

  v37 = locationUpdateTimeStamp;
  locationSource = [objectCopy locationSource];

  if (!locationSource)
  {
LABEL_61:
    v11 = *MEMORY[0x277CBEEE8];
    goto LABEL_3;
  }

  v39 = [HMDHomeLocationData alloc];
  location2 = [objectCopy location];
  locationUpdateTimeStamp2 = [objectCopy locationUpdateTimeStamp];
  locationSource2 = [objectCopy locationSource];
  v43 = [(HMDHomeLocationData *)v39 initWithLocation:location2 locationUpdateTimestamp:locationUpdateTimeStamp2 locationSource:locationSource2];

  v12 = encodeRootObject();

LABEL_22:

  return v12;
}

+ (id)cd_getHomeFromUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = dCopy;
  v16 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:dCopy ofManagedObjectType:objc_opt_class() error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfHome with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  return v14;
}

@end