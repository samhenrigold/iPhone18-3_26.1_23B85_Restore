@interface HMSymptomsHandler
+ (id)logCategory;
+ (id)symptomsHandlerUUIDFromAccessoryUUID:(id)d;
- (HMSymptomsHandler)initWithAccessory:(id)accessory;
- (HMSymptomsHandler)initWithUUID:(id)d context:(id)context logIdentifier:(id)identifier;
- (HMSymptomsHandlerDelegate)delegate;
- (NSSet)symptoms;
- (NSUUID)sfDeviceIdentifier;
- (id)_findAndRemoveFixSessionsForSymptom:(id)symptom;
- (id)newFixSessionForSymptom:(id)symptom;
- (void)_addFixSession:(id)session;
- (void)_callFixSessionAvailabilityUpdatedDelegate;
- (void)_callSymptomsUpdatedDelegate:(id)delegate;
- (void)_handleSymptomStateUpdatedMessage:(id)message;
- (void)_subscribe;
- (void)_unsubscribe;
- (void)configure;
- (void)dealloc;
- (void)initiateFixWithCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setSFDeviceIdentifier:(id)identifier;
- (void)setSymptoms:(id)symptoms;
@end

@implementation HMSymptomsHandler

- (void)_handleSymptomStateUpdatedMessage:(id)message
{
  v57[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v6 = [messageCopy unarchivedObjectForKey:@"HMSM.symptoms" ofClasses:v5];

  symptoms = [(HMSymptomsHandler *)self symptoms];
  v8 = [symptoms isEqualToSet:v6];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      symptoms2 = [(HMSymptomsHandler *)selfCopy2 symptoms];
      *buf = 138544130;
      v50 = v12;
      v51 = 2112;
      v52 = shortDescription;
      v53 = 2112;
      v54 = symptoms2;
      v55 = 2112;
      v56 = v6;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@ message so updating symptoms from %@ to %@", buf, 0x2Au);
    }

    v38 = messageCopy;

    objc_autoreleasePoolPop(v9);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    symptoms3 = [(HMSymptomsHandler *)selfCopy2 symptoms];
    v16 = [symptoms3 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(symptoms3);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          if (([v6 containsObject:{v20, selfCopy}] & 1) == 0)
          {
            v21 = [(HMSymptomsHandler *)selfCopy2 _findAndRemoveFixSessionsForSymptom:v20];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v40;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v40 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v39 + 1) + 8 * j) noteSymptomDisappeared];
                }

                v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v23);
            }
          }
        }

        v17 = [symptoms3 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    currentSymptoms = [(HMSymptomsHandler *)selfCopy2 currentSymptoms];
    allObjects = [v6 allObjects];
    [currentSymptoms setArray:allObjects];

    [(HMSymptomsHandler *)selfCopy2 _callSymptomsUpdatedDelegate:v6];
    self = selfCopy;
    messageCopy = v38;
  }

  v28 = [messageCopy uuidForKey:{@"HMSM.sfDeviceIdentifier", selfCopy}];
  sfDeviceIdentifier = [(HMSymptomsHandler *)self sfDeviceIdentifier];
  v30 = HMFEqualObjects();

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      sfDeviceIdentifier2 = [(HMSymptomsHandler *)selfCopy3 sfDeviceIdentifier];
      *buf = 138544130;
      v50 = v34;
      v51 = 2112;
      v52 = shortDescription2;
      v53 = 2112;
      v54 = sfDeviceIdentifier2;
      v55 = 2112;
      v56 = v28;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Received %@ message so updating SFDevice identifier from %@ to %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    [(HMSymptomsHandler *)selfCopy3 setSFDeviceIdentifier:v28];
    [(HMSymptomsHandler *)selfCopy3 _callFixSessionAvailabilityUpdatedDelegate];
  }

  [messageCopy respondWithSuccess];
}

- (void)_callFixSessionAvailabilityUpdatedDelegate
{
  delegate = [(HMSymptomsHandler *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    context = [(HMSymptomsHandler *)self context];
    delegateCaller = [context delegateCaller];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__HMSymptomsHandler__callFixSessionAvailabilityUpdatedDelegate__block_invoke;
    v7[3] = &unk_1E754E2A8;
    v7[4] = self;
    [delegateCaller invokeBlock:v7];
  }
}

void __63__HMSymptomsHandler__callFixSessionAvailabilityUpdatedDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fixSessionAvailabilityDidUpdateForSymptomsHandler:*(a1 + 32)];
}

- (void)_callSymptomsUpdatedDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  delegate = [(HMSymptomsHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = delegateCopy;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated symptoms %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    context = [(HMSymptomsHandler *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__HMSymptomsHandler__callSymptomsUpdatedDelegate___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = selfCopy;
    v14 = delegateCopy;
    [delegateCaller invokeBlock:v13];
  }
}

void __50__HMSymptomsHandler__callSymptomsUpdatedDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 symptomsHandler:*(a1 + 32) didUpdateSymptoms:*(a1 + 40)];
}

- (id)_findAndRemoveFixSessionsForSymptom:(id)symptom
{
  v22 = *MEMORY[0x1E69E9840];
  symptomCopy = symptom;
  os_unfair_lock_lock_with_options();
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  fixSessions = [(HMSymptomsHandler *)self fixSessions];
  v7 = [fixSessions copy];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        symptom = [v11 symptom];
        v13 = [symptom isEqual:symptomCopy];

        if (v13)
        {
          [array addObject:v11];
          fixSessions2 = [(HMSymptomsHandler *)self fixSessions];
          [fixSessions2 removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [array copy];
  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (void)_addFixSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  fixSessions = [(HMSymptomsHandler *)self fixSessions];
  [fixSessions addObject:sessionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSymptoms:(id)symptoms
{
  v26[1] = *MEMORY[0x1E69E9840];
  symptomsCopy = symptoms;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMSymptomsHandler *)self uuid];
  v7 = [v5 initWithTarget:uuid];

  v8 = MEMORY[0x1E69A2A10];
  v25 = @"HMSM.symptoms";
  v9 = encodeRootObject(symptomsCopy);
  v26[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v11 = [v8 messageWithName:@"HMSM.setSymptoms" destination:v7 payload:v10];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [v11 shortDescription];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = symptomsCopy;
    v23 = 2112;
    v24 = shortDescription;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Setting symptoms from symptomValues=%@ with message: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  context = [(HMSymptomsHandler *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v11];
}

- (void)_unsubscribe
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMSymptomsHandler *)self uuid];
  v5 = [v3 initWithTarget:uuid];

  v6 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSM.unsubscribe" destination:v5 payload:0];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [v6 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Unsubscribing from symptoms changes with message: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMSymptomsHandler *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v6];
}

- (void)_subscribe
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMSymptomsHandler *)self uuid];
  v5 = [v3 initWithTarget:uuid];

  v6 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSM.subscribe" destination:v5 payload:0];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [v6 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Subscribing to symptoms changes with message: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMSymptomsHandler *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v6];
}

- (void)configure
{
  context = [(HMSymptomsHandler *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMSM.symptomStateUpdated" receiver:self selector:sel__handleSymptomStateUpdatedMessage_];
}

- (void)initiateFixWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSymptomsHandler *)self context];
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSymptomsHandler initiateFixWithCompletionHandler:]", @"completion"];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v13;
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
    block[2] = __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v21 = handlerCopy;
    v20 = v6;
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
      v23 = v11;
      v24 = 2080;
      v25 = "[HMSymptomsHandler initiateFixWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

void __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A2A10]);
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [a1[4] uuid];
  v5 = [v3 initWithTarget:v4];
  v6 = [v2 initWithName:@"HMSM.initiateFix" destination:v5 payload:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E754C0F0;
  v9 = a1[6];
  [v6 setResponseHandler:v8];
  v7 = [a1[5] messageDispatcher];
  [v7 sendMessage:v6];
}

uint64_t __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)newFixSessionForSymptom:(id)symptom
{
  v36 = *MEMORY[0x1E69E9840];
  symptomCopy = symptom;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = symptomCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Asked to create a new fix session for symptom %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  symptoms = [(HMSymptomsHandler *)selfCopy symptoms];
  v10 = [symptoms containsObject:symptomCopy];

  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      symptoms2 = [(HMSymptomsHandler *)v14 symptoms];
      v30 = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = symptomCopy;
      v34 = 2112;
      v35 = symptoms2;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Not creating fix session for symptom %@ because it isn't one of this symptoms handler's current symptoms: %@", &v30, 0x20u);

LABEL_30:
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  type = [symptomCopy type];
  if (type > 0x15)
  {
LABEL_21:
    if (type - 100 <= 0xF && ((1 << (type - 100)) & 0xFC0F) != 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v24 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = symptomCopy;
      v26 = "%{public}@%@ should be handled by the Home app UI";
LABEL_28:
      v27 = v16;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    if (type - 999 >= 2)
    {
LABEL_32:
      v22 = 0;
      goto LABEL_33;
    }

LABEL_26:
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    v24 = HMFGetLogIdentifier();
    v30 = 138543618;
    v31 = v24;
    v32 = 2112;
    v33 = symptomCopy;
    v26 = "%{public}@Not creating fix session for unfixable symptom %@";
    goto LABEL_28;
  }

  if (((1 << type) & 0x1F6FFE) == 0)
  {
    if (((1 << type) & 0x209000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  sfDeviceIdentifier = [(HMSymptomsHandler *)selfCopy sfDeviceIdentifier];

  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (!sfDeviceIdentifier)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = symptomCopy;
      v26 = "%{public}@Not creating fix session for symptom %@ because our SF device identifier is nil";
      v27 = v16;
      v28 = OS_LOG_TYPE_DEBUG;
LABEL_29:
      _os_log_impl(&dword_19BB39000, v27, v28, v26, &v30, 0x16u);
      goto LABEL_30;
    }

LABEL_31:

    objc_autoreleasePoolPop(v13);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    sfDeviceIdentifier2 = [(HMSymptomsHandler *)v14 sfDeviceIdentifier];
    v30 = 138543874;
    v31 = v17;
    v32 = 2112;
    v33 = symptomCopy;
    v34 = 2112;
    v35 = sfDeviceIdentifier2;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating fix session for symptom %@ with SF device identifier %@", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  fixSessionFactory = [(HMSymptomsHandler *)v14 fixSessionFactory];
  sfDeviceIdentifier3 = [(HMSymptomsHandler *)v14 sfDeviceIdentifier];
  context = [(HMSymptomsHandler *)v14 context];
  v22 = (fixSessionFactory)[2](fixSessionFactory, symptomCopy, sfDeviceIdentifier3, context);

  if ([symptomCopy type] == 11)
  {
    v23 = 1;
  }

  else
  {
    if ([symptomCopy type] != 19)
    {
      goto LABEL_18;
    }

    v23 = 32;
  }

  [v22 setDeviceRepairFlags:v23];
LABEL_18:
  if (v22)
  {
    [(HMSymptomsHandler *)v14 _addFixSession:v22];
  }

LABEL_33:

  return v22;
}

- (void)setSFDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  sfDeviceIdentifier = self->_sfDeviceIdentifier;
  self->_sfDeviceIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)sfDeviceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sfDeviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  objc_storeWeak(&self->_delegate, delegateCopy);
  os_unfair_lock_unlock(&self->_lock);
  if (!delegateCopy || WeakRetained)
  {
    if (!delegateCopy && WeakRetained)
    {

      [(HMSymptomsHandler *)self _unsubscribe];
    }
  }

  else
  {

    [(HMSymptomsHandler *)self _subscribe];
  }
}

- (HMSymptomsHandlerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSSet)symptoms
{
  v2 = MEMORY[0x1E695DFD8];
  currentSymptoms = [(HMSymptomsHandler *)self currentSymptoms];
  array = [currentSymptoms array];
  v5 = [v2 setWithArray:array];

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(HMSymptomsHandler *)self _unsubscribe];
  }

  v4.receiver = self;
  v4.super_class = HMSymptomsHandler;
  [(HMSymptomsHandler *)&v4 dealloc];
}

- (HMSymptomsHandler)initWithUUID:(id)d context:(id)context logIdentifier:(id)identifier
{
  dCopy = d;
  contextCopy = context;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = HMSymptomsHandler;
  v11 = [(HMSymptomsHandler *)&v22 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    objc_storeStrong(&v11->_context, context);
    v14 = [identifierCopy copy];
    logIdentifier = v11->_logIdentifier;
    v11->_logIdentifier = v14;

    v16 = +[HMMutableArray array];
    currentSymptoms = v11->_currentSymptoms;
    v11->_currentSymptoms = v16;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    fixSessions = v11->_fixSessions;
    v11->_fixSessions = weakObjectsHashTable;

    fixSessionFactory = v11->_fixSessionFactory;
    v11->_fixSessionFactory = &__block_literal_global_25634;
  }

  return v11;
}

HMSymptomFixSession *__56__HMSymptomsHandler_initWithUUID_context_logIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMSymptomFixSession alloc] initWithSymptom:v8 deviceIdentifier:v7 context:v6];

  return v9;
}

- (HMSymptomsHandler)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = objc_opt_class();
  uuid = [accessoryCopy uuid];
  v7 = [v5 symptomsHandlerUUIDFromAccessoryUUID:uuid];

  v8 = MEMORY[0x1E696AEC0];
  uuid2 = [accessoryCopy uuid];
  v10 = [v8 stringWithFormat:@"%@/%@", v7, uuid2];

  context = [accessoryCopy context];

  v12 = [(HMSymptomsHandler *)self initWithUUID:v7 context:context logIdentifier:v10];
  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global_56);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __32__HMSymptomsHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v21;
  logCategory__hmf_once_v21 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)symptomsHandlerUUIDFromAccessoryUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"DA8F18EC-6C7D-4631-9B5B-615977C21A44"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end