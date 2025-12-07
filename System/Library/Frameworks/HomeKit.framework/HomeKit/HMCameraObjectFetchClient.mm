@interface HMCameraObjectFetchClient
+ (id)logCategory;
- (HMCameraObjectFetchClient)initWithUUID:(id)d context:(id)context messageName:(id)name destination:(id)destination;
- (id)logIdentifier;
- (void)dealloc;
- (void)fetchWithCompletion:(id)completion;
- (void)handleDidFetchObjectsMessage:(id)message;
@end

@implementation HMCameraObjectFetchClient

- (id)logIdentifier
{
  uUID = [(HMCameraObjectFetchClient *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)handleDidFetchObjectsMessage:(id)message
{
  v46[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload objectForKeyedSubscript:@"HMCOFC.mk.fo"];

  if (!v6)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v41 = v18;
      v42 = 2112;
      v43 = messagePayload2;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find fetched objects in message payload: %@", buf, 0x16u);
    }

    v20 = v15;
    goto LABEL_21;
  }

  classForUnarchiving = [(HMCameraObjectFetchClient *)self classForUnarchiving];
  if (!classForUnarchiving)
  {
    v14 = v6;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v14;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v21)
    {
LABEL_12:
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v14 count];
        *buf = 138543618;
        v41 = v27;
        v42 = 2048;
        v43 = v28;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Handling %lu fetched objects", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      fetchedObjects = [(HMCameraObjectFetchClient *)selfCopy2 fetchedObjects];
      [fetchedObjects addObjectsFromArray:v14];

      [messageCopy respondWithPayload:0];
      goto LABEL_22;
    }

    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v38;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@No class for unarchiving and fetchedObjects was not already an array: %@", buf, 0x16u);
    }

    v20 = v35;
LABEL_21:
    objc_autoreleasePoolPop(v20);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [messageCopy respondWithError:v14];
    goto LABEL_22;
  }

  v8 = classForUnarchiving;
  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v46[0] = objc_opt_class();
  v46[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v12 = [v10 setWithArray:v11];
  v39 = 0;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v6 error:&v39];
  v14 = v39;

  if (v13)
  {

    v14 = v13;
    goto LABEL_12;
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543874;
    v41 = v33;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could decode encoded fetched objects %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
  v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
  [messageCopy respondWithError:v34];

LABEL_22:
}

- (void)fetchWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMCameraObjectFetchClient *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCOFC.m.dfo" receiver:self selector:sel_handleDidFetchObjectsMessage_];

  payload = [(HMCameraObjectFetchClient *)self payload];
  v8 = [payload mutableCopy];

  uUID = [(HMCameraObjectFetchClient *)self UUID];
  [v8 setObject:uUID forKeyedSubscript:@"HMCOFC.mk.u"];

  v10 = MEMORY[0x1E69A2A10];
  messageName = [(HMCameraObjectFetchClient *)self messageName];
  destination = [(HMCameraObjectFetchClient *)self destination];
  v13 = [v10 messageWithName:messageName destination:destination payload:v8];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke;
  v24 = &unk_1E754DE00;
  selfCopy = self;
  v14 = completionCopy;
  v26 = v14;
  [v13 setResponseHandler:&v21];
  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v18;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Fetching objects", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [(HMCameraObjectFetchClient *)selfCopy2 context:v21];
  messageDispatcher2 = [v19 messageDispatcher];
  [messageDispatcher2 sendMessage:v13];
}

void __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
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
      *buf = 138543618;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch objects: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_12;
    v22[3] = &unk_1E754E458;
    v14 = &v24;
    v24 = *(a1 + 40);
    v23 = v5;
    [v13 invokeBlock:v22];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) fetchedObjects];
      *buf = 138543618;
      v26 = v15;
      v27 = 2048;
      v28 = [v16 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched %lu objects", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_14;
    v20[3] = &unk_1E754E458;
    v14 = &v21;
    v19 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v19;
    [v18 invokeBlock:v20];
  }
}

void __49__HMCameraObjectFetchClient_fetchWithCompletion___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) fetchedObjects];
  v2 = [v3 copy];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)dealloc
{
  context = [(HMCameraObjectFetchClient *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v5.receiver = self;
  v5.super_class = HMCameraObjectFetchClient;
  [(HMCameraObjectFetchClient *)&v5 dealloc];
}

- (HMCameraObjectFetchClient)initWithUUID:(id)d context:(id)context messageName:(id)name destination:(id)destination
{
  dCopy = d;
  contextCopy = context;
  nameCopy = name;
  destinationCopy = destination;
  v25.receiver = self;
  v25.super_class = HMCameraObjectFetchClient;
  v15 = [(HMCameraObjectFetchClient *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_UUID, d);
    objc_storeStrong(&v16->_context, context);
    v17 = [nameCopy copy];
    messageName = v16->_messageName;
    v16->_messageName = v17;

    v19 = [destinationCopy copy];
    destination = v16->_destination;
    v16->_destination = v19;

    payload = v16->_payload;
    v16->_payload = MEMORY[0x1E695E0F8];

    array = [MEMORY[0x1E695DF70] array];
    fetchedObjects = v16->_fetchedObjects;
    v16->_fetchedObjects = array;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_38651 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_38651, &__block_literal_global_38652);
  }

  v3 = logCategory__hmf_once_v9_38653;

  return v3;
}

uint64_t __40__HMCameraObjectFetchClient_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_38653;
  logCategory__hmf_once_v9_38653 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end