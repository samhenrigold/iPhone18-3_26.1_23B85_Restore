@interface HMHomeAccessControl
- (BOOL)isAccessAllowed;
- (BOOL)isAdministrator;
- (BOOL)isAnnounceAccessAllowed;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOwner;
- (BOOL)isRemoteAccessAllowed;
- (BOOL)isRestrictedGuest;
- (BOOL)isRestrictedGuestInAllowedPeriod;
- (HMHomeAccessControl)initWithUser:(id)user allowAccess:(BOOL)access owner:(BOOL)owner administratorPrivilege:(BOOL)privilege remoteAccess:(BOOL)remoteAccess presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus announceAccess:(BOOL)self0 camerasAccess:(id)self1 audioAnalysisUserDropInAccessLevel:(unint64_t)self2 restrictedGuest:(BOOL)self3 restrictedGuestAccessSettings:(id)self4;
- (HMRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings;
- (HMUserCameraAccess)camerasAccess;
- (HMUserPresenceAuthorization)presenceAuthStatus;
- (HMUserPresenceCompute)presenceComputeStatus;
- (unint64_t)audioAnalysisUserDropInAccessLevel;
- (unint64_t)camerasAccessLevel;
- (unint64_t)presenceAuthorizationStatus;
- (unint64_t)presenceComputationStatus;
- (void)_updateAccessForUser:(id)user restrictedGuestAccessSettings:(id)settings completionHandler:(id)handler;
- (void)setAccessAllowed:(BOOL)allowed;
- (void)setAdministrator:(BOOL)administrator;
- (void)setAnnounceAccessAllowed:(BOOL)allowed;
- (void)setAudioAnalysisUserDropinAccessLevel:(unint64_t)level;
- (void)setCamerasAccess:(id)access;
- (void)setOwner:(BOOL)owner;
- (void)setPresenceAuthStatus:(id)status;
- (void)setPresenceComputeStatus:(id)status;
- (void)setRemoteAccessAllowed:(BOOL)allowed;
- (void)setRestrictedGuest:(BOOL)guest;
- (void)setUserAccessSettings:(id)settings;
- (void)updateAdministratorAccess:(BOOL)access completionHandler:(id)handler;
- (void)updateAnnounceAccess:(BOOL)access completionHandler:(id)handler;
- (void)updateAudioAnalysisUserDropinAccessLevel:(unint64_t)level completionHandler:(id)handler;
- (void)updateCamerasAccessLevel:(unint64_t)level completionHandler:(id)handler;
- (void)updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler;
- (void)updateRemoteAccess:(BOOL)access completionHandler:(id)handler;
- (void)updateRestrictedGuestSchedule:(id)schedule completionHandler:(id)handler;
- (void)updateRestrictedGuestSettings:(id)settings completionHandler:(id)handler;
@end

@implementation HMHomeAccessControl

- (BOOL)isRestrictedGuest
{
  os_unfair_lock_lock_with_options();
  v3 = BYTE1(self->_presenceAuthStatus);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)_updateAccessForUser:(id)user restrictedGuestAccessSettings:(id)settings completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  userCopy = user;
  settingsCopy = settings;
  handlerCopy = handler;
  home = [userCopy home];
  context = [home context];
  if (!handlerCopy)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl _updateAccessForUser:restrictedGuestAccessSettings:completionHandler:]", @"completion"];
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v36;
      v50 = 2112;
      v51 = v32;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    objc_exception_throw(v37);
  }

  v13 = context;
  if (context)
  {
    v39 = context;
    internalOnlyInitializer = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v38 = home;
      v19 = v18 = settingsCopy;
      uUID = [internalOnlyInitializer UUID];
      userID = [userCopy userID];
      *buf = 138544130;
      v49 = v19;
      v50 = 2112;
      v51 = uUID;
      v52 = 2112;
      v53 = v18;
      v54 = 2112;
      v55 = userID;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Updating restricted guest settings: %@ for userID: %@", buf, 0x2Au);

      settingsCopy = v18;
      home = v38;
    }

    objc_autoreleasePoolPop(v15);
    v46[0] = @"kUserIDKey";
    userID2 = [userCopy userID];
    v47[0] = userID2;
    v46[1] = @"HMRestrictedGuestHomeAccessControlSettingsKey";
    v23 = encodeRootObject(settingsCopy);
    v47[1] = v23;
    v46[2] = *MEMORY[0x1E69A29A8];
    v24 = HMFEncodedRootObject();
    v47[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

    uuid = [home uuid];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __92__HMHomeAccessControl__updateAccessForUser_restrictedGuestAccessSettings_completionHandler___block_invoke;
    v40[3] = &unk_1E75470B0;
    v40[4] = selfCopy2;
    v41 = internalOnlyInitializer;
    v42 = userCopy;
    v43 = v39;
    v45 = handlerCopy;
    v44 = settingsCopy;
    v27 = internalOnlyInitializer;
    v13 = v39;
    [(_HMContext *)v43 sendMessage:uuid target:v25 payload:v40 responseHandler:?];
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v31;
      v50 = 2080;
      v51 = "[HMHomeAccessControl _updateAccessForUser:restrictedGuestAccessSettings:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v25);
  }
}

void __92__HMHomeAccessControl__updateAccessForUser_restrictedGuestAccessSettings_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [*(a1 + 48) userID];
      v24 = 138544130;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update restricted guest settings for userID:%@, error: %@", &v24, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 56) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 72);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setRestrictedGuestAccessSettings:*(a1 + 64)];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) UUID];
      v22 = [*(a1 + 48) userID];
      v23 = *(a1 + 64);
      v24 = 138544130;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated restricted guest settings for userID:%@, settings: %@", &v24, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v13 = [*(a1 + 56) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 72);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];
}

- (void)updateRestrictedGuestSettings:(id)settings completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  user = [(HMAccessControl *)self user];
  home = [user home];
  if (!handlerCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl updateRestrictedGuestSettings:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v39;
      v43 = 2112;
      v44 = v35;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v40);
  }

  v10 = home;
  if (!user || ([user userID], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      objc_autoreleasePoolPop(v16);
      v21 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
LABEL_15:
      v22 = v21;
      handlerCopy[2](handlerCopy, v21);

      goto LABEL_16;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v19;
    v20 = "%{public}@Cannot update user access settings, user not present";
LABEL_13:
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_14;
  }

  if (!v10)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v19;
    v20 = "%{public}@Missing home, can't update user access settings";
    goto LABEL_13;
  }

  if (![(HMHomeAccessControl *)self isRestrictedGuest])
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v26;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot update user access settings, user is not a restricted guest", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v21 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2901];
    goto LABEL_15;
  }

  if (!settingsCopy)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v30;
      v31 = "%{public}@Cannot update user access settings, user access settings is nil";
      v32 = v29;
      v33 = 12;
LABEL_26:
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
LABEL_27:
    }

LABEL_28:

    objc_autoreleasePoolPop(v27);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_15;
  }

  if (([settingsCopy doAllAccessoriesBelongToHome:v10] & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = v10;
      v31 = "%{public}@Cannot update user access settings, not all accessories belong to the home : %@";
      v32 = v29;
      v33 = 22;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  guestAccessSchedule = [settingsCopy guestAccessSchedule];
  if (guestAccessSchedule)
  {
    v13 = guestAccessSchedule;
    guestAccessSchedule2 = [settingsCopy guestAccessSchedule];
    isValidSchedule = [guestAccessSchedule2 isValidSchedule];

    if ((isValidSchedule & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v29 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v30 = HMFGetLogIdentifier();
      guestAccessSchedule3 = [settingsCopy guestAccessSchedule];
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = guestAccessSchedule3;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot update user access settings, the schedule is invalid: %@", buf, 0x16u);

      goto LABEL_27;
    }
  }

  [(HMHomeAccessControl *)self _updateAccessForUser:user restrictedGuestAccessSettings:settingsCopy completionHandler:handlerCopy];
LABEL_16:
}

- (void)updateRestrictedGuestSchedule:(id)schedule completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  scheduleCopy = schedule;
  handlerCopy = handler;
  restrictedGuestAccessSettings = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  v9 = restrictedGuestAccessSettings;
  if (restrictedGuestAccessSettings)
  {
    v10 = [restrictedGuestAccessSettings mutableCopy];
    [v10 setGuestAccessSchedule:scheduleCopy];
    v11 = [v10 copy];
    [(HMHomeAccessControl *)self updateRestrictedGuestSettings:v11 completionHandler:handlerCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot update restricted guest schedule, existing accessSettings are nil.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v10 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2901];
    handlerCopy[2](handlerCopy, v10);
  }
}

- (BOOL)isRestrictedGuestInAllowedPeriod
{
  restrictedGuestAccessSettings = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];

  if (!guestAccessSchedule)
  {
    return 1;
  }

  user = [(HMAccessControl *)self user];
  home = [user home];

  timeZone = [home timeZone];
  v8 = timeZone;
  if (timeZone)
  {
    systemTimeZone = timeZone;
  }

  else
  {
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  }

  v11 = systemTimeZone;

  v12 = [MEMORY[0x1E695DF00] now];
  restrictedGuestAccessSettings2 = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  guestAccessSchedule2 = [restrictedGuestAccessSettings2 guestAccessSchedule];
  v15 = [HMRestrictedGuestHomeAccessSchedule isDate:v12 withinAllowedTimeForSchedule:guestAccessSchedule2 forHomeInTimeZone:v11];

  return v15;
}

- (void)setUserAccessSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  accessNotAllowedReasonCode = self->_accessNotAllowedReasonCode;
  self->_accessNotAllowedReasonCode = settingsCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessNotAllowedReasonCode;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setRestrictedGuest:(BOOL)guest
{
  os_unfair_lock_lock_with_options();
  BYTE1(self->_presenceAuthStatus) = guest;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)updateAnnounceAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  user = [(HMAccessControl *)self user];
  home = [user home];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl updateAnnounceAccess:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v9 = home;
  if (!user)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      v19 = "%{public}@Cannot update announce, user not present";
LABEL_12:
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
    goto LABEL_14;
  }

  if (!home)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      v19 = "%{public}@Missing home, can't update announce access";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (![(HMHomeAccessControl *)self isRestrictedGuest])
  {
    userID = [user userID];
    [v9 updateAccessForUser:userID announceAccess:accessCopy completionHandler:handlerCopy];
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v13;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot update announce access for the user as they are the restricted guest", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
LABEL_14:
  userID = v14;
  handlerCopy[2](handlerCopy, v14);
LABEL_15:
}

- (void)updateCamerasAccessLevel:(unint64_t)level completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v28);
  }

  v7 = handlerCopy;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMUserCameraAccessLevelAsString(level);
    v29 = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating cameras access level to %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  user = [(HMAccessControl *)selfCopy user];
  v14 = user;
  if (user)
  {
    home = [user home];
    if (home)
    {
      if (![(HMHomeAccessControl *)selfCopy isRestrictedGuest])
      {
        userID = [v14 userID];
        [home updateAccessForUser:userID camerasAccessLevel:level completionHandler:v7];
        goto LABEL_18;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update cameras access level for the user as they are the restricted guest", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home not present", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v20 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
    }

    userID = v20;
    v7[2](v7, v20);
LABEL_18:

    goto LABEL_19;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v23;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@User not present", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  home = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
  (v7)[2](v7, home);
LABEL_19:
}

- (void)updatePresenceAuthorizationStatus:(unint64_t)status completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(HMHomeAccessControl *)self isRestrictedGuest])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update presence authorization status for the user as they are the restricted guest", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
    handlerCopy[2](handlerCopy, v11);
  }

  else
  {
    user = [(HMAccessControl *)self user];
    [user updatePresenceAuthorizationStatus:status completionHandler:handlerCopy];
  }
}

- (void)updateRemoteAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  handlerCopy = handler;
  user = [(HMAccessControl *)self user];
  home = [user home];
  if (home)
  {
    userID = [user userID];
    [home updateAccessForUser:userID remoteAccess:accessCopy completionHandler:handlerCopy];
  }
}

- (void)updateAdministratorAccess:(BOOL)access completionHandler:(id)handler
{
  accessCopy = access;
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  user = [(HMAccessControl *)self user];
  home = [user home];
  if (home)
  {
    if ([(HMHomeAccessControl *)self isRestrictedGuest])
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot update restricted guest user to administrator", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
      handlerCopy[2](handlerCopy, v13);
    }

    else
    {
      userID = [user userID];
      [home updateAccessForUser:userID administrator:accessCopy completionHandler:handlerCopy];
    }
  }
}

- (void)updateAudioAnalysisUserDropinAccessLevel:(unint64_t)level completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  user = [(HMAccessControl *)self user];
  home = [user home];
  if (!handlerCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl updateAudioAnalysisUserDropinAccessLevel:completionHandler:]", @"completion"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v29;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v9 = home;
  if (user)
  {
    if (home)
    {
      if (![(HMHomeAccessControl *)self isRestrictedGuest])
      {
        userID = [user userID];
        [v9 updateAccessForUser:userID audioAnalysisUserDropinAccessLevel:level completionHandler:handlerCopy];
        goto LABEL_15;
      }

      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, user is a restricted guest", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = MEMORY[0x1E696ABC0];
      v15 = 2902;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, home not present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v14 = MEMORY[0x1E696ABC0];
      v15 = 2018;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, user not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = MEMORY[0x1E696ABC0];
    v15 = 2019;
  }

  userID = [v14 hmPrivateErrorWithCode:v15];
  handlerCopy[2](handlerCopy, userID);
LABEL_15:
}

- (unint64_t)audioAnalysisUserDropInAccessLevel
{
  os_unfair_lock_lock_with_options();
  isa = self[1].super.super.isa;
  os_unfair_lock_unlock(&self->super._lock);
  return isa;
}

- (void)setAudioAnalysisUserDropinAccessLevel:(unint64_t)level
{
  os_unfair_lock_lock_with_options();
  self[1].super.super.isa = level;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAnnounceAccessAllowed:(BOOL)allowed
{
  os_unfair_lock_lock_with_options();
  LOBYTE(self->_presenceAuthStatus) = allowed;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAnnounceAccessAllowed
{
  os_unfair_lock_lock_with_options();
  presenceAuthStatus = self->_presenceAuthStatus;
  os_unfair_lock_unlock(&self->super._lock);
  return presenceAuthStatus;
}

- (unint64_t)camerasAccessLevel
{
  os_unfair_lock_lock_with_options();
  value = [(HMRestrictedGuestHomeAccessSettings *)self->_restrictedGuestAccessSettings value];
  os_unfair_lock_unlock(&self->super._lock);
  return value;
}

- (void)setCamerasAccess:(id)access
{
  accessCopy = access;
  os_unfair_lock_lock_with_options();
  restrictedGuestAccessSettings = self->_restrictedGuestAccessSettings;
  self->_restrictedGuestAccessSettings = accessCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserCameraAccess)camerasAccess
{
  os_unfair_lock_lock_with_options();
  v3 = self->_restrictedGuestAccessSettings;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)presenceComputationStatus
{
  os_unfair_lock_lock_with_options();
  value = [(HMUserCameraAccess *)self->_camerasAccess value];
  os_unfair_lock_unlock(&self->super._lock);
  return value;
}

- (unint64_t)presenceAuthorizationStatus
{
  os_unfair_lock_lock_with_options();
  value = [(HMUserPresenceCompute *)self->_presenceComputeStatus value];
  os_unfair_lock_unlock(&self->super._lock);
  return value;
}

- (void)setPresenceComputeStatus:(id)status
{
  statusCopy = status;
  os_unfair_lock_lock_with_options();
  camerasAccess = self->_camerasAccess;
  self->_camerasAccess = statusCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserPresenceCompute)presenceComputeStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_camerasAccess;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setPresenceAuthStatus:(id)status
{
  statusCopy = status;
  os_unfair_lock_lock_with_options();
  presenceComputeStatus = self->_presenceComputeStatus;
  self->_presenceComputeStatus = statusCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserPresenceAuthorization)presenceAuthStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceComputeStatus;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setRemoteAccessAllowed:(BOOL)allowed
{
  os_unfair_lock_lock_with_options();
  *(&self->_restrictedGuestInAllowedPeriod + 1) = allowed;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isRemoteAccessAllowed
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_restrictedGuestInAllowedPeriod + 1);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setAccessAllowed:(BOOL)allowed
{
  os_unfair_lock_lock_with_options();
  self->_restrictedGuestInAllowedPeriod = allowed;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAccessAllowed
{
  os_unfair_lock_lock_with_options();
  restrictedGuestInAllowedPeriod = self->_restrictedGuestInAllowedPeriod;
  os_unfair_lock_unlock(&self->super._lock);
  return restrictedGuestInAllowedPeriod;
}

- (void)setAdministrator:(BOOL)administrator
{
  os_unfair_lock_lock_with_options();
  self->_restrictedGuest = administrator;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAdministrator
{
  os_unfair_lock_lock_with_options();
  restrictedGuest = self->_restrictedGuest;
  os_unfair_lock_unlock(&self->super._lock);
  return restrictedGuest;
}

- (void)setOwner:(BOOL)owner
{
  os_unfair_lock_lock_with_options();
  self->_announceAccessAllowed = owner;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isOwner
{
  os_unfair_lock_lock_with_options();
  announceAccessAllowed = self->_announceAccessAllowed;
  os_unfair_lock_unlock(&self->super._lock);
  return announceAccessAllowed;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMHomeAccessControl;
    if ([(HMAccessControl *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7 && (v8 = -[HMHomeAccessControl isAccessAllowed](self, "isAccessAllowed"), v8 == -[HMHomeAccessControl isAccessAllowed](v7, "isAccessAllowed")) && (v9 = -[HMHomeAccessControl isAdministrator](self, "isAdministrator"), v9 == -[HMHomeAccessControl isAdministrator](v7, "isAdministrator")) && (v10 = -[HMHomeAccessControl isOwner](self, "isOwner"), v10 == -[HMHomeAccessControl isOwner](v7, "isOwner")) && (v11 = -[HMHomeAccessControl isRemoteAccessAllowed](self, "isRemoteAccessAllowed"), v11 == -[HMHomeAccessControl isRemoteAccessAllowed](v7, "isRemoteAccessAllowed")) && (v12 = -[HMHomeAccessControl presenceAuthorizationStatus](self, "presenceAuthorizationStatus"), v12 == -[HMHomeAccessControl presenceAuthorizationStatus](v7, "presenceAuthorizationStatus")) && (v13 = -[HMHomeAccessControl presenceComputationStatus](self, "presenceComputationStatus"), v13 == -[HMHomeAccessControl presenceComputationStatus](v7, "presenceComputationStatus")) && (-[HMHomeAccessControl camerasAccess](self, "camerasAccess"), v14 = objc_claimAutoreleasedReturnValue(), -[HMHomeAccessControl camerasAccess](v7, "camerasAccess"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqual:v15], v15, v14, v16) && (v17 = -[HMHomeAccessControl isAnnounceAccessAllowed](self, "isAnnounceAccessAllowed"), v17 == -[HMHomeAccessControl isAnnounceAccessAllowed](v7, "isAnnounceAccessAllowed")) && (v18 = -[HMHomeAccessControl audioAnalysisUserDropInAccessLevel](self, "audioAnalysisUserDropInAccessLevel"), v18 == -[HMHomeAccessControl audioAnalysisUserDropInAccessLevel](v7, "audioAnalysisUserDropInAccessLevel")) && (v19 = -[HMHomeAccessControl isRestrictedGuest](self, "isRestrictedGuest"), v19 == -[HMHomeAccessControl isRestrictedGuest](v7, "isRestrictedGuest")))
      {
        restrictedGuestAccessSettings = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
        restrictedGuestAccessSettings2 = [(HMHomeAccessControl *)v7 restrictedGuestAccessSettings];
        v20 = HMFEqualObjects();
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (HMHomeAccessControl)initWithUser:(id)user allowAccess:(BOOL)access owner:(BOOL)owner administratorPrivilege:(BOOL)privilege remoteAccess:(BOOL)remoteAccess presenceAuthStatus:(id)status presenceComputeStatus:(id)computeStatus announceAccess:(BOOL)self0 camerasAccess:(id)self1 audioAnalysisUserDropInAccessLevel:(unint64_t)self2 restrictedGuest:(BOOL)self3 restrictedGuestAccessSettings:(id)self4
{
  v36 = *MEMORY[0x1E69E9840];
  userCopy = user;
  statusCopy = status;
  computeStatusCopy = computeStatus;
  camerasAccessCopy = camerasAccess;
  settingsCopy = settings;
  v33.receiver = self;
  v33.super_class = HMHomeAccessControl;
  v21 = [(HMAccessControl *)&v33 initWithUser:userCopy];
  v22 = v21;
  if (v21)
  {
    v28 = statusCopy;
    v21->_restrictedGuestInAllowedPeriod = access;
    v21->_announceAccessAllowed = owner;
    v21->_restrictedGuest = privilege;
    *(&v21->_restrictedGuestInAllowedPeriod + 1) = remoteAccess;
    objc_storeStrong(&v21->_presenceComputeStatus, status);
    objc_storeStrong(&v22->_camerasAccess, computeStatus);
    objc_storeStrong(&v22->_restrictedGuestAccessSettings, camerasAccess);
    LOBYTE(v22->_presenceAuthStatus) = announceAccess;
    v22[1].super.super.isa = level;
    BYTE1(v22->_presenceAuthStatus) = guest;
    objc_storeStrong(&v22->_accessNotAllowedReasonCode, settings);
    if (BYTE1(v22->_presenceAuthStatus) == 1 && !v22->_accessNotAllowedReasonCode)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v22;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_FAULT, "%{public}@restricted guest cannot exist without its access settings object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      statusCopy = v28;
    }
  }

  return v22;
}

@end