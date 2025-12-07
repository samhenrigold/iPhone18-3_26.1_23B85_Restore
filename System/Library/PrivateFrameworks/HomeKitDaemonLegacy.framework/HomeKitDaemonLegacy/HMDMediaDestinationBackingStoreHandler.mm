@interface HMDMediaDestinationBackingStoreHandler
+ (id)backingStoreObjectForMediaDestination:(id)destination;
+ (id)logCategory;
- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)destination backingStore:(id)store metricsDispatcher:(id)dispatcher delegate:(id)delegate;
- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate;
- (HMMediaDestination)destination;
- (void)mergeDestination:(id)destination;
- (void)migrateWithCurrentCloudRecord:(id)record home:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion;
- (void)recoverDueToInvalidRecordInCloudWithHome:(id)home migrationQueue:(id)queue completion:(id)completion;
- (void)recoverDueToNoRecordInCloudWithHome:(id)home migrationQueue:(id)queue completion:(id)completion;
- (void)setAudioGroupIdentifier:(id)identifier;
- (void)setSupportedOptions:(unint64_t)options;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateAudioGroupIdentifier:(id)identifier completion:(id)completion;
- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationBackingStoreHandler

- (HMDMediaDestinationBackingStoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove unknown transaction object: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  [messageCopy respondWithError:v12];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v53 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v14;
    v49 = 2112;
    v50 = valuesCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction object updated with new object: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (isFeatureHomeTheaterQFAEnabledForTests && [isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping due to Home Theater QFA enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v19 = valuesCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
      v23 = destination;
      if (destination && ([destination uniqueIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "uuid"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "hmf_isEqualToUUID:", v25), v25, v24, (v26 & 1) == 0))
      {
        v42 = objc_autoreleasePoolPush();
        v43 = selfCopy;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v45;
          v49 = 2112;
          v50 = v21;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio destination with unrecongnized model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v42);
      }

      else
      {
        setProperties = [v21 setProperties];
        if ([setProperties containsObject:@"supportedOptions"])
        {
          supportedOptions = [v21 supportedOptions];
          -[HMDMediaDestinationBackingStoreHandler setSupportedOptions:](selfCopy, "setSupportedOptions:", [supportedOptions unsignedIntegerValue]);
        }

        if ([setProperties containsObject:@"audioGroupIdentifier"])
        {
          audioGroupIdentifier = [v21 audioGroupIdentifier];
          [(HMDMediaDestinationBackingStoreHandler *)selfCopy setAudioGroupIdentifier:audioGroupIdentifier];
        }

        destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
        if ((HMFEqualObjects() & 1) == 0)
        {
          v46 = updatedCopy;
          v31 = objc_autoreleasePoolPush();
          v32 = selfCopy;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543874;
            v48 = v34;
            v49 = 2112;
            v50 = v23;
            v51 = 2112;
            v52 = destination2;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updated audio destination: %@ new audio destination: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          transactionResult = [messageCopy transactionResult];
          [transactionResult markChanged];

          transactionResult2 = [messageCopy transactionResult];
          [transactionResult2 markSaveToAssistant];

          delegate = [(HMDMediaDestinationBackingStoreHandler *)v32 delegate];
          [delegate mediaDestinationBackingStoreHandler:v32 didUpdateDestination:destination2];

          updatedCopy = v46;
        }

        [messageCopy respondWithSuccess];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v41;
        v49 = 2112;
        v50 = v19;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to process unknown transaction object: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [messageCopy respondWithError:v23];
    }
  }
}

- (void)setAudioGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setAudioGroupIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportedOptions:(unint64_t)options
{
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestination *)self->_destination setSupportedOptions:options];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaDestination)destination
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_destination);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)recoverDueToInvalidRecordInCloudWithHome:(id)home migrationQueue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  queueCopy = queue;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Recovering cloud data due to invalid cloud record", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
  uniqueIdentifier = [destination uniqueIdentifier];

  [homeCopy dropAllChangesWithObjectID:uniqueIdentifier];
  v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  metricsDispatcher = [(HMDMediaDestinationBackingStoreHandler *)selfCopy metricsDispatcher];
  [metricsDispatcher submitFailureEventWithFailureCode:3 error:v17];

  destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
  v20 = [HMDMediaDestinationBackingStoreHandler backingStoreObjectForMediaDestination:destination2];

  [v20 setObjectChangeType:2];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __109__HMDMediaDestinationBackingStoreHandler_recoverDueToInvalidRecordInCloudWithHome_migrationQueue_completion___block_invoke;
  v23[3] = &unk_279735738;
  v24 = v20;
  v25 = completionCopy;
  v21 = v20;
  v22 = completionCopy;
  dispatch_async(queueCopy, v23);
}

void __109__HMDMediaDestinationBackingStoreHandler_recoverDueToInvalidRecordInCloudWithHome_migrationQueue_completion___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  (*(v1 + 16))(v1, MEMORY[0x277CBEBF8], v2, 0);
}

- (void)migrateWithCurrentCloudRecord:(id)record home:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  homeCopy = home;
  zoneCopy = zone;
  queueCopy = queue;
  completionCopy = completion;
  extractObjectChange = [recordCopy extractObjectChange];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = extractObjectChange;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    v41 = homeCopy;
    destination = [(HMDMediaDestinationBackingStoreHandler *)self destination];
    supportedOptions = [v19 supportedOptions];
    integerValue = [supportedOptions integerValue];
    if (integerValue == [destination supportedOptions])
    {
      audioGroupIdentifier = [v19 audioGroupIdentifier];
      [destination audioGroupIdentifier];
      v24 = destination;
      selfCopy = self;
      v26 = v19;
      v27 = completionCopy;
      v28 = queueCopy;
      v29 = recordCopy;
      v31 = v30 = zoneCopy;
      v40 = HMFEqualObjects();

      zoneCopy = v30;
      recordCopy = v29;
      queueCopy = v28;
      completionCopy = v27;
      v19 = v26;
      self = selfCopy;
      destination = v24;

      if (v40)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __113__HMDMediaDestinationBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke_2;
        block[3] = &unk_2797348C0;
        v43 = completionCopy;
        dispatch_async(queueCopy, block);

        homeCopy = v41;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v36 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543874;
      v47 = v39;
      v48 = 2112;
      v49 = v19;
      v50 = 2112;
      v51 = destination;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Recovering due to miss matched model: %@ destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    homeCopy = v41;
    [(HMDMediaDestinationBackingStoreHandler *)selfCopy2 recoverDueToInvalidRecordInCloudWithHome:v41 migrationQueue:queueCopy completion:completionCopy];
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v35;
      v48 = 2112;
      v49 = recordCopy;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate due to unknown model extracted from record: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __113__HMDMediaDestinationBackingStoreHandler_migrateWithCurrentCloudRecord_home_cloudZone_migrationQueue_completion___block_invoke;
    v44[3] = &unk_2797348C0;
    v45 = completionCopy;
    dispatch_async(queueCopy, v44);
    destination = v45;
  }

LABEL_15:
}

- (void)recoverDueToNoRecordInCloudWithHome:(id)home migrationQueue:(id)queue completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  queueCopy = queue;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Recovering cloud data due to no record added", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
  uniqueIdentifier = [destination uniqueIdentifier];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __104__HMDMediaDestinationBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke;
  v19[3] = &unk_27972F8D8;
  v19[4] = selfCopy;
  v20 = queueCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = queueCopy;
  [homeCopy cleanChangesIfNoAddChangeObjectID:uniqueIdentifier completion:v19];
}

void __104__HMDMediaDestinationBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping migration due to add transaction already exists", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDMediaDestinationBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_20;
    block[3] = &unk_2797348C0;
    v10 = *(a1 + 40);
    v22 = *(a1 + 48);
    dispatch_async(v10, block);
    v11 = v22;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v12 = [*(a1 + 32) metricsDispatcher];
    [v12 submitFailureEventWithFailureCode:2 error:v11];

    v13 = [*(a1 + 32) destination];
    v14 = [HMDMediaDestinationBackingStoreHandler backingStoreObjectForMediaDestination:v13];

    [v14 setObjectChangeType:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__HMDMediaDestinationBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_2;
    v18[3] = &unk_279735738;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v19 = v14;
    v20 = v16;
    v17 = v14;
    dispatch_async(v15, v18);
  }
}

void __104__HMDMediaDestinationBackingStoreHandler_recoverDueToNoRecordInCloudWithHome_migrationQueue_completion___block_invoke_2(uint64_t a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  (*(v1 + 16))(v1, v2, MEMORY[0x277CBEBF8], 0);
}

- (void)migrateWithHome:(id)home cloudZone:(id)zone migrationQueue:(id)queue completion:(id)completion
{
  homeCopy = home;
  zoneCopy = zone;
  queueCopy = queue;
  completionCopy = completion;
  destination = [(HMDMediaDestinationBackingStoreHandler *)self destination];
  uniqueIdentifier = [destination uniqueIdentifier];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__HMDMediaDestinationBackingStoreHandler_migrateWithHome_cloudZone_migrationQueue_completion___block_invoke;
  v20[3] = &unk_279725398;
  v20[4] = self;
  v21 = homeCopy;
  v23 = zoneCopy;
  v24 = completionCopy;
  v22 = queueCopy;
  v16 = zoneCopy;
  v17 = completionCopy;
  v18 = queueCopy;
  v19 = homeCopy;
  [v16 cloudRecordWithObjectID:uniqueIdentifier completionHandler:v20];
}

uint64_t __94__HMDMediaDestinationBackingStoreHandler_migrateWithHome_cloudZone_migrationQueue_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 migrateWithCurrentCloudRecord:a2 home:a1[5] cloudZone:a1[7] migrationQueue:a1[6] completion:a1[8]];
  }

  else
  {
    return [v3 recoverDueToNoRecordInCloudWithHome:a1[5] migrationQueue:a1[6] completion:a1[8]];
  }
}

- (void)updateAudioGroupIdentifier:(id)identifier completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to audio group identifier: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (completionCopy)
  {
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    audioGroupIdentifier = [destination audioGroupIdentifier];
    v15 = [identifierCopy hmf_isEqualToUUID:audioGroupIdentifier];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Attempting forced push due to audio group identifier already updated", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = +[HMDBackingStoreTransactionOptions defaultOutOfSyncOptions];

      v12 = v20;
    }

    v21 = [HMDMediaDestinationModel alloc];
    destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    v23 = [(HMDMediaDestinationModel *)v21 initWithDestination:destination2 changeType:2];

    [(HMDMediaDestinationModel *)v23 setAudioGroupIdentifier:identifierCopy];
    [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v23 options:v12 reason:@"UpdateAudioGroupIdentifier" completion:completionCopy];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to update audio group identifier due to no completion", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HMMediaDestinationSupportOptionsAsString();
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to supported options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (completionCopy)
  {
    destination = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
    if ([destination supportedOptions] == options)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Supported options already updated", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"UpdateSupportedOptions", v7];
      v22 = [HMDMediaDestinationModel alloc];
      destination2 = [(HMDMediaDestinationBackingStoreHandler *)selfCopy destination];
      v24 = [(HMDMediaDestinationModel *)v22 initWithDestination:destination2 changeType:2];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      [(HMDMediaDestinationModel *)v24 setSupportedOptions:v25];

      [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v24 reason:v21 completion:completionCopy];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update supported options due to no completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)mergeDestination:(id)destination
{
  v15 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  os_unfair_lock_lock_with_options();
  if (([(HMMutableMediaDestination *)self->_destination isEqual:destinationCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [destinationCopy mutableCopy];
    destination = self->_destination;
    self->_destination = v5;

    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = destinationCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Merged destination: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (HMDMediaDestinationBackingStoreHandler)initWithDestination:(id)destination backingStore:(id)store metricsDispatcher:(id)dispatcher delegate:(id)delegate
{
  destinationCopy = destination;
  storeCopy = store;
  dispatcherCopy = dispatcher;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!storeCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return +[(HMDMediaDestinationBackingStoreHandler *)v20];
  }

  v14 = delegateCopy;
  uniqueIdentifier = [destinationCopy uniqueIdentifier];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationBackingStoreHandler;
  v16 = [(HMDBackingStoreHandler *)&v22 initWithIdentifier:uniqueIdentifier backingStore:storeCopy];

  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v14);
    v17 = [destinationCopy mutableCopy];
    destination = v16->_destination;
    v16->_destination = v17;

    objc_storeStrong(&v16->_metricsDispatcher, dispatcher);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_37841 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_37841, &__block_literal_global_37842);
  }

  v3 = logCategory__hmf_once_v25_37843;

  return v3;
}

uint64_t __53__HMDMediaDestinationBackingStoreHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_37843;
  logCategory__hmf_once_v25_37843 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)backingStoreObjectForMediaDestination:(id)destination
{
  destinationCopy = destination;
  v4 = [[HMDMediaDestinationModel alloc] initWithDestination:destinationCopy changeType:0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(destinationCopy, "supportedOptions")}];
  [(HMDMediaDestinationModel *)v4 setSupportedOptions:v5];

  audioGroupIdentifier = [destinationCopy audioGroupIdentifier];

  [(HMDMediaDestinationModel *)v4 setAudioGroupIdentifier:audioGroupIdentifier];

  return v4;
}

@end