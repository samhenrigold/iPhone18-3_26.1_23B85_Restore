@interface NavdVenueAnnouncer
- (NSString)uniqueName;
- (char)_airportMapItemForEntry:(id)entry completion:(id)completion;
- (char)_terminalMapItemForEntry:(id)entry completion:(id)completion;
- (id)_shouldTreatArrivalAirport:(id)airport over:(id)over;
- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register;
- (void)_cleanup;
- (void)_fireNotificationIfAtEntry:(id)entry;
- (void)_logStateForStep:(id)step stopReason:(id)reason;
- (void)_processEntries:(id)entries;
- (void)_setupOfflineDownloadNotificationCircuitForEntry:(id)entry;
- (void)_startStreamersWithNotificationName:(id)name resourceDepot:(id)depot;
- (void)_startTrackingLeavingTheAirport:(id)airport;
- (void)_trackArrivalAirportForEntry:(id)entry;
- (void)_treatAirportEntry:(id)entry;
- (void)_treatGateEntry:(id)entry;
- (void)_treatTerminalEntry:(id)entry;
- (void)cleanupAirportArrival;
- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger;
- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict;
- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries;
@end

@implementation NavdVenueAnnouncer

- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register
{
  depotCopy = depot;
  registerCopy = register;
  if (!depotCopy)
  {
    v61 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v67 = 1024;
      v68 = 262;
      v69 = 2082;
      v70 = "[NavdVenueAnnouncer initFromResourceDepot:sharedRegister:]";
      v71 = 2082;
      v72 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot", buf, 0x26u);
    }

    goto LABEL_17;
  }

  oneNetworkRequester = [depotCopy oneNetworkRequester];

  if (!oneNetworkRequester)
  {
    v61 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v67 = 1024;
      v68 = 263;
      v69 = 2082;
      v70 = "[NavdVenueAnnouncer initFromResourceDepot:sharedRegister:]";
      v71 = 2082;
      v72 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a network requester", buf, 0x26u);
    }

    goto LABEL_17;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v61 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, "NavdVenueAnnouncer is Disabled", buf, 2u);
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v64.receiver = self;
  v64.super_class = NavdVenueAnnouncer;
  v9 = [(NavdVenueAnnouncer *)&v64 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("NavdVenueAnnouncerQueue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    oneNetworkRequester2 = [depotCopy oneNetworkRequester];
    network = v9->_network;
    v9->_network = oneNetworkRequester2;

    v15 = objc_alloc_init(MapsSuggestionsShortcutFilter);
    v63 = [NSSet setWithObjects:v15, 0];

    v16 = objc_alloc_init(MapsSuggestionsExpiredFilter);
    v17 = [NSSet setWithObjects:v16, 0];

    v18 = +[MapsSuggestionsEngineBuilder forDevice];
    v19 = [v18 withResourceDepot:depotCopy];

    v20 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v21 = [v19 withLocationUpdater:v20];

    v22 = [v21 withPreFilters:v63];

    v23 = [v22 withoutPreFilters:v17];

    withoutTracker = [v23 withoutTracker];

    v25 = [MapsSuggestionsEngineRunner alloc];
    GEOConfigGetDouble();
    v27 = v26;
    GEOConfigGetDouble();
    v29 = v28;
    GEOConfigGetDouble();
    v31 = v30;
    GEOConfigGetDouble();
    v33 = v32;
    GEOConfigGetDouble();
    v35 = [v25 initWithEngineBuilder:withoutTracker name:@"NavdVenueAnnouncerRunner" minRunTime:GEOConfigGetInteger() maxRunTime:1 minSleepTime:v27 runTimeLeeway:v29 sleepTimeLeeway:v31 maxEntries:v33 nilledWhenAsleep:v34];
    engineRunner = v9->_engineRunner;
    v9->_engineRunner = v35;

    [(MapsSuggestionsEngineRunner *)v9->_engineRunner registerObserver:v9];
    objc_storeStrong(&v9->_lastEngineRunnerState, register);
    v37 = objc_alloc_init(MapsSuggestionsAirportArrivalBudget);
    v38 = *&v9->_state.triggerLocation.currentSession;
    *&v9->_state.triggerLocation.currentSession = v37;

    v39 = objc_alloc_init(MapsSuggestionsDefaultLocationUpdater);
    lastEtaRequestTime = v9->_state._lastEtaRequestTime;
    v9->_state._lastEtaRequestTime = v39;

    v41 = [[MapsSuggestionsDarwinNotificationTrigger alloc] initWithNotificationName:{objc_msgSend(@"AirportAnnouncerNotification", "UTF8String")}];
    [(MapsSuggestionsEngineRunner *)v9->_engineRunner addTrigger:v41];
    v42 = objc_alloc_init(NavdVenueNavigationSessionTrigger);
    origin = v9->_state.origin;
    v9->_state.origin = v42;

    [(MapsSuggestionsEngineRunner *)v9->_engineRunner addCondition:v9->_state.origin];
    v44 = v9->_engineRunner;
    lastEngineRunnerState = v9->_lastEngineRunnerState;
    v46 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v47 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:v46];
    [(MapsSuggestionsEngineRunner *)v44 addCondition:v47];

    v48 = v9->_engineRunner;
    v49 = v9->_lastEngineRunnerState;
    v50 = +[MapsSuggestionsSiri isEnabledCondition];
    uniqueName = [v50 uniqueName];
    v52 = [(NSDictionary *)v49 objectForKeyedSubscript:uniqueName];
    [(MapsSuggestionsEngineRunner *)v48 addCondition:v52];

    v53 = v9->_engineRunner;
    v54 = v9->_lastEngineRunnerState;
    v55 = +[MapsSuggestionsFirstUnlockTrigger description];
    v56 = [(NSDictionary *)v54 objectForKeyedSubscript:v55];
    [(MapsSuggestionsEngineRunner *)v53 addCondition:v56];

    v57 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000679C8];
    [(MapsSuggestionsEngineRunner *)v9->_engineRunner addPostFilter:v57];
    v58 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000679E8];
    [(MapsSuggestionsEngineRunner *)v9->_engineRunner addPostFilter:v58];
    [(MapsSuggestionsEngineRunner *)v9->_engineRunner runASAP];
    [(NavdVenueAnnouncer *)v9 _startStreamersWithNotificationName:@"AirportAnnouncerNotification" resourceDepot:depotCopy];
    v59 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "initialized", buf, 2u);
    }

    [(NavdVenueAnnouncer *)v9 _logStateForStep:@"featureInitialized"];
  }

  self = v9;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)_startStreamersWithNotificationName:(id)name resourceDepot:(id)depot
{
  nameCopy = name;
  depotCopy = depot;
  objc_initWeak(&location, self);
  v8 = [MapsSuggestionsBlockAction alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003804C;
  v26[3] = &unk_100065F88;
  objc_copyWeak(&v29, &location);
  v9 = depotCopy;
  v27 = v9;
  v10 = nameCopy;
  v28 = v10;
  v11 = [v8 initWithName:@"startStreamerAction" block:v26];
  if (!self->_state.locations)
  {
    v12 = [MapsSuggestionsLocationChangedTrigger alloc];
    v13 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v14 = [v12 initWithLocationUpdater:v13 forcingLocationUpdater:self->_state._lastEtaRequestTime];
    locations = self->_state.locations;
    self->_state.locations = v14;
  }

  v16 = [MapsSuggestionsActionCircuit alloc];
  v31 = self->_state.locations;
  v17 = [NSArray arrayWithObjects:&v31 count:1];
  v18 = [v16 initWithTriggers:v17 action:v11];
  v19 = self->_state.triggerLocation.location;
  self->_state.triggerLocation.location = v18;

  v20 = self->_state.locations;
  GEOConfigGetDouble();
  v22 = v21;
  GEOConfigGetDouble();
  [(NSMutableArray *)v20 startWithMinimumUpdateTime:v22 minimumDistance:v23];
  v24 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "_startStreamersActionCircut started. Once we get a location, we should start the streamers.", v25, 2u);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_cleanup
{
  self->_state.queue._innerQueue = 0;
  +[NavdVenueNotification hide];
  [(NavdRouteGeniusRoute *)self->_state.route stop];
  routes = self->_state.routes;
  self->_state.routes = 0;

  if (self->_state.startTime)
  {
    [(MapsSuggestionsEngineRunner *)self->_engineRunner removeCondition:?];
    startTime = self->_state.startTime;
    self->_state.startTime = 0;
  }
}

- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries
{
  entriesCopy = entries;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038400;
  block[3] = &unk_1000655F8;
  objc_copyWeak(&v10, &location);
  v9 = entriesCopy;
  v7 = entriesCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_processEntries:(id)entries
{
  entriesCopy = entries;
  v49 = MapsSuggestionsCurrentBestLocation();
  if (v49)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [v49 coordinate];
      v6 = v5;
      [v49 coordinate];
      *buf = 134218240;
      v61 = v6;
      v62 = 2048;
      v63 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "current location : %f %f", buf, 0x16u);
    }

    [(NavdVenueAnnouncer *)self _cleanup];
    lastKnownLocation = self->_state.lastKnownLocation;
    location = &self->_state.lastKnownLocation;
    if (lastKnownLocation)
    {
      v9 = [(CLLocation *)lastKnownLocation dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      v10 = MapsSuggestionsNowWithOffset(86400.0);
      v11 = [v9 compare:v10] == 1;

      if (v11)
      {
        [(NavdVenueAnnouncer *)self cleanupAirportArrival];
        v12 = *location;
        *location = 0;
      }
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = entriesCopy;
    v13 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (!v13)
    {
      v51 = 0;
      v52 = 0;
      goto LABEL_46;
    }

    v51 = 0;
    v52 = 0;
    v14 = *v56;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v55 + 1) + 8 * i);
        if ([v16 type] != 15)
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entrySkipped" stopReason:@"not a Flight!"];
          continue;
        }

        v17 = [(NavdVenueAnnouncer *)self _shouldTreatArrivalAirport:v16 over:self->_state.lastKnownLocation];
        if (*location != v17)
        {
          objc_storeStrong(location, v17);
          v51 = 1;
        }

        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "receiving Flight entry", buf, 2u);
        }

        geoMapItem = [v16 geoMapItem];
        IsVenue = MapsSuggestionsMapItemIsVenue();

        if (IsVenue)
        {
          v21 = v52;
          v22 = v16;
          v23 = v22;
          if (v21)
          {
            if (v22)
            {
              v24 = MapsSuggestionsLocationForEntry();
              v25 = MapsSuggestionsLocationForEntry();
              if (v24 | v25)
              {
                v27 = MapsSuggestionsCurrentBestLocation();
                v28 = v27;
                if (v27)
                {
                  [v27 distanceFromLocation:v24];
                  v30 = v29;
                  [v28 distanceFromLocation:v25];
                  if (v30 <= v31)
                  {
                    v32 = v21;
                  }

                  else
                  {
                    v32 = v23;
                  }

                  v52 = v32;
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v52 = 0;
              }

              goto LABEL_35;
            }

            v26 = v21;
          }

          else
          {
            v26 = v22;
          }

          v52 = v26;
LABEL_35:

          goto LABEL_36;
        }

        [(NavdVenueAnnouncer *)self _logStateForStep:@"entrySkipped" stopReason:@"not a Venue!"];
LABEL_36:
      }

      v13 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (!v13)
      {
LABEL_46:

        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "About to check for Airport Arrival Announcer", buf, 2u);
        }

        if (v51)
        {
          [(NavdVenueAnnouncer *)self _trackArrivalAirportForEntry:self->_state.lastKnownLocation];
        }

        if (v52)
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entriesProcessed" stopReason:@"Found a flight at a Venue!"];
          geoMapItem2 = [v52 geoMapItem];
          IsAirport = MapsSuggestionsMapItemIsAirport();

          if (IsAirport)
          {
            [(NavdVenueAnnouncer *)self _treatAirportEntry:v52];
          }

          else
          {
            geoMapItem3 = [v52 geoMapItem];
            IsTerminal = MapsSuggestionsMapItemIsTerminal();

            if (IsTerminal)
            {
              [(NavdVenueAnnouncer *)self _treatTerminalEntry:v52];
            }

            else
            {
              geoMapItem4 = [v52 geoMapItem];
              IsGate = MapsSuggestionsMapItemIsGate();

              if (IsGate)
              {
                [(NavdVenueAnnouncer *)self _treatGateEntry:v52];
              }
            }
          }
        }

        else
        {
          [(NavdVenueAnnouncer *)self _logStateForStep:@"entriesProcessed" stopReason:@"no flight at a Venue!"];
        }

        goto LABEL_59;
      }
    }
  }

  v33 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "current location is nil, nothing we can do now!", buf, 2u);
  }

  route = self->_state.route;
  if (!route)
  {
    v35 = [MapsSuggestionsLocationChangedTrigger alloc];
    v36 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
    v37 = [v35 initWithLocationUpdater:v36 forcingLocationUpdater:self->_state._lastEtaRequestTime];
    v38 = self->_state.route;
    self->_state.route = v37;

    [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.route];
    route = self->_state.route;
  }

  GEOConfigGetDouble();
  v40 = v39;
  GEOConfigGetDouble();
  [(NavdRouteGeniusRoute *)route startWithMinimumUpdateTime:v40 minimumDistance:v41];
LABEL_59:
}

- (id)_shouldTreatArrivalAirport:(id)airport over:(id)over
{
  airportCopy = airport;
  overCopy = over;
  v8 = [airportCopy stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];

  if (v8)
  {
    if ([*&self->_state.triggerLocation.currentSession hasBudgetLeft])
    {
      v9 = [overCopy dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      if (!overCopy)
      {
        v17 = airportCopy;
        goto LABEL_16;
      }

      v10 = [airportCopy dateForKey:@"MapsSuggestionsFlightDepartureTimeKey"];
      v11 = [v9 compare:v10];
      if (v11 == -1)
      {
        v21 = [overCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        v22 = [airportCopy stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        v23 = [v21 isEqualToString:v22];

        v12 = overCopy;
        if (v23)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = overCopy;
        if (v11 != 1)
        {
          goto LABEL_8;
        }

        v13 = [overCopy stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        v14 = [airportCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        v15 = [v13 isEqualToString:v14];

        v12 = overCopy;
        if ((v15 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      routeCoordinate = self->_state.routeCoordinate;
      self->_state.routeCoordinate = 0;

      v12 = airportCopy;
LABEL_8:
      v17 = v12;

LABEL_16:
      goto LABEL_17;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "No budget left for arrival airport", v24, 2u);
    }

    v17 = 0;
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "No arrival airport, sticking with what we have", buf, 2u);
    }

    v17 = overCopy;
  }

LABEL_17:

  return v17;
}

- (void)_startTrackingLeavingTheAirport:(id)airport
{
  airportCopy = airport;
  v5 = [airportCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [airportCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    departingAirportCode = [airportCopy departingAirportCode];
    *buf = 138412290;
    v33 = departingAirportCode;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Start tracking Leaving Airport:%@", buf, 0xCu);
  }

  v13 = [[CLLocation alloc] initWithLatitude:v7 longitude:v10];
  v14 = [MapsSuggestionsRangeTrigger alloc];
  GEOConfigGetDouble();
  v16 = v15;
  GEOConfigGetDouble();
  v18 = v17;
  v19 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v20 = [v14 initWithLocation:v13 radius:0 onEnter:v19 minUpdateTime:self->_state._lastEtaRequestTime locationUpdater:v16 forcingLocationUpdater:v18];

  objc_initWeak(buf, self);
  v21 = [MapsSuggestionsBlockAction alloc];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10003930C;
  v28[3] = &unk_100065FB0;
  objc_copyWeak(&v30, buf);
  v22 = airportCopy;
  v29 = v22;
  v23 = [v21 initWithName:@"departureAction" block:v28];
  v24 = [MapsSuggestionsActionCircuit alloc];
  v31 = v20;
  v25 = [NSArray arrayWithObjects:&v31 count:1];
  v26 = [v24 initWithTriggers:v25 conditions:&__NSArray0__struct action:v23];
  etaCanKicker = self->_state.etaCanKicker;
  self->_state.etaCanKicker = v26;

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)cleanupAirportArrival
{
  routeCoordinate = self->_state.routeCoordinate;
  self->_state.routeCoordinate = 0;

  etaCanKicker = self->_state.etaCanKicker;
  self->_state.etaCanKicker = 0;

  sessionState = self->_state.sessionState;
  self->_state.sessionState = 0;

  v6 = *&self->_state.skipScoring;
  *&self->_state.skipScoring = 0;
}

- (void)_setupOfflineDownloadNotificationCircuitForEntry:(id)entry
{
  entryCopy = entry;
  if (self->_state.locationHistory)
  {
    objc_initWeak(location, self);
    v4 = [MapsSuggestionsOfflineDownloadNotificationAction alloc];
    v5 = *&self->_state.triggerLocation.currentSession;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100039B00;
    v42[3] = &unk_100065548;
    objc_copyWeak(&v43, location);
    v40 = [(MapsSuggestionsOfflineDownloadNotificationAction *)v4 initWithEntry:entryCopy budget:v5 completion:v42];
    lastEngineRunnerState = self->_lastEngineRunnerState;
    v37 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v7 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:?];
    v45[0] = v7;
    v8 = self->_lastEngineRunnerState;
    v9 = +[MapsSuggestionsFirstUnlockTrigger description];
    v10 = [(NSDictionary *)v8 objectForKeyedSubscript:v9];
    v45[1] = v10;
    v11 = self->_lastEngineRunnerState;
    v12 = +[MapsSuggestionsDestinationdTrigger description];
    v13 = [(NSDictionary *)v11 objectForKeyedSubscript:v12];
    v45[2] = v13;
    v14 = self->_lastEngineRunnerState;
    v15 = +[MapsSuggestionsEventKitChangedTrigger description];
    v16 = [(NSDictionary *)v14 objectForKeyedSubscript:v15];
    v45[3] = v16;
    v17 = self->_lastEngineRunnerState;
    v18 = +[MapsSuggestionsNetworkReachableTrigger description];
    v19 = [(NSDictionary *)v17 objectForKeyedSubscript:v18];
    locationHistory = self->_state.locationHistory;
    v45[4] = v19;
    v45[5] = locationHistory;
    v39 = [NSArray arrayWithObjects:v45 count:6];

    v21 = self->_lastEngineRunnerState;
    v38 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v22 = [(NSDictionary *)v21 objectForKeyedSubscript:v38];
    v44[0] = v22;
    v23 = self->_lastEngineRunnerState;
    v24 = +[MapsSuggestionsNoCellularDataCondition description];
    v25 = [(NSDictionary *)v23 objectForKeyedSubscript:v24];
    v44[1] = v25;
    v26 = self->_lastEngineRunnerState;
    v27 = +[MapsSuggestionsSiri isEnabledCondition];
    uniqueName = [v27 uniqueName];
    v29 = [(NSDictionary *)v26 objectForKeyedSubscript:uniqueName];
    v44[2] = v29;
    v30 = self->_lastEngineRunnerState;
    v31 = +[MapsSuggestionsFirstUnlockTrigger description];
    v32 = [(NSDictionary *)v30 objectForKeyedSubscript:v31];
    v44[3] = v32;
    v33 = [NSArray arrayWithObjects:v44 count:4];

    v34 = [[MapsSuggestionsActionCircuit alloc] initWithTriggers:v39 conditions:v33 action:v40];
    sessionState = self->_state.sessionState;
    self->_state.sessionState = v34;

    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
  }

  else
  {
    v36 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/VenueAnnouncer/NavdVenueAnnouncer.mm";
      v47 = 1024;
      v48 = 572;
      v49 = 2082;
      v50 = "[NavdVenueAnnouncer _setupOfflineDownloadNotificationCircuitForEntry:]";
      v51 = 2082;
      v52 = "nil == (_simpleTrigger)";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. SimpleTrigger should not be nil", location, 0x26u);
    }
  }
}

- (void)_trackArrivalAirportForEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [entryCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    arrivingAirportCode = [entryCopy arrivingAirportCode];
    *buf = 138412290;
    v45 = arrivingAirportCode;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Start tracking arriving at Airport:%@", buf, 0xCu);
  }

  v13 = [[CLLocation alloc] initWithLatitude:v7 longitude:v10];
  v14 = [MapsSuggestionsRangeTrigger alloc];
  GEOConfigGetDouble();
  v16 = v15;
  GEOConfigGetDouble();
  v18 = v17;
  v19 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
  v20 = [v14 initWithLocation:v13 radius:1 onEnter:v19 minUpdateTime:self->_state._lastEtaRequestTime locationUpdater:v16 forcingLocationUpdater:v18];

  if (!self->_state.locationHistory)
  {
    v21 = [[MapsSuggestionsSimpleTrigger alloc] initWithName:@"AirportArrivalSimpleTrigger"];
    locationHistory = self->_state.locationHistory;
    self->_state.locationHistory = v21;
  }

  objc_initWeak(buf, self);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10003A138;
  v40[3] = &unk_100065FB0;
  objc_copyWeak(&v42, buf);
  v23 = entryCopy;
  v41 = v23;
  v24 = v40;
  v25 = [[MapsSuggestionsBlockAction alloc] initWithName:@"NavdVenueAnnouncerAirportArrivalAction" block:v24];

  v26 = [MapsSuggestionsGCDTimer alloc];
  queue = self->_queue;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003A32C;
  v37[3] = &unk_1000655F8;
  objc_copyWeak(&v39, buf);
  v28 = v23;
  v38 = v28;
  v29 = [v26 initWithName:@"AirportArrivalTimer" queue:queue block:v37];
  v30 = *&self->_state.skipScoring;
  *&self->_state.skipScoring = v29;

  v31 = *&self->_state.skipScoring;
  GEOConfigGetDouble();
  [v31 scheduleWithInterval:(v32 * 1000000000.0) leeway:60000000000];
  v33 = [MapsSuggestionsActionCircuit alloc];
  v43 = v20;
  v34 = [NSArray arrayWithObjects:&v43 count:1];
  v35 = [v33 initWithTriggers:v34 conditions:&__NSArray0__struct action:v25];
  routeCoordinate = self->_state.routeCoordinate;
  self->_state.routeCoordinate = v35;

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);
}

- (void)_treatAirportEntry:(id)entry
{
  entryCopy = entry;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Airport" stopReason:0];
  geoMapItem = [entryCopy geoMapItem];
  _browseCategories = [geoMapItem _browseCategories];
  v7 = [_browseCategories count];

  if (v7)
  {
    [(NavdVenueAnnouncer *)self _fireNotificationIfAtEntry:entryCopy];
  }

  else
  {
    [(NavdVenueAnnouncer *)self _logStateForStep:@"Airport has no browse categories" stopReason:0];
    v8 = [entryCopy stringForKey:@"MapsSuggestionsFlightTerminalSearchKey"];

    if (v8)
    {
      objc_initWeak(&location, self);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10003A69C;
      v9[3] = &unk_100065670;
      objc_copyWeak(&v12, &location);
      v10 = entryCopy;
      selfCopy = self;
      [(NavdVenueAnnouncer *)self _terminalMapItemForEntry:v10 completion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      [(NavdVenueAnnouncer *)self _logStateForStep:@"no Terminal name to search for" stopReason:0];
    }
  }
}

- (void)_treatTerminalEntry:(id)entry
{
  entryCopy = entry;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Terminal" stopReason:0];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A980;
  v6[3] = &unk_100067A10;
  objc_copyWeak(&v8, &location);
  v5 = entryCopy;
  v7 = v5;
  [(NavdVenueAnnouncer *)self _airportMapItemForEntry:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_treatGateEntry:(id)entry
{
  entryCopy = entry;
  [(NavdVenueAnnouncer *)self _logStateForStep:@"got Gate" stopReason:0];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003AD30;
  v6[3] = &unk_100067A10;
  objc_copyWeak(&v8, &location);
  v5 = entryCopy;
  v7 = v5;
  [(NavdVenueAnnouncer *)self _airportMapItemForEntry:v5 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (char)_airportMapItemForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = [entryCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Looking for airport with code %@", buf, 0xCu);
  }

  v12 = completionCopy;
  objc_copyWeak(&v13, &location);
  v10 = MapsSuggestionsSearchAirport();
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return v10;
}

- (char)_terminalMapItemForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = [entryCopy stringForKey:@"MapsSuggestionsFlightTerminalSearchKey"];
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Looking for terminal name '%@'", buf, 0xCu);
  }

  v12 = completionCopy;
  objc_copyWeak(&v13, &location);
  v10 = MapsSuggestionsSearchTerminal();
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return v10;
}

- (void)_fireNotificationIfAtEntry:(id)entry
{
  entryCopy = entry;
  geoMapItem = [entryCopy geoMapItem];

  if (!geoMapItem)
  {
    v76 = [[NSString alloc] initWithFormat:@"There is no mapItem?!"];
    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v130 = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Aborted location check: %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  geoMapItem2 = [entryCopy geoMapItem];
  IsVenue = MapsSuggestionsMapItemIsVenue();

  if ((IsVenue & 1) == 0)
  {
    v78 = [NSString alloc];
    geoMapItem3 = [entryCopy geoMapItem];
    v76 = [v78 initWithFormat:@"'%@' is not a not an Venue!", geoMapItem3];

    v77 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v130 = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Aborted location check: %@", buf, 0xCu);
    }

LABEL_31:

    [(NavdVenueAnnouncer *)self _logStateForStep:@"locationSkipped" stopReason:v76];
LABEL_61:

    goto LABEL_62;
  }

  geoMapItem4 = [entryCopy geoMapItem];
  _browseCategories = [geoMapItem4 _browseCategories];
  v10 = [_browseCategories count];

  if (v10)
  {
    v11 = [entryCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];

    if (v11)
    {
      geoMapItem5 = [entryCopy geoMapItem];
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "VBB:-- Start Venue BoundingBox --", buf, 2u);
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _venueInfo = [geoMapItem5 _venueInfo];
        venueIdentifier = [_venueInfo venueIdentifier];
        *buf = 138412290;
        v130 = venueIdentifier;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "VBB:VenueIdentifier: %@", buf, 0xCu);
      }

      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        name = [geoMapItem5 name];
        *buf = 138412290;
        v130 = name;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "VBB:Venue name: %@", buf, 0xCu);
      }

      geoFenceMapRegion = [geoMapItem5 geoFenceMapRegion];
      if ([geoFenceMapRegion hasEastLng])
      {
        geoFenceMapRegion2 = [geoMapItem5 geoFenceMapRegion];
        if ([geoFenceMapRegion2 hasWestLng])
        {
          geoFenceMapRegion3 = [geoMapItem5 geoFenceMapRegion];
          if ([geoFenceMapRegion3 hasNorthLat])
          {
            geoFenceMapRegion4 = [geoMapItem5 geoFenceMapRegion];
            hasSouthLat = [geoFenceMapRegion4 hasSouthLat];

            if (hasSouthLat)
            {
              v24 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion5 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion5 centerLat];
                v27 = v26;
                geoFenceMapRegion6 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion6 centerLng];
                *buf = 134218240;
                v130 = v27;
                v131 = 2048;
                v132 = v29;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "VBB:Venue center <%.6f,%.6f>", buf, 0x16u);
              }

              v30 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion7 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion7 northLat];
                v33 = v32;
                geoFenceMapRegion8 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion8 westLng];
                *buf = 134218240;
                v130 = v33;
                v131 = 2048;
                v132 = v35;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "VBB:Venue topLeft <%.6f,%.6f>", buf, 0x16u);
              }

              v36 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion9 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion9 northLat];
                v39 = v38;
                geoFenceMapRegion10 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion10 eastLng];
                *buf = 134218240;
                v130 = v39;
                v131 = 2048;
                v132 = v41;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "VBB:Venue topRight <%.6f,%.6f>", buf, 0x16u);
              }

              v42 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion11 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion11 southLat];
                v45 = v44;
                geoFenceMapRegion12 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion12 westLng];
                *buf = 134218240;
                v130 = v45;
                v131 = 2048;
                v132 = v47;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "VBB:Venue bottomLeft <%.6f,%.6f>", buf, 0x16u);
              }

              v48 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion13 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion13 southLat];
                v51 = v50;
                geoFenceMapRegion14 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion14 eastLng];
                *buf = 134218240;
                v130 = v51;
                v131 = 2048;
                v132 = v53;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "VBB:Venue bottomRight <%.6f,%.6f>", buf, 0x16u);
              }

              v54 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                geoFenceMapRegion15 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion15 northLat];
                v56 = v55;
                geoFenceMapRegion16 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion16 westLng];
                v58 = v57;
                geoFenceMapRegion17 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion17 northLat];
                v60 = v59;
                geoFenceMapRegion18 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion18 eastLng];
                v63 = v62;
                geoFenceMapRegion19 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion19 southLat];
                v66 = v65;
                geoFenceMapRegion20 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion20 eastLng];
                v69 = v68;
                geoFenceMapRegion21 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion21 southLat];
                v72 = v71;
                geoFenceMapRegion22 = [geoMapItem5 geoFenceMapRegion];
                [geoFenceMapRegion22 westLng];
                *buf = 134219776;
                v130 = v56;
                v131 = 2048;
                v132 = v58;
                v133 = 2048;
                v134 = v60;
                v135 = 2048;
                v136 = v63;
                v137 = 2048;
                v138 = v66;
                v139 = 2048;
                v140 = v69;
                v141 = 2048;
                v142 = v72;
                v143 = 2048;
                v144 = v74;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "\n#polygon 0\n%.6f,%.6f\n%.6f,%.6f\n%.6f,%.6f\n%.6f,%.6f\n", buf, 0x52u);
              }

              v75 = GEOFindOrCreateLog();
              if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_46;
              }

              *buf = 0;
LABEL_45:
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEBUG, "VBB:-- End Venue BoundingBox --", buf, 2u);
LABEL_46:

              v76 = MapsSuggestionsCurrentBestLocation();
              [v76 coordinate];
              v83 = v82;
              [v76 coordinate];
              v85 = v84;
              [(NavdVenueAnnouncer *)self _logStateForStep:@"checkLocation" stopReason:0];
              geoMapItem6 = [entryCopy geoMapItem];
              geoFenceMapRegion23 = [geoMapItem6 geoFenceMapRegion];
              v88 = [geoFenceMapRegion23 containsCoordinate:{v83, v85}];

              if (v88)
              {
                selfCopy = self;
                objc_sync_enter(selfCopy);
                [(NavdVenueAnnouncer *)selfCopy _logStateForStep:@"showNotification" stopReason:0];
                geoMapItem7 = [entryCopy geoMapItem];
                _venueInfo2 = [geoMapItem7 _venueInfo];
                venueIdentifier2 = [_venueInfo2 venueIdentifier];
                selfCopy->_state.queue._innerQueue = [venueIdentifier2 venueID];

                v93 = [MapsSuggestionsBudget alloc];
                v94 = [entryCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
                v95 = [v93 initWithDelegate:selfCopy name:v94];
                v96 = *&selfCopy->_state.active;
                *&selfCopy->_state.active = v95;

                v97 = *&selfCopy->_state.active;
                Integer = GEOConfigGetInteger();
                GEOConfigGetDouble();
                [v97 addRollingWindowOfCount:Integer perTimeInterval:@"shortWindow" name:?];
                v99 = *&selfCopy->_state.active;
                v100 = GEOConfigGetInteger();
                GEOConfigGetDouble();
                [v99 addRollingWindowOfCount:v100 perTimeInterval:@"longWindow" name:?];
                if ([*&selfCopy->_state.active hasBudgetLeft])
                {
                  geoMapItem8 = [entryCopy geoMapItem];
                  v102 = [entryCopy stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
                  [NavdVenueNotification showWithMapItem:geoMapItem8 airport:v102];

                  v103 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "Spending Bugdet", buf, 2u);
                  }

                  [*&selfCopy->_state.active spendNow];
                }

                else
                {
                  v121 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "No Budget left", buf, 2u);
                  }
                }

                v122 = [MapsSuggestionsOutsideOfMapItemFenceCondition alloc];
                geoMapItem9 = [entryCopy geoMapItem];
                GEOConfigGetDouble();
                v124 = [v122 initWithMapItem:geoMapItem9 radius:?];
                startTime = selfCopy->_state.startTime;
                selfCopy->_state.startTime = v124;

                [(MapsSuggestionsEngineRunner *)selfCopy->_engineRunner addCondition:selfCopy->_state.startTime];
                [(NavdRouteGeniusRoute *)selfCopy->_state.route stop];
                objc_sync_exit(selfCopy);
              }

              else
              {
                geoMapItem10 = [entryCopy geoMapItem];
                selfCopy = MapsSuggestionsLocationForMapItem();

                if (!self->_state.routes)
                {
                  lastEngineRunnerState = self->_lastEngineRunnerState;
                  v106 = +[MapsSuggestionsNetworkReachableTrigger description];
                  v107 = [(NSDictionary *)lastEngineRunnerState objectForKeyedSubscript:v106];
                  routes = self->_state.routes;
                  self->_state.routes = v107;

                  [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.routes];
                }

                route = self->_state.route;
                if (!route)
                {
                  v110 = [MapsSuggestionsLocationChangedTrigger alloc];
                  v111 = +[MapsSuggestionsNavdLBALocationManager sharedLocationManager];
                  v112 = [v110 initWithLocationUpdater:v111 forcingLocationUpdater:self->_state._lastEtaRequestTime];
                  v113 = self->_state.route;
                  self->_state.route = v112;

                  [(MapsSuggestionsEngineRunner *)self->_engineRunner addTrigger:self->_state.route];
                  route = self->_state.route;
                }

                [v76 distanceFromLocation:selfCopy];
                v115 = v114;
                GEOConfigGetDouble();
                v117 = v116;
                [v76 distanceFromLocation:selfCopy];
                v119 = v118;
                GEOConfigGetDouble();
                [(NavdRouteGeniusRoute *)route startWithMinimumUpdateTime:v115 / v117 minimumDistance:v120 * v119];
              }

              goto LABEL_61;
            }

LABEL_41:
            v81 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "VBB:Venue missing lat/long", buf, 2u);
            }

            v75 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_46;
            }

            *buf = 0;
            goto LABEL_45;
          }
        }
      }

      goto LABEL_41;
    }

    v80 = @"No departure airport code";
  }

  else
  {
    v80 = @"No browse categories";
  }

  [(NavdVenueAnnouncer *)self _logStateForStep:@"locationSkipped" stopReason:v80];
LABEL_62:
}

- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger
{
  triggerCopy = trigger;
  [(NavdRouteGeniusRoute *)self->_state.route stop];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [triggerCopy uniqueName];
    v8 = 138412290;
    v9 = uniqueName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Triggered by %@", &v8, 0xCu);
  }

  [(NavdVenueAnnouncer *)self _logStateForStep:@"didStart" stopReason:0];
}

- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict
{
  stepCopy = step;
  dictCopy = dict;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [dictCopy copy];
  name = selfCopy->_state.queue._name;
  selfCopy->_state.queue._name = v9;

  objc_sync_exit(selfCopy);
  [(NavdVenueAnnouncer *)selfCopy _logStateForStep:stepCopy];
}

- (void)_logStateForStep:(id)step stopReason:(id)reason
{
  stepCopy = step;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19[0] = @"step";
  v9 = MSg::jsonFor();
  v20[0] = v9;
  v19[1] = @"stopReason";
  v10 = MSg::jsonFor();
  v20[1] = v10;
  v19[2] = @"engineRunner";
  v11 = MSg::jsonFor();
  v20[2] = v11;
  v19[3] = @"feature";
  v21 = @"displayedMapItem";
  v12 = [NSNumber numberWithUnsignedLongLong:selfCopy->_state.queue._innerQueue];
  v13 = MSg::jsonFor();
  *v18 = v13;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:&v21 count:1];

  v20[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromMapsSuggestionsJSON();
    *v18 = 138412290;
    *&v18[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "EVAL{Welcome}=%@", v18, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end