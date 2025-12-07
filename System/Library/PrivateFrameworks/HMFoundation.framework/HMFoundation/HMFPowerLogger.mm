@interface HMFPowerLogger
+ (id)sharedPowerLogger;
- (id)linkTypeDescription:(int64_t)description;
- (void)reportCharacteristicNotificationRegistrationEvent:(BOOL)event clientIdentifier:(id)identifier;
- (void)reportConnection:(id)connection linkType:(int64_t)type accessoryCategory:(id)category;
- (void)reportDisconnection:(id)disconnection linkType:(int64_t)type accessoryCategory:(id)category;
- (void)reportIncomingAdvertisementChange:(id)change accessoryCategory:(id)category;
- (void)reportIncomingCloudPush:(id)push;
- (void)reportIncomingIDSPush:(id)push fromToken:(id)token;
- (void)reportIncomingIPEvent:(id)event accessoryCategory:(id)category;
- (void)reportIncomingLoxyMessage:(id)message;
- (void)reportRemoteReachabilityRegistrationEvent:(BOOL)event clientIdentifier:(id)identifier;
- (void)reportWakeEvent:(id)event linkType:(int64_t)type accessoryCategory:(id)category;
@end

@implementation HMFPowerLogger

+ (id)sharedPowerLogger
{
  if (qword_280AFC5F8 != -1)
  {
    dispatch_once(&qword_280AFC5F8, &__block_literal_global_16);
  }

  v3 = _MergedGlobals_62;

  return v3;
}

uint64_t __35__HMFPowerLogger_sharedPowerLogger__block_invoke()
{
  v0 = objc_alloc_init(HMFPowerLogger);
  v1 = _MergedGlobals_62;
  _MergedGlobals_62 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)linkTypeDescription:(int64_t)description
{
  v3 = @"HomeKitLinkTypeUnknown";
  if (description == 2)
  {
    v3 = @"HomeKitLinkTypeBluetoothLE";
  }

  if (description == 1)
  {
    return @"HomeKitLinkTypeIP";
  }

  else
  {
    return v3;
  }
}

- (void)reportConnection:(id)connection linkType:(int64_t)type accessoryCategory:(id)category
{
  v30 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  categoryCopy = category;
  if (connectionCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(0);
      v14 = [(HMFPowerLogger *)self linkTypeDescription:type];
      *buf = 138544130;
      v23 = v13;
      v24 = 2112;
      v25 = connectionCopy;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = categoryCopy;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Reporting connection to: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CBEB38];
    connectionCopy = [(HMFPowerLogger *)self linkTypeDescription:type, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Connection", connectionCopy];
    v21[2] = connectionCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
    v18 = [v15 dictionaryWithDictionary:v17];

    if (categoryCopy)
    {
      [v18 setObject:categoryCopy forKeyedSubscript:@"accessoryCategory"];
    }

    v19 = [v18 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v19];
  }
}

- (void)reportDisconnection:(id)disconnection linkType:(int64_t)type accessoryCategory:(id)category
{
  v30 = *MEMORY[0x277D85DE8];
  disconnectionCopy = disconnection;
  categoryCopy = category;
  if (disconnectionCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(0);
      v14 = [(HMFPowerLogger *)self linkTypeDescription:type];
      *buf = 138544130;
      v23 = v13;
      v24 = 2112;
      v25 = disconnectionCopy;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = categoryCopy;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Reporting disconnection from: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CBEB38];
    disconnectionCopy = [(HMFPowerLogger *)self linkTypeDescription:type, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Disconnection", disconnectionCopy];
    v21[2] = disconnectionCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
    v18 = [v15 dictionaryWithDictionary:v17];

    if (categoryCopy)
    {
      [v18 setObject:categoryCopy forKeyedSubscript:@"accessoryCategory"];
    }

    v19 = [v18 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v19];
  }
}

- (void)reportWakeEvent:(id)event linkType:(int64_t)type accessoryCategory:(id)category
{
  v30 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  categoryCopy = category;
  v10 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle(0, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier(0);
    v14 = [(HMFPowerLogger *)self linkTypeDescription:type];
    *buf = 138544130;
    v23 = v13;
    v24 = 2112;
    v25 = eventCopy;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = categoryCopy;
    _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Reporting wake event from: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v15 = MEMORY[0x277CBEB38];
  eventCopy = [(HMFPowerLogger *)self linkTypeDescription:type, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Wake Event", eventCopy];
  v21[2] = eventCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
  v18 = [v15 dictionaryWithDictionary:v17];

  if (categoryCopy)
  {
    [v18 setObject:categoryCopy forKeyedSubscript:@"accessoryCategory"];
  }

  v19 = [v18 copy];
  [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v19];
}

- (void)reportIncomingAdvertisementChange:(id)change accessoryCategory:(id)category
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  categoryCopy = category;
  if (changeCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle(0, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = changeCopy;
      v22 = 2112;
      v23 = categoryCopy;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Reporting advertisement change from: %@ and category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277CBEB38];
    v16[0] = @"kHMFPowerLogEventType";
    v16[1] = @"kHMFPowerLogDeviceIdentiferKey";
    v17[0] = @"HomeKit BLE Advertisement";
    v17[1] = changeCopy;
    v16[2] = @"couldCauseWake";
    v17[2] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v14 = [v12 dictionaryWithDictionary:v13];

    if (categoryCopy)
    {
      [v14 setObject:categoryCopy forKeyedSubscript:@"accessoryCategory"];
    }

    v15 = [v14 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v15];
  }
}

- (void)reportIncomingIPEvent:(id)event accessoryCategory:(id)category
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  categoryCopy = category;
  if (eventCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle(0, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = eventCopy;
      v22 = 2112;
      v23 = categoryCopy;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming IP Event from: %@ and category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277CBEB38];
    v16[0] = @"kHMFPowerLogEventType";
    v16[1] = @"kHMFPowerLogDeviceIdentiferKey";
    v17[0] = @"HomeKit IP Event";
    v17[1] = eventCopy;
    v16[2] = @"couldCauseWake";
    v17[2] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v14 = [v12 dictionaryWithDictionary:v13];

    if (categoryCopy)
    {
      [v14 setObject:categoryCopy forKeyedSubscript:@"accessoryCategory"];
    }

    v15 = [v14 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v15];
  }
}

- (void)reportIncomingCloudPush:(id)push
{
  v16 = *MEMORY[0x277D85DE8];
  pushCopy = push;
  if (pushCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle(0, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = pushCopy;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming cloud push with topic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10[0] = @"kHMFPowerLogEventType";
    v10[1] = @"kHMFPowerLogCloudPushTopicKey";
    v11[0] = @"HomeKit Cloud Push";
    v11[1] = pushCopy;
    v10[2] = @"couldCauseWake";
    v11[2] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v9];
  }
}

- (void)reportIncomingIDSPush:(id)push fromToken:(id)token
{
  v25 = *MEMORY[0x277D85DE8];
  pushCopy = push;
  tokenCopy = token;
  v8 = [tokenCopy rangeOfString:@"mailto"];
  v9 = tokenCopy;
  v10 = v9;
  v11 = v9;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 substringToIndex:v8];
  }

  if (pushCopy && v11)
  {
    v12 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle(0, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = pushCopy;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming IDS push: %@ fromToken: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17[0] = @"kHMFPowerLogEventType";
    v17[1] = @"kHMFPowerLogMessageTypeKey";
    v18[0] = @"HomeKit IDS Push";
    v18[1] = pushCopy;
    v17[2] = @"kHMFPowerLogIDSDeviceTokenKey";
    v17[3] = @"couldCauseWake";
    v18[2] = v11;
    v18[3] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v16];
  }
}

- (void)reportIncomingLoxyMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (messageCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle(0, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = messageCopy;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming Loxy message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10[0] = @"kHMFPowerLogEventType";
    v10[1] = @"kHMFPowerLogMessageTypeKey";
    v11[0] = @"HomeKit Loxy Event";
    v11[1] = messageCopy;
    v10[2] = @"couldCauseWake";
    v11[2] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v9];
  }
}

- (void)reportCharacteristicNotificationRegistrationEvent:(BOOL)event clientIdentifier:(id)identifier
{
  eventCopy = event;
  v20[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBEB38];
  v19[0] = @"kHMFPowerLogEventType";
  v19[1] = @"kHMFPowerLogEnabledKey";
  v20[0] = @"HomeKit Characteristic Registration Event";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:eventCopy];
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = [v7 dictionaryWithDictionary:v9];

  if (identifierCopy)
  {
    [v10 setObject:identifierCopy forKey:@"kHMFPowerLogClientIdentifierKey"];
  }

  v11 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle(0, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier(0);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Reporting characteristic notification registration event: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitRegistration" withEventDictionary:v10];
}

- (void)reportRemoteReachabilityRegistrationEvent:(BOOL)event clientIdentifier:(id)identifier
{
  eventCopy = event;
  v20[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBEB38];
  v19[0] = @"kHMFPowerLogEventType";
  v19[1] = @"kHMFPowerLogEnabledKey";
  v20[0] = @"HomeKit Remote Reachability Registration Event";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:eventCopy];
  v20[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v10 = [v7 dictionaryWithDictionary:v9];

  if (identifierCopy)
  {
    [v10 setObject:identifierCopy forKey:@"kHMFPowerLogClientIdentifierKey"];
  }

  v11 = objc_autoreleasePoolPush();
  v13 = HMFGetOSLogHandle(0, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier(0);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Reporting remote reachability registration event: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitRegistration" withEventDictionary:v10];
}

@end