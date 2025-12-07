@interface HMPresenceEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
+ (id)users:(id)users home:(id)home presenceType:(id)type;
- (BOOL)mergeFromNewObject:(id)object;
- (HMPresenceEvent)initWithCoder:(id)coder;
- (HMPresenceEvent)initWithDict:(id)dict presenceType:(id)type users:(id)users activation:(id)activation;
- (HMPresenceEvent)initWithDict:(id)dict presenceType:(id)type users:(id)users activationGranularity:(unint64_t)granularity;
- (HMPresenceEvent)initWithPresenceEventType:(unint64_t)type presenceUserType:(unint64_t)userType users:(id)users;
- (HMPresenceEvent)initWithPresenceType:(id)type users:(id)users;
- (HMPresenceEventActivation)activation;
- (HMPresenceEventType)presenceEventType;
- (HMPresenceEventUserType)presenceUserType;
- (NSString)presenceType;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)users;
- (unint64_t)activationGranularity;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setActivation:(id)activation;
- (void)setPresenceEventType:(unint64_t)type;
- (void)setPresenceType:(id)type;
- (void)setPresenceUserType:(unint64_t)type;
- (void)updatePresenceType:(id)type completionHandler:(id)handler;
- (void)updateUsers:(id)users completionHandler:(id)handler;
@end

@implementation HMPresenceEvent

- (HMPresenceEvent)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HMPresenceEvent;
  v5 = [(HMEvent *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPresenceEventPresence"];
    presenceType = v5->_presenceType;
    v5->_presenceType = v6;

    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kPresenceEventUsers"];

    v12 = +[HMMutableArray array];
    observedUsers = v5->_observedUsers;
    v5->_observedUsers = v12;

    [(HMMutableArray *)v5->_observedUsers setArray:v11];
    v14 = [HMPresenceEventActivation activationGranularityWithCoder:coderCopy];
    activation = v5->_activation;
    v5->_activation = v14;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutablePresenceEvent alloc];
  presenceEventType = [(HMPresenceEvent *)self presenceEventType];
  presenceUserType = [(HMPresenceEvent *)self presenceUserType];
  users = [(HMPresenceEvent *)self users];
  v8 = [(HMPresenceEvent *)v4 initWithPresenceEventType:presenceEventType presenceUserType:presenceUserType users:users];

  return v8;
}

+ (id)users:(id)users home:(id)home presenceType:(id)type
{
  v39 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  homeCopy = home;
  typeCopy = type;
  if (usersListApplicable(typeCopy))
  {
    array = [MEMORY[0x1E695DF70] array];
    if (usersCopy)
    {
      v28 = typeCopy;
      v29 = homeCopy;
      users = [homeCopy users];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = [users countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(users);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            uuid = [v16 uuid];
            uUIDString = [uuid UUIDString];
            v19 = [usersCopy containsObject:uUIDString];

            if (v19)
            {
              [array addObject:v16];
            }
          }

          v13 = [users countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v13);
      }

      homeCopy = v29;
      currentUser = [v29 currentUser];
      uuid2 = [currentUser uuid];
      uUIDString2 = [uuid2 UUIDString];
      v23 = [usersCopy containsObject:uUIDString2];

      if (v23)
      {
        [array addObject:currentUser];
      }

      typeCopy = v28;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v26;
      v37 = 2112;
      v38 = typeCopy;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Presence type %@ does not apply for users", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    array = 0;
  }

  return array;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  homeCopy = home;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy hmf_stringForKey:@"kPresenceEventPresence"];
  v8 = [dictionaryCopy hmf_arrayForKey:@"kPresenceEventUsers"];
  v9 = [HMPresenceEvent users:v8 home:homeCopy presenceType:v7];

  v10 = [HMPresenceEventActivation activationGranularityWithDict:dictionaryCopy];
  v11 = [[HMPresenceEvent alloc] initWithDict:dictionaryCopy presenceType:v7 users:v9 activation:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMPresenceEvent alloc];
  presenceEventType = [(HMPresenceEvent *)self presenceEventType];
  presenceUserType = [(HMPresenceEvent *)self presenceUserType];
  users = [(HMPresenceEvent *)self users];
  v8 = [(HMPresenceEvent *)v4 initWithPresenceEventType:presenceEventType presenceUserType:presenceUserType users:users];

  return v8;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v32.receiver = self;
  v32.super_class = HMPresenceEvent;
  v5 = [(HMEvent *)&v32 mergeFromNewObject:objectCopy];
  v6 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    presenceType = [(HMPresenceEvent *)self presenceType];
    presenceType2 = [v8 presenceType];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      presenceType3 = [v8 presenceType];
      [(HMPresenceEvent *)self setPresenceType:presenceType3];

      v5 = 1;
    }

    activation = [(HMPresenceEvent *)self activation];
    activation2 = [v8 activation];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      activation3 = [v8 activation];
      [(HMPresenceEvent *)self setActivation:activation3];

      v5 = 1;
    }

    v17 = [HMObjectMergeCollection alloc];
    observedUsers = [(HMPresenceEvent *)self observedUsers];
    array = [observedUsers array];
    users = [v8 users];
    v21 = [(HMObjectMergeCollection *)v17 initWithCurrentObjects:array newObjects:users];

    removedObjects = [(HMObjectMergeCollection *)v21 removedObjects];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __38__HMPresenceEvent_mergeFromNewObject___block_invoke;
    v31[3] = &unk_1E754C768;
    v31[4] = self;
    [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

    eventTrigger = [(HMEvent *)self eventTrigger];
    home = [eventTrigger home];
    users2 = [home users];
    [(HMObjectMergeCollection *)v21 replaceAddedObjectsWithObjects:users2];

    addedObjects = [(HMObjectMergeCollection *)v21 addedObjects];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__HMPresenceEvent_mergeFromNewObject___block_invoke_32;
    v30[3] = &unk_1E754C768;
    v30[4] = self;
    [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

    if ([(HMObjectMergeCollection *)v21 isModified])
    {
      finalObjects = [(HMObjectMergeCollection *)v21 finalObjects];
      observedUsers2 = [(HMPresenceEvent *)self observedUsers];
      [observedUsers2 setArray:finalObjects];

      v5 = 1;
    }
  }

  return v5;
}

void __38__HMPresenceEvent_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed user via presence event merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __38__HMPresenceEvent_mergeFromNewObject___block_invoke_32(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added user via presence event merge: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)updateUsers:(id)users completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMPresenceEvent updateUsers:completionHandler:]", @"completion"];
    v38 = objc_autoreleasePoolPush();
    selfCopy = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v41;
      v60 = 2112;
      v61 = v37;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v42);
  }

  v9 = context;
  if (!context)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v34;
      v60 = 2080;
      v61 = "[HMPresenceEvent updateUsers:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
    goto LABEL_25;
  }

  presenceType = [(HMPresenceEvent *)self presenceType];
  v11 = usersListApplicable(presenceType);

  if ((v11 & 1) == 0)
  {
    delegateCaller = [v9 delegateCaller];
    [delegateCaller callCompletion:handlerCopy error:0];
LABEL_25:

    goto LABEL_29;
  }

  v44 = v9;
  v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(usersCopy, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = usersCopy;
  v13 = usersCopy;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        uuid = [*(*(&v50 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];
        [v12 addObject:uUIDString];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v15);
  }

  users = [(HMPresenceEvent *)self users];
  v21 = [v12 count];
  if (v21 == [users count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = users;
    v22 = users;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          uuid2 = [*(*(&v46 + 1) + 8 * j) uuid];
          uUIDString2 = [uuid2 UUIDString];
          v29 = [v12 containsObject:uUIDString2];

          if (!v29)
          {

            users = v43;
            goto LABEL_27;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v9 = v44;
    delegateCaller2 = [v44 delegateCaller];
    [delegateCaller2 callCompletion:handlerCopy error:0];
    usersCopy = v45;
    users = v43;
  }

  else
  {
LABEL_27:
    v54 = @"kPresenceEventUsers";
    delegateCaller2 = [v12 allObjects];
    v55 = delegateCaller2;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [(HMEvent *)self _updateEventWithPayload:v36 completionHandler:handlerCopy];

    v9 = v44;
    usersCopy = v45;
  }

LABEL_29:
}

- (void)updatePresenceType:(id)type completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMPresenceEvent updatePresenceType:completionHandler:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v9 = context;
  if (context)
  {
    if (isValidPresenceType(typeCopy))
    {
      presenceType = [(HMPresenceEvent *)self presenceType];
      v11 = [presenceType isEqualToString:typeCopy];

      if (!v11)
      {
        v29 = @"kPresenceEventPresence";
        v30 = typeCopy;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [(HMEvent *)self _updateEventWithPayload:v22 completionHandler:handlerCopy];

        goto LABEL_13;
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v15;
        v33 = 2112;
        v34 = typeCopy;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Presence type is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      delegateCaller = [v9 delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:handlerCopy error:v21];
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
      v32 = v20;
      v33 = 2080;
      v34 = "[HMPresenceEvent updatePresenceType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
  }

LABEL_13:
}

- (id)_serializeForAdd
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = HMPresenceEvent;
  _serializeForAdd = [(HMEvent *)&v24 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  presenceType = [(HMPresenceEvent *)self presenceType];
  [v4 setObject:presenceType forKeyedSubscript:@"kPresenceEventPresence"];

  activation = [(HMPresenceEvent *)self activation];
  [activation addToPayload:v4];

  users = [(HMPresenceEvent *)self users];
  v8 = [users count];

  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    users2 = [(HMPresenceEvent *)self users];
    v11 = [users2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(users2);
          }

          uuid = [*(*(&v20 + 1) + 8 * i) uuid];
          uUIDString = [uuid UUIDString];
          [array addObject:uUIDString];
        }

        v12 = [users2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v17 = [array copy];
    [v4 setObject:v17 forKeyedSubscript:@"kPresenceEventUsers"];
  }

  v18 = [v4 copy];

  return v18;
}

- (void)_updateFromDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = HMPresenceEvent;
  [(HMEvent *)&v25 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy hmf_stringForKey:@"kPresenceEventPresence"];
  if (v5)
  {
    [(HMPresenceEvent *)self setPresenceType:v5];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v9;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating presence type to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [HMPresenceEventActivation activationGranularityWithDict:dictionaryCopy];
  if (v10)
  {
    [(HMPresenceEvent *)self setActivation:v10];
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating activation to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = [dictionaryCopy hmf_arrayForKey:@"kPresenceEventUsers"];
  if (v15)
  {
    eventTrigger = [(HMEvent *)self eventTrigger];
    home = [eventTrigger home];

    presenceType = [(HMPresenceEvent *)self presenceType];
    v19 = [HMPresenceEvent users:v15 home:home presenceType:presenceType];

    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating users list to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    observedUsers = [(HMPresenceEvent *)selfCopy3 observedUsers];
    [observedUsers setArray:v19];
  }
}

- (id)users
{
  observedUsers = [(HMPresenceEvent *)self observedUsers];
  array = [observedUsers array];

  return array;
}

- (void)setPresenceUserType:(unint64_t)type
{
  v8 = presenceTypeForEventTypeAndGranularity([(HMPresenceEvent *)self presenceEventType], type);
  presenceEventType = [(HMPresenceEvent *)self presenceEventType];
  if (presenceEventType - 1 >= 4)
  {
    v5 = &kInvalidHMPresenceEventActivationGranularity;
  }

  else
  {
    v5 = (&unk_19BE376C0 + 8 * presenceEventType - 8);
  }

  v6 = *v5;
  [(HMPresenceEvent *)self setPresenceType:v8];
  v7 = [HMPresenceEventActivation activationGranularityWithValue:v6];
  [(HMPresenceEvent *)self setActivation:v7];
}

- (HMPresenceEventUserType)presenceUserType
{
  presenceType = [(HMPresenceEvent *)self presenceType];
  [(HMPresenceEvent *)self activationGranularity];
  v4 = userTypeForPresenceTypeAndGranularity(presenceType);

  return v4;
}

- (void)setPresenceEventType:(unint64_t)type
{
  v8 = presenceTypeForEventTypeAndGranularity(type, [(HMPresenceEvent *)self presenceUserType]);
  [(HMPresenceEvent *)self presenceUserType];
  if (type - 1 >= 4)
  {
    v5 = &kInvalidHMPresenceEventActivationGranularity;
  }

  else
  {
    v5 = (&unk_19BE376C0 + 8 * type - 8);
  }

  v6 = *v5;
  [(HMPresenceEvent *)self setPresenceType:v8];
  v7 = [HMPresenceEventActivation activationGranularityWithValue:v6];
  [(HMPresenceEvent *)self setActivation:v7];
}

- (HMPresenceEventType)presenceEventType
{
  presenceType = [(HMPresenceEvent *)self presenceType];
  v4 = eventTypeForPresenceTypeAndGranularity(presenceType, [(HMPresenceEvent *)self activationGranularity]);

  return v4;
}

- (void)setActivation:(id)activation
{
  activationCopy = activation;
  os_unfair_lock_lock_with_options();
  activation = self->_activation;
  self->_activation = activationCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMPresenceEventActivation)activation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activation;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)activationGranularity
{
  activation = [(HMPresenceEvent *)self activation];
  v3 = activation;
  if (activation)
  {
    value = [activation value];
  }

  else
  {
    value = 2;
  }

  return value;
}

- (void)setPresenceType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock_with_options();
  presenceType = self->_presenceType;
  self->_presenceType = typeCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)presenceType
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceType;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  presenceType = [(HMPresenceEvent *)self presenceType];
  v5 = [v3 stringWithFormat:@"type: %@", presenceType];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  users = [(HMPresenceEvent *)self users];
  v7 = [users countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(users);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v5 appendString:{@", "}];
        userID = [v11 userID];
        [v5 appendString:userID];
      }

      v8 = [users countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = MEMORY[0x1E696AEC0];
  activation = [(HMPresenceEvent *)self activation];
  v15 = [v13 stringWithFormat:@"[Presence-Event: %@, mode: %@]", v5, activation];

  return v15;
}

- (HMPresenceEvent)initWithDict:(id)dict presenceType:(id)type users:(id)users activation:(id)activation
{
  typeCopy = type;
  usersCopy = users;
  activationCopy = activation;
  v19.receiver = self;
  v19.super_class = HMPresenceEvent;
  v14 = [(HMEvent *)&v19 initWithDict:dict];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_presenceType, type);
    objc_storeStrong(&v15->_activation, activation);
    v16 = [HMMutableArray arrayWithArray:usersCopy];
    observedUsers = v15->_observedUsers;
    v15->_observedUsers = v16;
  }

  return v15;
}

- (HMPresenceEvent)initWithDict:(id)dict presenceType:(id)type users:(id)users activationGranularity:(unint64_t)granularity
{
  usersCopy = users;
  typeCopy = type;
  dictCopy = dict;
  v13 = [HMPresenceEventActivation activationGranularityWithValue:granularity];
  v14 = [(HMPresenceEvent *)self initWithDict:dictCopy presenceType:typeCopy users:usersCopy activation:v13];

  return v14;
}

- (HMPresenceEvent)initWithPresenceEventType:(unint64_t)type presenceUserType:(unint64_t)userType users:(id)users
{
  v17[1] = *MEMORY[0x1E69E9840];
  usersCopy = users;
  v9 = presenceTypeForEventTypeAndGranularity(type, userType);
  v10 = (&unk_19BE376C0 + 8 * type - 8);
  if (type - 1 >= 4)
  {
    v10 = &kInvalidHMPresenceEventActivationGranularity;
  }

  v11 = *v10;
  v16 = @"kEventUUIDKey";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v17[0] = uUID;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [(HMPresenceEvent *)self initWithDict:v13 presenceType:v9 users:usersCopy activationGranularity:v11];

  return v14;
}

- (HMPresenceEvent)initWithPresenceType:(id)type users:(id)users
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"kEventUUIDKey";
  v6 = MEMORY[0x1E696AFB0];
  usersCopy = users;
  typeCopy = type;
  uUID = [v6 UUID];
  v14[0] = uUID;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [(HMPresenceEvent *)self initWithDict:v10 presenceType:typeCopy users:usersCopy activationGranularity:2];

  return v11;
}

@end