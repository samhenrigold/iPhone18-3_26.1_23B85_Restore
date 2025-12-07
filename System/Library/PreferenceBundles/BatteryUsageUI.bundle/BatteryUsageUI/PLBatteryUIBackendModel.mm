@interface PLBatteryUIBackendModel
+ (BOOL)shouldShowChargingController;
+ (BOOL)shouldShowModifiedHealthController;
+ (BOOL)supportsChargingFixedLimit;
+ (int)_getBatteryHealthServiceState;
+ (int)_getCurrentStateOfCharge;
+ (int)_getMaximumCapacity;
+ (int)getBatteryHealthServiceState;
+ (int)getCurrentStateOfCharge;
+ (int)getMaximumCapacity;
- (BOOL)isSmartChargingTempDisabled;
- (PLBatteryUIBackendModel)init;
- (id)addQueryType:(int64_t)type withEndDate:(id)date withRange:(double)range withBucketSize:(double)size isDynamicEnd:(BOOL)end;
- (id)convertResultToLegacyFormat:(id)format;
- (id)getSmartChargingSwitchState;
- (void)addSkipPlistWriteKey;
- (void)disableSmartCharging;
- (void)enableSmartCharging;
- (void)getOBCEngagedState:(BOOL *)state andDesktopMode:(BOOL *)mode;
- (void)resetQuery;
- (void)runQuery;
- (void)tempDisableSmartCharging;
- (void)updateSmartChargingState;
@end

@implementation PLBatteryUIBackendModel

- (PLBatteryUIBackendModel)init
{
  v16.receiver = self;
  v16.super_class = PLBatteryUIBackendModel;
  v2 = [(PLBatteryUIBackendModel *)&v16 init];
  if (v2)
  {
    v3 = PLCalculateEndOfHour();
    endOfHour = v2->_endOfHour;
    v2->_endOfHour = v3;

    v5 = PLCalculateEndOfDay();
    endOfDay = v2->_endOfDay;
    v2->_endOfDay = v5;

    v7 = +[NSMutableDictionary dictionary];
    queryPayload = v2->_queryPayload;
    v2->_queryPayload = v7;

    queryResult = v2->_queryResult;
    v2->_queryResult = 0;

    v10 = [PowerUISmartChargeClient alloc];
    v11 = [v10 initWithClientName:PowerUISmartChargeClientSettings];
    smartChargingClient = v2->_smartChargingClient;
    v2->_smartChargingClient = v11;

    v13 = v2;
  }

  else
  {
    v14 = BUILogCommon(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10F7B4(v14);
    }
  }

  return v2;
}

- (id)addQueryType:(int64_t)type withEndDate:(id)date withRange:(double)range withBucketSize:(double)size isDynamicEnd:(BOOL)end
{
  endCopy = end;
  dateCopy = date;
  if (endCopy)
  {
    PLBatteryUsageUIDynamicEndConfiguration();
  }

  else
  {
    PLBatteryUsageUIConfiguration();
  }
  v13 = ;
  v14 = PLBatteryUsageUIKeyForRequest();
  v15 = BUILogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v21 = 134218498;
    typeCopy2 = type;
    v23 = 2112;
    rangeCopy2 = *&v14;
    v25 = 2048;
    sizeCopy = range;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "Requesting response type: %ld, key: %@, query range: %f", &v21, 0x20u);
  }

  if (v14)
  {
    queryPayload = [(PLBatteryUIBackendModel *)self queryPayload];
    [queryPayload setObject:v13 forKeyedSubscript:v14];

    v18 = v14;
  }

  else
  {
    v19 = BUILogCommon(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 134218496;
      typeCopy2 = type;
      v23 = 2048;
      rangeCopy2 = range;
      v25 = 2048;
      sizeCopy = size;
      _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Failed to add response type:%ld range:%f bucket:%f", &v21, 0x20u);
    }
  }

  return v14;
}

- (void)runQuery
{
  queryPayload = [(PLBatteryUIBackendModel *)self queryPayload];
  v4 = [queryPayload count];

  v6 = BUILogCommon(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      queryPayload2 = [(PLBatteryUIBackendModel *)self queryPayload];
      v18 = 138412290;
      v19 = queryPayload2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "querying with %@", &v18, 0xCu);
    }

    queryPayload3 = [(PLBatteryUIBackendModel *)self queryPayload];
    v7 = PLQueryRegistered();

    v11 = BUILogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "response %@", &v18, 0xCu);
    }

    if (!v7)
    {
      v13 = BUILogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        queryPayload4 = [(PLBatteryUIBackendModel *)self queryPayload];
        v18 = 138412290;
        v19 = queryPayload4;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "no response: retrying query with %@", &v18, 0xCu);
      }

      queryPayload5 = [(PLBatteryUIBackendModel *)self queryPayload];
      v7 = PLQueryRegistered();

      v17 = BUILogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "after retry: response %@", &v18, 0xCu);
      }
    }

    [(PLBatteryUIBackendModel *)self setQueryResult:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10F850();
  }
}

- (void)resetQuery
{
  queryPayload = [(PLBatteryUIBackendModel *)self queryPayload];
  [queryPayload removeAllObjects];

  v4 = PLCalculateEndOfHour();
  endOfHour = self->_endOfHour;
  self->_endOfHour = v4;

  self->_endOfDay = PLCalculateEndOfDay();

  _objc_release_x1();
}

- (id)convertResultToLegacyFormat:(id)format
{
  formatCopy = format;
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableDictionary dictionary];
  [v5 setObject:v6 forKeyedSubscript:@"Graph"];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableArray array];
  v9 = 10;
  do
  {
    v10 = +[NSMutableDictionary dictionary];
    [v8 addObject:v10];

    --v9;
  }

  while (v9);
  v12 = BUILogCommon(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10F88C(v8);
  }

  [v6 setObject:v7 forKeyedSubscript:@"PLBatteryUIGraph24hrs"];
  [v6 setObject:v8 forKeyedSubscript:@"PLBatteryUIGraphDays"];
  endOfHour = [(PLBatteryUIBackendModel *)self endOfHour];
  [endOfHour timeIntervalSince1970];
  v14 = [NSNumber numberWithDouble:?];
  [v5 setObject:v14 forKeyedSubscript:@"endOfHour"];

  v16 = BUILogCommon(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    endOfHour2 = [(PLBatteryUIBackendModel *)self endOfHour];
    [endOfHour2 timeIntervalSince1970];
    *buf = 134217984;
    v36 = v18;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "setting end of hour:%f", buf, 0xCu);
  }

  endOfDay = [(PLBatteryUIBackendModel *)self endOfDay];
  [endOfDay timeIntervalSince1970];
  v20 = [NSNumber numberWithDouble:?];
  [v5 setObject:v20 forKeyedSubscript:@"endOfDay"];

  v22 = BUILogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    endOfDay2 = [(PLBatteryUIBackendModel *)self endOfDay];
    [endOfDay2 timeIntervalSince1970];
    *buf = 134217984;
    v36 = v24;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "setting end of day:%f", buf, 0xCu);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_B478;
  v31[3] = &unk_163F50;
  v31[4] = self;
  v25 = v5;
  v32 = v25;
  v33 = v7;
  v34 = v8;
  v26 = v8;
  v27 = v7;
  [formatCopy enumerateKeysAndObjectsUsingBlock:v31];
  v28 = v34;
  v29 = v25;

  return v25;
}

+ (int)getBatteryHealthServiceState
{
  _getBatteryHealthServiceState = [self _getBatteryHealthServiceState];
  v3 = +[PLBatteryUIUtilities inDemoMode];
  if (v3)
  {
    v4 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SVC"];
    v5 = BUILogCommon(v4);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "demo  mode: overriding svc", v9, 2u);
      }

      _getBatteryHealthServiceState = [v4 intValue];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10FC38();
      }
    }
  }

  v7 = BUILogCommon(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = _getBatteryHealthServiceState;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Svc State: %d", v9, 8u);
  }

  return _getBatteryHealthServiceState;
}

+ (int)getMaximumCapacity
{
  _getMaximumCapacity = [self _getMaximumCapacity];
  v3 = +[PLBatteryUIUtilities inDemoMode];
  if (v3)
  {
    v4 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_NCC"];
    v5 = BUILogCommon(v4);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "demo mode: overriding ncc", &v13, 2u);
      }

      _getMaximumCapacity = [v4 intValue];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10FC74();
      }
    }
  }

  v7 = BUILogCommon(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    v14 = _getMaximumCapacity;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "ncc: %d", &v13, 8u);
  }

  if (_getMaximumCapacity == -1)
  {
    v11 = BUILogCommon(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "missing NCC", &v13, 2u);
    }

    v10 = -1;
  }

  else
  {
    if (_getMaximumCapacity >= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = _getMaximumCapacity;
    }

    v10 = v9 & ~(v9 >> 31);
    v11 = BUILogCommon(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Maximum capacity: %d%%", &v13, 8u);
    }
  }

  return v10;
}

+ (int)getCurrentStateOfCharge
{
  _getCurrentStateOfCharge = [self _getCurrentStateOfCharge];
  v3 = +[PLBatteryUIUtilities inDemoMode];
  if (v3)
  {
    v4 = [PLBatteryUIUtilities getDefaultValueForKey:@"BUI_DEMO_SOC"];
    v5 = BUILogCommon(v4);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "demo mode: overriding uisoc", v9, 2u);
      }

      _getCurrentStateOfCharge = [v4 intValue];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10FCB0();
      }
    }
  }

  v7 = BUILogCommon(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = _getCurrentStateOfCharge;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "UISoC: %d", v9, 8u);
  }

  return _getCurrentStateOfCharge;
}

- (void)updateSmartChargingState
{
  smartChargingClient = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v9 = 0;
  v4 = [smartChargingClient isSmartChargingCurrentlyEnabled:&v9];
  v5 = v9;

  v7 = BUILogCommon(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10FCEC();
    }

    v4 = &dword_0 + 1;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10FD5C();
  }

  [(PLBatteryUIBackendModel *)self setSmartChargingState:v4];
}

- (BOOL)isSmartChargingTempDisabled
{
  v3 = BUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10FDCC();
  }

  v5 = BUILogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10FE08(self);
  }

  return [(PLBatteryUIBackendModel *)self smartChargingState]== &dword_0 + 3;
}

- (void)enableSmartCharging
{
  smartChargingClient = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v9 = 0;
  v3 = [smartChargingClient enableSmartCharging:&v9];
  v4 = v9;

  v6 = BUILogCommon(v5);
  v7 = v6;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10FE80();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Smart charging enabled", v8, 2u);
  }
}

- (void)tempDisableSmartCharging
{
  smartChargingClient = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v9 = 0;
  v3 = [smartChargingClient temporarilyDisableSmartCharging:&v9];
  v4 = v9;

  v6 = BUILogCommon(v5);
  v7 = v6;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10FEF0();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Smart charging temporarily disabled", v8, 2u);
  }
}

- (void)disableSmartCharging
{
  smartChargingClient = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v9 = 0;
  v3 = [smartChargingClient disableSmartCharging:&v9];
  v4 = v9;

  v6 = BUILogCommon(v5);
  v7 = v6;
  if (!v3 || v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10FF60();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Smart charging disabled", v8, 2u);
  }
}

- (id)getSmartChargingSwitchState
{
  if ([(PLBatteryUIBackendModel *)self smartChargingState]== &dword_0 + 1)
  {
    return &off_173568;
  }

  else
  {
    return &off_173580;
  }
}

- (void)getOBCEngagedState:(BOOL *)state andDesktopMode:(BOOL *)mode
{
  smartChargingClient = [(PLBatteryUIBackendModel *)self smartChargingClient];
  v11 = 0;
  v7 = [smartChargingClient isOBCEngagedAsDesktopDevice:mode chargingOverrideAllowed:0 withError:&v11];
  v8 = v11;

  if (v8)
  {
    v10 = BUILogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10FFD0();
    }

    *state = 0;
    *mode = 0;
  }

  else
  {
    *state = v7;
  }
}

+ (BOOL)shouldShowModifiedHealthController
{
  if (_os_feature_enabled_impl())
  {
    supportsChargingFixedLimit = [self supportsChargingFixedLimit];
  }

  else
  {
    supportsChargingFixedLimit = 0;
  }

  v4 = +[PLModelingUtilities isiPad];
  v5 = v4;
  v6 = BUILogCommon(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_110040();
  }

  v8 = BUILogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1100B0();
  }

  return supportsChargingFixedLimit & v5;
}

+ (BOOL)supportsChargingFixedLimit
{
  v2 = [PowerUISmartChargeClient alloc];
  v3 = [v2 initWithClientName:PowerUISmartChargeClientSettings];
  isMCLSupported = [v3 isMCLSupported];
  v5 = BUILogCommon(isMCLSupported);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_110120();
  }

  return isMCLSupported;
}

+ (BOOL)shouldShowChargingController
{
  supportsChargingFixedLimit = _os_feature_enabled_impl();
  if (supportsChargingFixedLimit)
  {
    supportsChargingFixedLimit = [self supportsChargingFixedLimit];
    v4 = supportsChargingFixedLimit;
  }

  else
  {
    v4 = 0;
  }

  v5 = BUILogCommon(supportsChargingFixedLimit);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_110190();
  }

  return v4 & +[PLModelingUtilities isiPhone];
}

- (void)addSkipPlistWriteKey
{
  queryPayload = [(PLBatteryUIBackendModel *)self queryPayload];
  [queryPayload setObject:&__kCFBooleanTrue forKeyedSubscript:@"skipPlistWriteKey"];
}

+ (int)_getCurrentStateOfCharge
{
  v2 = IOPSGetPercentRemaining();
  if (v2)
  {
    v3 = BUILogCommon(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_110200();
    }
  }

  return -1;
}

+ (int)_getMaximumCapacity
{
  v2 = BUILogCommon(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Querying NCC from IOPS", v11, 2u);
  }

  v3 = IOPSCopyPowerSourcesByType();
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    v7 = v6;
    if (v6)
    {
      intValue = [v6 intValue];
    }

    else
    {
      v9 = BUILogCommon(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_110274();
      }

      intValue = -1;
    }
  }

  else
  {
    v5 = BUILogCommon(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1102B0();
    }

    intValue = -1;
  }

  return intValue;
}

+ (int)_getBatteryHealthServiceState
{
  v2 = BUILogCommon(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Querying svc from IOPS", v11, 2u);
  }

  v3 = IOPSCopyPowerSourcesByType();
  v4 = v3;
  if (v3 && (v3 = [v3 count]) != 0)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:@"Battery Service State"];
    v7 = v6;
    if (v6)
    {
      intValue = [v6 intValue];
    }

    else
    {
      v9 = BUILogCommon(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1102EC();
      }

      intValue = -1;
    }
  }

  else
  {
    v5 = BUILogCommon(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1102B0();
    }

    intValue = -1;
  }

  return intValue;
}

@end