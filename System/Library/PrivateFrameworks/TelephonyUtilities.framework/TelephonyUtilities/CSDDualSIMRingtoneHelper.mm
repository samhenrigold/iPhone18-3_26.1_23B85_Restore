@interface CSDDualSIMRingtoneHelper
- (CSDDualSIMRingtoneHelper)init;
- (CSDDualSIMRingtoneHelper)initWithQueue:(id)queue;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)handleActiveSubscriptionsDidChange;
- (void)handleTLTonePreferencesDidChangeNotification;
- (void)refreshSubscriptionsInUse;
- (void)refreshToneForDefaultSIM;
- (void)refreshToneForSIMIdentifier:(id)identifier;
- (void)sendDualSIMRingtoneMetrics;
@end

@implementation CSDDualSIMRingtoneHelper

- (CSDDualSIMRingtoneHelper)init
{
  [(CSDDualSIMRingtoneHelper *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDDualSIMRingtoneHelper)initWithQueue:(id)queue
{
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = CSDDualSIMRingtoneHelper;
  v5 = [(CSDDualSIMRingtoneHelper *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v6;

    featureFlags = [(CSDDualSIMRingtoneHelper *)v5 featureFlags];
    dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

    if (dualSIMRingtoneEnabled)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initializing CSDDualSIMRingtoneHelper", buf, 2u);
      }

      v5->_alertType = TLAlertTypeFromString();
      if (queueCopy)
      {
        v12 = queueCopy;
        queue = v5->_queue;
        v5->_queue = v12;
      }

      else
      {
        v14 = &_dispatch_main_q;
        queue = v5->_queue;
        v5->_queue = &_dispatch_main_q;
      }

      v15 = [[CoreTelephonyClient alloc] initWithQueue:v5->_queue];
      coreTelephonyClient = v5->_coreTelephonyClient;
      v5->_coreTelephonyClient = v15;

      [(CoreTelephonyClient *)v5->_coreTelephonyClient setDelegate:v5];
      objc_initWeak(buf, v5);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006661C;
      handler[3] = &unk_100619D10;
      objc_copyWeak(&v20, buf);
      xpc_activity_register("com.apple.callservicesd.ringtone.metrics.daily", XPC_ACTIVITY_CHECK_IN, handler);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_100066714, @"_TLTonePreferencesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"_TLTonePreferencesDidChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = CSDDualSIMRingtoneHelper;
  [(CSDDualSIMRingtoneHelper *)&v4 dealloc];
}

- (void)handleTLTonePreferencesDidChangeNotification
{
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {
    v5 = +[TLToneManager sharedToneManager];
    v6 = [v5 currentToneIdentifierForAlertType:self->_alertType topic:0];

    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      cachedDefaultToneIdentifier = [(CSDDualSIMRingtoneHelper *)self cachedDefaultToneIdentifier];
      v32 = 136315650;
      v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = cachedDefaultToneIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Received defaultToneIdentifier: %@. Cached value is: %@", &v32, 0x20u);
    }

    if (v6)
    {
      cachedDefaultToneIdentifier2 = [(CSDDualSIMRingtoneHelper *)self cachedDefaultToneIdentifier];
      if (cachedDefaultToneIdentifier2 && (v12 = cachedDefaultToneIdentifier2, -[CSDDualSIMRingtoneHelper cachedDefaultToneIdentifier](self, "cachedDefaultToneIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:v6], v13, v12, v14))
      {
        labelID = sub_100004778(v15);
        if (os_log_type_enabled(labelID, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 136315138;
          v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
          _os_log_impl(&_mh_execute_header, labelID, OS_LOG_TYPE_DEFAULT, "%s: Default ringtone identifier was not changed. No update required.", &v32, 0xCu);
        }
      }

      else
      {
        [(CSDDualSIMRingtoneHelper *)self setCachedDefaultToneIdentifier:v6];
        subscriptionsInUse = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
        if (!subscriptionsInUse || (v18 = subscriptionsInUse, -[CSDDualSIMRingtoneHelper subscriptionsInUse](self, "subscriptionsInUse"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 count], v19, v18, !v20))
        {
          v21 = sub_100004778(subscriptionsInUse);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136315138;
            v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: self.subscriptionsInUse is nil or empty. Triggering a refetch.", &v32, 0xCu);
          }

          [(CSDDualSIMRingtoneHelper *)self refreshSubscriptionsInUse];
        }

        defaultSIMLineSubscriptionContext = [(CSDDualSIMRingtoneHelper *)self defaultSIMLineSubscriptionContext];
        labelID = [defaultSIMLineSubscriptionContext labelID];

        if (labelID)
        {
          v23 = [@"TLAlertTopicIncomingCall" stringByAppendingString:labelID];
          v24 = sub_100004778(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136315650;
            v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            v34 = 2112;
            v35 = labelID;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Checking for changes for default SIM with identifier: %@, topic: %@", &v32, 0x20u);
          }

          v25 = +[TLToneManager sharedToneManager];
          v26 = [v25 currentToneIdentifierForAlertType:self->_alertType topic:v23];

          v28 = sub_100004778(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136315394;
            v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            v34 = 2112;
            v35 = v26;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: Received toneIdentifierForTopic: %@", &v32, 0x16u);
          }

          v30 = sub_100004778(v29);
          v31 = v30;
          if (v26)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = 136315138;
              v33 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s: toneIdentifierForTopic: is different from defaultToneIdentifier. Overwriting toneIdentifierForTopic", &v32, 0xCu);
            }

            v31 = +[TLToneManager sharedToneManager];
            [v31 setCurrentToneIdentifier:v6 forAlertType:self->_alertType topic:v23];
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100470FA8();
          }
        }
      }
    }

    else
    {
      labelID = sub_100004778(v10);
      if (os_log_type_enabled(labelID, OS_LOG_TYPE_ERROR))
      {
        sub_100471028();
      }
    }
  }
}

- (void)refreshSubscriptionsInUse
{
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {
    [(CSDDualSIMRingtoneHelper *)self setSubscriptionsInUse:0];
    [(CSDDualSIMRingtoneHelper *)self setDefaultSIMLineSubscriptionContext:0];
    coreTelephonyClient = [(CSDDualSIMRingtoneHelper *)self coreTelephonyClient];
    v24 = 0;
    v6 = [coreTelephonyClient getSubscriptionInfoWithError:&v24];
    v7 = v24;

    if (!v7)
    {
      subscriptionsInUse = [v6 subscriptionsInUse];
      [(CSDDualSIMRingtoneHelper *)self setSubscriptionsInUse:subscriptionsInUse];
    }

    subscriptionsInUse2 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
    v10 = [subscriptionsInUse2 count];

    if (v10)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      subscriptionsInUse3 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
      v12 = [subscriptionsInUse3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(subscriptionsInUse3);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            userDefaultVoice = [v16 userDefaultVoice];
            if ([userDefaultVoice BOOLValue] && (objc_msgSend(v16, "isSimHidden") & 1) == 0)
            {
              isSimDataOnly = [v16 isSimDataOnly];

              if ((isSimDataOnly & 1) == 0)
              {
                [(CSDDualSIMRingtoneHelper *)self setDefaultSIMLineSubscriptionContext:v16];
              }
            }

            else
            {
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v19 = [subscriptionsInUse3 countByEnumeratingWithState:&v20 objects:v25 count:16];
          v13 = v19;
        }

        while (v19);
      }
    }
  }
}

- (void)refreshToneForDefaultSIM
{
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {
    defaultSIMLineSubscriptionContext = [(CSDDualSIMRingtoneHelper *)self defaultSIMLineSubscriptionContext];
    labelID = [defaultSIMLineSubscriptionContext labelID];

    if (labelID)
    {
      v7 = [@"TLAlertTopicIncomingCall" stringByAppendingString:labelID];
      v8 = sub_100004778(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = labelID;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking for changes for default SIM with identifier: %@, topic: %@", &v21, 0x16u);
      }

      v9 = +[TLToneManager sharedToneManager];
      v10 = [v9 currentToneIdentifierForAlertType:self->_alertType topic:v7];

      v11 = +[TLToneManager sharedToneManager];
      v12 = [v11 currentToneIdentifierForAlertType:self->_alertType topic:0];

      v14 = sub_100004778(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received toneIdentifierForTopic: %@, defaultToneIdentifier: %@", &v21, 0x16u);
      }

      if (v12 && v10)
      {
        v16 = [v10 isEqualToString:v12];
        v17 = v16;
        v18 = sub_100004778(v16);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is same as defaultToneIdentifier. Setting defaultToneIdentifier as toneIdentifierForTopic in case toneIdentifierForTopic was nil in defaults", &v21, 2u);
          }

          v20 = +[TLToneManager sharedToneManager];
          [v20 setCurrentToneIdentifier:v12 forAlertType:self->_alertType topic:v7];
        }

        else
        {
          if (v19)
          {
            LOWORD(v21) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is different from defaultToneIdentifier. Overwriting defaultToneIdentifier", &v21, 2u);
          }

          v20 = +[TLToneManager sharedToneManager];
          [v20 setCurrentToneIdentifier:v10 forAlertType:self->_alertType];
        }
      }

      else
      {
        v20 = sub_100004778(v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1004710A8();
        }
      }
    }
  }
}

- (void)refreshToneForSIMIdentifier:(id)identifier
{
  identifierCopy = identifier;
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {
    v7 = [@"TLAlertTopicIncomingCall" stringByAppendingString:identifierCopy];
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking for changes for non-default SIM with identifier: %@, topic: %@", &v17, 0x16u);
    }

    v9 = +[TLToneManager sharedToneManager];
    v10 = [v9 currentToneIdentifierForAlertType:self->_alertType topic:v7];

    v11 = +[TLToneManager sharedToneManager];
    v12 = [v11 currentToneIdentifierForAlertType:self->_alertType topic:0];

    if (v12 && v10)
    {
      v14 = [v10 isEqualToString:v12];
      if (!v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = sub_100004778(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is same as defaultToneIdentifier. Setting defaultToneIdentifier as toneIdentifierForTopic in case toneIdentifierForTopic was nil in defaults", &v17, 2u);
      }

      v16 = +[TLToneManager sharedToneManager];
      [v16 setCurrentToneIdentifier:v12 forAlertType:self->_alertType topic:v7];
    }

    else
    {
      v16 = sub_100004778(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1004710A8();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)handleActiveSubscriptionsDidChange
{
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {
    [(CSDDualSIMRingtoneHelper *)self refreshSubscriptionsInUse];
    subscriptionsInUse = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];

    if (!subscriptionsInUse)
    {
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received no subscriptions. Not doing anything", buf, 2u);
      }
    }

    [(CSDDualSIMRingtoneHelper *)self refreshToneForDefaultSIM];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subscriptionsInUse2 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
    v9 = [subscriptionsInUse2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(subscriptionsInUse2);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          userDefaultVoice = [v13 userDefaultVoice];
          if (([userDefaultVoice BOOLValue] & 1) == 0 && (objc_msgSend(v13, "isSimHidden") & 1) == 0)
          {
            isSimDataOnly = [v13 isSimDataOnly];

            if (isSimDataOnly)
            {
              continue;
            }

            userDefaultVoice = [v13 labelID];
            [(CSDDualSIMRingtoneHelper *)self refreshToneForSIMIdentifier:userDefaultVoice];
          }
        }

        v10 = [subscriptionsInUse2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)activeSubscriptionsDidChange
{
  featureFlags = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  dualSIMRingtoneEnabled = [featureFlags dualSIMRingtoneEnabled];

  if (dualSIMRingtoneEnabled)
  {

    [(CSDDualSIMRingtoneHelper *)self handleActiveSubscriptionsDidChange];
  }
}

- (void)sendDualSIMRingtoneMetrics
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067600;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end