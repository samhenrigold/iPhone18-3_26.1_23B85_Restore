@interface HMDMediaDestinationControllerMessageHandler
+ (id)logCategory;
- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center metricsEventDispatcher:(id)eventDispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationControllerMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationControllerMessageHandlerDelegate)delegate;
- (id)destinationIdentifierInMessage:(id)message error:(id *)error;
- (id)logIdentifier;
- (unint64_t)upateOptionsInMessage:(id)message error:(id *)error;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)message;
- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)notification;
- (void)handleMediaDestinationUpdatedNotification:(id)notification;
- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)notification;
- (void)handleMediaSystemAddedNotification:(id)notification;
- (void)handleMediaSystemRemovedNotification:(id)notification;
- (void)handleNotificationAccessoryChangedRoom:(id)room;
- (void)notifyUpdatedDestinationWithIdentifier:(id)identifier;
- (void)sendRequestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationControllerMessageHandler

- (HMDMediaDestinationControllerMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationControllerMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDMessageHandler *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media groups aggregate consumer updated aggregate data notification", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media groups aggregate consumer updated aggregate data notification due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)notification
{
  v42 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v38 = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller updated destination notification: %@", &v38, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = userInfo;
  if (userInfo)
  {
    v11 = [userInfo hmf_UUIDForKey:@"HMDMediaDestinationControllerIdentifierNotificationKey"];
    if (!v11)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v38 = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination controller identifier from media destination controller updated destination notification user info: %@", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_26;
    }

    v12 = [v10 hmf_UUIDForKey:@"HMDMediaDestinationIdentifierNotificationKey"];
    v13 = v12;
    if (v12)
    {
      uUIDString = [v12 UUIDString];
      v15 = [uUIDString isEqualToString:*MEMORY[0x277CD0860]];

      if (!v15)
      {
        delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
        v33 = delegate;
        if (delegate)
        {
          [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationControllerUpdatedDestinationNotification:notificationCopy destinationControllerIdentifier:v11 destinationIdentifier:v13];
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            v38 = 138543362;
            v39 = v37;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination controller updated destination notification due to no delegate", &v38, 0xCu);
          }

          objc_autoreleasePoolPop(v34);
        }

        goto LABEL_25;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v38 = 138543362;
        v39 = v19;
        v20 = "%{public}@Skipping media destination controller updated destination notification due to null destination";
        v21 = v18;
        v22 = OS_LOG_TYPE_INFO;
        v23 = 12;
LABEL_17:
        _os_log_impl(&dword_2531F8000, v21, v22, v20, &v38, v23);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v38 = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = v10;
        v20 = "%{public}@Failed to get media destination identifier from media destination controller updated destination notification user info: %@";
        v21 = v18;
        v22 = OS_LOG_TYPE_ERROR;
        v23 = 22;
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v16);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v38 = 138543618;
    v39 = v27;
    v40 = 2112;
    v41 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get user info in media destination controller updated destination notification: %@", &v38, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_27:
}

- (void)handleNotificationAccessoryChangedRoom:(id)room
{
  v32 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  object = [roomCopy object];
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
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = roomCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling accessory changed room notification: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    audioDestination = [v7 audioDestination];
    audioDestinationController = [v7 audioDestinationController];
    v14 = audioDestinationController;
    if (audioDestination || ([audioDestinationController identifier], v15 = objc_claimAutoreleasedReturnValue(), -[HMDMessageHandler messageTargetUUID](selfCopy, "messageTargetUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hmf_isEqualToUUID:", v16), v16, v15, (v17 & 1) != 0))
    {
      delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
      v19 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveAccessoryChangedRoomNotification:roomCopy];
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory changed rooms notification due to no delegate", &v28, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Skipping accessory changed room notification due to no destination and no related destination controller", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }
  }
}

- (void)handleMediaSystemRemovedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system removed notification: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaSystemRemovedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system removed notification due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleMediaSystemAddedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system added notification: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaSystemAddedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system added notification due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
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
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling home accessory removed notification: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    audioDestination = [v7 audioDestination];
    if (audioDestination)
    {
      delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
      v14 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveHomeAccessoryRemovedNotification:notificationCopy destination:audioDestination];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory removed notification due to no delegate", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping home accessory removed notification due to no destination", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }
}

- (void)handleMediaDestinationUpdatedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = notificationCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination updated notification: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationUpdatedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination updated notification due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    v34 = 0;
    v10 = [(HMDMediaDestinationControllerMessageHandler *)selfCopy destinationIdentifierInMessage:messageCopy error:&v34];
    v11 = v34;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v15;
        v37 = 2112;
        v38 = messageCopy;
        v39 = 2112;
        v40 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [messageCopy respondWithError:v11];
    }

    v33 = v11;
    v16 = [(HMDMediaDestinationControllerMessageHandler *)selfCopy upateOptionsInMessage:messageCopy error:&v33];
    v17 = v33;

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v21;
        v37 = 2112;
        v38 = messageCopy;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [messageCopy respondWithError:v17];
    }

    delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
    v23 = delegate;
    if (delegate)
    {
      [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:messageCopy destinationIdentifier:v10 updateOptions:v16];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of update destination request message due to no delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [messageCopy respondWithError:v32];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = messageCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v17];
  }
}

- (unint64_t)upateOptionsInMessage:(id)message error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_numberForKey:*MEMORY[0x277CD0848]];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
      if (unsignedIntegerValue < 4)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMMediaDestinationControllerUpateOptionsAsString();
        v27 = 138543618;
        v28 = v15;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform update due to unknown update options: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        v17 = 3;
LABEL_16:
        [MEMORY[0x277CCA9B8] hmErrorWithCode:v17];
        *error = unsignedIntegerValue = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v25;
        v29 = 2112;
        v30 = messageCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from message: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      if (error)
      {
        v17 = 20;
        goto LABEL_16;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_18;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v21;
    v29 = 2112;
    v30 = messageCopy;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = unsignedIntegerValue = 0;
  }

  else
  {
    unsignedIntegerValue = 0;
  }

LABEL_19:

  return unsignedIntegerValue;
}

- (id)destinationIdentifierInMessage:(id)message error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0858]];
    v10 = v9;
    if (v9)
    {
      if (([v9 isEqualToString:*MEMORY[0x277CD0860]] & 1) == 0)
      {
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v27 = 138543874;
            v28 = v25;
            v29 = 2112;
            v30 = v10;
            v31 = 2112;
            v32 = messageCopy;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse destination identifier: %@ message: %@", &v27, 0x20u);
          }

          objc_autoreleasePoolPop(v22);
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v21;
        v29 = 2112;
        v30 = messageCopy;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from message: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *error = v12 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v17;
    v29 = 2112;
    v30 = messageCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (void)sendRequestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v13;
    v32 = 2112;
    v33 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending request to update destination identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [objc_alloc(MEMORY[0x277CD1B98]) initWithDestinationIdentifier:identifierCopy updateOptions:options];
  v15 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
  v17 = [v15 initWithTarget:messageTargetUUID];

  v18 = objc_alloc(MEMORY[0x277D0F848]);
  v19 = *MEMORY[0x277CD0840];
  payloadCopy = [v14 payloadCopy];
  v21 = [v18 initWithName:v19 destination:v17 payload:payloadCopy];

  [v21 setRemoteRestriction:9];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __107__HMDMediaDestinationControllerMessageHandler_sendRequestToUpdateDestinationIdentifier_options_completion___block_invoke;
  v27 = &unk_279732CF0;
  v28 = selfCopy;
  v29 = completionCopy;
  v22 = completionCopy;
  [v21 setResponseHandler:&v24];
  v23 = objc_msgSend_copy(v21, v24, v25, v26, v27, v28);
  [(HMDMessageHandler *)selfCopy routeMessage:v23];
}

void __107__HMDMediaDestinationControllerMessageHandler_sendRequestToUpdateDestinationIdentifier_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier request message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();
}

- (void)notifyUpdatedDestinationWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying updated destination with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
  v14[1] = @"HMDMediaDestinationIdentifierNotificationKey";
  v15[0] = messageTargetUUID;
  v10 = identifierCopy;
  if (!identifierCopy)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = [v11 initWithUUIDString:*MEMORY[0x277CD0860]];
  }

  v15[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  if (!identifierCopy)
  {
  }

  notificationCenter = [(HMDMessageHandler *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:@"HMDMediaDestinationControllerUpdatedDestinationNotification" object:selfCopy userInfo:v12];
}

- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center metricsEventDispatcher:(id)eventDispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  deviceCopy = device;
  v29[7] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  eventDispatcherCopy = eventDispatcher;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!dispatcherCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!centerCopy)
  {
    goto LABEL_12;
  }

  v21 = delegateCopy;
  if (deviceCopy)
  {
    v29[0] = *MEMORY[0x277CD0880];
    v29[1] = @"HMDHomeAccessoryRemovedNotification";
    v29[2] = @"HMDMediaSystemAddedNotification";
    v29[3] = @"HMDMediaSystemRemovedNotification";
    v29[4] = @"HMDNotificationAccessoryChangedRoom";
    v29[5] = @"HMDMediaDestinationControllerUpdatedDestinationNotification";
    v29[6] = @"HMDMediaGroupsAggregateConsumerUpdatedAggregateDataNotification";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v28 = *MEMORY[0x277CD0840];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v27.receiver = self;
  v27.super_class = HMDMediaDestinationControllerMessageHandler;
  v24 = [(HMDAppleMediaAccessoryMessageHandler *)&v27 initWithMessageTargetUUID:dCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy ownerPrivateRemoteMessages:MEMORY[0x277CBEBF8] adminPrivateRemoteMessages:v23 internalMessages:MEMORY[0x277CBEBF8] notifications:v22 notificationsToObject:MEMORY[0x277CBEC10]];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_dataSource, sourceCopy);
    objc_storeWeak(&v25->_delegate, v21);
    objc_storeStrong(&v25->_metricsEventDispatcher, eventDispatcher);
  }

  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_161246 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_161246, &__block_literal_global_161247);
  }

  v3 = logCategory__hmf_once_v37_161248;

  return v3;
}

uint64_t __58__HMDMediaDestinationControllerMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v37_161248;
  logCategory__hmf_once_v37_161248 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end