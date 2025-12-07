@interface _HMSiriEndpointProfile
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_mergeAssistants:(id)assistants;
- (BOOL)manuallyDisabled;
- (BOOL)mergeFromNewObject:(id)object;
- (NSArray)assistants;
- (NSArray)attributeDescriptions;
- (NSNumber)activeIdentifier;
- (NSString)shortDescription;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (_HMSiriEndpointProfile)initWithCoder:(id)coder;
- (_HMSiriEndpointProfileDelegate)delegate;
- (id)logIdentifier;
- (id)messageDestination;
- (int64_t)multifunctionButton;
- (int64_t)sessionState;
- (unint64_t)capability;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_handleUpdateProfileState:(id)state;
- (void)_registerNotificationHandlers;
- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler;
- (void)deleteSiriHistoryWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)notifyClientDidUpdateSessionState;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)setActiveIdentifier:(id)identifier;
- (void)setAssistants:(id)assistants;
- (void)setCapability:(unint64_t)capability;
- (void)setManuallyDisabled:(BOOL)disabled;
- (void)setMultifunctionButton:(int64_t)button;
- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler;
- (void)setSessionHubIdentifier:(id)identifier;
- (void)setSessionState:(int64_t)state;
- (void)setSiriEndpointVersion:(id)version;
- (void)setSiriEngineVersion:(id)version;
@end

@implementation _HMSiriEndpointProfile

- (_HMSiriEndpointProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(_HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  v33[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(_HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v30 = [v3 initWithName:@"accessoryUniqueIdentifier" value:uniqueIdentifier];
  v33[0] = v30;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v29 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)self sessionState]);
  v28 = [v4 initWithName:@"sessionState" value:v29];
  v33[1] = v28;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  sessionHubIdentifier = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v26 = [v5 initWithName:@"sessionHubIdentifier" value:sessionHubIdentifier];
  v33[2] = v26;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEndpointVersion = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
  v24 = [v6 initWithName:@"siriEndpointVersion" value:siriEndpointVersion];
  v33[3] = v24;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = HMSiriEndpointProfileCapabilityToString([(_HMSiriEndpointProfile *)self capability]);
  v8 = [v7 initWithName:@"capability" value:v23];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEngineVersion = [(_HMSiriEndpointProfile *)self siriEngineVersion];
  v11 = [v9 initWithName:@"siriEngineVersion" value:siriEngineVersion];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  activeIdentifier = [(_HMSiriEndpointProfile *)self activeIdentifier];
  v14 = [v12 initWithName:@"activeIdentifier" value:activeIdentifier];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(_HMSiriEndpointProfile *)self manuallyDisabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"manuallyDisabled" value:v16];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = HMSiriEndpointProfileMultifunctionButtonTypeToString([(_HMSiriEndpointProfile *)self multifunctionButton]);
  v20 = [v18 initWithName:@"multifunctionButton" value:v19];
  v33[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:9];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v83 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    delegate = [(_HMSiriEndpointProfile *)self delegate];
    sessionState = [v6 sessionState];
    sessionState2 = [(_HMSiriEndpointProfile *)self sessionState];
    v10 = sessionState == sessionState2;
    v11 = sessionState != sessionState2;
    if (!v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v15 = v59 = delegate;
        v16 = HMSiriEndpointProfileSessionStateTypeToString([v6 sessionState]);
        v17 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)selfCopy sessionState]);
        *buf = 138543874;
        v78 = v15;
        v79 = 2112;
        v80 = v16;
        v81 = 2112;
        v82 = v17;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state during merge to session state: %@ from session state: %@", buf, 0x20u);

        delegate = v59;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](selfCopy, "setSessionState:", [v6 sessionState]);
      context = [(_HMAccessoryProfile *)selfCopy context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E2A8;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }

    sessionHubIdentifier = [v6 sessionHubIdentifier];
    sessionHubIdentifier2 = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      sessionHubIdentifier3 = [v6 sessionHubIdentifier];
      [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:sessionHubIdentifier3];

      if (objc_opt_respondsToSelector())
      {
        context2 = [(_HMAccessoryProfile *)self context];
        queue2 = [context2 queue];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2;
        v74[3] = &unk_1E754E5C0;
        v74[4] = self;
        v75 = delegate;
        dispatch_async(queue2, v74);
      }

      v11 = 1;
    }

    siriEndpointVersion = [v6 siriEndpointVersion];
    siriEndpointVersion2 = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v28 = HMFEqualObjects();

    if ((v28 & 1) == 0)
    {
      siriEndpointVersion3 = [v6 siriEndpointVersion];
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:siriEndpointVersion3];

      v11 = 1;
    }

    capability = [v6 capability];
    if (capability != [(_HMSiriEndpointProfile *)self capability])
    {
      capability2 = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v6 capability]);
      if (([(_HMSiriEndpointProfile *)self capability]^ capability2) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        context3 = [(_HMAccessoryProfile *)self context];
        queue3 = [context3 queue];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_41;
        v72[3] = &unk_1E754E5C0;
        v72[4] = self;
        v73 = delegate;
        dispatch_async(queue3, v72);
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ capability2) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        context4 = [(_HMAccessoryProfile *)self context];
        queue4 = [context4 queue];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_43;
        v70[3] = &unk_1E754E5C0;
        v70[4] = self;
        v71 = delegate;
        dispatch_async(queue4, v70);
      }

      v11 = 1;
    }

    siriEngineVersion = [v6 siriEngineVersion];
    siriEngineVersion2 = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v38 = HMFEqualObjects();

    if ((v38 & 1) == 0)
    {
      siriEngineVersion3 = [v6 siriEngineVersion];
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:siriEngineVersion3];

      if (objc_opt_respondsToSelector())
      {
        context5 = [(_HMAccessoryProfile *)self context];
        queue5 = [context5 queue];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_45;
        v68[3] = &unk_1E754E5C0;
        v68[4] = self;
        v69 = delegate;
        dispatch_async(queue5, v68);
      }

      v11 = 1;
    }

    assistants = [v6 assistants];
    v43 = [(_HMSiriEndpointProfile *)self _mergeAssistants:assistants];

    if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      context6 = [(_HMAccessoryProfile *)self context];
      queue6 = [context6 queue];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_47;
      v66[3] = &unk_1E754E5C0;
      v66[4] = self;
      v67 = delegate;
      dispatch_async(queue6, v66);
    }

    activeIdentifier = [v6 activeIdentifier];
    activeIdentifier2 = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v48 = HMFEqualObjects();

    if ((v48 & 1) == 0)
    {
      activeIdentifier3 = [v6 activeIdentifier];
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:activeIdentifier3];

      if (objc_opt_respondsToSelector())
      {
        context7 = [(_HMAccessoryProfile *)self context];
        queue7 = [context7 queue];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_49;
        v64[3] = &unk_1E754E5C0;
        v64[4] = self;
        v65 = delegate;
        dispatch_async(queue7, v64);
      }

      v11 = 1;
    }

    manuallyDisabled = [v6 manuallyDisabled];
    if (manuallyDisabled != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v6 manuallyDisabled]);
      if (objc_opt_respondsToSelector())
      {
        context8 = [(_HMAccessoryProfile *)self context];
        queue8 = [context8 queue];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_51;
        v62[3] = &unk_1E754E5C0;
        v62[4] = self;
        v63 = delegate;
        dispatch_async(queue8, v62);
      }

      v11 = 1;
    }

    multifunctionButton = [v6 multifunctionButton];
    if (multifunctionButton != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v6 multifunctionButton]);
      if (objc_opt_respondsToSelector())
      {
        context9 = [(_HMAccessoryProfile *)self context];
        queue9 = [context9 queue];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_53;
        v60[3] = &unk_1E754E5C0;
        v60[4] = self;
        v61 = delegate;
        dispatch_async(queue9, v60);
      }

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_mergeAssistants:(id)assistants
{
  assistantsCopy = assistants;
  v5 = [HMObjectMergeCollection alloc];
  assistants = [(_HMSiriEndpointProfile *)self assistants];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:assistants newObjects:assistantsCopy];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  if ([(HMObjectMergeCollection *)v7 isModified])
  {
    finalObjects = [(HMObjectMergeCollection *)v7 finalObjects];
    [(_HMSiriEndpointProfile *)self setAssistants:finalObjects];
  }

  isModified = [(HMObjectMergeCollection *)v7 isModified];

  return isModified;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (_HMSiriEndpointProfile)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = _HMSiriEndpointProfile;
  v5 = [(_HMAccessoryProfile *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session-state"];
    v5->_sessionState = [v28 integerValue];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session-hub-id"];
    if (v6)
    {
      hmf_zeroUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    }

    else
    {
      hmf_zeroUUID = [MEMORY[0x1E696AFB0] hmf_zeroUUID];
    }

    v8 = hmf_zeroUUID;
    objc_storeStrong(&v5->_sessionHubIdentifier, hmf_zeroUUID);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F0E92498;
    }

    objc_storeStrong(&v5->_siriEndpointVersion, v11);
    v5->_capability = [coderCopy decodeIntegerForKey:@"capability"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siri-engine-version"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F0E92498;
    }

    objc_storeStrong(&v5->_siriEngineVersion, v14);
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"active-identifier"];
    activeIdentifier = v5->_activeIdentifier;
    v5->_activeIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manually-disabled"];
    v18 = v17;
    if (v17)
    {
      *(&v5->_manuallyDisabled + 4) = [v17 BOOLValue];
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multifunction-button"];
    v20 = v19;
    if (v19)
    {
      v5->_multifunctionButton = [v19 integerValue];
    }

    v21 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"assistants"];

    v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
    assistants = v5->_assistants;
    v5->_assistants = v25;
  }

  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(_HMAccessoryProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  v10 = context;
  if (context)
  {
    if (!handlerCopy)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v16);
    }

    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke;
    block[3] = &unk_1E754AC90;
    notificationsCopy = notifications;
    optionsCopy = options;
    block[4] = self;
    v19 = handlerCopy;
    v18 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_handleUpdateProfileState:(id)state
{
  v110 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(_HMAccessoryProfile *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [stateCopy identifier];
  v75 = pendingRequests;
  v74 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  delegate = [(_HMSiriEndpointProfile *)self delegate];
  v9 = [stateCopy numberForKey:@"session-state"];
  sessionState = [(_HMSiriEndpointProfile *)self sessionState];
  v76 = v9;
  if (v9)
  {
    v11 = sessionState;
    if ([v9 integerValue] != sessionState)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMSiriEndpointProfileSessionStateTypeToString(v11);
        HMSiriEndpointProfileSessionStateTypeToString([v9 integerValue]);
        v18 = v17 = delegate;
        *buf = 138543874;
        v105 = v15;
        v106 = 2112;
        v107 = v16;
        v108 = 2112;
        v109 = v18;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state due to message from session state: %@ to sessionState: %@", buf, 0x20u);

        delegate = v17;
        v9 = v76;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](selfCopy, "setSessionState:", [v9 integerValue]);
      [(_HMSiriEndpointProfile *)selfCopy notifyClientDidUpdateSessionState];
    }
  }

  v19 = [stateCopy uuidForKey:@"session-hub-id"];
  sessionHubIdentifier = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:v19];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(_HMAccessoryProfile *)self context];
      delegateCaller = [context2 delegateCaller];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke;
      v100[3] = &unk_1E754E5C0;
      v101 = delegate;
      selfCopy2 = self;
      [delegateCaller invokeBlock:v100];
    }
  }

  v24 = [stateCopy stringForKey:@"version"];
  if (v24)
  {
    siriEndpointVersion = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:v24];
    }
  }

  v27 = [stateCopy stringForKey:@"siri-engine-version"];
  if (v27)
  {
    siriEngineVersion = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:v27];
      if (objc_opt_respondsToSelector())
      {
        context3 = [(_HMAccessoryProfile *)self context];
        delegateCaller2 = [context3 delegateCaller];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_2;
        v97[3] = &unk_1E754E5C0;
        v98 = delegate;
        selfCopy3 = self;
        [delegateCaller2 invokeBlock:v97];
      }
    }
  }

  v32 = [stateCopy numberForKey:@"capability"];
  v33 = v32;
  if (v32)
  {
    integerValue = [v32 integerValue];
    if (integerValue != [(_HMSiriEndpointProfile *)self capability])
    {
      capability = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v33 integerValue]);
      if (([(_HMSiriEndpointProfile *)self capability]^ capability) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        context4 = [(_HMAccessoryProfile *)self context];
        delegateCaller3 = [context4 delegateCaller];
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_3;
        v94[3] = &unk_1E754E5C0;
        v95 = delegate;
        selfCopy4 = self;
        [delegateCaller3 invokeBlock:v94];
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ capability) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        context5 = [(_HMAccessoryProfile *)self context];
        delegateCaller4 = [context5 delegateCaller];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_4;
        v91[3] = &unk_1E754E5C0;
        v92 = delegate;
        selfCopy5 = self;
        [delegateCaller4 invokeBlock:v91];
      }
    }
  }

  v73 = v19;
  v40 = [stateCopy numberForKey:@"active-identifier"];
  if (v40)
  {
    activeIdentifier = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v42 = HMFEqualObjects();

    if ((v42 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:v40];
      if (objc_opt_respondsToSelector())
      {
        context6 = [(_HMAccessoryProfile *)self context];
        delegateCaller5 = [context6 delegateCaller];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_5;
        v88[3] = &unk_1E754E5C0;
        v89 = delegate;
        selfCopy6 = self;
        [delegateCaller5 invokeBlock:v88];
      }
    }
  }

  v72 = v24;
  v45 = [stateCopy numberForKey:@"manually-disabled"];
  v46 = v45;
  if (v45)
  {
    bOOLValue = [v45 BOOLValue];
    if (bOOLValue != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v46 BOOLValue]);
      if (objc_opt_respondsToSelector())
      {
        context7 = [(_HMAccessoryProfile *)self context];
        delegateCaller6 = [context7 delegateCaller];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_6;
        v85[3] = &unk_1E754E5C0;
        v86 = delegate;
        selfCopy7 = self;
        [delegateCaller6 invokeBlock:v85];
      }
    }
  }

  v70 = v33;
  v71 = v27;
  v50 = [stateCopy numberForKey:{@"multifunction-button", v40}];
  v51 = v50;
  if (v50)
  {
    integerValue2 = [v50 integerValue];
    if (integerValue2 != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v51 integerValue]);
      if (objc_opt_respondsToSelector())
      {
        context8 = [(_HMAccessoryProfile *)self context];
        delegateCaller7 = [context8 delegateCaller];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_7;
        v82[3] = &unk_1E754E5C0;
        v83 = delegate;
        selfCopy8 = self;
        [delegateCaller7 invokeBlock:v82];
      }
    }
  }

  v77 = delegate;
  v55 = [stateCopy dataForKey:@"assistants"];
  v56 = MEMORY[0x1E696ACD0];
  v57 = MEMORY[0x1E695DFD8];
  v103[0] = objc_opt_class();
  v103[1] = objc_opt_class();
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
  v59 = [v57 setWithArray:v58];
  v81 = 0;
  v60 = [v56 unarchivedObjectOfClasses:v59 fromData:v55 error:&v81];
  v61 = v81;

  v62 = v60;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  if (v64 && [(_HMSiriEndpointProfile *)self _mergeAssistants:v64]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    context9 = [(_HMAccessoryProfile *)self context];
    delegateCaller8 = [context9 delegateCaller];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_8;
    v78[3] = &unk_1E754E5C0;
    v79 = v77;
    selfCopy9 = self;
    [delegateCaller8 invokeBlock:v78];
  }

  if (v74)
  {
    context10 = [(_HMAccessoryProfile *)self context];
    delegateCaller9 = [context10 delegateCaller];
    [delegateCaller9 callCompletion:v74 error:0];
  }
}

- (void)refreshStateWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  v6 = context;
  if (context)
  {
    if (!handlerCopy)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v12);
    }

    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v15 = handlerCopy;
    v14 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)setAssistants:(id)assistants
{
  assistantsCopy = assistants;
  os_unfair_lock_lock_with_options();
  v4 = [assistantsCopy copy];
  assistants = self->_assistants;
  self->_assistants = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)assistants
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistants;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setMultifunctionButton:(int64_t)button
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = button;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->super._lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)disabled
{
  os_unfair_lock_lock_with_options();
  *(&self->_manuallyDisabled + 4) = disabled;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_manuallyDisabled + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setActiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  activeIdentifier = self->_activeIdentifier;
  self->_activeIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSNumber)activeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activeIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSiriEngineVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  siriEngineVersion = self->_siriEngineVersion;
  self->_siriEngineVersion = versionCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEngineVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEngineVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCapability:(unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  self->_capability = capability;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  capability = self->_capability;
  os_unfair_lock_unlock(&self->super._lock);
  return capability;
}

- (void)setSiriEndpointVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  siriEndpointVersion = self->_siriEndpointVersion;
  self->_siriEndpointVersion = versionCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEndpointVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEndpointVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionHubIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSUUID)sessionHubIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionHubIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_sessionState = state;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)sessionState
{
  os_unfair_lock_lock_with_options();
  sessionState = self->_sessionState;
  os_unfair_lock_unlock(&self->super._lock);
  return sessionState;
}

- (void)notifyClientDidUpdateSessionState
{
  v21 = *MEMORY[0x1E69E9840];
  context = [(_HMAccessoryProfile *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(_HMSiriEndpointProfile *)self delegate];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = delegate;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update session state using delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59___HMSiriEndpointProfile_notifyClientDidUpdateSessionState__block_invoke;
      v14[3] = &unk_1E754E5C0;
      v15 = delegate;
      v16 = selfCopy;
      [delegateCaller invokeBlock:v14];
    }
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
      v18 = v13;
      v19 = 2112;
      v20 = context;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated session state due to no delgate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)deleteSiriHistoryWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  messenger = [(_HMSiriEndpointProfile *)self messenger];
  if (messenger)
  {
    accessory = [(_HMAccessoryProfile *)self accessory];
    uuid = [accessory uuid];

    [messenger sendDeleteSiriHistoryRequestWithAccessoryUUID:uuid completionHandler:handlerCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete siri history due to no messenger", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    handlerCopy[2](handlerCopy, v12);
  }
}

- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  selectionsCopy = selections;
  handlerCopy = handler;
  messenger = [(_HMSiriEndpointProfile *)self messenger];
  if (messenger)
  {
    accessory = [(_HMAccessoryProfile *)self accessory];
    uuid = [accessory uuid];

    [messenger sendApplyOnboardingSelectionsRequestWithAccessoryUUID:uuid onboardingSelections:selectionsCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to apply onboarding selections due to no messenger", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    handlerCopy[2](handlerCopy, v15, 1);
  }
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMSE.up" receiver:self selector:sel__handleUpdateProfileState_];
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = selfCopy;
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring siri endpoint profile: %@ with context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14.receiver = selfCopy;
  v14.super_class = _HMSiriEndpointProfile;
  [(_HMAccessoryProfile *)&v14 __configureWithContext:contextCopy accessory:accessoryCopy];
  home = [(_HMAccessoryProfile *)selfCopy home];
  createSiriEndpointProfilesMessenger = [home createSiriEndpointProfilesMessenger];
  [(_HMSiriEndpointProfile *)selfCopy setMessenger:createSiriEndpointProfilesMessenger];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37, &__block_literal_global_34295);
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end