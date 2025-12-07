@interface HMDMediaDestinationController
+ (id)logCategory;
- (BOOL)hasSetDestinationRelatedToIdentifier:(id)identifier;
- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate featuresDataSource:(id)dataSource;
- (HMDMediaDestinationController)initWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1;
- (HMDMediaDestinationControllerDataSource)dataSource;
- (HMDMediaDestinationControllerDelegate)delegate;
- (HMMediaDestinationControllerData)committedData;
- (HMMediaDestinationControllerData)data;
- (NSString)urlString;
- (id)_updateDestinationIdentifier:(id)identifier;
- (id)assistantObjectWithHome:(id)home name:(id)name;
- (id)attributeDescriptions;
- (id)dataSourceAvailableDestinationIdentifiers;
- (id)dataSourceDestinationManagerWithIdentifier:(id)identifier;
- (id)dataSourceDestinationUsingRelatedIdentifier:(id)identifier;
- (id)dataSourceDestinationWithIdentifier:(id)identifier;
- (id)dataSourceTargetAccessory;
- (id)filteredAvailableDestinationIdentifiers;
- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)identifiers;
- (id)legacyUpdateAvailableDestinationIdentifiers:(id)identifiers;
- (id)legacyUpdateDestinationIdentifier:(id)identifier;
- (id)logIdentifier;
- (id)mediaGroupParticipantDataLocalStorage;
- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message;
- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message;
- (id)updateAvailableDestinationIdentifiers:(id)identifiers;
- (id)updateDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options;
- (id)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier;
- (void)configureWithHome:(id)home;
- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateAvailableDestinationIdentifiers:(id)identifiers;
- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateDestinationIdentifier:(id)identifier;
- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)add;
- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)message destinationIdentifier:(id)identifier updateOptions:(unint64_t)options;
- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)notification destinationControllerIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier;
- (void)mergeData:(id)data;
- (void)migrateSupportOptions;
- (void)notifyDelegateDidUpdateStagedValues;
- (void)refreshAvailableDestinationIdentifiers;
- (void)refreshDestinationController;
- (void)refreshDestinationIdentifier;
- (void)requestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)stageAvailableDestinationIdentifiers:(id)identifiers;
- (void)stageDestinationIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireAvailableDestinationIdentifiers:(id)identifiers;
- (void)stagedValue:(id)value didExpireDestinationIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)triggerStageValueDidExpireValueForStagedAvailableDestinationIdentifiers;
- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier;
- (void)unsetAudioGroupForCurrentDestination;
@end

@implementation HMDMediaDestinationController

- (id)assistantObjectWithHome:(id)home name:(id)name
{
  v15[9] = *MEMORY[0x277D85DE8];
  v14[0] = @"objectType";
  v14[1] = @"objectName";
  v15[0] = *MEMORY[0x277D48150];
  v15[1] = name;
  v14[2] = @"objectIdentifier";
  nameCopy = name;
  homeCopy = home;
  urlString = [(HMDMediaDestinationController *)self urlString];
  v15[2] = urlString;
  v14[3] = @"objectHome";
  name = [homeCopy name];
  v15[3] = name;
  v14[4] = @"objectHomeIdentifier";
  urlString2 = [homeCopy urlString];

  v15[4] = urlString2;
  v15[5] = self;
  v14[5] = @"objectReference";
  v14[6] = @"objectServiceType";
  v11 = *MEMORY[0x277D48200];
  v15[6] = *MEMORY[0x277D48350];
  v15[7] = v11;
  v14[7] = @"objectServiceSubType";
  v14[8] = @"objectGroupType";
  v15[8] = *MEMORY[0x277D48180];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (NSString)urlString
{
  identifier = [(HMDMediaDestinationController *)self identifier];
  v3 = hm_assistantIdentifier();

  return v3;
}

- (HMDMediaDestinationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)notifyDelegateDidUpdateStagedValues
{
  v11 = *MEMORY[0x277D85DE8];
  delegate = [(HMDMediaDestinationController *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerDidUpdateStagedValues:self];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed notify did update staged values due to no delegate", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)stagedValue:(id)value didExpireAvailableDestinationIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    v9 = MEMORY[0x277CBEB98];
    committedData = [(HMDMediaDestinationController *)self committedData];
    availableDestinationIdentifiers = [committedData availableDestinationIdentifiers];
    v12 = [v9 setWithArray:availableDestinationIdentifiers];
    v13 = [v8 isEqualToSet:v12];

    if ((v13 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v17;
        v26 = 2112;
        v27 = identifiersCopy;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire available destination identifiers: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
      v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [metricsEventDispatcher submitFailureEventWithEventErrorCode:9 error:v19];

      [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
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
      v24 = 138543362;
      v25 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Expired available destination identifiers was null when the property is non-null", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (void)stagedValue:(id)value didExpireDestinationIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifierCopy = identifier;
  committedData = [(HMDMediaDestinationController *)self committedData];
  destinationIdentifier = [committedData destinationIdentifier];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling did expire destination identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [metricsEventDispatcher submitFailureEventWithEventErrorCode:8 error:v16];

    messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
    [messageHandler notifyUpdatedDestinationWithIdentifier:identifierCopy];

    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];

  if (stagedDestinationIdentifier == valueCopy)
  {
    [(HMDMediaDestinationController *)self stagedValue:valueCopy didExpireDestinationIdentifier:expireValueCopy];
  }

  else
  {
    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];

    if (stagedAvailableDestinationIdentifiers == valueCopy)
    {
      [(HMDMediaDestinationController *)self stagedValue:valueCopy didExpireAvailableDestinationIdentifiers:expireValueCopy];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543874;
        v15 = v13;
        v16 = 2112;
        v17 = valueCopy;
        v18 = 2112;
        v19 = expireValueCopy;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unknown stage value: %@ did expire value: %@", &v14, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }
}

- (void)triggerStageValueDidExpireValueForStagedAvailableDestinationIdentifiers
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged available destination identifiers", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];
  [(HMDMediaDestinationController *)selfCopy stagedValue:stagedAvailableDestinationIdentifiers didExpireValue:value];
}

- (void)triggerStageValueDidExpireValueForStagedDestinationIdentifier
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Triggering stage value did expire value for staged destination identifier", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  [(HMDMediaDestinationController *)selfCopy stagedValue:stagedDestinationIdentifier didExpireValue:value];
}

- (id)logIdentifier
{
  identifier = [(HMDMediaDestinationController *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDMediaDestinationController *)self identifier];
  v21 = [v3 initWithName:@"identifier" value:identifier];
  v23[0] = v21;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDMediaDestinationController *)self isTargetDevice];
  v20 = HMFBooleanToString();
  v19 = [v4 initWithName:@"isTargetDevice" value:v20];
  v23[1] = v19;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  v8 = [v5 initWithName:@"destinationIdentifier" value:value];
  v23[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  committedData = [(HMDMediaDestinationController *)self committedData];
  [committedData supportedOptions];
  v11 = HMMediaDestinationControllerSupportOptionsAsString();
  v12 = [v9 initWithName:@"supportedOptions" value:v11];
  v23[3] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  value2 = [stagedAvailableDestinationIdentifiers value];
  v16 = [v13 initWithName:@"availableDestinationIdentifiers" value:value2];
  v23[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];

  return v17;
}

- (void)mediaDestinationControllerBackingStoreHandlerDidProcessUnexpectedModelAdd:(id)add
{
  v11 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller due to unexpected model add", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaDestinationController *)selfCopy refreshDestinationController];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateAvailableDestinationIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = identifiersCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Committing updated available destination identifiers: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers commitValue:identifiersCopy];
}

- (void)mediaDestinationControllerBackingStoreHandler:(id)handler didUpdateDestinationIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = self->_logger;
  if (os_signpost_enabled(v8))
  {
    if (identifierCopy)
    {
      v17 = 138412290;
      v18 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v17 = 138412290;
      v18 = null;
      _os_signpost_emit_with_name_impl(&dword_229538000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HMDMediaDestinationControllerCommitDestinationIdentifierEvent", "destinationIdentifier=%{signpost.description:attribute}@ ", &v17, 0xCu);
    }
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Committing updated destination identifier: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  [stagedDestinationIdentifier commitValue:identifierCopy];

  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitStagedDestinationIdentifierCommittedEventWithCommittedDestinationIdentifier:identifierCopy];

  messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
  [messageHandler notifyUpdatedDestinationWithIdentifier:identifierCopy];
}

- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdatedDestinationNotification:(id)notification destinationControllerIdentifier:(id)identifier destinationIdentifier:(id)destinationIdentifier
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  notificationCopy = notification;
  identifierCopy = identifier;
  destinationIdentifierCopy = destinationIdentifier;
  identifier = [(HMDMediaDestinationController *)self identifier];
  if ([identifierCopy hmf_isEqualToUUID:identifier])
  {
  }

  else
  {
    stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    value = [stagedDestinationIdentifier value];
    v17 = [destinationIdentifierCopy hmf_isEqualToUUID:value];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v21;
        v31 = 2112;
        v32 = destinationIdentifierCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Unsetting media destination due to another destination controller with the same destination identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:0 updateOptions:4];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke;
      v28[3] = &unk_27868A250;
      v28[4] = selfCopy;
      v23 = [v22 addFailureBlock:v28];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke_32;
      v27[3] = &unk_27868A200;
      v27[4] = selfCopy;
      v24 = [v22 addSuccessBlock:v27];
    }
  }

  identifier2 = [(HMDMediaDestinationController *)self identifier];
  v26 = [identifierCopy hmf_isEqualToUUID:identifier2];

  if (v26)
  {
    [(HMDMediaDestinationController *)self refreshDestinationController];
  }
}

void __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier to unset destination finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __195__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdatedDestinationNotification_destinationControllerIdentifier_destinationIdentifier___block_invoke_32(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier to unset destination finished", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)mediaDestinationControllerMessageHandler:(id)handler didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:(id)message destinationIdentifier:(id)identifier updateOptions:(unint64_t)options
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  identifierCopy = identifier;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling did receive media destination controller update destination request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  [metricsEventDispatcher submitReceivedUpdateDestinationRequestMessageEventWithDestinationIdentifier:identifierCopy existingDestinationIdentifier:value];

  v20 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:identifierCopy updateOptions:options];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke;
  v27[3] = &unk_27868A1D8;
  v27[4] = selfCopy;
  v21 = messageCopy;
  v28 = v21;
  v22 = [v20 addFailureBlock:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke_31;
  v25[3] = &unk_27868A228;
  v25[4] = selfCopy;
  v26 = v21;
  v23 = v21;
  v24 = [v20 addSuccessBlock:v25];
}

void __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination future finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithError:v3];
}

void __178__HMDMediaDestinationController_mediaDestinationControllerMessageHandler_didReceiveMediaDestinationControllerUpdateDestinationRequestMessage_destinationIdentifier_updateOptions___block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination future finished", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) respondWithSuccess];
}

- (id)messageHandler:(id)handler deviceForOutgoingMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
  v9 = dataSourceTargetAccessory;
  if (dataSourceTargetAccessory)
  {
    deviceForDirectMessaging = [dataSourceTargetAccessory deviceForDirectMessaging];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    deviceForDirectMessaging = 0;
  }

  return deviceForDirectMessaging;
}

- (id)messageHandler:(id)handler shouldRelayIncomingMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  dataSourceTargetAccessory = [(HMDMediaDestinationController *)self dataSourceTargetAccessory];
  v9 = dataSourceTargetAccessory;
  if (dataSourceTargetAccessory)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dataSourceTargetAccessory, "isCurrentAccessory") ^ 1}];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference due to no target accessory", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  return v10;
}

- (id)dataSourceDestinationUsingRelatedIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationController:self destinationWithParentIdentifier:identifierCopy];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v11;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = identifierCopy;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Found destination: %@ using parent identifier: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      uniqueIdentifier = [v7 uniqueIdentifier];

      identifierCopy = uniqueIdentifier;
    }

    v13 = [v6 mediaDestinationController:self rootDestinationWithDecendantIdentifier:identifierCopy];
    v14 = v7;
    if (v13)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v18;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = identifierCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found root destination: %@ using decendant identifier: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v14 = v13;
    }

    v19 = v14;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = identifierCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data source during destination with parent identifier: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

- (id)dataSourceDestinationWithIdentifier:(id)identifier
{
  v3 = [(HMDMediaDestinationController *)self dataSourceDestinationManagerWithIdentifier:identifier];
  destination = [v3 destination];

  return destination;
}

- (id)dataSourceDestinationManagerWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource mediaDestinationController:self destinationManagerWithIdentifier:identifierCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = identifierCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination manager with identifier: %@ due to no data source", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)dataSourceTargetAccessory
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource targetAccessoryForMediaDestinationController:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get target accessory due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

- (id)dataSourceAvailableDestinationIdentifiers
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource availableDestinationIdentifiersForMediaDestinationController:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get refreshed available destination identifiers due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

- (id)mediaGroupParticipantDataLocalStorage
{
  v21 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaDestinationController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource mediaGroupLocalDataStorageForMediaDestinationController:self];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get local data storage due data source: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data souce local data storage due to no data source", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v6 = 0;
  }

  return v6;
}

- (id)filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (!value)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v7 = [(HMDMediaDestinationController *)self dataSourceDestinationWithIdentifier:value];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  audioGroupIdentifier = [v8 audioGroupIdentifier];
  identifier = [(HMDMediaDestinationController *)self identifier];
  if (([audioGroupIdentifier hmf_isEqualToUUID:identifier] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [identifiersCopy containsObject:value];

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v16;
      v20 = 2112;
      v21 = value;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = identifiersCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown destination with identifier: %@ due to destination: %@ available destinations: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v9 = 0;
    goto LABEL_13;
  }

  v9 = value;
LABEL_13:

LABEL_14:

  return v9;
}

- (id)filteredAvailableDestinationIdentifiers
{
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDMediaDestinationController_filteredAvailableDestinationIdentifiers__block_invoke;
  v7[3] = &unk_27868A1B0;
  v7[4] = self;
  v5 = [value na_filter:v7];

  return v5;
}

BOOL __72__HMDMediaDestinationController_filteredAvailableDestinationIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) dataSourceDestinationWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Filtering unknown available destination with identifier: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4 != 0;
}

- (HMMediaDestinationControllerData)data
{
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  data = [backingStoreHandler data];
  v5 = [data mutableCopy];

  filteredAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self filteredAvailableDestinationIdentifiers];
  [v5 setAvailableDestinationIdentifiers:filteredAvailableDestinationIdentifiers];

  availableDestinationIdentifiers = [v5 availableDestinationIdentifiers];
  v8 = [(HMDMediaDestinationController *)self filteredDestinationIdentifierFilteredAvailableDestinationIdentifiers:availableDestinationIdentifiers];
  [v5 setDestinationIdentifier:v8];

  v9 = objc_msgSend_copy(v5);

  return v9;
}

- (HMMediaDestinationControllerData)committedData
{
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  data = [backingStoreHandler data];

  return data;
}

- (BOOL)hasSetDestinationRelatedToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (value)
  {
    if ([value hmf_isEqualToUUID:identifierCopy])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:identifierCopy];
      if (v8)
      {
        v9 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
        v10 = v9;
        if (v9)
        {
          uniqueIdentifier = [v9 uniqueIdentifier];
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          v7 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)refreshDestinationIdentifier
{
  v24 = *MEMORY[0x277D85DE8];
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  if (value)
  {
    v5 = [(HMDMediaDestinationController *)self dataSourceDestinationUsingRelatedIdentifier:value];
    if (v5)
    {
      v6 = v5;
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        identifier = [v6 identifier];
        *buf = 138543874;
        v19 = v10;
        v20 = 2112;
        v21 = value;
        v22 = 2112;
        v23 = identifier;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating related destination identifier: %@ to destination identifier: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      uniqueIdentifier = [v6 uniqueIdentifier];
      v13 = [(HMDMediaDestinationController *)selfCopy updateDestinationIdentifier:uniqueIdentifier];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke;
      v17[3] = &unk_27868A250;
      v17[4] = selfCopy;
      v14 = [v13 addFailureBlock:v17];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke_29;
      v16[3] = &unk_27868A200;
      v16[4] = selfCopy;
      v15 = [v13 addSuccessBlock:v16];
    }
  }
}

void __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier for refresh finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __61__HMDMediaDestinationController_refreshDestinationIdentifier__block_invoke_29(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update destination identifier for refresh finished", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)refreshAvailableDestinationIdentifiers
{
  v20 = *MEMORY[0x277D85DE8];
  dataSourceAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self dataSourceAvailableDestinationIdentifiers];
  if (dataSourceAvailableDestinationIdentifiers)
  {
    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    value = [stagedAvailableDestinationIdentifiers value];

    v6 = [MEMORY[0x277CBEB98] setWithArray:dataSourceAvailableDestinationIdentifiers];
    v7 = [MEMORY[0x277CBEB98] setWithArray:value];
    v8 = [v6 isEqualToSet:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(HMDMediaDestinationController *)self updateAvailableDestinationIdentifiers:dataSourceAvailableDestinationIdentifiers];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke;
      v17[3] = &unk_27868A250;
      v17[4] = self;
      v10 = [v9 addFailureBlock:v17];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke_27;
      v16[3] = &unk_27868A200;
      v16[4] = self;
      v11 = [v9 addSuccessBlock:v16];
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
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to update available destination identifiers due to no refreshed available destination identifiers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers for refresh finished with error: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void __71__HMDMediaDestinationController_refreshAvailableDestinationIdentifiers__block_invoke_27(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers for refresh finished", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)refreshDestinationController
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaDestinationController *)self isTargetDevice])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Refreshing destination controller", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDMediaDestinationController *)selfCopy refreshAvailableDestinationIdentifiers];
    [(HMDMediaDestinationController *)selfCopy refreshDestinationIdentifier];
  }
}

- (id)updateDestinationWithIdentifier:(id)identifier audioGroupIdentifier:(id)groupIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v11;
    v33 = 2112;
    v34 = identifierCopy;
    v35 = 2112;
    v36 = groupIdentifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating destination with identifier: %@ audio group identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaDestinationController *)selfCopy dataSourceDestinationManagerWithIdentifier:identifierCopy];
  v13 = v12;
  if (v12)
  {
    [v12 stageAudioGroupIdentifier:groupIdentifierCopy];
    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __86__HMDMediaDestinationController_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke;
    v29[3] = &unk_27868A1D8;
    v29[4] = selfCopy;
    v15 = v14;
    v30 = v15;
    [v13 requestToUpdateAudioGroupIdentifier:groupIdentifierCopy completion:v29];
    v16 = v30;
    v17 = v15;

    v18 = v17;
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (groupIdentifierCopy)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = identifierCopy;
      v24 = "%{public}@Failed to update destination due to no destination manager found for identifier: %@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_229538000, v25, v26, v24, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v23;
    v33 = 2112;
    v34 = identifierCopy;
    v24 = "%{public}@No destination manager found to unset the audio group for the destination with identifier: %@";
    v25 = v22;
    v26 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v19);
  v27 = MEMORY[0x277D2C900];
  v17 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9007];
  v18 = [v27 futureWithError:v17];
LABEL_12:

  return v18;
}

void __86__HMDMediaDestinationController_updateDestinationWithIdentifier_audioGroupIdentifier___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Send request to update audio group identifier completed with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Send request to update audio group identifier completed", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }
}

- (void)unsetAudioGroupForCurrentDestination
{
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];

  v4 = value;
  if (value)
  {
    v5 = [(HMDMediaDestinationController *)self updateDestinationWithIdentifier:value audioGroupIdentifier:0];
    v4 = value;
  }
}

- (id)legacyUpdateDestinationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
  [stagedDestinationIdentifier stageValue:identifierCopy withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HMDMediaDestinationController_legacyUpdateDestinationIdentifier___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [backingStoreHandler updateDestinationIdentifier:identifierCopy completion:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __67__HMDMediaDestinationController_legacyUpdateDestinationIdentifier___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update destination finished with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update destination finished", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }
}

- (id)_updateDestinationIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    futureWithNoResult = [(HMDMediaDestinationController *)selfCopy legacyUpdateDestinationIdentifier:identifierCopy];
  }

  else
  {
    mediaGroupParticipantDataLocalStorage = [(HMDMediaDestinationController *)self mediaGroupParticipantDataLocalStorage];
    v6 = mediaGroupParticipantDataLocalStorage;
    if (mediaGroupParticipantDataLocalStorage)
    {
      [mediaGroupParticipantDataLocalStorage updateDestinationControllerDestinationIdentifier:identifierCopy];
      stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
      [stagedDestinationIdentifier commitValue:identifierCopy];

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = identifierCopy;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination identifier: %@ in local storage due to no local storage found", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = MEMORY[0x277D2C900];
      v18 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9008];
      futureWithNoResult = [v17 futureWithError:v18];
    }
  }

  return futureWithNoResult;
}

- (id)updateDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options
{
  optionsCopy = options;
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMMediaDestinationControllerUpateOptionsAsString();
    v32 = 138543874;
    v33 = v10;
    v34 = 2112;
    v35 = identifierCopy;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating with destination identifier: %@ support options: %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  if (!identifierCopy || (optionsCopy & 3) != 0 || ([value containsObject:identifierCopy] & 1) != 0)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!identifierCopy || (optionsCopy & 4) != 0)
    {
      if (!identifierCopy)
      {
LABEL_19:
        v24 = [(HMDMediaDestinationController *)selfCopy _updateDestinationIdentifier:identifierCopy];
        [v14 addObject:v24];
        v25 = [MEMORY[0x277D2C900] chainFutures:v14];

        goto LABEL_23;
      }
    }

    else if (![(HMDMediaDestinationController *)selfCopy hasSetDestinationRelatedToIdentifier:identifierCopy])
    {
      [(HMDMediaDestinationController *)selfCopy unsetAudioGroupForCurrentDestination];
    }

    v15 = optionsCopy >> 1;
    v16 = [(HMDMediaDestinationController *)selfCopy dataSourceDestinationUsingRelatedIdentifier:identifierCopy];
    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v20;
        v34 = 2112;
        v35 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating using related destination: %@", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      uniqueIdentifier = [v16 uniqueIdentifier];

      v15 = 0;
      identifierCopy = uniqueIdentifier;
    }

    if ((v15 & 1) == 0 && identifierCopy && (optionsCopy & 4) == 0)
    {
      identifier = [(HMDMediaDestinationController *)selfCopy identifier];
      v23 = [(HMDMediaDestinationController *)selfCopy updateDestinationWithIdentifier:identifierCopy audioGroupIdentifier:identifier];
      [v14 addObject:v23];
    }

    goto LABEL_19;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v29;
    v34 = 2112;
    v35 = identifierCopy;
    v36 = 2112;
    v37 = value;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to update to destination identifier: %@ due to identifier not in available destination identifiers: %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = MEMORY[0x277D2C900];
  v14 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9006];
  v25 = [v30 futureWithError:v14];
LABEL_23:

  return v25;
}

- (id)legacyUpdateAvailableDestinationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers stageValue:identifiersCopy withTimeout:60.0];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HMDMediaDestinationController_legacyUpdateAvailableDestinationIdentifiers___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [backingStoreHandler updateAvailableDestinationIdentifiers:identifiersCopy completion:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __77__HMDMediaDestinationController_legacyUpdateAvailableDestinationIdentifiers___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Update available destination identifiers finished with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Update available destination identifiers finished", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) finishWithNoResult];
  }
}

- (id)updateAvailableDestinationIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = identifiersCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with available destination identifiers: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (isFeatureHomeTheaterQFAEnabledForTests && ([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Home Theater QFA is not enabled", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    futureWithNoResult = [(HMDMediaDestinationController *)v14 legacyUpdateAvailableDestinationIdentifiers:identifiersCopy];
  }

  else
  {
    mediaGroupParticipantDataLocalStorage = [(HMDMediaDestinationController *)selfCopy mediaGroupParticipantDataLocalStorage];
    v10 = mediaGroupParticipantDataLocalStorage;
    if (mediaGroupParticipantDataLocalStorage)
    {
      [mediaGroupParticipantDataLocalStorage updateDestinationControllerAvailableDestinationIdentifiers:identifiersCopy];
      stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
      [stagedAvailableDestinationIdentifiers commitValue:identifiersCopy];

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update available destination identifiers in local storage due to no local storage found", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = MEMORY[0x277D2C900];
      v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      futureWithNoResult = [v21 futureWithError:v22];
    }
  }

  return futureWithNoResult;
}

- (void)requestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageHandler = [(HMDMediaDestinationController *)self messageHandler];
  [messageHandler sendRequestToUpdateDestinationIdentifier:identifierCopy options:options completion:completionCopy];
}

- (void)stageAvailableDestinationIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = identifiersCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Staging available destination identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  value = [stagedAvailableDestinationIdentifiers value];

  v12 = [value count];
  v13 = [identifiersCopy count];
  if (v12 == v13)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__HMDMediaDestinationController_stageAvailableDestinationIdentifiers___block_invoke;
    v16[3] = &unk_27868A1B0;
    v3 = &v17;
    v17 = identifiersCopy;
    v14 = [value na_allObjectsPassTest:v16] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  stagedAvailableDestinationIdentifiers2 = [(HMDMediaDestinationController *)selfCopy stagedAvailableDestinationIdentifiers];
  [stagedAvailableDestinationIdentifiers2 stageValue:identifiersCopy withTimeout:600.0];

  if (v14)
  {
    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }

  if (v12 == v13)
  {
  }
}

- (void)stageDestinationIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging destination identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  stagedDestinationIdentifier = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  value = [stagedDestinationIdentifier value];
  v11 = [value hmf_isEqualToUUID:identifierCopy];

  stagedDestinationIdentifier2 = [(HMDMediaDestinationController *)selfCopy stagedDestinationIdentifier];
  [stagedDestinationIdentifier2 stageValue:identifierCopy withTimeout:600.0];

  metricsEventDispatcher = [(HMDMediaDestinationController *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher startStagedDestinationIdentifierCommittedEventWithStagedDestinationIdentifier:identifierCopy];

  if ((v11 & 1) == 0)
  {
    [(HMDMediaDestinationController *)selfCopy notifyDelegateDidUpdateStagedValues];
  }
}

- (void)mergeData:(id)data
{
  dataCopy = data;
  backingStoreHandler = [(HMDMediaDestinationController *)self backingStoreHandler];
  [backingStoreHandler mergeData:dataCopy];

  if (![(HMDMediaDestinationController *)self isTargetDevice])
  {
    stagedDestinationIdentifier = [(HMDMediaDestinationController *)self stagedDestinationIdentifier];
    destinationIdentifier = [dataCopy destinationIdentifier];
    [stagedDestinationIdentifier commitValue:destinationIdentifier];

    stagedAvailableDestinationIdentifiers = [(HMDMediaDestinationController *)self stagedAvailableDestinationIdentifiers];
    availableDestinationIdentifiers = [dataCopy availableDestinationIdentifiers];
    [stagedAvailableDestinationIdentifiers commitValue:availableDestinationIdentifiers];
  }
}

- (void)migrateSupportOptions
{
  v18 = *MEMORY[0x277D85DE8];
  if (isFeatureHomeTheaterQFAEnabledForTests)
  {
    if (([isFeatureHomeTheaterQFAEnabledForTests BOOLValue] & 1) == 0)
    {
      if ([(HMDMediaDestinationController *)self isTargetDevice])
      {
        featuresDataSource = [(HMDMediaDestinationController *)self featuresDataSource];
        v4 = [HMDMediaDestinationController expectedSupportOptionsWithFeaturesDataSource:featuresDataSource];

        committedData = [(HMDMediaDestinationController *)self committedData];
        supportedOptions = [committedData supportedOptions];

        if (supportedOptions != v4)
        {
          v7 = objc_autoreleasePoolPush();
          selfCopy = self;
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = HMFGetLogIdentifier();
            v11 = HMMediaDestinationControllerSupportOptionsAsString();
            *buf = 138543618;
            v15 = v10;
            v16 = 2112;
            v17 = v11;
            _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Migrating support options: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v7);
          backingStoreHandler = [(HMDMediaDestinationController *)selfCopy backingStoreHandler];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __54__HMDMediaDestinationController_migrateSupportOptions__block_invoke;
          v13[3] = &unk_27868A188;
          v13[4] = selfCopy;
          v13[5] = v4;
          [backingStoreHandler updateSupportedOptions:v4 completion:v13];
        }
      }
    }
  }
}

void __54__HMDMediaDestinationController_migrateSupportOptions__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMMediaDestinationControllerSupportOptionsAsString();
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate supported options: %@ error: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)configureWithHome:(id)home
{
  v15 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    committedData = [(HMDMediaDestinationController *)selfCopy committedData];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = committedData;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with data: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messageHandler = [(HMDMediaDestinationController *)selfCopy messageHandler];
  [messageHandler configureWithHome:homeCopy];

  [(HMDMediaDestinationController *)selfCopy refreshDestinationController];
  [(HMDMediaDestinationController *)selfCopy migrateSupportOptions];
}

- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate featuresDataSource:(id)dataSource
{
  handlerCopy = handler;
  obj = messageHandler;
  messageHandlerCopy = messageHandler;
  dispatcherCopy = dispatcher;
  dispatcherCopy2 = dispatcher;
  sourceCopy = source;
  delegateCopy = delegate;
  dataSourceCopy = dataSource;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!messageHandlerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy2)
  {
LABEL_9:
    v34 = _HMFPreconditionFailure();
    return [(HMDMediaDestinationController *)v34 initWithBackingStoreHandler:v35 messageHandler:v36 metricsEventDispatcher:v37 targetDevice:v38 dataSource:v39 delegate:v40, v41];
  }

  v45 = dataSourceCopy;
  v46 = dispatcherCopy2;
  v47 = messageHandlerCopy;
  data = [handlerCopy data];
  v22 = objc_alloc(MEMORY[0x277D0F900]);
  destinationIdentifier = [data destinationIdentifier];
  v24 = [v22 initWithValue:destinationIdentifier];

  v25 = objc_alloc(MEMORY[0x277D0F900]);
  availableDestinationIdentifiers = [data availableDestinationIdentifiers];
  v27 = [v25 initWithValue:availableDestinationIdentifiers];

  v48.receiver = self;
  v48.super_class = HMDMediaDestinationController;
  v28 = [(HMDMediaDestinationController *)&v48 init];
  if (v28)
  {
    v29 = HMFGetOSLogHandle();
    logger = v28->_logger;
    v28->_logger = v29;

    identifier = [handlerCopy identifier];
    identifier = v28->_identifier;
    v28->_identifier = identifier;

    objc_storeStrong(&v28->_backingStoreHandler, handler);
    objc_storeStrong(&v28->_messageHandler, obj);
    v28->_isTargetDevice = device;
    objc_storeStrong(&v28->_metricsEventDispatcher, dispatcherCopy);
    objc_storeWeak(&v28->_dataSource, sourceCopy);
    objc_storeWeak(&v28->_delegate, delegateCopy);
    objc_storeStrong(&v28->_stagedDestinationIdentifier, v24);
    [(HMFStagedValue *)v28->_stagedDestinationIdentifier setDelegate:v28];
    objc_storeStrong(&v28->_stagedAvailableDestinationIdentifiers, v27);
    [(HMFStagedValue *)v28->_stagedAvailableDestinationIdentifiers setDelegate:v28];
    objc_storeStrong(&v28->_featuresDataSource, dataSource);
  }

  return v28;
}

- (HMDMediaDestinationController)initWithBackingStoreHandler:(id)handler messageHandler:(id)messageHandler metricsEventDispatcher:(id)dispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  sourceCopy = source;
  dispatcherCopy = dispatcher;
  messageHandlerCopy = messageHandler;
  handlerCopy = handler;
  v19 = objc_alloc_init(HMDFeaturesDataSource);
  v20 = [(HMDMediaDestinationController *)self initWithBackingStoreHandler:handlerCopy messageHandler:messageHandlerCopy metricsEventDispatcher:dispatcherCopy targetDevice:deviceCopy dataSource:sourceCopy delegate:delegateCopy featuresDataSource:v19];

  return v20;
}

- (HMDMediaDestinationController)initWithData:(id)data backingStore:(id)store messageDispatcher:(id)dispatcher notificationCenter:(id)center logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler targetDevice:(BOOL)device dataSource:(id)self0 delegate:(id)self1
{
  delegateCopy = delegate;
  sourceCopy = source;
  schedulerCopy = scheduler;
  submitterCopy = submitter;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  storeCopy = store;
  dataCopy = data;
  v24 = [HMDMediaDestinationControllerMetricsEventDispatcher alloc];
  identifier = [dataCopy identifier];
  v26 = [(HMDMediaDestinationControllerMetricsEventDispatcher *)v24 initWithIdentifier:identifier logEventSubmitter:submitterCopy dataSource:sourceCopy];

  [schedulerCopy registerDailyTaskRunner:v26];
  v27 = [[HMDMediaDestinationControllerBackingStoreHandler alloc] initWithData:dataCopy backingStore:storeCopy metricsEventDispatcher:v26 delegate:self];

  v28 = [HMDMediaDestinationControllerMessageHandler alloc];
  identifier2 = [dataCopy identifier];

  v30 = [(HMDMediaDestinationControllerMessageHandler *)v28 initWithMessageTargetUUID:identifier2 messageDispatcher:dispatcherCopy notificationCenter:centerCopy metricsEventDispatcher:v26 targetDevice:device dataSource:self delegate:self];
  v31 = [(HMDMediaDestinationController *)self initWithBackingStoreHandler:v27 messageHandler:v30 metricsEventDispatcher:v26 targetDevice:device dataSource:sourceCopy delegate:delegateCopy];

  return v31;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t52_283473 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t52_283473, &__block_literal_global_283474);
  }

  v3 = logCategory__hmf_once_v53_283475;

  return v3;
}

void __44__HMDMediaDestinationController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v53_283475;
  logCategory__hmf_once_v53_283475 = v0;
}

@end