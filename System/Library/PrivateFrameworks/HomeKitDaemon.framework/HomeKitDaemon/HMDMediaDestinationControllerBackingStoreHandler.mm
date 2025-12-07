@interface HMDMediaDestinationControllerBackingStoreHandler
+ (id)backingStoreObjectForData:(id)data;
+ (id)logCategory;
- (HMDMediaDestinationControllerBackingStoreHandler)initWithData:(id)data backingStore:(id)store metricsEventDispatcher:(id)dispatcher delegate:(id)delegate;
- (HMDMediaDestinationControllerBackingStoreHandlerDelegate)delegate;
- (HMMediaDestinationControllerData)data;
- (id)logIdentifier;
- (void)mergeData:(id)data;
- (void)notifyDidUpdateAvailableDestinationIdentifiers:(id)identifiers;
- (void)notifyDidUpdateDestinationIdentifier:(id)identifier;
- (void)removeControllerWithCompletion:(id)completion;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)transactionObjectUpdatedAvailableDestinationIdentifiers:(id)identifiers message:(id)message;
- (void)transactionObjectUpdatedDestinationIdentifier:(id)identifier message:(id)message;
- (void)transactionObjectUpdatedSupportedOptions:(unint64_t)options message:(id)message;
- (void)updateAvailableDestinationIdentifiers:(id)identifiers;
- (void)updateAvailableDestinationIdentifiers:(id)identifiers completion:(id)completion;
- (void)updateDestinationIdentifier:(id)identifier;
- (void)updateDestinationIdentifier:(id)identifier completion:(id)completion;
- (void)updateSupportedOptions:(unint64_t)options;
- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationControllerBackingStoreHandler

- (HMDMediaDestinationControllerBackingStoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDBackingStoreHandler *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove unknown child with model object: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
  [messageCopy respondWithError:v12];
}

- (void)transactionObjectUpdatedSupportedOptions:(unint64_t)options message:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  supportedOptions = [data supportedOptions];

  if (supportedOptions != options)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMMediaDestinationControllerSupportOptionsAsString();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Transaction updated supported options: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy updateSupportedOptions:options];
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];
  }
}

- (void)transactionObjectUpdatedAvailableDestinationIdentifiers:(id)identifiers message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  messageCopy = message;
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  availableDestinationIdentifiers = [data availableDestinationIdentifiers];

  v10 = [MEMORY[0x277CBEB98] setWithArray:availableDestinationIdentifiers];
  v11 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
  v12 = [v10 isEqualToSet:v11];

  if ((v12 & 1) == 0)
  {
    [(HMDMediaDestinationControllerBackingStoreHandler *)self updateAvailableDestinationIdentifiers:identifiersCopy];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = availableDestinationIdentifiers;
      v23 = 2112;
      v24 = identifiersCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Transaction updated available destination identifiers: %@ to identifiers: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];

    [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy notifyDidUpdateAvailableDestinationIdentifiers:identifiersCopy];
  }
}

- (void)transactionObjectUpdatedDestinationIdentifier:(id)identifier message:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  messageCopy = message;
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)self data];
  destinationIdentifier = [data destinationIdentifier];

  if ((HMFEqualObjects() & 1) == 0)
  {
    [(HMDMediaDestinationControllerBackingStoreHandler *)self updateDestinationIdentifier:identifierCopy];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = destinationIdentifier;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Transaction updated destination identifier: %@ to destination identifier: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];

    transactionResult2 = [messageCopy transactionResult];
    [transactionResult2 markSaveToAssistant];

    metricsEventDispatcher = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy metricsEventDispatcher];
    [metricsEventDispatcher submitTransactionUpdatedDestinationEventWithDestinationIdentifier:identifierCopy existingDestinationIdentifier:destinationIdentifier];

    [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy notifyDidUpdateDestinationIdentifier:identifierCopy];
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v57 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v51 = 138543618;
    v52 = v14;
    v53 = 2112;
    v54 = valuesCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating media destination controller using transaction object: %@", &v51, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (isFeatureHomeTheaterQFAEnabledForTests && ![isFeatureHomeTheaterQFAEnabledForTests BOOLValue])
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
      uuid = [v21 uuid];
      identifier = [(HMDBackingStoreHandler *)selfCopy identifier];
      v24 = [uuid isEqual:identifier];

      if (v24)
      {
        objectChangeType = [updatedCopy objectChangeType];
        if (objectChangeType == 1)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = selfCopy;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            v51 = 138543362;
            v52 = v29;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly processing destination controller add after one already exists", &v51, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
        }

        setProperties = [v21 setProperties];
        if ([setProperties containsObject:@"destinationModelIdentifier"])
        {
          destinationModelIdentifier = [v21 destinationModelIdentifier];
          [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy transactionObjectUpdatedDestinationIdentifier:destinationModelIdentifier message:messageCopy];
        }

        if ([setProperties containsObject:@"availableDestinationModelIdentifierStrings"])
        {
          availableDestinationModelIdentifiers = [v21 availableDestinationModelIdentifiers];
          [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy transactionObjectUpdatedAvailableDestinationIdentifiers:availableDestinationModelIdentifiers message:messageCopy];
        }

        if ([setProperties containsObject:@"supportedOptions"])
        {
          supportedOptions = [v21 supportedOptions];
          -[HMDMediaDestinationControllerBackingStoreHandler transactionObjectUpdatedSupportedOptions:message:](selfCopy, "transactionObjectUpdatedSupportedOptions:message:", [supportedOptions unsignedIntegerValue], messageCopy);
        }

        if (objectChangeType == 1)
        {
          delegate = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy delegate];
          v35 = objc_autoreleasePoolPush();
          v36 = selfCopy;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v51 = 138543874;
            v52 = v38;
            v53 = 2112;
            v54 = v21;
            v55 = 2112;
            v56 = delegate;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Notifying of unexpected model add: %@ delegate: %@", &v51, 0x20u);
          }

          objc_autoreleasePoolPop(v35);
          [delegate mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:v36];
        }

        [messageCopy respondWithSuccess];
        goto LABEL_35;
      }

      v46 = objc_autoreleasePoolPush();
      v47 = selfCopy;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        uuid2 = [v21 uuid];
        v51 = 138543618;
        v52 = v49;
        v53 = 2112;
        v54 = uuid2;
        _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Received unknown media destination controller model with identifier: %@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
      setProperties = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:setProperties];
      metricsEventDispatcher = [(HMDMediaDestinationControllerBackingStoreHandler *)v47 metricsEventDispatcher];
      v44 = metricsEventDispatcher;
      v45 = 1;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v51 = 138543618;
        v52 = v42;
        v53 = 2112;
        v54 = updatedCopy;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination controller model from new model object: %@", &v51, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      setProperties = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      [messageCopy respondWithError:setProperties];
      metricsEventDispatcher = [(HMDMediaDestinationControllerBackingStoreHandler *)v40 metricsEventDispatcher];
      v44 = metricsEventDispatcher;
      v45 = 7;
    }

    [metricsEventDispatcher submitFailureEventWithEventErrorCode:v45 error:setProperties];

LABEL_35:
    goto LABEL_36;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v51 = 138543362;
    v52 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping due to Home Theater QFA enabled", &v51, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_36:
}

- (void)notifyDidUpdateAvailableDestinationIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  delegate = [(HMDMediaDestinationControllerBackingStoreHandler *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = identifiersCopy;
    v14 = 2112;
    v15 = delegate;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated available destination identifiers: %@ delegate: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [delegate mediaDestinationControllerBackingStoreHandler:selfCopy didUpdateAvailableDestinationIdentifiers:identifiersCopy];
}

- (void)notifyDidUpdateDestinationIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegate = [(HMDMediaDestinationControllerBackingStoreHandler *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543874;
    v11 = v9;
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = delegate;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated destination identifier: %@ delegate: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [delegate mediaDestinationControllerBackingStoreHandler:selfCopy didUpdateDestinationIdentifier:identifierCopy];
}

- (void)updateSupportedOptions:(unint64_t)options
{
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setSupportedOptions:options];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAvailableDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setAvailableDestinationIdentifiers:identifiersCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateDestinationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  [(HMMutableMediaDestinationControllerData *)self->_data setDestinationIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaDestinationControllerData)data
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_data);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)mergeData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  if (([(HMMutableMediaDestinationControllerData *)self->_data isEqual:dataCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [dataCopy mutableCopy];
    data = self->_data;
    self->_data = v5;

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
      v14 = dataCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Merged data: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)removeControllerWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing destination controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [HMDMediaDestinationControllerModel alloc];
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy data];
  v11 = [(HMDMediaDestinationControllerModel *)v9 initWithData:data changeType:3];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HMDMediaDestinationControllerBackingStoreHandler_removeControllerWithCompletion___block_invoke;
  v13[3] = &unk_278689A68;
  v13[4] = selfCopy;
  v14 = completionCopy;
  v12 = completionCopy;
  [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v11 reason:@"MediaDestinationControllerRemoveControllerWithCompletion" completion:v13];
}

void __83__HMDMediaDestinationControllerBackingStoreHandler_removeControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run remove destination controller transaction completed with error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Run remove destination controller transaction completed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)updateAvailableDestinationIdentifiers:(id)identifiers completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = identifiersCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to available destination identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaDestinationControllerModel alloc];
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:data changeType:2];

  [(HMDMediaDestinationControllerModel *)v14 setAvailableDestinationModelIdentifiers:identifiersCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HMDMediaDestinationControllerBackingStoreHandler_updateAvailableDestinationIdentifiers_completion___block_invoke;
  v16[3] = &unk_278689A68;
  v16[4] = selfCopy;
  v17 = completionCopy;
  v15 = completionCopy;
  [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v14 reason:@"UpdateAvailableDestinationIdentifiers" completion:v16];
}

void __101__HMDMediaDestinationControllerBackingStoreHandler_updateAvailableDestinationIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update available destination identifiers transaction completed with error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update available destination identifiers transaction completed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)updateSupportedOptions:(unint64_t)options completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationControllerSupportOptionsAsString();
    *buf = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating to supported options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [HMDMediaDestinationControllerModel alloc];
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:data changeType:2];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
  [(HMDMediaDestinationControllerModel *)v14 setSupportedOptions:v15];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HMDMediaDestinationControllerBackingStoreHandler_updateSupportedOptions_completion___block_invoke;
  v17[3] = &unk_278689A68;
  v17[4] = selfCopy;
  v18 = completionCopy;
  v16 = completionCopy;
  [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v14 reason:@"UpdateSupportedOptions" completion:v17];
}

void __86__HMDMediaDestinationControllerBackingStoreHandler_updateSupportedOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update supported options transaction completed with error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update supported options transaction completed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)updateDestinationIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating to destination identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMDMediaDestinationControllerModel alloc];
  data = [(HMDMediaDestinationControllerBackingStoreHandler *)selfCopy data];
  v14 = [(HMDMediaDestinationControllerModel *)v12 initWithData:data changeType:2];

  [(HMDMediaDestinationControllerModel *)v14 setDestinationModelIdentifier:identifierCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HMDMediaDestinationControllerBackingStoreHandler_updateDestinationIdentifier_completion___block_invoke;
  v16[3] = &unk_278689A68;
  v16[4] = selfCopy;
  v17 = completionCopy;
  v15 = completionCopy;
  [(HMDBackingStoreHandler *)selfCopy runTransactionWithModel:v14 reason:@"UpdateDestinationIdentifier" completion:v16];
}

void __91__HMDMediaDestinationControllerBackingStoreHandler_updateDestinationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Run update destination identifier transaction completed with error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Run update destination identifier transaction completed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (HMDMediaDestinationControllerBackingStoreHandler)initWithData:(id)data backingStore:(id)store metricsEventDispatcher:(id)dispatcher delegate:(id)delegate
{
  dataCopy = data;
  storeCopy = store;
  dispatcherCopy = dispatcher;
  delegateCopy = delegate;
  if (!dataCopy)
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
    return +[(HMDMediaDestinationControllerBackingStoreHandler *)v20];
  }

  v14 = delegateCopy;
  identifier = [dataCopy identifier];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationControllerBackingStoreHandler;
  v16 = [(HMDBackingStoreHandler *)&v22 initWithIdentifier:identifier backingStore:storeCopy];

  if (v16)
  {
    v17 = [dataCopy mutableCopy];
    data = v16->_data;
    v16->_data = v17;

    objc_storeWeak(&v16->_delegate, v14);
    objc_storeStrong(&v16->_metricsEventDispatcher, dispatcher);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_5337);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

void __63__HMDMediaDestinationControllerBackingStoreHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32;
  logCategory__hmf_once_v32 = v0;
}

+ (id)backingStoreObjectForData:(id)data
{
  dataCopy = data;
  v4 = [[HMDMediaDestinationControllerModel alloc] initWithData:dataCopy changeType:0];
  availableDestinationIdentifiers = [dataCopy availableDestinationIdentifiers];
  [(HMDMediaDestinationControllerModel *)v4 setAvailableDestinationModelIdentifiers:availableDestinationIdentifiers];

  destinationIdentifier = [dataCopy destinationIdentifier];

  [(HMDMediaDestinationControllerModel *)v4 setDestinationModelIdentifier:destinationIdentifier];

  return v4;
}

@end