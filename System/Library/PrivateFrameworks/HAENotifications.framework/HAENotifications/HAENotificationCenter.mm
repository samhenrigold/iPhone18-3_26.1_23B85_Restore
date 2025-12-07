@interface HAENotificationCenter
+ (BOOL)connectedWiredDeviceIsHeadphone;
+ (BOOL)connectedWiredDeviceIsHeadphoneWithUUID:(id)d;
+ (void)startNotificationCenterServer;
- (HAENotificationCenter)initWithBundleIdentifier:(id)identifier;
- (HAENotificationCenterUserDelegate)delegate;
- (id)addHAENotificationEvent:(id)event error:(id *)error;
- (void)addHAENotificationEvent:(id)event completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation HAENotificationCenter

- (HAENotificationCenter)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HAENotificationCenter;
  v6 = [(HAENotificationCenter *)&v14 init];
  if (v6)
  {
    if (+[HAENDefaults HAENSupportedForCurrentDeviceClass])
    {
      objc_storeStrong(&v6->bundleID, identifier);
      v7 = +[HAENDefaults sharedInstance];
      [v7 getLiveMonitoringThreshold];
      v6->liveThresholdInDBA = v8;

      v9 = +[HAENDefaults sharedInstance];
      [v9 getLiveMonitorTimeWindowInSeconds];
      v6->liveMonitorWindowInSec = v10;

      if (+[HAENDefaults isCurrentProcessMediaserverd])
      {
        v11 = +[HAENotificationCenterServer sharedInstance];
      }

      else
      {
        v11 = [[HAENotificationCenterClient alloc] initWithBundleID:identifierCopy];
      }

      centerDelegate = v6->centerDelegate;
      v6->centerDelegate = v11;
    }

    else
    {
      centerDelegate = v6;
      v6 = 0;
    }
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v8 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = HAENotificationsLog(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = delegateCopy;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "setDelegate %@", &v6, 0xCu);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (void)addHAENotificationEvent:(id)event completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  v8 = +[HAENDefaults sharedInstance];
  isHAENFeatureEnabled = [v8 isHAENFeatureEnabled];

  if (isHAENFeatureEnabled)
  {
    [(HAENotificationCenterDelegate *)self->centerDelegate addHAENotificationEvent:eventCopy];
    eventType = [eventCopy eventType];
    if (eventType == 2003133803)
    {
      v12 = HAENotificationsLog(eventType);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v22 = 138412290;
        v23 = WeakRetained;
        _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "sending weekly event to healthkit with delegate %@", &v22, 0xCu);
      }

      v14 = +[HAENHealthKitStore sharedInstance];
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v14 saveNotificationEventToHealthKit:eventCopy withDelegate:v15];

      goto LABEL_16;
    }

    eventType2 = [eventCopy eventType];
    if (eventType2 == 1818850917)
    {
      v21 = HAENotificationsLog(eventType2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25081E000, v21, OS_LOG_TYPE_DEFAULT, "sending loud event to healthkit", &v22, 2u);
      }

      v14 = +[HAENHealthKitStore sharedInstance];
      v16 = [v14 saveNotificationEventToHealthKit:eventCopy];
LABEL_16:

      if (!completionCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v18 = *"pyt!";
    v19 = @"event type not supported";
  }

  else
  {
    v17 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_25081E000, v17, OS_LOG_TYPE_DEFAULT, "error sending HAEN event: HAEN is disabled", &v22, 2u);
    }

    v18 = *"bne!";
    v19 = @"HAEN is disabled";
  }

  v16 = NSErrorWithHAENErrorCode(v18, v19);
  if (completionCopy)
  {
LABEL_10:
    completionCopy[2](completionCopy, v16);
  }

LABEL_11:
}

- (id)addHAENotificationEvent:(id)event error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = +[HAENDefaults sharedInstance];
  isHAENFeatureEnabled = [v7 isHAENFeatureEnabled];

  if ((isHAENFeatureEnabled & 1) == 0)
  {
    v13 = HAENotificationsLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "error sending HAEN event: HAEN is disabled", &v17, 2u);
    }

    if (!error)
    {
      goto LABEL_16;
    }

    v14 = *"bne!";
    v15 = @"HAEN is disabled";
    goto LABEL_15;
  }

  [(HAENotificationCenterDelegate *)self->centerDelegate addHAENotificationEvent:eventCopy];
  if ([eventCopy eventType] != 2003133803)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v14 = *"pyt!";
    v15 = @"event type not supported";
LABEL_15:
    NSErrorWithHAENErrorCode(v14, v15);
    *error = v11 = 0;
    goto LABEL_17;
  }

  v10 = [HAENHealthKitStore createHKCategorySampleForEvent:eventCopy];
  if (!v10)
  {
    if (error)
    {
      v14 = *"skh!";
      v15 = @"failed to create hk sample";
      goto LABEL_15;
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = v10;
  v12 = HAENotificationsLog(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "created weekly event HKSample %@", &v17, 0xCu);
  }

LABEL_17:

  return v11;
}

+ (void)startNotificationCenterServer
{
  if (+[HAENDefaults isCurrentProcessMediaserverd])
  {
    v2 = +[HAENDefaults HAENSupportedForCurrentDeviceClass];
    if (v2)
    {
      v3 = HAENotificationsLog(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "<< Starting HAE Notification Center Server >>", v10, 2u);
      }

      v4 = +[HAENotificationCenterServer sharedInstance];
      v5 = +[HAENotificationCenterManager sharedInstance];
      v6 = +[HAENDefaults sharedInstance];
      v7 = +[HAENLocationGatingHelper sharedInstance];
      v8 = +[HAENVolumeControl sharedInstance];
      v9 = +[HAENStatistics sharedInstance];
    }
  }
}

+ (BOOL)connectedWiredDeviceIsHeadphone
{
  v2 = +[HAENUnknownDeviceManager sharedInstance];
  getDeviceName = [v2 getDeviceName];
  v4 = [HAENotificationCenter connectedWiredDeviceIsHeadphoneWithUUID:getDeviceName];

  return v4;
}

+ (BOOL)connectedWiredDeviceIsHeadphoneWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = +[HAENUnknownDeviceManager sharedInstance];
  unknownWiredHeadsetConnectedThroughB204 = [v4 unknownWiredHeadsetConnectedThroughB204];
  if (unknownWiredHeadsetConnectedThroughB204)
  {
    isUSBCPort = [v4 isUSBCPort];
    v7 = +[HAENDefaults sharedInstance];
    v8 = v7;
    if (isUSBCPort)
    {
      isCurrentAudioAccessoryHeadphone = [v7 isCurrentAudioAccessoryHeadphoneWithKey:dCopy];
    }

    else
    {
      isCurrentAudioAccessoryHeadphone = [v7 isCurrentAudioAccessoryHeadphone];
    }

    v10 = isCurrentAudioAccessoryHeadphone;
  }

  else
  {
    v10 = 1;
  }

  v11 = HAENotificationsLog(unknownWiredHeadsetConnectedThroughB204);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v14 = 138412546;
    v15 = dCopy;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "wired device [%@] is headphone: %@", &v14, 0x16u);
  }

  return v10;
}

- (HAENotificationCenterUserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end