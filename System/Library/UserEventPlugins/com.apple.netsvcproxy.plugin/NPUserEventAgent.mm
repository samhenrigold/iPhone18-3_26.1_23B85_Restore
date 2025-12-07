@interface NPUserEventAgent
+ (id)sharedAgent;
- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForCaptivePluginListChangedNotification;
- (void)registerForDynamicStoreChanges;
- (void)registerForUserActivityNotifications;
- (void)setConfigurationFetchInterval:(int64_t)interval;
- (void)setDirectPathProbeInterval:(int64_t)interval;
- (void)setLocationMonitorInterval:(double)interval;
- (void)setODoHAuthOutageRestoreInterval:(int64_t)interval;
- (void)setODoHRestoreInterval:(int64_t)interval;
- (void)setProxyPathProbeInterval:(int64_t)interval;
- (void)setProxyRestoreInterval:(int64_t)interval;
- (void)setResurrectionInterval:(int64_t)interval;
- (void)setSubscriptionCheckInterval:(int64_t)interval;
- (void)setTokenFetchInterval:(int64_t)interval;
- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)interval;
- (void)unregisterForUserActivityNotifications;
- (void)unwatchForPathChanges;
- (void)watchForPathChanges;
@end

@implementation NPUserEventAgent

+ (id)sharedAgent
{
  if (qword_17E50 != -1)
  {
    sub_AD7C();
  }

  v3 = qword_17E48;

  return v3;
}

- (void)setResurrectionInterval:(int64_t)interval
{
  resurrectionTimer = [(NPUserEventAgent *)self resurrectionTimer];

  if (resurrectionTimer)
  {
    resurrectionTimer2 = [(NPUserEventAgent *)self resurrectionTimer];
    [resurrectionTimer2 invalidate];

    [(NPUserEventAgent *)self setResurrectionTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setResurrectionDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setResurrectionDate:v7];

    resurrectionDate = [(NPUserEventAgent *)self resurrectionDate];
    [resurrectionDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      resurrectionDate2 = [(NPUserEventAgent *)self resurrectionDate];
      v13 = [v11 initWithFireDate:resurrectionDate2 interval:0 repeats:&stru_14A50 block:0.0];
      [(NPUserEventAgent *)self setResurrectionTimer:v13];

      resurrectionTimer3 = [(NPUserEventAgent *)self resurrectionTimer];

      if (resurrectionTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        resurrectionTimer4 = [(NPUserEventAgent *)self resurrectionTimer];
        [v18 addTimer:resurrectionTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AD90();
        }
      }
    }
  }
}

- (void)setConfigurationFetchInterval:(int64_t)interval
{
  configurationFetchTimer = [(NPUserEventAgent *)self configurationFetchTimer];

  if (configurationFetchTimer)
  {
    configurationFetchTimer2 = [(NPUserEventAgent *)self configurationFetchTimer];
    [configurationFetchTimer2 invalidate];

    [(NPUserEventAgent *)self setConfigurationFetchTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setConfigurationFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setConfigurationFetchDate:v7];

    configurationFetchDate = [(NPUserEventAgent *)self configurationFetchDate];
    [configurationFetchDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      configurationFetchDate2 = [(NPUserEventAgent *)self configurationFetchDate];
      v13 = [v11 initWithFireDate:configurationFetchDate2 interval:0 repeats:&stru_14A70 block:0.0];
      [(NPUserEventAgent *)self setConfigurationFetchTimer:v13];

      configurationFetchTimer3 = [(NPUserEventAgent *)self configurationFetchTimer];

      if (configurationFetchTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        configurationFetchTimer4 = [(NPUserEventAgent *)self configurationFetchTimer];
        [v18 addTimer:configurationFetchTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_ADC4();
        }
      }
    }
  }
}

- (void)setTokenFetchInterval:(int64_t)interval
{
  tokenFetchTimer = [(NPUserEventAgent *)self tokenFetchTimer];

  if (tokenFetchTimer)
  {
    tokenFetchTimer2 = [(NPUserEventAgent *)self tokenFetchTimer];
    [tokenFetchTimer2 invalidate];

    [(NPUserEventAgent *)self setTokenFetchTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setTokenFetchDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setTokenFetchDate:v7];

    tokenFetchDate = [(NPUserEventAgent *)self tokenFetchDate];
    [tokenFetchDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      tokenFetchDate2 = [(NPUserEventAgent *)self tokenFetchDate];
      v13 = [v11 initWithFireDate:tokenFetchDate2 interval:0 repeats:&stru_14A90 block:0.0];
      [(NPUserEventAgent *)self setTokenFetchTimer:v13];

      tokenFetchTimer3 = [(NPUserEventAgent *)self tokenFetchTimer];

      if (tokenFetchTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        tokenFetchTimer4 = [(NPUserEventAgent *)self tokenFetchTimer];
        [v18 addTimer:tokenFetchTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_ADF8();
        }
      }
    }
  }
}

- (void)setTokenIssuanceRestrictedUntilInterval:(int64_t)interval
{
  tokenIssuanceRestrictedUntilTimer = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

  if (tokenIssuanceRestrictedUntilTimer)
  {
    tokenIssuanceRestrictedUntilTimer2 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
    [tokenIssuanceRestrictedUntilTimer2 invalidate];

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilDate:v7];

    tokenIssuanceRestrictedUntilDate = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
    [tokenIssuanceRestrictedUntilDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      tokenIssuanceRestrictedUntilDate2 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilDate];
      v13 = [v11 initWithFireDate:tokenIssuanceRestrictedUntilDate2 interval:0 repeats:&stru_14AB0 block:0.0];
      [(NPUserEventAgent *)self setTokenIssuanceRestrictedUntilTimer:v13];

      tokenIssuanceRestrictedUntilTimer3 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];

      if (tokenIssuanceRestrictedUntilTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        tokenIssuanceRestrictedUntilTimer4 = [(NPUserEventAgent *)self tokenIssuanceRestrictedUntilTimer];
        [v18 addTimer:tokenIssuanceRestrictedUntilTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AE2C();
        }
      }
    }
  }
}

- (void)setSubscriptionCheckInterval:(int64_t)interval
{
  subscriptionCheckTimer = [(NPUserEventAgent *)self subscriptionCheckTimer];

  if (subscriptionCheckTimer)
  {
    subscriptionCheckTimer2 = [(NPUserEventAgent *)self subscriptionCheckTimer];
    [subscriptionCheckTimer2 invalidate];

    [(NPUserEventAgent *)self setSubscriptionCheckTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setSubscriptionCheckDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setSubscriptionCheckDate:v7];

    subscriptionCheckDate = [(NPUserEventAgent *)self subscriptionCheckDate];
    [subscriptionCheckDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      subscriptionCheckDate2 = [(NPUserEventAgent *)self subscriptionCheckDate];
      v13 = [v11 initWithFireDate:subscriptionCheckDate2 interval:0 repeats:&stru_14AD0 block:0.0];
      [(NPUserEventAgent *)self setSubscriptionCheckTimer:v13];

      subscriptionCheckTimer3 = [(NPUserEventAgent *)self subscriptionCheckTimer];

      if (subscriptionCheckTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        subscriptionCheckTimer4 = [(NPUserEventAgent *)self subscriptionCheckTimer];
        [v18 addTimer:subscriptionCheckTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AE60();
        }
      }
    }
  }
}

- (void)setProxyRestoreInterval:(int64_t)interval
{
  proxyRestoreTimer = [(NPUserEventAgent *)self proxyRestoreTimer];

  if (proxyRestoreTimer)
  {
    proxyRestoreTimer2 = [(NPUserEventAgent *)self proxyRestoreTimer];
    [proxyRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setProxyRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setProxyRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setProxyRestoreDate:v7];

    proxyRestoreDate = [(NPUserEventAgent *)self proxyRestoreDate];
    [proxyRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      proxyRestoreDate2 = [(NPUserEventAgent *)self proxyRestoreDate];
      v13 = [v11 initWithFireDate:proxyRestoreDate2 interval:0 repeats:&stru_14AF0 block:0.0];
      [(NPUserEventAgent *)self setProxyRestoreTimer:v13];

      proxyRestoreTimer3 = [(NPUserEventAgent *)self proxyRestoreTimer];

      if (proxyRestoreTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        proxyRestoreTimer4 = [(NPUserEventAgent *)self proxyRestoreTimer];
        [v18 addTimer:proxyRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AE94();
        }
      }
    }
  }
}

- (void)setODoHRestoreInterval:(int64_t)interval
{
  odohRestoreTimer = [(NPUserEventAgent *)self odohRestoreTimer];

  if (odohRestoreTimer)
  {
    odohRestoreTimer2 = [(NPUserEventAgent *)self odohRestoreTimer];
    [odohRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setOdohRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setOdohRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setOdohRestoreDate:v7];

    odohRestoreDate = [(NPUserEventAgent *)self odohRestoreDate];
    [odohRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      odohRestoreDate2 = [(NPUserEventAgent *)self odohRestoreDate];
      v13 = [v11 initWithFireDate:odohRestoreDate2 interval:0 repeats:&stru_14B10 block:0.0];
      [(NPUserEventAgent *)self setOdohRestoreTimer:v13];

      odohRestoreTimer3 = [(NPUserEventAgent *)self odohRestoreTimer];

      if (odohRestoreTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        odohRestoreTimer4 = [(NPUserEventAgent *)self odohRestoreTimer];
        [v18 addTimer:odohRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AEC8();
        }
      }
    }
  }
}

- (void)setODoHAuthOutageRestoreInterval:(int64_t)interval
{
  odohAuthOutageRestoreTimer = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

  if (odohAuthOutageRestoreTimer)
  {
    odohAuthOutageRestoreTimer2 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
    [odohAuthOutageRestoreTimer2 invalidate];

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setOdohAuthOutageRestoreDate:v7];

    odohAuthOutageRestoreDate = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
    [odohAuthOutageRestoreDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      odohAuthOutageRestoreDate2 = [(NPUserEventAgent *)self odohAuthOutageRestoreDate];
      v13 = [v11 initWithFireDate:odohAuthOutageRestoreDate2 interval:0 repeats:&stru_14B30 block:0.0];
      [(NPUserEventAgent *)self setOdohAuthOutageRestoreTimer:v13];

      odohAuthOutageRestoreTimer3 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];

      if (odohAuthOutageRestoreTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        odohAuthOutageRestoreTimer4 = [(NPUserEventAgent *)self odohAuthOutageRestoreTimer];
        [v18 addTimer:odohAuthOutageRestoreTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AEFC();
        }
      }
    }
  }
}

- (void)setProxyPathProbeInterval:(int64_t)interval
{
  proxyPathProbeTimer = [(NPUserEventAgent *)self proxyPathProbeTimer];

  if (proxyPathProbeTimer)
  {
    proxyPathProbeTimer2 = [(NPUserEventAgent *)self proxyPathProbeTimer];
    [proxyPathProbeTimer2 invalidate];

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setProxyPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setProxyPathProbeDate:v7];

    proxyPathProbeDate = [(NPUserEventAgent *)self proxyPathProbeDate];
    [proxyPathProbeDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      proxyPathProbeDate2 = [(NPUserEventAgent *)self proxyPathProbeDate];
      v13 = [v11 initWithFireDate:proxyPathProbeDate2 interval:0 repeats:&stru_14B50 block:0.0];
      [(NPUserEventAgent *)self setProxyPathProbeTimer:v13];

      proxyPathProbeTimer3 = [(NPUserEventAgent *)self proxyPathProbeTimer];

      if (proxyPathProbeTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        proxyPathProbeTimer4 = [(NPUserEventAgent *)self proxyPathProbeTimer];
        [v18 addTimer:proxyPathProbeTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AF30();
        }
      }
    }
  }
}

- (void)setDirectPathProbeInterval:(int64_t)interval
{
  directPathProbeTimer = [(NPUserEventAgent *)self directPathProbeTimer];

  if (directPathProbeTimer)
  {
    directPathProbeTimer2 = [(NPUserEventAgent *)self directPathProbeTimer];
    [directPathProbeTimer2 invalidate];

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  if (interval < 1)
  {

    [(NPUserEventAgent *)self setDirectPathProbeTimer:0];
  }

  else
  {
    v7 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:interval];
    [(NPUserEventAgent *)self setDirectPathProbeDate:v7];

    directPathProbeDate = [(NPUserEventAgent *)self directPathProbeDate];
    [directPathProbeDate timeIntervalSinceNow];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = [NSTimer alloc];
      directPathProbeDate2 = [(NPUserEventAgent *)self directPathProbeDate];
      v13 = [v11 initWithFireDate:directPathProbeDate2 interval:0 repeats:&stru_14B70 block:0.0];
      [(NPUserEventAgent *)self setDirectPathProbeTimer:v13];

      directPathProbeTimer3 = [(NPUserEventAgent *)self directPathProbeTimer];

      if (directPathProbeTimer3)
      {
        v18 = +[NSRunLoop mainRunLoop];
        directPathProbeTimer4 = [(NPUserEventAgent *)self directPathProbeTimer];
        [v18 addTimer:directPathProbeTimer4 forMode:NSDefaultRunLoopMode];
      }

      else
      {
        v17 = nplog_obj(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_AF64();
        }
      }
    }
  }
}

- (void)setLocationMonitorInterval:(double)interval
{
  locationMonitorTimer = [(NPUserEventAgent *)self locationMonitorTimer];

  if (locationMonitorTimer)
  {
    locationMonitorTimer2 = [(NPUserEventAgent *)self locationMonitorTimer];
    [locationMonitorTimer2 invalidate];

    [(NPUserEventAgent *)self setLocationMonitorTimer:0];
  }

  if (interval >= 300.0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_8C0C;
    v12[3] = &unk_14B98;
    v12[4] = self;
    v7 = [NSTimer timerWithTimeInterval:0 repeats:v12 block:interval];
    [(NPUserEventAgent *)self setLocationMonitorTimer:v7];

    locationMonitorTimer3 = [(NPUserEventAgent *)self locationMonitorTimer];

    if (locationMonitorTimer3)
    {
      v10 = +[NSRunLoop mainRunLoop];
      locationMonitorTimer4 = [(NPUserEventAgent *)self locationMonitorTimer];
      [v10 addTimer:locationMonitorTimer4 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      v10 = nplog_obj(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_AF98();
      }
    }
  }
}

- (void)watchForPathChanges
{
  if (![(NPUserEventAgent *)self isObservingPath])
  {
    v3 = +[NWPathEvaluator sharedDefaultEvaluator];
    [v3 addObserver:self forKeyPath:@"path" options:0 context:0];

    [(NPUserEventAgent *)self setIsObservingPath:1];
  }
}

- (void)unwatchForPathChanges
{
  if ([(NPUserEventAgent *)self isObservingPath])
  {
    v3 = +[NWPathEvaluator sharedDefaultEvaluator];
    [v3 removeObserver:self forKeyPath:@"path"];

    [(NPUserEventAgent *)self setIsObservingPath:0];
  }
}

- (void)registerForCaptivePluginListChangedNotification
{
  if (qword_17E58 != -1)
  {
    sub_B00C();
  }
}

- (void)registerForUserActivityNotifications
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8F88;
  block[3] = &unk_14940;
  block[4] = self;
  if (qword_17E60 != -1)
  {
    dispatch_once(&qword_17E60, block);
  }
}

- (void)unregisterForUserActivityNotifications
{
  if ([(NPUserEventAgent *)self userActivityNotificationHandle])
  {
    userActivityNotificationHandle = [(NPUserEventAgent *)self userActivityNotificationHandle];

    _IOPMUnregisterNotification(userActivityNotificationHandle);
  }
}

- (void)registerForDynamicStoreChanges
{
  if (![(NPUserEventAgent *)self dynamicStore])
  {
    [(NPUserEventAgent *)self setDynamicStore:SCDynamicStoreCreate(kCFAllocatorDefault, @"networkserviceproxy event agent", sub_929C, 0)];
    if ([(NPUserEventAgent *)self dynamicStore])
    {
      dynamicStore = [(NPUserEventAgent *)self dynamicStore];
      v4 = dispatch_get_global_queue(0, 0);
      LODWORD(dynamicStore) = SCDynamicStoreSetDispatchQueue(dynamicStore, v4);

      if (dynamicStore)
      {
        v6 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetPvD);
        v7 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
        v10[0] = v7;
        v10[1] = v6;
        v8 = SCDynamicStoreSetNotificationKeys([(NPUserEventAgent *)self dynamicStore], 0, [NSArray arrayWithObjects:v10 count:2]);
        if (!v8)
        {
          v9 = nplog_obj(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_B088();
          }
        }
      }

      else
      {
        v6 = nplog_obj(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_B108();
        }
      }
    }

    else
    {
      v6 = nplog_obj(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_B188();
      }
    }
  }
}

- (void)handleProviderAction:(int64_t)action token:(unint64_t)token event:(id)event
{
  eventCopy = event;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (action == 1 && eventCopy)
  {
    [(NPUserEventAgent *)selfCopy setEventToken:token];
    int64 = xpc_dictionary_get_int64(eventCopy, "PID");
    v11 = int64;
    if (int64)
    {
      v12 = nplog_obj(int64);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v43) = 67109120;
        DWORD1(v43) = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Got pid %d", &v43, 8u);
      }

      v13 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v13 launchOwner];
    }

    if (xpc_dictionary_get_int64(eventCopy, "ResurrectionDate"))
    {
      [(NPUserEventAgent *)selfCopy setResurrectionInterval:xpc_dictionary_get_int64(eventCopy, "ResurrectionDate")];
    }

    if (xpc_dictionary_get_int64(eventCopy, "ConfigFetchDate"))
    {
      [(NPUserEventAgent *)selfCopy setConfigurationFetchInterval:xpc_dictionary_get_int64(eventCopy, "ConfigFetchDate")];
    }

    if (!xpc_dictionary_get_int64(eventCopy, "ConfigFetchOnNetworkChange"))
    {
LABEL_19:
      if (xpc_dictionary_get_double(eventCopy, "LocationMonitorTimeInterval") != 0.0)
      {
        [(NPUserEventAgent *)selfCopy setLocationMonitorInterval:xpc_dictionary_get_double(eventCopy, "LocationMonitorTimeInterval")];
      }

      if (xpc_dictionary_get_int64(eventCopy, "TokenFetchDate"))
      {
        [(NPUserEventAgent *)selfCopy setTokenFetchInterval:xpc_dictionary_get_int64(eventCopy, "TokenFetchDate")];
      }

      if (!xpc_dictionary_get_int64(eventCopy, "TokenFetchOnNetworkChange"))
      {
LABEL_31:
        if (xpc_dictionary_get_int64(eventCopy, "TokenIssuanceRestrictedUntilDate"))
        {
          [(NPUserEventAgent *)selfCopy setTokenIssuanceRestrictedUntilInterval:xpc_dictionary_get_int64(eventCopy, "TokenIssuanceRestrictedUntilDate")];
        }

        if (!xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckOnNetworkChange"))
        {
LABEL_41:
          if (xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckDate"))
          {
            [(NPUserEventAgent *)selfCopy setSubscriptionCheckInterval:xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ProxyRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setProxyRestoreInterval:xpc_dictionary_get_int64(eventCopy, "ProxyRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ODoHRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setODoHRestoreInterval:xpc_dictionary_get_int64(eventCopy, "ODoHRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "odohAuthRestoreDate"))
          {
            [(NPUserEventAgent *)selfCopy setODoHAuthOutageRestoreInterval:xpc_dictionary_get_int64(eventCopy, "odohAuthRestoreDate")];
          }

          if (xpc_dictionary_get_int64(eventCopy, "ProxyPathProber"))
          {
            [(NPUserEventAgent *)selfCopy setProxyPathProbeInterval:xpc_dictionary_get_int64(eventCopy, "ProxyPathProber")];
          }

          if (!xpc_dictionary_get_int64(eventCopy, "ProxyPathProbeOnNetworkChange"))
          {
LABEL_59:
            if (xpc_dictionary_get_int64(eventCopy, "DirectPathProber"))
            {
              [(NPUserEventAgent *)selfCopy setDirectPathProbeInterval:xpc_dictionary_get_int64(eventCopy, "DirectPathProber")];
            }

            if (!xpc_dictionary_get_int64(eventCopy, "DirectPathProbeOnNetworkChange"))
            {
LABEL_69:
              if (!xpc_dictionary_get_int64(eventCopy, "CaptiveOutage"))
              {
                goto LABEL_77;
              }

              v34 = xpc_dictionary_get_int64(eventCopy, "CaptiveOutage");
              v35 = v34;
              if (v34 == 1)
              {
                v36 = nplog_obj(1);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v43) = 136315138;
                  *(&v43 + 4) = "CaptiveOutage";
                  v37 = "[%s] changed to true";
LABEL_75:
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, v37, &v43, 0xCu);
                }
              }

              else
              {
                v36 = nplog_obj(v34);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v43) = 136315138;
                  *(&v43 + 4) = "CaptiveOutage";
                  v37 = "[%s] changed to false";
                  goto LABEL_75;
                }
              }

              [(NPUserEventAgent *)selfCopy setCaptiveOutage:v35 == 1];
LABEL_77:
              if (!xpc_dictionary_get_int64(eventCopy, "CaptiveOutageWaitingForUserActivity"))
              {
LABEL_85:
                [(NPUserEventAgent *)selfCopy registerForCaptivePluginListChangedNotification];
                [(NPUserEventAgent *)selfCopy registerForDynamicStoreChanges];
                [(NPUserEventAgent *)selfCopy registerForUserActivityNotifications];
                v42 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
                [v42 setReceivedEventToken:1];

                goto LABEL_86;
              }

              v38 = xpc_dictionary_get_int64(eventCopy, "CaptiveOutageWaitingForUserActivity");
              v39 = v38;
              if (v38 == 1)
              {
                v40 = nplog_obj(1);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v43) = 136315138;
                  *(&v43 + 4) = "CaptiveOutageWaitingForUserActivity";
                  v41 = "[%s] changed to true";
LABEL_83:
                  _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, v41, &v43, 0xCu);
                }
              }

              else
              {
                v40 = nplog_obj(v38);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v43) = 136315138;
                  *(&v43 + 4) = "CaptiveOutageWaitingForUserActivity";
                  v41 = "[%s] changed to false";
                  goto LABEL_83;
                }
              }

              [(NPUserEventAgent *)selfCopy setCaptiveOutageWaitingForUserActivity:v39 == 1];
              goto LABEL_85;
            }

            v30 = xpc_dictionary_get_int64(eventCopy, "DirectPathProbeOnNetworkChange");
            v31 = v30;
            if (v30 == 1)
            {
              v32 = nplog_obj(1);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v43) = 0;
                v33 = "Got direct path probe on network change";
LABEL_67:
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, v33, &v43, 2u);
              }
            }

            else
            {
              v32 = nplog_obj(v30);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v43) = 0;
                v33 = "Reset direct path on network change";
                goto LABEL_67;
              }
            }

            [(NPUserEventAgent *)selfCopy setDirectPathProbeOnNetworkChange:v31 == 1];
            goto LABEL_69;
          }

          v26 = xpc_dictionary_get_int64(eventCopy, "ProxyPathProbeOnNetworkChange");
          v27 = v26;
          if (v26 == 1)
          {
            v28 = nplog_obj(1);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v43) = 0;
              v29 = "Got proxy path probe on network change";
LABEL_57:
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, v29, &v43, 2u);
            }
          }

          else
          {
            v28 = nplog_obj(v26);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v43) = 0;
              v29 = "Reset proxy path probe on network change";
              goto LABEL_57;
            }
          }

          [(NPUserEventAgent *)selfCopy setProxyPathProbeOnNetworkChange:v27 == 1];
          goto LABEL_59;
        }

        v22 = xpc_dictionary_get_int64(eventCopy, "SubscriptionCheckOnNetworkChange");
        v23 = v22;
        if (v22 == 1)
        {
          v24 = nplog_obj(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v43) = 0;
            v25 = "Got subscription check on network change";
LABEL_39:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, &v43, 2u);
          }
        }

        else
        {
          v24 = nplog_obj(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v43) = 0;
            v25 = "Reset token fetch on network change";
            goto LABEL_39;
          }
        }

        [(NPUserEventAgent *)selfCopy setSubscriptionCheckOnNetworkChange:v23 == 1];
        goto LABEL_41;
      }

      v18 = xpc_dictionary_get_int64(eventCopy, "TokenFetchOnNetworkChange");
      v19 = v18;
      if (v18 == 1)
      {
        v20 = nplog_obj(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v43) = 0;
          v21 = "Got token fetch on network change";
LABEL_29:
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, &v43, 2u);
        }
      }

      else
      {
        v20 = nplog_obj(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v43) = 0;
          v21 = "Reset token fetch on network change";
          goto LABEL_29;
        }
      }

      [(NPUserEventAgent *)selfCopy setTokenFetchOnNetworkChange:v19 == 1];
      goto LABEL_31;
    }

    v14 = xpc_dictionary_get_int64(eventCopy, "ConfigFetchOnNetworkChange");
    v15 = v14;
    if (v14 == 1)
    {
      v16 = nplog_obj(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        v17 = "Got config fetch on network change";
LABEL_17:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v17, &v43, 2u);
      }
    }

    else
    {
      v16 = nplog_obj(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v43) = 0;
        v17 = "Reset config fetch on network change";
        goto LABEL_17;
      }
    }

    [(NPUserEventAgent *)selfCopy setConfigFetchOnNetworkChange:v15 == 1];
    goto LABEL_19;
  }

LABEL_86:
  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v62 = objectCopy;
  if ([pathCopy isEqualToString:@"path"])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = +[NWPathEvaluator sharedDefaultEvaluator];
    path = [v14 path];
    status = [path status];

    if (status != &dword_0 + 1)
    {
      objc_msgSend_setWifiNetworkSignature_(selfCopy);
LABEL_47:
      objc_sync_exit(selfCopy);

      goto LABEL_48;
    }

    configFetchOnNetworkChange = [(NPUserEventAgent *)selfCopy configFetchOnNetworkChange];
    if (configFetchOnNetworkChange)
    {
      v18 = nplog_obj(configFetchOnNetworkChange);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Triggering configuration fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setConfigFetchOnNetworkChange:0];
      v19 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v19 launchOwner];
    }

    tokenFetchOnNetworkChange = [(NPUserEventAgent *)selfCopy tokenFetchOnNetworkChange];
    if (tokenFetchOnNetworkChange)
    {
      v21 = nplog_obj(tokenFetchOnNetworkChange);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Triggering token fetch on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setTokenFetchOnNetworkChange:0];
      v22 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v22 launchOwner];
    }

    subscriptionCheckOnNetworkChange = [(NPUserEventAgent *)selfCopy subscriptionCheckOnNetworkChange];
    if (subscriptionCheckOnNetworkChange)
    {
      v24 = nplog_obj(subscriptionCheckOnNetworkChange);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Triggering subscription check on network change", buf, 2u);
      }

      [(NPUserEventAgent *)selfCopy setSubscriptionCheckOnNetworkChange:0];
      v25 = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [v25 launchOwner];
    }

    v26 = +[NWPathEvaluator sharedDefaultEvaluator];
    path2 = [v26 path];
    interface = [path2 interface];
    v29 = [interface type] == &dword_0 + 1;

    if (v29)
    {
      v30 = +[NWPathEvaluator sharedDefaultEvaluator];
      path3 = [v30 path];
      v32 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:path3];

      v33 = [v32 objectForKeyedSubscript:@"Signature"];
      wifiNetworkSignature = [(NPUserEventAgent *)selfCopy wifiNetworkSignature];
      v35 = v33;
      v36 = v35;
      if (!(v35 | wifiNetworkSignature) || v35 && wifiNetworkSignature && [wifiNetworkSignature isEqual:v35])
      {
      }

      else
      {

        v38 = nplog_obj(v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "WiFi signature changed", buf, 2u);
        }

        objc_msgSend_setWifiNetworkSignature_(selfCopy);
        wifiNetworkSignature = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
        [wifiNetworkSignature launchOwner];
      }
    }

    else
    {
      objc_msgSend_setWifiNetworkSignature_(selfCopy);
    }

    v39 = +[NWPathEvaluator sharedDefaultEvaluator];
    path4 = [v39 path];
    interface2 = [path4 interface];
    if ([interface2 type] == &dword_0 + 2)
    {
    }

    else
    {
      v42 = +[NWPathEvaluator sharedDefaultEvaluator];
      path5 = [v42 path];
      interface3 = [path5 interface];
      v45 = [interface3 type] == &dword_0 + 3;

      if (!v45)
      {
        [(NPUserEventAgent *)selfCopy setNonwifiNetworkSignature:0];
        goto LABEL_47;
      }
    }

    v46 = +[NWPathEvaluator sharedDefaultEvaluator];
    path6 = [v46 path];
    v48 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:path6];

    v49 = [v48 objectForKeyedSubscript:@"Signature"];
    nonwifiNetworkSignature = [(NPUserEventAgent *)selfCopy nonwifiNetworkSignature];
    v51 = v49;
    v52 = v51;
    if (!(v51 | nonwifiNetworkSignature) || v51 && nonwifiNetworkSignature && [nonwifiNetworkSignature isEqual:v51])
    {
    }

    else
    {

      v53 = +[NWPathEvaluator sharedDefaultEvaluator];
      path7 = [v53 path];
      interface4 = [path7 interface];
      type = [interface4 type];

      v58 = nplog_obj(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = "Ethernet";
        if (type == &dword_0 + 2)
        {
          v59 = "Cellular";
        }

        *buf = 136315138;
        v65 = v59;
        _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%s signature changed", buf, 0xCu);
      }

      [(NPUserEventAgent *)selfCopy setNonwifiNetworkSignature:v52];
      captiveOutage = [(NPUserEventAgent *)selfCopy captiveOutage];
      if (!captiveOutage)
      {
        goto LABEL_45;
      }

      v61 = nplog_obj(captiveOutage);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "captive outage is true, launching NSP", buf, 2u);
      }

      nonwifiNetworkSignature = +[NSPUserEventAgentFileHandleMaintainer sharedEventAgentMaintainer];
      [nonwifiNetworkSignature launchOwner];
    }

LABEL_45:
    goto LABEL_47;
  }

  v63.receiver = self;
  v63.super_class = NPUserEventAgent;
  [(NPUserEventAgent *)&v63 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_48:
}

@end