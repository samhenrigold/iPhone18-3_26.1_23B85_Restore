@interface HMCameraSnapshot
+ (id)logCategory;
+ (id)shortDescription;
- (HMCameraSnapshot)init;
- (HMCameraSnapshot)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio captureDate:(id)date;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)_releaseSlotIdentifier;
- (void)dealloc;
- (void)fillSlotWithCompletionHandler:(id)handler;
@end

@implementation HMCameraSnapshot

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  slotIdentifier = [(HMCameraSource *)self slotIdentifier];
  v5 = [v3 initWithName:@"Slot Identifier" value:slotIdentifier];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = MEMORY[0x1E696AD98];
  [(HMCameraSource *)self aspectRatio];
  v8 = [v7 numberWithDouble:?];
  v9 = [v6 initWithName:@"Aspect Ratio" value:v8];
  v15[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  captureDate = [(HMCameraSnapshot *)self captureDate];
  v12 = [v10 initWithName:@"Capture Date" value:captureDate];
  v15[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)_releaseSlotIdentifier
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    slotIdentifier = [(HMCameraSource *)selfCopy slotIdentifier];
    *buf = 138543618;
    v20 = v6;
    v21 = 2112;
    v22 = slotIdentifier;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot slot identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMCameraSource *)selfCopy context];
  if (!context)
  {
    _HMFPreconditionFailure();
  }

  v9 = context;
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraSource *)selfCopy profileUniqueIdentifier];
  v12 = [v10 initWithTarget:profileUniqueIdentifier];

  slotIdentifier2 = [(HMCameraSource *)selfCopy slotIdentifier];
  v18 = slotIdentifier2;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v15 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraSnapshotReleaseSnapshotMessage" destination:v12 payload:v14];
  messageDispatcher = [v9 messageDispatcher];
  [messageDispatcher sendMessage:v15];
}

- (void)fillSlotWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    slotIdentifier = [(HMCameraSource *)selfCopy slotIdentifier];
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = slotIdentifier;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Filling snapshot slot identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMCameraSnapshot *)selfCopy setDidFillSlot:1];
  context = [(HMCameraSource *)selfCopy context];
  if (!context)
  {
    _HMFPreconditionFailure();
  }

  v11 = context;
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraSource *)selfCopy profileUniqueIdentifier];
  v14 = [v12 initWithTarget:profileUniqueIdentifier];

  v24 = @"kSlotIdentifierKey";
  slotIdentifier2 = [(HMCameraSource *)selfCopy slotIdentifier];
  v25 = slotIdentifier2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v17 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraSnapshotFillSnapshotSlotMessage" destination:v14 payload:v16];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__HMCameraSnapshot_fillSlotWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = selfCopy;
  v22 = v11;
  v23 = handlerCopy;
  v18 = handlerCopy;
  v19 = v11;
  [v17 setResponseHandler:v21];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];
}

void __50__HMCameraSnapshot_fillSlotWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v12 = "%{public}@Failed to fill slot: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Successfully filled slot";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];
}

- (void)dealloc
{
  if (self->_didFillSlot)
  {
    [(HMCameraSnapshot *)self _releaseSlotIdentifier];
  }

  v3.receiver = self;
  v3.super_class = HMCameraSnapshot;
  [(HMCameraSnapshot *)&v3 dealloc];
}

- (HMCameraSnapshot)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio captureDate:(id)date
{
  identifierCopy = identifier;
  slotIdentifierCopy = slotIdentifier;
  dateCopy = date;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!slotIdentifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (ratio == 0.0)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v13 = dateCopy;
  if (!dateCopy)
  {
LABEL_11:
    v18 = _HMFPreconditionFailure();
    return [(HMCameraSnapshot *)v18 init];
  }

  v20.receiver = self;
  v20.super_class = HMCameraSnapshot;
  v14 = [(HMCameraSource *)&v20 initWithProfileUniqueIdentifier:identifierCopy slotIdentifier:slotIdentifierCopy aspectRatio:ratio];
  if (v14)
  {
    v15 = [v13 copy];
    captureDate = v14->_captureDate;
    v14->_captureDate = v15;
  }

  return v14;
}

- (HMCameraSnapshot)init
{
  v3.receiver = self;
  v3.super_class = HMCameraSnapshot;
  return [(HMCameraSource *)&v3 init];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_6428 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_6428, &__block_literal_global_6429);
  }

  v3 = logCategory__hmf_once_v5_6430;

  return v3;
}

uint64_t __31__HMCameraSnapshot_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_6430;
  logCategory__hmf_once_v5_6430 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end