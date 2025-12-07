@interface HMDHomeModel
+ (id)properties;
- (HMDNaturalLightingContext)naturalLightingContext;
- (void)setNaturalLightingContext:(id)context;
@end

@implementation HMDHomeModel

+ (id)properties
{
  if (properties_onceToken_81287 != -1)
  {
    dispatch_once(&properties_onceToken_81287, &__block_literal_global_81288);
  }

  v3 = properties__properties_81289;

  return v3;
}

void __26__HMDHomeModel_properties__block_invoke()
{
  v42[39] = *MEMORY[0x277D85DE8];
  v41[0] = @"name";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[0] = v40;
  v41[1] = @"ownerName";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[1] = v39;
  v41[2] = @"ownerUserID";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[2] = v38;
  v41[3] = @"ownerUUID";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[3] = v37;
  v41[4] = @"creationDate";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[4] = v36;
  v41[5] = @"firstHAPAccessoryAddedDate";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[5] = v35;
  v41[6] = @"defaultRoomUUID";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[6] = v34;
  v41[7] = @"presenceAuthorizationStatus";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[7] = v33;
  v41[8] = @"presenceComputeStatus";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[8] = v32;
  v41[9] = @"ownerPublicKey";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[9] = v31;
  v41[10] = @"homeLocationData";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[10] = v30;
  v41[11] = @"primaryResidentUUID";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[11] = v29;
  v41[12] = @"sharedHomeSourceVersion";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[12] = v28;
  v41[13] = @"networkProtectionMode";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[13] = v27;
  v41[14] = @"supportsNetworkProtection";
  v26 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v42[14] = v26;
  v41[15] = @"activeNetworkRouterAccessoryUUID";
  v25 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v42[15] = v25;
  v41[16] = @"primaryNetworkRouterManagingDeviceUUID";
  v24 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v42[16] = v24;
  v41[17] = @"multiUserEnabled";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[17] = v23;
  v41[18] = @"hasAnyUserAcknowledgedCameraRecordingOnboarding";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[18] = v22;
  v41[19] = @"hasOnboardedForAccessCode";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[19] = v21;
  v41[20] = @"hasOnboardedForWalletKey";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[20] = v20;
  v41[21] = @"encodedNfcReaderKey";
  v19 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v42[21] = v19;
  v41[22] = @"encodedNaturalLightingContext";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[22] = v18;
  v41[23] = @"chipFabricID";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[23] = v17;
  v41[24] = @"chipFabricIndex";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[24] = v16;
  v41[25] = @"chipLastNodeID";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[25] = v15;
  v41[26] = @"chipRootCertificate";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[26] = v14;
  v41[27] = @"chipOperationalCertificate";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[27] = v13;
  v41[28] = @"chipIntermediateCertificate";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[28] = v12;
  v41[29] = @"chipKeyValueStore";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[29] = v11;
  v41[30] = @"matterControllerNodeID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[30] = v0;
  v41[31] = @"matterFabricID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[31] = v1;
  v41[32] = @"threadOperationalDataset";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[32] = v2;
  v41[33] = @"soundCheckEnabled";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[33] = v3;
  v41[34] = @"analysisOptions";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[34] = v4;
  v41[35] = @"didOnboardAnalysis";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[35] = v5;
  v41[36] = @"siriPhraseOptions";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[36] = v6;
  v41[37] = @"locationServicesEnabled";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[37] = v7;
  v41[38] = @"didOnboardLocationServices";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v42[38] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:39];
  v10 = properties__properties_81289;
  properties__properties_81289 = v9;
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
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode natural lighting context set on home model %@:%@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded natural lighting context on the home model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

@end