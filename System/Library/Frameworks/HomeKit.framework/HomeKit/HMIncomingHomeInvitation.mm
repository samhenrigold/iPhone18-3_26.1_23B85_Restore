@interface HMIncomingHomeInvitation
+ (id)incomingHomeInvitationFromEncodedData:(id)data homeManager:(id)manager;
+ (id)shortDescription;
- (BOOL)isForPKSharingMessageInvitationWithAppleSharingDict:(id)dict;
- (BOOL)mergeFromNewObject:(id)object;
- (HMHomeManager)homeManager;
- (HMIncomingHomeInvitation)initWithCoder:(id)coder;
- (HMIncomingHomeInvitation)initWithInvitationData:(id)data homeManager:(id)manager;
- (NSArray)attributeDescriptions;
- (NSString)homeName;
- (NSString)shortDescription;
- (NSUUID)homeUUID;
- (void)__configureWithContext:(id)context homeManager:(id)manager;
- (void)_unconfigure;
- (void)acceptInviteWithCompletionHandler:(id)handler;
- (void)acceptInviteWithPresenceAuthStatus:(unint64_t)status completionHandler:(id)handler;
- (void)cancelInviteWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)ignoreInviteWithCompletionHandler:(id)handler;
- (void)reportJunkInviteWithCompletionHandler:(id)handler;
@end

@implementation HMIncomingHomeInvitation

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (NSArray)attributeDescriptions
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMHomeInvitation *)self uniqueIdentifier];
  v23 = [v3 initWithName:@"ID" value:uniqueIdentifier];
  v25[0] = v23;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  inviter = [(HMIncomingHomeInvitation *)self inviter];
  userID = [inviter userID];
  v20 = [v4 initWithName:@"Inviter UserID" value:userID];
  v25[1] = v20;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  inviter2 = [(HMIncomingHomeInvitation *)self inviter];
  name = [inviter2 name];
  v8 = [v5 initWithName:@"Inviter Name" value:name];
  v25[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMIncomingHomeInvitation *)self isInviteeRestrictedGuest];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Is RG" value:v10];
  v25[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMIncomingHomeInvitation *)self homeHasCameras];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"DoesHomeHasCameras" value:v13];
  v25[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  restrictedGuestSchedule = [(HMIncomingHomeInvitation *)self restrictedGuestSchedule];
  v17 = [v15 initWithName:@"rgSchedule" value:restrictedGuestSchedule];
  v25[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    invitationState = [(HMHomeInvitation *)self invitationState];
    invitationState2 = [v5 invitationState];
    v8 = invitationState == invitationState2;
    v9 = invitationState != invitationState2;
    if (!v8)
    {
      -[HMHomeInvitation _updateInvitationState:](self, "_updateInvitationState:", [v5 invitationState]);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  invitationData = [(HMHomeInvitation *)self invitationData];
  [coderCopy encodeObject:invitationData forKey:@"HM.invitationData"];
}

- (HMIncomingHomeInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v17.receiver = self;
  v17.super_class = HMIncomingHomeInvitation;
  v6 = [(HMHomeInvitation *)&v17 initWithCoder:coderCopy invitationData:v5];
  if (v6)
  {
    v7 = [HMUser alloc];
    inviterUserID = [v5 inviterUserID];
    inviterName = [v5 inviterName];
    inviterUUID = [v5 inviterUUID];
    home = [(HMHomeInvitation *)v6 home];
    v12 = [(HMUser *)v7 initWithUserID:inviterUserID name:inviterName uuid:inviterUUID home:home];
    inviter = v6->_inviter;
    v6->_inviter = v12;

    v6->_homeHasCameras = [coderCopy decodeBoolForKey:@"HMIncomingInvitationHomeHasCamerasCodingKey"];
    v6->_inviteeRestrictedGuest = [coderCopy decodeBoolForKey:@"HM.u.isRG"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.RG.Schedule"];
    restrictedGuestSchedule = v6->_restrictedGuestSchedule;
    v6->_restrictedGuestSchedule = v14;
  }

  return v6;
}

- (void)reportJunkInviteWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation reportJunkInviteWithCompletionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling a junk invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    homeManager = [(HMIncomingHomeInvitation *)selfCopy2 homeManager];
    if (homeManager)
    {
      v13 = homeManager;
      [homeManager _reportJunkInvitation:selfCopy2 completionHandler:handlerCopy];
    }

    else
    {
      delegateCaller = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMIncomingHomeInvitation reportJunkInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v13);
  }
}

- (void)acceptInviteWithPresenceAuthStatus:(unint64_t)status completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation acceptInviteWithPresenceAuthStatus:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v24;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v8 = context;
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMUserPresenceAuthorizationStatusAsString(status);
      *buf = 138543618;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling accepted invitation with presenceAuthStatus: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    homeManager = [(HMIncomingHomeInvitation *)selfCopy2 homeManager];
    if (homeManager)
    {
      v16 = homeManager;
      [homeManager _acceptInvitation:selfCopy2 presenceAuthStatus:status completionHandler:handlerCopy];
    }

    else
    {
      delegateCaller = [v8 delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v19];

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v17;
      v28 = 2080;
      v29 = "[HMIncomingHomeInvitation acceptInviteWithPresenceAuthStatus:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v16);
  }
}

- (void)acceptInviteWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation acceptInviteWithCompletionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling accepted invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    homeManager = [(HMIncomingHomeInvitation *)selfCopy2 homeManager];
    if (homeManager)
    {
      v13 = homeManager;
      [homeManager _acceptInvitation:selfCopy2 completionHandler:handlerCopy];
    }

    else
    {
      delegateCaller = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:21 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMIncomingHomeInvitation acceptInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v13);
  }
}

- (void)ignoreInviteWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation ignoreInviteWithCompletionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling ignored invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    homeManager = [(HMIncomingHomeInvitation *)selfCopy2 homeManager];
    if (homeManager)
    {
      v13 = homeManager;
      [homeManager _ignoreInvitation:selfCopy2 completionHandler:handlerCopy];
    }

    else
    {
      delegateCaller = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMIncomingHomeInvitation ignoreInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v13);
  }
}

- (void)cancelInviteWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMHomeInvitation *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMIncomingHomeInvitation cancelInviteWithCompletionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling declined invitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    homeManager = [(HMIncomingHomeInvitation *)selfCopy2 homeManager];
    if (homeManager)
    {
      v13 = homeManager;
      [homeManager _declineInvitation:selfCopy2 completionHandler:handlerCopy];
    }

    else
    {
      delegateCaller = [v6 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v16];

      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMIncomingHomeInvitation cancelInviteWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v13);
  }
}

- (NSUUID)homeUUID
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  homeUUID = [invitationData homeUUID];

  return homeUUID;
}

- (NSString)homeName
{
  invitationData = [(HMHomeInvitation *)self invitationData];
  homeName = [invitationData homeName];

  return homeName;
}

- (void)_unconfigure
{
  v12 = *MEMORY[0x1E69E9840];
  context = [(HMHomeInvitation *)self context];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring incoming Home invitation", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMIncomingHomeInvitation *)selfCopy setHomeManager:0];
    [(HMHomeInvitation *)selfCopy setContext:0];
  }
}

- (void)__configureWithContext:(id)context homeManager:(id)manager
{
  managerCopy = manager;
  [(HMHomeInvitation *)self setContext:context];
  [(HMIncomingHomeInvitation *)self setHomeManager:managerCopy];
}

- (HMIncomingHomeInvitation)initWithInvitationData:(id)data homeManager:(id)manager
{
  dataCopy = data;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = HMIncomingHomeInvitation;
  v8 = [(HMHomeInvitation *)&v16 initWithInvitationData:dataCopy home:0];
  if (v8)
  {
    v9 = [HMUser alloc];
    inviterUserID = [dataCopy inviterUserID];
    inviterName = [dataCopy inviterName];
    inviterUUID = [dataCopy inviterUUID];
    v13 = [(HMUser *)v9 initWithUserID:inviterUserID name:inviterName uuid:inviterUUID home:0];
    inviter = v8->_inviter;
    v8->_inviter = v13;

    objc_storeWeak(&v8->_homeManager, managerCopy);
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)incomingHomeInvitationFromEncodedData:(id)data homeManager:(id)manager
{
  v28[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  managerCopy = manager;
  if (dataCopy)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v11 = [v9 setWithArray:v10];
    v23 = 0;
    v12 = [v8 unarchivedObjectOfClasses:v11 fromData:dataCopy error:&v23];
    v13 = v23;

    if (v12)
    {
      v14 = v12;
      objc_opt_class();
      v15 = objc_opt_isKindOfClass() & 1;
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive incoming home invitation data from encoded invitations data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v14 = MEMORY[0x1E695E0F0];
LABEL_12:

  return v14;
}

- (BOOL)isForPKSharingMessageInvitationWithAppleSharingDict:(id)dict
{
  v4 = [dict hmf_stringForKey:@"HMHomeInvitationIdentifierKey"];
  identifier = [(HMHomeInvitation *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v4 isEqualToString:uUIDString];

  return v7;
}

@end