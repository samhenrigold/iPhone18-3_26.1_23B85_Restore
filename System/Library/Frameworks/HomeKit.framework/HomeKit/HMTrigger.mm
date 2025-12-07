@interface HMTrigger
+ (id)logCategory;
+ (uint64_t)_validateActionSet:(void *)set home:(int)home homeOwnedOnly:(void *)only error:;
+ (uint64_t)_validateName:(void *)name configuredName:(void *)configuredName error:;
+ (uint64_t)_validatePolicy:(void *)policy error:;
- (BOOL)_updateActionSetFromResponse:(id)response responsePayload:(id)payload;
- (BOOL)_updateTriggerNameFromResponse:(id)response responsePayload:(id)payload;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates;
- (HMDevice)ownerDevice;
- (HMHome)home;
- (HMTrigger)initWithCoder:(id)coder;
- (HMTrigger)initWithDictionary:(id)dictionary home:(id)home;
- (HMTrigger)initWithName:(id)name configuredName:(id)configuredName;
- (HMTriggerPolicy)policy;
- (HMUser)owner;
- (NSArray)actionSets;
- (NSDate)lastFireDate;
- (NSString)configuredName;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)_serializeForAdd;
- (id)assistantIdentifier;
- (id)logIdentifier;
- (id)triggerName;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addActionSetOfType:(id)type completionHandler:(id)handler;
- (void)_enable:(BOOL)_enable completionHandler:(id)handler;
- (void)_handleTriggerFired:(id)fired;
- (void)_handleTriggerFiredNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updateActionSet:(id)set add:(BOOL)add completionHandler:(id)handler;
- (void)_updateClientWithResults:(id)results withError:(id)error;
- (void)addActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)addActionSetOfType:(id)type completionHandler:(id)handler;
- (void)enable:(BOOL)enable completionHandler:(void *)completion;
- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)removePolicy:(id)policy completionHandler:(id)handler;
- (void)setConfiguredName:(id)name;
- (void)setEnabled:(BOOL)enabled;
- (void)setHome:(id)home;
- (void)setLastFireDate:(id)date;
- (void)setName:(id)name;
- (void)setOwner:(id)owner;
- (void)setOwnerDevice:(id)device;
- (void)setPolicy:(id)policy;
- (void)setTriggerName:(uint64_t)name;
- (void)setUuid:(id)uuid;
- (void)updateName:(id)name configuredName:(id)configuredName completionHandler:(id)handler;
- (void)updatePolicy:(id)policy completionHandler:(id)handler;
@end

@implementation HMTrigger

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    triggerName = [(HMTrigger *)self triggerName];
    configuredName = [(HMTrigger *)self configuredName];
    uuid = [(HMTrigger *)self uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@/%@", triggerName, configuredName, uUIDString];
  }

  else
  {
    triggerName = [(HMTrigger *)self uuid];
    uUIDString2 = [triggerName UUIDString];
  }

  return uUIDString2;
}

- (id)triggerName
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

- (void)_updateClientWithResults:(id)results withError:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  if (resultsCopy)
  {
    context = [(HMTrigger *)self context];
    delegateCaller = [context delegateCaller];
    [delegateCaller callCompletion:resultsCopy error:errorCopy];
  }

  else
  {
    context = [(HMTrigger *)self home];
    [context _notifyDelegateOfTriggerUpdated:self];
  }
}

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates
{
  v64 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  selfCopy = self;
  currentActionSets = [(HMTrigger *)self currentActionSets];
  array = [currentActionSets array];

  v46 = updatesCopy;
  currentActionSets2 = [updatesCopy currentActionSets];
  array2 = [currentActionSets2 array];

  v50 = array;
  v47 = [[HMObjectMergeCollection alloc] initWithCurrentObjects:array newObjects:array2];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = array2;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v48 = 0;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        uniqueIdentifier = [v13 uniqueIdentifier];
        v15 = [v50 hmf_firstObjectWithValue:uniqueIdentifier forKeyPath:@"uniqueIdentifier"];

        actionSetType = [v13 actionSetType];
        if ([actionSetType isEqualToString:@"HMActionSetTypeTriggerOwned"])
        {
          actionSetType2 = [v15 actionSetType];
          v18 = [actionSetType2 isEqualToString:@"HMActionSetTypeTriggerOwned"];

          if (v18)
          {
            v48 |= [v15 mergeFromNewObjectForBuilderUpdates:v13];
          }
        }

        else
        {
        }
      }

      v10 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v48) = 0;
  }

  v19 = v47;
  removedObjects = [(HMObjectMergeCollection *)v47 removedObjects];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v52[3] = &unk_1E7549A58;
  v52[4] = selfCopy;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v52];

  addedObjects = [(HMObjectMergeCollection *)v47 addedObjects];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_266;
  v51[3] = &unk_1E7549A58;
  v51[4] = selfCopy;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v51];

  finalObjects = [(HMObjectMergeCollection *)v47 finalObjects];
  currentActionSets3 = [(HMTrigger *)selfCopy currentActionSets];
  [currentActionSets3 setArray:finalObjects];

  isModified = [(HMObjectMergeCollection *)v47 isModified];
  LODWORD(finalObjects) = [(HMTrigger *)selfCopy isEnabled];
  if (finalObjects == [v46 isEnabled])
  {
    v25 = isModified | v48;
  }

  else
  {
    -[HMTrigger setEnabled:](selfCopy, "setEnabled:", [v46 isEnabled]);
    v25 = 1;
  }

  configuredName = [(HMTrigger *)selfCopy configuredName];
  configuredName2 = [v46 configuredName];
  v28 = HMFEqualObjects();

  if ((v28 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      configuredName3 = [(HMTrigger *)v30 configuredName];
      configuredName4 = [v46 configuredName];
      *buf = 138543874;
      v58 = v32;
      v59 = 2112;
      v60 = configuredName3;
      v61 = 2112;
      v62 = configuredName4;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating configured name from %@ to %@ via merge", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    configuredName5 = [v46 configuredName];
    [(HMTrigger *)v30 setConfiguredName:configuredName5];

    v25 = 1;
    v19 = v47;
  }

  triggerName = [(HMTrigger *)selfCopy triggerName];
  name = [v46 name];
  v38 = [triggerName isEqualToString:name];

  if ((v38 & 1) == 0)
  {
    name2 = [v46 name];
    [(HMTrigger *)selfCopy setTriggerName:name2];

    v25 = 1;
  }

  policy = [(HMTrigger *)selfCopy policy];
  policy2 = [v46 policy];
  v42 = HMFEqualObjects();

  if ((v42 & 1) == 0)
  {
    policy3 = [v46 policy];
    [(HMTrigger *)selfCopy setPolicy:policy3];

    v25 = 1;
  }

  return v25 & 1;
}

void __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action set via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_266(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@added action set via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)setTriggerName:(uint64_t)name
{
  v4 = a2;
  if (name)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong((name + 16), a2);
    os_unfair_lock_unlock((name + 8));
  }
}

- (BOOL)mergeFromNewObject:(id)object
{
  v84 = *MEMORY[0x1E69E9840];
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

  if (!v6)
  {
    v52 = 0;
    goto LABEL_35;
  }

  v7 = [HMObjectMergeCollection alloc];
  currentActionSets = [(HMTrigger *)self currentActionSets];
  array = [currentActionSets array];
  currentActionSets2 = [v6 currentActionSets];
  array2 = [currentActionSets2 array];
  v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v12 removedObjects];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __32__HMTrigger_mergeFromNewObject___block_invoke;
  v77[3] = &unk_1E7549A58;
  v77[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v77];

  home = [(HMTrigger *)self home];
  v15 = MEMORY[0x1E695DF70];
  actionSets = [home actionSets];
  v17 = [v15 arrayWithArray:actionSets];

  v69 = home;
  triggerOwnedActionSets = [home triggerOwnedActionSets];
  [v17 addObjectsFromArray:triggerOwnedActionSets];

  v68 = v17;
  [(HMObjectMergeCollection *)v12 replaceAddedObjectsWithObjects:v17];
  addedObjects = [(HMObjectMergeCollection *)v12 addedObjects];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_262;
  v76[3] = &unk_1E7549A58;
  v76[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v76];

  finalObjects = [(HMObjectMergeCollection *)v12 finalObjects];
  currentActionSets3 = [(HMTrigger *)self currentActionSets];
  [currentActionSets3 setArray:finalObjects];

  isModified = [(HMObjectMergeCollection *)v12 isModified];
  LODWORD(currentActionSets3) = [(HMTrigger *)self isEnabled];
  if (currentActionSets3 != [v6 isEnabled])
  {
    -[HMTrigger setEnabled:](self, "setEnabled:", [v6 isEnabled]);
    isModified = 1;
  }

  lastFireDate = [(HMTrigger *)self lastFireDate];
  lastFireDate2 = [v6 lastFireDate];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    lastFireDate3 = [v6 lastFireDate];
    [(HMTrigger *)self setLastFireDate:lastFireDate3];

    isModified = 1;
  }

  configuredName = [(HMTrigger *)self configuredName];
  configuredName2 = [v6 configuredName];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      configuredName3 = [(HMTrigger *)selfCopy configuredName];
      configuredName4 = [v6 configuredName];
      *buf = 138543874;
      v79 = v33;
      v80 = 2112;
      v81 = configuredName3;
      v82 = 2112;
      v83 = configuredName4;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating configured name from %@ to %@ via merge", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    configuredName5 = [v6 configuredName];
    [(HMTrigger *)selfCopy setConfiguredName:configuredName5];

    isModified = 1;
  }

  triggerName = [(HMTrigger *)self triggerName];
  name = [v6 name];
  v39 = [triggerName isEqualToString:name];

  if ((v39 & 1) == 0)
  {
    name2 = [v6 name];
    [(HMTrigger *)self setTriggerName:name2];

    home2 = [(HMTrigger *)self home];
    delegate = [home2 delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMTrigger *)self context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_263;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v74 = delegate;
      v75 = home2;
      dispatch_async(queue, block);
    }

    isModified = 1;
  }

  ownerDevice = [(HMTrigger *)self ownerDevice];

  ownerDevice2 = [v6 ownerDevice];
  v47 = ownerDevice2;
  if (ownerDevice)
  {

    if (v47)
    {
      ownerDevice3 = [(HMTrigger *)self ownerDevice];
      ownerDevice4 = [v6 ownerDevice];
      v50 = [ownerDevice3 mergeFromNewObject:ownerDevice4];

      v51 = v50 | isModified;
      goto LABEL_24;
    }

    ownerDevice5 = [v6 ownerDevice];
    [(HMTrigger *)self setOwnerDevice:ownerDevice5];
  }

  else
  {
    [(HMTrigger *)self setOwnerDevice:ownerDevice2];
  }

  v51 = 1;
LABEL_24:
  owner = [(HMTrigger *)self owner];
  owner2 = [v6 owner];
  v56 = owner2;
  if (!owner)
  {
    selfCopy3 = self;
    v58 = v56;
LABEL_29:
    [(HMTrigger *)selfCopy3 setOwner:v58];
    v52 = 1;
    goto LABEL_30;
  }

  if (!owner2)
  {
    selfCopy3 = self;
    v58 = 0;
    goto LABEL_29;
  }

  v52 = [owner mergeFromNewObject:owner2] | v51;
LABEL_30:
  policy = [(HMTrigger *)self policy];
  policy2 = [v6 policy];
  v61 = HMFEqualObjects();

  if ((v61 & 1) == 0)
  {
    policy3 = [v6 policy];
    [(HMTrigger *)self setPolicy:policy3];

    home3 = [(HMTrigger *)self home];
    delegate2 = [home3 delegate];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMTrigger *)self context];
      queue2 = [context2 queue];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_3;
      v70[3] = &unk_1E754E5E8;
      v70[4] = self;
      v71 = delegate2;
      v72 = home3;
      dispatch_async(queue2, v70);
    }

    v52 = 1;
  }

LABEL_35:
  return v52 & 1;
}

void __32__HMTrigger_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action set via trigger merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_262(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action set via trigger merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_263(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_3(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_4;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

- (HMTrigger)initWithCoder:(id)coder
{
  v27[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMT.triggerConfiguredNameCodingKey"];
  v7 = [(HMTrigger *)self initWithName:v5 configuredName:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    [(HMTrigger *)v7 setHome:v8];

    v9 = [coderCopy hm_decodeAndCacheUUIDFromStringForKey:@"triggerUUID"];
    uuid = v7->_uuid;
    v7->_uuid = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    currentActionSets = v7->_currentActionSets;
    v15 = [coderCopy decodeObjectOfClasses:v13 forKey:@"triggerActionSets"];
    [(HMMutableArray *)currentActionSets setArray:v15];

    -[HMTrigger setEnabled:](v7, "setEnabled:", [coderCopy decodeBoolForKey:@"triggerActive"]);
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerLastFireDate"];
    lastFireDate = v7->_lastFireDate;
    v7->_lastFireDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    ownerDevice = v7->_ownerDevice;
    v7->_ownerDevice = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    objc_storeWeak(&v7->_owner, v20);

    v21 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v23 = [v21 setWithArray:v22];

    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"HMT.policyKey"];
    policy = v7->_policy;
    v7->_policy = v24;
  }

  return v7;
}

- (void)_registerNotificationHandlers
{
  context = [(HMTrigger *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kTriggerFiredNotificationKey" receiver:self selector:sel__handleTriggerFiredNotification_];
}

- (BOOL)_updateActionSetFromResponse:(id)response responsePayload:(id)payload
{
  v90 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  payloadCopy = payload;
  home = [(HMTrigger *)self home];
  v9 = [payloadCopy hmf_stringForKey:@"kTriggerActionSetTypeKey"];
  v10 = [payloadCopy hmf_numberForKey:@"kTriggerAddActionSetKey"];
  v11 = [payloadCopy hmf_UUIDForKey:@"kTriggerActionSetUUIDKey"];
  v12 = v11;
  if (home)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = v13 || v11 == 0 || v9 == 0;
  v16 = v15;
  v79 = v16;
  if (!v15)
  {
    v22 = [v9 isEqualToString:@"HMActionSetTypeTriggerOwned"];
    v73 = v12;
    if (![v10 BOOLValue])
    {
      currentActionSets = [(HMTrigger *)self currentActionSets];
      v24 = [currentActionSets firstItemWithUUID:v12];

      v27 = _Block_copy(responseCopy);
      v25 = v27;
      if (v24)
      {
        currentActionSets2 = [(HMTrigger *)self currentActionSets];
        [currentActionSets2 removeObject:v24];
        aBlock = 0;
        v74 = 1;
      }

      else
      {
        if (!v27)
        {
          aBlock = 0;
          v77 = 0;
          v74 = 1;
          goto LABEL_32;
        }

        currentActionSets2 = [(HMTrigger *)self context];
        delegateCaller = [currentActionSets2 delegateCaller];
        v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        [delegateCaller callCompletion:v25 error:v34];

        v12 = v73;
        v24 = 0;
        v74 = 0;
        aBlock = 0;
      }

LABEL_31:
      v77 = v24;

LABEL_32:
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      v72 = v10;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v39 = payloadCopy;
        v40 = v9;
        v41 = v25;
        v42 = home;
        v44 = v43 = responseCopy;
        *buf = 138543618;
        v81 = v38;
        v82 = 2112;
        v83 = v44;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_INFO, "%{public}@Should we call completion handler: %@", buf, 0x16u);

        responseCopy = v43;
        home = v42;
        v25 = v41;
        v9 = v40;
        payloadCopy = v39;
        v10 = v72;

        v12 = v73;
      }

      objc_autoreleasePoolPop(v35);
      v45 = v77;
      if (v74)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v49 = v75 = responseCopy;
          v50 = _Block_copy(v25);
          v71 = v25;
          v51 = v12;
          v52 = _Block_copy(aBlock);
          *buf = 138543874;
          v81 = v49;
          v82 = 2112;
          v83 = v50;
          v84 = 2112;
          v85 = v52;
          _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_INFO, "%{public}@Looks like we did not yet call the completion handler: [completion: %@], [triggerOwnedActionSetAddCompletion: %@]", buf, 0x20u);

          v12 = v51;
          v25 = v71;

          v45 = v77;
          responseCopy = v75;
        }

        objc_autoreleasePoolPop(v46);
        if (v25)
        {
          v53 = responseCopy;
          v54 = objc_autoreleasePoolPush();
          v55 = v47;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v81 = v57;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_INFO, "%{public}@Calling completion handler", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v54);
          context = [(HMTrigger *)v55 context];
          delegateCaller2 = [context delegateCaller];
          [delegateCaller2 callCompletion:v25 error:0];

          responseCopy = v53;
          v10 = v72;
          v12 = v73;
          v45 = v77;
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = v47;
          v62 = HMFGetOSLogHandle();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
          if (aBlock)
          {
            v64 = responseCopy;
            if (v63)
            {
              HMFGetLogIdentifier();
              v66 = v65 = v60;
              *buf = 138543362;
              v81 = v66;
              _os_log_impl(&dword_19BB39000, v62, OS_LOG_TYPE_INFO, "%{public}@Calling trigger owned action set add completion handler", buf, 0xCu);

              v60 = v65;
            }

            objc_autoreleasePoolPop(v60);
            context2 = [(HMTrigger *)v61 context];
            delegateCaller3 = [context2 delegateCaller];
            [delegateCaller3 callCompletion:aBlock actionSet:v77 error:0];

            responseCopy = v64;
            v45 = v77;
          }

          else
          {
            if (v63)
            {
              HMFGetLogIdentifier();
              v69 = v78 = v60;
              *buf = 138543362;
              v81 = v69;
              _os_log_impl(&dword_19BB39000, v62, OS_LOG_TYPE_INFO, "%{public}@Calling the trigger delegate", buf, 0xCu);

              v60 = v78;
            }

            objc_autoreleasePoolPop(v60);
            [home _notifyDelegateOfTriggerUpdated:v61];
          }

          v10 = v72;
        }
      }

      goto LABEL_51;
    }

    v74 = v22;
    if (v22)
    {
      context3 = [payloadCopy hmf_stringForKey:@"kActionSetName"];
      v24 = [home createAndAddActionSetWithName:context3 type:v9 uuid:v12];
      aBlock = _Block_copy(responseCopy);
      v25 = 0;
    }

    else
    {
      actionSets = [home actionSets];
      v24 = [actionSets hmf_firstObjectWithUUID:v12];

      v30 = _Block_copy(responseCopy);
      v25 = v30;
      aBlock = 0;
      if (v24 || !v30)
      {
        v74 = 1;
        goto LABEL_30;
      }

      context3 = [(HMTrigger *)self context];
      delegateCaller4 = [context3 delegateCaller];
      v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [delegateCaller4 callCompletion:v25 error:v32];

      v12 = v73;
      v24 = 0;
      aBlock = 0;
    }

LABEL_30:
    currentActionSets2 = [(HMTrigger *)self currentActionSets];
    [currentActionSets2 addObjectIfNotPresent:v24];
    goto LABEL_31;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v21 = v20 = v12;
    *buf = 138544386;
    v81 = v21;
    v82 = 2112;
    v83 = home;
    v84 = 2112;
    v85 = v10;
    v86 = 2112;
    v87 = v20;
    v88 = 2112;
    v89 = v9;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Required parameters not available. Not updating the action set from response. [Home: %@], [addActionSet : %@], [actionSetUUID: %@], [actionSetType: %@]", buf, 0x34u);

    v12 = v20;
  }

  objc_autoreleasePoolPop(v17);
LABEL_51:

  return v79;
}

- (void)_handleTriggerFiredNotification:(id)notification
{
  notificationCopy = notification;
  context = [(HMTrigger *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v7 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v8 = [notificationCopy dictionaryForKey:@"kTriggerInfo"];

  [(HMTrigger *)self _handleTriggerFired:v8];
  [(HMTrigger *)self _updateClientWithResults:v7 withError:0];
}

- (void)_handleTriggerFired:(id)fired
{
  v4 = [fired hmf_dateForKey:@"kTriggerLastFireDateKey"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMTrigger *)self setLastFireDate:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)_updateTriggerNameFromResponse:(id)response responsePayload:(id)payload
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  payloadCopy = payload;
  v8 = [payloadCopy hmf_stringForKey:@"kTriggerName"];
  v9 = [payloadCopy hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = payloadCopy;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated Trigger Name from payload: %@ with name : [%@], configuredName: [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  [(HMTrigger *)selfCopy setTriggerName:v8];
  [(HMTrigger *)selfCopy setConfiguredName:v9];
  if (responseCopy)
  {
    context = [(HMTrigger *)selfCopy context];
    delegateCaller = [context delegateCaller];
    [delegateCaller callCompletion:responseCopy error:0];
    v16 = 0;
  }

  else
  {
    context = [(HMTrigger *)selfCopy home];
    delegateCaller = [context delegate];
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      context2 = [(HMTrigger *)selfCopy context];
      delegateCaller2 = [context2 delegateCaller];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__HMTrigger__updateTriggerNameFromResponse_responsePayload___block_invoke;
      v21[3] = &unk_1E754E5E8;
      v22 = delegateCaller;
      v23 = context;
      v24 = selfCopy;
      [delegateCaller2 invokeBlock:v21];
    }

    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

- (void)removePolicy:(id)policy completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    v31 = 0;
    v9 = [HMTrigger _validatePolicy:policyCopy error:&v31];
    v10 = v31;
    if (v9)
    {
      home = [(HMTrigger *)self home];
      if (home)
      {
        policy = [(HMTrigger *)self policy];
        v13 = policy == 0;

        if (v13)
        {
          context2 = [(HMTrigger *)self context];
          delegateCaller = [context2 delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:0];
        }

        v32 = @"HMT.policyKey";
        v33 = MEMORY[0x1E695E0F8];
        context3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v17 = MEMORY[0x1E69A2A10];
        v18 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMTrigger *)self uuid];
        v20 = [v18 initWithTarget:uuid];
        delegateCaller2 = [v17 messageWithName:@"HMTriggerRemovePolicyKey" destination:v20 payload:context3];

        objc_initWeak(location, self);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __44__HMTrigger_removePolicy_completionHandler___block_invoke;
        v28[3] = &unk_1E754CFF8;
        objc_copyWeak(&v30, location);
        v29 = handlerCopy;
        [delegateCaller2 setResponseHandler:v28];
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:delegateCaller2];

        objc_destroyWeak(&v30);
        objc_destroyWeak(location);
      }

      else
      {
        context3 = [(HMTrigger *)self context];
        delegateCaller2 = [context3 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        [delegateCaller2 callCompletion:handlerCopy error:v27];
      }
    }

    else
    {
      home = [context delegateCaller];
      [home callCompletion:handlerCopy error:v10];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v26;
      v35 = 2080;
      v36 = "[HMTrigger removePolicy:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }
}

+ (uint64_t)_validatePolicy:(void *)policy error:
{
  v4 = a2;
  objc_opt_self();
  v5 = v4;
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  v6 = v4 & (v5 != 0);
  if (policy && (v6 & 1) == 0)
  {
    *policy = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  }

  return v6;
}

void __44__HMTrigger_removePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger remove policy response : %@, completionHandler: %@ error %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 setPolicy:0];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
}

- (void)updatePolicy:(id)policy completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    v27 = 0;
    v9 = [HMTrigger _validatePolicy:policyCopy error:&v27];
    v10 = v27;
    if (v9)
    {
      home = [(HMTrigger *)self home];
      if (home)
      {
        v30 = @"HMT.deleteAfterExecutionPolicyKey";
        v31 = MEMORY[0x1E695E118];
        context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v28 = @"HMT.policyKey";
        v29 = context2;
        delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v13 = MEMORY[0x1E69A2A10];
        v14 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMTrigger *)self uuid];
        v16 = [v14 initWithTarget:uuid];
        v17 = [v13 messageWithName:@"HMTriggerUpdatePolicyKey" destination:v16 payload:delegateCaller];

        objc_initWeak(location, self);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __44__HMTrigger_updatePolicy_completionHandler___block_invoke;
        v24[3] = &unk_1E754CFF8;
        objc_copyWeak(&v26, location);
        v25 = handlerCopy;
        [v17 setResponseHandler:v24];
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v17];

        objc_destroyWeak(&v26);
        objc_destroyWeak(location);
      }

      else
      {
        context2 = [(HMTrigger *)self context];
        delegateCaller = [context2 delegateCaller];
        v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        [delegateCaller callCompletion:handlerCopy error:v17];
      }
    }

    else
    {
      home = [context delegateCaller];
      [home callCompletion:handlerCopy error:v10];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v33 = 2080;
      v34 = "[HMTrigger updatePolicy:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }
}

void __44__HMTrigger_updatePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v24 = 138544130;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger update policy response : %@, completionHandler: %@ error %@", &v24, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    v13 = [v6 hmf_stringForKey:@"HMT.triggerPolicyUUIDKey"];
    if (!v13)
    {
      v20 = [v9 context];
      v21 = [v20 delegateCaller];
      v22 = *(a1 + 32);
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:27];
      [v21 callCompletion:v22 error:v23];

      goto LABEL_8;
    }

    v14 = v13;
    v15 = [HMTriggerDeleteAfterExecutionPolicy alloc];
    v16 = MEMORY[0x1E696AFB0];
    v17 = v15;
    v18 = [[v16 alloc] initWithUUIDString:v14];
    v19 = [(HMTriggerDeleteAfterExecutionPolicy *)v17 initWithPayload:v18 payload:v6];

    [v9 setPolicy:v19];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
LABEL_8:
}

- (id)_serializeForAdd
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  triggerName = [(HMTrigger *)self triggerName];
  [v3 setObject:triggerName forKeyedSubscript:@"kTriggerName"];

  configuredName = [(HMTrigger *)self configuredName];
  [v3 setObject:configuredName forKeyedSubscript:@"HMT.triggerConfiguredNameKey"];

  uuid = [(HMTrigger *)self uuid];
  [v3 setObject:uuid forKeyedSubscript:@"kNewObjectUUIDKey"];

  v7 = [v3 copy];

  return v7;
}

- (void)_addActionSetOfType:(id)type completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      if ([typeCopy isEqualToString:@"HMActionSetTypeTriggerOwned"])
      {
        v32[0] = @"kTriggerAddActionSetKey";
        v32[1] = @"kTriggerActionSetTypeKey";
        v33[0] = MEMORY[0x1E695E118];
        v33[1] = @"HMActionSetTypeTriggerOwned";
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v11 = MEMORY[0x1E69A2A10];
        v12 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMTrigger *)self uuid];
        v14 = [v12 initWithTarget:uuid];
        v15 = [v11 messageWithName:@"kUpdateActionSetTriggerRequestKey" destination:v14 payload:v10];

        objc_initWeak(location, self);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __51__HMTrigger__addActionSetOfType_completionHandler___block_invoke;
        v28[3] = &unk_1E754D058;
        objc_copyWeak(&v31, location);
        v30 = handlerCopy;
        v16 = context;
        v29 = v16;
        [v15 setResponseHandler:v28];
        messageDispatcher = [v16 messageDispatcher];
        [messageDispatcher sendMessage:v15 completionHandler:0];

        objc_destroyWeak(&v31);
        objc_destroyWeak(location);
      }

      else
      {
        context2 = [(HMTrigger *)self context];
        delegateCaller = [context2 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [delegateCaller callCompletion:handlerCopy actionSet:0 error:v27];
      }
    }

    else
    {
      context3 = [(HMTrigger *)self context];
      delegateCaller2 = [context3 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller2 callCompletion:handlerCopy actionSet:0 error:v24];

      home = 0;
    }

    goto LABEL_11;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *location = 138543618;
    *&location[4] = v21;
    v35 = 2080;
    v36 = "[HMTrigger _addActionSetOfType:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (handlerCopy)
  {
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, home);
LABEL_11:
  }
}

void __51__HMTrigger__addActionSetOfType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 40));
    v21 = 138544130;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@addActionSetOfType: response : %@, completionHandler: %@ error %@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = 1;
  if (!v5 && v6)
  {
    v14 = _Block_copy(*(a1 + 40));
    v13 = [v9 _updateActionSetFromResponse:v14 responsePayload:v6];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    v21 = 138543618;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@addActionSetOfType: shouldCallClientHandler: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  if (v13)
  {
    v20 = [*(a1 + 32) delegateCaller];
    [v20 callCompletion:*(a1 + 40) actionSet:0 error:v5];
  }
}

- (void)addActionSetOfType:(id)type completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"You must provide a completion handler";
    goto LABEL_11;
  }

  v8 = handlerCopy;
  if (([typeCopy isEqualToString:@"HMActionSetTypeTriggerOwned"] & 1) == 0)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"type must be HMActionSetTypeTriggerOwned";
LABEL_11:
    v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  context = [(HMTrigger *)self context];
  v10 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HMTrigger_addActionSetOfType_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v21 = typeCopy;
    v22 = v8;
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
      *buf = 138543618;
      v24 = v15;
      v25 = 2080;
      v26 = "[HMTrigger addActionSetOfType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)_enable:(BOOL)_enable completionHandler:(id)handler
{
  _enableCopy = _enable;
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    if (_enableCopy && (-[HMTrigger currentActionSets](self, "currentActionSets"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, !v9))
    {
      delegateCaller = [context delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:26];
    }

    else
    {
      home = [(HMTrigger *)self home];

      if (home)
      {
        v32 = @"kTriggerActivate";
        v11 = [MEMORY[0x1E696AD98] numberWithBool:_enableCopy];
        v33 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

        v13 = MEMORY[0x1E69A2A10];
        v14 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid = [(HMTrigger *)self uuid];
        v16 = [v14 initWithTarget:uuid];
        v17 = [v13 messageWithName:@"kActivateTriggerRequestKey" destination:v16 payload:v12];

        objc_initWeak(location, self);
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __39__HMTrigger__enable_completionHandler___block_invoke;
        v29 = &unk_1E754CFF8;
        objc_copyWeak(&v31, location);
        v30 = handlerCopy;
        [v17 setResponseHandler:&v26];
        messageDispatcher = [context messageDispatcher];
        [messageDispatcher sendMessage:v17 completionHandler:0];

        objc_destroyWeak(&v31);
        objc_destroyWeak(location);

        goto LABEL_12;
      }

      delegateCaller = [context delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    }

    v25 = v24;
    [delegateCaller callCompletion:handlerCopy error:v24];

    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *location = 138543618;
    *&location[4] = v22;
    v35 = 2080;
    v36 = "[HMTrigger _enable:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_12:
}

void __39__HMTrigger__enable_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Activate trigger response : %@, completionHandler: %@ error %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kTriggerActivate"}];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
}

- (void)enable:(BOOL)enable completionHandler:(void *)completion
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = completion;
  context = [(HMTrigger *)self context];
  if (!v6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger enable:completionHandler:]", @"completion"];
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
    block[2] = __38__HMTrigger_enable_completionHandler___block_invoke;
    block[3] = &unk_1E7548108;
    block[4] = self;
    v23 = enable;
    v22 = v6;
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
      v27 = "[HMTrigger enable:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }
}

- (void)updateName:(id)name configuredName:(id)configuredName completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  configuredNameCopy = configuredName;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (context)
  {
    v33 = 0;
    v12 = [HMTrigger _validateName:nameCopy configuredName:configuredNameCopy error:&v33];
    v29 = v33;
    if ((v12 & 1) == 0)
    {
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:v29];
LABEL_17:

      goto LABEL_18;
    }

    delegateCaller = [(HMTrigger *)self home];
    if (delegateCaller)
    {
      triggerName = [(HMTrigger *)self triggerName];
      if ([triggerName isEqualToString:nameCopy])
      {
        configuredName = [(HMTrigger *)self configuredName];
        v16 = [configuredName isEqualToString:configuredNameCopy];

        if (v16)
        {
          context2 = [(HMTrigger *)self context];
          delegateCaller2 = [context2 delegateCaller];
          [delegateCaller2 callCompletion:handlerCopy error:0];
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      context2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{2, v29}];
      [context2 setObject:nameCopy forKeyedSubscript:@"kTriggerName"];
      if (configuredNameCopy)
      {
        [context2 setObject:configuredNameCopy forKeyedSubscript:@"HMT.triggerConfiguredNameKey"];
      }

      v24 = MEMORY[0x1E69A2A10];
      v25 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMTrigger *)self uuid];
      v27 = [v25 initWithTarget:uuid];
      delegateCaller2 = [v24 messageWithName:@"kRenameTriggerRequestKey" destination:v27 payload:context2];

      objc_initWeak(buf, self);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __57__HMTrigger_updateName_configuredName_completionHandler___block_invoke;
      v30[3] = &unk_1E754CFF8;
      objc_copyWeak(&v32, buf);
      v31 = handlerCopy;
      [delegateCaller2 setResponseHandler:v30];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:delegateCaller2 completionHandler:0];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }

    context2 = [(HMTrigger *)self context];
    delegateCaller2 = [context2 delegateCaller];
    v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v23];

    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v22;
    v36 = 2080;
    v37 = "[HMTrigger updateName:configuredName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_18:
}

+ (uint64_t)_validateName:(void *)name configuredName:(void *)configuredName error:
{
  v6 = a2;
  nameCopy = name;
  objc_opt_self();
  if (!v6)
  {
    if (configuredName)
    {
      v10 = 20;
      goto LABEL_12;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_15;
  }

  v8 = [v6 length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  if (v8 <= HMMaxLengthForNaming__hmf_once_v9)
  {
    v9 = [nameCopy length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v9 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      v11 = 1;
      goto LABEL_15;
    }
  }

  if (!configuredName)
  {
    goto LABEL_13;
  }

  v10 = 46;
LABEL_12:
  [MEMORY[0x1E696ABC0] hmErrorWithCode:v10];
  *configuredName = v11 = 0;
LABEL_15:

  return v11;
}

void __57__HMTrigger_updateName_configuredName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Rename trigger response : %@, completionHandler: %@ error %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _updateTriggerNameFromResponse:*(a1 + 32) responsePayload:v6])
  {
    [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
  }
}

- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = actionSet;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger removeActionSet:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v9 = context;
  if (context)
  {
    home = [(HMTrigger *)self home];
    v28 = 0;
    v11 = [HMTrigger _validateActionSet:v6 home:home homeOwnedOnly:0 error:&v28];
    v12 = v28;

    if (v11)
    {
      queue = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__HMTrigger_removeActionSet_completionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      block[4] = self;
      v26 = v6;
      v27 = v7;
      dispatch_async(queue, block);
    }

    else
    {
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:v7 error:v12];

      v12 = delegateCaller;
    }
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
      v31 = 2080;
      v32 = "[HMTrigger removeActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }
}

+ (uint64_t)_validateActionSet:(void *)set home:(int)home homeOwnedOnly:(void *)only error:
{
  v8 = a2;
  setCopy = set;
  objc_opt_self();
  if (!v8)
  {
    if (!only)
    {
      goto LABEL_14;
    }

    v17 = 20;
LABEL_13:
    [MEMORY[0x1E696ABC0] hmErrorWithCode:v17];
    *only = v16 = 0;
    goto LABEL_15;
  }

  if (setCopy)
  {
    home = [v8 home];
    uuid = [home uuid];
    uuid2 = [setCopy uuid];
    v13 = [uuid isEqual:uuid2];

    if ((v13 & 1) == 0)
    {
      if (!only)
      {
        goto LABEL_14;
      }

      v17 = 11;
      goto LABEL_13;
    }
  }

  if (home)
  {
    actionSetType = [v8 actionSetType];
    IsHomeOwned = HMActionSetTypeIsHomeOwned(actionSetType);

    if (!IsHomeOwned)
    {
      if (only)
      {
        v17 = 3;
        goto LABEL_13;
      }

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)addActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = actionSet;
  v7 = completion;
  context = [(HMTrigger *)self context];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger addActionSet:completionHandler:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v9 = context;
  if (context)
  {
    home = [(HMTrigger *)self home];
    v28 = 0;
    v11 = [HMTrigger _validateActionSet:v6 home:home homeOwnedOnly:1 error:&v28];
    v12 = v28;

    if (v11)
    {
      queue = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__HMTrigger_addActionSet_completionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      block[4] = self;
      v26 = v6;
      v27 = v7;
      dispatch_async(queue, block);
    }

    else
    {
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:v7 error:v12];

      v12 = delegateCaller;
    }
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
      v31 = 2080;
      v32 = "[HMTrigger addActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }
}

- (void)_updateActionSet:(id)set add:(BOOL)add completionHandler:(id)handler
{
  addCopy = add;
  v52 = *MEMORY[0x1E69E9840];
  setCopy = set;
  handlerCopy = handler;
  context = [(HMTrigger *)self context];
  if (!handlerCopy)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger _updateActionSet:add:completionHandler:]", @"clientCompletionHandler"];
    v38 = objc_autoreleasePoolPush();
    selfCopy = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v41;
      v50 = 2112;
      v51 = v37;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v42);
  }

  v11 = context;
  if (context)
  {
    home = [(HMTrigger *)self home];
    if (home)
    {
      currentActionSets = [(HMTrigger *)self currentActionSets];
      v14 = [currentActionSets containsObject:setCopy];

      if (addCopy)
      {
        if (v14)
        {
          context2 = [(HMTrigger *)self context];
          delegateCaller = [context2 delegateCaller];
          v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:1];
LABEL_14:
          v36 = v17;
          [delegateCaller callCompletion:handlerCopy error:v17];

          goto LABEL_15;
        }
      }

      else if ((v14 & 1) == 0)
      {
        context2 = [(HMTrigger *)self context];
        delegateCaller = [context2 delegateCaller];
        v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        goto LABEL_14;
      }

      v46[0] = @"kTriggerAddActionSetKey";
      v25 = [MEMORY[0x1E696AD98] numberWithBool:addCopy];
      v47[0] = v25;
      v46[1] = @"kTriggerActionSetUUIDKey";
      uuid = [setCopy uuid];
      uUIDString = [uuid UUIDString];
      v47[1] = uUIDString;
      v46[2] = @"kTriggerActionSetTypeKey";
      actionSetType = [setCopy actionSetType];
      v47[2] = actionSetType;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

      v30 = MEMORY[0x1E69A2A10];
      v31 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid2 = [(HMTrigger *)self uuid];
      v33 = [v31 initWithTarget:uuid2];
      v34 = [v30 messageWithName:@"kUpdateActionSetTriggerRequestKey" destination:v33 payload:v29];

      objc_initWeak(buf, self);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __52__HMTrigger__updateActionSet_add_completionHandler___block_invoke;
      v43[3] = &unk_1E754CFF8;
      objc_copyWeak(&v45, buf);
      v44 = handlerCopy;
      [v34 setResponseHandler:v43];
      messageDispatcher = [v11 messageDispatcher];
      [messageDispatcher sendMessage:v34 completionHandler:0];

      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }

    else
    {
      context3 = [(HMTrigger *)self context];
      delegateCaller2 = [context3 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller2 callCompletion:handlerCopy error:v24];

      home = 0;
    }
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
      v49 = v21;
      v50 = 2080;
      v51 = "[HMTrigger _updateActionSet:add:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
  }

LABEL_15:
}

void __52__HMTrigger__updateActionSet_add_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v20 = 138544130;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@_updateActionSet: response : %@, completionHandler: %@ error %@", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = 1;
  if (!v5 && v6)
  {
    v14 = _Block_copy(*(a1 + 32));
    v13 = [v9 _updateActionSetFromResponse:v14 responsePayload:v6];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    v20 = 138543618;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@_updateActionSet : shouldCallClientHandler: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  if (v13)
  {
    [v16 _updateClientWithResults:*(a1 + 32) withError:v5];
  }
}

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  os_unfair_lock_lock_with_options();
  policy = self->_policy;
  self->_policy = policyCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMTriggerPolicy)policy
{
  os_unfair_lock_lock_with_options();
  v3 = self->_policy;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)assistantIdentifier
{
  uuid = [(HMTrigger *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"TR", uuid, 0);

  return v3;
}

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_owner, ownerCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMUser)owner
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setOwnerDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  ownerDevice = self->_ownerDevice;
  self->_ownerDevice = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDevice)ownerDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_ownerDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
  uuid = self->_uuid;
  self->_uuid = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)uuid
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uuid;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

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

- (void)setLastFireDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  v4 = [dateCopy copy];
  lastFireDate = self->_lastFireDate;
  self->_lastFireDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastFireDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastFireDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)actionSets
{
  currentActionSets = [(HMTrigger *)self currentActionSets];
  array = [currentActionSets array];

  return array;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_configuredName copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_lock_unlock(&self->_lock);
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
  configuredName = self->_configuredName;
  if (configuredName)
  {
    v4 = [(NSString *)configuredName copy];
  }

  else
  {
    v4 = [(NSString *)self->_name copy];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v36 = *MEMORY[0x1E69E9840];
  obj = context;
  contextCopy = context;
  homeCopy = home;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138544130;
    v29 = v11;
    v30 = 2112;
    v31 = contextCopy;
    v32 = 2112;
    v33 = homeCopy;
    v34 = 2112;
    v35 = selfCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring trigger with context : %@, Home: %@, HMTrigger: %@", buf, 0x2Au);
  }

  v22 = contextCopy;

  objc_autoreleasePoolPop(v8);
  [(HMTrigger *)selfCopy setHome:homeCopy];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  currentActionSets = [(HMTrigger *)selfCopy currentActionSets];
  array = [currentActionSets array];

  v14 = [array countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(array);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        actionSetType = [v18 actionSetType];
        v20 = [actionSetType isEqualToString:@"HMActionSetTypeTriggerOwned"];

        if (v20)
        {
          [homeCopy adoptTriggerOwnedActionSet:v18];
        }
      }

      v15 = [array countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  if (v22)
  {
    objc_storeStrong(&selfCopy->_context, obj);
    [(HMTrigger *)selfCopy _registerNotificationHandlers];
  }
}

- (void)_unconfigure
{
  v19 = *MEMORY[0x1E69E9840];
  actionSets = [(HMTrigger *)self actionSets];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(actionSets);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        actionSetType = [v8 actionSetType];

        if (actionSetType == @"HMActionSetTypeTriggerOwned")
        {
          [v8 _unconfigure];
        }
      }

      v5 = [actionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [(HMTrigger *)self setHome:0];
  [(HMTrigger *)self setLastFireDate:0];
  currentActionSets = [(HMTrigger *)self currentActionSets];
  [currentActionSets setArray:0];

  context = [(HMTrigger *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  [(HMTrigger *)self setContext:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (HMTrigger)initWithDictionary:(id)dictionary home:(id)home
{
  v85 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v77.receiver = self;
  v77.super_class = HMTrigger;
  v8 = [(HMTrigger *)&v77 init];
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:@"kTriggerUUID"];
  if (!v9)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v8;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = objc_opt_class();
      *buf = 138543618;
      v79 = v33;
      v80 = 2112;
      v81 = v34;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing uuid", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_40;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v9];
  uuid = v8->_uuid;
  v8->_uuid = v11;

  v13 = [dictionaryCopy hmf_stringForKey:@"kTriggerName"];
  if (!v13)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v8;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = objc_opt_class();
      *buf = 138543618;
      v79 = v38;
      v80 = 2112;
      v81 = v39;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing name", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_39;
  }

  v14 = v13;
  v15 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v13];
  name = v8->_name;
  v8->_name = v15;

  v17 = MEMORY[0x1E69A2A20];
  v18 = [dictionaryCopy hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
  v19 = [v17 hmf_cachedInstanceForString:v18];
  configuredName = v8->_configuredName;
  v8->_configuredName = v19;

  v8->_enabled = [dictionaryCopy hmf_BOOLForKey:@"kTriggerActivate"];
  if ([dictionaryCopy hmf_BOOLForKey:@"HMT.deleteAfterExecutionPolicyKey"])
  {
    v21 = +[HMTriggerDeleteAfterExecutionPolicy deleteAfterExecutionPolicy];
    policy = v8->_policy;
    v8->_policy = v21;
  }

  v23 = objc_alloc(MEMORY[0x1E696AFB0]);
  v24 = [dictionaryCopy hmf_stringForKey:@"HMTriggerOwnerKey"];
  v25 = [v23 initWithUUIDString:v24];
  v26 = [homeCopy userWithUUID:v25];
  objc_storeWeak(&v8->_owner, v26);

  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [dictionaryCopy hmf_dictionaryForKey:@"kTriggerOwnedActionSetKey"];
  if (!v27)
  {
    v69 = v14;
    v70 = homeCopy;
    v29 = 0;
    goto LABEL_16;
  }

  v28 = [[HMActionSet alloc] initWithDictionary:v27 home:homeCopy];
  if (!v28)
  {
LABEL_38:

LABEL_39:
LABEL_40:
    v55 = 0;
    goto LABEL_41;
  }

  v29 = v28;
  v69 = v14;
  v70 = homeCopy;
  [v72 addObject:v28];
LABEL_16:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = [dictionaryCopy hmf_arrayForKey:@"kTriggerActionSetUUIDKey"];
  v40 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (!v40)
  {
    goto LABEL_31;
  }

  v41 = v40;
  v42 = *v74;
  v67 = v27;
  v68 = v10;
  while (2)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v74 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v73 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (!v46)
      {
        goto LABEL_34;
      }

      v47 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v46];
      if (!v47)
      {
        v46 = v44;
LABEL_34:
        v56 = objc_autoreleasePoolPush();
        v57 = v8;
        v58 = HMFGetOSLogHandle();
        homeCopy = v70;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          v60 = objc_opt_class();
          *buf = 138543874;
          v79 = v59;
          v80 = 2112;
          v81 = v60;
          v82 = 2112;
          v83 = v44;
          _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, invalid actionSet reference '%@'", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v56);
LABEL_37:

        v10 = v68;
        v14 = v69;
        v27 = v67;
        goto LABEL_38;
      }

      v48 = v47;
      uuid = [(HMActionSet *)v29 uuid];
      v50 = [v48 isEqual:uuid];

      if (v50)
      {
        goto LABEL_29;
      }

      v51 = [v70 actionSetWithUUID:v48];
      if (!v51)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = v8;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = HMFGetLogIdentifier();
          v66 = objc_opt_class();
          *buf = 138543874;
          v79 = v65;
          v80 = 2112;
          v81 = v66;
          v82 = 2112;
          v83 = v48;
          _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve actionSet %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v62);
        homeCopy = v70;
        goto LABEL_37;
      }

      v52 = v51;
      [v72 addObject:v51];

LABEL_29:
    }

    v41 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
    v27 = v67;
    v10 = v68;
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v53 = [HMMutableArray arrayWithArray:v72];
  currentActionSets = v8->_currentActionSets;
  v8->_currentActionSets = v53;

  homeCopy = v70;
LABEL_32:
  v55 = v8;
LABEL_41:

  return v55;
}

- (HMTrigger)initWithName:(id)name configuredName:(id)configuredName
{
  nameCopy = name;
  configuredNameCopy = configuredName;
  if (!nameCopy)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v8 = configuredNameCopy;
  v24.receiver = self;
  v24.super_class = HMTrigger;
  v9 = [(HMTrigger *)&v24 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v8];
    configuredName = v9->_configuredName;
    v9->_configuredName = v12;

    v14 = +[HMMutableArray array];
    currentActionSets = v9->_currentActionSets;
    v9->_currentActionSets = v14;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v9->_uuid;
    v9->_uuid = uUID;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70, &__block_literal_global_10828);
  }

  v3 = logCategory__hmf_once_v71;

  return v3;
}

uint64_t __24__HMTrigger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v71;
  logCategory__hmf_once_v71 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end