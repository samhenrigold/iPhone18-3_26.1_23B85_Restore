@interface HMActionSet
+ (BOOL)isBuiltinActionSetType:(id)type;
+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)home actions:;
+ (id)actionSetFromProtoBuf:(id)buf home:(id)home;
+ (id)allowedActionClasses;
+ (id)shortcutsComponentActionSetWithHome:(id)home actions:(id)actions;
- (BOOL)_doRemoveActionWithUUID:(id)d completionHandler:(id)handler;
- (BOOL)_handleActionRemovedFromPayload:(id)payload completion:(id)completion;
- (BOOL)_handleActionSetRenameFromPayload:(id)payload completion:(id)completion;
- (BOOL)_handleActionUpdatedFromResponse:(id)response completion:(id)completion;
- (BOOL)isExecuting;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates;
- (BOOL)requiresDeviceUnlock;
- (HMActionSet)initWithCoder:(id)coder;
- (HMActionSet)initWithDictionary:(id)dictionary home:(id)home;
- (HMActionSet)initWithName:(id)name type:(id)type uuid:(id)uuid;
- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)representation home:(id)home;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (NSDate)lastExecutionDate;
- (NSDictionary)shortcutsDictionaryRepresentation;
- (NSSet)actions;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (id)copyAsBuilder;
- (id)encodeAsProtoBuf;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addAction:(id)action completionHandler:(id)handler;
- (void)_doAddAction:(id)action uuid:(id)uuid;
- (void)_handleActionSetExecutedNotification:(id)notification;
- (void)_handleActionSetStartExecutionNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_removeAction:(id)action completionHandler:(id)handler;
- (void)_removeActionsForAccessory:(id)accessory;
- (void)_unconfigure;
- (void)_unconfigureContext;
- (void)_updateAction:(id)action changes:(id)changes completionHandler:(id)handler;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)addAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)didUpdateIsExecuting:(BOOL)executing;
- (void)removeAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)resetNameWithCompletionHandler:(id)handler;
- (void)setApplicationData:(id)data;
- (void)setExecutionInProgress:(BOOL)progress;
- (void)setHome:(id)home;
- (void)setLastExecutionDate:(id)date;
- (void)setName:(id)name;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateName:(NSString *)name completionHandler:(HMErrorBlock)completion;
- (void)updateWithBuilder:(id)builder completionHandler:(id)handler;
@end

@implementation HMActionSet

- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)representation home:(id)home
{
  representationCopy = representation;
  homeCopy = home;
  v8 = representationCopy;
  v9 = [v8 hmf_stringForKey:@"HMActionSetSerializedDictionaryProtocol"];
  if (![v9 isEqualToString:@"ProtoBuf"])
  {
    goto LABEL_6;
  }

  v10 = [v8 hmf_stringForKey:@"HMActionSetSerializedDictionaryVersion"];
  v11 = [v10 isEqualToString:@"1.0"];

  if (v11)
  {
    v9 = [v8 hmf_dataForKey:@"HMActionSetSerializedData"];
    if (v9)
    {
      v12 = [[HMPBActionSet alloc] initWithData:v9];
      if (v12)
      {
        v13 = [HMActionSet actionSetFromProtoBuf:v12 home:homeCopy];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_10;
    }

LABEL_6:
    v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (NSDictionary)shortcutsDictionaryRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  encodeAsProtoBuf = [(HMActionSet *)self encodeAsProtoBuf];
  v3 = encodeAsProtoBuf;
  if (encodeAsProtoBuf)
  {
    data = [encodeAsProtoBuf data];
    v7[0] = @"HMActionSetSerializedDictionaryVersion";
    v7[1] = @"HMActionSetSerializedDictionaryProtocol";
    v8[0] = @"1.0";
    v8[1] = @"ProtoBuf";
    v7[2] = @"HMActionSetSerializedData";
    v8[2] = data;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)shortcutsComponentActionSetWithHome:(id)home actions:(id)actions
{
  homeCopy = home;
  actionsCopy = actions;
  if (homeCopy)
  {
    v8 = actionsCopy;
    v9 = [(HMActionSet *)self _shortcutsComponentActionSetWithHome:homeCopy actions:actionsCopy];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMActionSet *)v11 _shortcutsComponentActionSetWithHome:v12 actions:v13];
  }
}

+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)home actions:
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  homeCopy = home;
  v35 = objc_opt_self();
  v6 = [HMActionSet alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(HMActionSet *)v6 initWithName:uUIDString type:@"HMActionSetTypeShortcutsComponent" uuid:uUID2];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = homeCopy;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
LABEL_3:
    v15 = v4;
    v16 = 0;
    while (1)
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v37 + 1) + 8 * v16);
      v36 = 0;
      v18 = [v17 isValidWithError:{&v36, v35}];
      v19 = v36;
      if ((v18 & 1) == 0)
      {
        break;
      }

      actionSet = [v17 actionSet];

      if (actionSet)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v35;
        v33 = v35;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v29;
          v43 = 2112;
          v44 = v17;
          v30 = "%{public}@Action is in another action set: %@";
          v31 = v28;
          v32 = 22;
LABEL_15:
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
        }

        goto LABEL_16;
      }

      uUID3 = [MEMORY[0x1E696AFB0] UUID];
      [v17 setUuid:uUID3];

      currentActions = [(HMActionSet *)v10 currentActions];
      [currentActions addObject:v17];

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
        v4 = v15;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v25 = objc_autoreleasePoolPush();
    v26 = v35;
    v27 = v35;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v29;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = v19;
      v30 = "%{public}@Invalid action %@: %@";
      v31 = v28;
      v32 = 32;
      goto LABEL_15;
    }

LABEL_16:
    v4 = v15;

    objc_autoreleasePoolPop(v25);
    v24 = 0;
    goto LABEL_17;
  }

LABEL_10:

  v23 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.ShortcutsComponent"];
  [(HMActionSet *)v10 __configureWithContext:v23 home:v4];

  v24 = v10;
LABEL_17:

  return v24;
}

- (void)updateWithBuilder:(id)builder completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  home = [(HMActionSet *)self home];
  v10 = home;
  if (context)
  {
    v30 = 0;
    v11 = [home validateBuilder:builderCopy error:&v30];
    v12 = v30;
    v13 = v12;
    if (v11)
    {
      v14 = MEMORY[0x1E695DF90];
      v29 = v12;
      v15 = [v10 encodeActionSetBuilder:builderCopy error:&v29];
      v16 = v29;

      delegateCaller2 = [v14 dictionaryWithDictionary:v15];

      if (delegateCaller2)
      {
        uuid = [(HMActionSet *)self uuid];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __69__HMActionSet_ActionSetBuilder__updateWithBuilder_completionHandler___block_invoke;
        v24[3] = &unk_1E754D030;
        v25 = context;
        v28 = handlerCopy;
        v26 = v10;
        selfCopy = self;
        [(_HMContext *)v25 sendMessage:uuid target:delegateCaller2 payload:v24 responseHandler:?];

        delegateCaller = v25;
      }

      else
      {
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:handlerCopy error:v16];
      }
    }

    else
    {
      delegateCaller2 = [context delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy error:v13];
      v16 = v13;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2080;
      v34 = "[HMActionSet(ActionSetBuilder) updateWithBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __69__HMActionSet_ActionSetBuilder__updateWithBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [(HMActionSet *)v6 callCompletion:*(a1 + 56) error:v10];
  }

  else
  {
    v6 = [[HMActionSet alloc] initWithDictionary:v5 home:*(a1 + 40)];
    if (v6)
    {
      [*(a1 + 48) mergeFromNewObjectForBuilderUpdates:v6];
      v7 = [*(a1 + 32) delegateCaller];
      [v7 callCompletion:*(a1 + 56) error:0];
    }

    else
    {
      v7 = [*(a1 + 32) delegateCaller];
      v8 = *(a1 + 56);
      v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v7 callCompletion:v8 error:v9];
    }
  }
}

- (id)copyAsBuilder
{
  v3 = [HMActionSetBuilder alloc];

  return [(HMActionSetBuilder *)v3 initWithActionSet:self];
}

- (id)encodeAsProtoBuf
{
  v33 = *MEMORY[0x1E69E9840];
  home = [(HMActionSet *)self home];
  if (home)
  {
    v4 = objc_alloc_init(HMPBActionSet);
    uuid = [home uuid];
    hm_convertToData = [uuid hm_convertToData];
    [(HMPBActionSet *)v4 setHomeUUID:hm_convertToData];

    uuid2 = [(HMActionSet *)self uuid];
    hm_convertToData2 = [uuid2 hm_convertToData];
    [(HMPBActionSet *)v4 setUuid:hm_convertToData2];

    uuid3 = [(HMActionSet *)self uuid];
    v10 = [home actionSetWithUUID:uuid3];

    if (!v10)
    {
      name = [(HMActionSet *)self name];
      [(HMPBActionSet *)v4 setName:name];

      actionSetType = [(HMActionSet *)self actionSetType];
      [(HMPBActionSet *)v4 setActionSetType:actionSetType];

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(HMPBActionSet *)v4 setActions:v13];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      actions = [(HMActionSet *)self actions];
      v15 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(actions);
            }

            encodeAsProtoBuf = [*(*(&v26 + 1) + 8 * i) encodeAsProtoBuf];
            if (encodeAsProtoBuf)
            {
              actions2 = [(HMPBActionSet *)v4 actions];
              [actions2 addObject:encodeAsProtoBuf];
            }
          }

          v16 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@home is nil while encoding ActionSet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v4 = 0;
  }

  return v4;
}

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates
{
  v38 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = [HMObjectMergeCollection alloc];
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  currentActions2 = [updatesCopy currentActions];
  array2 = [currentActions2 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v10 removedObjects];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v33[3] = &unk_1E754D0A8;
  v33[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v33];

  selfCopy = [(HMObjectMergeCollection *)v10 addedObjects];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke_282;
  v32[3] = &unk_1E754D0A8;
  v32[4] = self;
  [(HMActionSet *)selfCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

  [(HMObjectMergeCollection *)v10 mergeCommonObjects];
  LODWORD(selfCopy) = [(HMObjectMergeCollection *)v10 isModified];
  if (selfCopy)
  {
    finalObjects = [(HMObjectMergeCollection *)v10 finalObjects];
    currentActions3 = [(HMActionSet *)self currentActions];
    [currentActions3 setArray:finalObjects];
  }

  name = [(HMActionSet *)self name];
  name2 = [updatesCopy name];
  v17 = [name isEqualToString:name2];

  if ((v17 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      applicationData = [updatesCopy applicationData];
      *buf = 138543618;
      v35 = v20;
      v36 = 2112;
      v37 = applicationData;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated name via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    name3 = [updatesCopy name];
    [(HMActionSet *)selfCopy setName:name3];

    LOBYTE(selfCopy) = 1;
  }

  applicationData2 = [(HMActionSet *)self applicationData];
  applicationData3 = [updatesCopy applicationData];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      applicationData4 = [updatesCopy applicationData];
      *buf = 138543618;
      v35 = v29;
      v36 = 2112;
      v37 = applicationData4;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Updated application data via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    selfCopy = [updatesCopy applicationData];
    [(HMActionSet *)selfCopy2 setApplicationData:selfCopy];

    LOBYTE(selfCopy) = 1;
  }

  return selfCopy;
}

void __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke_282(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 actionSet:*(a1 + 32)];
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v5 = [HMObjectMergeCollection alloc];
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  currentActions2 = [objectCopy currentActions];
  array2 = [currentActions2 array];
  v9 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v9 removedObjects];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __34__HMActionSet_mergeFromNewObject___block_invoke;
  v47[3] = &unk_1E754D0A8;
  v47[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

  addedObjects = [(HMObjectMergeCollection *)v9 addedObjects];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_280;
  v46[3] = &unk_1E754D0A8;
  v46[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v46];

  [(HMObjectMergeCollection *)v9 mergeCommonObjects];
  home = [(HMActionSet *)self home];
  LODWORD(array) = [(HMObjectMergeCollection *)v9 isModified];
  if (array)
  {
    finalObjects = [(HMObjectMergeCollection *)v9 finalObjects];
    currentActions3 = [(HMActionSet *)self currentActions];
    [currentActions3 setArray:finalObjects];

    delegate = [home delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMActionSet *)self context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_281;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v44 = delegate;
      v45 = home;
      dispatch_async(queue, block);
    }
  }

  name = [(HMActionSet *)self name];
  name2 = [objectCopy name];
  v21 = [name isEqualToString:name2];

  if ((v21 & 1) == 0)
  {
    name3 = [objectCopy name];
    [(HMActionSet *)self setName:name3];

    array = [home delegate];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMActionSet *)self context];
      queue2 = [context2 queue];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __34__HMActionSet_mergeFromNewObject___block_invoke_3;
      v39 = &unk_1E754E5E8;
      selfCopy = self;
      v41 = array;
      v42 = home;
      dispatch_async(queue2, &v36);
    }

    LOBYTE(array) = 1;
  }

  v25 = [(HMActionSet *)self applicationData:v36];
  applicationData = [objectCopy applicationData];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    array = [objectCopy applicationData];
    [(HMActionSet *)self setApplicationData:array];

    [home notifyDelegateOfAppDataUpdateForActionSet:self];
    LOBYTE(array) = 1;
  }

  executionInProgress = [(HMActionSet *)self executionInProgress];
  if (executionInProgress != [objectCopy executionInProgress])
  {
    -[HMActionSet setExecutionInProgress:](self, "setExecutionInProgress:", [objectCopy executionInProgress]);
    LOBYTE(array) = 1;
  }

  lastExecutionDate = [(HMActionSet *)self lastExecutionDate];
  lastExecutionDate2 = [objectCopy lastExecutionDate];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    lastExecutionDate3 = [objectCopy lastExecutionDate];
    [(HMActionSet *)self setLastExecutionDate:lastExecutionDate3];

    lastExecutionDate4 = [objectCopy lastExecutionDate];

    if (lastExecutionDate4)
    {
      lastExecutionDate5 = [objectCopy lastExecutionDate];
      [home notifyDelegatesOfExecutionForActionSet:self atDate:lastExecutionDate5];
    }

    LOBYTE(array) = 1;
  }

  return array;
}

void __34__HMActionSet_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action via merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_280(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 actionSet:*(a1 + 32)];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_281(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_3(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_4;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

- (HMActionSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionSetUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionSetName"];
  v8 = [coderCopy hm_decodeAndCacheStringForKey:@"actionSetType"];
  v9 = [(HMActionSet *)self initWithName:v7 type:v8 uuid:v6];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v9->_home, v10);

    v9->_executionInProgress = [coderCopy decodeBoolForKey:@"HM.actionSetExecutionInProgress"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.actionSetLastExecutionDate"];
    lastExecutionDate = v9->_lastExecutionDate;
    v9->_lastExecutionDate = v11;

    currentActions = v9->_currentActions;
    v14 = +[HMActionSet allowedActionClasses];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"actionSetActions"];
    [(HMMutableArray *)currentActions setArray:v15];

    v16 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
    applicationData = v9->_applicationData;
    v9->_applicationData = v16;
  }

  return v9;
}

- (void)_registerNotificationHandlers
{
  context = [(HMActionSet *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kActionSetWillStartExecutionNotificationKey" receiver:self selector:sel__handleActionSetStartExecutionNotification_];

  context2 = [(HMActionSet *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"kActionSetExecutedNotificationKey" receiver:self selector:sel__handleActionSetExecutedNotification_];
}

- (void)didUpdateIsExecuting:(BOOL)executing
{
  v22 = *MEMORY[0x1E69E9840];
  home = [(HMActionSet *)self home];
  v6 = home;
  if (home)
  {
    delegate = [home delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63B38])
    {
      v8 = delegate;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMActionSet *)self context];
      queue = [context queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __36__HMActionSet_didUpdateIsExecuting___block_invoke;
      v16[3] = &unk_1E754D080;
      v16[4] = self;
      v17 = v9;
      v18 = v6;
      executingCopy = executing;
      dispatch_async(queue, v16);
    }
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
      v21 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Can't fire delegate because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __36__HMActionSet_didUpdateIsExecuting___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HMActionSet_didUpdateIsExecuting___block_invoke_2;
  v6[3] = &unk_1E754D080;
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 56);
  [v3 invokeBlock:v6];
}

- (void)_handleActionSetExecutedNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [notificationCopy dateForKey:@"kActionSetLastexecutionDate"];
  if (v5)
  {
    [(HMActionSet *)self setLastExecutionDate:v5];
    [(HMActionSet *)self setExecutionInProgress:0];
    [(HMActionSet *)self didUpdateIsExecuting:0];
    home = [(HMActionSet *)self home];
    [home notifyDelegatesOfExecutionForActionSet:self atDate:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [notificationCopy shortDescription];
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = shortDescription;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received action set executed message without a last execution date: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_handleActionSetStartExecutionNotification:(id)notification
{
  [(HMActionSet *)self setExecutionInProgress:1];

  [(HMActionSet *)self didUpdateIsExecuting:1];
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = handlerCopy;
  home = [(HMActionSet *)self home];
  v9 = home;
  if (home)
  {
    [home updateApplicationData:dataCopy forActionSet:self completionHandler:v7];
  }

  else
  {
    context = [(HMActionSet *)self context];
    delegateCaller = [context delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:v7 error:v12];
  }
}

- (BOOL)_handleActionSetRenameFromPayload:(id)payload completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = [payloadCopy hmf_stringForKey:@"kActionSetName"];
  if (v8)
  {
    [(HMActionSet *)self setName:v8];
    if (completionCopy)
    {
      context = [(HMActionSet *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:completionCopy error:0];

      v11 = 0;
    }

    else
    {
      home = [(HMActionSet *)self home];
      delegate = [home delegate];
      v18 = objc_opt_respondsToSelector();
      if (v18)
      {
        context2 = [(HMActionSet *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __60__HMActionSet__handleActionSetRenameFromPayload_completion___block_invoke;
        v22[3] = &unk_1E754E5E8;
        v23 = delegate;
        v24 = home;
        selfCopy = self;
        [delegateCaller2 invokeBlock:v22];
      }

      v11 = v18 ^ 1;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = 0;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Received a new action set without a new name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)_handleActionUpdatedFromResponse:(id)response completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  completionCopy = completion;
  v8 = [responseCopy hmf_UUIDForKey:@"kActionUUID"];
  v9 = [responseCopy hmf_dictionaryForKey:@"kActionInfo"];
  v10 = v9;
  if (v8 && v9)
  {
    currentActions = [(HMActionSet *)self currentActions];
    v12 = [currentActions firstItemWithUUID:v8];

    if (v12)
    {
      if ([v12 _handleUpdates:v10])
      {
        if (completionCopy)
        {
          context = [(HMActionSet *)self context];
          delegateCaller = [context delegateCaller];
          [delegateCaller callCompletion:completionCopy error:0];

          v15 = 0;
        }

        else
        {
          home = [(HMActionSet *)self home];
          delegate = [home delegate];
          v30 = objc_opt_respondsToSelector();
          if (v30)
          {
            context2 = [(HMActionSet *)self context];
            delegateCaller2 = [context2 delegateCaller];
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __59__HMActionSet__handleActionUpdatedFromResponse_completion___block_invoke;
            v33[3] = &unk_1E754E5E8;
            v34 = delegate;
            v35 = home;
            selfCopy = self;
            [delegateCaller2 invokeBlock:v33];
          }

          v15 = v30 ^ 1;
        }

        goto LABEL_16;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v23;
        v39 = 2112;
        v40 = v12;
        v41 = 2112;
        v42 = v10;
        v24 = "%{public}@Could not update action (%@) with info (%@)";
        v25 = v22;
        v26 = 32;
        goto LABEL_14;
      }
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
        v38 = v23;
        v24 = "%{public}@Unable to update action.";
        v25 = v22;
        v26 = 12;
LABEL_14:
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      }
    }

    objc_autoreleasePoolPop(v20);
    v15 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v19;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to update action. Either UUID (%@) or info (%@) is invalid", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 1;
LABEL_17:

  return v15 & 1;
}

- (BOOL)_handleActionRemovedFromPayload:(id)payload completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = [payloadCopy hmf_UUIDForKey:@"kActionUUID"];
  if (v8)
  {
    v9 = [(HMActionSet *)self _doRemoveActionWithUUID:v8 completionHandler:completionCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid action UUID : %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  return v9;
}

- (BOOL)_doRemoveActionWithUUID:(id)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  currentActions = [(HMActionSet *)self currentActions];
  v9 = [currentActions firstItemWithUUID:dCopy];

  if (v9)
  {
    currentActions2 = [(HMActionSet *)self currentActions];
    [currentActions2 removeObject:v9];

    [v9 _unconfigure];
    if (handlerCopy)
    {
      context = [(HMActionSet *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];

      v13 = 0;
    }

    else
    {
      home = [(HMActionSet *)self home];
      delegate = [home delegate];
      v20 = objc_opt_respondsToSelector();
      if (v20)
      {
        context2 = [(HMActionSet *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __57__HMActionSet__doRemoveActionWithUUID_completionHandler___block_invoke;
        v24[3] = &unk_1E754E5E8;
        v25 = delegate;
        v26 = home;
        selfCopy = self;
        [delegateCaller2 invokeBlock:v24];
      }

      v13 = v20 ^ 1;
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
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@The action does not belong to actionset", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 1;
  }

  return v13 & 1;
}

- (void)_removeActionsForAccessory:(id)accessory
{
  v32 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(HMActionSet *)self actions];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          characteristic = [v10 characteristic];
          service = [characteristic service];

          if (service)
          {
            targetAccessoryUUID = [service targetAccessoryUUID];
            uuid = [accessoryCopy uuid];
            v15 = [targetAccessoryUUID hmf_isEqualToUUID:uuid];

            if (v15)
            {
              [array addObject:v8];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  currentActions = [(HMActionSet *)self currentActions];
  [currentActions removeObjectsInArray:array];

  home = [(HMActionSet *)self home];
  delegate = [home delegate];

  if ([array count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context = [(HMActionSet *)self context];
    delegateCaller = [context delegateCaller];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__HMActionSet__removeActionsForAccessory___block_invoke;
    v24[3] = &unk_1E754E5C0;
    v25 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v24];
  }
}

void __42__HMActionSet__removeActionsForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) home];
  [v2 home:v3 didUpdateActionsForActionSet:*(a1 + 40)];
}

- (void)_doAddAction:(id)action uuid:(id)uuid
{
  v25 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  uuidCopy = uuid;
  currentActions = [(HMActionSet *)self currentActions];
  v9 = [currentActions firstItemWithUUID:uuidCopy];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      uniqueIdentifier = [actionCopy uniqueIdentifier];
      v17 = 138544130;
      v18 = v13;
      v19 = 2112;
      v20 = uniqueIdentifier;
      v21 = 2112;
      v22 = actionCopy;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Action %@ being added has already appeared, making %@ a proxy for existing configured instance %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    HMProxify(actionCopy, v9);
  }

  else
  {
    [actionCopy setUuid:uuidCopy];
    context = [(HMActionSet *)self context];
    [actionCopy __configureWithContext:context actionSet:self];

    currentActions2 = [(HMActionSet *)self currentActions];
    [currentActions2 addObject:actionCopy];
  }
}

- (void)_updateAction:(id)action changes:(id)changes completionHandler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  changesCopy = changes;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateAction:changes:completionHandler:]", @"completion"];
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v38;
      v47 = 2112;
      v48 = v34;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v34 userInfo:0];
    objc_exception_throw(v39);
  }

  v12 = context;
  if (context)
  {
    if (actionCopy && changesCopy)
    {
      home = [(HMActionSet *)self home];
      if (home)
      {
        currentActions = [(HMActionSet *)self currentActions];
        v15 = [currentActions containsObject:actionCopy];

        if (v15)
        {
          v16 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid = [(HMActionSet *)self uuid];
          v40 = [v16 initWithTarget:uuid];

          v18 = MEMORY[0x1E69A2A10];
          v44[0] = @"kActionUUID";
          uuid2 = [actionCopy uuid];
          uUIDString = [uuid2 UUIDString];
          v44[1] = @"kActionInfo";
          v45[0] = uUIDString;
          v45[1] = changesCopy;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
          v22 = [v18 messageWithName:@"kReplaceActionValueKey" destination:v40 payload:v21];

          objc_initWeak(location, self);
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __55__HMActionSet__updateAction_changes_completionHandler___block_invoke;
          v41[3] = &unk_1E754CFF8;
          objc_copyWeak(&v43, location);
          v42 = handlerCopy;
          [v22 setResponseHandler:v41];
          messageDispatcher = [v12 messageDispatcher];
          [messageDispatcher sendMessage:v22 completionHandler:0];

          objc_destroyWeak(&v43);
          objc_destroyWeak(location);

LABEL_15:
          goto LABEL_16;
        }

        delegateCaller = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      }

      else
      {
        delegateCaller = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      }

      v33 = v32;
      [delegateCaller callCompletion:handlerCopy error:v32];

      goto LABEL_15;
    }

    delegateCaller2 = [context delegateCaller];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v30];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v27;
      v47 = 2080;
      v48 = "[HMActionSet _updateAction:changes:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v28);
  }

LABEL_16:
}

void __55__HMActionSet__updateAction_changes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
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
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Replace action value response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionUpdatedFromResponse:v6 completion:*(a1 + 32)])
  {
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 32) error:v5];
  }
}

- (void)_removeAction:(id)action completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _removeAction:completionHandler:]", @"completion"];
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v38;
      v49 = 2112;
      v50 = v34;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v34 userInfo:0];
    objc_exception_throw(v39);
  }

  v9 = context;
  if (!context)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v18;
      v49 = 2080;
      v50 = "[HMActionSet _removeAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, v19);

    goto LABEL_14;
  }

  if (!actionCopy)
  {
    delegateCaller = [context delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
LABEL_12:
    v21 = v20;
    [delegateCaller callCompletion:handlerCopy error:v20];

    goto LABEL_13;
  }

  currentActions = [(HMActionSet *)self currentActions];
  v11 = [currentActions containsObject:actionCopy];

  if ((v11 & 1) == 0)
  {
    delegateCaller = [v9 delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    goto LABEL_12;
  }

  actionSetType = [(HMActionSet *)self actionSetType];
  v13 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if (v13)
  {
    delegateCaller = [actionCopy uuid];
    [(HMActionSet *)self _doRemoveActionWithUUID:delegateCaller completionHandler:handlerCopy];
LABEL_13:

    goto LABEL_14;
  }

  home = [(HMActionSet *)self home];
  if (home)
  {
    v22 = MEMORY[0x1E69A2A10];
    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMActionSet *)self uuid];
    v25 = [v23 initWithTarget:uuid];
    v45 = @"kActionUUID";
    uuid2 = [actionCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v46 = uUIDString;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v29 = [v22 messageWithName:@"kRemoveActionRequestKey" destination:v25 payload:v28];

    objc_initWeak(buf, self);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __47__HMActionSet__removeAction_completionHandler___block_invoke;
    v41[3] = &unk_1E754D058;
    objc_copyWeak(&v44, buf);
    v43 = handlerCopy;
    v30 = v9;
    v42 = v30;
    [v29 setResponseHandler:v41];
    messageDispatcher = [v30 messageDispatcher];
    [messageDispatcher sendMessage:v29 completionHandler:0];

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }

  else
  {
    delegateCaller2 = [v9 delegateCaller];
    v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v33];
  }

LABEL_14:
}

void __47__HMActionSet__removeAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove action response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionRemovedFromPayload:v6 completion:*(a1 + 40)])
  {
    v13 = [*(a1 + 32) delegateCaller];
    [v13 callCompletion:*(a1 + 40) error:v5];
  }
}

- (void)removeAction:(HMAction *)action completionHandler:(HMErrorBlock)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = action;
  v7 = completion;
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet removeAction:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMActionSet_removeAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMActionSet removeAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_addAction:(id)action completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  v9 = context;
  if (context)
  {
    if (actionCopy)
    {
      v40 = 0;
      v10 = [actionCopy isValidWithError:&v40];
      delegateCaller5 = v40;
      if (v10)
      {
        actions = [(HMActionSet *)self actions];
        v13 = [actions containsObject:actionCopy];

        if (v13)
        {
          delegateCaller = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 1;
LABEL_17:
          v25 = [v15 hmErrorWithCode:v16];
          [delegateCaller callCompletion:handlerCopy error:v25];

          goto LABEL_18;
        }

        actionSet = [actionCopy actionSet];

        if (actionSet)
        {
          delegateCaller = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 30;
          goto LABEL_17;
        }

        actionSetType = [(HMActionSet *)self actionSetType];
        v27 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

        if (!v27)
        {
          delegateCaller = [(HMActionSet *)self home];
          if (delegateCaller)
          {
            _serializeForAdd = [actionCopy _serializeForAdd];
            if (_serializeForAdd)
            {
              delegateCaller3 = _serializeForAdd;
              uuid = [(HMActionSet *)self uuid];
              v41 = @"kActionInfo";
              v42 = delegateCaller3;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = __44__HMActionSet__addAction_completionHandler___block_invoke;
              v36[3] = &unk_1E754D030;
              v36[4] = self;
              v37 = v9;
              v39 = handlerCopy;
              v38 = actionCopy;
              [(_HMContext *)v37 sendMessage:uuid target:v32 payload:v36 responseHandler:?];
            }

            else
            {
              delegateCaller2 = [v9 delegateCaller];
              v35 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
              [delegateCaller2 callCompletion:handlerCopy error:v35];

              delegateCaller3 = 0;
            }
          }

          else
          {
            delegateCaller3 = [v9 delegateCaller];
            v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
            [delegateCaller3 callCompletion:handlerCopy error:v33];
          }

          goto LABEL_18;
        }

        uUID = [MEMORY[0x1E696AFB0] UUID];
        [(HMActionSet *)self _doAddAction:actionCopy uuid:uUID];

        delegateCaller4 = [v9 delegateCaller];
        delegateCaller = delegateCaller4;
        v22 = handlerCopy;
        v23 = 0;
      }

      else
      {
        delegateCaller4 = [v9 delegateCaller];
        delegateCaller = delegateCaller4;
        if (!delegateCaller5)
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = 3;
          goto LABEL_17;
        }

        v22 = handlerCopy;
        v23 = delegateCaller5;
      }
    }

    else
    {
      delegateCaller5 = [context delegateCaller];
      delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      delegateCaller4 = delegateCaller5;
      v22 = handlerCopy;
      v23 = delegateCaller;
    }

    [delegateCaller4 callCompletion:v22 error:v23];
LABEL_18:

    goto LABEL_19;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v20;
    v45 = 2080;
    v46 = "[HMActionSet _addAction:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (handlerCopy)
  {
    delegateCaller5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller5);
LABEL_19:
  }
}

void __44__HMActionSet__addAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Add action error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    [v12 callCompletion:*(a1 + 56) error:v5];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Add action response: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v6 hmf_UUIDForKey:@"kActionUUID"];
    [*(a1 + 32) _doAddAction:*(a1 + 48) uuid:v12];
    v14 = [*(a1 + 40) delegateCaller];
    [v14 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)addAction:(HMAction *)action completionHandler:(HMErrorBlock)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = action;
  v7 = completion;
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet addAction:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HMActionSet_addAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v23 = v6;
    v24 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMActionSet addAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

- (void)_updateName:(id)name completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateName:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v39;
      v48 = 2112;
      v49 = v35;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v40);
  }

  v9 = context;
  if (context)
  {
    v10 = [nameCopy length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      home = [(HMActionSet *)self home];
      if (home)
      {
        name = [(HMActionSet *)self name];
        v22 = [name isEqualToString:nameCopy];

        if (v22)
        {
          context2 = [(HMActionSet *)self context];
          delegateCaller = [context2 delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:0];
        }

        else
        {
          if (nameCopy)
          {
            v44 = @"kActionSetName";
            v45 = nameCopy;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          }

          else
          {
            v28 = MEMORY[0x1E695E0F8];
          }

          v29 = MEMORY[0x1E69A2A10];
          v30 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid = [(HMActionSet *)self uuid];
          v32 = [v30 initWithTarget:uuid];
          v33 = [v29 messageWithName:@"kRenameActionSetRequestKey" destination:v32 payload:v28];

          objc_initWeak(buf, self);
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __45__HMActionSet__updateName_completionHandler___block_invoke;
          v41[3] = &unk_1E754CFF8;
          objc_copyWeak(&v43, buf);
          v42 = handlerCopy;
          [v33 setResponseHandler:v41];
          messageDispatcher = [v9 messageDispatcher];
          [messageDispatcher sendMessage:v33 completionHandler:0];

          objc_destroyWeak(&v43);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        context3 = [(HMActionSet *)self context];
        delegateCaller2 = [context3 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
        [delegateCaller2 callCompletion:handlerCopy error:v27];

        home = 0;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      home = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [home callCompletion:handlerCopy error:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v20;
      v48 = 2080;
      v49 = "[HMActionSet _updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
  }
}

void __45__HMActionSet__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
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
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Rename actionSet response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionSetRenameFromPayload:v6 completion:*(a1 + 32)])
  {
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 32) error:v5];
  }
}

- (void)updateName:(NSString *)name completionHandler:(HMErrorBlock)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet updateName:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HMActionSet_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v7;
    v23 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v14;
      v27 = 2080;
      v28 = "[HMActionSet updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }
}

void __44__HMActionSet_updateName_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSetType];
  if ([v2 isEqualToString:@"HMActionSetTypeTriggerOwned"])
  {

LABEL_4:
    v10 = [*(a1 + 32) context];
    v5 = [v10 delegateCaller];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
LABEL_5:
    v8 = v7;
    [v5 callCompletion:v6 error:v7];

    return;
  }

  v3 = [*(a1 + 32) actionSetType];
  v4 = [v3 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if (v4)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v10 = [v9 context];
    v5 = [v10 delegateCaller];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    goto LABEL_5;
  }

  [v9 _updateName:? completionHandler:?];
}

- (void)resetNameWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet resetNameWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0];
    objc_exception_throw(v18);
  }

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMActionSet_resetNameWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v20 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2080;
      v24 = "[HMActionSet resetNameWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

void __46__HMActionSet_resetNameWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSetType];
  v3 = [HMActionSet isBuiltinActionSetType:v2];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);

    [v4 _updateName:0 completionHandler:v5];
  }

  else
  {
    v9 = [v4 context];
    v6 = [v9 delegateCaller];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [v6 callCompletion:v7 error:v8];
  }
}

- (id)assistantIdentifier
{
  uuid = [(HMActionSet *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"AS", uuid, 0);

  return v3;
}

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
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

- (void)setExecutionInProgress:(BOOL)progress
{
  os_unfair_lock_lock_with_options();
  self->_executionInProgress = progress;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresDeviceUnlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  actions = [(HMActionSet *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__HMActionSet_requiresDeviceUnlock__block_invoke;
  v4[3] = &unk_1E754CFC8;
  v4[4] = &v5;
  [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v4];

  LOBYTE(actions) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return actions;
}

void *__35__HMActionSet_requiresDeviceUnlock__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 requiresDeviceUnlock];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executionInProgress = self->_executionInProgress;
  os_unfair_lock_unlock(&self->_lock);
  return executionInProgress;
}

- (NSSet)actions
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  v6 = [v3 initWithArray:array];

  return v6;
}

- (void)setLastExecutionDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  lastExecutionDate = self->_lastExecutionDate;
  self->_lastExecutionDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastExecutionDate
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDate *)self->_lastExecutionDate copy];
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
  v3 = [(NSString *)self->_name copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  [(HMActionSet *)self setContext:contextCopy];
  [(HMActionSet *)self setHome:homeCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  actions = [(HMActionSet *)self actions];
  v9 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(actions);
        }

        [*(*(&v15 + 1) + 8 * v12++) __configureWithContext:contextCopy actionSet:self];
      }

      while (v10 != v12);
      v10 = [actions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  actionSetType = [(HMActionSet *)self actionSetType];
  v14 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if ((v14 & 1) == 0)
  {
    [(HMActionSet *)self _registerNotificationHandlers];
  }
}

- (void)_unconfigure
{
  v26 = *MEMORY[0x1E69E9840];
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
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring actionSet and actions", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    actions = [(HMActionSet *)selfCopy actions];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(actions);
          }

          [*(*(&v19 + 1) + 8 * v13++) _unconfigure];
        }

        while (v11 != v13);
        v11 = [actions countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    currentActions = [(HMActionSet *)selfCopy currentActions];
    [currentActions setArray:0];

    [(HMActionSet *)selfCopy setHome:0];
    context = [(HMActionSet *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMActionSet *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_unconfigureContext
{
  messageDispatcher = [(_HMContext *)self->_context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  context = self->_context;
  self->_context = 0;
}

- (HMActionSet)initWithDictionary:(id)dictionary home:(id)home
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v51.receiver = self;
  v51.super_class = HMActionSet;
  v8 = [(HMActionSet *)&v51 init];
  if (!v8)
  {
LABEL_15:
    v35 = v8;
    goto LABEL_24;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:@"kActionSetUUID"];
  if (!v9)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v8;
    v38 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v39 = HMFGetLogIdentifier();
    v40 = objc_opt_class();
    *buf = 138543618;
    v54 = v39;
    v55 = 2112;
    v56 = v40;
    v41 = "%{public}@Unable to decode %@, missing uuid";
    goto LABEL_21;
  }

  v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v9];
  uuid = v8->_uuid;
  v8->_uuid = v10;

  v12 = [dictionaryCopy hmf_stringForKey:@"kActionSetName"];
  name = v8->_name;
  v8->_name = v12;

  if (v8->_name)
  {
    v46 = v9;
    v14 = [dictionaryCopy hmf_stringForKey:@"kActionSetType"];
    v15 = v14;
    v16 = @"HMActionSetTypeUserDefined";
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v45 = v17;
    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v17];
    actionSetType = v8->_actionSetType;
    v8->_actionSetType = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v22 = [dictionaryCopy hmf_arrayForKey:@"kActionSetActions" ofClasses:v21];

    v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v48;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[HMAction alloc] initWithDictionary:*(*(&v47 + 1) + 8 * i) home:homeCopy];
          if (!v27)
          {

            goto LABEL_23;
          }

          v28 = v27;
          [v20 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v29 = [HMMutableArray arrayWithArray:v20];
    currentActions = v8->_currentActions;
    v8->_currentActions = v29;

    v31 = [HMApplicationData alloc];
    v32 = [dictionaryCopy hmf_dictionaryForKey:@"kAppDataInformationKey"];
    v33 = [(HMApplicationData *)v31 initWithDictionary:v32];
    applicationData = v8->_applicationData;
    v8->_applicationData = v33;

    goto LABEL_15;
  }

  v36 = objc_autoreleasePoolPush();
  v42 = v8;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    v43 = objc_opt_class();
    *buf = 138543618;
    v54 = v39;
    v55 = 2112;
    v56 = v43;
    v41 = "%{public}@Unable to decode %@, missing name";
LABEL_21:
    _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
  }

LABEL_22:

  objc_autoreleasePoolPop(v36);
LABEL_23:
  v35 = 0;
LABEL_24:

  return v35;
}

- (HMActionSet)initWithName:(id)name type:(id)type uuid:(id)uuid
{
  nameCopy = name;
  typeCopy = type;
  uuidCopy = uuid;
  v24.receiver = self;
  v24.super_class = HMActionSet;
  v11 = [(HMActionSet *)&v24 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    if (typeCopy)
    {
      v16 = typeCopy;
    }

    else
    {
      v16 = @"HMActionSetTypeUserDefined";
    }

    v17 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v16];
    actionSetType = v11->_actionSetType;
    v11->_actionSetType = v17;

    v19 = +[HMMutableArray array];
    currentActions = v11->_currentActions;
    v11->_currentActions = v19;

    v21 = objc_alloc_init(HMApplicationData);
    applicationData = v11->_applicationData;
    v11->_applicationData = v21;
  }

  return v11;
}

+ (BOOL)isBuiltinActionSetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"HMActionSetTypeWakeUp"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"HMActionSetTypeHomeDeparture") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"HMActionSetTypeHomeArrival"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"HMActionSetTypeSleep"];
  }

  return v4;
}

+ (id)actionSetFromProtoBuf:(id)buf home:(id)home
{
  v75 = *MEMORY[0x1E69E9840];
  bufCopy = buf;
  homeCopy = home;
  v8 = MEMORY[0x1E696AFB0];
  uuid = [bufCopy uuid];
  v10 = [v8 hmf_UUIDWithBytesAsData:uuid];

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v29;
      v30 = "%{public}@Couldn't decode ActionSet UUID";
LABEL_15:
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_48;
  }

  if (([bufCopy hasHomeUUID] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v29;
      v30 = "%{public}@homeUUID not set while decoding ActionSet";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v11 = MEMORY[0x1E696AFB0];
  homeUUID = [bufCopy homeUUID];
  v13 = [v11 hmf_UUIDWithBytesAsData:homeUUID];

  if (v13)
  {
    uuid2 = [homeCopy uuid];
    v15 = [uuid2 isEqual:v13];

    if (v15)
    {
      v16 = [homeCopy actionSetWithUUID:v10];
      if (v16)
      {
        v17 = v16;
        actions = [bufCopy actions];
        v19 = [actions count];

        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            formattedText = [bufCopy formattedText];
            *buf = 138543874;
            v70 = v23;
            v71 = 2112;
            v72 = v10;
            v73 = 2112;
            v74 = formattedText;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@actionSetFromProtoBuf found actionSet (%@) in home and actions in proto - ignoring proto: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
        }

        v25 = v17;
LABEL_46:

        goto LABEL_47;
      }

      v61 = v13;
      v39 = [HMActionSet alloc];
      name = [bufCopy name];
      actionSetType = [bufCopy actionSetType];
      v62 = v10;
      v42 = [(HMActionSet *)v39 initWithName:name type:actionSetType uuid:v10];

      v60 = v42;
      [(HMActionSet *)v42 setHome:homeCopy];
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v63 = bufCopy;
      actions2 = [bufCopy actions];
      v45 = [actions2 countByEnumeratingWithState:&v64 objects:v68 count:16];
      if (!v45)
      {
        goto LABEL_45;
      }

      v46 = v45;
      v47 = *v65;
LABEL_26:
      v48 = 0;
      while (1)
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(actions2);
        }

        v49 = *(*(&v64 + 1) + 8 * v48);
        type = [v49 type];
        if (type > 2)
        {
          if (type == 3)
          {
            v51 = HMLightProfileNaturalLightingAction;
            naturalLightingAction = [v49 naturalLightingAction];
          }

          else
          {
            if (type != 4)
            {
              goto LABEL_40;
            }

            v51 = HMMatterCommandAction;
            naturalLightingAction = [v49 matterCommandAction];
          }
        }

        else if (type == 1)
        {
          v51 = HMCharacteristicWriteAction;
          naturalLightingAction = [v49 characteristicWriteAction];
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_40;
          }

          v51 = HMMediaPlaybackAction;
          naturalLightingAction = [v49 mediaPlaybackAction];
        }

        v53 = naturalLightingAction;
        v54 = [(__objc2_class *)v51 actionWithProtoBuf:naturalLightingAction home:homeCopy];

        if (!v54)
        {
LABEL_40:
          v55 = objc_autoreleasePoolPush();
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543618;
            v70 = v57;
            v71 = 2112;
            v72 = v49;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action with proto buf: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v55);
          goto LABEL_43;
        }

        [v43 addObject:v54];

LABEL_43:
        if (v46 == ++v48)
        {
          v46 = [actions2 countByEnumeratingWithState:&v64 objects:v68 count:16];
          if (!v46)
          {
LABEL_45:

            currentActions = [(HMActionSet *)v60 currentActions];
            [currentActions addObjectsFromArray:v43];

            v25 = v60;
            v10 = v62;
            bufCopy = v63;
            v13 = v61;
            goto LABEL_46;
          }

          goto LABEL_26;
        }
      }
    }

    v31 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uuid3 = [homeCopy uuid];
      *buf = 138543874;
      v70 = v37;
      v71 = 2112;
      v72 = v13;
      v73 = 2112;
      v74 = uuid3;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Trying to deserialize HMActionSet with a different home %@ %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v34;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Home UUID", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v31);
  v25 = 0;
LABEL_47:

LABEL_48:

  return v25;
}

+ (id)allowedActionClasses
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:7];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11}];

  return v4;
}

@end