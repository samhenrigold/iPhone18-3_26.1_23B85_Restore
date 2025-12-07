@interface HMDHomeRemoteEventAccessController
- (BOOL)isAppleMediaAccessoryUUID:(id)d error:(id *)error;
- (BOOL)isMediaSystemUUID:(id)d error:(id *)error;
- (BOOL)isSiriEndpointAccessoryUUID:(id)d error:(id *)error;
- (BOOL)remoteEventAllowForMediaSystemSettingEventTopic:(id)topic deviceType:(unint64_t)type userType:(unint64_t)userType;
- (BOOL)remoteEventAllowedForAccessoryEventTopic:(id)topic parsedEventTopic:(id)eventTopic deviceType:(unint64_t)type userType:(unint64_t)userType;
- (BOOL)remoteEventAllowedForAccessoryInfoWithTopicSuffix:(id)suffix deviceType:(unint64_t)type userType:(unint64_t)userType;
- (BOOL)remoteEventAllowedForHomeEventTopic:(id)topic parsedEventTopic:(id)eventTopic deviceType:(unint64_t)type userType:(unint64_t)userType;
- (BOOL)remoteEventAllowedForTopic:(id)topic deviceType:(unint64_t)type userType:(unint64_t)userType;
- (HMDHomeRemoteEventAccessController)initWithDataSource:(id)source;
- (HMDHomeRemoteEventAccessControllerDataSource)dataSource;
@end

@implementation HMDHomeRemoteEventAccessController

- (HMDHomeRemoteEventAccessControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)isMediaSystemUUID:(id)d error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource isMediaSystem:dCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine media system existence due to no data source", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isSiriEndpointAccessoryUUID:(id)d error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource isSidekickAccessory:dCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine allowed remote event due to no data source", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isAppleMediaAccessoryUUID:(id)d error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataSource = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource isAppleMediaAccessory:dCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine allowed remote event due to no data source", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)remoteEventAllowedForAccessoryInfoWithTopicSuffix:(id)suffix deviceType:(unint64_t)type userType:(unint64_t)userType
{
  v29 = *MEMORY[0x277D85DE8];
  suffixCopy = suffix;
  if (suffixCopy)
  {
    v9 = +[HMDAccessoryEventsGenerated topicMap];
    v10 = [v9 objectForKeyedSubscript:suffixCopy];
    v11 = [v10 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v12 = +[HMDAccessoryEventsGenerated topicMap];
    v13 = [v12 objectForKeyedSubscript:suffixCopy];
    v14 = [v13 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    if (v11 && v14)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v11]& userType) != 0)
      {
        v15 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v14]& type) != 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v23;
        v27 = 2112;
        v28 = suffixCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for accessory info topicSuffix: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no topicSuffix", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_14:

  return v15;
}

- (BOOL)remoteEventAllowedForHomeEventTopic:(id)topic parsedEventTopic:(id)eventTopic deviceType:(unint64_t)type userType:(unint64_t)userType
{
  v36 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  eventTopicCopy = eventTopic;
  topicSuffix = [eventTopicCopy topicSuffix];

  if (topicSuffix)
  {
    v13 = +[HMDHomeEventsGenerated topicMap];
    topicSuffix2 = [eventTopicCopy topicSuffix];
    v15 = [v13 objectForKeyedSubscript:topicSuffix2];
    v16 = [v15 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v17 = +[HMDHomeEventsGenerated topicMap];
    topicSuffix3 = [eventTopicCopy topicSuffix];
    v19 = [v17 objectForKeyedSubscript:topicSuffix3];
    v20 = [v19 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    if (v16 && v20)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v16]& userType) != 0)
      {
        v21 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v20]& type) != 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        topicSuffix4 = [eventTopicCopy topicSuffix];
        v32 = 138543618;
        v33 = v29;
        v34 = 2112;
        v35 = topicSuffix4;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for home topic suffix: %@", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }

    v21 = 0;
    goto LABEL_13;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no accessory topic suffix", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v21 = 0;
LABEL_14:

  return v21;
}

- (BOOL)remoteEventAllowedForAccessoryEventTopic:(id)topic parsedEventTopic:(id)eventTopic deviceType:(unint64_t)type userType:(unint64_t)userType
{
  v55 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  eventTopicCopy = eventTopic;
  accessoryUUID = [topicCopy accessoryUUID];
  v50 = 0;
  v13 = [(HMDHomeRemoteEventAccessController *)self isAppleMediaAccessoryUUID:accessoryUUID error:&v50];
  v14 = v50;
  v49 = v14;
  v15 = [(HMDHomeRemoteEventAccessController *)self isSiriEndpointAccessoryUUID:accessoryUUID error:&v49];
  v16 = v49;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v20;
      v53 = 2112;
      v54 = v16;
      v21 = "%{public}@Failed to get remote event allowed due to known accessory type with error: %@";
      v22 = v19;
      v23 = 22;
LABEL_9:
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v13 || v15)
  {
    asAccessorySettingTopic = [eventTopicCopy asAccessorySettingTopic];
    if (asAccessorySettingTopic)
    {
      settingsHelper = [(HMDHomeRemoteEventAccessController *)self settingsHelper];
      accessorySettingKeyPath = [asAccessorySettingTopic accessorySettingKeyPath];
      v27 = [settingsHelper remoteEventAllowedForKeyPath:accessorySettingKeyPath deviceType:type userType:userType];

LABEL_25:
      goto LABEL_11;
    }

    topicSuffix = [eventTopicCopy topicSuffix];

    if (!topicSuffix)
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no accessory topic suffix", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v27 = 0;
      goto LABEL_25;
    }

    v30 = +[HMDAccessoryEventsGenerated topicMap];
    topicSuffix2 = [eventTopicCopy topicSuffix];
    v32 = [v30 objectForKeyedSubscript:topicSuffix2];
    v48 = [v32 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v46 = +[HMDAccessoryEventsGenerated topicMap];
    topicSuffix3 = [eventTopicCopy topicSuffix];
    v34 = [v46 objectForKeyedSubscript:topicSuffix3];
    v35 = [v34 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    v36 = v35;
    if (v48 && v35)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v48]& userType) != 0)
      {
        v27 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v35]& type) != 0;
LABEL_24:

        asAccessorySettingTopic = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        [eventTopicCopy topicSuffix];
        v45 = v47 = v36;
        *buf = 138543618;
        v52 = v44;
        v53 = 2112;
        v54 = v45;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for accessory topic suffix: %@", buf, 0x16u);

        v36 = v47;
      }

      objc_autoreleasePoolPop(v41);
    }

    v27 = 0;
    goto LABEL_24;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v20;
    v21 = "%{public}@Failed to determine remote event allowed for non-supported accessory";
    v22 = v19;
    v23 = 12;
    goto LABEL_9;
  }

LABEL_10:

  objc_autoreleasePoolPop(v17);
  v27 = 0;
LABEL_11:

  return v27;
}

- (BOOL)remoteEventAllowForMediaSystemSettingEventTopic:(id)topic deviceType:(unint64_t)type userType:(unint64_t)userType
{
  v28 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  mediaSystemUUID = [topicCopy mediaSystemUUID];
  v23 = 0;
  v10 = [(HMDHomeRemoteEventAccessController *)self isMediaSystemUUID:mediaSystemUUID error:&v23];
  v11 = v23;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = v11;
      v16 = "%{public}@Failed to get remote event allowed for media system with error: %@";
      v17 = v14;
      v18 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v15;
      v16 = "%{public}@Failed to determine remote event allowed for unknown media system";
      v17 = v14;
      v18 = 12;
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v12);
    v21 = 0;
    goto LABEL_10;
  }

  settingsHelper = [(HMDHomeRemoteEventAccessController *)self settingsHelper];
  mediaSystemSettingKeyPath = [topicCopy mediaSystemSettingKeyPath];
  v21 = [settingsHelper remoteEventAllowedForKeyPath:mediaSystemSettingKeyPath deviceType:type userType:userType];

LABEL_10:
  return v21;
}

- (BOOL)remoteEventAllowedForTopic:(id)topic deviceType:(unint64_t)type userType:(unint64_t)userType
{
  v30 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  v9 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  v10 = v9;
  if (v9)
  {
    asAccessoryTopic = [v9 asAccessoryTopic];
    if (asAccessoryTopic)
    {
      v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowedForAccessoryEventTopic:asAccessoryTopic parsedEventTopic:v10 deviceType:type userType:userType];
    }

    else
    {
      asMediaSystemSettingTopic = [v10 asMediaSystemSettingTopic];
      if (asMediaSystemSettingTopic)
      {
        v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowForMediaSystemSettingEventTopic:asMediaSystemSettingTopic deviceType:type userType:userType];
      }

      else
      {
        asHomeEventTopic = [v10 asHomeEventTopic];
        if (asHomeEventTopic)
        {
          v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowedForHomeEventTopic:asHomeEventTopic parsedEventTopic:v10 deviceType:type userType:userType];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v24 = 138543874;
            v25 = v22;
            v26 = 2112;
            v27 = v10;
            v28 = 2112;
            v29 = topicCopy;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine remote event allowed due to unknown parsed topic: %@ with topic: %@", &v24, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = topicCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Failed to determine allowed remote event due to unparsable topic: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

- (HMDHomeRemoteEventAccessController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = HMDHomeRemoteEventAccessController;
  v5 = [(HMDHomeRemoteEventAccessController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v7 = objc_alloc_init(HMDAccessorySettingsEventHelper);
    settingsHelper = v6->_settingsHelper;
    v6->_settingsHelper = v7;
  }

  return v6;
}

@end