@interface CommandHandlerLocate
- (id)_checkForLocateParamOverrides:(id)overrides;
- (id)createLocatorWithParams:(id)params;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation CommandHandlerLocate

- (void)handleCommand
{
  provider = [(CommandHandler *)self provider];
  locServicesCapable = [provider locServicesCapable];
  isProviderEnabledForLocations = [provider isProviderEnabledForLocations];
  if (locServicesCapable)
  {
    v6 = @"Ignored Request - Location Services Not Enabled";
  }

  else
  {
    v6 = @"Ignored Request - Device Not Capable of Location Services";
  }

  v7 = 405;
  if (locServicesCapable && isProviderEnabledForLocations)
  {
    commandParams = [(CommandHandler *)self commandParams];
    v9 = [(CommandHandlerLocate *)self createLocatorWithParams:commandParams];

    standardLocator = [provider standardLocator];
    if (standardLocator)
    {
      v11 = standardLocator;
      standardLocator2 = [provider standardLocator];
      locatorRunning = [standardLocator2 locatorRunning];

      if (locatorRunning)
      {
        standardLocator3 = [provider standardLocator];
        [standardLocator3 desiredAccuracy];
        v16 = v15;
        [v9 desiredAccuracy];
        v18 = v17;

        v20 = sub_100002830(v19);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v16 <= v18)
        {
          if (v21)
          {
            standardLocator4 = [provider standardLocator];
            [standardLocator4 desiredAccuracy];
            v36 = v35;
            [v9 desiredAccuracy];
            *buf = 134218240;
            v46 = v36;
            v47 = 2048;
            v48 = v37;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Current locate command is already looking for the same/better accuracy. Ignoring new locate - current=%fm,new=%fm", buf, 0x16u);
          }

          goto LABEL_15;
        }

        if (v21)
        {
          standardLocator5 = [provider standardLocator];
          [standardLocator5 desiredAccuracy];
          v24 = v23;
          [v9 desiredAccuracy];
          *buf = 134218240;
          v46 = v24;
          v47 = 2048;
          v48 = v25;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "New locate command asks for a better accuracy than the current locate. Stopping current locate - current=%fm,new=%fm", buf, 0x16u);
        }
      }
    }

    standardLocator6 = [provider standardLocator];

    if (standardLocator6)
    {
      standardLocator7 = [provider standardLocator];
      [standardLocator7 stopLocator];

      [provider setStandardLocator:0];
    }

    v43 = @"id";
    commandID = [(CommandHandler *)self commandID];
    v44 = commandID;
    v29 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000143DC;
    v40[3] = &unk_10005D770;
    v30 = provider;
    v41 = v30;
    v42 = v29;
    v20 = v29;
    [v9 setReceivedLocationBlock:v40];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000143FC;
    v38[3] = &unk_10005D2B0;
    v31 = v30;
    v39 = v31;
    [v9 setStoppedLocatorBlock:v38];
    [v31 setStandardLocator:v9];
    [v9 startLocator];

LABEL_15:
    v6 = @"OK";
    v7 = 200;
  }

  v32 = +[NSMutableDictionary dictionary];
  v33 = [NSNumber numberWithInt:v7];
  [v32 setObject:v33 forKeyedSubscript:@"status"];

  [v32 setObject:v6 forKeyedSubscript:@"message"];
  [(CommandHandler *)self didHandleCommandWithAckData:v32];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(CommandHandler *)self ackDataForCommand];
  v5 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v5 intValue];

  v7 = [ackDataForCommand objectForKeyedSubscript:@"message"];
  provider = [(CommandHandler *)self provider];
  commandParams = [(CommandHandler *)self commandParams];
  [provider ackLocateCommand:commandParams withStatusCode:intValue andStatusMessage:v7 withCompletion:completionCopy];
}

- (id)_checkForLocateParamOverrides:(id)overrides
{
  overridesCopy = overrides;
  stringByExpandingTildeInPath = [@"/var/mobile/Library/Application Support/FMFLocator/locateOverrides.json" stringByExpandingTildeInPath];
  v5 = overridesCopy;
  if (stringByExpandingTildeInPath)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:stringByExpandingTildeInPath];

    v5 = overridesCopy;
    if (v7)
    {
      v9 = sub_100002830(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000372BC(v9);
      }

      v10 = +[NSFileManager defaultManager];
      v11 = [v10 contentsAtPath:stringByExpandingTildeInPath];

      v23 = 0;
      v12 = [NSJSONSerialization JSONObjectWithData:v11 options:1 error:&v23];
      v13 = v23;
      v5 = [overridesCopy mutableCopy];
      keyEnumerator = [v12 keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      if (nextObject)
      {
        v17 = nextObject;
        *&v16 = 138412546;
        v22 = v16;
        do
        {
          v18 = [v12 objectForKeyedSubscript:{v17, v22}];
          v19 = sub_100002830(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            v25 = v17;
            v26 = 2112;
            v27 = v18;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Locate Param Overridden: %@=%@", buf, 0x16u);
          }

          [v5 setValue:v18 forKey:v17];
          nextObject2 = [keyEnumerator nextObject];

          v17 = nextObject2;
        }

        while (nextObject2);
      }
    }
  }

  return v5;
}

- (id)createLocatorWithParams:(id)params
{
  paramsCopy = params;
  provider = [(CommandHandler *)self provider];
  v6 = [Locator alloc];
  newLocationManager = [provider newLocationManager];
  v8 = [(Locator *)v6 initWithLocationManager:newLocationManager];

  v10 = sub_100002830(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(CommandHandlerLocate *)self fm_logID];
    serviceName = [provider serviceName];
    v24 = 138412546;
    v25 = fm_logID;
    v26 = 2112;
    v27 = serviceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Created %@ for service %@", &v24, 0x16u);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(CommandHandlerLocate *)self _checkForLocateParamOverrides:paramsCopy];
  v15 = [v14 objectForKeyedSubscript:@"locationTimeout"];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    [(Locator *)v8 setDuration:?];
  }

  v17 = [v14 objectForKeyedSubscript:@"startThreshold"];

  if (v17)
  {
    [v17 doubleValue];
    [(Locator *)v8 setStartThreshold:?];
  }

  v18 = [v14 objectForKeyedSubscript:@"endThreshold"];

  if (v18)
  {
    [v18 doubleValue];
    [(Locator *)v8 setEndThreshold:?];
  }

  v19 = [v14 objectForKeyedSubscript:@"decayFactor"];

  if (v19)
  {
    [v19 doubleValue];
    [(Locator *)v8 setDecayFactor:?];
  }

  v20 = [v14 objectForKeyedSubscript:@"desiredAccuracy"];

  if (v20)
  {
    [v20 doubleValue];
    [(Locator *)v8 setDesiredAccuracy:?];
  }

  v21 = [v14 objectForKeyedSubscript:@"locationValidityDuration"];

  if (v21)
  {
    [v21 doubleValue];
    [(Locator *)v8 setCachedLocValidityDuration:?];
  }

  v22 = v8;
  objc_autoreleasePoolPop(v13);

  return v22;
}

@end