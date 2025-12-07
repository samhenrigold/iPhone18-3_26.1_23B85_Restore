@interface HMDUserModel
+ (id)cd_getHMDUserFromMKFUser:(id)user;
+ (id)cd_getMKFUserFromUUID:(id)d;
+ (id)keyedArchiveToken:(id)token;
+ (id)properties;
+ (id)shareTokenFromKeyedArchiveData:(id)data;
- (id)cd_fetchManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDUserModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (![fieldCopy isEqualToString:@"pairingIdentity"])
  {
    if ([fieldCopy isEqualToString:@"photosPersonDataZoneUUID"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"photosPersonDataZoneUUIDString"])
      {
        photosPersonDataZoneUUIDString = [(HMDUserModel *)self photosPersonDataZoneUUIDString];
        if (photosPersonDataZoneUUIDString)
        {
          v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:photosPersonDataZoneUUIDString];
        }

        else
        {
          v14 = 0;
        }

        v22 = *MEMORY[0x277CBEEE8];
        if (v14)
        {
          v22 = v14;
        }

        null2 = v22;

        goto LABEL_28;
      }

LABEL_15:
      null2 = 0;
      goto LABEL_29;
    }

    if ([fieldCopy isEqualToString:@"reverseShareToken"])
    {
      if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"reverseShareToken"])
      {
        v15 = objc_opt_class();
        reverseShareToken = [(HMDUserModel *)self reverseShareToken];
        v16 = [v15 shareTokenFromKeyedArchiveData:reverseShareToken];
        v17 = v16;
        v18 = *MEMORY[0x277CBEEE8];
        if (v16)
        {
          v18 = v16;
        }

        null2 = v18;

        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (![fieldCopy isEqualToString:@"ownedHome"])
    {
      v40.receiver = self;
      v40.super_class = HMDUserModel;
      null = [(HMDBackingStoreModelObject *)&v40 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
      goto LABEL_23;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"privilege"])
    {
      privilege = [(HMDUserModel *)self privilege];
      unsignedIntegerValue = [privilege unsignedIntegerValue];

      if (unsignedIntegerValue != 3)
      {
        null = [MEMORY[0x277CBEB68] null];
LABEL_23:
        null2 = null;
        goto LABEL_29;
      }

LABEL_35:
      parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
      v41 = 0;
      null2 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:parentUUID ofManagedObjectType:objc_opt_class() error:&v41];
      v14 = v41;

      if (null2)
      {
        v29 = null2;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          parentUUID2 = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
          *buf = 138543874;
          v44 = v38;
          v45 = 2112;
          v46 = parentUUID2;
          v47 = 2112;
          v48 = v14;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFHome with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v35);
      }

      goto LABEL_28;
    }

    uuid = [(HMDBackingStoreModelObject *)self uuid];
    v42 = 0;
    v25 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:uuid ofManagedObjectType:objc_opt_class() error:&v42];
    v14 = v42;

    if (v25)
    {
      privilege2 = [v25 privilege];
      unsignedIntegerValue2 = [privilege2 unsignedIntegerValue];

      if (unsignedIntegerValue2 == 3)
      {

        goto LABEL_35;
      }

      null2 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        uuid2 = [(HMDBackingStoreModelObject *)selfCopy2 uuid];
        *buf = 138543874;
        v44 = v33;
        v45 = 2112;
        v46 = uuid2;
        v47 = 2112;
        v48 = v14;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      null2 = 0;
    }

LABEL_28:
    goto LABEL_29;
  }

  null2 = 0;
  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"pairingIdentity"]&& self)
  {
    reverseShareToken = [(HMDUserModel *)self pairingIdentity];
    if (reverseShareToken)
    {
      null2 = [MEMORY[0x277CFEC20] hmd_pairingIdentityWithDictionary:reverseShareToken];
    }

    else
    {
      null2 = 0;
    }

LABEL_21:
  }

LABEL_29:

  return null2;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if (![fieldCopy isEqualToString:@"pairingIdentity"])
  {
    if ([fieldCopy isEqualToString:@"photosPersonDataZoneUUIDString"])
    {
      photosPersonDataZoneUUID = [objectCopy photosPersonDataZoneUUID];
      uUIDString = [photosPersonDataZoneUUID UUIDString];
      v18 = uUIDString;
      v19 = *MEMORY[0x277CBEEE8];
      if (uUIDString)
      {
        v19 = uUIDString;
      }

      v20 = v19;
    }

    else
    {
      if (![fieldCopy isEqualToString:@"reverseShareToken"])
      {
        v24.receiver = self;
        v24.super_class = HMDUserModel;
        v20 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
        goto LABEL_17;
      }

      v21 = objc_opt_class();
      photosPersonDataZoneUUID = [objectCopy reverseShareToken];
      v20 = [v21 keyedArchiveToken:photosPersonDataZoneUUID];
    }

    goto LABEL_17;
  }

  v11 = objectCopy;
  v12 = v11;
  if (self)
  {
    pairingIdentity = [v11 pairingIdentity];
    if (pairingIdentity)
    {
      pairingIdentity2 = [v12 pairingIdentity];
      hmd_dictionaryEncoding = [pairingIdentity2 hmd_dictionaryEncoding];
    }

    else
    {
      hmd_dictionaryEncoding = 0;
    }
  }

  else
  {
    hmd_dictionaryEncoding = 0;
  }

  v22 = *MEMORY[0x277CBEEE8];
  if (hmd_dictionaryEncoding)
  {
    v22 = hmd_dictionaryEncoding;
  }

  v20 = v22;

LABEL_17:

  return v20;
}

- (id)cd_fetchManagedObjectInContext:(id)context error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  managedObject = [(HMDBackingStoreModelObject *)self managedObject];
  if (managedObject)
  {
    castIfMemberIsUser2 = managedObject;
    managedObjectContext = [managedObject managedObjectContext];

    if (!managedObjectContext)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = HMFGetLogIdentifier();
        uuid = [(HMDBackingStoreModelObject *)selfCopy uuid];
        parentUUID = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
        v25 = 138544130;
        v26 = v12;
        v27 = 2112;
        v28 = castIfMemberIsUser2;
        v29 = 2112;
        v30 = uuid;
        v31 = 2112;
        v32 = parentUUID;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@[User/Guest] Managed object context appears to be reset on this object %@, someone did something very bad: %@/%@", &v25, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    uuid2 = [(HMDBackingStoreModelObject *)self uuid];
    v16 = [_MKFHome findHomeMemberWithUUID:uuid2 context:contextCopy];

    if (v16)
    {
      castIfMemberIsUser = [v16 castIfMemberIsUser];

      if (castIfMemberIsUser)
      {
        castIfMemberIsUser2 = [v16 castIfMemberIsUser];
        [(HMDBackingStoreModelObject *)self setManagedObject:castIfMemberIsUser2];
      }

      else
      {
        castIfMemberIsGuest = [v16 castIfMemberIsGuest];

        if (castIfMemberIsGuest)
        {
          castIfMemberIsGuest2 = [v16 castIfMemberIsGuest];
          castIfMemberIsUser2 = HMDCastIfManagedObjectBSORepresentable(castIfMemberIsGuest2);
          [(HMDBackingStoreModelObject *)self setManagedObject:castIfMemberIsUser2];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Got the home member which is neither User nor Guest.", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          castIfMemberIsUser2 = 0;
        }
      }
    }

    else
    {
      castIfMemberIsUser2 = 0;
    }
  }

  return castIfMemberIsUser2;
}

+ (id)shareTokenFromKeyedArchiveData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v15 = 0;
    v7 = [v5 _strictlyUnarchivedObjectOfClasses:v6 fromData:dataCopy error:&v15];
    v8 = v15;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive share token : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)keyedArchiveToken:(id)token
{
  if (token)
  {
    v4 = encodeRootObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)cd_getHMDUserFromMKFUser:(id)user
{
  v26 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = userCopy;
  v6 = [HMDUserModel alloc];
  modelID = [v5 modelID];
  home = [v5 home];
  modelID2 = [home modelID];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithUUID:modelID parentUUID:modelID2];

  v19 = 0;
  LOBYTE(home) = [(HMDBackingStoreModelObject *)v10 cd_populateFromManagedObject:v5 error:&v19];
  v11 = v19;
  if (home)
  {
    v12 = [[HMDUser alloc] initWithModelObject:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v16;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to populate HMDUserModel from %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = *MEMORY[0x277CBEEE8];
  }

  v17 = v12;

  return v17;
}

+ (id)cd_getMKFUserFromUUID:(id)d
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfUser with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  return v14;
}

+ (id)properties
{
  if (properties_onceToken_1771 != -1)
  {
    dispatch_once(&properties_onceToken_1771, &__block_literal_global_1774);
  }

  v3 = properties__properties_1772;

  return v3;
}

void __26__HMDUserModel_properties__block_invoke()
{
  v61[58] = *MEMORY[0x277D85DE8];
  v60[0] = @"accountHandle";
  v59 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[0] = v59;
  v60[1] = @"accountIdentifier";
  v58 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[1] = v58;
  v60[2] = @"pairingIdentity";
  v57 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[2] = v57;
  v60[3] = @"privilege";
  v56 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[3] = v56;
  v60[4] = @"remoteAccessAllowed";
  v55 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[4] = v55;
  v60[5] = @"presenceAuthorizationStatus";
  v54 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[5] = v54;
  v60[6] = @"changeTag";
  v53 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[6] = v53;
  v60[7] = @"userID";
  v52 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:0];
  v61[7] = v52;
  v60[8] = @"camerasAccessLevel";
  v51 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[8] = v51;
  v60[9] = @"announceAccessAllowed";
  v50 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[9] = v50;
  v60[10] = @"announceAccessLevel";
  v49 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[10] = v49;
  v60[11] = @"analysisAccessSelection";
  v48 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[11] = v48;
  v60[12] = @"matterCASEAuthenticatedTagID";
  v47 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[12] = v47;
  v60[13] = @"matCredIPKExternalRepresentation";
  v46 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[13] = v46;
  v60[14] = @"uniqueIDForAccessories";
  v45 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[14] = v45;
  v60[15] = @"idsMergeIdentifier";
  v44 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[15] = v44;
  v60[16] = @"reverseShareID";
  v43 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[16] = v43;
  v60[17] = @"reverseShareToken";
  v42 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[17] = v42;
  v60[18] = @"allowExplicitContent";
  v41 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[18] = v41;
  v60[19] = @"allowiTunesAccount";
  v40 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[19] = v40;
  v60[20] = @"dolbyAtmosEnabled";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[20] = v39;
  v60[21] = @"losslessMusicEnabled";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[21] = v38;
  v60[22] = @"playbackInfluencesEnabled";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[22] = v37;
  v60[23] = @"siriIdentifyVoiceEnabled";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[23] = v36;
  v60[24] = @"crossfadeEnabled";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[24] = v35;
  v60[25] = @"crossfadeDuration";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[25] = v34;
  v60[26] = @"ownerAddSceneButtonPresentedCount";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[26] = v33;
  v60[27] = @"ownerCompletedSwitchingHomesOnboardingUI";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[27] = v32;
  v60[28] = @"ownerDismissed2024EnergyOnboarding";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[28] = v31;
  v60[29] = @"ownerDismissedAccessCodeOnboarding";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[29] = v30;
  v60[30] = @"ownerDismissedAccessoryFirmwareUpdateOnboarding";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[30] = v29;
  v60[31] = @"ownerDismissedAnnounceOnboarding";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[31] = v28;
  v60[32] = @"ownerDismissedCameraRecordingOnboarding";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[32] = v27;
  v60[33] = @"ownerDismissedCameraRecordingSetupBanner";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[33] = v26;
  v60[34] = @"ownerDismissedCameraUpgradeOfferBanner";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[34] = v25;
  v60[35] = @"ownerDismissedHomeTheaterOnboarding";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[35] = v24;
  v60[36] = @"ownerDismissedIdentifyVoiceOnboarding";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[36] = v23;
  v60[37] = @"ownerDismissedIdentifyVoiceSetupBanner";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[37] = v22;
  v60[38] = @"ownerDismissedNaturalLightingOnboarding";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[38] = v21;
  v60[39] = @"ownerDismissedTVViewingProfileOnboarding";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[39] = v20;
  v60[40] = @"ownerDismissedTVViewingProfileSetupBanner";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[40] = v19;
  v60[41] = @"ownerDismissedUserSplitMediaAccountWarning";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[41] = v18;
  v60[42] = @"ownerDismissedWalletKeyExpressModeOnboarding";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[42] = v17;
  v60[43] = @"ownerDismissedWelcomeUI";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[43] = v16;
  v60[44] = @"ownerHasUserSeenRMVNewLanguageNotification";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[44] = v15;
  v60[45] = @"activityNotificationsEnabledForPersonalRequests";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[45] = v14;
  v60[46] = @"accessoriesWithPersonalRequestsEnabled";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[46] = v13;
  v60[47] = @"accessoriesWithMediaContentProfileEnabled";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[47] = v12;
  v60[48] = @"accessoriesWithListeningHistoryEnabled";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[48] = v11;
  v60[49] = @"photosPersonDataZoneUUIDString";
  v10 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[49] = v10;
  v60[50] = @"sharePhotosFaceClassifications";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[50] = v0;
  v60[51] = @"ownerCharacteristicAuthorizationData";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[51] = v1;
  v60[52] = @"presenceRegionStatus";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[52] = v2;
  v60[53] = @"presenceUpdateTimeStamp";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[53] = v3;
  v60[54] = @"iCloudAltDSID";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[54] = v4;
  v60[55] = @"firstName";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[55] = v5;
  v60[56] = @"lastName";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[56] = v6;
  v60[57] = @"adaptiveTemperatureAutomationsDisclosureStatus";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v61[57] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:58];
  v9 = properties__properties_1772;
  properties__properties_1772 = v8;
}

@end