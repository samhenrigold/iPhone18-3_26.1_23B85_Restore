@interface FMDCommandHandlerLostMode
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerLostMode

- (void)handleCommand
{
  v90 = qword_100312AF8;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKeyedSubscript:@"ownerNbr"];

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams2 objectForKeyedSubscript:@"ftCapable"];
  bOOLValue = [v6 BOOLValue];

  commandParams3 = [(FMDCommandHandler *)self commandParams];
  v9 = [commandParams3 objectForKeyedSubscript:@"text"];

  commandParams4 = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams4 objectForKeyedSubscript:@"trackingStatus"];
  intValue = [v11 intValue];

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v14 = [commandParams5 objectForKeyedSubscript:@"emailUpdates"];
  bOOLValue2 = [v14 BOOLValue];

  commandParams6 = [(FMDCommandHandler *)self commandParams];
  v17 = [commandParams6 objectForKeyedSubscript:@"lostModeEnabled"];
  bOOLValue3 = [v17 BOOLValue];

  provider = [(FMDCommandHandler *)self provider];
  v20 = provider;
  if (bOOLValue3)
  {
    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v22 = [commandParams7 objectForKeyedSubscript:@"passcode"];

    if (v22)
    {
      v24 = sub_100002880(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1002296E0(v22, v24);
      }
    }

    v25 = [v20 setPasscodeLock:v22 statusCode:&v90];
    if (v25)
    {
      v86 = intValue;
      v88 = bOOLValue;
      v26 = +[NSMutableDictionary dictionary];
      commandParams8 = [(FMDCommandHandler *)self commandParams];
      v28 = [commandParams8 objectForKeyedSubscript:@"loc.timeout"];
      [v26 fm_safelyMapKey:@"timeout" toObject:v28];

      commandParams9 = [(FMDCommandHandler *)self commandParams];
      v30 = [commandParams9 objectForKeyedSubscript:@"loc.startThreshold"];
      [v26 fm_safelyMapKey:@"startThreshold" toObject:v30];

      commandParams10 = [(FMDCommandHandler *)self commandParams];
      v32 = [commandParams10 objectForKeyedSubscript:@"loc.endThreshold"];
      [v26 fm_safelyMapKey:@"endThreshold" toObject:v32];

      commandParams11 = [(FMDCommandHandler *)self commandParams];
      v34 = [commandParams11 objectForKeyedSubscript:@"loc.decayFactor"];
      [v26 fm_safelyMapKey:@"decayFactor" toObject:v34];

      commandParams12 = [(FMDCommandHandler *)self commandParams];
      v36 = [commandParams12 objectForKeyedSubscript:@"loc.desiredAccuracy"];
      [v26 fm_safelyMapKey:@"desiredAccuracy" toObject:v36];

      commandParams13 = [(FMDCommandHandler *)self commandParams];
      v38 = [commandParams13 objectForKeyedSubscript:@"loc.validityDuration"];
      [v26 fm_safelyMapKey:@"validityDuration" toObject:v38];

      commandParams14 = [(FMDCommandHandler *)self commandParams];
      v40 = [commandParams14 objectForKeyedSubscript:@"track.minSLCThresholdInMeters"];

      v85 = bOOLValue2;
      v87 = v40;
      if (v40)
      {
        [v40 doubleValue];
        v42 = v41;
      }

      else
      {
        v42 = 400.0;
      }

      commandParams15 = [(FMDCommandHandler *)self commandParams];
      v46 = [commandParams15 objectForKeyedSubscript:@"track.maxTrackedLocationsCount"];
      intValue2 = [v46 intValue];

      commandParams16 = [(FMDCommandHandler *)self commandParams];
      v48 = [commandParams16 objectForKeyedSubscript:@"track.locCacheDurationInSecs"];
      [v48 doubleValue];
      v50 = v49;

      commandParams17 = [(FMDCommandHandler *)self commandParams];
      v52 = [commandParams17 objectForKeyedSubscript:@"track.maxCallbackTimeInSecs"];
      [v52 doubleValue];
      v54 = v53;

      commandParams18 = [(FMDCommandHandler *)self commandParams];
      v56 = [commandParams18 objectForKeyedSubscript:@"track.minDistanceThresholdInMeters"];
      [v56 doubleValue];
      v58 = v57;

      commandParams19 = [(FMDCommandHandler *)self commandParams];
      v60 = [commandParams19 objectForKeyedSubscript:@"track.minTimeBetweenLocationsInSecs"];
      [v60 doubleValue];
      v62 = v61;

      commandParams20 = [(FMDCommandHandler *)self commandParams];
      v64 = [commandParams20 objectForKeyedSubscript:@"track.minCallbackTimeInSecs"];
      [v64 doubleValue];
      v66 = v65;

      commandParams21 = [(FMDCommandHandler *)self commandParams];
      v68 = [commandParams21 objectForKeyedSubscript:@"enableLocationServices"];
      bOOLValue4 = [v68 BOOLValue];

      v70 = +[FMDLostModeManager sharedInstance];
      lostModeEnabled = [v70 lostModeEnabled];

      v72 = 0;
      if (lostModeEnabled)
      {
        v44 = 0;
      }

      else
      {
        v44 = 0;
        if (bOOLValue4)
        {
          v73 = +[CLLocationManager locationServicesEnabled];
          v74 = v73;
          if ((v73 & 1) == 0)
          {
            v75 = sub_100002880(v73);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Location services is off. Reporting to the server that we will turn it on", buf, 2u);
            }
          }

          v44 = v74 ^ 1;
          v76 = [CLLocationManager isStatusBarIconEnabledForLocationEntityClass:4];
          if (v76)
          {
            v72 = 0;
          }

          else
          {
            v77 = sub_100002880(v76);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Turning on status bar icon since its off & the lost command asks us to turn on location services", buf, 2u);
            }

            v72 = 1;
            [CLLocationManager setStatusBarIconEnabled:1 forLocationEntityClass:4];
          }
        }
      }

      v78 = +[FMDLostModeManager sharedInstance];
      [v78 enableLostModeWithMessage:v9 ownerNumber:v4 facetimeCapable:v88 enableLocationServices:bOOLValue4 turnOffStatusBarIconAfterLostMode:v72];

      locationTracker = [v20 locationTracker];

      if (locationTracker)
      {
        locationTracker2 = [v20 locationTracker];
        [locationTracker2 updateLocationTrackingInfoWithTrackingStatus:v86 minSLCAccuracyThreshold:v26 locateParams:v85 trackNotifyEnabled:intValue2 maxLocations:v42 keepAlive:v50 periodicCheckInterval:v54 minDistanceBetweenLocations:v58 minTimeBetweenLocations:v62 minTimeBetweenServerCalls:v66];
      }
    }

    else
    {
      v26 = sub_100002880(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Lock failed. Ignoring the lost mode command.", buf, 2u);
      }

      v44 = 0;
    }
  }

  else
  {
    v43 = sub_100002880(provider);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Lost mode cannot be disabled from the server. There seems to be some bug in the server. Not honouring this lost mode command", buf, 2u);
    }

    v44 = 0;
    v90 = qword_100312AE8;
  }

  [v20 registerDeviceWithCause:@"LostModeCommand" force:0];
  v81 = +[NSMutableDictionary dictionary];
  v82 = v81;
  if (v44)
  {
    [v81 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesStateChanged"];
  }

  v83 = [NSNumber numberWithInteger:v90];
  [v82 setObject:v83 forKeyedSubscript:@"status"];

  [(FMDCommandHandler *)self didHandleCommandWithAckData:v82];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  ackDataForCommand = [(FMDCommandHandler *)self ackDataForCommand];
  v6 = [ackDataForCommand objectForKeyedSubscript:@"status"];
  intValue = [v6 intValue];

  v8 = [ackDataForCommand objectForKeyedSubscript:@"locationServicesStateChanged"];
  bOOLValue = [v8 BOOLValue];

  commandParams = [(FMDCommandHandler *)self commandParams];
  v11 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  v13 = provider;
  if (v11)
  {
    v14 = intValue;
    v15 = [NSURL URLWithString:v11];
    v16 = [FMDRequestAckLost alloc];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v18 = [(FMDRequestAckLost *)v16 initWithProvider:v13 lostCommand:commandParams2 cmdStatusCode:v14 locationServicesStateChanged:bOOLValue ackURL:v15];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100167044;
    v20[3] = &unk_1002CD1D0;
    v21 = completionCopy;
    [(FMDRequest *)v18 setCompletionHandler:v20];
    [v13 enqueueRequest:v18];
  }

  else
  {
    v15 = sub_100002880(provider);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not acking the lost command because there is no ack URL", v19, 2u);
    }
  }
}

@end