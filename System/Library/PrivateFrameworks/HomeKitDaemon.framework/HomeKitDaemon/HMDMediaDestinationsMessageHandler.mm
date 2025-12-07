@interface HMDMediaDestinationsMessageHandler
- (HMDMediaDestinationsMessageHandler)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationsMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationsMessageHandlerDelegate)delegate;
- (void)handleMediaDestinationUpdatedNotification:(id)notification;
- (void)handleUpdatedDestination:(id)destination;
@end

@implementation HMDMediaDestinationsMessageHandler

- (HMDMediaDestinationsMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationsMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleUpdatedDestination:(id)destination
{
  v6.receiver = self;
  v6.super_class = HMDMediaDestinationsMessageHandler;
  destinationCopy = destination;
  [(HMDMediaDestinationMessageHandler *)&v6 handleUpdatedDestination:destinationCopy];
  supportedOptions = [destinationCopy supportedOptions];

  if (supportedOptions)
  {
    if ([(HMDMessageHandler *)self hasQueuedIncomingMessages])
    {
      [(HMDMessageHandler *)self routeQueuedIncomingMessages];
    }
  }
}

- (void)handleMediaDestinationUpdatedNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination updated notification", &v31, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationsMessageHandler *)selfCopy delegate];
  if (delegate)
  {
    object = [notificationCopy object];
    v11 = object;
    if (object)
    {
      v12 = object;
      objc_opt_class();
      v13 = objc_opt_isKindOfClass() & 1;
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v13)
      {
        uniqueIdentifier = [v12 uniqueIdentifier];
        messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
        v18 = [uniqueIdentifier hmf_isEqualToUUID:messageTargetUUID];

        if ((v18 & 1) == 0)
        {
          [delegate mediaDestinationsMessageHandler:selfCopy didReceiveDestinationUpdatedNotification:notificationCopy destination:v12];
        }
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = 138543618;
          v32 = v30;
          v33 = 2112;
          v34 = notificationCopy;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination from media destination updated notification: %@", &v31, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = notificationCopy;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to get notification object from media destination updated notification: %@", &v31, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [delegate mediaDestinationsMessageHandler:v24 didReceiveDestinationUpdatedNotification:notificationCopy destination:0];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle destination updated notification due to no delegate", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (HMDMediaDestinationsMessageHandler)initWithDestination:(id)destination messageDispatcher:(id)dispatcher notificationCenter:(id)center dataSource:(id)source delegate:(id)delegate
{
  v22[1] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!destinationCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!dispatcherCopy)
  {
LABEL_6:
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!centerCopy)
  {
    goto LABEL_7;
  }

  v17 = delegateCopy;
  v22[0] = *MEMORY[0x277CD0880];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v21.receiver = self;
  v21.super_class = HMDMediaDestinationsMessageHandler;
  v19 = [(HMDMediaDestinationMessageHandler *)&v21 initWithDestination:destinationCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy notifications:v18 dataSource:sourceCopy delegate:v17];

  return v19;
}

@end