@interface HAENotificationCenterManager
+ (id)sharedInstance;
- (HAENotificationCenterManager)init;
- (id)addHAENotificationEvent:(id)event;
- (id)sendBannerNotificationWithEvent:(id)event volumeLoweringAction:(unsigned int)action;
- (id)sendLiveExposureEvent:(id)event volumeLoweringAction:(unsigned int)action;
- (id)sendWeeklyExposureEvent:(id)event volumeLoweringAction:(unsigned int)action;
- (void)donateSignalToTipsKit:(id)kit;
@end

@implementation HAENotificationCenterManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[HAENotificationCenterManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __46__HAENotificationCenterManager_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(HAENotificationCenterManager);

  return MEMORY[0x2821F96F8]();
}

- (HAENotificationCenterManager)init
{
  v12.receiver = self;
  v12.super_class = HAENotificationCenterManager;
  v2 = [(HAENotificationCenterManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NotificationCenter);
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = dispatch_queue_create([@"com.apple.coreaudio.adam.hae.notification" UTF8String], 0);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v5;

    v7 = +[HAENDefaults sharedInstance];
    [v7 getLiveMonitoringThreshold];
    v2->_liveThresholdInDBA = v8;

    v9 = dispatch_semaphore_create(0);
    sem = v2->_sem;
    v2->_sem = v9;
  }

  return v2;
}

- (id)addHAENotificationEvent:(id)event
{
  v29 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = HAENotificationsLog(eventCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [eventCopy uuid];
    *buf = 138412290;
    v28 = uuid;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "HAENotificationCenterManager starting event: [%@]", buf, 0xCu);
  }

  v8 = HAENotificationsLog(v7);
  v9 = os_signpost_id_generate(v8);

  v11 = HAENotificationsLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    uuid2 = [eventCopy uuid];
    *buf = 138412290;
    v28 = uuid2;
    _os_signpost_emit_with_name_impl(&dword_25081E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AddHAENotificationEvent", "%@", buf, 0xCu);
  }

  eventQueue = self->_eventQueue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __56__HAENotificationCenterManager_addHAENotificationEvent___block_invoke;
  v24 = &unk_27969F240;
  v15 = eventCopy;
  v25 = v15;
  selfCopy = self;
  dispatch_sync(eventQueue, &v21);
  v17 = HAENotificationsLog(v16);
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    uuid3 = [v15 uuid];
    *buf = 138412290;
    v28 = uuid3;
    _os_signpost_emit_with_name_impl(&dword_25081E000, v18, OS_SIGNPOST_INTERVAL_END, v9, "AddHAENotificationEvent", "%@", buf, 0xCu);
  }

  [(HAENotificationCenterManager *)self donateSignalToTipsKit:v15];
  return 0;
}

void __56__HAENotificationCenterManager_addHAENotificationEvent___block_invoke(uint64_t a1)
{
  v2 = +[HAENSystemSoundPlayer sharedInstance];
  v3 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HAENotificationCenterManager_addHAENotificationEvent___block_invoke_2;
  v9[3] = &unk_27969F218;
  v10 = v3;
  v4 = [v2 playSystemSoundWithEvent:v10 completion:v9];

  v5 = +[HAENVolumeControl sharedInstance];
  v6 = [v5 limitVolume:*(a1 + 32)];

  v7 = [*(a1 + 40) sendBannerNotificationWithEvent:*(a1 + 32) volumeLoweringAction:v6];
  v8 = +[HAENStatistics sharedInstance];
  [v8 processStatsForEvent:*(a1 + 32)];
}

void __56__HAENotificationCenterManager_addHAENotificationEvent___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HAENotificationsLog(a1);
  v3 = [*(a1 + 32) uuid];
  v4 = [v3 hash];

  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) uuid];
    v8 = 138412290;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_25081E000, v2, OS_SIGNPOST_INTERVAL_END, v4, "HAENSSPlayed", "%@", &v8, 0xCu);
  }

  v7 = HAENotificationsLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "finished playing system sound...", &v8, 2u);
  }
}

- (id)sendBannerNotificationWithEvent:(id)event volumeLoweringAction:(unsigned int)action
{
  v4 = *&action;
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = HAENotificationsLog(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [eventCopy uuid];
    v14 = 138412290;
    v15 = uuid;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "HAENotificationCenterManager sendBannerNotificationWithEvent [%@]", &v14, 0xCu);
  }

  if ([eventCopy eventType] == 1818850917)
  {
    v9 = [(HAENotificationCenterManager *)self sendLiveExposureEvent:eventCopy volumeLoweringAction:v4];
  }

  else
  {
    eventType = [eventCopy eventType];
    if (eventType == 2003133803)
    {
      v9 = [(HAENotificationCenterManager *)self sendWeeklyExposureEvent:eventCopy volumeLoweringAction:v4];
    }

    else
    {
      v11 = HAENotificationsLog(eventType);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HAENotificationCenterManager sendBannerNotificationWithEvent:eventCopy volumeLoweringAction:v11];
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"pyt!" userInfo:0];
    }
  }

  v12 = v9;

  return v12;
}

- (id)sendLiveExposureEvent:(id)event volumeLoweringAction:(unsigned int)action
{
  v4 = *&action;
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = HAENotificationsLog(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [eventCopy uuid];
    v20 = 138412290;
    v21 = *&uuid;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "HAENotificationCenterManager sendLiveExposureEvent [%@]", &v20, 0xCu);
  }

  level = [eventCopy level];
  if (v10 >= self->_liveThresholdInDBA + -2.22044605e-16)
  {
    notificationCenter = self->_notificationCenter;
    [eventCopy level];
    v16 = v15;
    dateInterval = [eventCopy dateInterval];
    [dateInterval duration];
    [(NotificationCenter *)notificationCenter sendNotificationWithExposureLevel:1818850917 duration:v4 eventType:v16 volumeLoweringAction:v18];

    v13 = 0;
  }

  else
  {
    v11 = HAENotificationsLog(level);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      liveThresholdInDBA = self->_liveThresholdInDBA;
      v20 = 134217984;
      v21 = liveThresholdInDBA;
      _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_INFO, "live exposure level did not reach threshold %.2f", &v20, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"lbel" userInfo:0];
  }

  return v13;
}

- (id)sendWeeklyExposureEvent:(id)event volumeLoweringAction:(unsigned int)action
{
  v4 = *&action;
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = HAENotificationsLog(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [eventCopy uuid];
    v15 = 138412290;
    v16 = uuid;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "HAENotificationCenterManager sendWeeklyExposureEvent [%@]", &v15, 0xCu);
  }

  notificationCenter = self->_notificationCenter;
  [eventCopy level];
  v11 = v10;
  dateInterval = [eventCopy dateInterval];
  [dateInterval duration];
  [(NotificationCenter *)notificationCenter sendNotificationWithExposureLevel:2003133803 duration:v4 eventType:v11 volumeLoweringAction:v13];

  return 0;
}

- (void)donateSignalToTipsKit:(id)kit
{
  eventType = [kit eventType];
  if (eventType == 1818850917)
  {
    v4 = @"com.apple.coreaudio.hae.notifications.loud";
    goto LABEL_5;
  }

  if (eventType == 2003133803)
  {
    v4 = @"com.apple.coreaudio.hae.notifications.weekly";
LABEL_5:
    v5 = BiomeLibrary();
    discoverability = [v5 Discoverability];
    signals = [discoverability Signals];

    source = [signals source];
    v8 = [objc_alloc(MEMORY[0x277CF1160]) initWithContentIdentifier:v4 context:0 osBuild:0 userInfo:0];
    [source sendEvent:v8];

    return;
  }

  v9 = HAENotificationsLog(eventType);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [HAENotificationCenterManager donateSignalToTipsKit:v9];
  }
}

- (void)sendBannerNotificationWithEvent:(void *)a1 volumeLoweringAction:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 eventType];
  _os_log_error_impl(&dword_25081E000, a2, OS_LOG_TYPE_ERROR, "Unknown event type %u", v3, 8u);
}

@end