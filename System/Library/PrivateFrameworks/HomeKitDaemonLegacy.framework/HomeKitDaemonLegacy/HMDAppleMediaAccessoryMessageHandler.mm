@interface HMDAppleMediaAccessoryMessageHandler
- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0;
- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)notification;
- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)notification;
@end

@implementation HMDAppleMediaAccessoryMessageHandler

- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([(HMDMessageHandler *)self hasQueuedOutgoingMessagesForDevice:v7])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v11;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remote device is reachable notification with device: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDMessageHandler *)selfCopy sendQueuedOutgoingMessagesForDevice:v7];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      object2 = [notificationCopy object];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = object2;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device from remote device is reachable notification object: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(HMDMessageHandler *)self hasQueuedOutgoingMessages])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling apple media accessory device updated notification: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMessageHandler *)selfCopy sendQueuedOutgoingMessages];
  }
}

- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0
{
  v39[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  messagesCopy = messages;
  remoteMessagesCopy = remoteMessages;
  internalMessagesCopy = internalMessages;
  notificationsCopy = notifications;
  objectCopy = object;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!dispatcherCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!centerCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!messagesCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!remoteMessagesCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!internalMessagesCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!notificationsCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
LABEL_17:
    _HMFPreconditionFailure();
  }

  v24 = objectCopy;
  if (!objectCopy)
  {
    goto LABEL_17;
  }

  v25 = [notificationsCopy mutableCopy];
  v37 = notificationsCopy;
  v26 = internalMessagesCopy;
  v27 = remoteMessagesCopy;
  v28 = messagesCopy;
  v29 = centerCopy;
  v30 = dispatcherCopy;
  v31 = dCopy;
  selfCopy = self;
  v33 = v25;
  v39[0] = @"HMDAppleMediaAccessoryDeviceUpdatedNotification";
  v39[1] = @"HMDAppleMediaAccessoryDeviceIsReachableNotification";
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  [v33 addObjectsFromArray:v34];

  v38.receiver = selfCopy;
  v38.super_class = HMDAppleMediaAccessoryMessageHandler;
  v35 = [(HMDMessageHandler *)&v38 initWithMessageTargetUUID:v31 messageDispatcher:v30 notificationCenter:v29 ownerPrivateRemoteMessages:v28 adminPrivateRemoteMessages:v27 internalMessages:v26 notifications:v33 notificationsToObject:v24];

  return v35;
}

@end