@interface MAHandleShowMapPoints
- (BOOL)_isDoNotDisturbWhileDrivingHoldingCoverSheet;
- (BOOL)_shouldLaunchIntoNav;
- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)helper;
- (BOOL)_shouldUseSerializedURLWithOptions:(id)options;
- (id)_mapKitLaunchOptionsWithServiceHelper:(id)helper;
- (void)_captureUserAction:(int)action details:(id)details;
- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)item;
- (void)_launchBackgroundNavigationWithURL:(id)l serviceHelper:(id)helper completion:(id)completion;
- (void)_launchMapsWithURL:(id)l serviceHelper:(id)helper placeActionDetails:(id)details completion:(id)completion;
- (void)_performWithServiceHelper:(id)helper completion:(id)completion;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleShowMapPoints

- (BOOL)_shouldLaunchIntoNav
{
  if (([(MAHandleShowMapPoints *)self suppressNavigation]& 1) != 0)
  {
    return 0;
  }

  itemSource = [(MAHandleShowMapPoints *)self itemSource];
  isCurrentLocation = [itemSource isCurrentLocation];

  if (!isCurrentLocation)
  {
    return 0;
  }

  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0)
  {
    return 1;
  }

  directionsType = [(MAHandleShowMapPoints *)self directionsType];
  v5 = directionsType != 0;

  return v5;
}

- (BOOL)_isDoNotDisturbWhileDrivingHoldingCoverSheet
{
  if (+[CARAutomaticDNDStatus isAutomaticDNDAvailable])
  {
    if (!self->_carDnDStatus)
    {
      v3 = objc_alloc_init(CARAutomaticDNDStatus);
      carDnDStatus = self->_carDnDStatus;
      self->_carDnDStatus = v3;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v7 = _maps_backgroundStateLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = &off_53378;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "MAPS SIRI: Fetching do-not-disturb-while-driving status with %@ second timeout", buf, 0xCu);
    }

    v8 = self->_carDnDStatus;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_56C8;
    v19 = &unk_34880;
    v21 = &v22;
    v9 = v5;
    v20 = v9;
    [(CARAutomaticDNDStatus *)v8 fetchAutomaticDNDExitConfirmationWithReply:&v16];
    v10 = dispatch_walltime(0, 2000000000);
    v11 = dispatch_group_wait(v9, v10);
    v12 = _maps_backgroundStateLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [NSNumber numberWithBool:*(v23 + 24), v16, v17, v18, v19];
      *buf = 138412290;
      v27 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "MAPS SIRI: Returning do-not-disturb-while-driving status %@", buf, 0xCu);
    }

    v14 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)_mapKitLaunchOptionsWithServiceHelper:(id)helper
{
  helperCopy = helper;
  v5 = +[NSMutableDictionary dictionary];
  if (([(MAHandleShowMapPoints *)self showDirections]& 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    directionsType = [(MAHandleShowMapPoints *)self directionsType];
    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByCarValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeDriving;
    }

    else if ([directionsType isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeWalking;
    }

    else if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v8 = &MKLaunchOptionsDirectionsModeTransit;
    }

    else
    {
      v9 = [directionsType isEqualToString:SALocalSearchDirectionsTypeBikingValue];
      v8 = &MKLaunchOptionsDirectionsModeDefault;
      if (v9)
      {
        v8 = &MKLaunchOptionsDirectionsModeCycling;
      }
    }

    v10 = *v8;
    [v5 setObject:v10 forKey:MKLaunchOptionsDirectionsModeKey];
    arrivalDate = [(MAHandleShowMapPoints *)self arrivalDate];

    if (arrivalDate)
    {
      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:1];
      arrivalDate2 = [(MAHandleShowMapPoints *)self arrivalDate];
    }

    else
    {
      departureDate = [(MAHandleShowMapPoints *)self departureDate];

      if (!departureDate)
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = objc_alloc_init(GEOURLTimePoint);
      [v12 setType:0];
      arrivalDate2 = [(MAHandleShowMapPoints *)self departureDate];
    }

    v15 = arrivalDate2;
    [arrivalDate2 timeIntervalSinceReferenceDate];
    [v12 setTime:?];

    if (v12)
    {
      [v5 setObject:v12 forKeyedSubscript:MKLaunchOptionsTimePointKey];
    }

    goto LABEL_17;
  }

LABEL_18:
  if ([(MAHandleShowMapPoints *)self showTraffic])
  {
    v16 = [NSNumber numberWithBool:[(MAHandleShowMapPoints *)self showTraffic]];
    [v5 setObject:v16 forKey:MKLaunchOptionsShowsTrafficKey];
  }

  regionOfInterestRadiusInMiles = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];

  if (regionOfInterestRadiusInMiles)
  {
    regionOfInterestRadiusInMiles2 = [(MAHandleShowMapPoints *)self regionOfInterestRadiusInMiles];
    [regionOfInterestRadiusInMiles2 doubleValue];
    v20 = v19 * 1609.344;

    v21 = [NSNumber numberWithDouble:v20];
    [v5 setObject:v21 forKey:MKLaunchOptionsMapRadiusInMetersKey];
  }

  searchItems = [(MAHandleShowMapPoints *)self searchItems];
  selectedIndex = [searchItems selectedIndex];

  if (selectedIndex)
  {
    searchItems2 = [(MAHandleShowMapPoints *)self searchItems];
    selectedIndex2 = [searchItems2 selectedIndex];
    [v5 setObject:selectedIndex2 forKey:MKLaunchOptionsSelectedIndexKey];
  }

  if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav]&& ![(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:helperCopy])
  {
    [v5 setObject:&__kCFBooleanTrue forKey:MKLaunchOptionsLaunchIntoNavKey];
  }

  carRouteOptions = [(MAHandleShowMapPoints *)self carRouteOptions];
  avoidHighways = [carRouteOptions avoidHighways];

  carRouteOptions2 = [(MAHandleShowMapPoints *)self carRouteOptions];
  avoidTolls = [carRouteOptions2 avoidTolls];

  if (avoidHighways)
  {
    v30 = [NSNumber numberWithBool:1];
    [v5 setObject:v30 forKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
  }

  if (avoidTolls)
  {
    v31 = [NSNumber numberWithBool:1];
    [v5 setObject:v31 forKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
  }

  if ([(MAHandleShowMapPoints *)self searchAlongRoute]& 1) != 0 || (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
  {
    IsEnabled_Maps182 = 1;
  }

  else
  {
    IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
  }

  v33 = [NSNumber numberWithBool:IsEnabled_Maps182];
  [v5 setObject:v33 forKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];

  return v5;
}

- (void)_launchBackgroundNavigationWithURL:(id)l serviceHelper:(id)helper completion:(id)completion
{
  lCopy = l;
  helperCopy = helper;
  completionCopy = completion;
  v11 = _maps_backgroundStateLog(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MAPS SIRI: Starting background navigation with URL: %@", &buf, 0xCu);
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.Maps.launch", v12);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x2020000000;
  v49 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_604C;
  v41[3] = &unk_348A8;
  p_buf = &buf;
  v41[4] = self;
  v14 = helperCopy;
  v42 = v14;
  v15 = completionCopy;
  v43 = v15;
  v16 = objc_retainBlock(v41);
  timeout = [(MAHandleShowMapPoints *)self timeout];
  if (timeout)
  {
    timeout2 = [(MAHandleShowMapPoints *)self timeout];
    [timeout2 doubleValue];
    v20 = v19;

    v21 = v20 + -0.2;
  }

  else
  {
    v21 = 9.8;
  }

  v22 = [(NSDate *)self->_startDate dateByAddingTimeInterval:v21];
  v23 = _maps_backgroundStateLog(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v45 = 138412290;
    v46 = v22;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "MAPS SIRI: Setting timeout date of %@", v45, 0xCu);
  }

  [v22 timeIntervalSinceNow];
  v25 = dispatch_time(0, (v24 * 1000000000.0));
  dispatch_after(v25, v13, v16);
  v26 = +[MapsSiriIPCInterface sharedInterface];
  [v26 initializeBrokerConnectionIfNeeded];
  v27 = objc_alloc_init(IPCLoadDirectionsMessage);
  [(IPCLoadDirectionsMessage *)v27 setUrl:lCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_6120;
  v33[3] = &unk_34920;
  v28 = v13;
  v40 = &buf;
  v34 = v28;
  selfCopy = self;
  v29 = v14;
  v36 = v29;
  v30 = v15;
  v39 = v30;
  v31 = v26;
  v37 = v31;
  v32 = v27;
  v38 = v32;
  [v31 loadDirections:v32 completion:v33];

  _Block_object_dispose(&buf, 8);
}

- (void)_launchMapsWithURL:(id)l serviceHelper:(id)helper placeActionDetails:(id)details completion:(id)completion
{
  lCopy = l;
  helperCopy = helper;
  detailsCopy = details;
  completionCopy = completion;
  if (detailsCopy)
  {
    if ([(MAHandleShowMapPoints *)self _shouldLaunchIntoNav])
    {
      [(MAHandleShowMapPoints *)self _captureUserAction:6003 details:detailsCopy];
      v14 = 3001;
    }

    else
    {
      v14 = 6003;
      if (([(MAHandleShowMapPoints *)self showDirections]& 1) == 0)
      {
        directionsType = [(MAHandleShowMapPoints *)self directionsType];

        if (directionsType)
        {
          v14 = 6003;
        }

        else
        {
          v14 = 2015;
        }
      }
    }

    [(MAHandleShowMapPoints *)self _captureUserAction:v14 details:detailsCopy];
    [MKSiriInteraction generateHashForNavigationURL:lCopy];
  }

  v16 = [helperCopy openSensitiveURL:lCopy];
  if (v16)
  {
    v17 = objc_alloc_init(SALocalSearchShowMapPointsCompleted);
  }

  else
  {
    v18 = _maps_backgroundStateLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = lCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "MAPS SIRI: Failed to open url: %@", buf, 0xCu);
    }

    v19 = [SACommandFailed alloc];
    lCopy = [NSString stringWithFormat:@"Unable to open maps with URL: %@", lCopy];
    v17 = [v19 initWithReason:lCopy];
  }

  completionCopy[2](completionCopy, v17, 0);
}

- (void)_captureUserAction:(int)action details:(id)details
{
  v4 = *&action;
  detailsCopy = details;
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v4 onTarget:802 placeActionDetails:detailsCopy mapItem:0 resultIndex:0xFFFFFFFFLL];
}

- (BOOL)_shouldUseSerializedURLWithOptions:(id)options
{
  optionsCopy = options;
  showDirections = [(MAHandleShowMapPoints *)self showDirections];
  if ((showDirections & 1) != 0 || ([(MAHandleShowMapPoints *)self directionsType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsTimePointKey];
    v8 = v7 != 0;

    if (showDirections)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

- (void)_extractAndSetSessionEntityFromSALocalSearchMapItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy && (itemCopy = objc_opt_respondsToSelector(), (itemCopy & 1) != 0) && (itemCopy = objc_opt_respondsToSelector(), (itemCopy & 1) != 0))
  {
    extSessionGuid = [v4 extSessionGuid];
    extSessionGuidCreatedTimestamp = [v4 extSessionGuidCreatedTimestamp];
    v7 = extSessionGuidCreatedTimestamp;
    if (extSessionGuid && extSessionGuidCreatedTimestamp)
    {
      v8 = +[GEOUserSession sharedInstance];
      v9 = objc_alloc_init(GEOUserSessionEntity);
      [v9 updateSessionIDFromUUIDString:extSessionGuid];
      [v7 timeIntervalSinceReferenceDate];
      v10 = _maps_backgroundStateLog([v9 setSessionCreationTime:?]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "MAPS SIRI: Setting maps user session to %@", &v11, 0xCu);
      }

      [v8 setSharedMapsUserSessionEntity:v9 shareSessionIDWithMaps:1];
    }

    else
    {
      v8 = _maps_backgroundStateLog(extSessionGuidCreatedTimestamp);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "MAPS SIRI: Missing values for extSessionGuid or extSessionGuidCreatedTimestamp from %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    extSessionGuid = _maps_backgroundStateLog(itemCopy);
    if (os_log_type_enabled(extSessionGuid, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_0, extSessionGuid, OS_LOG_TYPE_INFO, "MAPS SIRI: SALocalSearchMapItem (saLocalSearchMapItem: <%@> is either nil or does not implement -extSessionGuid -extSessionGuidCreatedTimestamp methods, skipping", &v11, 0xCu);
    }
  }
}

- (BOOL)_shouldUseBackgroundNavigationWithServiceHelper:(id)helper
{
  shouldUseBackgroundNavigation = self->_shouldUseBackgroundNavigation;
  if (!shouldUseBackgroundNavigation)
  {
    helperCopy = helper;
    v6 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
    v7 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
    carPlayExternalDevice = [v7 carPlayExternalDevice];

    isDeviceLockedWithPasscode = [helperCopy isDeviceLockedWithPasscode];
    if (isDeviceLockedWithPasscode)
    {
      v10 = 0;
      _isDoNotDisturbWhileDrivingHoldingCoverSheet = 1;
    }

    else
    {
      _isDoNotDisturbWhileDrivingHoldingCoverSheet = [(MAHandleShowMapPoints *)self _isDoNotDisturbWhileDrivingHoldingCoverSheet];
      v10 = _isDoNotDisturbWhileDrivingHoldingCoverSheet;
    }

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = 0;
    if ([v12 currentCountrySupportsNavigation] && !carPlayExternalDevice)
    {
      itemSource = [(MAHandleShowMapPoints *)self itemSource];
      if ([itemSource isCurrentLocation])
      {
        _shouldLaunchIntoNav = [(MAHandleShowMapPoints *)self _shouldLaunchIntoNav];
        if (v6 - 3 < 2)
        {
          v16 = _shouldLaunchIntoNav;
        }

        else
        {
          v16 = 0;
        }

        v13 = v16 & _isDoNotDisturbWhileDrivingHoldingCoverSheet;
      }

      else
      {
        v13 = 0;
      }
    }

    v18 = _maps_backgroundStateLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = carPlayExternalDevice != 0;
      itemSource2 = [(MAHandleShowMapPoints *)self itemSource];
      directionsType = [(MAHandleShowMapPoints *)self directionsType];
      v25[0] = 67110658;
      v25[1] = v13;
      v26 = 1024;
      v27 = v19;
      v28 = 2112;
      v29 = itemSource2;
      v30 = 2112;
      v31 = directionsType;
      v32 = 1024;
      v33 = [CLLocationManager authorizationStatusForBundleIdentifier:@"com.apple.Maps"];
      v34 = 1024;
      v35 = isDeviceLockedWithPasscode;
      v36 = 1024;
      v37 = v10;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "MAPS SIRI: use background nav? %d | in CarPlay? %d | item source %@ | directions type %@ | authorization status for Maps CL %d | is locked with passcode? %d | do-not-disturb-while-driving requiring exit confirmation? (if 'is locked with passcode? is 1/YES, this value may be inaccurate because we don't fetch it) %d", v25, 0x34u);
    }

    v22 = [NSNumber numberWithBool:v13];
    v23 = self->_shouldUseBackgroundNavigation;
    self->_shouldUseBackgroundNavigation = v22;

    shouldUseBackgroundNavigation = self->_shouldUseBackgroundNavigation;
  }

  return [(NSNumber *)shouldUseBackgroundNavigation BOOLValue];
}

- (void)_performWithServiceHelper:(id)helper completion:(id)completion
{
  helperCopy = helper;
  completionCopy = completion;
  v8 = objc_opt_new();
  startDate = self->_startDate;
  self->_startDate = v8;

  v11 = _maps_backgroundStateLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_startDate;
    *buf = 138412290;
    v87 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "MAPS SIRI: MAHandleShowMapPoints starting at %@", buf, 0xCu);
  }

  language = [(MAHandleShowMapPoints *)self language];
  v14 = [NSLocale localeWithLocaleIdentifier:language];

  localeIdentifier = [v14 localeIdentifier];
  itemSource = [(MAHandleShowMapPoints *)self itemSource];

  if (!itemSource)
  {
    v18 = 0;
LABEL_9:
    itemDestination = [(MAHandleShowMapPoints *)self itemDestination];

    if (itemDestination)
    {
      itemDestination2 = [(MAHandleShowMapPoints *)self itemDestination];
      v24 = [MKMapItem mapItemWithLocalSearchMapItem:itemDestination2 phoneticLocaleIdentifier:localeIdentifier];

      if (!v24)
      {
        v36 = _maps_backgroundStateLog(v25);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          itemDestination3 = [(MAHandleShowMapPoints *)self itemDestination];
          *buf = 138412290;
          v87 = itemDestination3;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate destination map item from %@", buf, 0xCu);
        }

        v38 = [[SACommandFailed alloc] initWithReason:@"Unable to generate destination map item."];
        completionCopy[2](completionCopy, v38, 0);
        goto LABEL_57;
      }

      v77 = v18;
      v78 = v24;
      v74 = [GEOPlaceActionDetails actionDetailsWithMapItem:v24 timestamp:1 resultIndex:0.0];
    }

    else
    {
      v77 = v18;
      v78 = 0;
      v74 = 0;
    }

    directionsType = [(MAHandleShowMapPoints *)self _mapKitLaunchOptionsWithServiceHelper:helperCopy];
    v27 = _maps_backgroundStateLog(directionsType);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      language2 = [(MAHandleShowMapPoints *)self language];
      *buf = 138412802;
      v87 = localeIdentifier;
      v88 = 2112;
      v89 = language2;
      v90 = 2112;
      v91 = directionsType;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "MAPS SIRI: Opening Maps with phoneticLanguage: %@, locale: %@, options: %@", buf, 0x20u);
    }

    v76 = completionCopy;
    v72 = [(MAHandleShowMapPoints *)self _shouldUseSerializedURLWithOptions:directionsType];
    if (!v72)
    {
      v32 = MKLaunchOptionsTimePointKey;
      v33 = [directionsType objectForKeyedSubscript:MKLaunchOptionsTimePointKey];

      if (!v33)
      {
        v73 = 0;
        v35 = 0xFFFFFFFLL;
        goto LABEL_36;
      }

      v34 = [directionsType mutableCopy];
      [v34 removeObjectForKey:v32];
      v73 = 0;
      goto LABEL_20;
    }

    v29 = MKLaunchOptionsMapRadiusInMetersKey;
    v30 = [directionsType objectForKeyedSubscript:MKLaunchOptionsMapRadiusInMetersKey];
    if (v30)
    {

      v31 = MKLaunchOptionsLaunchIntoNavKey;
    }

    else
    {
      v31 = MKLaunchOptionsLaunchIntoNavKey;
      v39 = [directionsType objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];

      if (!v39)
      {
        v34 = directionsType;
        goto LABEL_26;
      }
    }

    v34 = [directionsType mutableCopy];
    [v34 removeObjectForKey:v29];
    [v34 removeObjectForKey:v31];

LABEL_26:
    v73 = objc_alloc_init(MKURLSerializer);
    directionsType = [(MAHandleShowMapPoints *)self directionsType];
    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeWalkingValue])
    {
      v35 = 2;
      goto LABEL_35;
    }

    if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByPublicTransitValue])
    {
      v35 = 4;
      goto LABEL_35;
    }

    if (([directionsType isEqualToString:SALocalSearchDirectionsTypeBikingValue] & 1) == 0)
    {
      if ([directionsType isEqualToString:SALocalSearchDirectionsTypeByCarValue])
      {
        v35 = 1;
      }

      else
      {
        v35 = 0xFFFFFFFLL;
      }

      goto LABEL_35;
    }

LABEL_20:
    v35 = 0xFFFFFFFLL;
LABEL_35:

    directionsType = v34;
LABEL_36:
    searchItems = [(MAHandleShowMapPoints *)self searchItems];
    domainObjects = [searchItems domainObjects];
    v42 = [domainObjects count];

    v75 = v14;
    if (v42)
    {
      v71 = helperCopy;
      searchItems2 = [(MAHandleShowMapPoints *)self searchItems];
      domainObjects2 = [searchItems2 domainObjects];
      v46 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [domainObjects2 count]);

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      searchItems3 = [(MAHandleShowMapPoints *)self searchItems];
      domainObjects3 = [searchItems3 domainObjects];

      v49 = [domainObjects3 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v80;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v80 != v51)
            {
              objc_enumerationMutation(domainObjects3);
            }

            v53 = *(*(&v79 + 1) + 8 * i);
            [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:v53];
            v54 = [MKMapItem mapItemWithLocalSearchMapItem:v53 phoneticLocaleIdentifier:localeIdentifier];
            [v46 addObject:v54];
          }

          v50 = [domainObjects3 countByEnumeratingWithState:&v79 objects:v85 count:16];
        }

        while (v50);
      }

      if (v72)
      {
        v55 = v73;
        v56 = [v73 urlForOpeningMapItems:v46 options:directionsType];
        v57 = v56;
        helperCopy = v71;
        v38 = v78;
        v58 = v74;
        if (v56)
        {
LABEL_46:
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v57 serviceHelper:helperCopy placeActionDetails:v58 completion:v76];
LABEL_55:

          completionCopy = v76;
LABEL_56:

          v14 = v75;
          v18 = v77;
LABEL_57:

          goto LABEL_58;
        }
      }

      else
      {
        v56 = [MKMapItem urlForMapItems:v46 options:directionsType];
        v57 = v56;
        helperCopy = v71;
        v38 = v78;
        v55 = v73;
        v58 = v74;
        if (v56)
        {
          goto LABEL_46;
        }
      }

      v62 = _maps_backgroundStateLog(v56);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate Maps URL (from domainObjects)", buf, 2u);
      }

      v63 = [[SACommandFailed alloc] initWithReason:@"Unable to generate Maps URL."];
      v76[2](v76, v63, 0);

      v38 = v78;
      goto LABEL_55;
    }

    if (v77 && v78)
    {
      itemSource2 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemSource2];

      itemDestination4 = [(MAHandleShowMapPoints *)self itemDestination];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemDestination4];

      completionCopy = v76;
      if (v72)
      {
        v55 = v73;
        v61 = [v73 urlForDirectionsFromMapItem:v77 toMapItem:v78 transportType:v35 options:directionsType];
        v57 = v61;
      }

      else
      {
        v84[0] = v77;
        v84[1] = v78;
        v67 = [NSArray arrayWithObjects:v84 count:2];
        v57 = [MKMapItem urlForMapItems:v67 options:directionsType];

        v55 = v73;
      }

      v58 = v74;
      v38 = v78;
      if (v57)
      {
        if ([(MAHandleShowMapPoints *)self _shouldUseBackgroundNavigationWithServiceHelper:helperCopy])
        {
          [(MAHandleShowMapPoints *)self _launchBackgroundNavigationWithURL:v57 serviceHelper:helperCopy completion:v76];
        }

        else
        {
          [(MAHandleShowMapPoints *)self _launchMapsWithURL:v57 serviceHelper:helperCopy placeActionDetails:v74 completion:v76];
        }

        goto LABEL_56;
      }

      v69 = _maps_backgroundStateLog(v61);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        goto LABEL_76;
      }

      *buf = 0;
      v70 = "MAPS SIRI: Unable to generate Maps URL (from source + destination)";
    }

    else
    {
      completionCopy = v76;
      if (!v77)
      {
        v68 = _maps_backgroundStateLog(v43);
        v55 = v73;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v68, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate Maps URL (from destination)", buf, 2u);
        }

        v57 = [[SACommandFailed alloc] initWithReason:@"Unknown source and destination."];
        v76[2](v76, v57, 0);
        v38 = v78;
        v58 = v74;
        goto LABEL_56;
      }

      itemSource3 = [(MAHandleShowMapPoints *)self itemSource];
      [(MAHandleShowMapPoints *)self _extractAndSetSessionEntityFromSALocalSearchMapItem:itemSource3];

      v83 = v77;
      v65 = [NSArray arrayWithObjects:&v83 count:1];
      v57 = [MKMapItem urlForMapItems:v65 options:directionsType];

      if (v57)
      {
        v58 = v74;
        [(MAHandleShowMapPoints *)self _launchMapsWithURL:v57 serviceHelper:helperCopy placeActionDetails:v74 completion:v76];
        v38 = v78;
        v55 = v73;
        goto LABEL_56;
      }

      v69 = _maps_backgroundStateLog(v66);
      v55 = v73;
      v58 = v74;
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
LABEL_76:

        v57 = [[SACommandFailed alloc] initWithReason:@"Unable to generate Maps URL."];
        completionCopy[2](completionCopy, v57, 0);
        v38 = v78;
        goto LABEL_56;
      }

      *buf = 0;
      v70 = "MAPS SIRI: Unable to generate Maps URL (from source)";
    }

    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, v70, buf, 2u);
    goto LABEL_76;
  }

  itemSource4 = [(MAHandleShowMapPoints *)self itemSource];
  v18 = [MKMapItem mapItemWithLocalSearchMapItem:itemSource4 phoneticLocaleIdentifier:localeIdentifier];

  if (v18)
  {
    goto LABEL_9;
  }

  v20 = _maps_backgroundStateLog(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    itemSource5 = [(MAHandleShowMapPoints *)self itemSource];
    *buf = 138412290;
    v87 = itemSource5;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "MAPS SIRI: Unable to generate source map item from %@", buf, 0xCu);
  }

  v18 = [[SACommandFailed alloc] initWithReason:@"Unable to generate source map item."];
  completionCopy[2](completionCopy, v18, 0);
LABEL_58:
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_791C;
  v9[3] = &unk_34948;
  v12 = v13;
  helperCopy = helper;
  v10 = helperCopy;
  v8 = completionCopy;
  v11 = v8;
  [(MAHandleShowMapPoints *)self _performWithServiceHelper:helperCopy completion:v9];

  _Block_object_dispose(v13, 8);
}

@end