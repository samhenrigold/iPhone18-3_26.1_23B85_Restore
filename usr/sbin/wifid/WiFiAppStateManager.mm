@interface WiFiAppStateManager
+ (id)sharedWiFiAppStateManager;
- (BOOL)_isMonitoringChangesForBundleID:(__CFString *)d;
- (WiFiAppStateManager)init;
- (id)_getStringOfAppState:(unsigned int)state;
- (int)_getAppCapabilitiesForBundleID:(int)d;
- (void)_appStateChanged:(unsigned int)changed bundleID:(__CFString *)d capabilities:(int)capabilities;
- (void)_applicationStateMonitorHandler:(__CFDictionary *)handler;
- (void)_registerApplication:(__CFString *)application capabilities:(int)capabilities;
- (void)_setApplicationState:(__CFString *)state active:(BOOL)active underLock:(BOOL)lock capabilities:(int)capabilities;
- (void)_unRegisterApplication:(__CFString *)application;
- (void)dealloc;
- (void)externalAppUnregistered:(__CFDictionary *)unregistered;
- (void)scheduleWithQueue:(id)queue;
- (void)startMonitoringBundleId:(__CFString *)id;
- (void)stopMonitoringBundleId:(__CFString *)id;
- (void)unscheduleFromQueue:(id)queue;
@end

@implementation WiFiAppStateManager

+ (id)sharedWiFiAppStateManager
{
  if (qword_100298AC8 != -1)
  {
    sub_1001AA3AC();
  }

  return qword_100298AC0;
}

- (void)scheduleWithQueue:(id)queue
{
  self->_queue = queue;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(DistributedCenter, self, sub_100106AE4, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)unscheduleFromQueue:(id)queue
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
  self->_queue = 0;
}

- (WiFiAppStateManager)init
{
  v13.receiver = self;
  v13.super_class = WiFiAppStateManager;
  v2 = [(WiFiAppStateManager *)&v13 init];
  if (!v2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed in super-init", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2->_applications = Mutable;
  if (!Mutable)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _applications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v4 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_activeApplications = v4;
  if (!v4)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _activeApplications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v5 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_backgroundApplications = v5;
  if (!v5)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _backgroundApplications", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v6 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_appsInForeground = v6;
  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _appsInForeground", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  if (!objc_opt_class())
  {
LABEL_26:

    return 0;
  }

  v7 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:0 states:9];
  v2->_applicationStateMonitor = v7;
  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _applicationStateMonitor", "-[WiFiAppStateManager init]"}];
    }

    goto LABEL_25;
  }

  v8 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v2->_bundleIdsToMonitor = v8;
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null _bundleIdsToMonitor", "-[WiFiAppStateManager init]"}];
    }

LABEL_25:
    objc_autoreleasePoolPop(v11);
    goto LABEL_26;
  }

  applicationStateMonitor = v2->_applicationStateMonitor;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002A88;
  v12[3] = &unk_100262830;
  v12[4] = v2;
  [(BKSApplicationStateMonitor *)applicationStateMonitor setHandler:v12];
  return v2;
}

- (void)externalAppUnregistered:(__CFDictionary *)unregistered
{
  if (self->_unregisteredCallbackContext && unregistered && self->_unregisteredCallbackFunction)
  {
    if (self->_queue)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v6[3] = CFRetain(unregistered);
      queue = self->_queue;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100106ED8;
      v5[3] = &unk_100261468;
      v5[4] = self;
      v5[5] = v6;
      dispatch_async(queue, v5);
      _Block_object_dispose(v6, 8);
    }
  }
}

- (void)dealloc
{
  applications = self->_applications;
  if (applications)
  {
    CFRelease(applications);
    self->_applications = 0;
  }

  activeApplications = self->_activeApplications;
  if (activeApplications)
  {
    CFRelease(activeApplications);
    self->_activeApplications = 0;
  }

  backgroundApplications = self->_backgroundApplications;
  if (backgroundApplications)
  {
    CFRelease(backgroundApplications);
    self->_backgroundApplications = 0;
  }

  appsInForeground = self->_appsInForeground;
  if (appsInForeground)
  {
    CFRelease(appsInForeground);
    self->_appsInForeground = 0;
  }

  bundleIdsToMonitor = self->_bundleIdsToMonitor;
  if (bundleIdsToMonitor)
  {
    CFRelease(bundleIdsToMonitor);
    self->_bundleIdsToMonitor = 0;
  }

  applicationStateMonitor = self->_applicationStateMonitor;
  if (applicationStateMonitor)
  {
    [(BKSApplicationStateMonitor *)applicationStateMonitor invalidate];
    v9 = self->_applicationStateMonitor;
    if (v9)
    {
      CFRelease(v9);
      self->_applicationStateMonitor = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = WiFiAppStateManager;
  [(WiFiAppStateManager *)&v10 dealloc];
}

- (void)_applicationStateMonitorHandler:(__CFDictionary *)handler
{
  value = 0;
  valuePtr = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_100002BA0;
  v36 = sub_1000067A0;
  v37 = 0;
  if (!handler)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null userInfo", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (!self->_queue)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Nil queue", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (CFDictionaryGetValueIfPresent(handler, BKSApplicationStateProcessIDKey, &value))
  {
    v5 = value == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  }

  if (!valuePtr)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: pidForStateChange(%d)", "-[WiFiAppStateManager _applicationStateMonitorHandler:]", valuePtr}];
    }

    goto LABEL_57;
  }

  v6 = CFDictionaryGetValue(handler, BKSApplicationStateDisplayIDKey);
  if (!v6)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null bundleID", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  applications = self->_applications;
  if (!applications)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null applications", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

    goto LABEL_57;
  }

  if (CFDictionaryGetValueIfPresent(applications, v6, &v41))
  {
    if (v41)
    {
      CFNumberGetValue(v41, kCFNumberIntType, &v40);
    }
  }

  else
  {
    v8 = [(WiFiAppStateManager *)self _getAppCapabilitiesForBundleID:valuePtr];
    v40 = v8;
    [(WiFiAppStateManager *)self _registerApplication:v6 capabilities:v8];
  }

  if (!CFDictionaryGetValueIfPresent(handler, BKSApplicationStateKey, &v39))
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null BKSApplicationStateKey", "-[WiFiAppStateManager _applicationStateMonitorHandler:]"}];
    }

LABEL_57:
    objc_autoreleasePoolPop(v19);
    goto LABEL_44;
  }

  CFNumberGetValue(v39, kCFNumberIntType, &v38);
  v9 = v38;
  v10 = CFRetain(v6);
  v33[5] = v10;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107610;
  block[3] = &unk_100262858;
  v30 = v9 != 1;
  v31 = v9 == 8;
  v29 = v40;
  block[4] = self;
  block[5] = &v32;
  dispatch_async(queue, block);
  if ([(WiFiAppStateManager *)self _appUsesWiFiNetwork:v40]|| [+[WiFiUserInteractionMonitor hasRealTimeAppProperty:"hasRealTimeAppProperty:"]
  {
    [(WiFiAppStateManager *)self _appStateChanged:v38 bundleID:v6 capabilities:v40];
  }

  if ([(WiFiAppStateManager *)self _isMonitoringChangesForBundleID:v6]&& self->_bundleCallbackFunction)
  {
    v12 = self->_queue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100107698;
    v26[3] = &unk_100262880;
    v26[4] = self;
    v26[5] = v6;
    v27 = v38;
    dispatch_async(v12, v26);
  }

  v13 = v38;
  if (v38 == 1)
  {
    [(WiFiAppStateManager *)self _unRegisterApplication:v6];
    v13 = v38;
  }

  if (v13 - 1 < 2 || v13 == 4)
  {
    foregroundAppBundleIDs = self->_foregroundAppBundleIDs;
    if (foregroundAppBundleIDs)
    {
      if ([(NSMutableArray *)foregroundAppBundleIDs containsObject:v6])
      {
        [(NSMutableArray *)self->_foregroundAppBundleIDs removeObject:v6];
        if (self->_fgAppTrackerCallbackContext)
        {
          if (self->_fgAppTrackerCallbackFunction && self->_queue)
          {
            v22 = 0;
            v23 = &v22;
            v24 = 0x2020000000;
            v25 = 0;
            if ([(NSMutableArray *)self->_foregroundAppBundleIDs count])
            {
              v18 = [-[NSMutableArray lastObject](self->_foregroundAppBundleIDs "lastObject")];
              v23[3] = v18;
            }

            v15 = self->_queue;
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_100107700;
            v20[3] = &unk_100261468;
            v20[4] = self;
            v20[5] = &v22;
            v16 = v20;
            goto LABEL_43;
          }
        }
      }
    }
  }

  else if (v13 == 8)
  {
    v14 = self->_foregroundAppBundleIDs;
    if (v14 || (v14 = objc_alloc_init(NSMutableArray), (self->_foregroundAppBundleIDs = v14) != 0))
    {
      if (([(NSMutableArray *)v14 containsObject:v6]& 1) == 0)
      {
        [(NSMutableArray *)self->_foregroundAppBundleIDs addObject:v6];
      }
    }

    if (self->_fgAppTrackerCallbackContext && self->_fgAppTrackerCallbackFunction && self->_queue)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = [-[NSMutableArray lastObject](self->_foregroundAppBundleIDs "lastObject")];
      v15 = self->_queue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1001076AC;
      v21[3] = &unk_100261468;
      v21[4] = self;
      v21[5] = &v22;
      v16 = v21;
LABEL_43:
      dispatch_async(v15, v16);
      _Block_object_dispose(&v22, 8);
    }
  }

LABEL_44:
  _Block_object_dispose(&v32, 8);
}

- (void)_unRegisterApplication:(__CFString *)application
{
  if (application)
  {
    applications = self->_applications;
    if (applications)
    {

      CFDictionaryRemoveValue(applications, application);
    }

    else
    {
      sub_1001AA3C0();
    }
  }

  else
  {
    sub_1001AA42C();
  }
}

- (void)_registerApplication:(__CFString *)application capabilities:(int)capabilities
{
  valuePtr = capabilities;
  if (application)
  {
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      applications = self->_applications;
      if (applications)
      {
        CFDictionaryAddValue(applications, application, v7);
      }

      else
      {
        sub_1001AA498();
      }

      CFRelease(v7);
    }

    else
    {
      sub_1001AA4F8();
    }
  }

  else
  {
    sub_1001AA558();
  }
}

- (void)_setApplicationState:(__CFString *)state active:(BOOL)active underLock:(BOOL)lock capabilities:(int)capabilities
{
  v6 = *&capabilities;
  lockCopy = lock;
  activeCopy = active;
  v11 = sub_10000C8E4(state);
  if (!state)
  {
    sub_1001AA768();
    return;
  }

  state = v11;
  activeApplications = self->_activeApplications;
  if (!activeApplications)
  {
    sub_1001AA6FC();
    return;
  }

  if (!self->_backgroundApplications)
  {
    sub_1001AA690();
    return;
  }

  if (!state)
  {
    state = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor hasRealTimeAppProperty:"hasRealTimeAppProperty:", state];
    activeApplications = self->_activeApplications;
  }

  Count = CFSetGetCount(activeApplications);
  v15 = CFSetGetCount(self->_backgroundApplications);
  v16 = self->_activeApplications;
  if (activeCopy)
  {
    CFSetAddValue(v16, state);
    backgroundApplications = self->_backgroundApplications;
LABEL_10:
    CFSetRemoveValue(backgroundApplications, state);
    goto LABEL_12;
  }

  CFSetRemoveValue(v16, state);
  v18 = [(WiFiAppStateManager *)self _appUsesBackgroundNetwork:v6];
  backgroundApplications = self->_backgroundApplications;
  if ((v18 & 1) == 0 && !lockCopy)
  {
    goto LABEL_10;
  }

  CFSetAddValue(backgroundApplications, state);
LABEL_12:
  v19 = CFSetGetCount(self->_activeApplications);
  v20 = CFSetGetCount(self->_backgroundApplications);
  v21 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s %d bgBefore=%d bgAfter=%d fgBefore=%d fgAfter=%d", "-[WiFiAppStateManager _setApplicationState:active:underLock:capabilities:]", 401, v15, v20, Count, v19}];
  }

  objc_autoreleasePoolPop(v21);
  if (Count != v19)
  {
    if (Count >= v19)
    {
      [(WiFiAppStateManager *)self setAppInForeground:0];
      queue = self->_queue;
      if (queue)
      {
        v22 = 2;
        if (self->_appReporterCallbackFunction && state)
        {
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100107C10;
          v35[3] = &unk_1002628A8;
          v36 = 0;
          v35[4] = self;
          dispatch_async(queue, v35);
          v22 = 2;
        }

        goto LABEL_16;
      }
    }

    else
    {
      [(WiFiAppStateManager *)self setAppInForeground:1];
      v27 = self->_queue;
      if (v27)
      {
        v22 = 1;
        if (self->_appReporterCallbackFunction && state)
        {
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100107BA8;
          v37[3] = &unk_1002628A8;
          v38 = state;
          v37[4] = self;
          dispatch_async(v27, v37);
          v22 = 1;
        }

        goto LABEL_16;
      }
    }

    sub_1001AA5C4();
    return;
  }

  v22 = 0;
LABEL_16:
  if (v15 >= v20)
  {
    v23 = 8;
  }

  else
  {
    v23 = 4;
  }

  if (v15 == v20)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (self->_queue)
  {
    if (self->_callbackFunction)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0;
      v25 = CFRetain(state);
      v32[3] = v25;
      v26 = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100107C78;
      block[3] = &unk_1002628D0;
      v30 = v24;
      block[4] = self;
      block[5] = &v31;
      dispatch_async(v26, block);
      _Block_object_dispose(&v31, 8);
    }
  }

  else
  {
    sub_1001AA630();
  }
}

- (id)_getStringOfAppState:(unsigned int)state
{
  if (state - 1 > 7)
  {
    return @"WiFiApplicationStateUnknown";
  }

  else
  {
    return off_1002628F0[state - 1];
  }
}

- (void)_appStateChanged:(unsigned int)changed bundleID:(__CFString *)d capabilities:(int)capabilities
{
  if (!d)
  {
    sub_1001AA7D4();
    return;
  }

  if (changed > 3)
  {
    if (changed != 4)
    {
      if (changed != 8)
      {
        return;
      }

      dCopy2 = d;
      v7 = 1;
      goto LABEL_10;
    }
  }

  else if (changed != 1 && changed != 2)
  {
    return;
  }

  dCopy2 = d;
  v7 = 0;
LABEL_10:

  [(WiFiAppStateManager *)self _setApplicationState:dCopy2 active:v7 underLock:0 capabilities:*&capabilities];
}

- (int)_getAppCapabilitiesForBundleID:(int)d
{
  applicationStateMonitor = self->_applicationStateMonitor;
  if (applicationStateMonitor)
  {
    v5 = *&d;
    v6 = [(BKSApplicationStateMonitor *)applicationStateMonitor bundleInfoValueForKey:@"SBUsesNetwork" PID:*&d];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v6) = [v6 unsignedIntValue];
      }

      else
      {
        LODWORD(v6) = 0;
      }
    }

    v7 = [(BKSApplicationStateMonitor *)self->_applicationStateMonitor bundleInfoValueForKey:@"UIRequiresPersistentWiFi" PID:v5];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v8 BOOLValue])
        {
          LODWORD(v6) = v6 | 2;
        }
      }
    }
  }

  else
  {
    sub_1001AA840();
    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)startMonitoringBundleId:(__CFString *)id
{
  if (id)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      CFSetAddValue(bundleIdsToMonitor, id);
    }
  }
}

- (void)stopMonitoringBundleId:(__CFString *)id
{
  if (id)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      CFSetRemoveValue(bundleIdsToMonitor, id);
    }
  }
}

- (BOOL)_isMonitoringChangesForBundleID:(__CFString *)d
{
  if (d)
  {
    bundleIdsToMonitor = self->_bundleIdsToMonitor;
    if (bundleIdsToMonitor)
    {
      bundleIdsToMonitor = CFSetGetCount(bundleIdsToMonitor);
      if (bundleIdsToMonitor)
      {
        LOBYTE(bundleIdsToMonitor) = CFSetContainsValue(self->_bundleIdsToMonitor, d) != 0;
      }
    }
  }

  else
  {
    LOBYTE(bundleIdsToMonitor) = 0;
  }

  return bundleIdsToMonitor;
}

@end