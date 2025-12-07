@interface HMDHAPAccessoryTransaction
+ (id)cd_getMKFHAPAccessoryFromAccessory:(id)accessory;
+ (id)cd_getMKFHAPAccessoryFromAccessoryUUID:(id)d;
+ (id)cd_getMKFServiceFromAccessoryUUID:(id)d serviceInstanceId:(id)id;
+ (id)properties;
- (NSSet)chipPairings;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
- (void)setChipPairings:(id)pairings;
@end

@implementation HMDHAPAccessoryTransaction

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHAPAccessoryTransaction_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_162955 != -1)
  {
    dispatch_once(&properties_onceToken_162955, block);
  }

  v2 = properties__properties_162956;

  return v2;
}

void __40__HMDHAPAccessoryTransaction_properties__block_invoke(uint64_t a1)
{
  v101[89] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v98.receiver = *(a1 + 32);
  v98.super_class = &OBJC_METACLASS___HMDHAPAccessoryTransaction;
  v2 = objc_msgSendSuper2(&v98, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_162956;
  properties__properties_162956 = v3;

  v79 = properties__properties_162956;
  v100[0] = @"uniqueIdentifier";
  v97 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[0] = v97;
  v100[1] = @"bridgeUUID";
  v96 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[1] = v96;
  v100[2] = @"paired";
  v95 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v101[2] = v95;
  v100[3] = @"accessoryFlags";
  v94 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[3] = v94;
  v100[4] = @"certificationStatus";
  v93 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[4] = v93;
  v100[5] = @"pairingUsername";
  v92 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[5] = v92;
  v100[6] = @"publicKey";
  v91 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[6] = v91;
  v100[7] = @"transportInformation";
  v90 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[7] = v90;
  v100[8] = @"communicationProtocol";
  v89 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[8] = v89;
  v100[9] = @"accessorySetupHash";
  v88 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[9] = v88;
  v100[10] = @"broadcastKey";
  v87 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[10] = v87;
  v100[11] = @"keyUpdatedStateNumber";
  v86 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[11] = v86;
  v100[12] = @"keyUpdatedTime";
  v85 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[12] = v85;
  v100[13] = @"targetUUIDs";
  v84 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[13] = v84;
  v100[14] = @"hardwareSupport";
  v83 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[14] = v83;
  v100[15] = @"connectivityInfo";
  v82 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[15] = v82;
  v100[16] = @"wiFiTransportCapabilities";
  v81 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[16] = v81;
  v100[17] = @"sleepInterval";
  v80 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[17] = v80;
  v100[18] = @"hasOnboardedForNaturalLighting";
  v78 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[18] = v78;
  v100[19] = @"initialServiceTypeUUIDs";
  v5 = objc_opt_class();
  v99 = objc_opt_class();
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
  v76 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v5 additionalDecodeClasses:v77];
  v101[19] = v76;
  v100[20] = @"needsOnboarding";
  v75 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[20] = v75;
  v100[21] = @"suspendedState";
  v74 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[21] = v74;
  v100[22] = @"preferredMediaUserUUID";
  v73 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[22] = v73;
  v100[23] = @"preferredUserSelectionType";
  v72 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[23] = v72;
  v100[24] = @"soundAlertEnabled";
  v71 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[24] = v71;
  v100[25] = @"lightWhenUsingSiriEnabled";
  v70 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[25] = v70;
  v100[26] = @"siriEnabled";
  v69 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[26] = v69;
  v100[27] = @"siriLanguageCode";
  v68 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[27] = v68;
  v100[28] = @"siriLanguageVoiceCode";
  v67 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[28] = v67;
  v100[29] = @"siriLanguageVoiceGenderCode";
  v66 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[29] = v66;
  v100[30] = @"siriLanguageVoiceName";
  v65 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[30] = v65;
  v100[31] = @"hasDismissedHomePodHasNonMemberMediaAccountWarning";
  v64 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[31] = v64;
  v100[32] = @"doorbellChimeEnabled";
  v63 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[32] = v63;
  v100[33] = @"announceEnabled";
  v62 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[33] = v62;
  v100[34] = @"visionDoubleTapSettingsTimeoutInterval";
  v61 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[34] = v61;
  v100[35] = @"visionVoiceOverEnabled";
  v60 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[35] = v60;
  v100[36] = @"visionVoiceOverAudioDuckingEnabled";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[36] = v59;
  v100[37] = @"visionSpeakingRate";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[37] = v58;
  v100[38] = @"interactionHoldDurationEnabled";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[38] = v57;
  v100[39] = @"interactionHoldDurationSeconds";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[39] = v56;
  v100[40] = @"interactionTouchAccommodationsEnabled";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[40] = v55;
  v100[41] = @"interactionIgnoreRepeatEnabled";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[41] = v54;
  v100[42] = @"interactionIgnoreRepeatSeconds";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[42] = v53;
  v100[43] = @"shareSiriAnalytics";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[43] = v52;
  v100[44] = @"shareSpeakerAnalytics";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[44] = v51;
  v100[45] = @"airPlayEnabled";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[45] = v50;
  v100[46] = @"siriEndpointEnabled";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[46] = v49;
  v100[47] = @"cameraAccessModeAtHome";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[47] = v48;
  v100[48] = @"cameraAccessModeNotAtHome";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[48] = v47;
  v100[49] = @"cameraRecordingEventTriggers";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[49] = v46;
  v100[50] = @"cameraActivityZones";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[50] = v45;
  v100[51] = @"cameraActivityZonesIncludedForSignificantEventDetection";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[51] = v44;
  v100[52] = @"supportsMatterAccessCode";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[52] = v43;
  v100[53] = @"supportsMatterWalletKey";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[53] = v42;
  v100[54] = @"supportsMatterWeekDaySchedule";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[54] = v41;
  v100[55] = @"supportsMatterYearDaySchedule";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[55] = v40;
  v100[56] = @"matterWeekDayScheduleCapacity";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[56] = v39;
  v100[57] = @"matterYearDayScheduleCapacity";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[57] = v38;
  v100[58] = @"cameraCurrentAccessMode";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[58] = v37;
  v100[59] = @"cameraCurrentAccessModeChangeReason";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[59] = v36;
  v100[60] = @"cameraCurrentAccessModeChangeDate";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[60] = v35;
  v100[61] = @"enhancedAuthMethod";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[61] = v34;
  v100[62] = @"enhancedAuthConfigNumber";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[62] = v33;
  v100[63] = @"supportsNaturalLighting";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[63] = v32;
  v100[64] = @"naturalLightingEnabled";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[64] = v31;
  v100[65] = @"chipNodeID";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[65] = v30;
  v100[66] = @"chipVendorID";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[66] = v29;
  v100[67] = @"chipProductID";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[67] = v28;
  v100[68] = @"chipAttributeDatabase";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[68] = v27;
  v100[69] = @"chipPairingsData";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[69] = v26;
  v100[70] = @"chipWEDSupport";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[70] = v25;
  v100[71] = @"chipExtendedMACAddress";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[71] = v24;
  v100[72] = @"matterSoftwareVersionNumber";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[72] = v23;
  v100[73] = @"supportedLinkLayerTypes";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[73] = v22;
  v100[74] = @"supportsMatCredACP";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[74] = v21;
  v100[75] = @"supportsMatCredACB";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[75] = v20;
  v100[76] = @"expeditedTransactionSupportedVersions";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[76] = v19;
  v100[77] = @"bleUWBSupportedVersions";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[77] = v18;
  v100[78] = @"bleAdvertisingVersion";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[78] = v17;
  v100[79] = @"matCredRGSI";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[79] = v16;
  v100[80] = @"preexistingMatCredRGI";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[80] = v6;
  v100[81] = @"preexistingMatCredRPK";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[81] = v7;
  v100[82] = @"preexistingMatCredGRK";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[82] = v8;
  v100[83] = @"mfiCertifiedACWG";
  v9 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[83] = v9;
  v100[84] = @"supportsNativeMatter";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[84] = v10;
  v100[85] = @"hasOnboardedForAdaptiveTemperatureAutomations";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[85] = v11;
  v100[86] = @"hasOnboardedForCleanEnergyAutomation";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[86] = v12;
  v100[87] = @"supportsAdaptiveTemperatureAutomations";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[87] = v13;
  v100[88] = @"supportsCleanEnergyAutomation";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v101[88] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:89];
  [v79 addEntriesFromDictionary:v15];
}

- (void)setChipPairings:(id)pairings
{
  v18 = *MEMORY[0x277D85DE8];
  pairingsCopy = pairings;
  if (pairingsCopy)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:pairingsCopy requiringSecureCoding:1 error:&v11];
    v6 = v11;
    if (v5)
    {
      [(HMDHAPAccessoryTransaction *)self setChipPairingsData:v5];
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
        v15 = pairingsCopy;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize pairings %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    [(HMDHAPAccessoryTransaction *)self setChipPairingsData:0];
  }
}

- (NSSet)chipPairings
{
  v21[2] = *MEMORY[0x277D85DE8];
  chipPairingsData = [(HMDHAPAccessoryTransaction *)self chipPairingsData];
  if (chipPairingsData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v7 = [v5 setWithArray:v6];
    v16 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:chipPairingsData error:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = v8;
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
        v18 = v14;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize pairings from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dependentUUIDs
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = HMDHAPAccessoryTransaction;
  dependentUUIDs = [(HMDAccessoryTransaction *)&v33 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  bridgeUUID = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];

  if (bridgeUUID)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    bridgeUUID2 = [(HMDHAPAccessoryTransaction *)selfCopy bridgeUUID];
    v8 = [v6 initWithUUIDString:bridgeUUID2];
    [v4 addObject:v8];
  }

  targetUUIDs = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
  v10 = [targetUUIDs count];

  if (v10)
  {
    v26 = v4;
    v11 = MEMORY[0x277CBEB18];
    targetUUIDs2 = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v28 = [v11 arrayWithCapacity:{objc_msgSend(targetUUIDs2, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(HMDHAPAccessoryTransaction *)selfCopy targetUUIDs];
    v13 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    v14 = 0x277CCA000uLL;
    if (v13)
    {
      v15 = v13;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [objc_alloc(*(v14 + 3448)) initWithUUIDString:v18];
          if (v19)
          {
            [v28 addObject:v19];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = selfCopy;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v24 = v23 = selfCopy;
              *buf = 138543618;
              v35 = v24;
              v36 = 2112;
              v37 = v18;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@UUID string not well-formed: %@", buf, 0x16u);

              selfCopy = v23;
              v14 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v15);
    }

    v4 = v26;
    [v26 addObjectsFromArray:v28];
  }

  return v4;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v35[2] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"cameraActivityZones"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"cameraActivityZones"])
    {
      cameraActivityZones = [(HMDHAPAccessoryTransaction *)self cameraActivityZones];
      if (cameraActivityZones)
      {
        v12 = MEMORY[0x277CCAAC8];
        v13 = MEMORY[0x277CBEB98];
        v35[0] = objc_opt_class();
        v35[1] = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        v15 = [v13 setWithArray:v14];
        v30 = 0;
        v16 = [v12 unarchivedObjectOfClasses:v15 fromData:cameraActivityZones error:&v30];
        v17 = v30;

        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v32 = v25;
            v33 = 2112;
            v34 = v17;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode activity zones: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          v18 = [MEMORY[0x277CBEB98] set];
        }

        v26 = v18;

        goto LABEL_37;
      }

      goto LABEL_13;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"initialServiceTypes"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"initialServiceTypeUUIDs"])
    {
      initialServiceTypeUUIDs = [(HMDHAPAccessoryTransaction *)self initialServiceTypeUUIDs];
      cameraActivityZones = initialServiceTypeUUIDs;
      if (initialServiceTypeUUIDs)
      {
        null = HMDSortedServiceTypeUUIDsFromStrings(initialServiceTypeUUIDs);
LABEL_36:
        v26 = null;
LABEL_37:

        goto LABEL_39;
      }

LABEL_13:
      null = [MEMORY[0x277CBEB68] null];
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterNodeID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipNodeID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipNodeID];
LABEL_33:
      cameraActivityZones = chipNodeID;
      v27 = *MEMORY[0x277CBEEE8];
      if (chipNodeID)
      {
        v27 = chipNodeID;
      }

      null = v27;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterVendorID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipVendorID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipVendorID];
      goto LABEL_33;
    }

LABEL_38:
    v26 = 0;
    goto LABEL_39;
  }

  if ([fieldCopy isEqualToString:@"matterProductID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipProductID"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipProductID];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterPairings"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipPairingsData"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipPairings];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterWEDSupport"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipWEDSupport"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipWEDSupport];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  if ([fieldCopy isEqualToString:@"matterExtendedMACAddress"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"chipExtendedMACAddress"])
    {
      chipNodeID = [(HMDHAPAccessoryTransaction *)self chipExtendedMACAddress];
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v29.receiver = self;
  v29.super_class = HMDHAPAccessoryTransaction;
  v26 = [(HMDAccessoryTransaction *)&v29 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
LABEL_39:

  return v26;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  v50 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"cameraActivityZones"])
  {
    cameraActivityZones = [objectCopy cameraActivityZones];
    if (cameraActivityZones)
    {
      v44 = 0;
      null2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cameraActivityZones requiringSecureCoding:1 error:&v44];
      v13 = v44;
      if (null2)
      {
LABEL_4:
        v14 = null2;
LABEL_24:

LABEL_41:
        goto LABEL_42;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v32;
        v48 = 2112;
        v49 = v13;
        v33 = "%{public}@Failed to encode activity zones: %@";
LABEL_22:
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v33, buf, 0x16u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

  if ([fieldCopy isEqualToString:@"initialServiceTypeUUIDs"])
  {
    initialServiceTypes = [objectCopy initialServiceTypes];
    if (initialServiceTypes)
    {
      v37 = objectCopy;
      v16 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(initialServiceTypes, "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = initialServiceTypes;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = MEMORY[0x277D0F888];
            uUIDString = [*(*(&v40 + 1) + 8 * i) UUIDString];
            v24 = [v22 hmf_cachedInstanceForString:uUIDString];
            [v16 addObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v19);
      }

      null2 = objc_msgSend_copy(v16);
      objectCopy = v37;
      goto LABEL_34;
    }

    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_33;
  }

  if ([fieldCopy isEqualToString:@"uniqueIdentifier"])
  {
    uniqueIdentifier = [objectCopy uniqueIdentifier];

    if (uniqueIdentifier)
    {
      initialServiceTypes = [objectCopy uniqueIdentifier];
      v26 = HAPInstanceIDFromUniqueIdentifier();
      v27 = HAPServerIDFromUniqueIdentifier();
      null2 = HAPUniqueIdentifier();

LABEL_34:
      goto LABEL_42;
    }
  }

  if ([fieldCopy isEqualToString:@"chipNodeID"])
  {
    matterNodeID = [objectCopy matterNodeID];
LABEL_30:
    initialServiceTypes = matterNodeID;
    v35 = *MEMORY[0x277CBEEE8];
    if (matterNodeID)
    {
      v35 = matterNodeID;
    }

    null = v35;
LABEL_33:
    null2 = null;
    goto LABEL_34;
  }

  if ([fieldCopy isEqualToString:@"chipVendorID"])
  {
    matterNodeID = [objectCopy matterVendorID];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipProductID"])
  {
    matterNodeID = [objectCopy matterProductID];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipPairingsData"])
  {
    cameraActivityZones = [objectCopy matterPairings];
    if (cameraActivityZones)
    {
      v39 = 0;
      null2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cameraActivityZones requiringSecureCoding:1 error:&v39];
      v13 = v39;
      if (null2)
      {
        goto LABEL_4;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v32;
        v48 = 2112;
        v49 = v13;
        v33 = "%{public}@Failed to encode matter pairings: %@";
        goto LABEL_22;
      }

LABEL_23:

      objc_autoreleasePoolPop(v29);
      goto LABEL_24;
    }

LABEL_40:
    null2 = [MEMORY[0x277CBEB68] null];
    goto LABEL_41;
  }

  if ([fieldCopy isEqualToString:@"chipWEDSupport"])
  {
    matterNodeID = [objectCopy matterWEDSupport];
    goto LABEL_30;
  }

  if ([fieldCopy isEqualToString:@"chipExtendedMACAddress"])
  {
    matterNodeID = [objectCopy matterExtendedMACAddress];
    goto LABEL_30;
  }

  v38.receiver = self;
  v38.super_class = HMDHAPAccessoryTransaction;
  null2 = [(HMDAccessoryTransaction *)&v38 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_42:

  return null2;
}

+ (id)cd_getMKFHAPAccessoryFromAccessoryUUID:(id)d
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHAPAccessory for HAP accessory with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  return v14;
}

+ (id)cd_getMKFHAPAccessoryFromAccessory:(id)accessory
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:accessoryCopy];
  if (v5)
  {
    v6 = [self cd_getMKFHAPAccessoryFromAccessoryUUID:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = accessoryCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid accessory UUID string '%@'", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

+ (id)cd_getMKFServiceFromAccessoryUUID:(id)d serviceInstanceId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  idCopy = id;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_20:
    _HMFPreconditionFailure();
  }

  v8 = idCopy;
  if (!idCopy)
  {
    goto LABEL_20;
  }

  v9 = [self cd_getMKFHAPAccessoryFromAccessory:dCopy];
  v10 = v9;
  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    services = [v9 services];
    v12 = [services countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(services);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          instanceID = [v15 instanceID];
          v17 = HAPEqualInstanceIDs();

          if (v17)
          {
            v12 = v15;
            goto LABEL_14;
          }
        }

        v12 = [services countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end