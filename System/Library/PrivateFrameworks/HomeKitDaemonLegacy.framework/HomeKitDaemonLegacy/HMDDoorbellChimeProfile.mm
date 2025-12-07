@interface HMDDoorbellChimeProfile
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (HMDDoorbellChimeProfile)initWithAppleMediaAccessory:(id)accessory;
- (id)doorbellMessagePayloadWithChimeMode:(int64_t)mode chimeDate:(id)date personIdentificationText:(id)text accessoryUUID:(id)d;
- (void)handleDoorbellChimeMessage:(id)message;
- (void)registerForMessages;
- (void)sendDoorbellChimeMessageWithChimeMode:(int64_t)mode chimeDate:(id)date personIdentificationText:(id)text accessoryUUID:(id)d;
@end

@implementation HMDDoorbellChimeProfile

- (id)doorbellMessagePayloadWithChimeMode:(int64_t)mode chimeDate:(id)date personIdentificationText:(id)text accessoryUUID:(id)d
{
  v9 = MEMORY[0x277CBEB38];
  dCopy = d;
  textCopy = text;
  dateCopy = date;
  dictionary = [v9 dictionary];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277CCFCF0]];

  [dictionary setObject:dateCopy forKeyedSubscript:*MEMORY[0x277CCFCE0]];
  [dictionary setObject:textCopy forKeyedSubscript:*MEMORY[0x277CCFCF8]];

  uUIDString = [dCopy UUIDString];

  [dictionary setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCFCD8]];
  v16 = objc_msgSend_copy(dictionary);

  return v16;
}

- (void)handleDoorbellChimeMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessory;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 isCurrentAccessory])
    {
      messagePayload = [messageCopy messagePayload];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v10 = *MEMORY[0x277CCFCF0];
      v11 = [messagePayload hmf_numberForKey:*MEMORY[0x277CCFCF0]];
      [dictionary setObject:v11 forKeyedSubscript:v10];

      v12 = *MEMORY[0x277CCFCE0];
      v13 = [messagePayload hmf_dateForKey:*MEMORY[0x277CCFCE0]];
      [dictionary setObject:v13 forKeyedSubscript:v12];

      v14 = *MEMORY[0x277CCFCF8];
      v15 = [messagePayload hmf_stringForKey:*MEMORY[0x277CCFCF8]];
      [dictionary setObject:v15 forKeyedSubscript:v14];

      v16 = *MEMORY[0x277CCFCD8];
      v17 = [messagePayload hmf_UUIDForKey:*MEMORY[0x277CCFCD8]];
      [dictionary setObject:v17 forKeyedSubscript:v16];

      v18 = objc_alloc(MEMORY[0x277D0F818]);
      v19 = *MEMORY[0x277CCFCE8];
      v20 = objc_alloc(MEMORY[0x277D0F820]);
      uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v22 = [v20 initWithTarget:uniqueIdentifier];
      v23 = [v18 initWithName:v19 destination:v22 payload:dictionary];

      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = HMFGetLogIdentifier();
        uuid = [v7 uuid];
        v36 = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = uuid;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying framework to chime on current accessory - %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      msgDispatcher = [(HMDAccessoryProfile *)selfCopy msgDispatcher];
      [msgDispatcher sendMessage:v23];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v31 = objc_msgSend_copy(dictionary);
      [defaultCenter postNotificationName:@"HMDDoorbellShouldChimeNotification" object:selfCopy userInfo:v31];
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Asked to chime on non-current accessory", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
    }
  }
}

- (void)sendDoorbellChimeMessageWithChimeMode:(int64_t)mode chimeDate:(id)date personIdentificationText:(id)text accessoryUUID:(id)d
{
  v56 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  textCopy = text;
  dCopy = d;
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = accessory;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock_with_options();
  if ([(HMDDoorbellChimeProfile *)self lastChimeMode]== mode)
  {
    lastChimeDate = [(HMDDoorbellChimeProfile *)self lastChimeDate];
    if (lastChimeDate)
    {
      lastChimeDate2 = [(HMDDoorbellChimeProfile *)self lastChimeDate];
      [dateCopy timeIntervalSinceDate:lastChimeDate2];
      if (fabs(v17) < 1.0 && ([(HMDDoorbellChimeProfile *)self lastPersonIdentificationText], v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v19))
      {
        lastAccessoryUUID = [(HMDDoorbellChimeProfile *)self lastAccessoryUUID];
        v21 = [dCopy hmf_isEqualToUUID:lastAccessoryUUID];

        if (v21)
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138544386;
            v47 = v25;
            v48 = 2048;
            modeCopy = mode;
            v50 = 2112;
            v51 = dateCopy;
            v52 = 2112;
            v53 = textCopy;
            v54 = 2112;
            v55 = dCopy;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Ignoring chime (mode: %ld) that is duplicate of previous chime, date: %@, text: %@, accessoryUUID: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v22);
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

  [(HMDDoorbellChimeProfile *)self setLastChimeMode:mode];
  [(HMDDoorbellChimeProfile *)self setLastChimeDate:dateCopy];
  [(HMDDoorbellChimeProfile *)self setLastPersonIdentificationText:textCopy];
  [(HMDDoorbellChimeProfile *)self setLastAccessoryUUID:dCopy];
  os_unfair_lock_unlock(&self->_lock);
  v26 = [(HMDDoorbellChimeProfile *)self doorbellMessagePayloadWithChimeMode:mode chimeDate:dateCopy personIdentificationText:textCopy accessoryUUID:dCopy];
  if ([v14 isCurrentAccessory])
  {
    v27 = objc_alloc(MEMORY[0x277D0F818]);
    v28 = objc_alloc(MEMORY[0x277D0F820]);
    uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
    v30 = *MEMORY[0x277CCFCE8];
    v31 = [v28 initWithTarget:uniqueIdentifier];
    v32 = [v27 initWithName:v30 destination:v31 payload:v26];

    [(HMDDoorbellChimeProfile *)self handleDoorbellChimeMessage:v32];
  }

  else
  {
    device = [v14 device];
    if (device)
    {
      v34 = [HMDRemoteDeviceMessageDestination alloc];
      uniqueIdentifier2 = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v36 = [(HMDRemoteDeviceMessageDestination *)v34 initWithTarget:uniqueIdentifier2 device:device];

      v37 = [HMDRemoteMessage alloc];
      v44 = [(HMDRemoteMessage *)v37 initWithName:*MEMORY[0x277CCFCE8] destination:v36 payload:v26];
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = HMFGetLogIdentifier();
        uuid = [v14 uuid];
        *buf = 138543618;
        v47 = v40;
        v48 = 2112;
        modeCopy = uuid;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying remote device to chime - %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      msgDispatcher = [(HMDAccessoryProfile *)selfCopy2 msgDispatcher];
      [msgDispatcher sendMessage:v44];
    }
  }

LABEL_22:
}

- (void)registerForMessages
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v6 = home;
  if (accessory && home)
  {
    if ([accessory isCurrentAccessory])
    {
      v7 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];
      msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
      v10 = *MEMORY[0x277CCFCE8];
      v16[0] = v7;
      v16[1] = v8;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
      [msgDispatcher registerForMessage:v10 receiver:self policies:v11 selector:sel_handleDoorbellChimeMessage_];
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
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (HMDDoorbellChimeProfile)initWithAppleMediaAccessory:(id)accessory
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAD78];
  accessoryCopy = accessory;
  uuid = [accessoryCopy uuid];
  v13[0] = @"33D815E0-BC5F-4CF3-BB38-BC185A8C53ED";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [v4 hm_deriveUUIDFromBaseUUID:uuid withSalts:v7];

  workQueue = [accessoryCopy workQueue];
  v12.receiver = self;
  v12.super_class = HMDDoorbellChimeProfile;
  v10 = [(HMDAccessoryProfile *)&v12 initWithAccessory:accessoryCopy uniqueIdentifier:v8 services:0 workQueue:workQueue];

  return v10;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v38 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  accessory = [v12 accessory];
  home = [accessory home];
  if ([accessory isCurrentAccessory])
  {
    v28 = dispatcherCopy;
    v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    name = [messageCopy name];
    v18 = [name isEqualToString:*MEMORY[0x277CCFCE8]];

    if (v18)
    {
      name2 = [messageCopy name];
      v31[0] = v15;
      v31[1] = v16;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      v21 = HMFCreateMessageBinding();

      dispatcherCopy = v28;
    }

    else
    {
      v30.receiver = self;
      v30.super_class = &OBJC_METACLASS___HMDDoorbellChimeProfile;
      dispatcherCopy = v28;
      v21 = objc_msgSendSuper2(&v30, sel_messageBindingForDispatcher_message_receiver_, v28, messageCopy, receiverCopy);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [messageCopy name];
      v26 = v29 = dispatcherCopy;
      *buf = 138543874;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      v36 = 2112;
      v37 = receiverCopy;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Not going to handle the message [%@] as this is not the current accessory %@", buf, 0x20u);

      dispatcherCopy = v29;
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  return v21;
}

@end