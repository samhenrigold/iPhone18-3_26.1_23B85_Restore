@interface WiFiLocaleManager
+ (id)getStringOfLocaleSource:(int)source;
- (BOOL)isDefaultCountryCode:(id)code;
- (BOOL)shouldDetermineNewLocale;
- (WiFiLocaleManager)init;
- (WiFiLocaleManagerDelegate)delegate;
- (id)applySetCountryCodeExceptions:(id)exceptions;
- (id)getLocaleFromLocation:(id)location;
- (id)getLocaleFromMcc;
- (id)getLocaleFromMultiple80211d;
- (id)getLocaleFromPeer;
- (id)getLocaleFromRemoteClient;
- (id)getLocaleFromTimezone;
- (id)getLocaleFromUserDefaults;
- (id)getLocaleUsingBoundingBoxes:(id)boxes;
- (id)getLocaleUsingGeoLocationCache:(id)cache;
- (id)getLocaleUsingReverseGeocoder:(id)geocoder;
- (id)getRestrictedCountryCodeFromRegionInfo;
- (id)getRestrictedCountryCodeFromTimezone;
- (unsigned)getNetworkReachability;
- (void)dealloc;
- (void)determineAndSetLocale:(unsigned __int8)locale;
- (void)determineLocale:(unsigned __int8)locale;
- (void)didChangeAuthorizationStatus;
- (void)didFailWithError:(id)error;
- (void)didUpdateLocations:(id)locations;
- (void)setCountryCode:(id)code source:(int)source;
- (void)setLocaleTestParams:(id)params;
@end

@implementation WiFiLocaleManager

uint64_t __25__WiFiLocaleManager_init__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale timer fired", v3, 2u);
  }

  return [*(a1 + 32) determineLocale:0];
}

- (BOOL)shouldDetermineNewLocale
{
  selfCopy = self;
  localeCountryCode = [(WiFiLocaleManager *)self localeCountryCode];
  LOBYTE(selfCopy) = [(WiFiLocaleManager *)selfCopy isDefaultCountryCode:localeCountryCode];

  return selfCopy;
}

- (WiFiLocaleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WiFiLocaleManager)init
{
  v19.receiver = self;
  v19.super_class = WiFiLocaleManager;
  v2 = [(WiFiLocaleManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiLocaleManager *)v2 setLocaleCheckSuspended:0];
    [(WiFiLocaleManager *)v3 setLocaleCountryCode:0];
    [(WiFiLocaleManager *)v3 setLocaleSource:0];
    [(WiFiLocaleManager *)v3 setLocaleLastUpdatedTime:0.0];
    [(WiFiLocaleManager *)v3 setLocaleTimeout:3600.0];
    [(WiFiLocaleManager *)v3 setAggressiveRetryAttemptsRemaining:5];
    [(WiFiLocaleManager *)v3 setTestMcc:0];
    [(WiFiLocaleManager *)v3 setTestHost11d:0];
    [(WiFiLocaleManager *)v3 setTestPeer:0];
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(WiFiLocaleManager *)v3 setDateFormatter:v4];

    dateFormatter = [(WiFiLocaleManager *)v3 dateFormatter];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];

    v6 = dispatch_queue_create("WiFiLocaleManager", 0);
    [(WiFiLocaleManager *)v3 setQueue:v6];

    queue = [(WiFiLocaleManager *)v3 queue];
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    [(WiFiLocaleManager *)v3 setLocaleTimer:v8];

    localeTimer = [(WiFiLocaleManager *)v3 localeTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__WiFiLocaleManager_init__block_invoke;
    handler[3] = &unk_2789C6630;
    v10 = v3;
    v18 = v10;
    dispatch_source_set_event_handler(localeTimer, handler);

    localeTimer2 = [(WiFiLocaleManager *)v10 localeTimer];
    v12 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(localeTimer2, v12, 0x1BF08EB000uLL, 0);

    localeTimer3 = [(WiFiLocaleManager *)v10 localeTimer];
    dispatch_activate(localeTimer3);

    v14 = +[WiFiLocationManager sharedWiFiLocationManager];
    [(WiFiLocaleManager *)v10 setLocationManager:v14];

    locationManager = [(WiFiLocaleManager *)v10 locationManager];
    [locationManager setDelegate:v10];

    [(WiFiLocaleManager *)v10 setIsWaitingForLocationUpdate:0];
  }

  return v3;
}

- (void)dealloc
{
  [(WiFiLocaleManager *)self setTestHost11d:0];
  [(WiFiLocaleManager *)self setTestPeer:0];
  [(WiFiLocaleManager *)self setLocationManager:0];
  localeTimer = [(WiFiLocaleManager *)self localeTimer];

  if (localeTimer)
  {
    localeTimer2 = [(WiFiLocaleManager *)self localeTimer];
    dispatch_source_cancel(localeTimer2);

    [(WiFiLocaleManager *)self setLocaleTimer:0];
  }

  queue = [(WiFiLocaleManager *)self queue];

  if (queue)
  {
    [(WiFiLocaleManager *)self setQueue:0];
  }

  v6.receiver = self;
  v6.super_class = WiFiLocaleManager;
  [(WiFiLocaleManager *)&v6 dealloc];
}

- (void)determineAndSetLocale:(unsigned __int8)locale
{
  queue = [(WiFiLocaleManager *)self queue];

  if (queue)
  {
    queue2 = [(WiFiLocaleManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__WiFiLocaleManager_determineAndSetLocale___block_invoke;
    v7[3] = &unk_2789C6688;
    v7[4] = self;
    localeCopy = locale;
    dispatch_async(queue2, v7);
  }
}

- (BOOL)isDefaultCountryCode:(id)code
{
  codeCopy = code;
  v4 = codeCopy == 0;
  if (![codeCopy caseInsensitiveCompare:&stru_28487EF20] || !objc_msgSend(codeCopy, "caseInsensitiveCompare:", @"X0") || !objc_msgSend(codeCopy, "caseInsensitiveCompare:", @"X2") || !objc_msgSend(codeCopy, "caseInsensitiveCompare:", @"X3") || !objc_msgSend(codeCopy, "caseInsensitiveCompare:", @"XZ"))
  {
    v4 = 1;
  }

  return v4;
}

- (void)setLocaleTestParams:(id)params
{
  paramsCopy = params;
  queue = [(WiFiLocaleManager *)self queue];

  if (queue)
  {
    queue2 = [(WiFiLocaleManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__WiFiLocaleManager_setLocaleTestParams___block_invoke;
    v7[3] = &unk_2789C6608;
    v8 = paramsCopy;
    selfCopy = self;
    dispatch_async(queue2, v7);
  }
}

void __41__WiFiLocaleManager_setLocaleTestParams___block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"enableTestMode"];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"localeCheckSuspended"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"mcc"];
  v7 = [v6 intValue];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"cachedLocaleTimeout"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [*(a1 + 32) objectForKey:@"host11d"];
  v12 = [*(a1 + 32) objectForKey:@"peer"];
  v13 = [*(a1 + 32) objectForKey:@"timeZoneCC"];
  v14 = [*(a1 + 32) objectForKey:@"userDefaults"];
  v15 = [*(a1 + 32) objectForKeyedSubscript:@"forceCheck"];
  v16 = [v15 BOOLValue];

  v17 = *(a1 + 40);
  if (!v3)
  {
    if ([v17 testModeEnabled])
    {
      v22 = v16;
      v23 = v14;
      [*(a1 + 40) setTestModeEnabled:0];
      [*(a1 + 40) setLocaleCheckSuspended:0];
      [*(a1 + 40) setTestMcc:0];
      [*(a1 + 40) setLocaleTimeout:3600.0];
      [*(a1 + 40) setTestHost11d:0];
      [*(a1 + 40) setTestPeer:0];
      [*(a1 + 40) setLocaleCountryCode:0];
      [*(a1 + 40) setLocaleSource:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v24 = [*(a1 + 40) localeCheckSuspended];
        v25 = [*(a1 + 40) testMcc];
        v26 = [*(a1 + 40) testHost11d];
        v27 = [*(a1 + 40) testPeer];
        [*(a1 + 40) localeTimeout];
        *buf = 136316674;
        v65 = "[WiFiLocaleManager setLocaleTestParams:]_block_invoke";
        v66 = 1024;
        v67 = v24;
        v68 = 1024;
        v69 = v25;
        v70 = 2112;
        *v71 = v26;
        *&v71[8] = 2112;
        *v72 = v27;
        *&v72[8] = 2048;
        *v73 = v28;
        *&v73[8] = 1024;
        *v74 = v22;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: resetting test params: localeCheckSuspended %d, MCC %d, host11d %@, peer %@, timeout %.2f seconds, forceCheck %d", buf, 0x3Cu);
      }

      v29 = [*(a1 + 40) retryTimer];

      if (v29)
      {
        v30 = [*(a1 + 40) retryTimer];
        dispatch_source_set_timer(v30, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      v31 = [*(a1 + 40) localeTimer];
      [*(a1 + 40) localeTimeout];
      v33 = dispatch_time(0, (v32 * 1000000000.0));
      [*(a1 + 40) localeTimeout];
      dispatch_source_set_timer(v31, v33, (v34 * 1000000000.0), 0);

      v14 = v23;
      if (v22)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

  [v17 setTestModeEnabled:1];
  [*(a1 + 40) setLocaleCheckSuspended:v5];
  if (HIWORD(v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = v7;
  }

  [*(a1 + 40) setTestMcc:v18];
  [*(a1 + 40) setLocaleTimeout:{fmax(v10, 120.0)}];
  v61 = v7;
  if (v11)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [v11 uppercaseString];
    v21 = [v19 initWithString:v20];
    [*(a1 + 40) setTestHost11d:v21];
  }

  else
  {
    [*(a1 + 40) setTestHost11d:0];
  }

  v35 = v16;
  if (v12)
  {
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = [v12 uppercaseString];
    v38 = [v36 initWithString:v37];
    [*(a1 + 40) setTestPeer:v38];

    if (v13)
    {
LABEL_17:
      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v40 = [v13 uppercaseString];
      v41 = [v39 initWithString:v40];
      [*(a1 + 40) setTestTimeZoneCC:v41];

      goto LABEL_20;
    }
  }

  else
  {
    [*(a1 + 40) setTestPeer:0];
    if (v13)
    {
      goto LABEL_17;
    }
  }

  [*(a1 + 40) setTestTimeZoneCC:0];
LABEL_20:
  v62 = v13;
  v63 = v12;
  if (v14)
  {
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v43 = [v14 uppercaseString];
    v44 = [v42 initWithString:v43];
    [*(a1 + 40) setTestUserDefaults:v44];
  }

  else
  {
    [*(a1 + 40) setTestUserDefaults:0];
  }

  v45 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v46 = v16;
    v47 = v14;
    v48 = [*(a1 + 40) localeCheckSuspended];
    v49 = [*(a1 + 40) testMcc];
    v50 = [*(a1 + 40) testHost11d];
    v51 = [*(a1 + 40) testPeer];
    v52 = [*(a1 + 40) testUserDefaults];
    [*(a1 + 40) localeTimeout];
    *buf = 136318466;
    v65 = "[WiFiLocaleManager setLocaleTestParams:]_block_invoke";
    v66 = 1024;
    v67 = v48;
    v14 = v47;
    v35 = v46;
    v68 = 1024;
    v69 = v5;
    v70 = 1024;
    *v71 = v49;
    *&v71[4] = 1024;
    *&v71[6] = v61;
    *v72 = 2112;
    *&v72[2] = v50;
    *v73 = 2112;
    *&v73[2] = v45;
    *v74 = 2112;
    *&v74[2] = v51;
    v75 = 2112;
    v76 = v63;
    v77 = 2112;
    v78 = v52;
    v79 = 2112;
    v80 = v14;
    v81 = 2048;
    v82 = v53;
    v83 = 2048;
    v84 = v10;
    v85 = 1024;
    v86 = v46;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting test params: localeCheckSuspended %d (requested %d), MCC %d (requested %d), host11d %@ (requested %@), peer %@ (requested %@), userDefaults %@ (requested %@), timeout %.2f seconds (requested %.2f seconds), forceCheck %d", buf, 0x7Au);
  }

  v54 = v14;
  v55 = [*(a1 + 40) retryTimer];

  if (v55)
  {
    v56 = [*(a1 + 40) retryTimer];
    dispatch_source_set_timer(v56, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v57 = [*(a1 + 40) localeTimer];
  [*(a1 + 40) localeTimeout];
  v59 = dispatch_time(0, (v58 * 1000000000.0));
  [*(a1 + 40) localeTimeout];
  dispatch_source_set_timer(v57, v59, (v60 * 1000000000.0), 0);

  v11 = v45;
  v13 = v62;
  v12 = v63;
  v14 = v54;
  if (v35)
  {
LABEL_28:
    [*(a1 + 40) determineLocale:1];
  }

LABEL_29:
}

- (void)determineLocale:(unsigned __int8)locale
{
  localeCopy = locale;
  v45 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  delegate = [(WiFiLocaleManager *)self delegate];
  if ([delegate suspendLocaleCheck] == 1)
  {

LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(WiFiLocaleManager *)localeCopy determineLocale:?];
    }

    getDeviceCountryCode = 0;
LABEL_7:
    getLocaleFromRemoteClient = 0;
    goto LABEL_8;
  }

  localeCheckSuspended = [(WiFiLocaleManager *)self localeCheckSuspended];

  if (localeCheckSuspended)
  {
    goto LABEL_4;
  }

  delegate2 = [(WiFiLocaleManager *)self delegate];
  getDeviceCountryCode = [delegate2 getDeviceCountryCode];

  if ([(WiFiLocaleManager *)self isDefaultCountryCode:getDeviceCountryCode])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Default locale in use, determine fresh locale", &v37, 2u);
    }

    [(WiFiLocaleManager *)self setLocaleCountryCode:0];
    [(WiFiLocaleManager *)self setLocaleSource:0];
  }

  if (!localeCopy && ![(WiFiLocaleManager *)self shouldDetermineNewLocale])
  {
    [(WiFiLocaleManager *)self localeLastUpdatedTime];
    v13 = v6 - v12;
    [(WiFiLocaleManager *)self localeTimeout];
    if (v13 < v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        localeCountryCode = [(WiFiLocaleManager *)self localeCountryCode];
        dateFormatter = [(WiFiLocaleManager *)self dateFormatter];
        v17 = MEMORY[0x277CBEAA8];
        [(WiFiLocaleManager *)self localeLastUpdatedTime];
        v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
        v19 = [dateFormatter stringFromDate:v18];
        [(WiFiLocaleManager *)self localeLastUpdatedTime];
        v21 = (v6 - v20) / 60.0;
        [(WiFiLocaleManager *)self localeTimeout];
        v37 = 138413058;
        v38 = localeCountryCode;
        v39 = 2112;
        v40 = v19;
        v41 = 2048;
        v42 = v21;
        v43 = 2048;
        v44 = v22 / 60.0;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale <%@> was determined at %@, has been valid for %.2f mins [cache timeout %.2f mins]", &v37, 0x2Au);
      }

      goto LABEL_7;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v37 = 67109120;
    LODWORD(v38) = localeCopy;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to determine locale (forceCheck %d)...", &v37, 8u);
  }

  getLocaleFromRemoteClient = [(WiFiLocaleManager *)self getLocaleFromRemoteClient];
  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromRemoteClient])
  {
    v31 = 8;
    goto LABEL_42;
  }

  getLocaleFromCompanion = [(WiFiLocaleManager *)self getLocaleFromCompanion];

  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromCompanion])
  {
    v31 = 1;
LABEL_33:
    getLocaleFromRemoteClient = getLocaleFromCompanion;
    goto LABEL_42;
  }

  locationManager = [(WiFiLocaleManager *)self locationManager];
  isAuthorized = [locationManager isAuthorized];

  if (isAuthorized)
  {
    getLocaleFromRemoteClient = [(WiFiLocaleManager *)self getLocaleFromMcc];

    if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromRemoteClient])
    {
      v31 = 2;
      goto LABEL_42;
    }

    getLocaleFromCompanion = getLocaleFromRemoteClient;
  }

  locationManager2 = [(WiFiLocaleManager *)self locationManager];
  isAuthorized2 = [locationManager2 isAuthorized];

  if (isAuthorized2)
  {
    locationManager3 = [(WiFiLocaleManager *)self locationManager];
    latestLocation = [locationManager3 latestLocation];

    [(WiFiLocaleManager *)self localeTimeout];
    v30 = [WiFiLocationManager isLocationValid:latestLocation uptoSeconds:0 isHighAccuracy:?];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109120;
      LODWORD(v38) = v30;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to get cached/leeched location (isValid %d)", &v37, 8u);
    }

    if (v30)
    {
      getLocaleFromRemoteClient = [(WiFiLocaleManager *)self getLocaleFromLocation:latestLocation];

      if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromRemoteClient])
      {

        v31 = 3;
        goto LABEL_42;
      }
    }

    else
    {
      getLocaleFromRemoteClient = getLocaleFromCompanion;
    }
  }

  else
  {
    getLocaleFromRemoteClient = getLocaleFromCompanion;
  }

  locationManager4 = [(WiFiLocaleManager *)self locationManager];
  isAuthorized3 = [locationManager4 isAuthorized];

  if (isAuthorized3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to get low accuracy location", &v37, 2u);
    }

    locationManager5 = [(WiFiLocaleManager *)self locationManager];
    [locationManager5 requestLowAccuracyLocationUpdate];

    [(WiFiLocaleManager *)self setIsWaitingForLocationUpdate:1];
    v31 = 0;
LABEL_42:
    if (!getLocaleFromRemoteClient)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

  getLocaleFromCompanion = [(WiFiLocaleManager *)self getLocaleFromMultiple80211d];

  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromCompanion])
  {
    v31 = 4;
    goto LABEL_33;
  }

  getLocaleFromRemoteClient = [(WiFiLocaleManager *)self getLocaleFromPeer];

  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromRemoteClient])
  {
    v31 = 5;
    goto LABEL_42;
  }

  getLocaleFromCompanion = [(WiFiLocaleManager *)self getLocaleFromTimezone];

  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromCompanion])
  {
    v31 = 6;
    goto LABEL_33;
  }

  getLocaleFromRemoteClient = [(WiFiLocaleManager *)self getLocaleFromUserDefaults];

  if (![(WiFiLocaleManager *)self isDefaultCountryCode:getLocaleFromRemoteClient])
  {
    v31 = 7;
    goto LABEL_42;
  }

  v31 = 0;
  getLocaleFromRemoteClient = &stru_28487EF20;
LABEL_43:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(WiFiLocaleManager *)self setLocaleLastUpdatedTime:?];
  [(WiFiLocaleManager *)self setAggressiveRetryAttemptsRemaining:5];
  retryTimer = [(WiFiLocaleManager *)self retryTimer];

  if (retryTimer)
  {
    retryTimer2 = [(WiFiLocaleManager *)self retryTimer];
    dispatch_source_cancel(retryTimer2);

    [(WiFiLocaleManager *)self setRetryTimer:0];
  }

  [(WiFiLocaleManager *)self setCountryCode:getLocaleFromRemoteClient source:v31];
LABEL_8:
}

- (id)getLocaleFromRemoteClient
{
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(WiFiLocaleManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WiFiLocaleManager *)self delegate];
    getRemoteClientCountryCode = [delegate2 getRemoteClientCountryCode];
  }

  else
  {
    getRemoteClientCountryCode = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = getRemoteClientCountryCode;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from authorized client: <%@>", &v8, 0xCu);
  }

  return getRemoteClientCountryCode;
}

- (id)getLocaleFromMultiple80211d
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0;
  testHost11d = [(WiFiLocaleManager *)self testHost11d];

  if (!testHost11d)
  {
    delegate = [(WiFiLocaleManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      testUserDefaults = [(WiFiLocaleManager *)self testUserDefaults];
      if (!testUserDefaults)
      {

        goto LABEL_23;
      }

      v11 = testUserDefaults;
      testUserDefaults2 = [(WiFiLocaleManager *)self testUserDefaults];
      v13 = [testUserDefaults2 caseInsensitiveCompare:@"OFF"];

      if (!v13)
      {
LABEL_23:
        delegate2 = [(WiFiLocaleManager *)self delegate];
        v8 = [delegate2 get80211dCountryCodes:&v28];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v8 count];
          *buf = 134218240;
          v30 = v17;
          v31 = 2048;
          v32 = v28;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%lu country code(s) currently advertised by %lu networks", buf, 0x16u);
        }

        if (v28 >= 3)
        {
          objectEnumerator = [v8 objectEnumerator];
          nextObject = [objectEnumerator nextObject];
          v20 = 0;
          if (nextObject)
          {
            v21 = 0;
            v22 = 0;
            v23 = MEMORY[0x277D86220];
            *&v19 = 138412290;
            v27 = v19;
            do
            {
              v24 = v22;
              v22 = [v8 countForObject:{nextObject, v27}];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v30 = nextObject;
                v31 = 2048;
                v32 = v22;
                _os_log_impl(&dword_2332D7000, v23, OS_LOG_TYPE_DEFAULT, "Country <%@> IE count %lu", buf, 0x16u);
              }

              if (v22 < 2 || v22 < v24)
              {
                v22 = v24;
              }

              else
              {
                v25 = nextObject;

                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v27;
                  v30 = v25;
                  _os_log_impl(&dword_2332D7000, v23, OS_LOG_TYPE_DEFAULT, "Currently highest country <%@>", buf, 0xCu);
                }

                v21 = v24;
                v20 = v25;
              }

              nextObject2 = [objectEnumerator nextObject];

              nextObject = nextObject2;
            }

            while (nextObject2);
            if (v22 == v21)
            {
              nextObject = 0;
            }

            else
            {
              nextObject = [v20 copy];
            }
          }

          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_19;
  }

  testHost11d2 = [(WiFiLocaleManager *)self testHost11d];
  v5 = [testHost11d2 caseInsensitiveCompare:@"OFF"];

  if (v5)
  {
    testHost11d3 = [(WiFiLocaleManager *)self testHost11d];
    nextObject = [testHost11d3 copy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = nextObject;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using testHost11d [%@]", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from 80211d info is disabled", buf, 2u);
  }

  v8 = 0;
LABEL_13:
  nextObject = 0;
LABEL_14:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = nextObject;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from multiple 80211d info: <%@>", buf, 0xCu);
  }

  v14 = nextObject;

LABEL_19:

  return v14;
}

- (id)getLocaleFromPeer
{
  v14 = *MEMORY[0x277D85DE8];
  testPeer = [(WiFiLocaleManager *)self testPeer];

  if (!testPeer)
  {
    delegate = [(WiFiLocaleManager *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(WiFiLocaleManager *)self delegate];
      getPeerCountryCode = [delegate2 getPeerCountryCode];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  testPeer2 = [(WiFiLocaleManager *)self testPeer];
  v5 = [testPeer2 caseInsensitiveCompare:@"OFF"];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from peer is disabled", &v12, 2u);
    }

LABEL_9:
    getPeerCountryCode = 0;
    goto LABEL_10;
  }

  testPeer3 = [(WiFiLocaleManager *)self testPeer];
  getPeerCountryCode = [testPeer3 copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = getPeerCountryCode;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using testPeer [%@]", &v12, 0xCu);
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = getPeerCountryCode;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from peer: <%@>", &v12, 0xCu);
  }

  return getPeerCountryCode;
}

- (id)getLocaleFromTimezone
{
  v13 = *MEMORY[0x277D85DE8];
  getRestrictedCountryCodeFromTimezone = [(WiFiLocaleManager *)self getRestrictedCountryCodeFromTimezone];
  getRestrictedCountryCodeFromRegionInfo = [(WiFiLocaleManager *)self getRestrictedCountryCodeFromRegionInfo];
  testTimeZoneCC = self->_testTimeZoneCC;
  if (testTimeZoneCC)
  {
    v6 = testTimeZoneCC;

    v7 = self->_testTimeZoneCC;
    getRestrictedCountryCodeFromRegionInfo = v7;
    getRestrictedCountryCodeFromTimezone = v6;
  }

  v8 = 0;
  if (getRestrictedCountryCodeFromTimezone && getRestrictedCountryCodeFromRegionInfo)
  {
    if ([getRestrictedCountryCodeFromTimezone compare:getRestrictedCountryCodeFromRegionInfo options:1])
    {
      v8 = @"XZ";
    }

    else
    {
      v8 = getRestrictedCountryCodeFromTimezone;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from timezone: <%@>", &v11, 0xCu);
  }

  v9 = v8;

  return v8;
}

- (id)getLocaleFromUserDefaults
{
  v17 = *MEMORY[0x277D85DE8];
  testUserDefaults = [(WiFiLocaleManager *)self testUserDefaults];

  if (!testUserDefaults)
  {
    delegate = [(WiFiLocaleManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      testHost11d = [(WiFiLocaleManager *)self testHost11d];
      if (!testHost11d)
      {

LABEL_19:
        delegate2 = [(WiFiLocaleManager *)self delegate];
        getCountryCodeFromUserDefaults = [delegate2 getCountryCodeFromUserDefaults];

        goto LABEL_13;
      }

      v10 = testHost11d;
      testHost11d2 = [(WiFiLocaleManager *)self testHost11d];
      v12 = [testHost11d2 caseInsensitiveCompare:@"OFF"];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_12:
    getCountryCodeFromUserDefaults = 0;
    goto LABEL_13;
  }

  testUserDefaults2 = [(WiFiLocaleManager *)self testUserDefaults];
  v5 = [testUserDefaults2 caseInsensitiveCompare:@"OFF"];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from user defaults is disabled", &v15, 2u);
    }

    goto LABEL_12;
  }

  testUserDefaults3 = [(WiFiLocaleManager *)self testUserDefaults];
  getCountryCodeFromUserDefaults = [testUserDefaults3 copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = getCountryCodeFromUserDefaults;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using user defaults [%@]", &v15, 0xCu);
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = getCountryCodeFromUserDefaults;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from user defaults <%@>", &v15, 0xCu);
  }

  return getCountryCodeFromUserDefaults;
}

- (id)applySetCountryCodeExceptions:(id)exceptions
{
  v10 = *MEMORY[0x277D85DE8];
  exceptionsCopy = exceptions;
  v4 = exceptionsCopy;
  if (![(__CFString *)exceptionsCopy caseInsensitiveCompare:@"EU"])
  {

    v4 = @"DE";
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = exceptionsCopy;
      v8 = 2112;
      v9 = @"DE";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Switching locale %@ => %@", &v6, 0x16u);
    }
  }

  if (![(__CFString *)exceptionsCopy caseInsensitiveCompare:@"IR"]|| ![(__CFString *)exceptionsCopy caseInsensitiveCompare:@"KP"])
  {

    v4 = &stru_28487EF20;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      v7 = exceptionsCopy;
      v8 = 2112;
      v9 = &stru_28487EF20;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Switching locale %@ => %@", &v6, 0x16u);
    }
  }

  return v4;
}

uint64_t __43__WiFiLocaleManager_setCountryCode_source___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Set locale retry timer fired. Retrying for country code : %@", &v4, 0xCu);
  }

  return [*(a1 + 40) retrySetCountryCode:*(a1 + 32) source:*(a1 + 48)];
}

- (void)didChangeAuthorizationStatus
{
  queue = [(WiFiLocaleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WiFiLocaleManager_didChangeAuthorizationStatus__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  queue = [(WiFiLocaleManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WiFiLocaleManager_didUpdateLocations___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = locationsCopy;
  v6 = locationsCopy;
  dispatch_async(queue, v7);
}

void __40__WiFiLocaleManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) isWaitingForLocationUpdate])
  {
    __40__WiFiLocaleManager_didUpdateLocations___block_invoke_cold_1();
    return;
  }

  [*(a1 + 32) setIsWaitingForLocationUpdate:0];
  v2 = *(a1 + 40);
  [*(a1 + 32) localeTimeout];
  v3 = [WiFiLocationManager isLocationValid:v2 uptoSeconds:0 isHighAccuracy:?];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to get locale from updated location (isValid %d)", v9, 8u);
  }

  v4 = [*(a1 + 32) getLocaleFromRemoteClient];
  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 8;
    goto LABEL_19;
  }

  if (v3)
  {
    v5 = [*(a1 + 32) getLocaleFromLocation:*(a1 + 40)];

    if (![*(a1 + 32) isDefaultCountryCode:v5])
    {
      v6 = 3;
LABEL_18:
      v4 = v5;
      goto LABEL_19;
    }

    v4 = v5;
  }

  if (![*(a1 + 32) shouldDetermineNewLocale])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) getLocaleFromMultiple80211d];

  if (![*(a1 + 32) isDefaultCountryCode:v5])
  {
    v6 = 4;
    goto LABEL_18;
  }

  v4 = [*(a1 + 32) getLocaleFromPeer];

  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 5;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) getLocaleFromTimezone];

  if (![*(a1 + 32) isDefaultCountryCode:v5])
  {
    v6 = 6;
    goto LABEL_18;
  }

  v4 = [*(a1 + 32) getLocaleFromUserDefaults];

  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 7;
LABEL_19:
    if (!v4)
    {
      return;
    }

    goto LABEL_20;
  }

  v6 = 0;
  v4 = &stru_28487EF20;
LABEL_20:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setLocaleLastUpdatedTime:?];
  [*(a1 + 32) setAggressiveRetryAttemptsRemaining:5];
  v7 = [*(a1 + 32) retryTimer];

  if (v7)
  {
    v8 = [*(a1 + 32) retryTimer];
    dispatch_source_cancel(v8);

    [*(a1 + 32) setRetryTimer:0];
  }

  [*(a1 + 32) setCountryCode:v4 source:v6];
}

- (void)didFailWithError:(id)error
{
  queue = [(WiFiLocaleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WiFiLocaleManager_didFailWithError___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__WiFiLocaleManager_didFailWithError___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) shouldDetermineNewLocale])
  {
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to determine locale when location services failed", v7, 2u);
  }

  v2 = [*(a1 + 32) getLocaleFromRemoteClient];
  if (![*(a1 + 32) isDefaultCountryCode:v2])
  {
    v4 = 8;
    if (!v2)
    {
      return;
    }

    goto LABEL_16;
  }

  v3 = [*(a1 + 32) getLocaleFromMultiple80211d];

  if (![*(a1 + 32) isDefaultCountryCode:v3])
  {
    v4 = 4;
    goto LABEL_13;
  }

  v2 = [*(a1 + 32) getLocaleFromPeer];

  if (![*(a1 + 32) isDefaultCountryCode:v2])
  {
    v4 = 5;
    if (!v2)
    {
      return;
    }

    goto LABEL_16;
  }

  v3 = [*(a1 + 32) getLocaleFromTimezone];

  if (![*(a1 + 32) isDefaultCountryCode:v3])
  {
    v4 = 6;
LABEL_13:
    v2 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_16;
  }

  v2 = [*(a1 + 32) getLocaleFromUserDefaults];

  if ([*(a1 + 32) isDefaultCountryCode:v2])
  {

    v4 = 0;
    v2 = &stru_28487EF20;
  }

  else
  {
    v4 = 7;
    if (!v2)
    {
      return;
    }
  }

LABEL_16:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setLocaleLastUpdatedTime:?];
  [*(a1 + 32) setAggressiveRetryAttemptsRemaining:5];
  v5 = [*(a1 + 32) retryTimer];

  if (v5)
  {
    v6 = [*(a1 + 32) retryTimer];
    dispatch_source_cancel(v6);

    [*(a1 + 32) setRetryTimer:0];
  }

  [*(a1 + 32) setCountryCode:v2 source:v4];
}

- (unsigned)getNetworkReachability
{
  v7 = *MEMORY[0x277D85DE8];
  address = xmmword_2333AB0B0;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  flags = 0;
  if (v2)
  {
    v3 = v2;
    SCNetworkReachabilityGetFlags(v2, &flags);
    CFRelease(v3);
    LOBYTE(v2) = (flags & 0x40002) == 2;
  }

  return v2;
}

- (id)getLocaleUsingGeoLocationCache:(id)cache
{
  cacheCopy = cache;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  if (cacheCopy)
  {
    v4 = dispatch_semaphore_create(0);
    [cacheCopy coordinate];
    v6 = v5;
    [cacheCopy coordinate];
    v8 = [objc_alloc(MEMORY[0x277D0EB78]) initWithGEOCoordinate:{v6, v7}];
    if (v8)
    {
      [cacheCopy altitude];
      [v8 setAltitude:v9];
      [cacheCopy horizontalAccuracy];
      [v8 setHorizontalAccuracy:?];
      [cacheCopy verticalAccuracy];
      [v8 setVerticalAccuracy:?];
      referenceFrame = [cacheCopy referenceFrame];
      if (referenceFrame == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (referenceFrame == 2);
      }

      [v8 setReferenceFrame:v11];
    }

    v12 = MEMORY[0x277D0EB30];
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke;
    v18[3] = &unk_2789C66D8;
    v20 = &v21;
    v15 = v4;
    v19 = v15;
    [v12 fetchPossibleTerritoriesForLocation:v8 responseQueue:v13 responseBlock:v18];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = v22[5];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_1();
    if (v6)
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_2();
      }

      goto LABEL_44;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  if (v5)
  {
    v27 = v6;
    v28 = a1;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v32;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = 0;
        do
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          if (v15)
          {
            if ([*(*(&v31 + 1) + 8 * v14) isDisputed])
            {
              if (!v10)
              {
                v10 = [v15 disputedTerritoryName];
                if (v10)
                {
                  v16 = [v15 disputedTerritoryName];
                  v17 = [v16 length];

                  if (v17)
                  {
                    v10 = [v15 disputedTerritoryName];
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v36 = v10;
                      _os_log_impl(&dword_2332D7000, v13, OS_LOG_TYPE_DEFAULT, "disputed region appointed: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v10 = 0;
                  }
                }
              }
            }

            else if (!v11)
            {
              v11 = [v15 iso3166CountryCode2];
              if (v11)
              {
                v18 = [v15 iso3166CountryCode2];
                v19 = [v18 length];

                if (v19)
                {
                  v11 = [v15 iso3166CountryCode2];
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [v15 iso3166CountryCode2];
                    *buf = 138412290;
                    v36 = v20;
                    _os_log_impl(&dword_2332D7000, v13, OS_LOG_TYPE_DEFAULT, "iso appointed: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v11 = 0;
                }
              }
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_3(v30, &v30[1]);
          }

          ++v14;
        }

        while (v9 != v14);
        v21 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
        v9 = v21;
      }

      while (v21);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v11;
      }

      *buf = 138412290;
      v36 = v22;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "iso returned: %@", buf, 0xCu);
    }

    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = v11;
    }

    a1 = v28;
    objc_storeStrong((*(*(v28 + 40) + 8) + 40), v23);
    v24 = [*(*(*(v28 + 40) + 8) + 40) copy];
    v25 = *(*(v28 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v5 = v29;
    v6 = v27;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_4();
  }

LABEL_44:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getLocaleUsingReverseGeocoder:(id)geocoder
{
  geocoderCopy = geocoder;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (geocoderCopy)
  {
    if ([(WiFiLocaleManager *)self getNetworkReachability])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBFBE0]);
      if (v5)
      {
        v6 = dispatch_semaphore_create(0);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __51__WiFiLocaleManager_getLocaleUsingReverseGeocoder___block_invoke;
        v10[3] = &unk_2789C6700;
        v12 = &v13;
        v7 = v6;
        v11 = v7;
        [v5 reverseGeocodeLocation:geocoderCopy completionHandler:v10];
        dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
        v8 = v14[5];

        goto LABEL_9;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiLocaleManager getLocaleUsingReverseGeocoder:];
    }

    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __51__WiFiLocaleManager_getLocaleUsingReverseGeocoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (!a3)
  {
    if ([v11 count])
    {
      v5 = [v11 objectAtIndex:0];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 ISOcountryCode];
        v8 = [v7 copy];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getRestrictedCountryCodeFromRegionInfo
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = xmmword_2789C6740;
  v13 = *&off_2789C6750;
  v14 = xmmword_2789C6760;
  v10 = xmmword_2789C6720;
  v11 = *&off_2789C6730;
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = &v11;
    v5 = @"PA";
    while ([v3 compare:v5 options:{1, v10, v11, v12, v13, v14}])
    {
      v6 = *v4;
      v4 += 2;
      v5 = v6;
      if (!v6)
      {
        v2 = 0;
        goto LABEL_7;
      }
    }

    v2 = [(__CFString *)*(v4 - 1) copy];
  }

LABEL_7:
  v7 = v2;

  for (i = 72; i != -8; i -= 8)
  {
  }

  return v7;
}

- (id)getRestrictedCountryCodeFromTimezone
{
  v12 = *MEMORY[0x277D85DE8];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v3 = defaultTimeZone;
  if (defaultTimeZone)
  {
    v4 = &v11 + 8;
    while (1)
    {
      name = [v3 name];
      v6 = [name compare:*(v4 - 1) options:1];

      if (!v6)
      {
        break;
      }

      v7 = *(v4 + 1);
      v4 += 16;
      if (!v7)
      {
        defaultTimeZone = 0;
        goto LABEL_7;
      }
    }

    defaultTimeZone = [*v4 copy];
  }

LABEL_7:
  v8 = defaultTimeZone;

  for (i = 72; i != -8; i -= 8)
  {
  }

  return v8;
}

+ (id)getStringOfLocaleSource:(int)source
{
  if (source > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_2789C67C0[source];
  }
}

- (id)getLocaleFromMcc
{
  v16 = *MEMORY[0x277D85DE8];
  cf = 0;
  if ([(WiFiLocaleManager *)self testMcc]== 0xFFFF)
  {
    cf = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from MCC is disabled", buf, 2u);
    }

    goto LABEL_25;
  }

  if ([(WiFiLocaleManager *)self testMcc])
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d", [(WiFiLocaleManager *)self testMcc]);
    cf = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v4, "Using testMcc [%@]", buf);
    }

    if (v3)
    {
      if (!MEMORY[0x282209FB0] || (v7 = _CTServerConnectionCopyISOForMCC(), !v7))
      {
        uppercaseString = [0 uppercaseString];
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
        *&buf[12] = 1024;
        *&buf[14] = v7;
        *&buf[18] = 1024;
        *&buf[20] = HIDWORD(v7);
        v9 = MEMORY[0x277D86220];
        v10 = "%s: Error _CTServerConnectionCopyISOForMCC: %d %d";
LABEL_23:
        v11 = 24;
        goto LABEL_24;
      }
    }
  }

  else if (MEMORY[0x282209FB8])
  {
    if (self->_ctServerConnectionRef || (v15 = 0, memset(buf, 0, sizeof(buf)), v5 = _CTServerConnectionCreateWithIdentifier(), (self->_ctServerConnectionRef = v5) != 0))
    {
      v6 = _CTServerConnectionCopyMobileCountryCode();
      if (!v6 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315650;
      *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
      *&buf[12] = 1024;
      *&buf[14] = v6;
      *&buf[18] = 1024;
      *&buf[20] = HIDWORD(v6);
      v9 = MEMORY[0x277D86220];
      v10 = "%s: Error _CTServerConnectionCopyMobileCountryCode: %d %d";
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
      v9 = MEMORY[0x277D86220];
      v10 = "%s: Error: couldn't get CTServer connection";
      v11 = 12;
LABEL_24:
      _os_log_error_impl(&dword_2332D7000, v9, OS_LOG_TYPE_ERROR, v10, buf, v11);
    }
  }

LABEL_25:
  uppercaseString = 0;
LABEL_26:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = cf;
    *&buf[12] = 2112;
    *&buf[14] = uppercaseString;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from MCC [%@]: <%@>", buf, 0x16u);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return uppercaseString;
}

- (id)getLocaleFromLocation:(id)location
{
  v13 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v4 = getenv("__OSINSTALL_ENVIRONMENT");
  if (locationCopy)
  {
    v5 = v4;
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = [OUTLINED_FUNCTION_3() getLocaleUsingGeoLocationCache:?];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v9, "Locale from location services using geolocation cache: <%@>", &v11);
    }

    if (!v6)
    {
LABEL_3:
      v6 = [OUTLINED_FUNCTION_3() getLocaleUsingBoundingBoxes:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v6;
        OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v7, "Locale from location services using bounding boxes: <%@>", &v11);
      }

      if (!(v5 | v6))
      {
        v6 = [OUTLINED_FUNCTION_3() getLocaleUsingReverseGeocoder:?];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v6;
          OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v8, "Locale from location services using reverse geocoder: <%@>", &v11);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCountryCode:(id)code source:(int)source
{
  v4 = *&source;
  v75 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  aggressiveRetryAttemptsRemaining = [(WiFiLocaleManager *)self aggressiveRetryAttemptsRemaining];
  if (!codeCopy)
  {
    v15 = 0;
    goto LABEL_46;
  }

  v8 = aggressiveRetryAttemptsRemaining;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    localeCountryCode = [(WiFiLocaleManager *)self localeCountryCode];
    [WiFiLocaleManager getStringOfLocaleSource:v4];
    v69 = 138412802;
    v70 = localeCountryCode;
    v71 = 2112;
    v72 = codeCopy;
    v74 = v73 = 2112;
    OUTLINED_FUNCTION_1();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  v15 = [OUTLINED_FUNCTION_3() applySetCountryCodeExceptions:?];
  delegate = [(WiFiLocaleManager *)self delegate];
  uppercaseString = objc_opt_respondsToSelector();

  if (uppercaseString)
  {
    delegate2 = [(WiFiLocaleManager *)self delegate];
    uppercaseString = [v15 uppercaseString];
    [delegate2 setUserDefaultCountryCode:uppercaseString];
  }

  localeCountryCode2 = [(WiFiLocaleManager *)self localeCountryCode];
  if (localeCountryCode2)
  {
    uppercaseString = [(WiFiLocaleManager *)self localeCountryCode];
    if (![v15 caseInsensitiveCompare:uppercaseString])
    {

      goto LABEL_31;
    }
  }

  localeCountryCode3 = [(WiFiLocaleManager *)self localeCountryCode];
  if (localeCountryCode3)
  {

    if (localeCountryCode2)
    {
    }
  }

  else
  {
    v21 = [v15 caseInsensitiveCompare:&stru_28487EF20];

    if (localeCountryCode2)
    {
    }

    if (!v21)
    {
LABEL_31:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v69) = 0;
        goto LABEL_33;
      }

      goto LABEL_46;
    }
  }

  localeCountryCode4 = [(WiFiLocaleManager *)self localeCountryCode];
  if ([(WiFiLocaleManager *)self isDefaultCountryCode:localeCountryCode4]|| ![(WiFiLocaleManager *)self isDefaultCountryCode:v15])
  {

LABEL_21:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v69 = 138412290;
      v70 = v15;
      OUTLINED_FUNCTION_1();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    }

    delegate3 = [(WiFiLocaleManager *)self delegate];
    uppercaseString2 = [v15 uppercaseString];
    v31 = [delegate3 setDeviceCountryCode:uppercaseString2];

    if (v31 == 1)
    {
      retryTimer = [(WiFiLocaleManager *)self retryTimer];

      if (retryTimer)
      {
        retryTimer2 = [(WiFiLocaleManager *)self retryTimer];
        dispatch_source_cancel(retryTimer2);

        [(WiFiLocaleManager *)self setRetryTimer:0];
      }

      v34 = objc_alloc(MEMORY[0x277CCACA8]);
      uppercaseString3 = [v15 uppercaseString];
      v36 = [v34 initWithString:uppercaseString3];
      [(WiFiLocaleManager *)self setLocaleCountryCode:v36];

      [(WiFiLocaleManager *)self setLocaleSource:v4];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [(WiFiLocaleManager *)self localeCountryCode];
        v70 = v69 = 138412290;
        OUTLINED_FUNCTION_1();
        _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      }

      if ([(WiFiLocaleManager *)self testModeEnabled])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v43 = [MEMORY[0x277CCAB88] notificationWithName:@"Country Code was set" object:0];
        [defaultCenter postNotification:v43];
      }

      selfCopy3 = self;
      v45 = 5;
    }

    else
    {
      [(WiFiLocaleManager *)self setLocaleCountryCode:0];
      [(WiFiLocaleManager *)self setLocaleSource:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (v8 > 0)
        {
          v51 = 1;
        }

        else
        {
          v51 = 30;
        }

        v69 = 138412546;
        v70 = codeCopy;
        v71 = 1024;
        LODWORD(v72) = v51;
        OUTLINED_FUNCTION_1();
        _os_log_impl(v52, v53, v54, v55, v56, 0x12u);
      }

      retryTimer3 = [(WiFiLocaleManager *)self retryTimer];

      if (!retryTimer3)
      {
        queue = [(WiFiLocaleManager *)self queue];
        v59 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
        [(WiFiLocaleManager *)self setRetryTimer:v59];

        retryTimer4 = [(WiFiLocaleManager *)self retryTimer];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __43__WiFiLocaleManager_setCountryCode_source___block_invoke;
        handler[3] = &unk_2789C66B0;
        v66 = codeCopy;
        selfCopy2 = self;
        v68 = v4;
        dispatch_source_set_event_handler(retryTimer4, handler);

        retryTimer5 = [(WiFiLocaleManager *)self retryTimer];
        dispatch_activate(retryTimer5);
      }

      retryTimer6 = [(WiFiLocaleManager *)self retryTimer];
      if (v8 < 1)
      {
        v64 = dispatch_time(0, 30000000000);
        OUTLINED_FUNCTION_4(v64);

        goto LABEL_46;
      }

      v63 = dispatch_time(0, 1000000000);
      OUTLINED_FUNCTION_4(v63);

      if ([(WiFiLocaleManager *)self aggressiveRetryAttemptsRemaining]< 1)
      {
        goto LABEL_46;
      }

      v45 = [(WiFiLocaleManager *)self aggressiveRetryAttemptsRemaining]- 1;
      selfCopy3 = self;
    }

    [(WiFiLocaleManager *)selfCopy3 setAggressiveRetryAttemptsRemaining:v45];
    goto LABEL_46;
  }

  testModeEnabled = [(WiFiLocaleManager *)self testModeEnabled];

  if (testModeEnabled)
  {
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v69) = 0;
LABEL_33:
    OUTLINED_FUNCTION_1();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
  }

LABEL_46:
}

- (id)getLocaleUsingBoundingBoxes:(id)boxes
{
  boxesCopy = boxes;
  v4 = boxesCopy;
  if (boxesCopy)
  {
    [boxesCopy coordinate];
    v6 = v5;
    [v4 coordinate];
    v8 = &qword_27DE0B210;
    v9 = 100;
    while (v7 < *(v8 - 2) || v7 > *v8 || v6 > *(v8 - 1) || v6 < *(v8 + 1))
    {
      v8 += 5;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    v10 = v8[2];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (void)determineLocale:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 localeCheckSuspended];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void __40__WiFiLocaleManager_didUpdateLocations___block_invoke_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "empty territory element!", buf, 2u);
}

@end