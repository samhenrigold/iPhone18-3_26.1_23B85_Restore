@interface FMDCommandHandlerLocate
- (id)createLocatorWithParams:(id)params;
- (id)locationPublisherWithParams:(id)params;
- (void)_notifyAboutLocatingState;
- (void)_sendAccessoryCurrentLocationsForCmd:(id)cmd reason:(int64_t)reason locator:(id)locator accessoryIdentifier:(id)identifier;
- (void)_sendCurrentLocation:(id)location isFinished:(BOOL)finished forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change;
- (void)_sendTrackedLocations;
- (void)_showAlertAfterUnlock:(id)unlock;
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerLocate

- (void)handleCommand
{
  v3 = qword_100312B58;
  provider = [(FMDCommandHandler *)self provider];
  v4 = +[FMDSystemConfig sharedInstance];
  isLocationServicesCapable = [v4 isLocationServicesCapable];

  v6 = +[FMDSystemConfig sharedInstance];
  canHandleLocates = [v6 canHandleLocates];

  v8 = qword_100312B68;
  v9 = @"Ignored Request - Location Services Not Enabled";
  if (canHandleLocates)
  {
    v9 = 0;
    v8 = v3;
  }

  v10 = isLocationServicesCapable == 0;
  if (isLocationServicesCapable)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"Ignored Request - Device Not Capable of Location Services";
  }

  if (v10)
  {
    v8 = qword_100312B60;
  }

  v104 = v8;
  if (v8 == qword_100312B58)
  {
    commandParams = [(FMDCommandHandler *)self commandParams];
    val = [(FMDCommandHandlerLocate *)self createLocatorWithParams:commandParams];

    standardLocator = [provider standardLocator];
    if (standardLocator)
    {
      standardLocator2 = [provider standardLocator];
      locatorRunning = [standardLocator2 locatorRunning];

      if (locatorRunning)
      {
        standardLocator3 = [provider standardLocator];
        [standardLocator3 desiredAccuracy];
        v18 = v17;
        [val desiredAccuracy];
        v20 = v18 > v19;

        oslog = sub_100002880(v21);
        v22 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          if (v22)
          {
            standardLocator4 = [provider standardLocator];
            [standardLocator4 desiredAccuracy];
            v69 = v68;
            [val desiredAccuracy];
            *buf = 134218240;
            *&buf[4] = v69;
            *&buf[12] = 2048;
            *&buf[14] = v70;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Current locate command is already looking for the same/better accuracy. Ignoring new locate - current=%fm,new=%fm", buf, 0x16u);
          }

          goto LABEL_48;
        }

        if (v22)
        {
          standardLocator5 = [provider standardLocator];
          [standardLocator5 desiredAccuracy];
          v25 = v24;
          [val desiredAccuracy];
          *buf = 134218240;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "New locate command asks for a better accuracy than the current locate. Stopping current locate - current=%fm,new=%fm", buf, 0x16u);
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

    v29 = +[FMDPreferencesMgr simulateLocateNotification];
    if (v29)
    {
      v30 = sub_100002880(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Simulating locate notification...", buf, 2u);
      }

      commandParams2 = [(FMDCommandHandler *)self commandParams];
      v32 = [commandParams2 mutableCopy];

      [v32 setObject:@"Find My iPhone" forKeyedSubscript:@"title"];
      [v32 setObject:@"This device's location was accessed using Find My iPhone" forKeyedSubscript:@"text"];
      [v32 setObject:@"OK" forKeyedSubscript:@"okButtonTitle"];
      v33 = [v32 copy];
      [(FMDCommandHandler *)self setCommandParams:v33];
    }

    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v98 = [commandParams3 objectForKeyedSubscript:@"text"];

    if (v98 && +[FMDPreferencesMgr locateNotificationsEnabled])
    {
      osloga = objc_alloc_init(FMAlert);
      [osloga setCategory:3];
      [osloga setMsgText:v98];
      commandParams4 = [(FMDCommandHandler *)self commandParams];
      v36 = [commandParams4 objectForKeyedSubscript:@"title"];
      [osloga setMsgTitle:v36];

      [osloga setShowMsgInLockScreen:1];
      [osloga setDismissMsgOnUnlock:0];
      [osloga setDismissMsgOnLock:0];
      commandParams5 = [(FMDCommandHandler *)self commandParams];
      v38 = [commandParams5 objectForKeyedSubscript:@"okButtonTitle"];
      [osloga setDefaultButtonTitle:v38];
    }

    else
    {
      osloga = 0;
    }

    v131 = @"id";
    commandID = [(FMDCommandHandler *)self commandID];
    v132 = commandID;
    v40 = [NSDictionary dictionaryWithObjects:&v132 forKeys:&v131 count:1];

    commandParams6 = [(FMDCommandHandler *)self commandParams];
    v42 = [commandParams6 objectForKey:@"udid"];
    fm_nullToNil = [v42 fm_nullToNil];

    if (fm_nullToNil)
    {
      v44 = [[FMDAccessoryIdentifier alloc] initWithString:fm_nullToNil];
      [(FMDCommandHandlerLocate *)self setAccessoryIdentifier:v44];
    }

    v45 = sub_100002880(v43);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate Will send accessory locations.", buf, 2u);
    }

    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v101 = [(FMDCommandHandlerLocate *)self createLocatorWithParams:commandParams7];

    commandParams8 = [(FMDCommandHandler *)self commandParams];
    v97 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:commandParams8];

    [v101 setLocatorPublisher:v97];
    accessoryIdentifier = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    [(FMDCommandHandlerLocate *)self _sendAccessoryCurrentLocationsForCmd:v40 reason:1 locator:v101 accessoryIdentifier:accessoryIdentifier];

    commandParams9 = [(FMDCommandHandler *)self commandParams];
    v99 = [commandParams9 objectForKey:@"scanDurationInSeconds"];

    accessoryRegistry = [provider accessoryRegistry];
    accessoryIdentifier2 = [(FMDCommandHandlerLocate *)self accessoryIdentifier];
    v52 = [accessoryRegistry accessoryForIdentifier:accessoryIdentifier2];

    accessoryIdentifier3 = [v52 accessoryIdentifier];
    stringValue = [accessoryIdentifier3 stringValue];

    [v99 doubleValue];
    if (v54 <= 0.0)
    {
      v61 = 0;
      v62 = 0;
      v94 = 0;
      v63 = 0;
LABEL_46:
      newDiscovery = 0;
LABEL_47:
      v71 = provider;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v130 = 0;
      commandParams10 = [(FMDCommandHandler *)self commandParams];
      v73 = [(FMDCommandHandlerLocate *)self locationPublisherWithParams:commandParams10];

      objc_initWeak(&location, val);
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_1001BF95C;
      v116[3] = &unk_1002D0D68;
      selfCopy = self;
      v116[4] = selfCopy;
      v74 = v63;
      v117 = v74;
      v92 = v40;
      v118 = v92;
      v75 = v52;
      v119 = v75;
      v76 = v61;
      v120 = v76;
      v77 = stringValue;
      v121 = v77;
      v78 = v62;
      v122 = v78;
      v79 = newDiscovery;
      v123 = v79;
      v80 = v71;
      v124 = v80;
      objc_copyWeak(&v127, &location);
      v126 = buf;
      oslog = osloga;
      v125 = oslog;
      [v73 startPublishingWithBlock:v116];
      [val setLocatorPublisher:v73];
      v107[0] = _NSConcreteStackBlock;
      v107[1] = 3221225472;
      v107[2] = sub_1001BFF24;
      v107[3] = &unk_1002D0D90;
      v81 = v80;
      v108 = v81;
      v96 = v74;
      v109 = v96;
      v82 = v75;
      v110 = v82;
      v83 = v76;
      v111 = v83;
      v84 = v77;
      v112 = v84;
      v85 = v78;
      v113 = v85;
      v86 = v79;
      v114 = v86;
      v87 = v73;
      v115 = v87;
      [val setStoppedLocatorBlock:v107];
      [v81 setStandardLocator:val];
      [val startLocator];

      objc_destroyWeak(&v127);
      objc_destroyWeak(&location);

      _Block_object_dispose(buf, 8);
LABEL_48:

      v11 = @"OK";
      goto LABEL_49;
    }

    category = [v52 category];
    if (category != 3)
    {
      v64 = sub_100002880(category);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "FMDCommandHandlerLocate starting BLE discovery.", buf, 2u);
      }

      bluetoothManager = [provider bluetoothManager];
      newDiscovery = [bluetoothManager newDiscovery];

      [v99 doubleValue];
      [newDiscovery startDiscoveryForDuration:?];
      if (newDiscovery)
      {
        v63 = +[NSDate date];
        v61 = 0;
        v62 = 0;
        v94 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v94 = 0;
        v63 = 0;
      }

      goto LABEL_47;
    }

    v56 = v52;
    if (v56 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v57 = +[FMDExtConfigurationRegistry sharedInstance];
      accessoryType = [v56 accessoryType];
      v59 = [v57 configForAccessoryType:accessoryType];

      v94 = [v59 flavorForFeature:@"availability"];
      accessoryRegistry2 = [provider accessoryRegistry];
      v61 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"availability" flavor:v94 withDelegate:accessoryRegistry2];

      v62 = [v59 infoForFeature:@"availability"];
      [v99 doubleValue];
      [v61 startDiscoveryForAccessory:stringValue duration:v62 info:&stru_1002D0D18 withCompletion:?];

      if (v61)
      {
        v63 = +[NSDate date];
LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
      v94 = 0;
      v62 = 0;
      v61 = 0;
    }

    v63 = 0;
    goto LABEL_45;
  }

LABEL_49:
  commandParams11 = [(FMDCommandHandler *)self commandParams];
  v89 = [commandParams11 objectForKeyedSubscript:@"includeTrackingInfo"];

  if (v89 && [v89 BOOLValue])
  {
    [(FMDCommandHandlerLocate *)self _sendTrackedLocations];
  }

  [(FMDCommandHandlerLocate *)self _notifyAboutLocatingState];
  v90 = +[NSMutableDictionary dictionary];
  v91 = [NSNumber numberWithInteger:v104];
  [v90 setObject:v91 forKeyedSubscript:@"status"];

  if (v11)
  {
    [v90 setObject:v11 forKeyedSubscript:@"message"];
  }

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v90];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v6 intValue];

  v8 = [ackDataForCommand objectForKeyedSubscript:@"message"];
  commandParams = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  v12 = provider;
  if (v10)
  {
    v26 = intValue;
    v25 = [NSURL URLWithString:v10];
    v13 = [FMDActingRequestDecorator alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001C0434;
    v32[3] = &unk_1002CD580;
    v32[4] = self;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001C04DC;
    v30[3] = &unk_1002CDF18;
    v30[4] = self;
    v14 = v12;
    v31 = v14;
    v15 = [(FMDActingRequestDecorator *)v13 initWithDeviceContextGenerator:v32 deviceInfoGenerator:v30 serverContextGenerator:0 requestHeaderGenerator:0];
    v16 = v8;
    v17 = [FMDRequestAckLocate alloc];
    [v14 account];
    v18 = v10;
    v19 = ackDataForCommand;
    v21 = v20 = v12;
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v23 = [(FMDRequestAckLocate *)v17 initWithAccount:v21 locateCommand:commandParams2 ackURL:v25 cmdStatusCode:v26 cmdStatusMessage:v16];

    v12 = v20;
    ackDataForCommand = v19;
    v10 = v18;
    [(FMDRequest *)v23 setDecorator:v15];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001C05F0;
    v28[3] = &unk_1002CD1D0;
    v29 = completionCopy;
    [(FMDRequest *)v23 setCompletionHandler:v28];
    [v14 enqueueRequest:v23];

    v8 = v16;
    v24 = v25;
  }

  else
  {
    v24 = sub_100002880(provider);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not acking the locate command because there is no ack URL", buf, 2u);
    }
  }
}

- (void)_sendCurrentLocation:(id)location isFinished:(BOOL)finished forCmd:(id)cmd withReason:(int64_t)reason andAccuracyChange:(double)change
{
  finishedCopy = finished;
  locationCopy = location;
  cmdCopy = cmd;
  v14 = sub_100002880(cmdCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10022DF20(v14);
  }

  v16 = sub_10017D9A8(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    horizontalAccuracy = [locationCopy horizontalAccuracy];
    longitude = [locationCopy longitude];
    latitude = [locationCopy latitude];
    *buf = 138478339;
    v42 = horizontalAccuracy;
    v43 = 2113;
    v44 = longitude;
    v45 = 2113;
    v46 = latitude;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Publishing Location with Accuracy: %{private}@ Longitude: %{private}@ Latitude: %{private}@", buf, 0x20u);
  }

  provider = [(FMDCommandHandler *)self provider];
  v21 = [[FMDLocation alloc] initWithLocation:locationCopy eventType:0 positionType:255];
  v22 = [cmdCopy objectForKeyedSubscript:@"id"];
  v23 = [FMDActingRequestDecorator alloc];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001C0BC8;
  v39[3] = &unk_1002CD580;
  v24 = v22;
  v40 = v24;
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_1001C0C3C;
  v37 = &unk_1002CD580;
  v25 = provider;
  v38 = v25;
  v26 = [(FMDActingRequestDecorator *)v23 initWithDeviceContextGenerator:v39 deviceInfoGenerator:&v34 serverContextGenerator:0 requestHeaderGenerator:0];
  v27 = [cmdCopy objectForKeyedSubscript:{@"locationValidityDuration", v34, v35, v36, v37}];

  v28 = [FMDRequestCurrentLocation alloc];
  account = [v25 account];
  [v27 doubleValue];
  v31 = [(FMDRequestCurrentLocation *)v28 initWithAccount:account location:v21 finalLocation:finishedCopy reason:reason accuracyChange:change cacheValidityDuration:v30];

  [(FMDRequest *)v31 setDecorator:v26];
  [(FMDRequest *)v31 setCompletionHandler:&stru_1002D0DB0];
  ct_green_tea_logger_create_static();
  v32 = getCTGreenTeaOsLogHandle();
  v33 = v32;
  if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
  }

  [v25 enqueueRequest:v31];
}

- (void)_sendAccessoryCurrentLocationsForCmd:(id)cmd reason:(int64_t)reason locator:(id)locator accessoryIdentifier:(id)identifier
{
  cmdCopy = cmd;
  locatorCopy = locator;
  identifierCopy = identifier;
  provider = [(FMDCommandHandler *)self provider];
  v14 = [cmdCopy objectForKeyedSubscript:@"locationValidityDuration"];
  v15 = [cmdCopy objectForKeyedSubscript:@"id"];
  v16 = provider;
  accessoryRegistry = [provider accessoryRegistry];
  v18 = accessoryRegistry;
  if (!identifierCopy)
  {
    v46 = v14;
    v47 = locatorCopy;
    v48 = cmdCopy;
    allAccessories = [accessoryRegistry allAccessories];

    v26 = +[NSMutableArray array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = allAccessories;
    v28 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v55;
      do
      {
        v31 = 0;
        do
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v54 + 1) + 8 * v31);
          v33 = sub_100002880(v28);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate fetching historical location for %@.", buf, 0xCu);
          }

          accessoryLocationStore = [v16 accessoryLocationStore];
          v35 = [accessoryLocationStore historicalLocationForAccessory:v32];

          if (v35)
          {
            v36 = +[NSMutableDictionary dictionary];
            dictionaryValue = [v35 dictionaryValue];
            [v36 addEntriesFromDictionary:dictionaryValue];

            [v26 addObject:v36];
          }

          v31 = v31 + 1;
        }

        while (v29 != v31);
        v28 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
        v29 = v28;
      }

      while (v28);
    }

    if ([v26 count])
    {
      v38 = [FMDActingRequestDecorator alloc];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1001C1A48;
      v52[3] = &unk_1002CD580;
      v53 = v15;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001C1ABC;
      v50[3] = &unk_1002CD580;
      v39 = v16;
      v51 = v39;
      v40 = [(FMDActingRequestDecorator *)v38 initWithDeviceContextGenerator:v52 deviceInfoGenerator:v50 serverContextGenerator:0 requestHeaderGenerator:0];
      v41 = [FMDRequestAccessoryLocations alloc];
      account = [v39 account];
      v43 = [(FMDRequestAccessoryLocations *)v41 initWithAccount:account accessoryLocations:v26];

      [(FMDRequest *)v43 setDecorator:v40];
      ct_green_tea_logger_create_static();
      v44 = getCTGreenTeaOsLogHandle();
      v45 = v44;
      identifierCopy = 0;
      locatorCopy = v47;
      v14 = v46;
      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
      }

      [v39 enqueueRequest:v43];
      cmdCopy = v48;
    }

    else
    {
      locatorCopy = v47;
      cmdCopy = v48;
      v14 = v46;
      identifierCopy = 0;
    }

    goto LABEL_23;
  }

  v19 = [accessoryRegistry accessoryForIdentifier:identifierCopy];

  obj = v19;
  if ([v19 connectionState] == 1)
  {
    v20 = [FMDActingRequestDecorator alloc];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1001C1528;
    v67[3] = &unk_1002CD580;
    v68 = v15;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1001C159C;
    v64[3] = &unk_1002CDF18;
    v21 = v16;
    v65 = v21;
    selfCopy = self;
    v22 = [(FMDActingRequestDecorator *)v20 initWithDeviceContextGenerator:v67 deviceInfoGenerator:v64 serverContextGenerator:0 requestHeaderGenerator:0];
    v23 = sub_100002880(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = obj;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CommandHandlerLocate requesting location for %@.", buf, 0xCu);
    }

    accessoryLocationStore2 = [v21 accessoryLocationStore];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1001C165C;
    v58[3] = &unk_1002D0DF8;
    v59 = v21;
    reasonCopy = reason;
    v60 = v14;
    v61 = v22;
    v62 = identifierCopy;
    v25 = v22;
    [accessoryLocationStore2 locationForAccessory:obj locator:locatorCopy completion:v58];

    v26 = v68;
LABEL_23:
  }
}

- (void)_sendTrackedLocations
{
  provider = [(FMDCommandHandler *)self provider];
  locationTracker = [provider locationTracker];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C1BE0;
  v5[3] = &unk_1002D0E20;
  v6 = provider;
  v4 = provider;
  [locationTracker actOnTrackedLocationsUsingBlock:v5];
}

- (void)_showAlertAfterUnlock:(id)unlock
{
  unlockCopy = unlock;
  provider = [(FMDCommandHandler *)self provider];
  [provider setPendingLocateAlert:unlockCopy];
}

- (id)createLocatorWithParams:(id)params
{
  paramsCopy = params;
  provider = [(FMDCommandHandler *)self provider];
  v6 = [FMDLocator alloc];
  newLocationManager = [provider newLocationManager];
  v8 = [(FMDLocator *)v6 initWithLocationManager:newLocationManager];

  v10 = sub_100002880(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDCommandHandler *)self fm_logID];
    serviceName = [provider serviceName];
    v19 = 138412546;
    v20 = fm_logID;
    v21 = 2112;
    v22 = serviceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created %@ for service %@", &v19, 0x16u);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [paramsCopy objectForKeyedSubscript:@"locationTimeout"];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
    [(FMDLocator *)v8 setDuration:?];
  }

  v16 = [paramsCopy objectForKeyedSubscript:@"desiredAccuracy"];

  if (v16)
  {
    [v16 doubleValue];
    [(FMDLocator *)v8 setDesiredAccuracy:?];
  }

  v17 = v8;
  objc_autoreleasePoolPop(v13);

  return v17;
}

- (id)locationPublisherWithParams:(id)params
{
  paramsCopy = params;
  v4 = objc_alloc_init(FMDConservativeLocatorPublisher);
  v5 = [[FMCompareLocatorPublisher alloc] initWithPrimaryPublisher:v4 compareToPublishers:&__NSArray0__struct];
  v6 = [paramsCopy objectForKeyedSubscript:@"startThreshold"];
  if (v6)
  {
    [(FMCompareLocatorPublisher *)v5 setStartThreshold:v6];
  }

  v7 = [paramsCopy objectForKeyedSubscript:@"endThreshold"];

  if (v7)
  {
    [(FMCompareLocatorPublisher *)v5 setEndThreshold:v7];
  }

  v8 = [paramsCopy objectForKeyedSubscript:@"decayFactor"];

  if (v8)
  {
    [(FMCompareLocatorPublisher *)v5 setDecayFactor:v8];
  }

  v9 = [paramsCopy objectForKeyedSubscript:@"locationValidityDuration"];

  if (v9)
  {
    [(FMCompareLocatorPublisher *)v5 setCachedLocationValidityTimeInterval:v9];
  }

  return v5;
}

- (void)_notifyAboutLocatingState
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = kFMIPLocatableStateReportedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

@end