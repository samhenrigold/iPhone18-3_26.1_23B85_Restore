@interface PHMeCardGeocoder
- (BOOL)_isNetworkAvailable;
- (BOOL)_unschedulePerformGeocodesWakeTaskIfEarlierThan:(id)than;
- (BOOL)isActivelyUsing;
- (NSArray)currentValidLocations;
- (PHMeCardGeocoder)initWithCall:(id)call;
- (id)_dateOfOldestAddress;
- (void)_doWork;
- (void)_networkPreferencesLoaded;
- (void)_rebuildAddressArray;
- (void)_saveGeoCache;
- (void)_scheduleLongTermRebuild;
- (void)_scheduleNextGeocode;
- (void)_schedulePerformGeocodesTaskWithStartWakeTime:(id)time dropDeadDelay:(int64_t)delay;
- (void)dealloc;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)scheduleImmediateGeocode;
- (void)scheduleNextGeocode;
- (void)setActivelyUsing:(BOOL)using;
@end

@implementation PHMeCardGeocoder

- (PHMeCardGeocoder)initWithCall:(id)call
{
  callCopy = call;
  v5 = +[EKAlarm areLocationsAvailable];
  if (v5)
  {
    v32.receiver = self;
    v32.super_class = PHMeCardGeocoder;
    v6 = [(PHMeCardGeocoder *)&v32 init];
    if (!v6)
    {
LABEL_15:
      self = v6;
      selfCopy = self;
      goto LABEL_16;
    }

    v7 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:callCopy];
    v8 = [[CNContactStore alloc] initWithConfiguration:v7];
    contactStore = v6->_contactStore;
    v6->_contactStore = v8;

    v10 = dispatch_queue_create("MPTelephonyManager.MeCardCacheQueue", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    v12 = [[NSData alloc] initWithContentsOfFile:@"/var/mobile/Library/Phone/MeCard.geocache"];
    if (!v12)
    {
LABEL_14:
      v26 = +[NSNotificationCenter defaultCenter];
      [v26 addObserver:v6 selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
      objc_initWeak(buf, v6);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B51F4;
      block[3] = &unk_100356FB0;
      objc_copyWeak(&v30, buf);
      v29 = v6;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);

      goto LABEL_15;
    }

    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    v31 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v12 error:&v31];
    v16 = v31;
    addresses = v6->_addresses;
    v6->_addresses = v15;

    v18 = v6->_addresses;
    v20 = sub_100004F84(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v21)
      {
        v22 = v6->_addresses;
        *buf = 138412290;
        v34 = v22;
        v23 = "Unarchived addresses: %@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }

    else if (v21)
    {
      *buf = 138412290;
      v34 = v16;
      v23 = "[WARN] Error unarchiving addresses: %@";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v24 = sub_100004F84(v5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device type doesn't allow location-based reminders, so +[PHMeCardGeocoder sharedMeCardGeocoder] will return nil", buf, 2u);
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (void)_networkPreferencesLoaded
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5454;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(PCPersistentTimer *)self->_networkPreferencesTimeoutTimer invalidate];
  [(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:0];
  [(PHMeCardGeocoder *)self _unscheduleLongTermRebuild];
  workQueue = self->_workQueue;
  if (workQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5650;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_sync(workQueue, block);
  }

  v6.receiver = self;
  v6.super_class = PHMeCardGeocoder;
  [(PHMeCardGeocoder *)&v6 dealloc];
}

- (BOOL)_isNetworkAvailable
{
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  if (v2)
  {
    v3 = v2;
    flags = 0;
    v4 = SCNetworkReachabilityGetFlags(v2, &flags);
    if (v4)
    {
      v5 = sub_100004F84(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = flags;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reachability flags: %d", buf, 8u);
      }

      v6 = (flags >> 1) & 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }

    CFRelease(v3);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)scheduleImmediateGeocode
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-scheduleImmediateGeocode", buf, 2u);
  }

  _isNetworkAvailable = [(PHMeCardGeocoder *)self _isNetworkAvailable];
  v5 = _isNetworkAvailable;
  v6 = sub_100004F84(_isNetworkAvailable);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network is available...doing work", buf, 2u);
    }

    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5998;
    block[3] = &unk_100356988;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network is not available, deferring work until it is...", buf, 2u);
    }

    [(PHMeCardGeocoder *)self scheduleNextGeocode];
  }
}

- (void)scheduleNextGeocode
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "-scheduleNextGeocode", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5A60;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_saveGeoCache
{
  v3 = +[NSFileManager defaultManager];
  [v3 makeDirectoriesInPath:@"/var/mobile/Library/Phone/" mode:509];

  addresses = self->_addresses;
  v9 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:addresses requiringSecureCoding:1 error:&v9];
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    [v5 writeToFile:@"/var/mobile/Library/Phone/MeCard.geocache" atomically:1];
  }

  else
  {
    v8 = sub_100004F84(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100256120(v7, v8);
    }
  }
}

- (void)_doWork
{
  _isNetworkAvailable = [(PHMeCardGeocoder *)self _isNetworkAvailable];
  if (!_isNetworkAvailable)
  {
    v17 = sub_100004F84(_isNetworkAvailable);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No network was availble.  Scheduling wake timer.", buf, 2u);
    }

LABEL_22:
    [(PHMeCardGeocoder *)self _scheduleNextGeocode];
    goto LABEL_24;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_addresses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v5)
  {

    goto LABEL_24;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v21;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      state = [v10 state];
      if (state == 2 || ([v10 nextGeocodeAttempt], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceNow"), v14 = v13, v12, v14 > 0.0))
      {
        v15 = sub_100004F84(state);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deferring geocode...", buf, 2u);
        }

        v7 = 1;
      }

      else
      {
        v16 = sub_100004F84(state);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempting geocode...", buf, 2u);
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000B5DD0;
        v18[3] = &unk_100358C48;
        v18[4] = self;
        [v10 attemptGeocodeWithCompletionBlock:v18];
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v6);

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_24:
  [(PHMeCardGeocoder *)self _saveGeoCache];
}

- (BOOL)_unschedulePerformGeocodesWakeTaskIfEarlierThan:(id)than
{
  thanCopy = than;
  lastScheduledTime = [(PHMeCardGeocoder *)self lastScheduledTime];

  if (!lastScheduledTime)
  {
    v13 = sub_100004F84(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No existing job, so nothing to unschedule", &v17, 2u);
    }

    goto LABEL_12;
  }

  if (!thanCopy)
  {
    v10 = sub_100004F84(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unscheduling previous job since nil date was passed in", &v17, 2u);
    }

    goto LABEL_11;
  }

  lastScheduledTime2 = [(PHMeCardGeocoder *)self lastScheduledTime];
  v8 = [lastScheduledTime2 compare:thanCopy];

  v10 = sub_100004F84(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v11)
    {
      lastScheduledTime3 = [(PHMeCardGeocoder *)self lastScheduledTime];
      v17 = 138412546;
      v18 = lastScheduledTime3;
      v19 = 2112;
      v20 = thanCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unscheduling previous job with date %@ since we need to fire at %@ which is earlier", &v17, 0x16u);
    }

LABEL_11:

    xpc_activity_unregister("com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork");
LABEL_12:
    [(PHMeCardGeocoder *)self setLastScheduledTime:0];
    v14 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    lastScheduledTime4 = [(PHMeCardGeocoder *)self lastScheduledTime];
    v17 = 138412546;
    v18 = lastScheduledTime4;
    v19 = 2112;
    v20 = thanCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Won't unschedule previous job with date %@ since we need to fire at %@ which is later", &v17, 0x16u);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_schedulePerformGeocodesTaskWithStartWakeTime:(id)time dropDeadDelay:(int64_t)delay
{
  timeCopy = time;
  [(PHMeCardGeocoder *)self setLastScheduledTime:timeCopy];
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  [timeCopy timeIntervalSinceNow];
  v9 = v8;

  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, delay);
  v11 = sub_100004F84(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got background task agent callback for job: %s", buf, 0xCu);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B62F4;
  handler[3] = &unk_100358C70;
  handler[4] = self;
  xpc_activity_register("com.apple.MobilePhone.PHMeCardGeocoder.WakeAndDoWork", v7, handler);
}

- (void)_scheduleNextGeocode
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = self->_addresses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v4)
  {

LABEL_22:
    [(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:0, v25];
    v7 = 0;
    goto LABEL_32;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v26;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v25 + 1) + 8 * i);
      checkGeocodeAfterDateForSanity = [v10 checkGeocodeAfterDateForSanity];
      nextGeocodeAttempt = [v10 nextGeocodeAttempt];
      v13 = nextGeocodeAttempt;
      if (nextGeocodeAttempt)
      {
        if (v7)
        {
          v14 = [v7 earlierDate:nextGeocodeAttempt];

          v7 = v14;
        }

        else
        {
          v7 = nextGeocodeAttempt;
        }
      }

      v6 |= checkGeocodeAfterDateForSanity;
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  }

  while (v5);

  if (v6)
  {
    v16 = sub_100004F84(_saveGeoCache);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated geocode-after date on one or more addresses, saving", buf, 2u);
    }

    _saveGeoCache = [(PHMeCardGeocoder *)self _saveGeoCache];
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  v17 = sub_100004F84(_saveGeoCache);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    [v7 timeIntervalSinceNow];
    *buf = 138412546;
    v30 = v7;
    v31 = 2048;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Next wake time %@ has time interval since now: %f", buf, 0x16u);
  }

  timeIntervalSinceNow = [v7 timeIntervalSinceNow];
  if (v20 <= 3600.0)
  {
    timeIntervalSinceNow = [v7 timeIntervalSinceNow];
    if (v22 <= 0.0)
    {
      timeIntervalSinceNow = [(PHMeCardGeocoder *)self _isNetworkAvailable];
      if (timeIntervalSinceNow)
      {
        v23 = +[NSDate date];

        v21 = 1800;
        v7 = v23;
      }

      else
      {
        v21 = 21600;
      }
    }

    else
    {
      v21 = 300;
    }
  }

  else
  {
    v21 = 3600;
  }

  v24 = sub_100004F84(timeIntervalSinceNow);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v7;
    v31 = 2048;
    v32 = v21;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Scheduling next wake time between %@ and %lld seconds laster", buf, 0x16u);
  }

  if ([(PHMeCardGeocoder *)self _unschedulePerformGeocodesWakeTaskIfEarlierThan:v7])
  {
    [(PHMeCardGeocoder *)self _schedulePerformGeocodesTaskWithStartWakeTime:v7 dropDeadDelay:v21];
  }

LABEL_32:
}

- (id)_dateOfOldestAddress
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_addresses;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {

LABEL_14:
    v5 = +[NSDate date];
    goto LABEL_15;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v2);
      }

      lastGeocodeAttempt = [*(*(&v12 + 1) + 8 * i) lastGeocodeAttempt];
      v9 = lastGeocodeAttempt;
      if (v5)
      {
        v10 = [lastGeocodeAttempt earlierDate:v5];

        v5 = v10;
      }

      else
      {
        v5 = lastGeocodeAttempt;
      }
    }

    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (void)_scheduleLongTermRebuild
{
  [(PHMeCardGeocoder *)self _unscheduleLongTermRebuild];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  _dateOfOldestAddress = [(PHMeCardGeocoder *)self _dateOfOldestAddress];
  v5 = [_dateOfOldestAddress dateByAddingTimeInterval:2592000.0];

  v6 = +[NSDate date];
  if ([v5 compare:v6] == -1)
  {
    v7 = [v6 dateByAddingTimeInterval:86400.0];

    v5 = v7;
  }

  [v5 timeIntervalSinceNow];
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, v8);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 147600);
  v10 = sub_100004F84(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling a wake-and-rebuild for at %@ with a one day grace period", buf, 0xCu);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B6A3C;
  handler[3] = &unk_100358C70;
  handler[4] = self;
  xpc_activity_register("com.apple.MobilePhone.PHMeCardGeocoder.RebuildEverything", v3, handler);
}

- (void)_rebuildAddressArray
{
  selfCopy = self;
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding me card cache...", buf, 2u);
  }

  if (!selfCopy->_addresses)
  {
    v4 = objc_alloc_init(NSMutableArray);
    addresses = selfCopy->_addresses;
    selfCopy->_addresses = v4;
  }

  v45 = [[NSMutableArray alloc] initWithArray:selfCopy->_addresses];
  contactStore = [(PHMeCardGeocoder *)selfCopy contactStore];
  v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v70[0] = v7;
  v70[1] = CNContactPostalAddressesKey;
  v70[2] = CNContactTypeKey;
  v8 = [NSArray arrayWithObjects:v70 count:3];
  v64 = 0;
  v9 = [contactStore _ios_meContactWithKeysToFetch:v8 error:&v64];
  v10 = v64;

  obj = sub_100004F84(v11);
  v12 = os_log_type_enabled(obj, OS_LOG_TYPE_DEFAULT);
  v13 = "ontroller";
  v47 = v9;
  if (v9)
  {
    if (v12)
    {
      *buf = 138412290;
      v69 = v9;
      _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Found Me contact card %@.", buf, 0xCu);
    }

    [(_PHMeCardGeocoderAddress *)v9 postalAddresses];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v63 = 0u;
    v14 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    v50 = v14;
    if (v14)
    {
      v44 = v10;
      v49 = *v61;
      v48 = selfCopy;
      do
      {
        v15 = 0;
        do
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v60 + 1) + 8 * v15);
          v17 = sub_100004F84(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Considering postal address labeled value %@.", buf, 0xCu);
          }

          label = [(_PHMeCardGeocoderAddress *)v16 label];
          if (([label isEqualToString:CNLabelHome] & 1) != 0 || objc_msgSend(label, "isEqualToString:", CNLabelWork))
          {
            v51 = label;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v19 = selfCopy->_addresses;
            v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v66 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v57;
LABEL_19:
              v23 = 0;
              while (1)
              {
                if (*v57 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v56 + 1) + 8 * v23);
                labeledValue = [(_PHMeCardGeocoderAddress *)v24 labeledValue];
                value = [labeledValue value];

                value2 = [(_PHMeCardGeocoderAddress *)v16 value];
                v28 = [value isEqual:value2];

                if (v28)
                {
                  break;
                }

                if (v21 == ++v23)
                {
                  v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v56 objects:v66 count:16];
                  if (v21)
                  {
                    goto LABEL_19;
                  }

                  goto LABEL_30;
                }
              }

              expired = [(_PHMeCardGeocoderAddress *)v24 expired];
              if (expired)
              {
                v30 = sub_100004F84(expired);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v69 = v24;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Existing address is expired, ignoring: %@", buf, 0xCu);
                }

                goto LABEL_30;
              }

              v31 = v24;

              if (!v31)
              {
                goto LABEL_31;
              }

              v35 = sub_100004F84(v34);
              label = v51;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v69 = v31;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found existing address, repurposing: %@", buf, 0xCu);
              }

              [(_PHMeCardGeocoderAddress *)v45 removeObject:v31];
              selfCopy = v48;
            }

            else
            {
LABEL_30:

LABEL_31:
              label = v51;
              v31 = EKUILabeledDisplayStringForContact();
              v32 = [[_PHMeCardGeocoderAddress alloc] initWithLabeledValue:v16 entityID:v31];
              v33 = sub_100004F84(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v69 = v32;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Totally new address encountered, adding: %@", buf, 0xCu);
              }

              selfCopy = v48;
              [(NSMutableArray *)v48->_addresses addObject:v32];
            }
          }

          v15 = v15 + 1;
        }

        while (v15 != v50);
        v14 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
        v50 = v14;
      }

      while (v14);
      v10 = v44;
      v13 = "@PHPIPController" + 8;
    }
  }

  else if (v12)
  {
    contactStore2 = [(PHMeCardGeocoder *)selfCopy contactStore];
    *buf = 138412290;
    v69 = contactStore2;
    _os_log_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEFAULT, "Could not retrieve a Me card using contact store %@.", buf, 0xCu);
  }

  v38 = sub_100004F84(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v13 + 441);
    v69 = v45;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Removing unused addresses: %@", buf, 0xCu);
  }

  [(NSMutableArray *)selfCopy->_addresses removeObjectsInArray:v45];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v45;
  v40 = [(_PHMeCardGeocoderAddress *)v39 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v53;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(&v52 + 1) + 8 * i) cancelGeocode];
      }

      v41 = [(_PHMeCardGeocoderAddress *)v39 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v41);
  }

  [(PHMeCardGeocoder *)selfCopy _doWork];
  [(PHMeCardGeocoder *)selfCopy _scheduleLongTermRebuild];
}

- (NSArray)currentValidLocations
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_addresses;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        locationDictionary = [*(*(&v12 + 1) + 8 * i) locationDictionary];
        if (locationDictionary)
        {
          [v3 addObject:locationDictionary];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [NSArray arrayWithArray:v3];

  return v10;
}

- (BOOL)isActivelyUsing
{
  v2 = +[_PHMeCardGeocoderPreferences sharedPreferences];
  isActivelyUsing = [v2 isActivelyUsing];

  return isActivelyUsing;
}

- (void)setActivelyUsing:(BOOL)using
{
  usingCopy = using;
  if ([(PHMeCardGeocoder *)self isActivelyUsing]!= using)
  {
    v5 = +[_PHMeCardGeocoderPreferences sharedPreferences];
    [v5 setActivelyUsing:usingCopy];

    if (usingCopy)
    {
      v7 = sub_100004F84(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Since we're actively using geocoder, scheduling quicker start times for geocoding", buf, 2u);
      }

      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B7438;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }
}

- (void)handleCNContactStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  workQueue = [(PHMeCardGeocoder *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B773C;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_async(workQueue, block);
}

@end