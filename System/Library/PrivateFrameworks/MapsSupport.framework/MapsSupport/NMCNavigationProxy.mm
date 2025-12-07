@interface NMCNavigationProxy
+ (id)sharedInstance;
- (BOOL)_isCarPlayConnected;
- (BOOL)_prepareToStartNavigationWithStartDetails:(id)details;
- (BOOL)_shouldSendRouteStatus:(id)status previousRouteStatus:(id)routeStatus;
- (NMCNavigationProxy)init;
- (int)currentUITargetForAnalytics:(int64_t)analytics;
- (void)_cleanupNavigation;
- (void)_handleMessage:(id)message;
- (void)_launchMapsForNavigation;
- (void)_legacy_sendPreviewRouteDetails:(id)details context:(id)context;
- (void)_openOrCloseNavigationService;
- (void)_registerMessageObservers;
- (void)_sendRouteDetails:(id)details routeStatus:(id)status routeContext:(id)context forced:(BOOL)forced;
- (void)_sendRouteStatus:(id)status routeContext:(id)context;
- (void)_sendRouteUpdate:(id)update routeContext:(id)context;
- (void)_setupForNavigationWithRouteID:(id)d context:(id)context;
- (void)_updateForActiveDevice;
- (void)_updateNavigationRouteDetails:(id)details routeStatus:(id)status routeUpdated:(BOOL)updated;
- (void)closeNavigationService;
- (void)dealloc;
- (void)pauseNavigation;
- (void)resumeNavigation;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)startNavigationWithDetails:(id)details;
- (void)startNavigationWithRouteID:(id)d routeIndex:(unint64_t)index routePersistentData:(id)data companionRouteContext:(id)context;
- (void)stopNavigation;
- (void)updateNavigationRouteWithUpdate:(id)update;
@end

@implementation NMCNavigationProxy

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000653C;
  block[3] = &unk_100084E80;
  block[4] = self;
  if (qword_10009E730 != -1)
  {
    dispatch_once(&qword_10009E730, block);
  }

  v2 = qword_10009E728;

  return v2;
}

- (NMCNavigationProxy)init
{
  v18.receiver = self;
  v18.super_class = NMCNavigationProxy;
  v2 = [(NMCNavigationProxy *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    routeLock = v2->_routeLock;
    v2->_routeLock = v3;

    v5 = [[MNCompanionNavigationAdapter alloc] initWithDelegate:v2];
    adapter = v2->_adapter;
    v2->_adapter = v5;

    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_updateForActiveDevice" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v9 = objc_alloc_init(MapsDistanceUnitUpdater);
    distanceUnitUpdater = v2->_distanceUnitUpdater;
    v2->_distanceUnitUpdater = v9;

    [(MapsDistanceUnitUpdater *)v2->_distanceUnitUpdater start];
    v11 = [NavigationSettingsMonitor alloc];
    v12 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.Maps"];
    v13 = [(NavigationSettingsMonitor *)v11 initWithUserDefaults:v12];
    settingsMonitor = v2->_settingsMonitor;
    v2->_settingsMonitor = v13;

    v15 = objc_alloc_init(CARSessionStatus);
    carSessionStatus = v2->_carSessionStatus;
    v2->_carSessionStatus = v15;

    [(CARSessionStatus *)v2->_carSessionStatus addSessionObserver:v2];
    [(NMCNavigationProxy *)v2 _registerMessageObservers];
    [(NMCNavigationProxy *)v2 _openOrCloseNavigationService];
  }

  return v2;
}

- (void)dealloc
{
  [(MNCompanionNavigationAdapter *)self->_adapter invalidate];
  v3 = +[MNNavigationService sharedService];
  [v3 closeForClient:self];

  v4.receiver = self;
  v4.super_class = NMCNavigationProxy;
  [(NMCNavigationProxy *)&v4 dealloc];
}

- (void)startNavigationWithRouteID:(id)d routeIndex:(unint64_t)index routePersistentData:(id)data companionRouteContext:(id)context
{
  dCopy = d;
  dataCopy = data;
  contextCopy = context;
  v13 = contextCopy;
  if (contextCopy && (dCopy || index != 0x7FFFFFFFFFFFFFFFLL || dataCopy))
  {
    [(NSLock *)self->_routeLock lock];
    objc_storeStrong(&self->_companionRouteContext, context);
    [(NSLock *)self->_routeLock unlock];
    v14 = objc_alloc_init(IPCLoadDirectionsMessage);
    -[IPCLoadDirectionsMessage setOriginIsWatch:](v14, "setOriginIsWatch:", [v13 origin] == 1);
    data = [v13 data];
    [(IPCLoadDirectionsMessage *)v14 setRouteContextData:data];

    [(IPCLoadDirectionsMessage *)v14 setRoutePersistentData:dataCopy];
    v24 = [IPCStartNavigationMessage startNavigationMessageWithLoadDirectionsMessage:v14];
    [v24 setOriginIsWatch:1];
    [v24 setRouteIndex:index];
    v25 = sub_100053214([v24 setRouteID:dCopy]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [v13 simpleDescription];
      v27 = @"NO";
      if (dataCopy)
      {
        v27 = @"YES";
      }

      v28 = v27;
      *buf = 134218498;
      indexCopy = index;
      v33 = 2112;
      v34 = simpleDescription;
      v35 = 2114;
      v36 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Will start navigation via IPC to route at index %lu (directions context:%@), with routePersistentData %{public}@", buf, 0x20u);
    }

    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:dCopy context:v13];
    [(NMCNavigationProxy *)self _openOrCloseNavigationService];
    v29 = +[MapsCompanionDaemonIPCInterface sharedInterface];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100006AB8;
    v30[3] = &unk_100084EA8;
    v30[4] = self;
    [v29 startPreparedNavigation:v24 completion:v30];
  }

  else
  {
    v14 = sub_100053214(contextCopy);
    if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_ERROR))
    {
      if (v13)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      if (dCopy)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = v17;
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = @"NO";
      }

      else
      {
        v19 = @"YES";
      }

      v20 = v19;
      if (dataCopy)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = v21;
      *buf = 138544130;
      indexCopy = v16;
      v33 = 2114;
      v34 = v18;
      v35 = 2114;
      v36 = v20;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, &v14->super.super, OS_LOG_TYPE_ERROR, "Missing vital info for starting navigation, got routeContext:%{public}@ + (routeID:%{public}@ || routeIndex:%{public}@ || routePersistentData: %{public}@)", buf, 0x2Au);
    }
  }
}

- (void)startNavigationWithDetails:(id)details
{
  detailsCopy = details;
  if ([(NMCNavigationProxy *)self _prepareToStartNavigationWithStartDetails:detailsCopy])
  {
    v5 = +[MNNavigationService sharedService];
    v10 = 0;
    v6 = [v5 startNavigationWithDetails:detailsCopy error:&v10];
    v7 = v10;

    if (v6)
    {
      [(NMCNavigationProxy *)self _launchMapsForNavigation];
    }

    else
    {
      v9 = sub_100053214(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to start navigation: %@", buf, 0xCu);
      }

      [(NMCNavigationProxy *)self _cleanupNavigation];
    }
  }
}

- (BOOL)_prepareToStartNavigationWithStartDetails:(id)details
{
  detailsCopy = details;
  [(NMCNavigationProxy *)self _openOrCloseNavigationService];
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (v6)
  {
    v8 = +[GEOCompanionRouteContext context];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:0 context:v8];
    routes = [detailsCopy routes];
    v10 = [routes objectAtIndexedSubscript:{objc_msgSend(detailsCopy, "selectedRouteIndex")}];

    v11 = [v10 transportType] - 1;
    if (v11 > 5)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_100065908[v11];
    }

    [(NavigationSettingsMonitor *)self->_settingsMonitor setTransportType:v12];
    v13 = sub_100053214([detailsCopy setGuidanceLevelOverride:0]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [v8 simpleDescription];
      v16 = 138412290;
      v17 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Will start navigation (context:%@)", &v16, 0xCu);
    }
  }

  else
  {
    v8 = sub_100053214(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will not start navigation, service not open for us", &v16, 2u);
    }
  }

  return v6;
}

- (void)_launchMapsForNavigation
{
  v2 = sub_100053214(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will launch Maps to show navigation", v4, 2u);
  }

  v3 = +[MapsCompanionDaemonIPCInterface sharedInterface];
  [v3 performWithMapsRunning:&stru_100084EE8];
}

- (void)pauseNavigation
{
  v2 = sub_100053214(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will pause navigation", v5, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 stopNavigationWithReason:3];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:11028 onTarget:1225 eventValue:0];
}

- (void)resumeNavigation
{
  v2 = sub_100053214(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will resume navigation", v5, 2u);
  }

  v3 = +[MNNavigationService sharedService];
  [v3 advanceToNextLeg];

  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:11029 onTarget:1225 eventValue:0];
}

- (void)stopNavigation
{
  v3 = +[MNNavigationService sharedService];
  isInNavigatingState = [v3 isInNavigatingState];

  if (isInNavigatingState)
  {
    v5 = +[MNNavigationService sharedService];
    v6 = [v5 navigationTransportType] - 1;
    if (v6 > 5)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_100065908[v6];
    }

    v8 = +[MNNavigationService sharedService];
    [v8 stopNavigationWithReason:2];

    v9 = [(NMCNavigationProxy *)self currentUITargetForAnalytics:v7];
    v10 = +[MKMapService sharedService];
    [v10 captureUserAction:344 onTarget:v9 eventValue:0];
  }

  [(NMCNavigationProxy *)self _cleanupNavigation];
}

- (int)currentUITargetForAnalytics:(int64_t)analytics
{
  if ((analytics - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_100065938[analytics - 1];
  }
}

- (void)closeNavigationService
{
  v3 = sub_100053434(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "SIGTERM received. Closing navigation service.", v5, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 closeForClient:self];
}

- (void)_registerMessageObservers
{
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007738;
  v15[3] = &unk_100084F38;
  objc_copyWeak(&v16, &location);
  v3 = objc_retainBlock(v15);
  v4 = +[NMCGizmoConnection sharedInstance];
  [v4 addConnectionObserver:self];

  v5 = objc_alloc_init(NMMessageQueue);
  [(NMMessageQueue *)v5 setMaximumInFlightMessagesCount:GEOConfigGetUInteger()];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:300];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:301];
  [(NMMessageQueue *)v5 setMaximumPendingMessages:GEOConfigGetUInteger() forMessageType:311];
  v6 = +[NMCGizmoConnection sharedInstance];
  [v6 setMessageQueue:v5 forType:300];

  v7 = +[NMCGizmoConnection sharedInstance];
  [v7 setMessageQueue:v5 forType:301];

  v8 = +[NMCGizmoConnection sharedInstance];
  [v8 setMessageQueue:v5 forType:311];

  v9 = +[NMCGizmoConnection sharedInstance];
  v10 = [v9 addMessageObserverForType:306 callback:v3];
  v11 = [v9 addMessageObserverForType:310 callback:v3];
  v12 = [v9 addMessageObserverForType:1000 callback:v3];
  v13 = sub_100053214([v9 addMessageObserverForType:315 callback:v3]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Navigation proxy now listening for IDS messages", v14, 2u);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_handleMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  if (type > 314)
  {
    if (type == 315)
    {
      v38 = [messageCopy argumentForTag:418];
      v6 = v38;
      if (v38)
      {
        intValue = [v38 intValue];
      }

      else
      {
        intValue = 0x7FFFFFFFFFFFFFFFLL;
      }

      v43 = +[MNNavigationService sharedService];
      displayedStepIndex = [v43 displayedStepIndex];

      v46 = sub_100053214(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = intValue;
        *&buf[12] = 2048;
        *&buf[14] = displayedStepIndex;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Gizmo sent displayedStepIndex: %lu, we had %lu", buf, 0x16u);
      }

      if (intValue == displayedStepIndex)
      {
        goto LABEL_56;
      }

      v7 = +[MNNavigationService sharedService];
      [(NMReply *)v7 setDisplayedStepIndex:intValue];
LABEL_55:

LABEL_56:
      goto LABEL_57;
    }

    if (type != 1000)
    {
      goto LABEL_57;
    }

    v19 = [messageCopy argumentForTag:1000];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      [(NSLock *)self->_routeLock lock];
      if (self->_companionRouteStatus)
      {
        v6 = 0;
      }

      else
      {
        v92 = NSLocalizedDescriptionKey;
        v93 = NSLocalizedFailureReasonErrorKey;
        *buf = @"Navigation is not running";
        *&buf[8] = @"Navigation is not running";
        v47 = [NSDictionary dictionaryWithObjects:buf forKeys:&v92 count:2];
        v6 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:2 userInfo:v47];
      }

      [(NSLock *)self->_routeLock unlock];
      v48 = +[MNNavigationService sharedService];
      isInNavigatingState = [v48 isInNavigatingState];

      if ((isInNavigatingState & 1) == 0)
      {
        v92 = NSLocalizedDescriptionKey;
        v93 = NSLocalizedFailureReasonErrorKey;
        *buf = @"Maps is not running";
        *&buf[8] = @"Maps is not running";
        v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v92 count:2];
        v51 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:1 userInfo:v50];

        v6 = v51;
      }

      v7 = objc_alloc_init(NMReply);
      if (v6)
      {
        v52 = [[NMArgument alloc] _nm_initWithErrorValue:v6 tag:3];
        v53 = sub_100053214([(NMReply *)v7 addArgument:v52]);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Gizmo pinged us and we discovered an error: %@", buf, 0xCu);
        }

LABEL_50:

        v54 = +[NMCGizmoConnection sharedInstance];
        [v54 sendReply:v7 forMessage:messageCopy options:0];

        goto LABEL_55;
      }
    }

    else
    {
      v7 = objc_alloc_init(NMReply);
    }

    v52 = objc_alloc_init(NMArgument);
    [(NMArgument *)v52 setTag:1];
    v53 = sub_100053214([(NMReply *)v7 addArgument:v52]);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Gizmo pinged us and nothing is wrong, just ack", buf, 2u);
    }

    v6 = 0;
    goto LABEL_50;
  }

  if (type == 306)
  {
    v21 = [messageCopy argumentForTag:5];
    v6 = v21;
    if (!v21 || (v21 = [v21 hasBoolValue], (v21 & 1) == 0))
    {
      v7 = sub_100053214(v21);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES message has no flag argument, ignoring", buf, 2u);
      }

      goto LABEL_55;
    }

    bOOLValue2 = [v6 BOOLValue];
    self->_sendAllUpdates = bOOLValue2;
    if (!bOOLValue2)
    {
      v28 = v6;
LABEL_83:
      v67 = +[MNNavigationService sharedService];
      v68 = [v67 isOpenForClient:self];

      if (v68)
      {
        sendAllUpdates = self->_sendAllUpdates;
        v71 = sub_100053214(v69);
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_INFO);
        if (sendAllUpdates)
        {
          if (v72)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Resuming real-time updates", buf, 2u);
          }

          v73 = +[MNNavigationService sharedService];
          [v73 resumeRealtimeUpdates];
        }

        else
        {
          if (v72)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Pausing real-time updates", buf, 2u);
          }

          v73 = +[MNNavigationService sharedService];
          [v73 pauseRealtimeUpdates];
        }
      }

      v74 = +[MNNavigationService sharedService];
      v75 = [v74 isOpenForClient:self];

      if (v75)
      {
        v77 = self->_sendAllUpdates;
        v78 = sub_100053214(v76);
        v79 = os_log_type_enabled(v78, OS_LOG_TYPE_INFO);
        if (v77)
        {
          if (v79)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "Resuming real-time updates", buf, 2u);
          }

          v80 = +[MNNavigationService sharedService];
          [v80 resumeRealtimeUpdates];
        }

        else
        {
          if (v79)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "Pausing real-time updates", buf, 2u);
          }

          v80 = +[MNNavigationService sharedService];
          [v80 pauseRealtimeUpdates];
        }
      }

      v7 = objc_alloc_init(NMReply);
      v81 = objc_alloc_init(NMArgument);
      [(NMArgument *)v81 setTag:1];
      [(NMReply *)v7 addArgument:v81];
      v82 = +[NMCGizmoConnection sharedInstance];
      [v82 sendReply:v7 forMessage:messageCopy options:0];

      v6 = v28;
      goto LABEL_55;
    }

    [(NSLock *)self->_routeLock lock];
    v7 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
    v23 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
    v24 = [(GEOCompanionRouteContext *)self->_companionRouteContext copy];
    [(NSLock *)self->_routeLock unlock];
    v25 = +[NMCGizmoConnection sharedInstance];
    v26 = [v25 supportsTransportType:{-[NMReply transportType](v7, "transportType")}];

    if ((v26 & 1) == 0)
    {
      v57 = sub_100053214(v27);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        transportType = [(NMReply *)v7 transportType];
        if (transportType >= 7)
        {
          v59 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
        }

        else
        {
          v59 = off_100084F80[transportType];
        }

        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES, gizmo does not support transport type: %@, bailing", buf, 0xCu);
      }

      goto LABEL_55;
    }

    v28 = [messageCopy argumentForTag:401];

    if (!v28)
    {
      goto LABEL_26;
    }

    dataValue = [v28 dataValue];
    v30 = dataValue;
    if (v7)
    {
      routeID = [(NMReply *)v7 routeID];
      v32 = [routeID isEqualToData:v30];

      v34 = sub_100053214(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = @"YES";
        if (v32)
        {
          v35 = @"NO";
        }

        v83 = v35;
        [(NMReply *)v7 routeID];
        v36 = v85 = v30;
        simpleDescription = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v85;
        *&buf[12] = 2112;
        *&buf[14] = v83;
        v88 = 2112;
        v89 = v36;
        v90 = 2112;
        v91 = simpleDescription;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES (routeID:%@), shouldSendRoute:%@ with lastRouteDetails:%@ (context:%@)", buf, 0x2Au);

        v30 = v85;
      }

      if (v32)
      {
LABEL_26:
        if (v23)
        {
          [(NMCNavigationProxy *)self _sendRouteStatus:v23 routeContext:v24];
        }

LABEL_82:

        goto LABEL_83;
      }
    }

    else
    {
      v60 = [dataValue length];
      v61 = sub_100053214(v60);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = @"YES";
        if (!v60)
        {
          v62 = @"NO";
        }

        v84 = v60;
        v86 = v62;
        if (v23)
        {
          feedbackType = [v23 feedbackType];
          if (feedbackType >= 0xB)
          {
            v64 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType];
          }

          else
          {
            v64 = off_100084FB8[feedbackType];
          }
        }

        else
        {
          v64 = 0;
        }

        simpleDescription2 = [v24 simpleDescription];
        *buf = 138413058;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v86;
        v88 = 2112;
        v89 = v64;
        v90 = 2112;
        v91 = simpleDescription2;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES YES (routeID:%@), shouldSendRoute:%@ with lastRouteStatus:%@ (context:%@)", buf, 0x2Au);

        if (v23)
        {
        }

        v60 = v84;
      }

      if (!v60)
      {
        goto LABEL_26;
      }
    }

    if (![v23 feedbackType] && !v24)
    {
      v24 = +[GEOCompanionRouteContext context];
      v66 = sub_100053214(v24);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Created override context to force NanoMaps to stop navigating!", buf, 2u);
      }
    }

    [(NMCNavigationProxy *)self _sendRouteDetails:v7 routeStatus:v23 routeContext:v24 forced:1];
    goto LABEL_82;
  }

  if (type == 310)
  {
    [(NSLock *)self->_routeLock lock];
    v6 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
    v7 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
    v8 = [(GEOCompanionRouteContext *)self->_companionRouteContext copy];
    [(NSLock *)self->_routeLock unlock];
    v9 = objc_alloc_init(NMReply);
    v10 = sub_100053214(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6 && v7 && v8)
    {
      if (v11)
      {
        routeID2 = [v6 routeID];
        simpleDescription3 = [v8 simpleDescription];
        *buf = 138412546;
        *&buf[4] = routeID2;
        *&buf[12] = 2112;
        *&buf[14] = simpleDescription3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, send latest status for route %@ (context:%@)", buf, 0x16u);
      }

      v10 = objc_alloc_init(NMArgument);
      [v10 setTag:401];
      data = [v6 data];
      [v10 setDataValue:data];

      [(NMReply *)v9 addArgument:v10 withCompressionType:1];
      v15 = objc_alloc_init(NMArgument);
      [(NMArgument *)v15 setTag:402];
      data2 = [(NMReply *)v7 data];
      [(NMArgument *)v15 setDataValue:data2];

      [(NMReply *)v9 addArgument:v15];
      v17 = objc_alloc_init(NMArgument);
      [(NMArgument *)v17 setTag:406];
      data3 = [v8 data];
      [(NMArgument *)v17 setDataValue:data3];

      [(NMReply *)v9 addArgument:v17];
    }

    else if (v11)
    {
      routeID3 = [v6 routeID];
      feedbackType2 = [(NMReply *)v7 feedbackType];
      if (feedbackType2 >= 0xB)
      {
        v42 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType2];
      }

      else
      {
        v42 = off_100084FB8[feedbackType2];
      }

      simpleDescription4 = [v8 simpleDescription];
      *buf = 138412802;
      *&buf[4] = routeID3;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      v88 = 2112;
      v89 = simpleDescription4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Gizmo has asked for a full navigation update, but we don't have anything to send it, just ack (details:%@, status:%@, context:%@)", buf, 0x20u);
    }

    v56 = +[NMCGizmoConnection sharedInstance];
    [v56 sendReply:v9 forMessage:messageCopy options:0];

    goto LABEL_55;
  }

LABEL_57:
}

- (void)_updateForActiveDevice
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v3 getActivePairedDevice];

  v5 = [[NSUUID alloc] initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
  self->_activeDeviceSupportsNavigation = [getActivePairedDevice supportsCapability:v5];

  v6 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
  self->_activeDeviceNeedsUnpackedPointsRemoved = [getActivePairedDevice supportsCapability:v6] ^ 1;

  v8 = sub_100053214(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (self->_activeDeviceSupportsNavigation)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v9;
    if (self->_activeDeviceNeedsUnpackedPointsRemoved)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device supports navigation: %@. Requires unpackedLatLng removal: %@", &v13, 0x16u);
  }
}

- (void)_openOrCloseNavigationService
{
  v3 = +[NMCGizmoConnection sharedInstance];
  isNearbyAndUsable = [v3 isNearbyAndUsable];

  v5 = +[MNNavigationService sharedService];
  v6 = [v5 isOpenForClient:self];

  if (!isNearbyAndUsable || (v6 & 1) != 0)
  {
    if (isNearbyAndUsable & 1 | ((v6 & 1) == 0))
    {
      return;
    }

    v13 = sub_100053214(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Closing navigation service; watch not nearby", v15, 2u);
    }

    v14 = +[MNNavigationService sharedService];
    [v14 pauseRealtimeUpdates];

    v12 = +[MNNavigationService sharedService];
    [v12 closeForClient:self];
  }

  else
  {
    v8 = sub_100053214(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Opening navigation service; watch nearby", buf, 2u);
    }

    v9 = +[MNNavigationService sharedService];
    [v9 openForClient:self];

    sendAllUpdates = self->_sendAllUpdates;
    v11 = +[MNNavigationService sharedService];
    v12 = v11;
    if (sendAllUpdates)
    {
      [v11 resumeRealtimeUpdates];
    }

    else
    {
      [v11 pauseRealtimeUpdates];
    }
  }
}

- (void)updateNavigationRouteWithUpdate:(id)update
{
  updateCopy = update;
  [(NSLock *)self->_routeLock lock];
  objc_storeStrong(&self->_companionRouteUpdate, update);
  v5 = self->_companionRouteContext;
  sendAllUpdates = self->_sendAllUpdates;
  [(NSLock *)self->_routeLock unlock];
  if (v5)
  {
    v7 = !sendAllUpdates;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(NMCNavigationProxy *)self _sendRouteUpdate:updateCopy routeContext:v5];
  }
}

- (void)_updateNavigationRouteDetails:(id)details routeStatus:(id)status routeUpdated:(BOOL)updated
{
  updatedCopy = updated;
  detailsCopy = details;
  statusCopy = status;
  isNavigating = [statusCopy isNavigating];
  v12 = isNavigating;
  if (isNavigating)
  {
    routeID = [statusCopy routeID];
    [(NMCNavigationProxy *)self _setupForNavigationWithRouteID:routeID context:0];
  }

  [(NSLock *)self->_routeLock lock];
  if (updatedCopy)
  {
    if (self->_activeDeviceNeedsUnpackedPointsRemoved)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = detailsCopy;
      response = [detailsCopy response];
      routes = [response routes];

      v16 = [routes countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(routes);
            }

            [*(*(&v23 + 1) + 8 * i) setUnpackedLatLngVertices:0];
          }

          v17 = [routes countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v17);
      }

      detailsCopy = v22;
    }

    objc_storeStrong(&self->_companionRouteDetails, details);
  }

  objc_storeStrong(&self->_companionRouteStatus, status);
  v20 = [(GEOCompanionRouteStatus *)self->_lastSentCompanionRouteStatus copy];
  v21 = self->_companionRouteContext;
  [(NSLock *)self->_routeLock unlock];
  if (updatedCopy)
  {
    [(NMCNavigationProxy *)self _sendRouteDetails:detailsCopy routeStatus:statusCopy routeContext:v21 forced:0];
  }

  else if ([(NMCNavigationProxy *)self _shouldSendRouteStatus:statusCopy previousRouteStatus:v20])
  {
    [(NMCNavigationProxy *)self _sendRouteStatus:statusCopy routeContext:v21];
  }

  if ((v12 & 1) == 0)
  {
    [(NMCNavigationProxy *)self _cleanupNavigation];
  }
}

- (void)_setupForNavigationWithRouteID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  lock = [(NSLock *)self->_routeLock lock];
  if (self->_isNavigating)
  {
    goto LABEL_13;
  }

  self->_isNavigating = 1;
  if (contextCopy)
  {
    objc_storeStrong(&self->_companionRouteContext, context);
    v10 = sub_100053214(v9);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v18 = 138412290;
    *&v18[4] = simpleDescription;
    v12 = "Navigating with provided context %@";
  }

  else if (self->_companionRouteContext)
  {
    v10 = sub_100053214(lock);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v18 = 138412290;
    *&v18[4] = simpleDescription;
    v12 = "Navigating with context %@";
  }

  else
  {
    v13 = +[GEOCompanionRouteContext context];
    companionRouteContext = self->_companionRouteContext;
    self->_companionRouteContext = v13;

    v10 = sub_100053214(v15);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    simpleDescription = [(GEOCompanionRouteContext *)self->_companionRouteContext simpleDescription];
    *v18 = 138412290;
    *&v18[4] = simpleDescription;
    v12 = "Creating context for navigation %@";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, v18, 0xCu);

LABEL_11:
  if (!self->_companionRouteStatus)
  {
    v16 = objc_alloc_init(GEOCompanionRouteStatus);
    companionRouteStatus = self->_companionRouteStatus;
    self->_companionRouteStatus = v16;

    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setFeedbackType:1];
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteID:dCopy];
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setStepID:0];
  }

LABEL_13:
  [(NSLock *)self->_routeLock unlock:*v18];
}

- (void)_cleanupNavigation
{
  lock = [(NSLock *)self->_routeLock lock];
  if (self->_isNavigating)
  {
    v4 = sub_100053214(lock);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Did stop navigating", v9, 2u);
    }

    self->_isNavigating = 0;
    companionRouteContext = self->_companionRouteContext;
    self->_companionRouteContext = 0;

    companionRouteStatus = self->_companionRouteStatus;
    self->_companionRouteStatus = 0;

    companionRouteUpdate = self->_companionRouteUpdate;
    self->_companionRouteUpdate = 0;

    [(NSLock *)self->_routeLock unlock];
  }

  else
  {
    routeLock = self->_routeLock;

    [(NSLock *)routeLock unlock];
  }
}

- (void)_sendRouteDetails:(id)details routeStatus:(id)status routeContext:(id)context forced:(BOOL)forced
{
  forcedCopy = forced;
  detailsCopy = details;
  statusCopy = status;
  contextCopy = context;
  v13 = +[NMCGizmoConnection sharedInstance];
  v14 = [v13 supportsTransportType:{objc_msgSend(detailsCopy, "transportType")}];

  if (v14)
  {
    v32 = forcedCopy;
    if (!self->_activeDeviceSupportsNavigation)
    {
      v15 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
      [v15 setRequest:0];
      [v15 setResponse:0];

      detailsCopy = v15;
    }

    v16 = +[NMCGizmoConnection sharedInstance];
    protocolVersion = [v16 protocolVersion];

    v31 = [detailsCopy instanceCompatibleWithProtocolVersion:protocolVersion];
    v18 = objc_alloc_init(NMMessage);
    [(NMMessage *)v18 setType:300];
    v19 = objc_alloc_init(NMArgument);
    [(NMArgument *)v19 setTag:401];
    data = [v31 data];
    [(NMArgument *)v19 setDataValue:data];

    [(NMMessage *)v18 addArgument:v19];
    v21 = [statusCopy instanceCompatibleWithProtocolVersion:protocolVersion];
    v22 = objc_alloc_init(NMArgument);

    [(NMArgument *)v22 setTag:402];
    data2 = [v21 data];
    [(NMArgument *)v22 setDataValue:data2];

    [(NMMessage *)v18 addArgument:v22];
    v24 = objc_alloc_init(NMArgument);

    [(NMArgument *)v24 setTag:406];
    data3 = [contextCopy data];
    [(NMArgument *)v24 setDataValue:data3];

    [(NMMessage *)v18 addArgument:v24];
    v26 = +[NMCGizmoConnection sharedInstance];
    v33 = @"NMSendMessageOptionSendImmediately";
    v27 = [NSNumber numberWithBool:v32];
    v34 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v26 sendMessage:v18 options:v28];

    [(NSLock *)self->_routeLock lock];
    v29 = [statusCopy copy];
    lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
    self->_lastSentCompanionRouteStatus = v29;

    [(NSLock *)self->_routeLock unlock];
  }
}

- (void)_sendRouteStatus:(id)status routeContext:(id)context
{
  contextCopy = context;
  statusCopy = status;
  v17 = objc_alloc_init(NMMessage);
  [(NMMessage *)v17 setType:301];
  v8 = +[NMCGizmoConnection sharedInstance];
  v9 = [statusCopy instanceCompatibleWithProtocolVersion:{objc_msgSend(v8, "protocolVersion")}];

  v10 = objc_alloc_init(NMArgument);
  [(NMArgument *)v10 setTag:402];
  data = [v9 data];
  [(NMArgument *)v10 setDataValue:data];

  [(NMMessage *)v17 addArgument:v10];
  v12 = objc_alloc_init(NMArgument);
  [(NMArgument *)v12 setTag:406];
  data2 = [contextCopy data];

  [(NMArgument *)v12 setDataValue:data2];
  [(NMMessage *)v17 addArgument:v12];
  v14 = +[NMCGizmoConnection sharedInstance];
  [v14 sendMessage:v17 options:0];

  [(NSLock *)self->_routeLock lock];
  v15 = [statusCopy copy];

  lastSentCompanionRouteStatus = self->_lastSentCompanionRouteStatus;
  self->_lastSentCompanionRouteStatus = v15;

  [(NSLock *)self->_routeLock unlock];
}

- (BOOL)_shouldSendRouteStatus:(id)status previousRouteStatus:(id)routeStatus
{
  statusCopy = status;
  routeStatusCopy = routeStatus;
  [(NSLock *)self->_routeLock lock];
  v8 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
  [(NSLock *)self->_routeLock unlock];
  v9 = +[NMCGizmoConnection sharedInstance];
  v10 = [v9 supportsTransportType:{objc_msgSend(v8, "transportType")}];

  if (v10)
  {
    remainingTime = [routeStatusCopy remainingTime];
    remainingTime2 = [statusCopy remainingTime];
    if (!self->_sendAllUpdates)
    {
      v13 = remainingTime2;
      feedbackType = [routeStatusCopy feedbackType];
      if (feedbackType == [statusCopy feedbackType])
      {
        hapticsType = [routeStatusCopy hapticsType];
        if (hapticsType == [statusCopy hapticsType])
        {
          isConnectedToCarplay = [routeStatusCopy isConnectedToCarplay];
          if (isConnectedToCarplay == [statusCopy isConnectedToCarplay])
          {
            guidancePromptsEnabled = [routeStatusCopy guidancePromptsEnabled];
            if (guidancePromptsEnabled == [statusCopy guidancePromptsEnabled])
            {
              lowGuidanceNavigation = [routeStatusCopy lowGuidanceNavigation];
              if (lowGuidanceNavigation == [statusCopy lowGuidanceNavigation])
              {
                displayedStepID = [routeStatusCopy displayedStepID];
                if (displayedStepID == [statusCopy displayedStepID])
                {
                  v20 = [routeStatusCopy effectiveStepIDInRoute:v8];
                  if (v20 == [statusCopy effectiveStepIDInRoute:v8])
                  {
                    selectedRideIndices = [routeStatusCopy selectedRideIndices];
                    selectedRideIndices2 = [statusCopy selectedRideIndices];
                    v23 = selectedRideIndices;
                    v24 = selectedRideIndices2;
                    v25 = v24;
                    if (v23 | v24)
                    {
                      if (!v23 || !v24)
                      {

                        v34 = 1;
                        alightMessage = v23;
LABEL_25:

                        goto LABEL_26;
                      }

                      v36 = [v23 isEqualToArray:v24];

                      if (!v36)
                      {
                        v34 = 1;
LABEL_26:

                        goto LABEL_18;
                      }
                    }

                    v26 = vcvtpd_s64_f64(remainingTime / 30.0);
                    v27 = vcvtpd_s64_f64(v13 / 30.0);
                    alightMessage = [statusCopy alightMessage];
                    if (alightMessage)
                    {
                      alightMessage2 = [statusCopy alightMessage];
                      identifier = [alightMessage2 identifier];
                      alightMessage3 = [routeStatusCopy alightMessage];
                      [alightMessage3 identifier];
                      v37 = v27;
                      v32 = v31 = v26;
                      v33 = [identifier isEqual:v32] ^ 1;
                      if (v31 == v37)
                      {
                        v34 = v33;
                      }

                      else
                      {
                        v34 = 1;
                      }
                    }

                    else
                    {
                      v34 = v26 != v27;
                    }

                    goto LABEL_25;
                  }
                }
              }
            }
          }
        }
      }
    }

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

LABEL_18:

  return v34;
}

- (void)_sendRouteUpdate:(id)update routeContext:(id)context
{
  contextCopy = context;
  updateCopy = update;
  v12 = objc_alloc_init(NMMessage);
  [(NMMessage *)v12 setType:311];
  v7 = objc_alloc_init(NMArgument);
  [(NMArgument *)v7 setTag:412];
  data = [updateCopy data];

  [(NMArgument *)v7 setDataValue:data];
  [(NMMessage *)v12 addArgument:v7];
  v9 = objc_alloc_init(NMArgument);
  [(NMArgument *)v9 setTag:406];
  data2 = [contextCopy data];

  [(NMArgument *)v9 setDataValue:data2];
  [(NMMessage *)v12 addArgument:v9];
  v11 = +[NMCGizmoConnection sharedInstance];
  [v11 sendMessage:v12 options:0];
}

- (void)_legacy_sendPreviewRouteDetails:(id)details context:(id)context
{
  detailsCopy = details;
  contextCopy = context;
  v8 = contextCopy;
  if (detailsCopy)
  {
    v9 = [GEOCompanionRouteStatus alloc];
    routeID = [detailsCopy routeID];
    v11 = [v9 initWithRouteID:routeID];

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    [v11 setTimestamp:?];

    [v11 setFeedbackType:8];
    contextCopy = [v11 setRemainingTime:{objc_msgSend(detailsCopy, "originalDuration")}];
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_100053214(contextCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [v8 simpleDescription];
    v15 = 138412290;
    v16 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "(Legacy) Will send preview route details/status to gizmo (context:%@)", &v15, 0xCu);
  }

  [(NMCNavigationProxy *)self _sendRouteDetails:detailsCopy routeStatus:v11 routeContext:v8 forced:0];
}

- (BOOL)_isCarPlayConnected
{
  currentSession = [(CARSessionStatus *)self->_carSessionStatus currentSession];
  v3 = currentSession != 0;

  return v3;
}

- (void)sessionDidConnect:(id)connect
{
  _isCarPlayConnected = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = _isCarPlayConnected;
  v6 = sub_100053214(_isCarPlayConnected);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarPlay session did connect (connected:%i)", buf, 8u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009910;
  v7[3] = &unk_100084F60;
  v7[4] = self;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  _isCarPlayConnected = [(NMCNavigationProxy *)self _isCarPlayConnected];
  v5 = _isCarPlayConnected;
  v6 = sub_100053214(_isCarPlayConnected);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarPlay session did disconnect (connected:%i)", buf, 8u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100009A34;
  v7[3] = &unk_100084F60;
  v7[4] = self;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

@end