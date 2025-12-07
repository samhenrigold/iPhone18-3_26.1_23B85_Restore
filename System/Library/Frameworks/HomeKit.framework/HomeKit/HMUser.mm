@interface HMUser
+ (id)logCategory;
- (BOOL)_mergeWithNewAccessoryInvitations:(id)invitations;
- (BOOL)isCurrentUser;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergePendingAccessoryInvitationsWithOutgoingInvitation:(id)invitation;
- (BOOL)requiresAdaptiveTemperatureAutomationsDisclosure;
- (HMAnnounceUserSettings)announceUserSettings;
- (HMAssistantAccessControl)assistantAccessControl;
- (HMFPairingIdentity)pairingIdentity;
- (HMHome)home;
- (HMHomeAccessControl)homeAccessControl;
- (HMMediaContentProfileAccessControl)mediaContentProfileAccessControl;
- (HMPhotosPersonManager)photosPersonManager;
- (HMPhotosPersonManagerSettings)photosPersonManagerSettings;
- (HMSettings)privateSettings;
- (HMSettings)settings;
- (HMUser)init;
- (HMUser)initWithCoder:(id)coder;
- (HMUser)initWithUserID:(id)d name:(id)name uuid:(id)uuid home:(id)home homeAccessControl:(id)control;
- (HMUserDelegatePrivate)delegate;
- (HMUserListeningHistoryUpdateControl)userListeningHistoryUpdateControl;
- (IDSURI)userIDSURI;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)iCloudAltDSID;
- (NSString)name;
- (NSString)userID;
- (NSUUID)photosPersonManagerZoneUUID;
- (NSUUID)uniqueIdentifier;
- (id)_filterAccessoryInvitationsFromOutgoingInvitation:(id)invitation;
- (id)assistantAccessControlForHome:(id)home;
- (id)logIdentifier;
- (id)mediaContentProfileAccessControlForHome:(id)home;
- (id)messageDestination;
- (id)pendingAccessoryInvitations;
- (id)senderCorrelationIdentifier;
- (id)userListeningHistoryUpdateControlForHome:(id)home;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_handleMultiUserStatusChangedNotification:(id)notification;
- (void)_handleRGAllowedPeriodEnded:(id)ended;
- (void)_handleRGAllowedPeriodStarted:(id)started;
- (void)_handleSharedUserProfileMetadataUpdated;
- (void)_handleUpdatedAssistantAccessControl:(id)control;
- (void)_mergeUserPairingIdentityIfNecessary:(id)necessary withNewPairingIdentity:(id)identity;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler;
- (void)completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:(id)completion;
- (void)configurePhotosPersonManager;
- (void)createConfigureAndMergePrivateSettingsIfNecessary:(id)necessary withContext:(id)context;
- (void)createConfigureAndMergeSharedSettingsIfNecessary:(id)necessary withContext:(id)context;
- (void)createHH1PrivateSettingsControllerIfNecessary;
- (void)createHH1SettingsControllerIfNecessary;
- (void)fetchAllPairingIdentitiesWithCompletionHandler:(id)handler;
- (void)fetchProfilePhoto:(id)photo;
- (void)fetchProfilePhotoAndCropRect:(id)rect;
- (void)fetchShareLookupInfo:(id)info;
- (void)pairingIdentityWithCompletionHandler:(id)handler;
- (void)sendClientShareRepairRequest:(id)request containerID:(id)d completion:(id)completion;
- (void)sendClientShareURL:(id)l shareToken:(id)token containerID:(id)d fromUser:(id)user completion:(id)completion;
- (void)setAnnounceUserSettings:(id)settings;
- (void)setAssistantAccessControl:(id)control;
- (void)setCurrentUser:(BOOL)user;
- (void)setFamilyName:(id)name;
- (void)setGivenName:(id)name;
- (void)setHome:(id)home;
- (void)setHomeAccessControl:(id)control;
- (void)setMediaContentProfileAccessControl:(id)control;
- (void)setName:(id)name;
- (void)setNeedsiTunesMultiUserRepair:(BOOL)repair completion:(id)completion;
- (void)setPairingIdentity:(id)identity;
- (void)setPendingAccessoryInvitationsWithOutgoingInvitation:(id)invitation;
- (void)setPhotosPersonManager:(id)manager;
- (void)setPhotosPersonManagerSettings:(id)settings;
- (void)setPhotosPersonManagerZoneUUID:(id)d;
- (void)setRequiresAdaptiveTemperatureAutomationsDisclosure:(BOOL)disclosure;
- (void)setUserID:(id)d;
- (void)setUserListeningHistoryUpdateControl:(id)control;
- (void)setiCloudAltDSID:(id)d;
- (void)updateAnnounceUserSettings:(id)settings forHome:(id)home completionHandler:(id)handler;
- (void)updateAssistantAccessControl:(id)control forHome:(id)home completionHandler:(id)handler;
- (void)updateHomeAccessControl:(BOOL)control remoteAccess:(BOOL)access announceAccess:(BOOL)announceAccess camerasAccess:(id)camerasAccess;
- (void)updateMediaContentProfileAccessControl:(id)control forHome:(id)home completionHandler:(id)handler;
- (void)updatePhotosPersonManagerSettings:(id)settings completion:(id)completion;
- (void)updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler;
- (void)updateUserListeningHistoryUpdateControl:(id)control forHome:(id)home completionHandler:(id)handler;
@end

@implementation HMUser

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (HMHomeAccessControl)homeAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configurePhotosPersonManager
{
  v18 = *MEMORY[0x1E69E9840];
  photosPersonManagerSettings = [(HMUser *)self photosPersonManagerSettings];
  if ([photosPersonManagerSettings isImportingFromPhotoLibraryEnabled] && (-[HMUser photosPersonManager](self, "photosPersonManager"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating photos person manager because importing from photo library is enabled", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [[HMPhotosPersonManager alloc] initWithUser:selfCopy];
    [(HMUser *)selfCopy setPhotosPersonManager:v14];

    photosPersonManager = [(HMUser *)selfCopy photosPersonManager];
    [photosPersonManager configure];
  }

  else if (([photosPersonManagerSettings isImportingFromPhotoLibraryEnabled] & 1) == 0)
  {
    photosPersonManager2 = [(HMUser *)self photosPersonManager];

    if (photosPersonManager2)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Destroying photos person manager because importing from photo library is disabled", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMUser *)selfCopy2 setPhotosPersonManager:0];
    }
  }
}

- (void)updatePhotosPersonManagerSettings:(id)settings completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  context = [(HMUser *)self context];
  if (context)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Update photos person manager settings"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      identifier = [v9 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543874;
      v34 = v13;
      v35 = 2114;
      v36 = shortDescription;
      v37 = 2112;
      v38 = settingsCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Updating photos person manager settings: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v31 = @"HMU.mk.ppms";
    v16 = encodeRootObject(settingsCopy);
    v32 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMUser *)selfCopy uuid];
    v20 = [v18 initWithTarget:uuid];

    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMU.m.uppms" destination:v20 payload:v17];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __63__HMUser_Person__updatePhotosPersonManagerSettings_completion___block_invoke;
    v28[3] = &unk_1E754E480;
    v28[4] = selfCopy;
    v29 = v9;
    v30 = completionCopy;
    v22 = v9;
    [v21 setResponseHandler:v28];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v21 completionHandler:0];

    goto LABEL_9;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v27;
    v35 = 2080;
    v36 = "[HMUser(Person) updatePhotosPersonManagerSettings:completion:]";
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (completionCopy)
  {
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v17);
LABEL_9:
  }
}

void __63__HMUser_Person__updatePhotosPersonManagerSettings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v32[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMU.mk.ppms" ofClasses:v7];

  v9 = [v6 hmf_UUIDForKey:@"HMU.mk.ppmzu"];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v22 = v5;
      v15 = [*(a1 + 40) identifier];
      v16 = [v15 shortDescription];
      *buf = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully updated photos person manager settings: %@, zone UUID: %@", buf, 0x2Au);

      v5 = v22;
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setPhotosPersonManagerSettings:v8];
    [*(a1 + 32) setPhotosPersonManagerZoneUUID:v9];
    [*(a1 + 32) configurePhotosPersonManager];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [*(a1 + 40) identifier];
      v18 = v23 = v5;
      v19 = [v18 shortDescription];
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update photos person manager settings: %@", buf, 0x20u);

      v5 = v23;
    }

    objc_autoreleasePoolPop(v10);
  }

  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 48) error:v5];
}

- (HMUserDelegatePrivate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRequiresAdaptiveTemperatureAutomationsDisclosure:(BOOL)disclosure
{
  os_unfair_lock_lock_with_options();
  self->_requiresAdaptiveTemperatureAutomationsDisclosure = disclosure;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresAdaptiveTemperatureAutomationsDisclosure
{
  os_unfair_lock_lock_with_options();
  requiresAdaptiveTemperatureAutomationsDisclosure = self->_requiresAdaptiveTemperatureAutomationsDisclosure;
  os_unfair_lock_unlock(&self->_lock);
  return requiresAdaptiveTemperatureAutomationsDisclosure;
}

- (void)completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  home = [(HMUser *)self home];
  if (!home)
  {
    _HMFPreconditionFailure();
LABEL_10:
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:]", @"completion"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v6 = home;
  context = [(HMUser *)self context];
  if (!completionCopy)
  {
    goto LABEL_10;
  }

  v8 = context;
  if (context)
  {
    messageTargetUUID = [(HMUser *)self messageTargetUUID];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__HMUser_completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion___block_invoke;
    v21[3] = &unk_1E754E480;
    v21[4] = self;
    v22 = v8;
    v23 = completionCopy;
    [(_HMContext *)v22 sendMessage:messageTargetUUID target:0 payload:v21 responseHandler:?];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2080;
      v27 = "[HMUser completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __75__HMUser_completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to complete adaptive temperature automations disclosure with error %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Completed adaptive temperature automations disclosure", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setRequiresAdaptiveTemperatureAutomationsDisclosure:0];
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];
}

- (HMSettings)privateSettings
{
  privateSettingsAdapter = [(HMUser *)self privateSettingsAdapter];

  if (privateSettingsAdapter)
  {
    [(HMUser *)self privateSettingsAdapter];
  }

  else
  {
    [(HMUser *)self privateSettingsController];
  }
  v4 = ;
  settings = [v4 settings];

  return settings;
}

- (HMSettings)settings
{
  sharedSettingsAdapter = [(HMUser *)self sharedSettingsAdapter];

  if (sharedSettingsAdapter)
  {
    [(HMUser *)self sharedSettingsAdapter];
  }

  else
  {
    [(HMUser *)self settingsController];
  }
  v4 = ;
  settings = [v4 settings];

  return settings;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMUser *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)createHH1PrivateSettingsControllerIfNecessary
{
  if (!self->_privateSettingsController)
  {
    v4 = [HMSettingsController alloc];
    uuid = self->_uuid;
    WeakRetained = objc_loadWeakRetained(&self->_home);
    uuid = [WeakRetained uuid];
    v7 = [(HMSettingsController *)v4 initWithParentIdentifier:uuid homeUUID:uuid codingKey:@"HMS.settings.private"];
    privateSettingsController = self->_privateSettingsController;
    self->_privateSettingsController = v7;
  }
}

- (void)createHH1SettingsControllerIfNecessary
{
  if (!self->_settingsController)
  {
    v4 = [HMSettingsController alloc];
    uuid = self->_uuid;
    WeakRetained = objc_loadWeakRetained(&self->_home);
    uuid = [WeakRetained uuid];
    v7 = [(HMSettingsController *)v4 initWithParentIdentifier:uuid homeUUID:uuid codingKey:@"HMS.settings.shared"];
    settingsController = self->_settingsController;
    self->_settingsController = v7;
  }
}

- (void)createConfigureAndMergeSharedSettingsIfNecessary:(id)necessary withContext:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  sharedSettingsAdapter = [(HMUser *)self sharedSettingsAdapter];
  if (!sharedSettingsAdapter)
  {
    sharedSettingsAdapter = [[HMUserSettingsAdapter alloc] initWithUser:self settingsType:2];
    [(HMUserSettingsAdapter *)sharedSettingsAdapter configureWithContext:contextCopy];
    [(HMUser *)self setSharedSettingsAdapter:sharedSettingsAdapter];
  }

  if (necessaryCopy)
  {
    [(HMUserSettingsAdapter *)sharedSettingsAdapter mergeWithDictionary:necessaryCopy];
  }
}

- (void)createConfigureAndMergePrivateSettingsIfNecessary:(id)necessary withContext:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  privateSettingsAdapter = [(HMUser *)self privateSettingsAdapter];
  if (!privateSettingsAdapter)
  {
    privateSettingsAdapter = [[HMUserSettingsAdapter alloc] initWithUser:self settingsType:1];
    [(HMUserSettingsAdapter *)privateSettingsAdapter configureWithContext:contextCopy];
    [(HMUser *)self setPrivateSettingsAdapter:privateSettingsAdapter];
  }

  if (necessaryCopy)
  {
    [(HMUserSettingsAdapter *)privateSettingsAdapter mergeWithDictionary:necessaryCopy];
  }
}

- (void)_mergeUserPairingIdentityIfNecessary:(id)necessary withNewPairingIdentity:(id)identity
{
  v28 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  identityCopy = identity;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    identifier = [necessaryCopy identifier];
    identifier2 = [identityCopy identifier];
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = identifier;
    v26 = 2112;
    v27 = identifier2;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Pairing Identity for the user has changed from : %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMUser *)selfCopy setPairingIdentity:identityCopy];
  delegate = [(HMUser *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63768])
  {
    v15 = delegate;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (objc_opt_respondsToSelector())
  {
    context = [(HMUser *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__HMUser__mergeUserPairingIdentityIfNecessary_withNewPairingIdentity___block_invoke;
    v19[3] = &unk_1E754E5E8;
    v19[4] = selfCopy;
    v20 = identityCopy;
    v21 = v16;
    [delegateCaller invokeBlock:v19];
  }
}

void __70__HMUser__mergeUserPairingIdentityIfNecessary_withNewPairingIdentity___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client that pairing identity has changed to : %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = [v8 pairingIdentity];
  [v7 user:v8 didUpdatePairingIdentity:v9];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v436 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  v373 = objectCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v213 = 0;
    goto LABEL_201;
  }

  selfCopy = self;
  v382 = objectCopy;
  home = [(HMUser *)self home];
  name = [v382 name];
  [(HMUser *)self setName:name];

  userID = [v382 userID];
  [(HMUser *)self setUserID:userID];

  pendingAccessoryInvitations = [v382 pendingAccessoryInvitations];
  [(HMUser *)self _mergeWithNewAccessoryInvitations:pendingAccessoryInvitations];

  homeAccessControl = [(HMUser *)self homeAccessControl];
  isAccessAllowed = [homeAccessControl isAccessAllowed];
  homeAccessControl2 = [v382 homeAccessControl];
  v11 = isAccessAllowed ^ [homeAccessControl2 isAccessAllowed];

  v380 = v11;
  if (v11 == 1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      homeAccessControl3 = [(HMUser *)v13 homeAccessControl];
      [homeAccessControl3 isAccessAllowed];
      v17 = HMFBooleanToString();
      homeAccessControl4 = [v382 homeAccessControl];
      [homeAccessControl4 isAccessAllowed];
      v19 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v15;
      v425 = 2112;
      v426 = v17;
      v427 = 2112;
      v428 = v19;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated isAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    homeAccessControl5 = [(HMUser *)v13 homeAccessControl];
    homeAccessControl6 = [v382 homeAccessControl];
    [homeAccessControl5 setAccessAllowed:{objc_msgSend(homeAccessControl6, "isAccessAllowed")}];
  }

  homeAccessControl7 = [(HMUser *)selfCopy homeAccessControl];
  accessNotAllowedReasonCode = [homeAccessControl7 accessNotAllowedReasonCode];
  homeAccessControl8 = [v382 homeAccessControl];
  LOBYTE(accessNotAllowedReasonCode) = accessNotAllowedReasonCode == [homeAccessControl8 accessNotAllowedReasonCode];

  if ((accessNotAllowedReasonCode & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = MEMORY[0x1E696AD98];
      homeAccessControl9 = [(HMUser *)v26 homeAccessControl];
      v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(homeAccessControl9, "accessNotAllowedReasonCode")}];
      v32 = MEMORY[0x1E696AD98];
      homeAccessControl10 = [v382 homeAccessControl];
      v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(homeAccessControl10, "accessNotAllowedReasonCode")}];
      *buf = 138543874;
      v424 = v28;
      v425 = 2112;
      v426 = v31;
      v427 = 2112;
      v428 = v34;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Updated access not allowed reason code from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    homeAccessControl11 = [v382 homeAccessControl];
    accessNotAllowedReasonCode2 = [homeAccessControl11 accessNotAllowedReasonCode];
    homeAccessControl12 = [(HMUser *)v26 homeAccessControl];
    [homeAccessControl12 setAccessNotAllowedReasonCode:accessNotAllowedReasonCode2];

    v380 = 1;
  }

  homeAccessControl13 = [(HMUser *)selfCopy homeAccessControl];
  isOwner = [homeAccessControl13 isOwner];
  homeAccessControl14 = [v382 homeAccessControl];
  isOwner2 = [homeAccessControl14 isOwner];

  if (isOwner != isOwner2)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = selfCopy;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      homeAccessControl15 = [(HMUser *)v43 homeAccessControl];
      [homeAccessControl15 isOwner];
      v47 = HMFBooleanToString();
      homeAccessControl16 = [v382 homeAccessControl];
      [homeAccessControl16 isOwner];
      v49 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v45;
      v425 = 2112;
      v426 = v47;
      v427 = 2112;
      v428 = v49;
      _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_INFO, "%{public}@Updated isOwner from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    homeAccessControl17 = [(HMUser *)v43 homeAccessControl];
    homeAccessControl18 = [v382 homeAccessControl];
    [homeAccessControl17 setOwner:{objc_msgSend(homeAccessControl18, "isOwner")}];

    v380 = 1;
  }

  homeAccessControl19 = [(HMUser *)selfCopy homeAccessControl];
  isAdministrator = [homeAccessControl19 isAdministrator];
  homeAccessControl20 = [v382 homeAccessControl];
  isAdministrator2 = [homeAccessControl20 isAdministrator];

  if (isAdministrator != isAdministrator2)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = selfCopy;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      homeAccessControl21 = [(HMUser *)v57 homeAccessControl];
      [homeAccessControl21 isAdministrator];
      v61 = HMFBooleanToString();
      homeAccessControl22 = [v382 homeAccessControl];
      [homeAccessControl22 isAdministrator];
      v63 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v59;
      v425 = 2112;
      v426 = v61;
      v427 = 2112;
      v428 = v63;
      _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_INFO, "%{public}@Updated isAdministrator from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v56);
    homeAccessControl23 = [(HMUser *)v57 homeAccessControl];
    homeAccessControl24 = [v382 homeAccessControl];
    [homeAccessControl23 setAdministrator:{objc_msgSend(homeAccessControl24, "isAdministrator")}];

    v380 = 1;
  }

  homeAccessControl25 = [(HMUser *)selfCopy homeAccessControl];
  isRemoteAccessAllowed = [homeAccessControl25 isRemoteAccessAllowed];
  homeAccessControl26 = [v382 homeAccessControl];
  isRemoteAccessAllowed2 = [homeAccessControl26 isRemoteAccessAllowed];

  if (isRemoteAccessAllowed != isRemoteAccessAllowed2)
  {
    v70 = objc_autoreleasePoolPush();
    v71 = selfCopy;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      homeAccessControl27 = [(HMUser *)v71 homeAccessControl];
      [homeAccessControl27 isRemoteAccessAllowed];
      v75 = HMFBooleanToString();
      homeAccessControl28 = [v382 homeAccessControl];
      [homeAccessControl28 isRemoteAccessAllowed];
      v77 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v73;
      v425 = 2112;
      v426 = v75;
      v427 = 2112;
      v428 = v77;
      _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_INFO, "%{public}@Updated isRemoteAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v70);
    homeAccessControl29 = [(HMUser *)v71 homeAccessControl];
    homeAccessControl30 = [v382 homeAccessControl];
    [homeAccessControl29 setRemoteAccessAllowed:{objc_msgSend(homeAccessControl30, "isRemoteAccessAllowed")}];

    v380 = 1;
  }

  homeAccessControl31 = [(HMUser *)selfCopy homeAccessControl];
  presenceAuthStatus = [homeAccessControl31 presenceAuthStatus];
  homeAccessControl32 = [v382 homeAccessControl];
  presenceAuthStatus2 = [homeAccessControl32 presenceAuthStatus];
  v84 = HMFEqualObjects();

  if ((v84 & 1) == 0)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = selfCopy;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      homeAccessControl33 = [(HMUser *)v86 homeAccessControl];
      presenceAuthStatus3 = [homeAccessControl33 presenceAuthStatus];
      homeAccessControl34 = [v382 homeAccessControl];
      presenceAuthStatus4 = [homeAccessControl34 presenceAuthStatus];
      *buf = 138543874;
      v424 = v88;
      v425 = 2112;
      v426 = presenceAuthStatus3;
      v427 = 2112;
      v428 = presenceAuthStatus4;
      _os_log_impl(&dword_19BB39000, v87, OS_LOG_TYPE_INFO, "%{public}@Updated presence auth status from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v85);
    homeAccessControl35 = [v382 homeAccessControl];
    presenceAuthStatus5 = [homeAccessControl35 presenceAuthStatus];
    homeAccessControl36 = [(HMUser *)v86 homeAccessControl];
    [homeAccessControl36 setPresenceAuthStatus:presenceAuthStatus5];

    v380 = 1;
  }

  homeAccessControl37 = [(HMUser *)selfCopy homeAccessControl];
  presenceComputeStatus = [homeAccessControl37 presenceComputeStatus];
  homeAccessControl38 = [v382 homeAccessControl];
  presenceComputeStatus2 = [homeAccessControl38 presenceComputeStatus];
  v100 = HMFEqualObjects();

  if ((v100 & 1) == 0)
  {
    v101 = objc_autoreleasePoolPush();
    v102 = selfCopy;
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v104 = HMFGetLogIdentifier();
      homeAccessControl39 = [(HMUser *)v102 homeAccessControl];
      presenceComputeStatus3 = [homeAccessControl39 presenceComputeStatus];
      homeAccessControl40 = [v382 homeAccessControl];
      presenceComputeStatus4 = [homeAccessControl40 presenceComputeStatus];
      *buf = 138543874;
      v424 = v104;
      v425 = 2112;
      v426 = presenceComputeStatus3;
      v427 = 2112;
      v428 = presenceComputeStatus4;
      _os_log_impl(&dword_19BB39000, v103, OS_LOG_TYPE_INFO, "%{public}@Updated presence compute status from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v101);
    homeAccessControl41 = [v382 homeAccessControl];
    presenceComputeStatus5 = [homeAccessControl41 presenceComputeStatus];
    homeAccessControl42 = [(HMUser *)v102 homeAccessControl];
    [homeAccessControl42 setPresenceComputeStatus:presenceComputeStatus5];

    v380 = 1;
  }

  homeAccessControl43 = [(HMUser *)selfCopy homeAccessControl];
  camerasAccess = [homeAccessControl43 camerasAccess];
  homeAccessControl44 = [v382 homeAccessControl];
  camerasAccess2 = [homeAccessControl44 camerasAccess];
  v116 = HMFEqualObjects();

  if ((v116 & 1) == 0)
  {
    v117 = objc_autoreleasePoolPush();
    v118 = selfCopy;
    v119 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      v120 = HMFGetLogIdentifier();
      homeAccessControl45 = [(HMUser *)v118 homeAccessControl];
      camerasAccess3 = [homeAccessControl45 camerasAccess];
      homeAccessControl46 = [v382 homeAccessControl];
      camerasAccess4 = [homeAccessControl46 camerasAccess];
      *buf = 138543874;
      v424 = v120;
      v425 = 2112;
      v426 = camerasAccess3;
      v427 = 2112;
      v428 = camerasAccess4;
      _os_log_impl(&dword_19BB39000, v119, OS_LOG_TYPE_INFO, "%{public}@Updated cameras access from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v117);
    homeAccessControl47 = [v382 homeAccessControl];
    camerasAccess5 = [homeAccessControl47 camerasAccess];
    homeAccessControl48 = [(HMUser *)v118 homeAccessControl];
    [homeAccessControl48 setCamerasAccess:camerasAccess5];

    v380 = 1;
  }

  announceUserSettings = [(HMUser *)selfCopy announceUserSettings];
  announceUserSettings2 = [v382 announceUserSettings];
  v130 = HMFEqualObjects();

  if ((v130 & 1) == 0)
  {
    announceUserSettings3 = [v382 announceUserSettings];
    [(HMUser *)selfCopy setAnnounceUserSettings:announceUserSettings3];
  }

  homeAccessControl49 = [(HMUser *)selfCopy homeAccessControl];
  isAnnounceAccessAllowed = [homeAccessControl49 isAnnounceAccessAllowed];
  homeAccessControl50 = [v382 homeAccessControl];
  isAnnounceAccessAllowed2 = [homeAccessControl50 isAnnounceAccessAllowed];

  if (isAnnounceAccessAllowed != isAnnounceAccessAllowed2)
  {
    v136 = objc_autoreleasePoolPush();
    v137 = selfCopy;
    v138 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
    {
      v139 = HMFGetLogIdentifier();
      homeAccessControl51 = [(HMUser *)v137 homeAccessControl];
      [homeAccessControl51 isAnnounceAccessAllowed];
      v141 = HMFBooleanToString();
      homeAccessControl52 = [v382 homeAccessControl];
      [homeAccessControl52 isAnnounceAccessAllowed];
      v143 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v139;
      v425 = 2112;
      v426 = v141;
      v427 = 2112;
      v428 = v143;
      _os_log_impl(&dword_19BB39000, v138, OS_LOG_TYPE_INFO, "%{public}@Updated isAnnounceAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v136);
    homeAccessControl53 = [(HMUser *)v137 homeAccessControl];
    homeAccessControl54 = [v382 homeAccessControl];
    [homeAccessControl53 setAnnounceAccessAllowed:{objc_msgSend(homeAccessControl54, "isAnnounceAccessAllowed")}];

    v380 = 1;
  }

  homeAccessControl55 = [(HMUser *)selfCopy homeAccessControl];
  isRestrictedGuest = [homeAccessControl55 isRestrictedGuest];
  homeAccessControl56 = [v382 homeAccessControl];
  isRestrictedGuest2 = [homeAccessControl56 isRestrictedGuest];

  if (isRestrictedGuest != isRestrictedGuest2)
  {
    v150 = objc_autoreleasePoolPush();
    v151 = selfCopy;
    v152 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      v153 = HMFGetLogIdentifier();
      homeAccessControl57 = [(HMUser *)v151 homeAccessControl];
      [homeAccessControl57 isRestrictedGuest];
      v155 = HMFBooleanToString();
      homeAccessControl58 = [v382 homeAccessControl];
      [homeAccessControl58 isRestrictedGuest];
      v157 = HMFBooleanToString();
      *buf = 138543874;
      v424 = v153;
      v425 = 2112;
      v426 = v155;
      v427 = 2112;
      v428 = v157;
      _os_log_impl(&dword_19BB39000, v152, OS_LOG_TYPE_INFO, "%{public}@Updated isRestrictedGuest from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v150);
    homeAccessControl59 = [(HMUser *)v151 homeAccessControl];
    homeAccessControl60 = [v382 homeAccessControl];
    [homeAccessControl59 setRestrictedGuest:{objc_msgSend(homeAccessControl60, "isRestrictedGuest")}];

    v380 = 1;
  }

  homeAccessControl61 = [v382 homeAccessControl];
  restrictedGuestAccessSettings = [homeAccessControl61 restrictedGuestAccessSettings];
  [restrictedGuestAccessSettings fixupAccessoriesForHome:home];

  homeAccessControl62 = [(HMUser *)selfCopy homeAccessControl];
  restrictedGuestAccessSettings2 = [homeAccessControl62 restrictedGuestAccessSettings];
  homeAccessControl63 = [v382 homeAccessControl];
  restrictedGuestAccessSettings3 = [homeAccessControl63 restrictedGuestAccessSettings];
  v166 = HMFEqualObjects();

  if ((v166 & 1) == 0)
  {
    v167 = objc_autoreleasePoolPush();
    v168 = selfCopy;
    v169 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
    {
      v170 = HMFGetLogIdentifier();
      homeAccessControl64 = [(HMUser *)v168 homeAccessControl];
      restrictedGuestAccessSettings4 = [homeAccessControl64 restrictedGuestAccessSettings];
      homeAccessControl65 = [v382 homeAccessControl];
      restrictedGuestAccessSettings5 = [homeAccessControl65 restrictedGuestAccessSettings];
      *buf = 138543874;
      v424 = v170;
      v425 = 2112;
      v426 = restrictedGuestAccessSettings4;
      v427 = 2112;
      v428 = restrictedGuestAccessSettings5;
      _os_log_impl(&dword_19BB39000, v169, OS_LOG_TYPE_INFO, "%{public}@Updated restricted guest access settings from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v167);
    homeAccessControl66 = [v382 homeAccessControl];
    restrictedGuestAccessSettings6 = [homeAccessControl66 restrictedGuestAccessSettings];
    homeAccessControl67 = [(HMUser *)v168 homeAccessControl];
    [homeAccessControl67 setRestrictedGuestAccessSettings:restrictedGuestAccessSettings6];

    v380 = 1;
  }

  homeAccessControl68 = [(HMUser *)selfCopy homeAccessControl];
  audioAnalysisUserDropInAccessLevel = [homeAccessControl68 audioAnalysisUserDropInAccessLevel];
  homeAccessControl69 = [v382 homeAccessControl];
  LOBYTE(audioAnalysisUserDropInAccessLevel) = audioAnalysisUserDropInAccessLevel == [homeAccessControl69 audioAnalysisUserDropInAccessLevel];

  if ((audioAnalysisUserDropInAccessLevel & 1) == 0)
  {
    v181 = objc_autoreleasePoolPush();
    v182 = selfCopy;
    v183 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      v184 = HMFGetLogIdentifier();
      v185 = MEMORY[0x1E696AD98];
      homeAccessControl70 = [(HMUser *)v182 homeAccessControl];
      v187 = [v185 numberWithUnsignedInteger:{objc_msgSend(homeAccessControl70, "audioAnalysisUserDropInAccessLevel")}];
      v188 = MEMORY[0x1E696AD98];
      homeAccessControl71 = [v382 homeAccessControl];
      v190 = [v188 numberWithUnsignedInteger:{objc_msgSend(homeAccessControl71, "audioAnalysisUserDropInAccessLevel")}];
      *buf = 138543874;
      v424 = v184;
      v425 = 2112;
      v426 = v187;
      v427 = 2112;
      v428 = v190;
      _os_log_impl(&dword_19BB39000, v183, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis drop in user access from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v181);
    homeAccessControl72 = [v382 homeAccessControl];
    audioAnalysisUserDropInAccessLevel2 = [homeAccessControl72 audioAnalysisUserDropInAccessLevel];
    homeAccessControl73 = [(HMUser *)v182 homeAccessControl];
    [homeAccessControl73 setAudioAnalysisUserDropInAccessLevel:audioAnalysisUserDropInAccessLevel2];

    v380 = 1;
  }

  assistantAccessControl = [v382 assistantAccessControl];
  assistantAccessControl2 = [(HMUser *)selfCopy assistantAccessControl];
  v374 = HMFEqualObjects();

  if ((v374 & 1) == 0)
  {
    v195 = objc_autoreleasePoolPush();
    v383 = selfCopy;
    v196 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v197 = HMFGetLogIdentifier();
      *buf = 138543618;
      v424 = v197;
      v425 = 2112;
      v426 = assistantAccessControl;
      _os_log_impl(&dword_19BB39000, v196, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v195);
    accessories = [assistantAccessControl accessories];
    if ([accessories count])
    {
      v386 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories, "count")}];
      v421 = 0u;
      v422 = 0u;
      v419 = 0u;
      v420 = 0u;
      v198 = accessories;
      v199 = [v198 countByEnumeratingWithState:&v419 objects:v435 count:16];
      if (v199)
      {
        v200 = *v420;
        do
        {
          for (i = 0; i != v199; ++i)
          {
            if (*v420 != v200)
            {
              objc_enumerationMutation(v198);
            }

            v202 = *(*(&v419 + 1) + 8 * i);
            uuid = [v202 uuid];
            v204 = [home accessoryWithUUID:uuid];

            if (v204)
            {
              [v386 addObject:v204];
            }

            else
            {
              v205 = objc_autoreleasePoolPush();
              v206 = v383;
              v207 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
              {
                v208 = HMFGetLogIdentifier();
                uuid2 = [v202 uuid];
                *buf = 138543618;
                v424 = v208;
                v425 = 2112;
                v426 = uuid2;
                _os_log_impl(&dword_19BB39000, v207, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v205);
            }
          }

          v199 = [v198 countByEnumeratingWithState:&v419 objects:v435 count:16];
        }

        while (v199);
      }

      v210 = [assistantAccessControl mutableCopy];
      [v210 setAccessories:v386];
      v211 = [v210 copy];

      v212 = v211;
    }

    else
    {
      v212 = assistantAccessControl;
    }

    assistantAccessControl = v212;
    [(HMUser *)v383 setAssistantAccessControl:?];
    if (home)
    {
      delegate = [(HMUser *)v383 delegate];
      if ([delegate conformsToProtocol:&unk_1F0F63768])
      {
        v215 = delegate;
      }

      else
      {
        v215 = 0;
      }

      v216 = v215;

      if (objc_opt_respondsToSelector())
      {
        context = [(HMUser *)v383 context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMUser_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754DE30;
        block[4] = v383;
        v416 = assistantAccessControl;
        v417 = v216;
        v418 = home;
        dispatch_async(queue, block);
      }

      else
      {
        v219 = objc_autoreleasePoolPush();
        v220 = v383;
        v221 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
        {
          v222 = HMFGetLogIdentifier();
          *buf = 138543874;
          v424 = v222;
          v425 = 2112;
          v426 = v216;
          v427 = 2112;
          v428 = assistantAccessControl;
          _os_log_impl(&dword_19BB39000, v221, OS_LOG_TYPE_INFO, "%{public}@No delegate set to notify: %@, assistant access control via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v219);
      }
    }
  }

  mediaContentProfileAccessControl = [v382 mediaContentProfileAccessControl];
  mediaContentProfileAccessControl2 = [(HMUser *)selfCopy mediaContentProfileAccessControl];
  v224 = HMFEqualObjects();

  if (v224)
  {
    v225 = v374 ^ 1;
  }

  else
  {
    v226 = objc_autoreleasePoolPush();
    v384 = selfCopy;
    v227 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
    {
      v228 = HMFGetLogIdentifier();
      *buf = 138543618;
      v424 = v228;
      v425 = 2112;
      v426 = mediaContentProfileAccessControl;
      _os_log_impl(&dword_19BB39000, v227, OS_LOG_TYPE_DEFAULT, "%{public}@Updated media content profile access control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v226);
    accessories2 = [mediaContentProfileAccessControl accessories];
    if ([accessories2 count])
    {
      v387 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories2, "count")}];
      v413 = 0u;
      v414 = 0u;
      v411 = 0u;
      v412 = 0u;
      v229 = accessories2;
      v230 = [v229 countByEnumeratingWithState:&v411 objects:v434 count:16];
      if (v230)
      {
        v231 = *v412;
        do
        {
          for (j = 0; j != v230; ++j)
          {
            if (*v412 != v231)
            {
              objc_enumerationMutation(v229);
            }

            v233 = *(*(&v411 + 1) + 8 * j);
            uuid3 = [v233 uuid];
            v235 = [home accessoryWithUUID:uuid3];

            if (v235)
            {
              [v387 addObject:v235];
            }

            else
            {
              v236 = objc_autoreleasePoolPush();
              v237 = v384;
              v238 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
              {
                v239 = HMFGetLogIdentifier();
                uuid4 = [v233 uuid];
                *buf = 138543618;
                v424 = v239;
                v425 = 2112;
                v426 = uuid4;
                _os_log_impl(&dword_19BB39000, v238, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v236);
            }
          }

          v230 = [v229 countByEnumeratingWithState:&v411 objects:v434 count:16];
        }

        while (v230);
      }

      v241 = [mediaContentProfileAccessControl mutableCopy];
      [v241 setAccessories:v387];
      v242 = [v241 copy];

      v243 = v242;
    }

    else
    {
      v243 = mediaContentProfileAccessControl;
    }

    mediaContentProfileAccessControl = v243;
    [(HMUser *)v384 setMediaContentProfileAccessControl:?];
    if (home)
    {
      delegate2 = [(HMUser *)v384 delegate];
      if ([delegate2 conformsToProtocol:&unk_1F0F63768])
      {
        v245 = delegate2;
      }

      else
      {
        v245 = 0;
      }

      v246 = v245;

      if (objc_opt_respondsToSelector())
      {
        context2 = [(HMUser *)v384 context];
        queue2 = [context2 queue];
        v407[0] = MEMORY[0x1E69E9820];
        v407[1] = 3221225472;
        v407[2] = __29__HMUser_mergeFromNewObject___block_invoke_364;
        v407[3] = &unk_1E754DE30;
        v407[4] = v384;
        v408 = mediaContentProfileAccessControl;
        v409 = v246;
        v410 = home;
        dispatch_async(queue2, v407);
      }

      else
      {
        v249 = objc_autoreleasePoolPush();
        v250 = v384;
        v251 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
        {
          v252 = HMFGetLogIdentifier();
          *buf = 138543874;
          v424 = v252;
          v425 = 2112;
          v426 = v246;
          v427 = 2112;
          v428 = mediaContentProfileAccessControl;
          _os_log_impl(&dword_19BB39000, v251, OS_LOG_TYPE_DEBUG, "%{public}@No delegate set to notify: %@, media content profile access control via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v249);
      }
    }

    v225 = 1;
  }

  userListeningHistoryUpdateControl = [v382 userListeningHistoryUpdateControl];
  userListeningHistoryUpdateControl2 = [(HMUser *)selfCopy userListeningHistoryUpdateControl];
  v254 = HMFEqualObjects();

  if ((v254 & 1) == 0)
  {
    v255 = objc_autoreleasePoolPush();
    v385 = selfCopy;
    v256 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
    {
      v257 = HMFGetLogIdentifier();
      *buf = 138543618;
      v424 = v257;
      v425 = 2112;
      v426 = userListeningHistoryUpdateControl;
      _os_log_impl(&dword_19BB39000, v256, OS_LOG_TYPE_DEFAULT, "%{public}@Updated user listening history update control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v255);
    accessories3 = [userListeningHistoryUpdateControl accessories];
    if ([accessories3 count])
    {
      v388 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories3, "count")}];
      v405 = 0u;
      v406 = 0u;
      v403 = 0u;
      v404 = 0u;
      v258 = accessories3;
      v259 = [v258 countByEnumeratingWithState:&v403 objects:v433 count:16];
      if (v259)
      {
        v260 = *v404;
        do
        {
          for (k = 0; k != v259; ++k)
          {
            if (*v404 != v260)
            {
              objc_enumerationMutation(v258);
            }

            v262 = *(*(&v403 + 1) + 8 * k);
            uuid5 = [v262 uuid];
            v264 = [home accessoryWithUUID:uuid5];

            if (v264)
            {
              [v388 addObject:v264];
            }

            else
            {
              v265 = objc_autoreleasePoolPush();
              v266 = v385;
              v267 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
              {
                v268 = HMFGetLogIdentifier();
                uuid6 = [v262 uuid];
                *buf = 138543874;
                v424 = v268;
                v425 = 2112;
                v426 = uuid6;
                v427 = 2080;
                v428 = "[HMUser mergeFromNewObject:]";
                _os_log_impl(&dword_19BB39000, v267, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@, %s", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v265);
            }
          }

          v259 = [v258 countByEnumeratingWithState:&v403 objects:v433 count:16];
        }

        while (v259);
      }

      v270 = [userListeningHistoryUpdateControl mutableCopy];
      [v270 setAccessories:v388];
      v271 = [v270 copy];

      v272 = v271;
    }

    else
    {
      v272 = userListeningHistoryUpdateControl;
    }

    userListeningHistoryUpdateControl = v272;
    [(HMUser *)v385 setUserListeningHistoryUpdateControl:?];
    if (home)
    {
      delegate3 = [(HMUser *)v385 delegate];
      if ([delegate3 conformsToProtocol:&unk_1F0F63768])
      {
        v274 = delegate3;
      }

      else
      {
        v274 = 0;
      }

      v275 = v274;

      if (objc_opt_respondsToSelector())
      {
        context3 = [(HMUser *)v385 context];
        queue3 = [context3 queue];
        v399[0] = MEMORY[0x1E69E9820];
        v399[1] = 3221225472;
        v399[2] = __29__HMUser_mergeFromNewObject___block_invoke_367;
        v399[3] = &unk_1E754DE30;
        v399[4] = v385;
        v400 = userListeningHistoryUpdateControl;
        v401 = v275;
        v402 = home;
        dispatch_async(queue3, v399);
      }

      else
      {
        v278 = objc_autoreleasePoolPush();
        v279 = v385;
        v280 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
        {
          v281 = HMFGetLogIdentifier();
          *buf = 138543874;
          v424 = v281;
          v425 = 2112;
          v426 = v275;
          v427 = 2112;
          v428 = userListeningHistoryUpdateControl;
          _os_log_impl(&dword_19BB39000, v280, OS_LOG_TYPE_DEBUG, "%{public}@No delegate set to notify: %@, updated user update listening history via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v278);
      }
    }

    v225 = 1;
  }

  v282 = selfCopy;
  if (v380 && selfCopy && home)
  {
    context4 = [(HMUser *)selfCopy context];
    queue4 = [context4 queue];
    v397[0] = MEMORY[0x1E69E9820];
    v397[1] = 3221225472;
    v397[2] = __29__HMUser_mergeFromNewObject___block_invoke_369;
    v397[3] = &unk_1E754E5C0;
    v397[4] = selfCopy;
    v398 = home;
    dispatch_async(queue4, v397);

    v282 = selfCopy;
  }

  senderCorrelationIdentifier = [(HMUser *)v282 senderCorrelationIdentifier];
  senderCorrelationIdentifier2 = [v382 senderCorrelationIdentifier];
  v287 = HMFEqualObjects();

  v288 = selfCopy;
  if ((v287 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    senderCorrelationIdentifier3 = [v382 senderCorrelationIdentifier];
    senderCorrelationIdentifier = selfCopy->_senderCorrelationIdentifier;
    selfCopy->_senderCorrelationIdentifier = senderCorrelationIdentifier3;

    v288 = selfCopy;
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  photosPersonManagerSettings = [(HMUser *)v288 photosPersonManagerSettings];
  photosPersonManagerSettings2 = [v382 photosPersonManagerSettings];
  if ([photosPersonManagerSettings isEqual:photosPersonManagerSettings2])
  {
    photosPersonManagerZoneUUID = [(HMUser *)selfCopy photosPersonManagerZoneUUID];
    photosPersonManagerZoneUUID2 = [v382 photosPersonManagerZoneUUID];
    v295 = HMFEqualObjects();

    if (v295)
    {
      goto LABEL_159;
    }
  }

  else
  {
  }

  v296 = objc_autoreleasePoolPush();
  v297 = selfCopy;
  v298 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
  {
    v299 = HMFGetLogIdentifier();
    photosPersonManagerSettings3 = [(HMUser *)v297 photosPersonManagerSettings];
    photosPersonManagerSettings4 = [v382 photosPersonManagerSettings];
    photosPersonManagerZoneUUID3 = [(HMUser *)v297 photosPersonManagerZoneUUID];
    photosPersonManagerZoneUUID4 = [v382 photosPersonManagerZoneUUID];
    *buf = 138544386;
    v424 = v299;
    v425 = 2112;
    v426 = photosPersonManagerSettings3;
    v427 = 2112;
    v428 = photosPersonManagerSettings4;
    v429 = 2112;
    v430 = photosPersonManagerZoneUUID3;
    v431 = 2112;
    v432 = photosPersonManagerZoneUUID4;
    _os_log_impl(&dword_19BB39000, v298, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings updated from %@ to %@, zoneUUID updated from %@ to %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v296);
  photosPersonManagerSettings5 = [v382 photosPersonManagerSettings];
  [(HMUser *)v297 setPhotosPersonManagerSettings:photosPersonManagerSettings5];

  photosPersonManagerZoneUUID5 = [v382 photosPersonManagerZoneUUID];
  [(HMUser *)v297 setPhotosPersonManagerZoneUUID:photosPersonManagerZoneUUID5];

  [(HMUser *)v297 configurePhotosPersonManager];
  delegate4 = [(HMUser *)v297 delegate];
  if ([delegate4 conformsToProtocol:&unk_1F0F63768])
  {
    v307 = delegate4;
  }

  else
  {
    v307 = 0;
  }

  v308 = v307;

  if (objc_opt_respondsToSelector())
  {
    context5 = [(HMUser *)v297 context];
    queue5 = [context5 queue];
    v395[0] = MEMORY[0x1E69E9820];
    v395[1] = 3221225472;
    v395[2] = __29__HMUser_mergeFromNewObject___block_invoke_372;
    v395[3] = &unk_1E754E5C0;
    v395[4] = v297;
    v396 = v308;
    dispatch_async(queue5, v395);
  }

  v225 = 1;
LABEL_159:
  needsiTunesMultiUserRepair = [(HMUser *)selfCopy needsiTunesMultiUserRepair];
  if (needsiTunesMultiUserRepair != [v382 needsiTunesMultiUserRepair])
  {
    v312 = objc_autoreleasePoolPush();
    v313 = selfCopy;
    v314 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
    {
      v315 = HMFGetLogIdentifier();
      v316 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v382, "needsiTunesMultiUserRepair")}];
      *buf = 138543618;
      v424 = v315;
      v425 = 2112;
      v426 = v316;
      _os_log_impl(&dword_19BB39000, v314, OS_LOG_TYPE_DEFAULT, "%{public}@Updated needs iTunes repair to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v312);
    -[HMUser setNeedsiTunesMultiUserRepair:](v313, "setNeedsiTunesMultiUserRepair:", [v382 needsiTunesMultiUserRepair]);
    delegate5 = [(HMUser *)v313 delegate];
    if ([delegate5 conformsToProtocol:&unk_1F0F63768])
    {
      v318 = delegate5;
    }

    else
    {
      v318 = 0;
    }

    v319 = v318;

    if (objc_opt_respondsToSelector())
    {
      context6 = [(HMUser *)v313 context];
      queue6 = [context6 queue];
      v393[0] = MEMORY[0x1E69E9820];
      v393[1] = 3221225472;
      v393[2] = __29__HMUser_mergeFromNewObject___block_invoke_375;
      v393[3] = &unk_1E754E5C0;
      v393[4] = v313;
      v394 = v319;
      dispatch_async(queue6, v393);
    }

    v225 = 1;
  }

  supportsSharedHomeHH2AutoMigration = [(HMUser *)selfCopy supportsSharedHomeHH2AutoMigration];
  if (supportsSharedHomeHH2AutoMigration != [v382 supportsSharedHomeHH2AutoMigration])
  {
    v323 = objc_autoreleasePoolPush();
    v324 = selfCopy;
    v325 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
    {
      v326 = HMFGetLogIdentifier();
      [v382 supportsSharedHomeHH2AutoMigration];
      v327 = HMFBooleanToString();
      *buf = 138543618;
      v424 = v326;
      v425 = 2112;
      v426 = v327;
      _os_log_impl(&dword_19BB39000, v325, OS_LOG_TYPE_DEFAULT, "%{public}@Updated supports automatic HH2 migration by owner to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v323);
    -[HMUser setSupportsSharedHomeHH2AutoMigration:](v324, "setSupportsSharedHomeHH2AutoMigration:", [v382 supportsSharedHomeHH2AutoMigration]);
    delegate6 = [(HMUser *)v324 delegate];
    if ([delegate6 conformsToProtocol:&unk_1F0F63768])
    {
      v329 = delegate6;
    }

    else
    {
      v329 = 0;
    }

    v330 = v329;

    if (objc_opt_respondsToSelector())
    {
      context7 = [(HMUser *)v324 context];
      delegateCaller = [context7 delegateCaller];
      v390[0] = MEMORY[0x1E69E9820];
      v390[1] = 3221225472;
      v390[2] = __29__HMUser_mergeFromNewObject___block_invoke_378;
      v390[3] = &unk_1E754E5C0;
      v391 = v330;
      v392 = v324;
      [delegateCaller invokeBlock:v390];
    }

    v225 = 1;
  }

  requiresAdaptiveTemperatureAutomationsDisclosure = [(HMUser *)selfCopy requiresAdaptiveTemperatureAutomationsDisclosure];
  if (requiresAdaptiveTemperatureAutomationsDisclosure != [v382 requiresAdaptiveTemperatureAutomationsDisclosure])
  {
    -[HMUser setRequiresAdaptiveTemperatureAutomationsDisclosure:](selfCopy, "setRequiresAdaptiveTemperatureAutomationsDisclosure:", [v382 requiresAdaptiveTemperatureAutomationsDisclosure]);
    v225 = 1;
  }

  iCloudAltDSID = [(HMUser *)selfCopy iCloudAltDSID];
  iCloudAltDSID2 = [v382 iCloudAltDSID];
  v336 = HMFEqualObjects();

  if ((v336 & 1) == 0)
  {
    iCloudAltDSID3 = [v382 iCloudAltDSID];
    [(HMUser *)selfCopy setiCloudAltDSID:iCloudAltDSID3];
  }

  givenName = [(HMUser *)selfCopy givenName];
  givenName2 = [v382 givenName];
  v340 = HMFEqualObjects();

  if (v340)
  {
    v341 = v336 ^ 1;
  }

  else
  {
    givenName3 = [v382 givenName];
    [(HMUser *)selfCopy setGivenName:givenName3];

    v341 = 1;
  }

  familyName = [(HMUser *)selfCopy familyName];
  familyName2 = [v382 familyName];
  v345 = HMFEqualObjects();

  if (v345)
  {
    if (!v341)
    {
      goto LABEL_189;
    }
  }

  else
  {
    familyName3 = [v382 familyName];
    [(HMUser *)selfCopy setFamilyName:familyName3];
  }

  [(HMUser *)selfCopy _handleSharedUserProfileMetadataUpdated];
  v225 = 1;
LABEL_189:
  settingsInitialized = [(HMUser *)selfCopy settingsInitialized];
  settingsInitialized2 = [v382 settingsInitialized];
  homeManager = [home homeManager];
  isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

  v351 = settingsInitialized ^ settingsInitialized2;
  if (isDaemonRunningWithROARFramework)
  {
    context8 = [(HMUser *)selfCopy context];
    if (context8)
    {
      pendingPrivateSettings = [v382 pendingPrivateSettings];
      v354 = pendingPrivateSettings == 0;

      if (!v354)
      {
        pendingPrivateSettings2 = [v382 pendingPrivateSettings];
        context9 = [(HMUser *)selfCopy context];
        [(HMUser *)selfCopy createConfigureAndMergePrivateSettingsIfNecessary:pendingPrivateSettings2 withContext:context9];

        [v382 setPendingPrivateSettings:0];
      }
    }

    context10 = [(HMUser *)selfCopy context];
    if (context10)
    {
      pendingSharedSettings = [v382 pendingSharedSettings];
      v359 = pendingSharedSettings == 0;

      if (!v359)
      {
        pendingSharedSettings2 = [v382 pendingSharedSettings];
        context11 = [(HMUser *)selfCopy context];
        [(HMUser *)selfCopy createConfigureAndMergeSharedSettingsIfNecessary:pendingSharedSettings2 withContext:context11];

        [v382 setPendingSharedSettings:0];
      }
    }
  }

  else
  {
    settingsController = [(HMUser *)selfCopy settingsController];
    settingsController2 = [v382 settingsController];
    [settingsController mergeWith:settingsController2 settingsInitializedWasModified:v351];

    privateSettingsController = [(HMUser *)selfCopy privateSettingsController];
    privateSettingsController2 = [v382 privateSettingsController];
    [privateSettingsController mergeWith:privateSettingsController2 settingsInitializedWasModified:v351];
  }

  pairingIdentity = [(HMUser *)selfCopy pairingIdentity];
  pairingIdentity2 = [v382 pairingIdentity];
  v368 = HMFEqualObjects();

  if (v368)
  {
    v213 = v351 | v225;
  }

  else
  {
    pairingIdentity3 = [(HMUser *)selfCopy pairingIdentity];
    pairingIdentity4 = [v382 pairingIdentity];
    [(HMUser *)selfCopy _mergeUserPairingIdentityIfNecessary:pairingIdentity3 withNewPairingIdentity:pairingIdentity4];

    v213 = 1;
  }

LABEL_201:
  return v213 & 1;
}

void __29__HMUser_mergeFromNewObject___block_invoke(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2;
  v9[3] = &unk_1E754DE30;
  v8 = *(a1 + 2);
  v4 = *(&v8 + 1);
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

void __29__HMUser_mergeFromNewObject___block_invoke_364(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_365;
  v9[3] = &unk_1E754DE30;
  v8 = *(a1 + 2);
  v4 = *(&v8 + 1);
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

void __29__HMUser_mergeFromNewObject___block_invoke_367(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_368;
  v9[3] = &unk_1E754DE30;
  v8 = *(a1 + 2);
  v4 = *(&v8 + 1);
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

void __29__HMUser_mergeFromNewObject___block_invoke_369(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_370;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __29__HMUser_mergeFromNewObject___block_invoke_372(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_373;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __29__HMUser_mergeFromNewObject___block_invoke_375(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_376;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 supportsSharedHomeHH2AutoMigration];

  return [v1 user:v2 didUpdateSupportsSharedHomeHH2AutoMigration:v3];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_376(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) needsiTunesMultiUserRepair];
    v6 = HMFBooleanToString();
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNeedsiTunesMultiUserRepair : %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) user:*(a1 + 32) didUpdateNeedsiTunesMultiUserRepair:{objc_msgSend(*(a1 + 32), "needsiTunesMultiUserRepair")}];
}

void __29__HMUser_mergeFromNewObject___block_invoke_2_373(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) photosPersonManagerSettings];
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdatePhotosPersonManagerSettings : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 photosPersonManagerSettings];
  [v8 user:v7 didUpdatePhotosPersonManagerSettings:v10];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_370(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated access control via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) notifyDelegateOfAccessControlUpdateForUser:*(a1 + 32)];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_368(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated user listening history update control via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) user:*(a1 + 32) didUpdateUserListeningHistoryUpdateControl:*(a1 + 40) forHome:*(a1 + 56)];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_365(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated media content profile access control via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) user:*(a1 + 32) didUpdateMediaContentProfileAccessControl:*(a1 + 40) forHome:*(a1 + 56)];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 48) user:*(a1 + 32) didUpdateAssistantAccessControl:*(a1 + 40) forHome:*(a1 + 56)];
}

- (BOOL)_mergeWithNewAccessoryInvitations:(id)invitations
{
  invitationsCopy = invitations;
  v5 = [HMObjectMergeCollection alloc];
  pendingAccessoryInvitations = [(HMUser *)self pendingAccessoryInvitations];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:pendingAccessoryInvitations newObjects:invitationsCopy];

  removedObjects = [(HMObjectMergeCollection *)v7 removedObjects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke;
  v15[3] = &unk_1E754C138;
  v15[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  addedObjects = [(HMObjectMergeCollection *)v7 addedObjects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke_361;
  v14[3] = &unk_1E754C138;
  v14[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v7 finalObjects];
  [(HMMutableArray *)self->_pendingAccessoryInvitations setArray:finalObjects];

  if ([(HMObjectMergeCollection *)v7 isModified])
  {
    home = [(HMUser *)self home];
    [home notifyDelegateOfAccesoryInvitationsUpdateForUser:self];
  }

  isModified = [(HMObjectMergeCollection *)v7 isModified];

  return isModified;
}

void __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory invitation via user merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke_361(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added accessory invitation via user merge: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 accessory];
  v9 = [*(a1 + 32) home];
  v10 = [v9 accessories];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 hmf_firstObjectWithUniqueIdentifier:v11];

  [v3 setAccessory:v12];
}

- (HMUser)initWithCoder:(id)coder
{
  v131 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  if (!v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v118 = v18;
      v119 = 2112;
      v120 = 0;
      v121 = 2112;
      v122 = v5;
      v19 = "%{public}@Failed to initialize from decoded uuid: %@/%@";
      v20 = v17;
      v21 = 32;
LABEL_26:
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_27:

    objc_autoreleasePoolPop(v16);
    selfCopy = 0;
    goto LABEL_40;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
  v8 = [coderCopy decodeBoolForKey:@"HM.isCurrentUser"];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      v10 = +[HMLocalization sharedManager];
      v7 = [v10 getLocalizedString:@"CURRENT_USER"];

      goto LABEL_5;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v118 = v18;
      v119 = 2112;
      v120 = 0;
      v121 = 1024;
      LODWORD(v122) = 0;
      v19 = "%{public}@Failed to initialize from decoded name: %@, isCurrentUser: %{BOOL}d";
      v20 = v17;
      v21 = 28;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_5:
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v13 = [(HMUser *)self initWithUserID:v11 name:v7 uuid:v6 home:v12];
  v14 = v13;
  if (v13)
  {
    v13->_currentUser = v9;
    v110 = v11;
    v111 = v7;
    if ([coderCopy containsValueForKey:@"HM.userAccessAllowed"])
    {
      v15 = [coderCopy decodeBoolForKey:@"HM.userAccessAllowed"];
    }

    else
    {
      v15 = 1;
    }

    v106 = v12;
    v108 = v5;
    v22 = [coderCopy decodeBoolForKey:@"HM.isOwnerUser"];
    v112 = [coderCopy decodeBoolForKey:@"isAdminUser"];
    v23 = [coderCopy decodeBoolForKey:@"HM.isUserAllowedRemoteAccess"];
    LOBYTE(v24) = [coderCopy decodeBoolForKey:@"HM.u.announce.access"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAudioAnalysisUserDropInAccessLevelCodingKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    unsignedIntegerValue = [v27 unsignedIntegerValue];
    v107 = v6;
    if ([coderCopy containsValueForKey:@"HMHomeAccessControlOverrideCodingKey"])
    {
      v28 = [coderCopy decodeIntegerForKey:@"HMHomeAccessControlOverrideCodingKey"];
      v29 = objc_autoreleasePoolPush();
      v30 = v14;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v118 = v32;
        v119 = 2048;
        v120 = v28;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Overriding Home Access Control for current user to 0x%08lx", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v24 = (v28 >> 4) & 1;
      v15 = v28 & 1;
      v23 = (v28 >> 3) & 1;
      v112 = (v28 >> 1) & 1;
      v33 = (v28 >> 2) & 1;
    }

    else
    {
      v33 = v22;
    }

    v102 = v24;
    v103 = v23;
    v109 = [coderCopy decodeBoolForKey:@"HM.u.isRG"];
    v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.RG.homeAccessSettings"];
    v34 = objc_autoreleasePoolPush();
    v105 = v14;
    v35 = v14;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = HMFGetLogIdentifier();
      v38 = HMFBooleanToString();
      v39 = HMFBooleanToString();
      v40 = HMFBooleanToString();
      HMFBooleanToString();
      v101 = v34;
      v41 = v33;
      v43 = v42 = v15;
      *buf = 138544898;
      v118 = v37;
      v119 = 2112;
      v120 = v110;
      v121 = 2112;
      v122 = v111;
      v123 = 2112;
      v124 = v38;
      v125 = 2112;
      v126 = v39;
      v127 = 2112;
      v128 = v40;
      v129 = 2112;
      v130 = v43;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEBUG, "%{public}@userID: %@, name: %@, isCurrentUser: %@, isOwner: %@, isAdmin: %@, isRG: %@", buf, 0x48u);

      v15 = v42;
      v33 = v41;
      v34 = v101;
    }

    objc_autoreleasePoolPop(v34);
    v44 = [HMHomeAccessControl alloc];
    v45 = [HMUserPresenceAuthorization authWithCoder:coderCopy];
    v46 = [HMUserPresenceCompute computeWithCoder:coderCopy];
    v47 = [HMUserCameraAccess accessWithCoder:coderCopy];
    LOBYTE(v100) = v109;
    LOBYTE(v99) = v102;
    v48 = [(HMHomeAccessControl *)v44 initWithUser:v35 allowAccess:v15 owner:v33 administratorPrivilege:v112 remoteAccess:v103 presenceAuthStatus:v45 presenceComputeStatus:v46 announceAccess:v99 camerasAccess:v47 audioAnalysisUserDropInAccessLevel:unsignedIntegerValue restrictedGuest:v100 restrictedGuestAccessSettings:v114];
    v49 = v35[7];
    v35[7] = v48;

    if ((v15 & 1) == 0)
    {
      if ([coderCopy containsValueForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"])
      {
        v50 = [coderCopy decodeIntegerForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"];
      }

      else
      {
        v50 = 1;
      }

      v52 = objc_autoreleasePoolPush();
      v53 = v35;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50];
        *buf = 138543618;
        v118 = v55;
        v119 = 2112;
        v120 = v56;
        _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Access is not allowed due to : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
      [v35[7] setAccessNotAllowedReasonCode:v50];
    }

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.assistantAccessControl"];
    v58 = v35[8];
    v35[8] = v57;

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"HM.u.mu.accessories"];

    if (v62)
    {
      v63 = [[HMMediaContentProfileAccessControl alloc] initWithUser:v35 accessories:v62];
      v64 = v35[9];
      v35[9] = v63;
    }

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"HM.u.mc.accessories"];

    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __24__HMUser_initWithCoder___block_invoke;
    v115[3] = &unk_1E754DFD0;
    v69 = v35;
    v116 = v69;
    v113 = v68;
    v70 = [v68 na_map:v115];
    if (v70)
    {
      v71 = [[HMUserListeningHistoryUpdateControl alloc] initWithAccessories:v70];
      v72 = v69[10];
      v69[10] = v71;
    }

    v5 = v108;
    if ([v69 isCurrentUser])
    {
      v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.u.announce.Settings"];
      v74 = v69[16];
      v69[16] = v73;
    }

    v75 = MEMORY[0x1E695DFD8];
    v76 = objc_opt_class();
    v77 = objc_opt_class();
    v78 = [v75 setWithObjects:{v76, v77, objc_opt_class(), 0}];
    v79 = [coderCopy decodeObjectOfClasses:v78 forKey:@"HM2.u.s.private"];
    v80 = v69[28];
    v69[28] = v79;

    v81 = [coderCopy decodeObjectOfClasses:v78 forKey:@"HM2.u.s.shared"];
    v82 = v69[29];
    v69[29] = v81;

    [v69[24] decodeWithCoder:coderCopy];
    [v69[25] decodeWithCoder:coderCopy];
    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.senderCorrelationIdentifier"];
    v84 = v69[3];
    v69[3] = v83;

    v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.photosPersonManagerSettings"];
    v86 = v69[18];
    v69[18] = v85;

    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.photosPersonManagerZoneUUID"];
    v88 = v69[19];
    v69[19] = v87;

    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.u.itunesRepair"];
    *(v69 + 33) = [v89 BOOLValue];

    *(v69 + 34) = [coderCopy decodeBoolForKey:@"HMSettingsContainerSettingsInitializedKey"];
    *(v69 + 35) = [coderCopy decodeBoolForKey:@"HM.u.automaticHH2migration"];
    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.pairingIdentity"];
    v91 = v69[13];
    v69[13] = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.useriCloudAltDSID"];
    v93 = v69[20];
    v69[20] = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.userGivenName"];
    v95 = v69[21];
    v69[21] = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.userFamilyName"];
    v97 = v69[22];
    v69[22] = v96;

    *(v69 + 36) = [coderCopy decodeBoolForKey:@"HM.u.requiresATADisclosureCodingKey"];
    v12 = v106;
    v6 = v107;
    v11 = v110;
    v7 = v111;
    v14 = v105;
  }

  self = v14;

  selfCopy = self;
LABEL_40:

  return selfCopy;
}

id __24__HMUser_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 accessoryWithUUID:v3];

  return v5;
}

- (id)logIdentifier
{
  uniqueIdentifier = [(HMUser *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_handleSharedUserProfileMetadataUpdated
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(HMUser *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63768])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling sharedUserProfileMetadataUpdatedForUser on client delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (objc_opt_respondsToSelector())
  {
    context = [(HMUser *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__HMUser__handleSharedUserProfileMetadataUpdated__block_invoke;
    v12[3] = &unk_1E754E5C0;
    v13 = v5;
    v14 = selfCopy;
    [delegateCaller invokeBlock:v12];
  }
}

- (void)fetchProfilePhotoAndCropRect:(id)rect
{
  v37 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  if (!rectCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v24);
  }

  v5 = rectCopy;
  context = [(HMUser *)self context];
  if (context)
  {
    v31 = @"kUserUUIDKey";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v32 = uUIDString;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:uuid2];
    v14 = [v10 initWithName:@"HMU.fetchProfilePhoto" destination:v13 payload:v9];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke;
    v28 = &unk_1E754DE00;
    selfCopy2 = self;
    v30 = v5;
    [v14 setResponseHandler:&v25];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMUser fetchProfilePhotoAndCropRect:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

void __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = 0;
LABEL_3:
    v8 = 0;
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v12;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@profile photo response %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v8 = [v6 valueForKey:@"HM.u.profilePhotoData"];
  v29 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v7 = [v6 hmf_unarchivedObjectForKey:@"HM.u.profilePhotoCropRect" ofClasses:v13];

  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = 0;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile photo from response data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [MEMORY[0x1E696ABC0] hmErrorWithCode:-1 description:@"No profile photo" reason:@"Unable to find or decode profile photo" suggestion:0];

    goto LABEL_3;
  }

LABEL_7:
  v14 = [*(a1 + 32) context];
  v15 = [v14 queue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_340;
  v24[3] = &unk_1E754D7A8;
  v16 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v25 = v8;
  v26 = v7;
  v27 = v5;
  v28 = v16;
  v17 = v5;
  v18 = v7;
  v19 = v8;
  dispatch_async(v15, v24);
}

void __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_340(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_2;
  v9[3] = &unk_1E754D208;
  v4 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = a1[7];
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

- (void)fetchProfilePhoto:(id)photo
{
  v37 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (!photoCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v24);
  }

  v5 = photoCopy;
  context = [(HMUser *)self context];
  if (context)
  {
    v31 = @"kUserUUIDKey";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v32 = uUIDString;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:uuid2];
    v14 = [v10 initWithName:@"HMU.fetchProfilePhoto" destination:v13 payload:v9];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __28__HMUser_fetchProfilePhoto___block_invoke;
    v28 = &unk_1E754DE00;
    selfCopy2 = self;
    v30 = v5;
    [v14 setResponseHandler:&v25];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMUser fetchProfilePhoto:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

void __28__HMUser_fetchProfilePhoto___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_6;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@profile photo response %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v7 = [v6 valueForKey:@"HM.u.profilePhotoData"];
  if (!v7)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile photo from response data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [MEMORY[0x1E696ABC0] hmErrorWithCode:-1 description:@"No profile photo" reason:@"Unable to find or decode profile photo" suggestion:0];

    goto LABEL_2;
  }

LABEL_6:
  v12 = [*(a1 + 32) context];
  v13 = [v12 queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __28__HMUser_fetchProfilePhoto___block_invoke_338;
  v21[3] = &unk_1E754D208;
  v14 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v23 = v5;
  v24 = v14;
  v22 = v7;
  v15 = v5;
  v16 = v7;
  dispatch_async(v13, v21);
}

void __28__HMUser_fetchProfilePhoto___block_invoke_338(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__HMUser_fetchProfilePhoto___block_invoke_2;
  v4[3] = &unk_1E754E0F8;
  v7 = a1[7];
  v5 = a1[5];
  v6 = a1[6];
  [v3 invokeBlock:v4];
}

- (void)setPhotosPersonManagerZoneUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
  photosPersonManagerZoneUUID = self->_photosPersonManagerZoneUUID;
  self->_photosPersonManagerZoneUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)photosPersonManagerZoneUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManagerZoneUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPhotosPersonManagerSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  v4 = [settingsCopy copy];
  photosPersonManagerSettings = self->_photosPersonManagerSettings;
  self->_photosPersonManagerSettings = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMPhotosPersonManagerSettings)photosPersonManagerSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManagerSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPhotosPersonManager:(id)manager
{
  managerCopy = manager;
  os_unfair_lock_lock_with_options();
  photosPersonManager = self->_photosPersonManager;
  self->_photosPersonManager = managerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMPhotosPersonManager)photosPersonManager
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNeedsiTunesMultiUserRepair:(BOOL)repair completion:(id)completion
{
  repairCopy = repair;
  v26[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  home = [(HMUser *)self home];
  currentUser = [home currentUser];
  v9 = [currentUser isEqual:self];

  if (v9)
  {
    v25 = @"HM.u.itunesRepair";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:repairCopy];
    v26[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v12 = MEMORY[0x1E69A2A10];
    messageDestination = [(HMUser *)self messageDestination];
    v14 = [v12 messageWithName:@"HM.itunesRepair" destination:messageDestination payload:v11];

    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __51__HMUser_setNeedsiTunesMultiUserRepair_completion___block_invoke;
    v21 = &unk_1E754CFF8;
    objc_copyWeak(&v23, &location);
    v22 = completionCopy;
    [v14 setResponseHandler:&v18];
    v15 = [(HMUser *)self context:v18];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"User is not current user" reason:@"Can only set for current user." suggestion:0];
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

void __51__HMUser_setNeedsiTunesMultiUserRepair_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v6 = [WeakRetained context];
    v7 = [v6 queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__HMUser_setNeedsiTunesMultiUserRepair_completion___block_invoke_2;
    v8[3] = &unk_1E754E458;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)sendClientShareRepairRequest:(id)request containerID:(id)d completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dCopy = d;
  completionCopy = completion;
  context = [(HMUser *)self context];
  if (!completionCopy)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser sendClientShareRepairRequest:containerID:completion:]", @"completion"];
    v39 = objc_autoreleasePoolPush();
    selfCopy = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v42;
      v52 = 2112;
      v53 = v38;
      _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v38 userInfo:0];
    objc_exception_throw(v43);
  }

  v12 = context;
  if (context)
  {
    home = [(HMUser *)self home];
    v14 = home;
    if (home && ([home uuid], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      currentUser = [v14 currentUser];
      owner = [v14 owner];
      v18 = [currentUser isEqual:owner];

      if (v18)
      {
        if (requestCopy)
        {
          v48[0] = @"HM.u.to";
          uuid = [(HMUser *)self uuid];
          uUIDString = [uuid UUIDString];
          v49[0] = uUIDString;
          v49[1] = dCopy;
          v48[1] = @"HM.u.container";
          v48[2] = @"HM.u.home";
          uuid2 = [v14 uuid];
          uUIDString2 = [uuid2 UUIDString];
          v49[2] = uUIDString2;
          v48[3] = @"HM.u.repairInfo";
          v22 = encodeRootObject(requestCopy);
          v49[3] = v22;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];

          v23 = objc_alloc(MEMORY[0x1E69A2A10]);
          v24 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid3 = [(HMUser *)self uuid];
          v26 = [v24 initWithTarget:uuid3];
          v27 = [v23 initWithName:@"HM.shareRepair" destination:v26 payload:v44];

          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __62__HMUser_sendClientShareRepairRequest_containerID_completion___block_invoke;
          v46[3] = &unk_1E754C0F0;
          v47 = completionCopy;
          [v27 setResponseHandler:v46];
          messageDispatcher = [v12 messageDispatcher];
          [messageDispatcher sendMessage:v27];

          goto LABEL_16;
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"Repair request is missing";
        v31 = @"Need valid repair request.";
      }

      else
      {
        v29 = MEMORY[0x1E696ABC0];
        v30 = @"Current User is not owner";
        v31 = @"Can only send from owner user.";
      }

      v32 = 3;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = @"Home is invalid";
      v31 = @"Valid home not found.";
      v32 = 2;
    }

    v37 = [v29 hmErrorWithCode:v32 description:v30 reason:v31 suggestion:0];
    (*(completionCopy + 2))(completionCopy, v37);

    goto LABEL_16;
  }

  v33 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v36;
    v52 = 2080;
    v53 = "[HMUser sendClientShareRepairRequest:containerID:completion:]";
    _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(completionCopy + 2))(completionCopy, v14);
LABEL_16:
}

- (void)sendClientShareURL:(id)l shareToken:(id)token containerID:(id)d fromUser:(id)user completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  lCopy = l;
  tokenCopy = token;
  dCopy = d;
  userCopy = user;
  completionCopy = completion;
  context = [(HMUser *)self context];
  if (!completionCopy)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser sendClientShareURL:shareToken:containerID:fromUser:completion:]", @"completion"];
    v46 = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v49;
      v66 = 2112;
      v67 = v45;
      _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v46);
    v50 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v45 userInfo:0];
    objc_exception_throw(v50);
  }

  v18 = context;
  if (!context)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = dCopy;
      v37 = tokenCopy;
      v39 = v38 = lCopy;
      *buf = 138543618;
      v65 = v39;
      v66 = 2080;
      v67 = "[HMUser sendClientShareURL:shareToken:containerID:fromUser:completion:]";
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);

      lCopy = v38;
      tokenCopy = v37;
      dCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    goto LABEL_14;
  }

  if (!userCopy || ([userCopy uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"From user is invalid" reason:@"Valid from user is required." suggestion:0];
LABEL_14:
    v21 = v32;
    completionCopy[2](completionCopy, 0, v32);
    goto LABEL_15;
  }

  home = [(HMUser *)self home];
  v21 = home;
  if (!home || ([home uuid], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = @"Home is invalid";
    v42 = @"Valid home not found.";
    v43 = 2;
LABEL_17:
    v44 = [v40 hmErrorWithCode:v43 description:v41 reason:v42 suggestion:0];
    completionCopy[2](completionCopy, 0, v44);

    goto LABEL_15;
  }

  if (!lCopy)
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = @"Share URL is missing";
    v42 = @"Need share URL.";
    v43 = 3;
    goto LABEL_17;
  }

  v61 = 0;
  v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:lCopy requiringSecureCoding:1 error:&v61];
  v24 = v61;
  if (v23)
  {
    v62[0] = @"HM.u.to";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v63[0] = uUIDString;
    v62[1] = @"HM.u.from";
    uuid2 = [userCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v63[1] = uUIDString2;
    v63[2] = v23;
    v62[2] = @"HM.u.url";
    v62[3] = @"HM.u.token";
    v63[3] = tokenCopy;
    v63[4] = dCopy;
    v62[4] = @"HM.u.container";
    v62[5] = @"HM.u.home";
    [v21 uuid];
    v25 = v57 = lCopy;
    [v25 UUIDString];
    v26 = v58 = v24;
    v63[5] = v26;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:6];

    v56 = objc_alloc(MEMORY[0x1E69A2A10]);
    v27 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid3 = [(HMUser *)self uuid];
    v29 = [v27 initWithTarget:uuid3];
    v30 = [v56 initWithName:@"HM.shareClientPayload" destination:v29 payload:v53];

    lCopy = v57;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __72__HMUser_sendClientShareURL_shareToken_containerID_fromUser_completion___block_invoke;
    v59[3] = &unk_1E754C0F0;
    v60 = completionCopy;
    [v30 setResponseHandler:v59];
    messageDispatcher = [v18 messageDispatcher];
    [messageDispatcher sendMessage:v30];

    v24 = v58;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v24);
  }

LABEL_15:
}

void __72__HMUser_sendClientShareURL_shareToken_containerID_fromUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 hmf_dataForKey:@"HM.u.clientInfo"];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchShareLookupInfo:(id)info
{
  v37 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!infoCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v24);
  }

  v5 = infoCopy;
  context = [(HMUser *)self context];
  if (context)
  {
    v31 = @"kUserUUIDKey";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v32 = uUIDString;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:uuid2];
    v14 = [v10 initWithName:@"HM.shareLookup" destination:v13 payload:v9];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __31__HMUser_fetchShareLookupInfo___block_invoke;
    v28 = &unk_1E754DE00;
    selfCopy2 = self;
    v30 = v5;
    [v14 setResponseHandler:&v25];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMUser fetchShareLookupInfo:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

void __31__HMUser_fetchShareLookupInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@share lookup response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x1E696ACD0];
    v13 = objc_opt_class();
    v14 = [v6 objectForKeyedSubscript:@"HM.shareLookupInfoKey"];
    v21 = 0;
    v7 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v21];
    v15 = v21;

    if (!v7)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive user share lookup info from response data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"No share lookup info" reason:@"Unable to find or decode share lookup" suggestion:0];

      v15 = v20;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllPairingIdentitiesWithCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMUser *)self context];
  if (context)
  {
    if (!handlerCopy)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v23);
    }

    v30 = @"kUserUUIDKey";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v31 = uUIDString;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMUser *)self uuid];
    v12 = [v10 initWithTarget:uuid2];
    v13 = [v9 initWithName:@"HM.u.legacy.pairingIdentities" destination:v12 payload:v8];

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __57__HMUser_fetchAllPairingIdentitiesWithCompletionHandler___block_invoke;
    v27 = &unk_1E754DE00;
    selfCopy2 = self;
    v29 = handlerCopy;
    [v13 setResponseHandler:&v24];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v18;
      v34 = 2080;
      v35 = "[HMUser fetchAllPairingIdentitiesWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __57__HMUser_fetchAllPairingIdentitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) uuid];
      *buf = 138543874;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve pairing identity for user : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = MEMORY[0x1E695DFD8];
      v36[0] = objc_opt_class();
      v36[1] = objc_opt_class();
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v17 = [v15 setWithArray:v16];
      v35 = 0;
      v18 = [v14 unarchivedObjectOfClasses:v17 fromData:v13 error:&v35];
      v19 = v35;

      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (v18)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          [*(a1 + 32) uuid];
          v25 = v34 = v20;
          *buf = 138543874;
          v38 = v24;
          v39 = 2112;
          v40 = v25;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved pairing identities for User : %@ / %@", buf, 0x20u);

          v20 = v34;
        }

        objc_autoreleasePoolPop(v20);
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v31;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identities for user from encoded pairing identity data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v32 = *(a1 + 40);
        v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v32 + 16))(v32, 0, v33);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@The payload did not contain any pairing identities", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = *(a1 + 40);
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      (*(v30 + 16))(v30, 0, v19);
    }
  }
}

- (void)pairingIdentityWithCompletionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMUser *)self context];
  if (context)
  {
    if (!handlerCopy)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v23);
    }

    v30 = @"kUserUUIDKey";
    uuid = [(HMUser *)self uuid];
    uUIDString = [uuid UUIDString];
    v31 = uUIDString;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMUser *)self uuid];
    v12 = [v10 initWithTarget:uuid2];
    v13 = [v9 initWithName:@"HM.u.pairingIdentity" destination:v12 payload:v8];

    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __47__HMUser_pairingIdentityWithCompletionHandler___block_invoke;
    v27 = &unk_1E754DE00;
    selfCopy2 = self;
    v29 = handlerCopy;
    [v13 setResponseHandler:&v24];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v18;
      v34 = 2080;
      v35 = "[HMUser pairingIdentityWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

void __47__HMUser_pairingIdentityWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v28 = 0;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v28];
      v15 = v28;
      v16 = v15;
      if (!v14)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 32);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v30 = v25;
          v31 = 2112;
          v32 = v16;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identity for user from encoded pairing identity data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v26 = *(a1 + 40);
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v26 + 16))(v26, 0, v27);

        goto LABEL_15;
      }

      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) setPairingIdentity:v16];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) uuid];
      *buf = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved pairing identity for User : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    (*(*(a1 + 40) + 16))();
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) uuid];
    *buf = 138543874;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve pairing identity for user : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 40) + 16))();
LABEL_16:
}

- (void)_updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler
{
  handlerCopy = handler;
  home = [(HMUser *)self home];
  userID = [(HMUser *)self userID];
  [home updateForUser:userID presenceAuthorizationStatus:status completionHandler:handlerCopy];
}

- (void)updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMUser *)self context];
  if (!handlerCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updatePresenceAuthorizationStatus:completionHandler:]", @"completion"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMUser_updatePresenceAuthorizationStatus_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    statusCopy = status;
    v22 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2080;
      v27 = "[HMUser updatePresenceAuthorizationStatus:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (BOOL)mergePendingAccessoryInvitationsWithOutgoingInvitation:(id)invitation
{
  selfCopy = self;
  v4 = [(HMUser *)self _filterAccessoryInvitationsFromOutgoingInvitation:invitation];
  LOBYTE(selfCopy) = [(HMUser *)selfCopy _mergeWithNewAccessoryInvitations:v4];

  return selfCopy;
}

- (void)setPendingAccessoryInvitationsWithOutgoingInvitation:(id)invitation
{
  invitationCopy = invitation;
  os_unfair_lock_lock_with_options();
  pendingAccessoryInvitations = self->_pendingAccessoryInvitations;
  v5 = [(HMUser *)self _filterAccessoryInvitationsFromOutgoingInvitation:invitationCopy];
  [(HMMutableArray *)pendingAccessoryInvitations setArray:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_filterAccessoryInvitationsFromOutgoingInvitation:(id)invitation
{
  v17 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessoryInvitations = [invitationCopy accessoryInvitations];
  v6 = [accessoryInvitations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(accessoryInvitations);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 state] != 1)
        {
          [array addObject:v10];
        }
      }

      v7 = [accessoryInvitations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)pendingAccessoryInvitations
{
  os_unfair_lock_lock_with_options();
  array = [(HMMutableArray *)self->_pendingAccessoryInvitations array];
  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (id)senderCorrelationIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_senderCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentUser:(BOOL)user
{
  os_unfair_lock_lock_with_options();
  self->_currentUser = user;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCurrentUser
{
  os_unfair_lock_lock_with_options();
  currentUser = self->_currentUser;
  os_unfair_lock_unlock(&self->_lock);
  return currentUser;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (IDSURI)userIDSURI
{
  userID = [(HMUser *)self userID];
  if (userID && IDSFoundationLibraryCore_45308(0))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getIDSURIClass_softClass;
    v11 = getIDSURIClass_softClass;
    if (!getIDSURIClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getIDSURIClass_block_invoke;
      v7[3] = &unk_1E754CB30;
      v7[4] = &v8;
      __getIDSURIClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithUnprefixedURI:userID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setUserID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:dCopy];
  userID = self->_userID;
  self->_userID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)userID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateUserListeningHistoryUpdateControl:(id)control forHome:(id)home completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  homeCopy = home;
  handlerCopy = handler;
  if (!homeCopy)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v19;
      v20 = "%{public}@nil home value on ULH update";
LABEL_10:
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    context = [(HMUser *)selfCopy2 context];
    delegateCaller = [context delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:handlerCopy error:v21];

    goto LABEL_12;
  }

  if (!controlCopy)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v19;
      v20 = "%{public}@nil ULH value on ULH update";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  context = [controlCopy copy];
  context2 = [(HMUser *)self context];
  if (!handlerCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateUserListeningHistoryUpdateControl:forHome:completionHandler:]", @"completionHandler"];
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v31;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v13 = context2;
  if (context2)
  {
    queue = [context2 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v37 = handlerCopy;
    v34 = homeCopy;
    context = context;
    v35 = context;
    delegateCaller = v13;
    v36 = delegateCaller;
    dispatch_async(queue, block);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v25;
      v40 = 2080;
      v41 = "[HMUser updateUserListeningHistoryUpdateControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v26);

    delegateCaller = 0;
  }

LABEL_12:
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke(id *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_8:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_9;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_8;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[6];
    *buf = 138543618;
    v43 = v6;
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Will update user listening history update %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[6] accessories];
  v31 = HMAccessoryUUIDsAsStringForAccessories(v8);

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v11 = [v9 initWithTarget:v10];

  v12 = MEMORY[0x1E69A2A10];
  v40[1] = @"kUserUUIDKey";
  v41[0] = v31;
  v40[0] = @"accessories";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v41[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v16 = [v12 messageWithName:@"HMU.mc" destination:v11 payload:v15];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_280;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v39, buf);
  v37 = a1[6];
  v38 = a1[8];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_281;
  v32[3] = &unk_1E754E480;
  v22 = v19;
  v33 = v22;
  v23 = v20;
  v34 = v23;
  v24 = v17;
  v35 = v24;
  [v16 setResponseHandler:v32];
  v25 = [a1[7] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);

LABEL_9:
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_280(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated user listening history update control %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) copy];
    [v6 setUserListeningHistoryUpdateControl:v10];
  }

  v11 = [WeakRetained context];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 40) error:v3];
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_281(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)userListeningHistoryUpdateControlForHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    home = [(HMUser *)self home];
    v7 = [v5 isEqual:home];

    if (v7)
    {
      userListeningHistoryUpdateControl = [(HMUser *)self userListeningHistoryUpdateControl];
    }

    else
    {
      userListeningHistoryUpdateControl = 0;
    }

    return userListeningHistoryUpdateControl;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setUserListeningHistoryUpdateControl:v11, v12];
  }

  return result;
}

- (void)setUserListeningHistoryUpdateControl:(id)control
{
  v4 = [control copy];
  os_unfair_lock_lock_with_options();
  userListeningHistoryUpdateControl = self->_userListeningHistoryUpdateControl;
  self->_userListeningHistoryUpdateControl = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMUserListeningHistoryUpdateControl)userListeningHistoryUpdateControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userListeningHistoryUpdateControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateMediaContentProfileAccessControl:(id)control forHome:(id)home completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  homeCopy = home;
  handlerCopy = handler;
  if (!controlCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!homeCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateMediaContentProfileAccessControl:forHome:completionHandler:]", @"completionHandler"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v11 = handlerCopy;
  v12 = [controlCopy copy];
  context = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v14 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v31 = v11;
    v28 = homeCopy;
    v29 = v12;
    v30 = v14;
    dispatch_async(queue, block);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v19;
      v34 = 2080;
      v35 = "[HMUser updateMediaContentProfileAccessControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v20);
  }
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke(id *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_8:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_9;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_8;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[6];
    *buf = 138543618;
    v44 = v6;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Will update media content profile access control %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[6] accessories];
  v32 = HMAccessoryUUIDsAsStringForAccessories(v8);

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v31 = [v9 initWithTarget:v10];

  v11 = MEMORY[0x1E69A2A10];
  v41[0] = @"mediaContentAC";
  v12 = encodeRootObject(a1[6]);
  v42[0] = v12;
  v42[1] = v32;
  v41[1] = @"accessories";
  v41[2] = @"kUserUUIDKey";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v42[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v16 = [v11 messageWithName:@"HMU.mu" destination:v31 payload:v15];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_278;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v40, buf);
  v38 = a1[6];
  v39 = a1[8];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_279;
  v33[3] = &unk_1E754E480;
  v22 = v19;
  v34 = v22;
  v23 = v20;
  v35 = v23;
  v24 = v17;
  v36 = v24;
  [v16 setResponseHandler:v33];
  v25 = [a1[7] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);

LABEL_9:
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_278(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated media content profile access control %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setMediaContentProfileAccessControl:*(a1 + 32)];
  }

  v10 = [WeakRetained context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v3];
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_279(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)mediaContentProfileAccessControlForHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    home = [(HMUser *)self home];
    v7 = [v5 isEqual:home];

    if (v7)
    {
      mediaContentProfileAccessControl = [(HMUser *)self mediaContentProfileAccessControl];
    }

    else
    {
      mediaContentProfileAccessControl = 0;
    }

    return mediaContentProfileAccessControl;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setMediaContentProfileAccessControl:v11, v12];
  }

  return result;
}

- (void)setMediaContentProfileAccessControl:(id)control
{
  controlCopy = control;
  v4 = [controlCopy copy];
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_mediaContentProfileAccessControl, v4);
  [v4 setUser:self];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaContentProfileAccessControl)mediaContentProfileAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaContentProfileAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)assistantAccessControlForHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    home = [(HMUser *)self home];
    v7 = [v5 isEqual:home];

    if (v7)
    {
      assistantAccessControl = [(HMUser *)self assistantAccessControl];
    }

    else
    {
      assistantAccessControl = 0;
    }

    return assistantAccessControl;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setAnnounceUserSettings:v11, v12];
  }

  return result;
}

- (void)setAnnounceUserSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  announceUserSettings = self->_announceUserSettings;
  self->_announceUserSettings = settingsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAnnounceUserSettings)announceUserSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_announceUserSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateAnnounceUserSettings:(id)settings forHome:(id)home completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  homeCopy = home;
  handlerCopy = handler;
  if (!settingsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!homeCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateAnnounceUserSettings:forHome:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v11 = handlerCopy;
  context = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v30 = v11;
    v27 = homeCopy;
    v28 = settingsCopy;
    v29 = v13;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v18;
      v33 = 2080;
      v34 = "[HMUser updateAnnounceUserSettings:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v19);
  }
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke(id *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] isCurrentUser];
  v3 = a1[4];
  if (v2)
  {
    v4 = [v3 home];
    if (v4)
    {
      if ([a1[5] isEqual:v4])
      {
        v5 = objc_autoreleasePoolPush();
        v6 = a1[4];
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v9 = [a1[4] announceUserSettings];
          v10 = a1[6];
          *buf = 138543874;
          v45 = v8;
          v46 = 2112;
          v47 = v9;
          v48 = 2112;
          v49 = v10;
          _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating Announce User Settings from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v5);
        v11 = MEMORY[0x1E69A2A10];
        v12 = [a1[4] messageDestination];
        v42 = @"HM.u.announce.Settings";
        v13 = encodeRootObject(a1[6]);
        v43 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v15 = [v11 messageWithName:@"HM.u.announce.settings.update" destination:v12 payload:v14];

        objc_initWeak(buf, a1[4]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_276;
        aBlock[3] = &unk_1E754D988;
        objc_copyWeak(&v41, buf);
        v39 = a1[6];
        v40 = a1[8];
        v16 = _Block_copy(aBlock);
        v17 = [a1[4] context];
        v18 = [v17 pendingRequests];

        v19 = [v15 identifier];
        v20 = _Block_copy(v16);
        [v18 addCompletionBlock:v20 forIdentifier:v19];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_277;
        v34[3] = &unk_1E754E480;
        v21 = v18;
        v35 = v21;
        v22 = v19;
        v36 = v22;
        v23 = v16;
        v37 = v23;
        [v15 setResponseHandler:v34];
        v24 = [a1[7] messageDispatcher];
        [v24 sendMessage:v15 completionHandler:0];

        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);

        goto LABEL_13;
      }

      v28 = [a1[4] context];
      v29 = [v28 delegateCaller];
      v30 = a1[8];
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    }

    else
    {
      v28 = [a1[4] context];
      v29 = [v28 delegateCaller];
      v30 = a1[8];
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    }

    v32 = v31;
    [v29 callCompletion:v30 error:v31];

LABEL_13:
    return;
  }

  v33 = [v3 context];
  v25 = [v33 delegateCaller];
  v26 = a1[8];
  v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  [v25 callCompletion:v26 error:v27];
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_276(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAnnounceUserSettings:*(a1 + 32)];
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v7 announceUserSettings];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated Announce Settings to %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = [v5 context];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 40) error:v3];
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_277(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleUpdatedAssistantAccessControl:(id)control
{
  v89 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  context = [(HMUser *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [controlCopy identifier];
  v8 = [pendingRequests retrieveCompletionBlockForIdentifier:identifier];

  if (v8)
  {
LABEL_2:
    [controlCopy respondWithPayload:0];
    goto LABEL_3;
  }

  v9 = [controlCopy dataForKey:@"assistantAC"];
  if (v9)
  {
    v10 = v9;
    v83 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v83];
    v12 = v83;
    selfCopy = self;
    if (v11)
    {
      v13 = [controlCopy arrayForKey:@"accessories"];
      if (v13)
      {
        v14 = v13;
        v69 = v11;
        v70 = v12;
        v71 = v10;
        v72 = controlCopy;
        v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v79 objects:v84 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v80;
          v74 = *v80;
          v75 = v16;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v80 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v79 + 1) + 8 * i);
              v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
              if (v22)
              {
                home = [(HMUser *)self home];
                v24 = [home accessoryWithUUID:v22];

                if (v24)
                {
                  [v15 addObject:v24];
                }

                else
                {
                  v25 = v15;
                  v26 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v28 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    v29 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v86 = v29;
                    v87 = 2112;
                    v88 = v21;
                    _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);

                    self = selfCopy;
                  }

                  objc_autoreleasePoolPop(v26);
                  v15 = v25;
                  v19 = v74;
                  v16 = v75;
                }
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v79 objects:v84 count:16];
          }

          while (v18);
        }

        if ([v15 count])
        {
          v30 = [v69 mutableCopy];
          [v30 setAccessories:v15];
          v31 = [v30 copy];

          v32 = v71;
          v8 = 0;
        }

        else
        {
          v32 = v71;
          v8 = 0;
          v31 = v69;
        }

        assistantAccessControl = [(HMUser *)self assistantAccessControl];
        v48 = v31;
        v49 = HMFEqualObjects();

        v50 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v52 = HMFGetOSLogHandle();
        v53 = v52;
        if (v49)
        {
          controlCopy = v72;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543362;
            v86 = v54;
            _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_INFO, "%{public}@Assistant access control did not change. Don't need to notify.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v50);
          v55 = v48;
        }

        else
        {
          v55 = v48;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            v86 = v56;
            v87 = 2112;
            v88 = v48;
            _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          [(HMUser *)selfCopy3 setAssistantAccessControl:v48];
          home2 = [(HMUser *)selfCopy3 home];
          if (home2)
          {
            context2 = [(HMUser *)selfCopy3 context];
            v59 = context2;
            if (context2)
            {
              delegateCaller = [context2 delegateCaller];
              v76[0] = MEMORY[0x1E69E9820];
              v76[1] = 3221225472;
              v76[2] = __47__HMUser__handleUpdatedAssistantAccessControl___block_invoke;
              v76[3] = &unk_1E754E5E8;
              v76[4] = selfCopy3;
              v77 = v48;
              v78 = home2;
              [delegateCaller invokeBlock:v76];
            }

            else
            {
              v65 = objc_autoreleasePoolPush();
              v66 = selfCopy3;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = HMFGetLogIdentifier();
                *buf = 138543618;
                v86 = v68;
                v87 = 2112;
                v88 = v48;
                _os_log_impl(&dword_19BB39000, v67, OS_LOG_TYPE_ERROR, "%{public}@Nil context. Cannot notify delegate of updated assistant access control: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v65);
              v55 = v48;
            }
          }

          else
          {
            v61 = objc_autoreleasePoolPush();
            v62 = selfCopy3;
            v63 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v64 = HMFGetLogIdentifier();
              *buf = 138543362;
              v86 = v64;
              _os_log_impl(&dword_19BB39000, v63, OS_LOG_TYPE_ERROR, "%{public}@No home found to perform callback on.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v61);
            v55 = v48;
          }

          controlCopy = v72;
        }

        goto LABEL_2;
      }

      v39 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [controlCopy messagePayload];
        v45 = v44 = v11;
        *buf = 138543618;
        v86 = v42;
        v87 = 2112;
        v88 = v45;
        _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Missing updated access control accessories from message payload: %@", buf, 0x16u);

        v11 = v44;
        goto LABEL_30;
      }
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v42;
        v87 = 2112;
        v88 = v12;
        _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive assistant access control from access control data: %@", buf, 0x16u);
LABEL_30:
      }
    }

    objc_autoreleasePoolPop(v39);
    v46 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [controlCopy respondWithError:v46];

    goto LABEL_3;
  }

  v33 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    messagePayload = [controlCopy messagePayload];
    *buf = 138543618;
    v86 = v36;
    v87 = 2112;
    v88 = messagePayload;
    _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Missing updated serialized access control from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [controlCopy respondWithError:v38];

LABEL_3:
}

void __47__HMUser__handleUpdatedAssistantAccessControl___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_1F0F63768])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_opt_respondsToSelector();
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v4 user:*(a1 + 32) didUpdateAssistantAccessControl:*(a1 + 40) forHome:*(a1 + 48)];
  }

  else
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@No delegate set to notify: %@, assistant access control: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_handleRGAllowedPeriodEnded:(id)ended
{
  endedCopy = ended;
  if (self)
  {
    home = [(HMUser *)self home];
    if (home)
    {
      v6 = home;
      context = [(HMUser *)self context];
      queue = [context queue];

      if (queue)
      {
        delegate = [(HMUser *)self delegate];
        if ([delegate conformsToProtocol:&unk_1F0F63768])
        {
          v10 = delegate;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (objc_opt_respondsToSelector())
        {
          context2 = [(HMUser *)self context];
          queue2 = [context2 queue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __38__HMUser__handleRGAllowedPeriodEnded___block_invoke;
          v14[3] = &unk_1E754E5C0;
          v14[4] = self;
          v15 = v11;
          dispatch_async(queue2, v14);
        }
      }
    }
  }
}

void __38__HMUser__handleRGAllowedPeriodEnded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__HMUser__handleRGAllowedPeriodEnded___block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __38__HMUser__handleRGAllowedPeriodEnded___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of RG allowed period ended: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) restrictedGuestAllowedPeriodEnded:*(a1 + 32)];
}

- (void)_handleRGAllowedPeriodStarted:(id)started
{
  startedCopy = started;
  if (self)
  {
    home = [(HMUser *)self home];
    if (home)
    {
      v6 = home;
      context = [(HMUser *)self context];
      queue = [context queue];

      if (queue)
      {
        delegate = [(HMUser *)self delegate];
        if ([delegate conformsToProtocol:&unk_1F0F63768])
        {
          v10 = delegate;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (objc_opt_respondsToSelector())
        {
          context2 = [(HMUser *)self context];
          queue2 = [context2 queue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __40__HMUser__handleRGAllowedPeriodStarted___block_invoke;
          v14[3] = &unk_1E754E5C0;
          v14[4] = self;
          v15 = v11;
          dispatch_async(queue2, v14);
        }
      }
    }
  }
}

void __40__HMUser__handleRGAllowedPeriodStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__HMUser__handleRGAllowedPeriodStarted___block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __40__HMUser__handleRGAllowedPeriodStarted___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of RG allowed period started: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 40) restrictedGuestAllowedPeriodStarted:*(a1 + 32)];
}

- (void)updateAssistantAccessControl:(id)control forHome:(id)home completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  homeCopy = home;
  handlerCopy = handler;
  if (!controlCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!homeCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateAssistantAccessControl:forHome:completionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v11 = handlerCopy;
  assistantAccessControl = [(HMUser *)self assistantAccessControl];
  v13 = [assistantAccessControl copy];

  v14 = [controlCopy copy];
  context = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v16 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D8C0;
    block[4] = self;
    v34 = v11;
    v30 = homeCopy;
    v31 = v14;
    v32 = v13;
    v33 = v16;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v21;
      v37 = 2080;
      v38 = "[HMUser updateAssistantAccessControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v22);
  }
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke(id *a1)
{
  v47[5] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[9];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_6:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_7;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[9];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_6;
  }

  v3 = [a1[6] accessories];
  v34 = HMAccessoryUUIDsAsStringForAccessories(v3);

  v4 = MEMORY[0x1E695DFD8];
  v5 = [a1[7] accessories];
  v6 = HMAccessoryUUIDsAsStringForAccessories(v5);
  v36 = [v4 setWithArray:v6];

  v35 = [MEMORY[0x1E695DFD8] setWithArray:v34];
  v7 = [v36 na_setByRemovingObjectsFromSet:v35];
  v33 = [v7 allObjects];

  v8 = [v35 na_setByRemovingObjectsFromSet:v36];
  v32 = [v8 allObjects];

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v31 = [v9 initWithTarget:v10];

  v11 = MEMORY[0x1E69A2A10];
  v46[0] = @"assistantAC";
  v12 = encodeRootObject(a1[6]);
  v47[0] = v12;
  v47[1] = v34;
  v46[1] = @"accessories";
  v46[2] = @"accessories.add";
  v47[2] = v32;
  v47[3] = v33;
  v46[3] = @"accessories.remove";
  v46[4] = @"kUserUUIDKey";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v47[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:5];
  v16 = [v11 messageWithName:@"HMU.au" destination:v31 payload:v15];

  objc_initWeak(&location, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v44, &location);
  v42 = a1[6];
  v43 = a1[9];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_202;
  v37[3] = &unk_1E754D030;
  v37[4] = a1[4];
  v22 = v19;
  v38 = v22;
  v23 = v20;
  v39 = v23;
  v24 = v17;
  v40 = v24;
  [v16 setResponseHandler:v37];
  v25 = [a1[8] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);

LABEL_7:
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAssistantAccessControl:*(a1 + 32)];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control. error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v7 context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v3];
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_202(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished to update assistant access control. error: %@, response payload: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [*(a1 + 40) removeCompletionBlockForIdentifier:*(a1 + 48)];
  if (v11)
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)setAssistantAccessControl:(id)control
{
  controlCopy = control;
  v4 = [controlCopy copy];
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_assistantAccessControl, v4);
  [v4 setUser:self];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMAssistantAccessControl)assistantAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistantAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPairingIdentity:(id)identity
{
  publicPairingIdentity = [identity publicPairingIdentity];
  if (publicPairingIdentity)
  {
    obj = publicPairingIdentity;
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_pairingIdentity, obj);
    os_unfair_lock_unlock(&self->_lock);
    publicPairingIdentity = obj;
  }
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleMultiUserStatusChangedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying settings delegate of update on multi-user status change.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  settingsController = [(HMUser *)selfCopy settingsController];
  [settingsController notifyDelegateOfUpdate];

  privateSettingsController = [(HMUser *)selfCopy privateSettingsController];
  [privateSettingsController notifyDelegateOfUpdate];
}

- (void)updateHomeAccessControl:(BOOL)control remoteAccess:(BOOL)access announceAccess:(BOOL)announceAccess camerasAccess:(id)camerasAccess
{
  announceAccessCopy = announceAccess;
  accessCopy = access;
  controlCopy = control;
  camerasAccessCopy = camerasAccess;
  homeAccessControl = [(HMUser *)self homeAccessControl];
  [homeAccessControl setAdministrator:controlCopy];

  homeAccessControl2 = [(HMUser *)self homeAccessControl];
  [homeAccessControl2 setRemoteAccessAllowed:accessCopy];

  homeAccessControl3 = [(HMUser *)self homeAccessControl];
  [homeAccessControl3 setCamerasAccess:camerasAccessCopy];

  homeAccessControl4 = [(HMUser *)self homeAccessControl];
  [homeAccessControl4 setAnnounceAccessAllowed:announceAccessCopy];
}

- (void)setHomeAccessControl:(id)control
{
  controlCopy = control;
  os_unfair_lock_lock_with_options();
  homeAccessControl = self->_homeAccessControl;
  self->_homeAccessControl = controlCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFamilyName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
  familyName = self->_familyName;
  self->_familyName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)familyName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_familyName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setGivenName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
  givenName = self->_givenName;
  self->_givenName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)givenName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_givenName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setiCloudAltDSID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:dCopy];
  iCloudAltDSID = self->_iCloudAltDSID;
  self->_iCloudAltDSID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)iCloudAltDSID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_iCloudAltDSID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_registerNotificationHandlers
{
  context = [(HMUser *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMU.au" receiver:self selector:sel__handleUpdatedAssistantAccessControl_];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  home = [(HMUser *)self home];
  uuid = [home uuid];
  [defaultCenter addObserver:self selector:sel__handleMultiUserStatusChangedNotification_ name:@"HMHomeMultiUserEnabledChangeNotificationKey" object:uuid];

  context2 = [(HMUser *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HM.u.rg.start" receiver:self selector:sel__handleRGAllowedPeriodStarted_];

  context3 = [(HMUser *)self context];
  messageDispatcher3 = [context3 messageDispatcher];
  [messageDispatcher3 registerForMessage:@"HM.u.rg.end" receiver:self selector:sel__handleRGAllowedPeriodEnded_];

  context4 = [(HMUser *)self context];
  messageDispatcher4 = [context4 messageDispatcher];
  [messageDispatcher4 registerForMessage:@"HMU.m.supmUpdated" receiver:self selector:sel__handleSharedUserProfileMetadataUpdatedMessage_];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring user", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMUser *)selfCopy setHome:0];
    homeAccessControl = selfCopy->_homeAccessControl;
    selfCopy->_homeAccessControl = 0;

    context = [(HMUser *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMUser *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMUser *)selfCopy setHome:homeCopy];
  [(HMUser *)selfCopy setContext:contextCopy];
  homeManager = [homeCopy homeManager];
  isDaemonRunningWithROARFramework = [homeManager isDaemonRunningWithROARFramework];

  if (isDaemonRunningWithROARFramework)
  {
    pendingPrivateSettings = [(HMUser *)selfCopy pendingPrivateSettings];
    [(HMUser *)selfCopy createConfigureAndMergePrivateSettingsIfNecessary:pendingPrivateSettings withContext:contextCopy];

    [(HMUser *)selfCopy setPendingPrivateSettings:0];
    pendingSharedSettings = [(HMUser *)selfCopy pendingSharedSettings];
    [(HMUser *)selfCopy createConfigureAndMergeSharedSettingsIfNecessary:pendingSharedSettings withContext:contextCopy];

    [(HMUser *)selfCopy setPendingSharedSettings:0];
    settingsController = selfCopy->_settingsController;
    selfCopy->_settingsController = 0;

    privateSettingsController = selfCopy->_privateSettingsController;
    selfCopy->_privateSettingsController = 0;
  }

  else
  {
    [(HMUser *)selfCopy createHH1SettingsControllerIfNecessary];
    [(HMUser *)selfCopy createHH1PrivateSettingsControllerIfNecessary];
    settingsController = [(HMUser *)selfCopy settingsController];
    [settingsController configureWithContext:contextCopy];

    privateSettingsController = [(HMUser *)selfCopy privateSettingsController];
    [privateSettingsController configureWithContext:contextCopy];
  }

  [(HMUser *)selfCopy configurePhotosPersonManager];
  [(HMUser *)selfCopy _registerNotificationHandlers];
  homeAccessControl = [(HMUser *)selfCopy homeAccessControl];
  restrictedGuestAccessSettings = [homeAccessControl restrictedGuestAccessSettings];
  [restrictedGuestAccessSettings fixupAccessoriesForHome:homeCopy];
}

- (HMUser)initWithUserID:(id)d name:(id)name uuid:(id)uuid home:(id)home homeAccessControl:(id)control
{
  dCopy = d;
  nameCopy = name;
  uuidCopy = uuid;
  homeCopy = home;
  controlCopy = control;
  v30.receiver = self;
  v30.super_class = HMUser;
  v17 = [(HMUser *)&v30 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    name = v17->_name;
    v17->_name = v18;

    v20 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:dCopy];
    userID = v17->_userID;
    v17->_userID = v20;

    v22 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
    uuid = v17->_uuid;
    v17->_uuid = v22;

    objc_storeWeak(&v17->_home, homeCopy);
    v17->_currentUser = 0;
    [(HMUser *)v17 createHH1SettingsControllerIfNecessary];
    [(HMUser *)v17 createHH1PrivateSettingsControllerIfNecessary];
    if (!controlCopy)
    {
      v24 = [HMUserCameraAccess accessWithValue:1];
      LOBYTE(v29) = 0;
      LOBYTE(v28) = 0;
      controlCopy = [[HMHomeAccessControl alloc] initWithUser:v17 allowAccess:1 owner:0 administratorPrivilege:0 remoteAccess:1 presenceAuthStatus:0 presenceComputeStatus:0 announceAccess:v28 camerasAccess:v24 audioAnalysisUserDropInAccessLevel:0 restrictedGuest:v29 restrictedGuestAccessSettings:0];
    }

    objc_storeStrong(&v17->_homeAccessControl, controlCopy);
    v25 = +[HMMutableArray array];
    pendingAccessoryInvitations = v17->_pendingAccessoryInvitations;
    v17->_pendingAccessoryInvitations = v25;
  }

  return v17;
}

- (HMUser)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t104 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t104, &__block_literal_global_45371);
  }

  v3 = logCategory__hmf_once_v105;

  return v3;
}

uint64_t __21__HMUser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v105;
  logCategory__hmf_once_v105 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end