@interface HMDGuestModel
+ (id)properties;
- (BOOL)shouldIgnoreProperty:(id)property;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDGuestModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"allowedAccessories_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"allowedAccessoryUUIDs"])
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__184424;
      v22 = __Block_byref_object_dispose__184425;
      v11 = MEMORY[0x277CBEB58];
      allowedAccessoryUUIDs = [(HMDGuestModel *)self allowedAccessoryUUIDs];
      v23 = [v11 setWithCapacity:{objc_msgSend(allowedAccessoryUUIDs, "count")}];

      allowedAccessoryUUIDs2 = [(HMDGuestModel *)self allowedAccessoryUUIDs];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __82__HMDGuestModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v17[3] = &unk_27867D970;
      v17[4] = &v18;
      [allowedAccessoryUUIDs2 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

      v14 = v19[5];
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDGuestModel;
    v14 = [(HMDUserModel *)&v16 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v14;
}

void __82__HMDGuestModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() cd_getMKFAccessoryFromAccessory:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([(HMDGuestModel *)self shouldIgnoreProperty:fieldCopy])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = fieldCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring property [%{public}@] as it is not applicable for _MKFGuest entity", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    if ([fieldCopy isEqualToString:@"allowedAccessoryUUIDs"])
    {
      allowedAccessoryUUIDs = [objectCopy allowedAccessoryUUIDs];
    }

    else
    {
      v18.receiver = self;
      v18.super_class = HMDGuestModel;
      allowedAccessoryUUIDs = [(HMDUserModel *)&v18 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
    }

    v15 = allowedAccessoryUUIDs;
  }

  return v15;
}

- (BOOL)shouldIgnoreProperty:(id)property
{
  v3 = shouldIgnoreProperty__onceToken;
  propertyCopy = property;
  if (v3 != -1)
  {
    dispatch_once(&shouldIgnoreProperty__onceToken, &__block_literal_global_184431);
  }

  v5 = [shouldIgnoreProperty__ignoredPropertySet containsObject:propertyCopy];

  return v5;
}

void __48__HMDGuestModel_CoreData__shouldIgnoreProperty___block_invoke()
{
  v4[33] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"activityNotificationsEnabledForPersonalRequests";
  v4[1] = @"allowExplicitContent";
  v4[2] = @"allowiTunesAccount";
  v4[3] = @"analysisAccessSelection";
  v4[4] = @"changeTag";
  v4[5] = @"crossfadeEnabled";
  v4[6] = @"crossfadeDuration";
  v4[7] = @"dolbyAtmosEnabled";
  v4[8] = @"losslessMusicEnabled";
  v4[9] = @"ownerAddSceneButtonPresentedCount";
  v4[10] = @"ownerCharacteristicAuthorizationData";
  v4[11] = @"ownerCompletedSwitchingHomesOnboardingUI";
  v4[12] = @"ownerDismissed2024EnergyOnboarding";
  v4[13] = @"ownerDismissedAccessCodeOnboarding";
  v4[14] = @"ownerDismissedAccessoryFirmwareUpdateOnboarding";
  v4[15] = @"ownerDismissedAnnounceOnboarding";
  v4[16] = @"ownerDismissedCameraRecordingOnboarding";
  v4[17] = @"ownerDismissedCameraRecordingSetupBanner";
  v4[18] = @"ownerDismissedCameraUpgradeOfferBanner";
  v4[19] = @"ownerDismissedHomeTheaterOnboarding";
  v4[20] = @"ownerDismissedIdentifyVoiceOnboarding";
  v4[21] = @"ownerDismissedIdentifyVoiceSetupBanner";
  v4[22] = @"ownerDismissedNaturalLightingOnboarding";
  v4[23] = @"ownerDismissedTVViewingProfileOnboarding";
  v4[24] = @"ownerDismissedTVViewingProfileSetupBanner";
  v4[25] = @"ownerDismissedUserSplitMediaAccountWarning";
  v4[26] = @"ownerDismissedWalletKeyExpressModeOnboarding";
  v4[27] = @"ownerDismissedWelcomeUI";
  v4[28] = @"ownerHasUserSeenRMVNewLanguageNotification";
  v4[29] = @"photosPersonDataZoneUUIDString";
  v4[30] = @"playbackInfluencesEnabled";
  v4[31] = @"sharePhotosFaceClassifications";
  v4[32] = @"siriIdentifyVoiceEnabled";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:33];
  v2 = [v0 setWithArray:v1];
  v3 = shouldIgnoreProperty__ignoredPropertySet;
  shouldIgnoreProperty__ignoredPropertySet = v2;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMDGuestModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_201415 != -1)
  {
    dispatch_once(&properties_onceToken_201415, block);
  }

  v2 = properties__properties_201416;

  return v2;
}

void __27__HMDGuestModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v10 = @"allowedAccessoryUUIDs";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDGuestModel;
  v5 = objc_msgSendSuper2(&v9, sel_properties);
  v6 = [v5 mutableCopy];

  [v6 addEntriesFromDictionary:v4];
  v7 = objc_msgSend_copy(v6);
  v8 = properties__properties_201416;
  properties__properties_201416 = v7;

  objc_autoreleasePoolPop(v2);
}

@end