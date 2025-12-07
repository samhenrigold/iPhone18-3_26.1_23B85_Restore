@interface MNNavigationService
+ (id)sharedService;
+ (unint64_t)_hashForProtocol:(id)protocol;
+ (unint64_t)clientInterfaceHash;
+ (unint64_t)daemonInterfaceHash;
- ($212C09783140BCCD23384160D545CE0D)originalRouteDivergenceCoordinate;
- (BOOL)guidancePromptsEnabled;
- (BOOL)isApproachingWaypoint;
- (BOOL)isDetour;
- (BOOL)isInNavigatingState;
- (BOOL)isInPreArrivalState;
- (BOOL)isNavigatingFromTrace;
- (BOOL)isResumingMultipointRoute;
- (BOOL)isTrackingCurrentLocation;
- (BOOL)startNavigationWithDetails:(id)details error:(id *)error;
- (BOOL)traceIsPlaying;
- (GEOComposedRoute)alternateWalkingRoute;
- (GEOComposedRoute)originalRoute;
- (GEOComposedRoute)route;
- (GEOComposedWaypoint)destination;
- (GEOComposedWaypoint)nextWaypoint;
- (GEOComposedWaypoint)origin;
- (GEOComposedWaypoint)originalDestination;
- (GEOComposedWaypoint)originalOrigin;
- (GEODirectionsRequest)currentRequest;
- (GEODirectionsResponse)currentResponse;
- (GEOResumeRouteHandle)resumeRouteHandle;
- (MNArrivalInfo)arrivalInfo;
- (MNBatteryChargeInfo)batteryChargeInfo;
- (MNDisplayETAInfo)alternateWalkingRouteDisplayETAInfo;
- (MNDisplayETAInfo)displayEtaInfo;
- (MNGuidanceLaneInfo)activeLaneInfo;
- (MNLocation)lastLocation;
- (MNRouteDistanceInfo)remainingDistanceInfo;
- (MNVehicleParkingInfo)vehicleParkingInfo;
- (NSArray)alternateRoutes;
- (NSArray)traceBookmarks;
- (NSString)currentVoiceLanguage;
- (NSString)description;
- (NSString)destinationName;
- (NSString)originalDestinationName;
- (NSString)tracePath;
- (double)distanceUntilManeuver;
- (double)distanceUntilSign;
- (double)timeUntilManeuver;
- (double)timeUntilSign;
- (double)traceDuration;
- (double)tracePosition;
- (id)_clientProxy;
- (id)batteryChargeInfoForRoute:(id)route;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (id)displayETAInfoForRoute:(id)route;
- (id)etaRouteForRoute:(id)route;
- (id)initPrivate;
- (id)realtimeUpdatesForRoutes:(id)routes;
- (id)remainingDistanceInfoForRoute:(id)route;
- (id)ticketForDirectionsRequest:(id)request;
- (int)desiredTransportType;
- (int)headingOrientation;
- (int)navigationState;
- (int)navigationTransportType;
- (int64_t)desiredNavigationType;
- (int64_t)navigationType;
- (int64_t)simulationType;
- (int64_t)upcomingAnchorPointIndex;
- (unint64_t)alternateRouteIndexForRoute:(id)route;
- (unint64_t)displayedStepIndex;
- (unint64_t)reconnectionRouteIndex;
- (unint64_t)routeIndex;
- (unint64_t)state;
- (unint64_t)stepIndex;
- (unint64_t)targetLegIndex;
- (unint64_t)voiceGuidanceLevel;
- (void)_navigationServiceCallback_DidChangeVoiceGuidanceLevel:(id)level;
- (void)_navigationServiceCallback_DidEndNavigation:(id)navigation;
- (void)_navigationServiceCallback_DidReceiveRoutingServiceError:(id)error;
- (void)_navigationServiceCallback_DidUpdateArrivalInfo:(id)info;
- (void)_navigationServiceCallback_DidUpdateBackgroundWalkingRoute:(id)route;
- (void)_navigationServiceCallback_DidUpdateDisplayETA:(id)a;
- (void)_navigationServiceCallback_DidUpdateMatchedLocation:(id)location;
- (void)_navigationServiceCallback_DidUpdateNavTrayGuidance:(id)guidance;
- (void)_navigationServiceCallback_DidUpdateResumeRouteHandle:(id)handle;
- (void)_navigationServiceCallback_DidUpdateStepIndex:(id)index;
- (void)_navigationServiceCallback_DidUpdateTargetLegIndex:(id)index;
- (void)_navigationServiceCallback_DidUpdateTrafficIncidentAlert:(id)alert;
- (void)_navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:(id)index;
- (void)_navigationServiceCallback_DidUpdateVehicleParkingInfo:(id)info;
- (void)_navigationServiceCallback_ShouldEnableIdleTimer:(id)timer;
- (void)_navigationServiceCallback_WillEndNavigation:(id)navigation;
- (void)_navigationServiceCallback_WillStartNavigation:(id)navigation;
- (void)_resetDetails;
- (void)_updateWithCallback:(id)callback;
- (void)advanceToNextLeg;
- (void)changeOfflineMode:(unsigned __int8)mode;
- (void)changeTransportType:(int)type route:(id)route;
- (void)changeUserOptions:(id)options;
- (void)closeForClient:(id)client;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)capability reason:(unint64_t)reason;
- (void)enableNavigationCapability:(unint64_t)capability reason:(unint64_t)reason;
- (void)forceReroute;
- (void)insertWaypoint:(id)waypoint;
- (void)navigationServiceProxy:(id)proxy didActivateAudioSession:(BOOL)session;
- (void)navigationServiceProxy:(id)proxy didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceProxy:(id)proxy didChangeNavigationState:(int)state;
- (void)navigationServiceProxy:(id)proxy didEnableGuidancePrompts:(BOOL)prompts;
- (void)navigationServiceProxy:(id)proxy didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didFailRerouteWithError:(id)error;
- (void)navigationServiceProxy:(id)proxy didFailWithError:(id)error;
- (void)navigationServiceProxy:(id)proxy didProcessSpeechEvent:(id)event;
- (void)navigationServiceProxy:(id)proxy didReceiveRealtimeUpdates:(id)updates;
- (void)navigationServiceProxy:(id)proxy didReceiveTransitAlert:(id)alert;
- (void)navigationServiceProxy:(id)proxy didRerouteWithRoute:(id)route withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationServiceProxy:(id)proxy didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationServiceProxy:(id)proxy didStartSpeakingPrompt:(id)prompt;
- (void)navigationServiceProxy:(id)proxy didSwitchToNewTransportType:(int)type newRoute:(id)route;
- (void)navigationServiceProxy:(id)proxy didUpdateAlternateRoutes:(id)routes;
- (void)navigationServiceProxy:(id)proxy didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateETAResponseForRoute:(id)route;
- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details;
- (void)navigationServiceProxy:(id)proxy didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateRouteWithNewRideSelection:(id)selection;
- (void)navigationServiceProxy:(id)proxy didUpdateTracePlaybackDetails:(id)details;
- (void)navigationServiceProxy:(id)proxy displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationServiceProxy:(id)proxy displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0;
- (void)navigationServiceProxy:(id)proxy displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side;
- (void)navigationServiceProxy:(id)proxy hideJunctionViewForId:(id)id;
- (void)navigationServiceProxy:(id)proxy hideLaneDirectionsForId:(id)id;
- (void)navigationServiceProxy:(id)proxy isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationServiceProxy:(id)proxy showJunctionView:(id)view;
- (void)navigationServiceProxy:(id)proxy showLaneDirections:(id)directions;
- (void)navigationServiceProxy:(id)proxy triggerHaptics:(int)haptics;
- (void)navigationServiceProxy:(id)proxy updateSignsWithARInfo:(id)info;
- (void)navigationServiceProxy:(id)proxy updateSignsWithInfo:(id)info;
- (void)navigationServiceProxy:(id)proxy usePersistentDisplay:(BOOL)display;
- (void)navigationServiceProxy:(id)proxy willAnnounce:(unint64_t)announce inSeconds:(double)seconds;
- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceProxy:(id)proxy willProcessSpeechEvent:(id)event;
- (void)navigationServiceProxyBeginGuidanceUpdate:(id)update;
- (void)navigationServiceProxyDidArrive:(id)arrive;
- (void)navigationServiceProxyDidCancelReroute:(id)reroute;
- (void)navigationServiceProxyDidEnterPreArrivalState:(id)state;
- (void)navigationServiceProxyDidFinishLocationUpdate:(id)update;
- (void)navigationServiceProxyEndGuidanceUpdate:(id)update;
- (void)navigationServiceProxyHideSecondaryStep:(id)step;
- (void)navigationServiceProxyWillPauseNavigation:(id)navigation;
- (void)navigationServiceProxyWillReroute:(id)reroute;
- (void)navigationServiceProxyWillResumeFromPauseNavigation:(id)navigation;
- (void)openForClient:(id)client;
- (void)pauseRealtimeUpdates;
- (void)recordPedestrianTracePath:(id)path;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)repeatCurrentGuidance:(id)guidance;
- (void)repeatCurrentTrafficAlert:(id)alert;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdates;
- (void)setDisplayedStepIndex:(unint64_t)index;
- (void)setGuidancePromptsEnabled:(BOOL)enabled;
- (void)setGuidanceType:(unint64_t)type;
- (void)setHeadingOrientation:(int)orientation;
- (void)setIsConnectedToCarplay:(BOOL)carplay;
- (void)setIsDisplayingNavigationTray:(BOOL)tray;
- (void)setJunctionViewImageWidth:(double)width height:(double)height;
- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)setSimulationPosition:(double)position;
- (void)setSimulationSpeedMultiplier:(double)multiplier;
- (void)setSimulationSpeedOverride:(double)override;
- (void)setTraceIsPlaying:(BOOL)playing;
- (void)setTracePlaybackSpeed:(double)speed;
- (void)setTracePosition:(double)position;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)override;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)reason;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)route;
- (void)updateDestination:(id)destination;
- (void)updateForUserIncidentReport:(id)report;
- (void)vibrateForPrompt:(unint64_t)prompt completion:(id)completion;
@end

@implementation MNNavigationService

+ (id)sharedService
{
  if (sharedService_once != -1)
  {
    dispatch_once(&sharedService_once, &__block_literal_global_3966);
  }

  v3 = sharedService__singleton;

  return v3;
}

void __36__MNNavigationService_sharedService__block_invoke()
{
  v0 = [[MNNavigationService alloc] initPrivate];
  v1 = sharedService__singleton;
  sharedService__singleton = v0;
}

- (id)initPrivate
{
  v34 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = MNNavigationService;
  v2 = [(MNNavigationService *)&v23 init];
  if (v2)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    _navigation_isNavd = [processInfo _navigation_isNavd];

    if (_navigation_isNavd)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNNavigationService is not allowed on navd"];
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v25 = "[MNNavigationService initPrivate]";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m";
        v28 = 1024;
        v29 = 104;
        v30 = 2080;
        v31 = "![[NSProcessInfo processInfo] _navigation_isNavd]";
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    [(MNNavigationService *)v2 _resetDetails];
    if (+[MNNavigationService supportsNavigation])
    {
      if (GEOConfigGetBOOL())
      {
        v5 = objc_alloc_init(MNNavigationServiceRemoteProxy);
        remoteProxy = v2->_remoteProxy;
        v2->_remoteProxy = v5;

        [(MNNavigationServiceRemoteProxy *)v2->_remoteProxy setDelegate:v2];
        v7 = v2->_remoteProxy;
        proxy = v2->_proxy;
        v2->_proxy = v7;
      }

      else
      {
        v9 = objc_alloc_init(MNNavigationServiceLocalProxy);
        [(MNNavigationServiceLocalProxy *)v9 setDelegate:v2];
        v10 = v2->_proxy;
        v2->_proxy = v9;
        proxy = v9;

        [(MNNavigationServiceLocalProxy *)proxy reset];
      }
    }

    objc_storeStrong(&v2->_queue, MEMORY[0x1E69E96A0]);
    v11 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F4EF5798 queue:v2->_queue];
    navigationObservers = v2->_navigationObservers;
    v2->_navigationObservers = v11;

    v13 = objc_opt_new();
    cachedUserOptions = v2->_cachedUserOptions;
    v2->_cachedUserOptions = v13;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    disabledCapabilities = v2->_disabledCapabilities;
    v2->_disabledCapabilities = v17;

    v19 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();
  }

  return v2;
}

- (void)_resetDetails
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[MNNavigationDetails alloc] initForServer:0];
  [(MNNavigationService *)self setDetails:v4];

  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "Resetting navigation details.", v6, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (GEOComposedRoute)route
{
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];

  return currentRoute;
}

- (MNArrivalInfo)arrivalInfo
{
  details = [(MNNavigationService *)self details];
  arrivalInfo = [details arrivalInfo];

  return arrivalInfo;
}

- (BOOL)isInNavigatingState
{
  details = [(MNNavigationService *)self details];
  v3 = [details state] > 3;

  return v3;
}

- (unint64_t)stepIndex
{
  details = [(MNNavigationService *)self details];
  stepIndex = [details stepIndex];

  return stepIndex;
}

- (int)navigationState
{
  details = [(MNNavigationService *)self details];
  navigationState = [details navigationState];

  return navigationState;
}

- (unint64_t)state
{
  details = [(MNNavigationService *)self details];
  state = [details state];

  return state;
}

- (GEODirectionsResponse)currentResponse
{
  details = [(MNNavigationService *)self details];
  directionsResponse = [details directionsResponse];

  return directionsResponse;
}

- (NSString)currentVoiceLanguage
{
  if ([(MNNavigationService *)self state]== 4 || [(MNNavigationService *)self state]== 5)
  {
    details = [(MNNavigationService *)self details];
    currentVoiceLanguage = [details currentVoiceLanguage];
  }

  else
  {
    currentVoiceLanguage = +[MNVoiceLanguageUtil systemDefaultVoiceLanguage];
  }

  return currentVoiceLanguage;
}

- (int)navigationTransportType
{
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];
  if (currentRoute)
  {
    details2 = [(MNNavigationService *)self details];
    currentRoute2 = [details2 currentRoute];
    transportType = [currentRoute2 transportType];
  }

  else
  {
    transportType = 4;
  }

  return transportType;
}

- (MNBatteryChargeInfo)batteryChargeInfo
{
  details = [(MNNavigationService *)self details];
  batteryChargeInfo = [details batteryChargeInfo];

  return batteryChargeInfo;
}

- (MNDisplayETAInfo)displayEtaInfo
{
  details = [(MNNavigationService *)self details];
  displayETAInfo = [details displayETAInfo];

  return displayETAInfo;
}

- (MNRouteDistanceInfo)remainingDistanceInfo
{
  details = [(MNNavigationService *)self details];
  remainingDistanceInfo = [details remainingDistanceInfo];

  return remainingDistanceInfo;
}

- (MNLocation)lastLocation
{
  details = [(MNNavigationService *)self details];
  location = [details location];

  return location;
}

- (BOOL)isNavigatingFromTrace
{
  details = [(MNNavigationService *)self details];
  [details traceDuration];
  v4 = v3 > 0.0;

  return v4;
}

- (int64_t)simulationType
{
  details = [(MNNavigationService *)self details];
  simulationType = [details simulationType];

  return simulationType;
}

- (unint64_t)displayedStepIndex
{
  details = [(MNNavigationService *)self details];
  displayedStepIndex = [details displayedStepIndex];

  return displayedStepIndex;
}

- (GEOComposedWaypoint)nextWaypoint
{
  route = [(MNNavigationService *)self route];
  targetLegIndex = [(MNNavigationService *)self targetLegIndex];
  if (route && (v5 = targetLegIndex, [route legs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 < v7))
  {
    legs = [route legs];
    v9 = [legs objectAtIndexedSubscript:v5];
    destination = [v9 destination];
  }

  else
  {
    destination = 0;
  }

  return destination;
}

- (unint64_t)targetLegIndex
{
  details = [(MNNavigationService *)self details];
  targetLegIndex = [details targetLegIndex];

  return targetLegIndex;
}

- (MNDisplayETAInfo)alternateWalkingRouteDisplayETAInfo
{
  details = [(MNNavigationService *)self details];
  backgroundWalkingRouteInfo = [details backgroundWalkingRouteInfo];
  displayETAInfo = [backgroundWalkingRouteInfo displayETAInfo];

  return displayETAInfo;
}

- (GEOComposedWaypoint)destination
{
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];
  destination = [currentRoute destination];

  return destination;
}

- (GEOComposedRoute)alternateWalkingRoute
{
  details = [(MNNavigationService *)self details];
  backgroundWalkingRouteInfo = [details backgroundWalkingRouteInfo];
  route = [backgroundWalkingRouteInfo route];

  return route;
}

- (double)distanceUntilManeuver
{
  details = [(MNNavigationService *)self details];
  [details distanceUntilManeuver];
  v4 = v3;

  return v4;
}

- (NSArray)alternateRoutes
{
  details = [(MNNavigationService *)self details];
  alternateRoutes = [details alternateRoutes];

  return alternateRoutes;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  selfCopy = self;
  v86[6] = *MEMORY[0x1E69E9840];
  route = [(MNNavigationService *)self route];
  v72 = route;
  v73 = selfCopy;
  if (route)
  {
    v85[0] = @"routeID";
    v5 = route;
    uniqueRouteID = [route uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    v7 = uUIDString;
    if (uUIDString)
    {
      v8 = uUIDString;
    }

    else
    {
      v8 = &stru_1F4EB6B70;
    }

    v86[0] = v8;
    v85[1] = @"name";
    name = [v5 name];
    v10 = name;
    if (name)
    {
      v11 = name;
    }

    else
    {
      v11 = &stru_1F4EB6B70;
    }

    v86[1] = v11;
    v85[2] = @"legs";
    v12 = MEMORY[0x1E696AD98];
    legs = [v5 legs];
    v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(legs, "count")}];
    v86[2] = v13;
    v85[3] = @"segments";
    v14 = MEMORY[0x1E696AD98];
    segments = [v5 segments];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(segments, "count")}];
    v86[3] = v16;
    v85[4] = @"steps";
    v17 = MEMORY[0x1E696AD98];
    steps = [v5 steps];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(steps, "count")}];
    v86[4] = v19;
    v85[5] = @"length";
    v20 = MEMORY[0x1E696AD98];
    [v5 distance];
    v21 = [v20 numberWithDouble:?];
    v86[5] = v21;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:6];

    selfCopy = v73;
  }

  else
  {
    v71 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  alternateRoutes = [(MNNavigationService *)selfCopy alternateRoutes];
  v24 = [alternateRoutes countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v75;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v75 != v26)
        {
          objc_enumerationMutation(alternateRoutes);
        }

        uniqueRouteID2 = [*(*(&v74 + 1) + 8 * i) uniqueRouteID];
        uUIDString2 = [uniqueRouteID2 UUIDString];
        v30 = uUIDString2;
        if (uUIDString2)
        {
          v31 = uUIDString2;
        }

        else
        {
          v31 = &stru_1F4EB6B70;
        }

        [(__CFString *)array addObject:v31];
      }

      v25 = [alternateRoutes countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v25);
  }

  displayEtaInfo = [(MNNavigationService *)selfCopy displayEtaInfo];
  v33 = displayEtaInfo;
  if (displayEtaInfo)
  {
    legInfos = [displayEtaInfo legInfos];
    firstObject = [legInfos firstObject];

    v70 = firstObject;
    if (firstObject)
    {
      v82[0] = @"remainingMinutes";
      v36 = 0x1E696A000uLL;
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject, "remainingMinutes")}];
      v83[0] = v37;
      v82[1] = @"displayETA";
      v38 = [firstObject eta];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = &stru_1F4EB6B70;
      }

      v83[1] = v40;
      v82[2] = @"legIndex";
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject, "legIndex")}];
      v83[2] = v41;
      v82[3] = @"timeZone";
      timeZone = [firstObject timeZone];
      v43 = [timeZone description];
      v44 = v33;
      v45 = v43;
      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = &stru_1F4EB6B70;
      }

      v83[3] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:4];

      v33 = v44;
    }

    else
    {
      v47 = 0;
      v36 = 0x1E696A000uLL;
    }

    v80[0] = @"routeID";
    routeID = [v33 routeID];
    uUIDString3 = [routeID UUIDString];
    v51 = v33;
    v52 = uUIDString3;
    if (uUIDString3)
    {
      v53 = uUIDString3;
    }

    else
    {
      v53 = &stru_1F4EB6B70;
    }

    v81[0] = v53;
    v80[1] = @"legInfos";
    v54 = MEMORY[0x1E696AD98];
    legInfos2 = [v51 legInfos];
    v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(legInfos2, "count")}];
    v57 = v56;
    v80[2] = @"legInfos[0]";
    if (v47)
    {
      v58 = v47;
    }

    else
    {
      v58 = &stru_1F4EB6B70;
    }

    v81[1] = v56;
    v81[2] = v58;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];

    v33 = v51;
    selfCopy = v73;
  }

  else
  {
    v48 = 0;
    v36 = 0x1E696A000;
  }

  v78[0] = @"state";
  v59 = [*(v36 + 3480) numberWithUnsignedInteger:{-[MNNavigationService state](selfCopy, "state")}];
  v79[0] = v59;
  v78[1] = @"navigationState";
  v60 = [*(v36 + 3480) numberWithInt:{-[MNNavigationService navigationState](selfCopy, "navigationState")}];
  v79[1] = v60;
  v78[2] = @"navigationType";
  v61 = [*(v36 + 3480) numberWithInteger:{-[MNNavigationService navigationType](selfCopy, "navigationType")}];
  v62 = v61;
  if (v71)
  {
    v63 = v71;
  }

  else
  {
    v63 = &stru_1F4EB6B70;
  }

  v79[2] = v61;
  v79[3] = v63;
  v78[3] = @"currentRoute";
  v78[4] = @"alternateRoutes";
  if (array)
  {
    v64 = array;
  }

  else
  {
    v64 = &stru_1F4EB6B70;
  }

  v78[5] = @"displayETA";
  if (v48)
  {
    v65 = v48;
  }

  else
  {
    v65 = &stru_1F4EB6B70;
  }

  v79[4] = v64;
  v79[5] = v65;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:6];

  return v66;
}

- (void)navigationServiceProxy:(id)proxy didReceiveTransitAlert:(id)alert
{
  v11 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReceiveTransitAlert:alertCopy];
}

- (void)navigationServiceProxy:(id)proxy didReceiveRealtimeUpdates:(id)updates
{
  objc_storeStrong(&self->_realtimeUpdates, updates);
  updatesCopy = updates;
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReceiveRealtimeUpdates:updatesCopy];
}

- (void)navigationServiceProxy:(id)proxy triggerHaptics:(int)haptics
{
  v4 = *&haptics;
  v11 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self triggerHaptics:v4];
}

- (void)navigationServiceProxy:(id)proxy didProcessSpeechEvent:(id)event
{
  v13 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v11, 0xCu);
  }

  if ([eventCopy hasSpokenGuidance])
  {
    details = [(MNNavigationService *)self details];
    uniqueID = [eventCopy uniqueID];
    [details markAnnouncementSpoken:uniqueID];
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didProcessSpeechEvent:eventCopy];
}

- (void)navigationServiceProxy:(id)proxy willProcessSpeechEvent:(id)event
{
  v11 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willProcessSpeechEvent:eventCopy];
}

- (void)navigationServiceProxy:(id)proxy didStartSpeakingPrompt:(id)prompt
{
  v11 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didStartSpeakingPrompt:promptCopy];
}

- (void)navigationServiceProxy:(id)proxy didActivateAudioSession:(BOOL)session
{
  sessionCopy = session;
  v11 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didActivateAudioSession:sessionCopy];
}

- (void)navigationServiceProxy:(id)proxy didUpdateTracePlaybackDetails:(id)details
{
  v40 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  eventType = [detailsCopy eventType];
  if (eventType <= 3)
  {
    if (eventType > 1)
    {
      if (eventType == 2)
      {
        details = [(MNNavigationService *)self details];
        [details setTraceIsPlaying:1];

        [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidResumeTrace:self];
      }

      else
      {
        details2 = [(MNNavigationService *)self details];
        [details2 setTraceIsPlaying:0];

        [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidPauseTrace:self];
      }
    }

    else if (eventType)
    {
      if (eventType == 1)
      {
        tracePath = [detailsCopy tracePath];
        details3 = [(MNNavigationService *)self details];
        [details3 setTracePath:tracePath];

        [detailsCopy traceDuration];
        v10 = v9;
        details4 = [(MNNavigationService *)self details];
        [details4 setTraceDuration:v10];

        bookmarks = [detailsCopy bookmarks];
        details5 = [(MNNavigationService *)self details];
        [details5 setTraceBookmarks:bookmarks];

        details6 = [(MNNavigationService *)self details];
        [details6 setTraceIsPlaying:1];

        v15 = objc_alloc_init(MNNavigationTraceInfo);
        pedestrianTracePath = [detailsCopy pedestrianTracePath];
        [(MNNavigationTraceInfo *)v15 setPedestrianTracePath:pedestrianTracePath];

        [detailsCopy pedestrianTraceStartRelativeTimestamp];
        [(MNNavigationTraceInfo *)v15 setPedestrianTraceStartRelativeTimestamp:?];
        [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didFinishLoadingTrace:v15];
      }
    }

    else
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v34 = 136315650;
        v35 = "[MNNavigationService navigationServiceProxy:didUpdateTracePlaybackDetails:]";
        v36 = 2080;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m";
        v38 = 1024;
        v39 = 1425;
        _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v34, 0x1Cu);
      }
    }

    goto LABEL_21;
  }

  if (eventType <= 5)
  {
    if (eventType == 4)
    {
      [detailsCopy currentPosition];
      v28 = v27;
      details7 = [(MNNavigationService *)self details];
      [details7 setTracePosition:v28];

      navigationObservers = self->_navigationObservers;
      details8 = [(MNNavigationService *)self details];
      [details8 tracePosition];
      [(GEOObserverHashTable *)navigationObservers navigationService:self didPlayTracePosition:?];
    }

    else
    {
      [detailsCopy currentPosition];
      v18 = v17;
      details9 = [(MNNavigationService *)self details];
      [details9 setTracePosition:v18];

      v20 = self->_navigationObservers;
      details8 = [(MNNavigationService *)self details];
      [details8 tracePosition];
      [(GEOObserverHashTable *)v20 navigationService:self didSeekToTracePosition:?];
    }

    goto LABEL_18;
  }

  if (eventType == 6)
  {
    bookmarks2 = [detailsCopy bookmarks];
    details10 = [(MNNavigationService *)self details];
    [details10 setTraceBookmarks:bookmarks2];

    -[GEOObserverHashTable navigationService:didRecordTraceBookmarkWithID:](self->_navigationObservers, "navigationService:didRecordTraceBookmarkWithID:", self, [detailsCopy recordedBookmarkID]);
    goto LABEL_21;
  }

  if (eventType == 7)
  {
    tracePath2 = [detailsCopy tracePath];
    details11 = [(MNNavigationService *)self details];
    [details11 setTracePath:tracePath2];

    v25 = self->_navigationObservers;
    details8 = [detailsCopy tracePath];
    [(GEOObserverHashTable *)v25 navigationService:self didStartRecordingTraceWithPath:details8];
LABEL_18:
  }

LABEL_21:
}

- (void)navigationServiceProxy:(id)proxy didUpdateAlternateRoutes:(id)routes
{
  v45 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  array = [MEMORY[0x1E695DF70] array];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"(%@) count: %d", v8, objc_msgSend(routesCopy, "count")];
  [array addObject:v9];

  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = routesCopy;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = MEMORY[0x1E696AEC0];
        route = [v14 route];
        name = [route name];
        displayETAInfo = [v14 displayETAInfo];
        v19 = [v15 stringWithFormat:@"    %@ | %d minutes", name, objc_msgSend(displayETAInfo, "displayRemainingMinutesToEndOfRoute")];
        [array addObject:v19];

        traffic = [v14 traffic];

        if (traffic)
        {
          traffic2 = [v14 traffic];
          routeID = [v14 routeID];
          [v37 setObject:traffic2 forKeyedSubscript:routeID];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v11);
  }

  details = [(MNNavigationService *)self details];
  [details setAlternateRoutes:obj];

  v24 = MEMORY[0x1E696AEC0];
  details2 = [(MNNavigationService *)self details];
  routeLookupIDs = [details2 routeLookupIDs];
  v27 = [routeLookupIDs componentsJoinedByString:{@", "}];
  v28 = [v24 stringWithFormat:@"Known route IDs: %@", v27];
  [array addObject:v28];

  v29 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [array componentsJoinedByString:@"\n"];
    *buf = 138412290;
    v43 = v30;
    _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  navigationObservers = self->_navigationObservers;
  details3 = [(MNNavigationService *)self details];
  alternateRoutes = [details3 alternateRoutes];
  v34 = [v37 copy];
  [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateAlternateRoutes:alternateRoutes traffics:v34];
}

- (void)navigationServiceProxy:(id)proxy didFailRerouteWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v9, 0x16u);
  }

  -[GEOObserverHashTable navigationService:failedRerouteWithErrorCode:](self->_navigationObservers, "navigationService:failedRerouteWithErrorCode:", self, [errorCopy code]);
}

- (void)navigationServiceProxy:(id)proxy didSwitchToNewTransportType:(int)type newRoute:(id)route
{
  v5 = *&type;
  v23 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  [details setBackgroundWalkingRouteInfo:0];

  details2 = [(MNNavigationService *)self details];
  [details2 setVehicleParkingInfo:0];

  details3 = [(MNNavigationService *)self details];
  [details3 setCurrentRoute:routeCopy withAlternateRoutes:0];

  v12 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    details4 = [(MNNavigationService *)self details];
    routeLookupIDs = [details4 routeLookupIDs];
    v16 = [routeLookupIDs componentsJoinedByString:{@", "}];
    v19 = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@)\nKnown route IDs: (%@)", &v19, 0x16u);
  }

  route = [routeCopy route];
  traffic = [routeCopy traffic];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didSwitchToNewTransportType:v5 newRoute:route traffic:traffic];
}

- (void)navigationServiceProxy:(id)proxy didUpdateRouteWithNewRideSelection:(id)selection
{
  v19 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  details = [(MNNavigationService *)self details];
  [details setCurrentRoute:selectionCopy withAlternateRoutes:0];

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    details2 = [(MNNavigationService *)self details];
    routeLookupIDs = [details2 routeLookupIDs];
    v12 = [routeLookupIDs componentsJoinedByString:{@", "}];
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)\nKnown route IDs: (%@)", &v15, 0x16u);
  }

  navigationObservers = self->_navigationObservers;
  route = [selectionCopy route];
  [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateRouteWithNewRideSelection:route];
}

- (void)navigationServiceProxyDidCancelReroute:(id)reroute
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidCancelReroute:self];
}

- (void)navigationServiceProxy:(id)proxy didRerouteWithRoute:(id)route withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  v44 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  routeCopy = route;
  locationCopy = location;
  routesCopy = routes;
  if (routeCopy && ([routeCopy route], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    details = [(MNNavigationService *)self details];
    [details setCurrentRoute:routeCopy withAlternateRoutes:routesCopy];

    v19 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      routeID = [routeCopy routeID];
      v34 = proxyCopy;
      v22 = [routesCopy count];
      details2 = [(MNNavigationService *)self details];
      routeLookupIDs = [details2 routeLookupIDs];
      [routeLookupIDs componentsJoinedByString:{@", "}];
      v24 = v35 = reason;
      *buf = 138413058;
      v37 = v20;
      v38 = 2112;
      v39 = routeID;
      v40 = 1024;
      v41 = v22;
      proxyCopy = v34;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "(%@) %@ | alternate routes: %d\nKnown route IDs: (%@)", buf, 0x26u);

      reason = v35;
    }

    details3 = [(MNNavigationService *)self details];
    currentRoute = [details3 currentRoute];

    details4 = [(MNNavigationService *)self details];
    [details4 setLocation:locationCopy];

    [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReroute:currentRoute rerouteReason:reason];
    routeID2 = [locationCopy routeID];

    if (routeID2)
    {
      [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateMatchedLocation:locationCopy];
    }

    navigationObservers = self->_navigationObservers;
    displayETAInfo = [routeCopy displayETAInfo];
    remainingDistanceInfo = [routeCopy remainingDistanceInfo];
    batteryChargeInfo = [routeCopy batteryChargeInfo];
    [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateDisplayETA:displayETAInfo remainingDistance:remainingDistanceInfo batteryChargeInfo:batteryChargeInfo];
  }

  else
  {
    currentRoute = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(currentRoute, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, currentRoute, OS_LOG_TYPE_ERROR, "didRerouteWithRoute: was called with a null routeInfo or route", buf, 2u);
    }
  }
}

- (void)navigationServiceProxyWillReroute:(id)reroute
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillReroute:self];
}

- (void)navigationServiceProxy:(id)proxy didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index
{
  v16 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v14, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  [details setPreviewRoutes:routesCopy withSelectedRouteIndex:index];

  details2 = [(MNNavigationService *)self details];
  previewRoutes = [details2 previewRoutes];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdatePreviewRoutes:previewRoutes withSelectedRouteIndex:index];
}

- (void)navigationServiceProxy:(id)proxy didUpdateETAResponseForRoute:(id)route
{
  v31 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    route = [routeCopy route];
    name = [route name];
    routeID = [routeCopy routeID];
    v25 = 138543874;
    v26 = v8;
    v27 = 2112;
    v28 = name;
    v29 = 2112;
    v30 = routeID;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ | route ID: %@", &v25, 0x20u);
  }

  details = [(MNNavigationService *)self details];
  [details updateETATrafficForRoute:routeCopy];

  details2 = [(MNNavigationService *)self details];
  routeID2 = [routeCopy routeID];
  v15 = [details2 routeInfoForID:routeID2];

  if (v15)
  {
    navigationObservers = self->_navigationObservers;
    etaResponse = [v15 etaResponse];
    route2 = [v15 route];
    [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateETAResponse:etaResponse forRoute:route2];

    v19 = self->_navigationObservers;
    routeID3 = [v15 routeID];
    [(GEOObserverHashTable *)v19 navigationService:self didUpdateTrafficForRouteID:routeID3];

    v21 = self->_navigationObservers;
    route3 = [v15 route];
    mutableData = [route3 mutableData];
    route4 = [v15 route];
    [(GEOObserverHashTable *)v21 navigationService:self didUpdateMutableData:mutableData forRoute:route4];
  }
}

- (void)navigationServiceProxy:(id)proxy didEnableGuidancePrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  v14 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    v13 = promptsCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v10, 0x12u);
  }

  details = [(MNNavigationService *)self details];
  [details setGuidancePromptsEnabled:promptsCopy];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didEnableGuidancePrompts:promptsCopy];
}

- (void)navigationServiceProxy:(id)proxy hideJunctionViewForId:(id)id
{
  v11 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self hideJunctionViewForId:idCopy];
}

- (void)navigationServiceProxy:(id)proxy showJunctionView:(id)view
{
  v11 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self showJunctionView:viewCopy];
}

- (void)navigationServiceProxy:(id)proxy hideLaneDirectionsForId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)%@", &v15, 0x16u);
  }

  activeLaneInfo = [(MNNavigationDetails *)self->_details activeLaneInfo];
  uniqueID = [activeLaneInfo uniqueID];
  v11 = [uniqueID isEqual:idCopy];

  if ((v11 & 1) == 0)
  {
    v12 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      activeLaneInfo2 = [(MNNavigationDetails *)self->_details activeLaneInfo];
      uniqueID2 = [activeLaneInfo2 uniqueID];
      v15 = 138412546;
      v16 = idCopy;
      v17 = 2112;
      v18 = uniqueID2;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Requested to remove active lane info with ID %@, but active info was %@", &v15, 0x16u);
    }
  }

  [(MNNavigationDetails *)self->_details setActiveLaneInfo:0];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self hideLaneDirectionsForId:idCopy];
}

- (void)navigationServiceProxy:(id)proxy showLaneDirections:(id)directions
{
  v16 = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    uniqueID = [directionsCopy uniqueID];
    v10 = 138543874;
    v11 = v8;
    v12 = 2112;
    v13 = directionsCopy;
    v14 = 2112;
    v15 = uniqueID;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)%@, %@", &v10, 0x20u);
  }

  [(MNNavigationDetails *)self->_details setActiveLaneInfo:directionsCopy];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self showLaneDirections:directionsCopy];
}

- (void)navigationServiceProxy:(id)proxy usePersistentDisplay:(BOOL)display
{
  displayCopy = display;
  v13 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v8;
    v11 = 1024;
    v12 = displayCopy;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)%d", &v9, 0x12u);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self usePersistentDisplay:displayCopy];
}

- (void)navigationServiceProxy:(id)proxy updateSignsWithARInfo:(id)info
{
  v9 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = infoCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithARInfo:) %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self updateSignsWithARInfo:infoCopy];
}

- (void)navigationServiceProxy:(id)proxy updateSignsWithInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  secondarySign = [infoCopy secondarySign];

  v7 = MNGetMNNavigationServiceLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (secondarySign)
  {
    if (v8)
    {
      primarySign = [infoCopy primarySign];
      secondarySign2 = [infoCopy secondarySign];
      v11 = 138412546;
      v12 = primarySign;
      v13 = 2112;
      v14 = secondarySign2;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithInfo:) %@ / %@", &v11, 0x16u);

LABEL_6:
    }
  }

  else if (v8)
  {
    primarySign = [infoCopy primarySign];
    v11 = 138412290;
    v12 = primarySign;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithInfo:) %@", &v11, 0xCu);
    goto LABEL_6;
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self updateSignsWithInfo:infoCopy];
}

- (void)navigationServiceProxyEndGuidanceUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceEndGuidanceUpdate:self];
}

- (void)navigationServiceProxyBeginGuidanceUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceBeginGuidanceUpdate:self];
}

- (void)navigationServiceProxyHideSecondaryStep:(id)step
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidHideSecondaryStep:self];
}

- (void)navigationServiceProxy:(id)proxy displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side
{
  v8 = *&side;
  v9 = *&type;
  v21 = *MEMORY[0x1E69E9840];
  textCopy = text;
  instructionsCopy = instructions;
  stepCopy = step;
  v17 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = NSStringFromSelector(a2);
    v19 = 138543362;
    v20 = v18;
    _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_INFO, "(%{public}@)", &v19, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self displaySecondaryStep:stepCopy instructions:instructionsCopy shieldType:v9 shieldText:textCopy drivingSide:v8];
}

- (void)navigationServiceProxy:(id)proxy displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v9, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self displayManeuverAlertForAnnouncementStage:stage];
}

- (void)navigationServiceProxy:(id)proxy displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0
{
  v10 = *&side;
  v11 = *&type;
  v24 = *MEMORY[0x1E69E9840];
  textCopy = text;
  instructionsCopy = instructions;
  stepCopy = step;
  v19 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138543362;
    v23 = v20;
    _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "(%{public}@)", buf, 0xCu);
  }

  LOBYTE(v21) = synthetic;
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self displayPrimaryStep:stepCopy instructions:instructionsCopy shieldType:v11 shieldText:textCopy drivingSide:v10 maneuverStepIndex:index isSynthetic:v21];
}

- (void)navigationServiceProxy:(id)proxy willAnnounce:(unint64_t)announce inSeconds:(double)seconds
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "(%{public}@)", &v11, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willAnnounce:announce inSeconds:seconds];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)", &v15, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  [details setDistanceUntilSign:sign];

  details2 = [(MNNavigationService *)self details];
  [details2 setTimeUntilSign:untilSign];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDistanceUntilSign:index timeUntilSign:sign forStepIndex:untilSign];
}

- (void)navigationServiceProxy:(id)proxy didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v16 = 138543362;
    v17 = v12;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)", &v16, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  [details setProceedToRouteDistance:distance];

  details2 = [(MNNavigationService *)self details];
  [details2 setDisplayString:stringCopy];

  details3 = [(MNNavigationService *)self details];
  [details3 setClosestStepIndex:index];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateProceedToRouteDistance:stringCopy displayString:index closestStepIndex:distance];
}

- (void)navigationServiceProxyDidArrive:(id)arrive
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidArrive:self];
}

- (void)navigationServiceProxyDidEnterPreArrivalState:(id)state
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v8, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  [details setIsInPreArrivalState:1];

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidEnterPreArrivalState:self];
}

- (void)navigationServiceProxy:(id)proxy didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  v26 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    name = [waypointCopy name];
    v14 = name;
    if (reason - 1 > 5)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_1E842AE50[reason - 1];
    }

    v18 = 138544131;
    v19 = v12;
    v20 = 2113;
    v21 = name;
    v22 = 1024;
    indexCopy = index;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d | reason: %@", &v18, 0x26u);
  }

  details = [(MNNavigationService *)self details];
  [details setIsApproachingWaypoint:0];

  details2 = [(MNNavigationService *)self details];
  [details2 setIsInPreArrivalState:0];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didResumeNavigatingFromWaypoint:waypointCopy endOfLegIndex:index reason:reason];
}

- (void)navigationServiceProxy:(id)proxy didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    name = [waypointCopy name];
    v12 = 138543875;
    v13 = v10;
    v14 = 2113;
    v15 = name;
    v16 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d", &v12, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didArriveAtWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationServiceProxy:(id)proxy didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    name = [waypointCopy name];
    v12 = 138543875;
    v13 = v10;
    v14 = 2113;
    v15 = name;
    v16 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d", &v12, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didEnterPreArrivalStateForWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationServiceProxy:(id)proxy isApproachingEndOfLeg:(unint64_t)leg
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v8;
    v12 = 1024;
    legCopy = leg;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)legIndex: %d", &v10, 0x12u);
  }

  details = [(MNNavigationService *)self details];
  [details setIsApproachingWaypoint:1];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self isApproachingEndOfLeg:leg];
}

- (void)navigationServiceProxyDidFinishLocationUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidFinishLocationUpdate:self];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v15 = 138543874;
    v16 = v12;
    v17 = 2048;
    maneuverCopy = maneuver;
    v19 = 2048;
    untilManeuverCopy = untilManeuver;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)| %0.1f meters, %0.1f seconds", &v15, 0x20u);
  }

  details = [(MNNavigationService *)self details];
  [details setDistanceUntilManeuver:maneuver];

  details2 = [(MNNavigationService *)self details];
  [details2 setTimeUntilManeuver:untilManeuver];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDistanceUntilManeuver:index timeUntilManeuver:maneuver forStepIndex:untilManeuver];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v10;
    v14 = 1024;
    indexCopy = index;
    v16 = 1024;
    segmentIndexCopy = segmentIndex;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d, %d", &v12, 0x18u);
  }

  details = [(MNNavigationService *)self details];
  [details setDisplayedStepIndex:index];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDisplayedStepIndex:index segmentIndex:segmentIndex];
}

- (void)navigationServiceProxy:(id)proxy didChangeNavigationState:(int)state
{
  v4 = *&state;
  v21 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    details = [(MNNavigationService *)self details];
    navigationState = [details navigationState];
    if (navigationState >= 9)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", navigationState];
    }

    else
    {
      v11 = off_1E842AE08[navigationState];
    }

    v12 = v11;
    if (v4 >= 9)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v13 = off_1E842AE08[v4];
    }

    *buf = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ => %@", buf, 0x20u);
  }

  details2 = [(MNNavigationService *)self details];
  [details2 setNavigationState:v4];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didChangeNavigationState:v4];
}

- (void)navigationServiceProxy:(id)proxy didFailWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "(%{public}@)", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopNavigationWithReason:1];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didFailWithError:errorCopy];
}

- (void)navigationServiceProxyWillResumeFromPauseNavigation:(id)navigation
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillResumeFromPause:self];
}

- (void)navigationServiceProxyWillPauseNavigation:(id)navigation
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillPause:self];
}

- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details
{
  v28 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v26 = 138543362;
    v27 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v26, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  state = [details state];

  details2 = [(MNNavigationService *)self details];
  navigationState = [details2 navigationState];

  if (state != [detailsCopy state])
  {
    navigationType = [detailsCopy navigationType];
    details3 = [(MNNavigationService *)self details];
    [details3 setDesiredNavigationType:navigationType];

    -[GEOObserverHashTable navigationService:willChangeFromState:toState:](self->_navigationObservers, "navigationService:willChangeFromState:toState:", self, state, [detailsCopy state]);
  }

  if (detailsCopy)
  {
    details4 = [(MNNavigationService *)self details];
    [details4 copySerializableValuesFrom:detailsCopy];

    v16 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      details5 = [(MNNavigationService *)self details];
      v26 = 138412290;
      v27 = details5;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_INFO, "Updated navigation details: %@", &v26, 0xCu);
    }

    details6 = [(MNNavigationService *)self details];
    routeLookupIDs = [details6 routeLookupIDs];

    if ([routeLookupIDs count])
    {
      v20 = [routeLookupIDs componentsJoinedByString:{@", "}];
    }

    else
    {
      v20 = @"none";
    }

    v21 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v20;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_INFO, "Known route IDs: (%@)", &v26, 0xCu);
    }
  }

  if (navigationState != [detailsCopy navigationState])
  {
    -[GEOObserverHashTable navigationService:didChangeNavigationState:](self->_navigationObservers, "navigationService:didChangeNavigationState:", self, [detailsCopy navigationState]);
  }

  if (state != [detailsCopy state])
  {
    -[GEOObserverHashTable navigationService:didChangeFromState:toState:](self->_navigationObservers, "navigationService:didChangeFromState:toState:", self, state, [detailsCopy state]);
    if ([detailsCopy state] == 2)
    {
      v22 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(sel_navigationService_didUpdatePreviewRoutes_withSelectedRouteIndex_);
        v26 = 138477827;
        v27 = v23;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_INFO, "%{private}@", &v26, 0xCu);
      }

      navigationObservers = self->_navigationObservers;
      previewRoutes = [detailsCopy previewRoutes];
      -[GEOObserverHashTable navigationService:didUpdatePreviewRoutes:withSelectedRouteIndex:](navigationObservers, "navigationService:didUpdatePreviewRoutes:withSelectedRouteIndex:", self, previewRoutes, [detailsCopy selectedPreviewRouteIndex]);
    }
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidSynchronize:self];
}

- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    if (state - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[state - 1];
    }

    v12 = v11;
    if (toState - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[toState - 1];
    }

    v14 = v13;
    *buf = 138543874;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)'%@' to '%@'", buf, 0x20u);
  }

  details = [(MNNavigationService *)self details];
  [details setState:toState];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didChangeFromState:state toState:toState];
  if (!toState)
  {
    interruptionDates = [(MNNavigationServiceRemoteProxy *)self->_remoteProxy interruptionDates];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MNNavigationService_navigationServiceProxy_didChangeFromState_toState___block_invoke;
    block[3] = &unk_1E84309E8;
    block[4] = self;
    v20 = interruptionDates;
    stateCopy = state;
    v18 = interruptionDates;
    dispatch_async(queue, block);
  }
}

void __73__MNNavigationService_navigationServiceProxy_didChangeFromState_toState___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetDetails];
  if ([*(a1 + 40) count])
  {
    if (*(a1 + 48) >= 3uLL)
    {
      v5[0] = @"MNErrorInternalDescriptionKey";
      v5[1] = @"MNErrorInterruptionDatesKey";
      v2 = *(a1 + 40);
      v6[0] = @"Interruptions to the navigation service were detected";
      v6[1] = v2;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
      v4 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:10 userInfo:v3];
      [*(*(a1 + 32) + 16) navigationService:*(a1 + 32) didFailWithError:v4];
    }
  }
}

- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    if (state - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[state - 1];
    }

    v12 = v11;
    if (toState - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[toState - 1];
    }

    v14 = v13;
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)'%@' to '%@'", &v15, 0x20u);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willChangeFromState:state toState:toState];
}

- (id)_clientProxy
{
  clientProxy = self->_clientProxy;
  if (!clientProxy)
  {
    v4 = objc_alloc_init(MNNavigationClientProxy);
    v5 = self->_clientProxy;
    self->_clientProxy = v4;

    clientProxy = self->_clientProxy;
  }

  return clientProxy;
}

- (void)setSimulationPosition:(double)position
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v7;
    v12 = 2048;
    positionCopy = position;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v10, 0x16u);
  }

  if (position < 0.0 || position > 1.0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only values between [0, 1] are valid."];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = "[MNNavigationService setSimulationPosition:]";
      v12 = 2080;
      positionCopy = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m");
      v14 = 1024;
      v15 = 900;
      v16 = 2080;
      v17 = "0 <= position && position <= 1";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v10, 0x30u);
    }
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationPosition:position];
}

- (void)setSimulationSpeedMultiplier:(double)multiplier
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    multiplierCopy = multiplier;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v8, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationSpeedMultiplier:multiplier];
}

- (void)setSimulationSpeedOverride:(double)override
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    overrideCopy = override;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v8, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationSpeedOverride:override];
}

- (void)recordPedestrianTracePath:(id)path
{
  v10 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy recordPedestrianTracePath:pathCopy];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy recordTraceBookmarkAtCurrentPositionWthScreenshotData:dataCopy];
}

- (void)setTracePlaybackSpeed:(double)speed
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    speedCopy = speed;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@, %g", &v8, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setTracePlaybackSpeed:speed];
}

- (void)setTracePosition:(double)position
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy setTracePosition:position];
}

- (double)tracePosition
{
  details = [(MNNavigationService *)self details];
  [details tracePosition];
  v4 = v3;

  return v4;
}

- (void)setTraceIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = playingCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v8, 0x12u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setTraceIsPlaying:playingCopy];
}

- (BOOL)traceIsPlaying
{
  details = [(MNNavigationService *)self details];
  traceIsPlaying = [details traceIsPlaying];

  return traceIsPlaying;
}

- (NSArray)traceBookmarks
{
  details = [(MNNavigationService *)self details];
  traceBookmarks = [details traceBookmarks];

  return traceBookmarks;
}

- (double)traceDuration
{
  details = [(MNNavigationService *)self details];
  [details traceDuration];
  v4 = v3;

  return v4;
}

- (NSString)tracePath
{
  details = [(MNNavigationService *)self details];
  tracePath = [details tracePath];

  return tracePath;
}

- (MNVehicleParkingInfo)vehicleParkingInfo
{
  details = [(MNNavigationService *)self details];
  vehicleParkingInfo = [details vehicleParkingInfo];

  return vehicleParkingInfo;
}

- (GEOResumeRouteHandle)resumeRouteHandle
{
  details = [(MNNavigationService *)self details];
  resumeRouteHandle = [details resumeRouteHandle];

  return resumeRouteHandle;
}

- (MNGuidanceLaneInfo)activeLaneInfo
{
  details = [(MNNavigationService *)self details];
  activeLaneInfo = [details activeLaneInfo];

  return activeLaneInfo;
}

- (BOOL)isDetour
{
  details = [(MNNavigationService *)self details];
  isDetour = [details isDetour];

  return isDetour;
}

- (NSString)originalDestinationName
{
  originalDestination = [(MNNavigationService *)self originalDestination];
  navDisplayName = [originalDestination navDisplayName];

  return navDisplayName;
}

- (GEOComposedWaypoint)originalDestination
{
  details = [(MNNavigationService *)self details];
  originalRoute = [details originalRoute];
  destination = [originalRoute destination];

  return destination;
}

- (NSString)destinationName
{
  destination = [(MNNavigationService *)self destination];
  navDisplayName = [destination navDisplayName];

  return navDisplayName;
}

- (GEOComposedWaypoint)originalOrigin
{
  details = [(MNNavigationService *)self details];
  originalRoute = [details originalRoute];
  origin = [originalRoute origin];

  return origin;
}

- (GEOComposedWaypoint)origin
{
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];
  origin = [currentRoute origin];

  return origin;
}

- (int64_t)upcomingAnchorPointIndex
{
  details = [(MNNavigationService *)self details];
  upcomingAnchorPointIndex = [details upcomingAnchorPointIndex];

  return upcomingAnchorPointIndex;
}

- (double)timeUntilManeuver
{
  details = [(MNNavigationService *)self details];
  [details timeUntilManeuver];
  v4 = v3;

  return v4;
}

- (double)timeUntilSign
{
  details = [(MNNavigationService *)self details];
  [details timeUntilSign];
  v4 = v3;

  return v4;
}

- (double)distanceUntilSign
{
  details = [(MNNavigationService *)self details];
  [details distanceUntilSign];
  v4 = v3;

  return v4;
}

- (void)resumeRealtimeUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138477827;
    v7 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{private}@", &v6, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy resumeRealtimeUpdatesForSubscriber:self->_uuid];
}

- (void)pauseRealtimeUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138477827;
    v7 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{private}@", &v6, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy pauseRealtimeUpdatesForSubscriber:self->_uuid];
}

- (id)realtimeUpdatesForRoutes:(id)routes
{
  v32 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([routesCopy count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = routesCopy;
    obj = routesCopy;
    v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v6 = self->_realtimeUpdates;
          v7 = [(NSSet *)v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v23;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v22 + 1) + 8 * j);
                routeID = [v11 routeID];
                uniqueRouteID = [v5 uniqueRouteID];
                v14 = [routeID isEqual:uniqueRouteID];

                if (v14)
                {
                  [v18 addObject:v11];
                  goto LABEL_17;
                }
              }

              v8 = [(NSSet *)v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    routesCopy = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
  }

  return v18;
}

- (id)etaRouteForRoute:(id)route
{
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  v6 = [details routeInfoForRoute:routeCopy];

  etaRoute = [v6 etaRoute];

  return etaRoute;
}

- (unint64_t)alternateRouteIndexForRoute:(id)route
{
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  v6 = [details routeInfoForRoute:routeCopy];

  if (v6)
  {
    alternateRouteIndex = [v6 alternateRouteIndex];
  }

  else
  {
    alternateRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return alternateRouteIndex;
}

- (id)batteryChargeInfoForRoute:(id)route
{
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  v6 = [details routeInfoForRoute:routeCopy];

  batteryChargeInfo = [v6 batteryChargeInfo];

  return batteryChargeInfo;
}

- (id)remainingDistanceInfoForRoute:(id)route
{
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  v6 = [details routeInfoForRoute:routeCopy];

  remainingDistanceInfo = [v6 remainingDistanceInfo];

  return remainingDistanceInfo;
}

- (id)displayETAInfoForRoute:(id)route
{
  routeCopy = route;
  details = [(MNNavigationService *)self details];
  v6 = [details routeInfoForRoute:routeCopy];

  displayETAInfo = [v6 displayETAInfo];

  return displayETAInfo;
}

- ($212C09783140BCCD23384160D545CE0D)originalRouteDivergenceCoordinate
{
  details = [(MNNavigationService *)self details];
  if ([details isFollowingOriginalRoute])
  {
    lastOriginalRouteCoordinate = *MEMORY[0x1E69A1918];
  }

  else
  {
    details2 = [(MNNavigationService *)self details];
    lastOriginalRouteCoordinate = [details2 lastOriginalRouteCoordinate];
  }

  return lastOriginalRouteCoordinate;
}

- (GEOComposedRoute)originalRoute
{
  details = [(MNNavigationService *)self details];
  if ([details isFollowingOriginalRoute])
  {
    originalRoute = 0;
  }

  else
  {
    details2 = [(MNNavigationService *)self details];
    originalRoute = [details2 originalRoute];
  }

  return originalRoute;
}

- (unint64_t)reconnectionRouteIndex
{
  details = [(MNNavigationService *)self details];
  reconnectionRouteIndex = [details reconnectionRouteIndex];

  return reconnectionRouteIndex;
}

- (unint64_t)routeIndex
{
  details = [(MNNavigationService *)self details];
  routeIndex = [details routeIndex];

  return routeIndex;
}

- (GEODirectionsRequest)currentRequest
{
  details = [(MNNavigationService *)self details];
  directionsRequest = [details directionsRequest];

  return directionsRequest;
}

- (BOOL)isApproachingWaypoint
{
  details = [(MNNavigationService *)self details];
  isApproachingWaypoint = [details isApproachingWaypoint];

  return isApproachingWaypoint;
}

- (BOOL)isResumingMultipointRoute
{
  details = [(MNNavigationService *)self details];
  isResumingMultipointRoute = [details isResumingMultipointRoute];

  return isResumingMultipointRoute;
}

- (int)desiredTransportType
{
  details = [(MNNavigationService *)self details];
  desiredTransportType = [details desiredTransportType];

  return desiredTransportType;
}

- (int64_t)desiredNavigationType
{
  details = [(MNNavigationService *)self details];
  desiredNavigationType = [details desiredNavigationType];

  return desiredNavigationType;
}

- (unint64_t)voiceGuidanceLevel
{
  details = [(MNNavigationService *)self details];
  voiceGuidanceLevel = [details voiceGuidanceLevel];

  return voiceGuidanceLevel;
}

- (BOOL)isInPreArrivalState
{
  details = [(MNNavigationService *)self details];
  isInPreArrivalState = [details isInPreArrivalState];

  return isInPreArrivalState;
}

- (BOOL)isTrackingCurrentLocation
{
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];
  origin = [currentRoute origin];
  isCurrentLocation = [origin isCurrentLocation];

  return isCurrentLocation;
}

- (int64_t)navigationType
{
  details = [(MNNavigationService *)self details];
  navigationType = [details navigationType];

  return navigationType;
}

- (void)changeOfflineMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v13 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = GEOOfflineModeAsString();
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = modeCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "changeOfflineMode: %@(%x)", &v9, 0x12u);
  }

  if ([(MNNavigationService *)self isInNavigatingState])
  {
    if ([(MNNavigationService *)self navigationTransportType]!= 1)
    {
      [(MNNavigationServiceProxy *)self->_proxy changeOfflineMode:modeCopy];
    }
  }

  else
  {
    v7 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = GEOOfflineModeAsString();
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "changeOfflineMode: called with state %@ when the user is not navigating. This is an ERROR!! ", &v9, 0xCu);
    }
  }
}

- (void)enableNavigationCapability:(unint64_t)capability reason:(unint64_t)reason
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (capability)
    {
      reasonCopy = reason;
      array = [MEMORY[0x1E695DF70] array];
      capabilityCopy = capability;
      while (1)
      {
        v10 = (((capabilityCopy << 63) >> 63) & @"ETA Updates");
        if ((capabilityCopy & 2) != 0)
        {
          v10 = @"Rerouting";
        }

        if ((capabilityCopy & 4) != 0)
        {
          v10 = @"Location Propagation";
        }

        if ((capabilityCopy & 8) != 0)
        {
          v10 = @"Sending CoreLocation Route Hints";
        }

        v11 = (capabilityCopy & 0x10) != 0 ? @"Offline Management" : v10;
        if ((capabilityCopy & 0x20) == 0)
        {
          break;
        }

        v12 = capabilityCopy & 0xFFFFFFFFFFFFFFC0;
        v11 = @"Virtual Garage";
        if ((capabilityCopy & 0x10000) != 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        [array addObject:v11];

        capabilityCopy = v12;
        if (!v12)
        {
          v13 = [array componentsJoinedByString:@" | "];

          reason = reasonCopy;
          goto LABEL_22;
        }
      }

      v12 = capabilityCopy & 0xFFFFFFFFFFFFFFE0;
      if ((capabilityCopy & 0x10000) == 0)
      {
        if (!v11)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown flags (%d)", v12];
        }

        goto LABEL_19;
      }

LABEL_18:
      v12 &= 0xFFFFFFFFFFFEFFE0;
      v11 = @"New Map Matcher";
      goto LABEL_19;
    }

    v13 = @"None";
LABEL_22:
    v14 = @"Thermal Mitigation";
    if (!reason)
    {
      v14 = @"Unknown";
    }

    *buf = 138412546;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "enableNavigationCapability:%@ reason: %@", buf, 0x16u);
  }

  disabledCapabilities = self->_disabledCapabilities;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
  v17 = [(NSMutableDictionary *)disabledCapabilities objectForKey:v16];

  if (v17)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    v19 = [v17 containsObject:v18];

    if (v19)
    {
      v20 = [v17 mutableCopy];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
      [v20 removeObject:v21];

      if ([v20 count])
      {
        v22 = self->_disabledCapabilities;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
        [(NSMutableDictionary *)v22 setObject:v20 forKey:v23];
      }

      else
      {
        [(MNNavigationServiceProxy *)self->_proxy enableNavigationCapability:capability];
        v24 = self->_disabledCapabilities;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
        [(NSMutableDictionary *)v24 removeObjectForKey:v23];
      }
    }
  }
}

- (void)disableNavigationCapability:(unint64_t)capability reason:(unint64_t)reason
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (capability)
    {
      selfCopy = self;
      array = [MEMORY[0x1E695DF70] array];
      capabilityCopy = capability;
      capabilityCopy2 = capability;
      while (1)
      {
        v10 = (((capabilityCopy2 << 63) >> 63) & @"ETA Updates");
        if ((capabilityCopy2 & 2) != 0)
        {
          v10 = @"Rerouting";
        }

        if ((capabilityCopy2 & 4) != 0)
        {
          v10 = @"Location Propagation";
        }

        if ((capabilityCopy2 & 8) != 0)
        {
          v10 = @"Sending CoreLocation Route Hints";
        }

        v11 = (capabilityCopy2 & 0x10) != 0 ? @"Offline Management" : v10;
        if ((capabilityCopy2 & 0x20) == 0)
        {
          break;
        }

        v12 = capabilityCopy2 & 0xFFFFFFFFFFFFFFC0;
        v11 = @"Virtual Garage";
        if ((capabilityCopy2 & 0x10000) != 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        [array addObject:v11];

        capabilityCopy2 = v12;
        if (!v12)
        {
          v13 = [array componentsJoinedByString:@" | "];

          self = selfCopy;
          capability = capabilityCopy;
          goto LABEL_22;
        }
      }

      v12 = capabilityCopy2 & 0xFFFFFFFFFFFFFFE0;
      if ((capabilityCopy2 & 0x10000) == 0)
      {
        if (!v11)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown flags (%d)", v12];
        }

        goto LABEL_19;
      }

LABEL_18:
      v12 &= 0xFFFFFFFFFFFEFFE0;
      v11 = @"New Map Matcher";
      goto LABEL_19;
    }

    v13 = @"None";
LABEL_22:
    v14 = @"Thermal Mitigation";
    if (!reason)
    {
      v14 = @"Unknown";
    }

    *buf = 138412546;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "disableNavigationCapability:%@ reason: %@", buf, 0x16u);
  }

  disabledCapabilities = self->_disabledCapabilities;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
  v17 = [(NSMutableDictionary *)disabledCapabilities objectForKey:v16];

  if (v17)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    v19 = [v17 setByAddingObject:v18];

    v20 = self->_disabledCapabilities;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];
  }

  else
  {
    v22 = self->_disabledCapabilities;
    v23 = MEMORY[0x1E695DFD8];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    v25 = [v23 setWithObject:v24];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:capability];
    [(NSMutableDictionary *)v22 setObject:v25 forKey:v26];

    [(MNNavigationServiceProxy *)self->_proxy disableNavigationCapability:capability];
  }
}

- (void)updateForUserIncidentReport:(id)report
{
  v14 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    type = [reportCopy type];
    if (type >= 0x14)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v9 = off_1E842AD68[type];
    }

    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy updateForUserIncidentReport:reportCopy];
}

- (void)setJunctionViewImageWidth:(double)width height:(double)height
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 2048;
    widthCopy = width;
    v14 = 2048;
    heightCopy = height;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@ [%g x %g]", &v10, 0x20u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setJunctionViewImageWidth:width height:height];
}

- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    indexCopy = index;
    v14 = 1024;
    segmentIndexCopy = segmentIndex;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@ %d, %d", &v10, 0x18u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setRideIndex:index forSegmentIndex:segmentIndex];
}

- (void)setDisplayedStepIndex:(unint64_t)index
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    indexCopy = index;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v8, 0x12u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setDisplayedStepIndex:index];
}

- (void)setIsConnectedToCarplay:(BOOL)carplay
{
  carplayCopy = carplay;
  v7 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = carplayCopy;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "setIsConnectedToCarplay: %d", v6, 8u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setIsConnectedToCarplay:carplayCopy];
}

- (void)setIsDisplayingNavigationTray:(BOOL)tray
{
  trayCopy = tray;
  v12 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = trayCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v8, 0x12u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setIsDisplayingNavigationTray:trayCopy];
}

- (void)setGuidancePromptsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = enabledCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v9, 0x12u);
  }

  details = [(MNNavigationService *)self details];
  [details setGuidancePromptsEnabled:enabledCopy];

  [(MNNavigationServiceProxy *)self->_proxy setGuidancePromptsEnabled:enabledCopy];
}

- (BOOL)guidancePromptsEnabled
{
  details = [(MNNavigationService *)self details];
  guidancePromptsEnabled = [details guidancePromptsEnabled];

  return guidancePromptsEnabled;
}

- (void)setHeadingOrientation:(int)orientation
{
  v3 = *&orientation;
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v9, 0x12u);
  }

  details = [(MNNavigationService *)self details];
  [details setHeadingOrientation:v3];

  [(MNNavigationServiceProxy *)self->_proxy setHeadingOrientation:v3];
}

- (int)headingOrientation
{
  details = [(MNNavigationService *)self details];
  headingOrientation = [details headingOrientation];

  return headingOrientation;
}

- (void)stopCurrentGuidancePrompt
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopCurrentGuidancePrompt];
}

- (void)vibrateForPrompt:(unint64_t)prompt completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy vibrateForPrompt:prompt withReply:completionCopy];
}

- (void)repeatCurrentTrafficAlert:(id)alert
{
  v10 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy repeatCurrentGuidanceWithReply:alertCopy];
}

- (void)repeatCurrentGuidance:(id)guidance
{
  v10 = *MEMORY[0x1E69E9840];
  guidanceCopy = guidance;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy repeatCurrentGuidanceWithReply:guidanceCopy];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)override
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    if (override + 1 >= 4)
    {
      override = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", override];
    }

    else
    {
      override = off_1E842AD48[override + 1];
    }

    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = override;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setVoiceGuidanceLevelOverride:override];
}

- (void)changeUserOptions:(id)options
{
  v10 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@", &v8, 0xCu);
  }

  [(MNNavigationService *)self setCachedUserOptions:optionsCopy];
  [(MNNavigationServiceProxy *)self->_proxy changeUserOptions:optionsCopy];
}

- (void)setGuidanceType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = v7;
    v9 = @"Full";
    if (type == 1)
    {
      v9 = @"Low";
    }

    if (type == 2)
    {
      v9 = @"RoutePreview";
    }

    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", &v10, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setGuidanceType:type];
}

- (void)switchToDestinationRoute
{
  v17 = *MEMORY[0x1E69E9840];
  destination = [(MNNavigationService *)self destination];
  route = [destination route];

  v5 = MNGetMNNavigationServiceLog();
  v6 = v5;
  if (route)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = [route name];
      userProvidedName = [route userProvidedName];
      source = [route source];
      if ((source - 1) > 4)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E842AD20[source - 1];
      }

      v11 = 138412802;
      v12 = name;
      v13 = 2112;
      v14 = userProvidedName;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "switchToDestinationRoute | destination route: %@ (%@) %@", &v11, 0x20u);
    }

    [(MNNavigationServiceProxy *)self->_proxy switchToDestinationRoute];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "switchToDestinationRoute was called, but the destination does not lead to another route.", &v11, 2u);
    }
  }
}

- (void)changeTransportType:(int)type route:(id)route
{
  v4 = *&type;
  v14 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v8 = off_1E842ACE8[v4];
    }

    uniqueRouteID = [routeCopy uniqueRouteID];
    *buf = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = uniqueRouteID;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "changeTransportType: %@ | route: %@", buf, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy changeTransportType:v4 route:routeCopy];
}

- (void)switchToRoute:(id)route
{
  v14 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [routeCopy name];
    uniqueRouteID = [routeCopy uniqueRouteID];
    v10 = 138412546;
    v11 = name;
    v12 = 2112;
    v13 = uniqueRouteID;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "switchToRoute: %@ | %@", &v10, 0x16u);
  }

  details = [(MNNavigationService *)self details];
  v9 = [details routeInfoForRoute:routeCopy];

  [(MNNavigationServiceProxy *)self->_proxy switchToRoute:v9];
}

- (void)forceReroute
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "forceReroute", v4, 2u);
  }

  [(MNNavigationServiceProxy *)self->_proxy forceReroute];
}

- (void)resumeOriginalDestination
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "resumeOriginalDestination", v5, 2u);
  }

  details = [(MNNavigationService *)self details];
  [details setIsDetour:0];

  [(MNNavigationServiceProxy *)self->_proxy resumeOriginalDestination];
}

- (void)updateDestination:(id)destination
{
  v10 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    navDisplayName = [destinationCopy navDisplayName];
    v8 = 138412290;
    v9 = navDisplayName;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "updateDestination: %@", &v8, 0xCu);
  }

  details = [(MNNavigationService *)self details];
  [details setIsDetour:1];

  [(MNNavigationServiceProxy *)self->_proxy updateDestination:destinationCopy];
}

- (void)advanceToNextLeg
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "advanceToNextLeg", v4, 2u);
  }

  [(MNNavigationServiceProxy *)self->_proxy advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)index
{
  v15 = *MEMORY[0x1E69E9840];
  details = [(MNNavigationService *)self details];
  currentRoute = [details currentRoute];
  waypoints = [currentRoute waypoints];
  v8 = [waypoints count];

  v9 = MNGetMNNavigationServiceLog();
  v10 = v9;
  if (index && v8 > index)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      indexCopy2 = index;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "removeWaypointAtIndex: %lu", &v11, 0xCu);
    }

    [(MNNavigationServiceProxy *)self->_proxy removeWaypointAtIndex:index];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218240;
      indexCopy2 = index;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Invalid index for removeWaypointAtIndex: %lu, total number of waypoints: %lu", &v11, 0x16u);
    }
  }
}

- (void)insertWaypoint:(id)waypoint
{
  v9 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    navDisplayName = [waypointCopy navDisplayName];
    v7 = 138477827;
    v8 = navDisplayName;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "insertWaypoint: %{private}@", &v7, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy insertWaypoint:waypointCopy];
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  v12 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [waypointsCopy count];
    v7 = [waypointsCopy valueForKey:@"navDisplayName"];
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "rerouteWithWaypoints: Number of waypoints is %lu, waypoints: %@", &v8, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy rerouteWithWaypoints:waypointsCopy];
}

- (void)stopNavigationWithReason:(unint64_t)reason
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (reason - 1 > 9)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842AC98[reason - 1];
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "stopNavigationWithReason: %@", &v7, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopNavigationWithReason:reason];
}

- (BOOL)startNavigationWithDetails:(id)details error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [detailsCopy description];
    *buf = 138412290;
    *v51 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "startNavigationWithDetails:error:\n\t%@", buf, 0xCu);
  }

  if ([(MNNavigationService *)self state]< 3)
  {
    selectedRouteIndex = [detailsCopy selectedRouteIndex];
    routes = [detailsCopy routes];
    v14 = [routes count];

    if (selectedRouteIndex < v14)
    {
      navigationType = [detailsCopy navigationType];
      details = [(MNNavigationService *)self details];
      [details setDesiredNavigationType:navigationType];

      routes2 = [detailsCopy routes];
      v18 = [routes2 objectAtIndexedSubscript:{objc_msgSend(detailsCopy, "selectedRouteIndex")}];
      transportType = [v18 transportType];
      details2 = [(MNNavigationService *)self details];
      [details2 setDesiredTransportType:transportType];

      isResumingMultipointRoute = [detailsCopy isResumingMultipointRoute];
      details3 = [(MNNavigationService *)self details];
      [details3 setIsResumingMultipointRoute:isResumingMultipointRoute];

      [(MNNavigationServiceProxy *)self->_proxy startNavigationWithDetails:detailsCopy activeBlock:0];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = self->_disabledCapabilities;
      v24 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * i);
            v29 = [(NSMutableDictionary *)self->_disabledCapabilities objectForKey:v28, v43];
            v30 = [v29 count];

            if (v30)
            {
              -[MNNavigationServiceProxy disableNavigationCapability:](self->_proxy, "disableNavigationCapability:", [v28 unsignedLongValue]);
            }
          }

          v25 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v25);
      }

      v31 = 1;
      goto LABEL_31;
    }

    v32 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      selectedRouteIndex2 = [detailsCopy selectedRouteIndex];
      routes3 = [detailsCopy routes];
      v35 = [routes3 count];
      *buf = 67109376;
      *v51 = selectedRouteIndex2;
      *&v51[4] = 1024;
      *&v51[6] = v35;
      _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "MNStartNavigationDetails selectedRouteIndex is (%d), but only (%d) routes were provided", buf, 0xEu);
    }

    if (error)
    {
      v48 = @"startNavigationDetails";
      v49 = detailsCopy;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v36 = MEMORY[0x1E696ABC0];
      v37 = 7;
LABEL_30:
      [v36 _navigation_errorWithCode:v37 userInfo:v23];
      *error = v31 = 0;
LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v9 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      state = [(MNNavigationService *)self state];
      if (state - 1 > 5)
      {
        v11 = @"Stopped";
      }

      else
      {
        v11 = off_1E842AC68[state - 1];
      }

      v38 = v11;
      *buf = 138412290;
      *v51 = v38;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "startNavigation called when navd is already navigating. navd state: %@", buf, 0xCu);
    }

    if (error)
    {
      v52 = @"currentState";
      state2 = [(MNNavigationService *)self state];
      if (state2 - 1 > 5)
      {
        v40 = @"Stopped";
      }

      else
      {
        v40 = off_1E842AC68[state2 - 1];
      }

      v41 = v40;
      v53[0] = v41;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];

      v36 = MEMORY[0x1E696ABC0];
      v37 = 6;
      goto LABEL_30;
    }
  }

  v31 = 0;
LABEL_32:

  return v31;
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  v31 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  v7 = [previewCopy count];
  v8 = MNGetMNNavigationServiceLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 67109376;
    v28 = [previewCopy count];
    v29 = 1024;
    indexCopy = index;
    v10 = "setRoutesForPreview:selectedRouteIndex: routes.count = %d, selectedRouteIndex = %d";
    v11 = v8;
    v12 = 14;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    v28 = [previewCopy count];
    v10 = "setRoutesForPreview:selectedRouteIndex: routes.count = %d";
    v11 = v8;
    v12 = 8;
  }

  _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(previewCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = previewCopy;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = [MNActiveRouteInfo alloc];
        v21 = [(MNActiveRouteInfo *)v20 initWithRoute:v19, v22];
        [v13 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  [(MNNavigationServiceProxy *)self->_proxy setRoutesForPreview:v13 selectedRouteIndex:index];
}

- (id)ticketForDirectionsRequest:(id)request
{
  requestCopy = request;
  v5 = [MNNavigationServiceDirectionsRequestTicket alloc];
  _clientProxy = [(MNNavigationService *)self _clientProxy];
  v7 = [(MNNavigationServiceDirectionsRequestTicket *)v5 initWithProxy:_clientProxy request:requestCopy];

  return v7;
}

- (void)closeForClient:(id)client
{
  v13 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if ([(MNNavigationServiceRemoteProxy *)self->_remoteProxy isOpenForClient:clientCopy])
  {
    v5 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = objc_opt_class();
      v11 = 2048;
      v12 = clientCopy;
      v6 = v10;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "closeForClient: '%@' (%p)", &v9, 0x16u);
    }

    [(MNNavigationServiceRemoteProxy *)self->_remoteProxy closeForClient:clientCopy];
    remoteProxy = self->_remoteProxy;
    if (remoteProxy && ![(MNNavigationServiceRemoteProxy *)remoteProxy clientCount])
    {
      v8 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "No more open clients in current process", &v9, 2u);
      }

      [(MNNavigationService *)self _resetDetails];
    }
  }
}

- (void)openForClient:(id)client
{
  v11 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = clientCopy;
    v6 = v8;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "openForClient: '%@' (%p)", &v7, 0x16u);
  }

  [(MNNavigationServiceRemoteProxy *)self->_remoteProxy openForClient:clientCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  details = [(MNNavigationService *)self details];
  v6 = [v3 stringWithFormat:@"<%@: %p, details: %@>", v4, self, details];

  return v6;
}

- (void)dealloc
{
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MNNavigationService;
  [(MNNavigationService *)&v3 dealloc];
}

+ (unint64_t)_hashForProtocol:(id)protocol
{
  protocolCopy = protocol;
  string = [MEMORY[0x1E696AD60] string];
  outCount = 0;
  v5 = protocol_copyMethodDescriptionList(protocolCopy, 1, 1, &outCount);
  v6 = v5;
  if (outCount)
  {
    v7 = 0;
    p_types = &v5->types;
    do
    {
      v9 = NSStringFromSelector(*(p_types - 1));
      v10 = *p_types;
      p_types += 2;
      [string appendFormat:@"%@%s", v9, v10];

      ++v7;
    }

    while (v7 < outCount);
  }

  free(v6);
  v11 = [string hash];

  return v11;
}

+ (unint64_t)daemonInterfaceHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MNNavigationService_Internal__daemonInterfaceHash__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (daemonInterfaceHash_onceToken != -1)
  {
    dispatch_once(&daemonInterfaceHash_onceToken, block);
  }

  return daemonInterfaceHash_daemonInterfaceHash;
}

void *__52__MNNavigationService_Internal__daemonInterfaceHash__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hashForProtocol:&unk_1F4EEDD48];
  daemonInterfaceHash_daemonInterfaceHash = result;
  return result;
}

+ (unint64_t)clientInterfaceHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MNNavigationService_Internal__clientInterfaceHash__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (clientInterfaceHash_onceToken != -1)
  {
    dispatch_once(&clientInterfaceHash_onceToken, block);
  }

  return clientInterfaceHash_clientInterfaceHash;
}

void *__52__MNNavigationService_Internal__clientInterfaceHash__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hashForProtocol:&unk_1F4EEA548];
  clientInterfaceHash_clientInterfaceHash = result;
  return result;
}

- (void)_updateWithCallback:(id)callback
{
  v33 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  details = [(MNNavigationService *)self details];
  [details updateWithNavigationServiceCallbackParameters:callbackCopy];

  switch([callbackCopy type])
  {
    case 0:
      v6 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_FAULT, "MNNavigationService received Unknown type callback.", &v27, 2u);
      }

      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315650;
        v28 = "[MNNavigationService(CallbackHandling) _updateWithCallback:]";
        v29 = 2080;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Navigation Service Internal/MNNavigationService+CallbackHandling.m";
        v31 = 1024;
        v32 = 233;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v27, 0x1Cu);
      }

      goto LABEL_109;
    case 1:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidChangeVoiceGuidanceLevel:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type = [callbackCopy type];
      if (type > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type];
      }

      goto LABEL_108;
    case 2:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidEndNavigation:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type2 = [callbackCopy type];
      if (type2 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type2];
      }

      goto LABEL_108;
    case 3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidReceiveRoutingServiceError:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type3 = [callbackCopy type];
      if (type3 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type3];
      }

      goto LABEL_108;
    case 4:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateArrivalInfo:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type4 = [callbackCopy type];
      if (type4 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type4];
      }

      goto LABEL_108;
    case 5:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateBackgroundWalkingRoute:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type5 = [callbackCopy type];
      if (type5 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type5];
      }

      goto LABEL_108;
    case 6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateDisplayETA:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type6 = [callbackCopy type];
      if (type6 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type6];
      }

      goto LABEL_108;
    case 7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateMatchedLocation:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type7 = [callbackCopy type];
      if (type7 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type7];
      }

      goto LABEL_108;
    case 8:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateNavTrayGuidance:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type8 = [callbackCopy type];
      if (type8 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type8];
      }

      goto LABEL_108;
    case 9:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateResumeRouteHandle:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type9 = [callbackCopy type];
      if (type9 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type9];
      }

      goto LABEL_108;
    case 10:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateStepIndex:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type10 = [callbackCopy type];
      if (type10 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type10];
      }

      goto LABEL_108;
    case 11:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateTargetLegIndex:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type11 = [callbackCopy type];
      if (type11 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type11];
      }

      goto LABEL_108;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateTrafficIncidentAlert:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type12 = [callbackCopy type];
      if (type12 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type12];
      }

      goto LABEL_108;
    case 13:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type13 = [callbackCopy type];
      if (type13 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type13];
      }

      goto LABEL_108;
    case 14:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateVehicleParkingInfo:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type14 = [callbackCopy type];
      if (type14 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type14];
      }

      goto LABEL_108;
    case 15:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_ShouldEnableIdleTimer:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type15 = [callbackCopy type];
      if (type15 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type15];
      }

      goto LABEL_108;
    case 16:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_WillStartNavigation:callbackCopy];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      type16 = [callbackCopy type];
      if (type16 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[type16];
      }

      goto LABEL_108;
    case 17:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_WillEndNavigation:callbackCopy];
      }

      else
      {
        v7 = MNGetMNNavigationServiceLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          type17 = [callbackCopy type];
          if (type17 > 0x11)
          {
            v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
          }

          else
          {
            v9 = off_1E842A910[type17];
          }

LABEL_108:
          v26 = v9;
          v27 = 138412546;
          v28 = v26;
          v29 = 2112;
          v30 = objc_opt_class();
          _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_FAULT, "Callback parameters of type '%@' was received, but was not the expected subclass. Received '%@' instead.", &v27, 0x16u);
        }

LABEL_109:
      }

LABEL_110:

      return;
    default:
      goto LABEL_110;
  }
}

- (void)_navigationServiceCallback_WillStartNavigation:(id)navigation
{
  v31 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    routeInfo = [navigationCopy routeInfo];
    route = [routeInfo route];
    transportType = [route transportType];
    if (transportType >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v8 = off_1E842B160[transportType];
    }

    v17 = v8;
    capitalizedString = [(__CFString *)v8 capitalizedString];
    v10 = [navigationCopy navigationType] - 1;
    if (v10 > 3)
    {
      v11 = @"None";
    }

    else
    {
      v11 = off_1E842B198[v10];
    }

    routeInfo2 = [navigationCopy routeInfo];
    routeID = [routeInfo2 routeID];
    details = [(MNNavigationService *)self details];
    routeLookupIDs = [details routeLookupIDs];
    v16 = [routeLookupIDs componentsJoinedByString:{@", "}];
    *buf = 138544386;
    v22 = v20;
    v23 = 2112;
    v24 = capitalizedString;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = routeID;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ %@ | %@\nKnown route IDs: (%@)", buf, 0x34u);
  }
}

- (void)_navigationServiceCallback_WillEndNavigation:(id)navigation
{
  v15 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    reason = [navigationCopy reason];
    if ((reason - 1) > 9)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842B110[reason - 1];
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v11, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self willEndWithReason:{objc_msgSend(navigationCopy, "reason")}];
}

- (void)_navigationServiceCallback_ShouldEnableIdleTimer:(id)timer
{
  v13 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    shouldEnable = [timerCopy shouldEnable];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v9, 0x12u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self shouldEnableIdleTimer:{objc_msgSend(timerCopy, "shouldEnable")}];
}

- (void)_navigationServiceCallback_DidUpdateVehicleParkingInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    vehicleParkingInfo = [infoCopy vehicleParkingInfo];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = vehicleParkingInfo;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v13, 0x16u);
  }

  vehicleParkingInfo2 = [infoCopy vehicleParkingInfo];
  details = [(MNNavigationService *)self details];
  [details setVehicleParkingInfo:vehicleParkingInfo2];

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  vehicleParkingInfo3 = [infoCopy vehicleParkingInfo];
  [navigationObservers navigationService:self didUpdateVehicleParkingInfo:vehicleParkingInfo3];
}

- (void)_navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:(id)index
{
  v13 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    anchorPointIndex = [indexCopy anchorPointIndex];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v9, 0x12u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didUpdateUpcomingAnchorPointIndex:{objc_msgSend(indexCopy, "anchorPointIndex")}];
}

- (void)_navigationServiceCallback_DidUpdateTrafficIncidentAlert:(id)alert
{
  v26 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  trafficIncidentAlert = [alertCopy trafficIncidentAlert];
  v7 = trafficIncidentAlert;
  if (trafficIncidentAlert)
  {
    v8 = MEMORY[0x1E696AFB0];
    alertID = [trafficIncidentAlert alertID];
    v10 = [v8 _geo_uuidForData:alertID];
  }

  else
  {
    v10 = 0;
  }

  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v21 = v12;
    v22 = 1024;
    updateType = [alertCopy updateType];
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d (%@)", buf, 0x1Cu);
  }

  updateType2 = [alertCopy updateType];
  if (updateType2 > 1)
  {
    if (updateType2 == 2)
    {
      navigationObservers = [(MNNavigationService *)self navigationObservers];
      [navigationObservers navigationService:self didDismissTrafficIncidentAlert:v7];
      goto LABEL_15;
    }

    if (updateType2 == 3)
    {
      navigationObservers = [(MNNavigationService *)self navigationObservers];
      [navigationObservers navigationService:self didInvalidateTrafficIncidentAlert:v7];
      goto LABEL_15;
    }
  }

  else
  {
    if (!updateType2)
    {
      navigationObservers2 = [(MNNavigationService *)self navigationObservers];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __98__MNNavigationService_CallbackHandling___navigationServiceCallback_DidUpdateTrafficIncidentAlert___block_invoke;
      v16[3] = &unk_1E842B0D0;
      v17 = v10;
      selfCopy = self;
      v19 = v7;
      [navigationObservers2 navigationService:self didReceiveTrafficIncidentAlert:v19 responseCallback:v16];

      navigationObservers = v17;
      goto LABEL_15;
    }

    if (updateType2 == 1)
    {
      navigationObservers = [(MNNavigationService *)self navigationObservers];
      [navigationObservers navigationService:self didUpdateTrafficIncidentAlert:v7];
LABEL_15:
    }
  }
}

void __98__MNNavigationService_CallbackHandling___navigationServiceCallback_DidUpdateTrafficIncidentAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "acceptReroute: %d, %@", v7, 0x12u);
  }

  v6 = [*(a1 + 40) proxy];
  [v6 acceptReroute:a2 forTrafficIncidentAlert:*(a1 + 48)];
}

- (void)_navigationServiceCallback_DidUpdateTargetLegIndex:(id)index
{
  v13 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 1024;
    targetLegIndex = [indexCopy targetLegIndex];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v9, 0x12u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didUpdateTargetLegIndex:{objc_msgSend(indexCopy, "targetLegIndex")}];
}

- (void)_navigationServiceCallback_DidUpdateStepIndex:(id)index
{
  v17 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  stepIndex = [indexCopy stepIndex];
  segmentIndex = [indexCopy segmentIndex];

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v11 = 138543874;
    v12 = v9;
    v13 = 1024;
    v14 = stepIndex;
    v15 = 1024;
    v16 = segmentIndex;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d, %d", &v11, 0x18u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didUpdateStepIndex:stepIndex segmentIndex:segmentIndex];
}

- (void)_navigationServiceCallback_DidUpdateResumeRouteHandle:(id)handle
{
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    resumeRouteHandle = [handleCopy resumeRouteHandle];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = resumeRouteHandle;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v11, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  resumeRouteHandle2 = [handleCopy resumeRouteHandle];
  [navigationObservers navigationService:self didUpdateResumeRouteHandle:resumeRouteHandle2];
}

- (void)_navigationServiceCallback_DidUpdateNavTrayGuidance:(id)guidance
{
  v15 = *MEMORY[0x1E69E9840];
  guidanceCopy = guidance;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    navTrayGuidanceEvent = [guidanceCopy navTrayGuidanceEvent];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = navTrayGuidanceEvent;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v11, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  navTrayGuidanceEvent2 = [guidanceCopy navTrayGuidanceEvent];
  [navigationObservers navigationService:self didUpdateNavTrayGuidance:navTrayGuidanceEvent2];
}

- (void)_navigationServiceCallback_DidUpdateMatchedLocation:(id)location
{
  v28 = *MEMORY[0x1E69E9840];
  location = [location location];
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [location uuid];
    v18 = 138412546;
    v19 = uuid;
    v20 = 2080;
    v21 = "[MNNavigationService(CallbackHandling) _navigationServiceCallback_DidUpdateMatchedLocation:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in %s", &v18, 0x16u);
  }

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    [location coordinate];
    v11 = v10;
    [location coordinate];
    v13 = v12;
    [location course];
    v15 = v14;
    routeID = [location routeID];
    v18 = 138413314;
    v19 = v9;
    v20 = 2048;
    v21 = v11;
    v22 = 2048;
    v23 = v13;
    v24 = 1024;
    v25 = v15;
    v26 = 2112;
    v27 = routeID;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "(%@) %0.6f, %0.6f | %d | route ID: %@", &v18, 0x30u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didUpdateMatchedLocation:location];
}

- (void)_navigationServiceCallback_DidUpdateDisplayETA:(id)a
{
  v24 = *MEMORY[0x1E69E9840];
  aCopy = a;
  displayETAInfo = [aCopy displayETAInfo];
  routeDistanceInfo = [aCopy routeDistanceInfo];
  batteryChargeInfo = [aCopy batteryChargeInfo];

  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    routeID = [displayETAInfo routeID];
    v16 = 138544130;
    v17 = v10;
    v18 = 2112;
    v19 = displayETAInfo;
    v20 = 2112;
    v21 = routeDistanceInfo;
    v22 = 2112;
    v23 = routeID;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "(%{public}@)%@ | %@ | %@", &v16, 0x2Au);
  }

  details = [(MNNavigationService *)self details];
  routeID2 = [displayETAInfo routeID];
  v14 = [details routeInfoForID:routeID2];

  if (v14)
  {
    [v14 setDisplayETAInfo:displayETAInfo];
    [v14 setRemainingDistanceInfo:routeDistanceInfo];
    [v14 setBatteryChargeInfo:batteryChargeInfo];
    navigationObservers = [(MNNavigationService *)self navigationObservers];
    [navigationObservers navigationService:self didUpdateDisplayETA:displayETAInfo remainingDistance:routeDistanceInfo batteryChargeInfo:batteryChargeInfo];
  }
}

- (void)_navigationServiceCallback_DidUpdateBackgroundWalkingRoute:(id)route
{
  v27 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    routeInfo = [routeCopy routeInfo];
    route = [routeInfo route];
    name = [route name];
    routeInfo2 = [routeCopy routeInfo];
    routeID = [routeInfo2 routeID];
    routeInfo3 = [routeCopy routeInfo];
    displayETAInfo = [routeInfo3 displayETAInfo];
    *buf = 138544130;
    v20 = v7;
    v21 = 2112;
    v22 = name;
    v23 = 2112;
    v24 = routeID;
    v25 = 2112;
    v26 = displayETAInfo;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ | %@ | %@", buf, 0x2Au);
  }

  routeInfo4 = [routeCopy routeInfo];
  details = [(MNNavigationService *)self details];
  [details setBackgroundWalkingRouteInfo:routeInfo4];

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  alternateWalkingRoute = [(MNNavigationService *)self alternateWalkingRoute];
  [navigationObservers navigationService:self didUpdateAlternateWalkingRoute:alternateWalkingRoute];
}

- (void)_navigationServiceCallback_DidUpdateArrivalInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    arrivalInfo = [infoCopy arrivalInfo];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = arrivalInfo;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v13, 0x16u);
  }

  arrivalInfo2 = [infoCopy arrivalInfo];
  details = [(MNNavigationService *)self details];
  [details setArrivalInfo:arrivalInfo2];

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  arrivalInfo3 = [infoCopy arrivalInfo];
  [navigationObservers navigationService:self didUpdateArrivalInfo:arrivalInfo3 previousState:{objc_msgSend(infoCopy, "previousState")}];
}

- (void)_navigationServiceCallback_DidReceiveRoutingServiceError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    error = [errorCopy error];
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = error;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "(%{public}@) %@", &v11, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  error2 = [errorCopy error];
  [navigationObservers navigationService:self didReceiveRoutingServiceError:error2];
}

- (void)_navigationServiceCallback_DidEndNavigation:(id)navigation
{
  v15 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    reason = [navigationCopy reason];
    if ((reason - 1) > 9)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842B110[reason - 1];
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v11, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didEndWithReason:{objc_msgSend(navigationCopy, "reason")}];
}

- (void)_navigationServiceCallback_DidChangeVoiceGuidanceLevel:(id)level
{
  v15 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    voiceGuidanceLevel = [levelCopy voiceGuidanceLevel];
    if ((voiceGuidanceLevel + 1) >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", voiceGuidanceLevel];
    }

    else
    {
      v9 = off_1E842B0F0[voiceGuidanceLevel + 1];
    }

    *buf = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", buf, 0x16u);
  }

  navigationObservers = [(MNNavigationService *)self navigationObservers];
  [navigationObservers navigationService:self didChangeVoiceGuidanceLevel:{objc_msgSend(levelCopy, "voiceGuidanceLevel")}];
}

@end