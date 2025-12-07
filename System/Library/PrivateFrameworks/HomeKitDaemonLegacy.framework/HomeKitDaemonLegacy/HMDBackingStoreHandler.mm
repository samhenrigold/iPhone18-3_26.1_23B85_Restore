@interface HMDBackingStoreHandler
+ (id)logCategory;
- (HMDBackingStoreHandler)initWithIdentifier:(id)identifier backingStore:(id)store;
- (id)attributeDescriptions;
- (id)backingStoreObjectsForVersion:(int64_t)version;
- (id)logIdentifier;
- (void)runTransactionWithModel:(id)model options:(id)options reason:(id)reason completion:(id)completion;
- (void)runTransactionWithModel:(id)model reason:(id)reason completion:(id)completion;
- (void)runTransactionWithModels:(id)models options:(id)options reason:(id)reason completion:(id)completion;
- (void)runTransactionWithModels:(id)models reason:(id)reason completion:(id)completion;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDBackingStoreHandler

- (id)logIdentifier
{
  identifier = [(HMDBackingStoreHandler *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDBackingStoreHandler *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = removedCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to process removed object: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [messageCopy respondWithError:v12];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = valuesCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to process udated changes for object: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
  [messageCopy respondWithError:v15];
}

- (id)backingStoreObjectsForVersion:(int64_t)version
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive backinstore objects for shared user", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  return MEMORY[0x277CBEBF8];
}

- (void)runTransactionWithModels:(id)models options:(id)options reason:(id)reason completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  optionsCopy = options;
  reasonCopy = reason;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v17;
    v39 = 2112;
    v40 = modelsCopy;
    v41 = 2112;
    v42 = optionsCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Running transaction with models: %@ options: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (completionCopy)
  {
    backingStore = [(HMDBackingStoreHandler *)selfCopy backingStore];
    v29 = reasonCopy;
    v19 = [backingStore transaction:reasonCopy options:optionsCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = modelsCopy;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        v24 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 add:*(*(&v32 + 1) + 8 * v24++)];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v22);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__HMDBackingStoreHandler_runTransactionWithModels_options_reason_completion___block_invoke;
    v30[3] = &unk_279733F30;
    v30[4] = selfCopy;
    v31 = completionCopy;
    [v19 run:v30];

    reasonCopy = v29;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to run transaction due to no completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }
}

void __77__HMDBackingStoreHandler_runTransactionWithModels_options_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Transaction completed with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Transaction completed", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)runTransactionWithModel:(id)model options:(id)options reason:(id)reason completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v10 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  reasonCopy = reason;
  optionsCopy = options;
  modelCopy2 = model;
  v15 = [v10 arrayWithObjects:&modelCopy count:1];

  [(HMDBackingStoreHandler *)self runTransactionWithModels:v15 options:optionsCopy reason:reasonCopy completion:completionCopy, modelCopy, v17];
}

- (void)runTransactionWithModels:(id)models reason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  modelsCopy = models;
  v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  [(HMDBackingStoreHandler *)self runTransactionWithModels:modelsCopy options:v11 reason:reasonCopy completion:completionCopy];
}

- (void)runTransactionWithModel:(id)model reason:(id)reason completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v8 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  reasonCopy = reason;
  modelCopy2 = model;
  v12 = [v8 arrayWithObjects:&modelCopy count:1];

  [(HMDBackingStoreHandler *)self runTransactionWithModels:v12 reason:reasonCopy completion:completionCopy, modelCopy, v14];
}

- (HMDBackingStoreHandler)initWithIdentifier:(id)identifier backingStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HMDBackingStoreHandler;
  v9 = [(HMDBackingStoreHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_backingStore, store);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_57765 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_57765, &__block_literal_global_57766);
  }

  v3 = logCategory__hmf_once_v8_57767;

  return v3;
}

uint64_t __37__HMDBackingStoreHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_57767;
  logCategory__hmf_once_v8_57767 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end