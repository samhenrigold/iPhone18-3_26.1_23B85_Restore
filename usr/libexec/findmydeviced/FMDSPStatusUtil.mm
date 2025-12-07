@interface FMDSPStatusUtil
+ (id)sharedInstance;
- (FMDSPStatusUtil)init;
- (NSDate)beaconLastKeyRollDate;
- (NSDate)beaconZoneCreationDate;
- (NSNumber)beaconZoneCreationErrorCode;
- (NSString)mteStatus;
- (NSString)mteStatusError;
- (NSString)octStatus;
- (NSString)octStatusError;
- (void)_refreshDetailedStats:(BOOL)stats;
- (void)_requestDetailedStatsFromUserAgent;
- (void)_serialQueue_refreshBeaconStats;
- (void)_userDidLogIn:(id)in;
- (void)cancelRefresh;
- (void)clearCache;
- (void)refreshBeaconStats;
- (void)updateDetailedSPStats:(id)stats;
@end

@implementation FMDSPStatusUtil

+ (id)sharedInstance
{
  if (qword_100314A60 != -1)
  {
    sub_10022F910();
  }

  v3 = qword_100314A58;

  return v3;
}

- (NSDate)beaconZoneCreationDate
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"beaconZoneCreationDate"];

  return v3;
}

- (NSNumber)beaconZoneCreationErrorCode
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"beaconZoneCreationErrorCode"];

  return v3;
}

- (NSDate)beaconLastKeyRollDate
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"beaconLastKeyRollDate"];

  return v3;
}

- (NSString)octStatus
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"octStatus"];

  return v3;
}

- (NSString)octStatusError
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"octStatusError"];

  return v3;
}

- (NSString)mteStatus
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"mteStatus"];

  return v3;
}

- (NSString)mteStatusError
{
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v3 = [rawStats objectForKeyedSubscript:@"mteStatusError"];

  return v3;
}

- (FMDSPStatusUtil)init
{
  v12.receiver = self;
  v12.super_class = FMDSPStatusUtil;
  v2 = [(FMDSPStatusUtil *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fmipRegisterInfo = [v3 fmipRegisterInfo];
    spFmipRegisterInfo = v2->_spFmipRegisterInfo;
    v2->_spFmipRegisterInfo = fmipRegisterInfo;

    v6 = dispatch_queue_create("com.apple.icloud.spstats.queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = [FMPreferencesUtil dictionaryForKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];
    rawStats = v2->_rawStats;
    v2->_rawStats = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_userDidLogIn:" name:@"FMDUserLoggedInLocalNotification" object:0];

    if (!v2->_rawStats)
    {
      v2->_rawStats = &__NSDictionary0__struct;
    }
  }

  return v2;
}

- (void)cancelRefresh
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDSPStatusUtil *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E243C;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)clearCache
{
  [(FMDSPStatusUtil *)self setRawStats:&__NSDictionary0__struct];
  v2 = off_1003139B8;
  v3 = kFMDNotBackedUpPrefDomain;

  [FMPreferencesUtil removeKey:v2 inDomain:v3];
}

- (void)refreshBeaconStats
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDSPStatusUtil *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E25B4;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_serialQueue_refreshBeaconStats
{
  objc_initWeak(&location, self);
  timer = [(FMDSPStatusUtil *)self timer];
  [timer cancel];

  v4 = [FMPreferencesUtil integerForKey:@"SPStatusRecheckInterval" inDomain:kFMDNotBackedUpPrefDomain];
  if (v4 >= 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1800.0;
  }

  v6 = sub_100002880(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting timer to refresh beacon stats in %ld seconds", buf, 0xCu);
  }

  v7 = [FMDispatchTimer alloc];
  serialQueue = [(FMDSPStatusUtil *)self serialQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001E2C04;
  v38[3] = &unk_1002CD518;
  objc_copyWeak(&v39, &location);
  v9 = [v7 initWithQueue:serialQueue timeout:v38 completion:v5];
  [(FMDSPStatusUtil *)self setTimer:v9];

  timer2 = [(FMDSPStatusUtil *)self timer];
  [timer2 start];

  v11 = MKBDeviceUnlockedSinceBoot();
  if (v11)
  {
    rawStats = [(FMDSPStatusUtil *)self rawStats];
    v13 = [rawStats copy];

    v14 = [v13 mutableCopy];
    spFmipRegisterInfo = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    beaconZoneCreationErrorCode = [spFmipRegisterInfo beaconZoneCreationErrorCode];
    [v14 fm_safelyMapKey:@"beaconZoneCreationErrorCode" toObject:beaconZoneCreationErrorCode];

    spFmipRegisterInfo2 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    beaconZoneCreationDate = [spFmipRegisterInfo2 beaconZoneCreationDate];
    [v14 fm_safelyMapKey:@"beaconZoneCreationDate" toObject:beaconZoneCreationDate];

    spFmipRegisterInfo3 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    lastKeyRollDate = [spFmipRegisterInfo3 lastKeyRollDate];
    [v14 fm_safelyMapKey:@"lastKeyRollDate" toObject:lastKeyRollDate];

    v21 = [v14 copy];
    [(FMDSPStatusUtil *)self setRawStats:v21];

    v22 = [v13 isEqualToDictionary:v14];
    rawStats2 = [(FMDSPStatusUtil *)self rawStats];
    [FMPreferencesUtil setDictionary:rawStats2 forKey:off_1003139B8 inDomain:kFMDNotBackedUpPrefDomain];

    spFmipRegisterInfo4 = [(FMDSPStatusUtil *)self spFmipRegisterInfo];
    serviceState = [spFmipRegisterInfo4 serviceState];

    beaconZoneCreationErrorCode2 = [(FMDSPStatusUtil *)self beaconZoneCreationErrorCode];
    if (beaconZoneCreationErrorCode2)
    {
    }

    else if (serviceState != SPServiceStateEnabled || ([(FMDSPStatusUtil *)self beaconZoneCreationDate], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28 == 0, v28, !v29))
    {
      if (v22)
      {
        statsChangeHandler = sub_100002880(beaconZoneCreationErrorCode2);
        if (os_log_type_enabled(statsChangeHandler, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, statsChangeHandler, OS_LOG_TYPE_DEFAULT, "Basic beacon stats do not show any failure. Server already has the latest stats.", buf, 2u);
        }
      }

      else
      {
        v31 = sub_100002880(beaconZoneCreationErrorCode2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Basic beacon stats do not show any failure. Sending the updated stats to the server", buf, 2u);
        }

        statsChangeHandler = [(FMDSPStatusUtil *)self statsChangeHandler];
        if (statsChangeHandler)
        {
          v32 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1001E2C44;
          block[3] = &unk_1002CE250;
          statsChangeHandler = statsChangeHandler;
          v37 = statsChangeHandler;
          dispatch_async(v32, block);
        }
      }

      v34 = sub_100002880(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Canceling beacon stats refresh timer", buf, 2u);
      }

      timer3 = [(FMDSPStatusUtil *)self timer];
      [timer3 cancel];

      [(FMDSPStatusUtil *)self setTimer:0];
      goto LABEL_26;
    }

    v27 = sub_100002880(beaconZoneCreationErrorCode2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Basic beacon stats is reporting a failure. Fetching detailed stats", buf, 2u);
    }

    [(FMDSPStatusUtil *)self _refreshDetailedStats:v22 ^ 1];
LABEL_26:

    goto LABEL_27;
  }

  v13 = sub_100002880(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device not unlocked since boot. Will refresh beacon stats on next timer trigger.", buf, 2u);
  }

LABEL_27:

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)_refreshDetailedStats:(BOOL)stats
{
  v5 = +[NSDate date];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_10000AB74;
  v31[4] = sub_100002B84;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_10000AB74;
  v29[4] = sub_100002B84;
  v30 = 0;
  objc_initWeak(&location, self);
  rawStats = [(FMDSPStatusUtil *)self rawStats];
  v7 = [rawStats copy];

  v8 = [v7 mutableCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001E2F10;
  v20[3] = &unk_1002D13B0;
  objc_copyWeak(&v26, &location);
  v24 = v31;
  v9 = v5;
  v21 = v9;
  v25 = v29;
  v10 = v8;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  statsCopy = stats;
  v12 = objc_retainBlock(v20);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E316C;
  v15[3] = &unk_1002D13D8;
  v13 = v10;
  v19 = v29;
  v16 = v13;
  selfCopy = self;
  v14 = v12;
  v18 = v14;
  [FMDMteStatusUtil fetchMteStatusWithCompletion:v15];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
}

- (void)_requestDetailedStatsFromUserAgent
{
  [(FMDSPStatusUtil *)self setWaitingForDetailedStats:1];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.icloud.findmydeviced.fetch_spstats", 0, 0, 1u);
}

- (void)updateDetailedSPStats:(id)stats
{
  statsCopy = stats;
  objc_initWeak(&location, self);
  serialQueue = [(FMDSPStatusUtil *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E339C;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = statsCopy;
  v6 = statsCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_userDidLogIn:(id)in
{
  if ([(FMDSPStatusUtil *)self waitingForDetailedStats])
  {
    v3 = dispatch_time(0, 5000000000);
    v4 = dispatch_get_global_queue(0, 0);
    dispatch_after(v3, v4, &stru_1002D13F8);
  }
}

@end