@interface NMCRoutePlanningController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (GEOCompanionRouteContext)companionRouteContext;
- (NMCRoutePlanningController)init;
- (id)_messageForNoRoutesWithError:(id)error routeContextData:(id)data;
- (id)_messageForRouteDetailsData:(id)data index:(unint64_t)index count:(unint64_t)count routeContextData:(id)contextData;
- (id)_replyForMessage:(id)message withSafetyWarning:(int64_t)warning error:(id)error;
- (id)companionRouteAtIndex:(unint64_t)index;
- (id)companionRouteWithRouteID:(id)d;
- (id)startNavigationDetailsForRouteID:(id)d;
- (unint64_t)selectedRouteIndex;
- (void)_checkinForRoutePlanningWithConnection:(id)connection;
- (void)_clearLocally;
- (void)_clearPreviewRoutesIfNeeded;
- (void)_enumerateMapsConnectionsUnderAssertionNamed:(id)named usingBlock:(id)block;
- (void)_forgetConnection:(id)connection reason:(id)reason;
- (void)_handleIncomingMessage:(id)message;
- (void)_handlePreviewNavMessage:(id)message;
- (void)_notifyMapsRoutePlanningSessionDidFail:(id)fail;
- (void)_notifyMapsRoutePlanningSessionDidInvalidate:(id)invalidate;
- (void)_notifyMapsRoutePlanningSessionDidSelectRoute:(id)route;
- (void)_notifyMapsRoutePlanningSessionDidStartLoading:(id)loading;
- (void)_notifyMapsRoutePlanningSessionDidUpdateResponse:(id)response;
- (void)_notifyNanoMapsRoutePlanningSession:(id)session didReceiveRouteUpdatesForRoutes:(id)routes;
- (void)_notifyNanoMapsRoutePlanningSessionDidFail:(id)fail;
- (void)_notifyNanoMapsRoutePlanningSessionDidInvalidate:(id)invalidate;
- (void)_notifyNanoMapsRoutePlanningSessionDidSelectRoute:(id)route;
- (void)_notifyNanoMapsRoutePlanningSessionDidStartLoading:(id)loading;
- (void)_notifyNanoMapsRoutePlanningSessionDidUpdateResponse:(id)response changedRouteIdentifiers:(id)identifiers;
- (void)_prepareTransitRouteUpdaterIfNeeded;
- (void)_registerIDSMessageObservers;
- (void)_registerXPCRoutes;
- (void)_sendClearPreviewWithContext:(id)context;
- (void)_sendPreviewRoutes:(id)routes atIndexes:(id)indexes error:(id)error companionRouteContext:(id)context includeSyntheticRoute:(BOOL)route;
- (void)_sendPreviewRoutesIfAvailable;
- (void)_sendRouteUpdates:(id)updates context:(id)context;
- (void)_sendSelectedPreviewRouteIndex:(unint64_t)index context:(id)context;
- (void)_setCurrentSessionInputOrigin:(unint64_t)origin;
- (void)_updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler;
- (void)anticipateRoutePlanningRequest:(id)request completionHandler:(id)handler;
- (void)checkinForRoutePlanning;
- (void)clearLocally;
- (void)clearPreviewRoutesIfNeeded;
- (void)clearRoutePlanningWithContext:(id)context completionHandler:(id)handler;
- (void)failRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler;
- (void)mapsApplicationStateDidChange:(id)change;
- (void)routePlanningSession:(id)session didFailWithResponse:(id)response;
- (void)routePlanningSession:(id)session didStartLoadingWithRequest:(id)request;
- (void)routePlanningSession:(id)session didUpdateWithResponse:(id)response;
- (void)routePlanningSessionDidInvalidate:(id)invalidate;
- (void)sendPreviewRoutesIfAvailable;
- (void)transitRouteUpdater:(id)updater didUpdateTransitRoutes:(id)routes;
- (void)updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler;
- (void)updateRoutePlanningRequest:(id)request withSelectedRouteID:(id)d completionHandler:(id)handler;
@end

@implementation NMCRoutePlanningController

- (NMCRoutePlanningController)init
{
  v8.receiver = self;
  v8.super_class = NMCRoutePlanningController;
  v2 = [(NMCRoutePlanningController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentSessionInputOrigin = 3;
    v4 = +[NMCGizmoConnection sharedInstance];
    supportsXPCUseMapsForRoutePlanning = [v4 supportsXPCUseMapsForRoutePlanning];

    if (supportsXPCUseMapsForRoutePlanning)
    {
      [NanoRoutePlanningSession setDefaultClass:objc_opt_class() forSessionState:3];
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"mapsApplicationStateDidChange:" name:off_10009DD38 object:0];

    [(NMCRoutePlanningController *)v3 _registerXPCRoutes];
    [(NMCRoutePlanningController *)v3 _registerIDSMessageObservers];
  }

  return v3;
}

- (GEOCompanionRouteContext)companionRouteContext
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001EB00;
  v11 = sub_10001EB10;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001EB18;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unint64_t)selectedRouteIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EC3C;
  v5[3] = &unk_100085D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)companionRouteAtIndex:(unint64_t)index
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10001EB00;
    v13 = sub_10001EB10;
    v14 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EDE4;
    block[3] = &unk_100085DC0;
    block[4] = self;
    block[5] = &v9;
    block[6] = index;
    dispatch_sync(isolationQueue, block);
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (id)companionRouteWithRouteID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if (dCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10001EB00;
    v15 = sub_10001EB10;
    v16 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EFCC;
    block[3] = &unk_100085DE8;
    block[4] = self;
    v9 = dCopy;
    v10 = &v11;
    dispatch_sync(isolationQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)startNavigationDetailsForRouteID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10001EB00;
  v41 = sub_10001EB10;
  v42 = 0;
  if (dCopy)
  {
    selectedRouteID = [NSUUID _maps_UUIDWithData:dCopy];
    if (selectedRouteID)
    {
      isolationQueue = self->_isolationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F728;
      block[3] = &unk_1000856D0;
      block[4] = self;
      block[5] = &v37;
      dispatch_sync(isolationQueue, block);
      goto LABEL_5;
    }

    v27 = sub_100053324(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = dCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but route ID is malformed (%@)", buf, 0xCu);
    }
  }

  else
  {
    v7 = self->_isolationQueue;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10001F778;
    v35[3] = &unk_1000856D0;
    v35[4] = self;
    v35[5] = &v37;
    dispatch_sync(v7, v35);
    selectedRouteID = [v38[5] selectedRouteID];
    if (selectedRouteID)
    {
LABEL_5:
      routes = [v38[5] routes];
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10001F7C8;
      v33 = &unk_100085E10;
      v9 = selectedRouteID;
      v34 = v9;
      v10 = [routes indexOfObjectPassingTest:&v30];
      v11 = [routes count];
      if (v10 >= v11)
      {
        v12 = 0;
      }

      else
      {
        v11 = [routes objectAtIndexedSubscript:v10];
        v12 = v11;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11)
        {
          v13 = sub_100053324(v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v45 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Generating start navigation details for route ID %@", buf, 0xCu);
          }

          v14 = objc_alloc_init(MNStartNavigationDetails);
          if ([(__CFString *)v12 transportType]== 1)
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }

          [v14 setNavigationType:v15];
          [v14 setGuidanceType:0];
          v43 = v12;
          v16 = [NSArray arrayWithObjects:&v43 count:1];
          [v14 setRoutes:v16];

          [v14 setSelectedRouteIndex:0];
          routeAttributes = [(__CFString *)v12 routeAttributes];
          [v14 setRouteAttributes:routeAttributes];

          BOOL = GEOConfigGetBOOL();
          v19 = +[GEOPlatform sharedPlatform];
          isInternalInstall = [v19 isInternalInstall];

          if (isInternalInstall)
          {
            simulationType = GEOConfigGetBOOL();
            if (simulationType)
            {
              [v14 setSimulationType:GEOConfigGetInteger()];
              simulationType = [v14 simulationType];
              LOBYTE(BOOL) = (simulationType == -1) | BOOL;
            }

            v22 = sub_100053324(simulationType);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = @"NO";
              if (BOOL)
              {
                v23 = @"YES";
              }

              v24 = v23;
              simulationType2 = [v14 simulationType];
              *buf = 138412546;
              v45 = v24;
              v46 = 1024;
              LODWORD(v47) = simulationType2;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Internal only: shouldRecordTrace: %@, simulationType: %d", buf, 0x12u);
            }

            if ((BOOL & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (!BOOL)
          {
            goto LABEL_27;
          }

          traceRecordingData = [v38[5] traceRecordingData];
          [v14 setTraceRecordingData:traceRecordingData];
LABEL_26:

LABEL_27:
          goto LABEL_35;
        }
      }

      traceRecordingData = sub_100053324(v11);
      if (os_log_type_enabled(traceRecordingData, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v45 = v10;
        v46 = 2112;
        v47 = v9;
        _os_log_impl(&_mh_execute_header, traceRecordingData, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but route not found (index: %lu, routeID: %@)", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_26;
    }

    v28 = sub_100053324(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Asked for start navigation details, but there isn't a selected route to default to", buf, 2u);
    }
  }

  v9 = 0;
  v14 = 0;
LABEL_35:
  _Block_object_dispose(&v37, 8);

  return v14;
}

- (void)sendPreviewRoutesIfAvailable
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F8D0;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_sendPreviewRoutesIfAvailable
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
  companionRoutes = [response companionRoutes];

  request = [(NanoRoutePlanningSession *)self->_routePlanningSession request];
  companionRouteContext = [request companionRouteContext];
  v7 = [companionRouteContext copy];

  response2 = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
  selectedRouteID = [response2 selectedRouteID];

  if (selectedRouteID)
  {
    response3 = [(NanoRoutePlanningSession *)self->_routePlanningSession response];
    routeIDs = [response3 routeIDs];
    v12 = [routeIDs indexOfObject:selectedRouteID];
  }

  else
  {
    v12 = 0;
  }

  v13 = [companionRoutes count];
  if (v13)
  {
    v14 = sub_100053324(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Connection needs sync: sending latest preview routes", v15, 2u);
    }

    [(NMCRoutePlanningController *)self _sendPreviewRoutes:companionRoutes atIndexes:0 error:0 companionRouteContext:v7 includeSyntheticRoute:1];
    if (v12 && v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NMCRoutePlanningController *)self _sendSelectedPreviewRouteIndex:v12 context:v7];
    }
  }
}

- (void)clearPreviewRoutesIfNeeded
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FB44;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_clearPreviewRoutesIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = self->_routePlanningSession;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100053324(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      request = [(NanoRoutePlanningSession *)v4 request];
      companionRouteContext = [request companionRouteContext];
      simpleDescription = [companionRouteContext simpleDescription];
      v9 = 138412290;
      v10 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing existing route planning session (context: %@)", &v9, 0xCu);
    }

    [(NanoRoutePlanningSession *)v4 invalidate];
  }
}

- (void)clearLocally
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FD3C;
  v4[3] = &unk_100085638;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_clearLocally
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = self->_routePlanningSession;
  snapshot = self->_snapshot;
  self->_snapshot = 0;

  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = 0;

  if (v8)
  {
    request = [(NanoRoutePlanningSession *)v8 request];
    companionRouteContext = [request companionRouteContext];
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
    self->_lastInvalidatedCompanionRouteContext = companionRouteContext;

    [(NanoRoutePlanningSession *)v8 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v8 invalidate];
  }
}

- (void)mapsApplicationStateDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:BKSApplicationStateKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    unsignedIntValue = [v6 unsignedIntValue];
    v9 = unsignedIntValue;
    v10 = sub_100053324(unsignedIntValue);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[NMCRoutePlanningController mapsApplicationStateDidChange:]";
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %lu", &v14, 0x16u);
    }

    v11 = (v9 == 0) | v9;
    if (v11)
    {
      [(NMCRoutePlanningController *)self clearPreviewRoutesIfNeeded];
    }

    [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:v11 & self->_sendAllUpdates & 1];
  }

  else
  {
    v12 = sub_100053324(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      userInfo2 = [changeCopy userInfo];
      v14 = 138543362;
      v15 = userInfo2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unknown userInfo format: %{public}@", &v14, 0xCu);
    }
  }
}

- (void)_prepareTransitRouteUpdaterIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100020344;
  v32[3] = &unk_100084F10;
  v32[4] = self;
  v3 = objc_retainBlock(v32);
  v4 = self->_routePlanningSession;
  request = [(NanoRoutePlanningSession *)v4 request];
  v6 = request;
  if (request && [request resolvedTransportType] == 1)
  {
    response = [(NanoRoutePlanningSession *)v4 response];
    if ([response numberOfRoutes] && objc_msgSend(response, "routeOrigin") == 1)
    {
      v26 = response;
      v27 = v4;
      routes = [response routes];
      v9 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(routes, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = routes;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            transitRouteUpdateRequest = [v16 transitRouteUpdateRequest];
            if (transitRouteUpdateRequest)
            {
              if (fabs(v14) < 0.000001)
              {
                [v16 transitUpdateInitialDelay];
                v14 = v18;
              }

              [v9 addObject:transitRouteUpdateRequest];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v12);
      }

      else
      {
        v14 = 0.0;
      }

      v19 = [v9 count];
      if (v19)
      {
        v20 = sub_100053324(v19);
        response = v26;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v9 count];
          *buf = 134217984;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Starting transit route updater for %lu transit routes", buf, 0xCu);
        }

        if (!self->_transitRouteUpdater)
        {
          v23 = [[GEOTransitRouteUpdater alloc] initWithDelegate:self andInitialTTL:v14];
          transitRouteUpdater = self->_transitRouteUpdater;
          self->_transitRouteUpdater = v23;
        }

        v4 = v27;
        v25 = self->_sendAllUpdates && !sub_100014134(v22);
        [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:v25];
        [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setRequests:v9];
      }

      else
      {
        (v3[2])(v3);
        response = v26;
        v4 = v27;
      }
    }

    else
    {
      (v3[2])(v3);
    }
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)transitRouteUpdater:(id)updater didUpdateTransitRoutes:(id)routes
{
  routesCopy = routes;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020478;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = routesCopy;
  v7 = routesCopy;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSession:(id)session didStartLoadingWithRequest:(id)request
{
  sessionCopy = session;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020834;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSession:(id)session didUpdateWithResponse:(id)response
{
  sessionCopy = session;
  responseCopy = response;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020958;
  block[3] = &unk_100085E38;
  v12 = responseCopy;
  selfCopy = self;
  v14 = sessionCopy;
  v9 = sessionCopy;
  v10 = responseCopy;
  dispatch_async(isolationQueue, block);
}

- (void)routePlanningSession:(id)session didFailWithResponse:(id)response
{
  sessionCopy = session;
  isolationQueue = self->_isolationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020B1C;
  v8[3] = &unk_1000856F8;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(isolationQueue, v8);
}

- (void)routePlanningSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C14;
  v7[3] = &unk_1000856F8;
  v8 = invalidateCopy;
  selfCopy = self;
  v6 = invalidateCopy;
  dispatch_async(isolationQueue, v7);
}

- (void)_setCurrentSessionInputOrigin:(unint64_t)origin
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_currentSessionInputOrigin != origin)
  {
    v6 = sub_100053324(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = sub_1000134A4(origin);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Switching current session input origin to %@", &v8, 0xCu);
    }

    self->_currentSessionInputOrigin = origin;
  }
}

- (void)_registerIDSMessageObservers
{
  v3 = +[NMCGizmoConnection sharedInstance];
  v4 = objc_alloc_init(NMMessageQueue);
  [(NMMessageQueue *)v4 setMaximumInFlightMessagesCount:GEOConfigGetUInteger()];
  [v3 setMessageQueue:v4 forType:307];
  [v3 setMessageQueue:v4 forType:308];
  [v3 setMessageQueue:v4 forType:312];
  [v3 setMessageQueue:v4 forType:309];
  [v3 setMessageQueue:v4 forType:305];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020FA4;
  v13[3] = &unk_100084F38;
  objc_copyWeak(&v14, &location);
  v5 = objc_retainBlock(v13);
  v6 = sub_100053324(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will begin listening for incoming IDS messages", v12, 2u);
  }

  v7 = [v3 addMessageObserverForType:304 callback:v5];
  v8 = [v3 addMessageObserverForType:307 callback:v5];
  v9 = [v3 addMessageObserverForType:305 callback:v5];
  v10 = [v3 addMessageObserverForType:306 callback:v5];
  v11 = [v3 addMessageObserverForType:309 callback:v5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_handleIncomingMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_isolationQueue);
  type = [messageCopy type];
  if (type > 305)
  {
    switch(type)
    {
      case 306:
        hasBoolValue = [messageCopy argumentForTag:5];
        v6 = hasBoolValue;
        if (hasBoolValue)
        {
          hasBoolValue = [hasBoolValue hasBoolValue];
          if (hasBoolValue)
          {
            bOOLValue = [(NMReply *)v6 BOOLValue];
            self->_sendAllUpdates = bOOLValue;
            v19 = sub_100053324(bOOLValue);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              if (self->_sendAllUpdates)
              {
                v20 = "YES";
              }

              else
              {
                v20 = "NO";
              }

              *buf = 136315138;
              v55 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Setting _sendAllUpdates to %s", buf, 0xCu);
            }

            if (self->_sendAllUpdates)
            {
              routePlanningSession = self->_routePlanningSession;
              if (routePlanningSession)
              {
                response = [(NanoRoutePlanningSession *)routePlanningSession response];
                routeIDs = [response routeIDs];
                v50[0] = _NSConcreteStackBlock;
                v50[1] = 3221225472;
                v50[2] = sub_100022404;
                v50[3] = &unk_100085E88;
                v24 = response;
                v51 = v24;
                v25 = sub_1000282B8(routeIDs, v50);

                if ([v25 count])
                {
                  request = [(NanoRoutePlanningSession *)self->_routePlanningSession request];
                  companionRouteContext = [request companionRouteContext];

                  v29 = sub_100053324(v28);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v55 = companionRouteContext;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Sending all received route updates in session (context: %@)", buf, 0xCu);
                  }

                  [(NMCRoutePlanningController *)self _sendRouteUpdates:v25 context:companionRouteContext];
                }
              }
            }

            [(NMCRoutePlanningController *)self _prepareTransitRouteUpdaterIfNeeded];
            goto LABEL_316;
          }
        }

        companionRouteContext2 = sub_100053324(hasBoolValue);
        if (os_log_type_enabled(companionRouteContext2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, companionRouteContext2, OS_LOG_TYPE_INFO, "SET_WANTS_ALL_NAV_STATUS_UPDATES message has no flag argument, ignoring", buf, 2u);
        }

        goto LABEL_315;
      case 307:
        v6 = +[MapsCompanionDaemonIPCInterface sharedInterface];
        if (([(NMReply *)v6 canReceiveMessages]& 1) != 0)
        {
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_1000223F4;
          v52[3] = &unk_100085E60;
          v53 = v6;
          sub_100013C38(@"com.apple.Maps.launchFromGizmo.DISMISS_NAV_SAFETY_ALERT", v52);

LABEL_316:
          goto LABEL_317;
        }

        companionRouteContext2 = +[MSPMapsPaths mapsApplicationContainerPaths];
        [NSNumber numberWithBool:1];
        homeDirectory = [companionRouteContext2 homeDirectory];
        _CFPreferencesSetAppValueWithContainer();

LABEL_315:
        goto LABEL_316;
      case 309:
        v6 = objc_alloc_init(NMReply);
        companionRouteContext2 = objc_alloc_init(NMArgument);
        [companionRouteContext2 setTag:1];
        [(NMReply *)v6 addArgument:companionRouteContext2];
        dataValue = +[NMCGizmoConnection sharedInstance];
        [dataValue sendReply:v6 forMessage:messageCopy options:0];
LABEL_314:

        goto LABEL_315;
    }

    goto LABEL_317;
  }

  if (type == 304)
  {
    [(NMCRoutePlanningController *)self _handlePreviewNavMessage:messageCopy];
    goto LABEL_317;
  }

  if (type == 305)
  {
    v6 = self->_routePlanningSession;
    request2 = [(NMReply *)v6 request];
    companionRouteContext2 = [request2 companionRouteContext];

    v10 = [messageCopy argumentForTag:406];
    dataValue = [v10 dataValue];

    if (dataValue)
    {
      v11 = [[GEOCompanionRouteContext alloc] initWithData:dataValue];
      v12 = v11;
      if (companionRouteContext2)
      {
        v13 = [v11 isStaleComparedToContext:companionRouteContext2];
        if (v13)
        {
          v14 = sub_100053324(v13);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
LABEL_209:

            goto LABEL_306;
          }

          type2 = [messageCopy type];
          if (type2 > 202)
          {
            if (type2 <= 400)
            {
              if (type2 <= 205)
              {
                if (type2 == 203)
                {
                  v16 = @"FAILED_TO_UPDATE_LOCATION";
                }

                else if (type2 == 204)
                {
                  v16 = @"DID_PAUSE_LOCATION_UPDATES";
                }

                else
                {
                  v16 = @"DID_RESUME_LOCATION_UPDATES";
                }
              }

              else
              {
                switch(type2)
                {
                  case 300:
                    v16 = @"UPDATE_NAV_ROUTE_DETAILS";
                    break;
                  case 301:
                    v16 = @"UPDATE_NAV_ROUTE_STATUS";
                    break;
                  case 302:
                    v16 = @"START_NAV";
                    break;
                  case 303:
                    v16 = @"STOP_NAV";
                    break;
                  case 304:
                    v16 = @"PREVIEW_NAV";
                    break;
                  case 305:
                    v16 = @"CLEAR_NAV_PREVIEW";
                    break;
                  case 306:
                    v16 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                    break;
                  case 307:
                    v16 = @"DISMISS_NAV_SAFETY_ALERT";
                    break;
                  case 308:
                    v16 = @"AVAILABLE_ROUTE";
                    break;
                  case 309:
                    v16 = @"SELECTED_ROUTE";
                    break;
                  case 310:
                    v16 = @"REQUEST_NAVIGATION_UPDATE";
                    break;
                  case 311:
                    v16 = @"UPDATE_NAV_ROUTE_UPDATE";
                    break;
                  case 312:
                    v16 = @"AVAILABLE_ROUTE_UPDATE";
                    break;
                  case 313:
                    v16 = @"PAUSE_NAV";
                    break;
                  case 314:
                    v16 = @"RESUME_NAV";
                    break;
                  case 315:
                    v16 = @"SET_DISPLAYED_STEP";
                    break;
                  default:
                    if (type2 != 206)
                    {
                      goto LABEL_168;
                    }

                    v16 = @"APPLY_LOCATION_AUTHORIZATION";
                    break;
                }
              }

              goto LABEL_208;
            }

            if (type2 > 599)
            {
              if (type2 > 1499)
              {
                if (type2 == 1500)
                {
                  v16 = @"DEBUG_FETCH_CONFIGURATION_INFO";
                  goto LABEL_208;
                }

                if (type2 == 1501)
                {
                  v16 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
                  goto LABEL_208;
                }
              }

              else
              {
                if (type2 == 600)
                {
                  v16 = @"FETCH_ROUTE_GENIUS";
                  goto LABEL_208;
                }

                if (type2 == 1000)
                {
                  v16 = @"PING";
                  goto LABEL_208;
                }
              }

              goto LABEL_168;
            }

            if (type2 > 500)
            {
              if (type2 == 501)
              {
                v16 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
                goto LABEL_208;
              }

              if (type2 == 502)
              {
                v16 = @"SERVICE_REQUEST";
                goto LABEL_208;
              }

              goto LABEL_168;
            }

            if (type2 == 401)
            {
              v16 = @"OPEN_URL";
              goto LABEL_208;
            }

            if (type2 != 500)
            {
              goto LABEL_168;
            }

            v16 = @"PLACE_DATA_MUID_LOOKUP";
          }

          else
          {
            if (type2 <= 99)
            {
              if (type2 > 3)
              {
                switch(type2)
                {
                  case '2':
                    v16 = @"START_INITIAL_SYNC";
                    break;
                  case '3':
                    v16 = @"FETCH_CURRENT_COUNTRY_CODE";
                    break;
                  case '4':
                    v16 = @"FETCH_EXPERIMENTS_CONFIG";
                    break;
                  case '5':
                    v16 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                    break;
                  case '6':
                    v16 = @"SYNC_UP_NEXT_ITEMS";
                    break;
                  case '7':
                    v16 = @"REQUEST_UP_NEXT_ITEMS";
                    break;
                  case '8':
                    v16 = @"SYNC_CONFIG_STORE";
                    break;
                  case '9':
                    v16 = @"CHECKIN_WITH_CONFIG_STORE";
                    break;
                  case ':':
                    v16 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                    break;
                  case ';':
                    v16 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                    break;
                  case '<':
                    v16 = @"SYNC_SUBSCRIPTION_INFO";
                    break;
                  case '=':
                    v16 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                    break;
                  case '>':
                    goto LABEL_168;
                  case '?':
                    v16 = @"UPDATE_SUBSCRIPTION_STATE";
                    break;
                  case '@':
                    v16 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                    break;
                  case 'A':
                    v16 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                    break;
                  case 'B':
                    v16 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                    break;
                  case 'C':
                    v16 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                    break;
                  default:
                    if (type2 != 4)
                    {
                      goto LABEL_168;
                    }

                    v16 = @"FETCHED_TILE";
                    break;
                }

                goto LABEL_208;
              }

              switch(type2)
              {
                case 1:
                  v16 = @"FETCH_TILES";
                  goto LABEL_208;
                case 2:
                  v16 = @"CANCEL_TILES";
                  goto LABEL_208;
                case 3:
                  v16 = @"REPORT_CORRUPT_TILE";
                  goto LABEL_208;
              }

LABEL_168:
              v16 = [NSString stringWithFormat:@"(unknown: %i)", type2];
              goto LABEL_208;
            }

            if (type2 <= 102)
            {
              if (type2 == 100)
              {
                v16 = @"CHECKIN_WITH_TILE_GROUP";
              }

              else if (type2 == 101)
              {
                v16 = @"FORCE_UPDATE_MANIFEST";
              }

              else
              {
                v16 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
              }

              goto LABEL_208;
            }

            if (type2 > 200)
            {
              if (type2 == 201)
              {
                v16 = @"STOP_LOCATION_UPDATE";
              }

              else
              {
                v16 = @"UPDATED_LOCATION";
              }

              goto LABEL_208;
            }

            if (type2 == 103)
            {
              v16 = @"FETCH_RESOURCE";
              goto LABEL_208;
            }

            if (type2 != 200)
            {
              goto LABEL_168;
            }

            v16 = @"START_LOCATION_UPDATE";
          }

LABEL_208:
          simpleDescription = [companionRouteContext2 simpleDescription];
          simpleDescription2 = [v12 simpleDescription];
          *buf = 138412802;
          v55 = v16;
          v56 = 2112;
          v57 = simpleDescription;
          v58 = 2112;
          v59 = simpleDescription2;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring %@ message; incoming route context is old (current:%@, incoming:%@)", buf, 0x20u);

          goto LABEL_209;
        }
      }

      goto LABEL_309;
    }

    if (!companionRouteContext2)
    {
      goto LABEL_310;
    }

    origin = [companionRouteContext2 origin];
    v32 = origin;
    v12 = sub_100053324(origin);
    v33 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v32 == 2)
    {
      if (!v33)
      {
LABEL_306:

        goto LABEL_314;
      }

      simpleDescription3 = [companionRouteContext2 simpleDescription];
      type3 = [messageCopy type];
      if (type3 > 202)
      {
        if (type3 <= 400)
        {
          if (type3 <= 205)
          {
            if (type3 == 203)
            {
              v36 = @"FAILED_TO_UPDATE_LOCATION";
            }

            else if (type3 == 204)
            {
              v36 = @"DID_PAUSE_LOCATION_UPDATES";
            }

            else
            {
              v36 = @"DID_RESUME_LOCATION_UPDATES";
            }
          }

          else
          {
            switch(type3)
            {
              case 300:
                v36 = @"UPDATE_NAV_ROUTE_DETAILS";
                break;
              case 301:
                v36 = @"UPDATE_NAV_ROUTE_STATUS";
                break;
              case 302:
                v36 = @"START_NAV";
                break;
              case 303:
                v36 = @"STOP_NAV";
                break;
              case 304:
                v36 = @"PREVIEW_NAV";
                break;
              case 305:
                v36 = @"CLEAR_NAV_PREVIEW";
                break;
              case 306:
                v36 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                break;
              case 307:
                v36 = @"DISMISS_NAV_SAFETY_ALERT";
                break;
              case 308:
                v36 = @"AVAILABLE_ROUTE";
                break;
              case 309:
                v36 = @"SELECTED_ROUTE";
                break;
              case 310:
                v36 = @"REQUEST_NAVIGATION_UPDATE";
                break;
              case 311:
                v36 = @"UPDATE_NAV_ROUTE_UPDATE";
                break;
              case 312:
                v36 = @"AVAILABLE_ROUTE_UPDATE";
                break;
              case 313:
                v36 = @"PAUSE_NAV";
                break;
              case 314:
                v36 = @"RESUME_NAV";
                break;
              case 315:
                v36 = @"SET_DISPLAYED_STEP";
                break;
              default:
                if (type3 != 206)
                {
                  goto LABEL_224;
                }

                v36 = @"APPLY_LOCATION_AUTHORIZATION";
                break;
            }
          }

          goto LABEL_305;
        }

        if (type3 > 599)
        {
          if (type3 > 1499)
          {
            if (type3 == 1500)
            {
              v36 = @"DEBUG_FETCH_CONFIGURATION_INFO";
              goto LABEL_305;
            }

            if (type3 == 1501)
            {
              v36 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
              goto LABEL_305;
            }
          }

          else
          {
            if (type3 == 600)
            {
              v36 = @"FETCH_ROUTE_GENIUS";
              goto LABEL_305;
            }

            if (type3 == 1000)
            {
              v36 = @"PING";
              goto LABEL_305;
            }
          }

          goto LABEL_224;
        }

        if (type3 > 500)
        {
          if (type3 == 501)
          {
            v36 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
            goto LABEL_305;
          }

          if (type3 == 502)
          {
            v36 = @"SERVICE_REQUEST";
            goto LABEL_305;
          }

          goto LABEL_224;
        }

        if (type3 == 401)
        {
          v36 = @"OPEN_URL";
          goto LABEL_305;
        }

        if (type3 != 500)
        {
          goto LABEL_224;
        }

        v36 = @"PLACE_DATA_MUID_LOOKUP";
      }

      else
      {
        if (type3 <= 99)
        {
          if (type3 > 3)
          {
            switch(type3)
            {
              case '2':
                v36 = @"START_INITIAL_SYNC";
                break;
              case '3':
                v36 = @"FETCH_CURRENT_COUNTRY_CODE";
                break;
              case '4':
                v36 = @"FETCH_EXPERIMENTS_CONFIG";
                break;
              case '5':
                v36 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                break;
              case '6':
                v36 = @"SYNC_UP_NEXT_ITEMS";
                break;
              case '7':
                v36 = @"REQUEST_UP_NEXT_ITEMS";
                break;
              case '8':
                v36 = @"SYNC_CONFIG_STORE";
                break;
              case '9':
                v36 = @"CHECKIN_WITH_CONFIG_STORE";
                break;
              case ':':
                v36 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                break;
              case ';':
                v36 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                break;
              case '<':
                v36 = @"SYNC_SUBSCRIPTION_INFO";
                break;
              case '=':
                v36 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                break;
              case '>':
                goto LABEL_224;
              case '?':
                v36 = @"UPDATE_SUBSCRIPTION_STATE";
                break;
              case '@':
                v36 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                break;
              case 'A':
                v36 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'B':
                v36 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'C':
                v36 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                break;
              default:
                if (type3 != 4)
                {
                  goto LABEL_224;
                }

                v36 = @"FETCHED_TILE";
                break;
            }

            goto LABEL_305;
          }

          switch(type3)
          {
            case 1:
              v36 = @"FETCH_TILES";
              goto LABEL_305;
            case 2:
              v36 = @"CANCEL_TILES";
              goto LABEL_305;
            case 3:
              v36 = @"REPORT_CORRUPT_TILE";
              goto LABEL_305;
          }

LABEL_224:
          v36 = [NSString stringWithFormat:@"(unknown: %i)", type3];
          goto LABEL_305;
        }

        if (type3 <= 102)
        {
          if (type3 == 100)
          {
            v36 = @"CHECKIN_WITH_TILE_GROUP";
          }

          else if (type3 == 101)
          {
            v36 = @"FORCE_UPDATE_MANIFEST";
          }

          else
          {
            v36 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
          }

          goto LABEL_305;
        }

        if (type3 > 200)
        {
          if (type3 == 201)
          {
            v36 = @"STOP_LOCATION_UPDATE";
          }

          else
          {
            v36 = @"UPDATED_LOCATION";
          }

          goto LABEL_305;
        }

        if (type3 == 103)
        {
          v36 = @"FETCH_RESOURCE";
          goto LABEL_305;
        }

        if (type3 != 200)
        {
          goto LABEL_224;
        }

        v36 = @"START_LOCATION_UPDATE";
      }

LABEL_305:
      *buf = 138412546;
      v55 = simpleDescription3;
      v56 = 2112;
      v57 = v36;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Was told to clear nav preview without a context and our current context is from companion (%@); dropping (%@) message", buf, 0x16u);

      goto LABEL_306;
    }

    if (!v33)
    {
LABEL_309:

LABEL_310:
      snapshot = self->_snapshot;
      self->_snapshot = 0;

      v43 = self->_routePlanningSession;
      self->_routePlanningSession = 0;

      if (v6)
      {
        request3 = [(NMReply *)v6 request];
        companionRouteContext3 = [request3 companionRouteContext];
        lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
        self->_lastInvalidatedCompanionRouteContext = companionRouteContext3;

        v48 = sub_100053324(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          simpleDescription4 = [(GEOCompanionRouteContext *)self->_lastInvalidatedCompanionRouteContext simpleDescription];
          *buf = 138412290;
          v55 = simpleDescription4;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Will clear route planning locally and notify Maps (context: %@)", buf, 0xCu);
        }

        [(NMReply *)v6 unregisterObserver:self];
        [(NMReply *)v6 invalidate];
        [(NMCRoutePlanningController *)self _notifyMapsRoutePlanningSessionDidInvalidate:v6];
      }

      goto LABEL_314;
    }

    simpleDescription5 = [companionRouteContext2 simpleDescription];
    type4 = [messageCopy type];
    if (type4 > 202)
    {
      if (type4 <= 400)
      {
        if (type4 <= 205)
        {
          if (type4 == 203)
          {
            v39 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type4 == 204)
          {
            v39 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v39 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type4)
          {
            case 300:
              v39 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v39 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v39 = @"START_NAV";
              break;
            case 303:
              v39 = @"STOP_NAV";
              break;
            case 304:
              v39 = @"PREVIEW_NAV";
              break;
            case 305:
              v39 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v39 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v39 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v39 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v39 = @"SELECTED_ROUTE";
              break;
            case 310:
              v39 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v39 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v39 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v39 = @"PAUSE_NAV";
              break;
            case 314:
              v39 = @"RESUME_NAV";
              break;
            case 315:
              v39 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type4 != 206)
              {
                goto LABEL_227;
              }

              v39 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_308;
      }

      if (type4 > 599)
      {
        if (type4 > 1499)
        {
          if (type4 == 1500)
          {
            v39 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_308;
          }

          if (type4 == 1501)
          {
            v39 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_308;
          }
        }

        else
        {
          if (type4 == 600)
          {
            v39 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_308;
          }

          if (type4 == 1000)
          {
            v39 = @"PING";
            goto LABEL_308;
          }
        }

        goto LABEL_227;
      }

      if (type4 > 500)
      {
        if (type4 == 501)
        {
          v39 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_308;
        }

        if (type4 == 502)
        {
          v39 = @"SERVICE_REQUEST";
          goto LABEL_308;
        }

        goto LABEL_227;
      }

      if (type4 == 401)
      {
        v39 = @"OPEN_URL";
        goto LABEL_308;
      }

      if (type4 != 500)
      {
        goto LABEL_227;
      }

      v39 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type4 <= 99)
      {
        if (type4 > 3)
        {
          switch(type4)
          {
            case '2':
              v39 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v39 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v39 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v39 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v39 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v39 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v39 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v39 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v39 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v39 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v39 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v39 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_227;
            case '?':
              v39 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v39 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v39 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v39 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v39 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type4 != 4)
              {
                goto LABEL_227;
              }

              v39 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_308;
        }

        switch(type4)
        {
          case 1:
            v39 = @"FETCH_TILES";
            goto LABEL_308;
          case 2:
            v39 = @"CANCEL_TILES";
            goto LABEL_308;
          case 3:
            v39 = @"REPORT_CORRUPT_TILE";
            goto LABEL_308;
        }

LABEL_227:
        v39 = [NSString stringWithFormat:@"(unknown: %i)", type4];
        goto LABEL_308;
      }

      if (type4 <= 102)
      {
        if (type4 == 100)
        {
          v39 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type4 == 101)
        {
          v39 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v39 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_308;
      }

      if (type4 > 200)
      {
        if (type4 == 201)
        {
          v39 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v39 = @"UPDATED_LOCATION";
        }

        goto LABEL_308;
      }

      if (type4 == 103)
      {
        v39 = @"FETCH_RESOURCE";
        goto LABEL_308;
      }

      if (type4 != 200)
      {
        goto LABEL_227;
      }

      v39 = @"START_LOCATION_UPDATE";
    }

LABEL_308:
    *buf = 138412546;
    v55 = simpleDescription5;
    v56 = 2112;
    v57 = v39;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Was told to clear nav preview without a context but our current context is from gizmo (%@); allowing (%@) message to be sent to Maps", buf, 0x16u);

    goto LABEL_309;
  }

LABEL_317:
}

- (void)_handlePreviewNavMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = [messageCopy argumentForTag:417];
  dataListValues = [v5 dataListValues];

  lastObject = [dataListValues lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    dataValue = lastObject;
  }

  else
  {
    v10 = [messageCopy argumentForTag:405];
    dataValue = [v10 dataValue];
  }

  firstObject = [dataListValues firstObject];
  if (firstObject)
  {
    dataValue2 = firstObject;
    v13 = dataValue == 0;
    goto LABEL_6;
  }

  v16 = [messageCopy argumentForTag:404];
  dataValue2 = [v16 dataValue];

  v13 = dataValue == 0;
  if (dataValue2 | dataValue)
  {
    if (!dataValue2)
    {
      v14 = 0;
      v15 = 0;
      if (!dataValue)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_6:
    v14 = [[GEOMapItemStorage alloc] initWithData:dataValue2];
    if (v13)
    {
      v15 = 0;
LABEL_13:
      v80 = v15;
      if (![dataListValues count] && !v14 && !v15)
      {
        v83 = NSLocalizedDescriptionKey;
        v84 = NSLocalizedFailureReasonErrorKey;
        *buf = @"The destination was invalid";
        *&buf[8] = @"The destination was invalid";
        v20 = [NSDictionary dictionaryWithObjects:buf forKeys:&v83 count:2];
        v19 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:4 userInfo:v20];

        v21 = objc_alloc_init(NMReply);
        v22 = [[NMArgument alloc] _nm_initWithErrorValue:v19 tag:3];
        [(NMReply *)v21 addArgument:v22];
        v23 = +[NMCGizmoConnection sharedInstance];
        [v23 sendReply:v21 forMessage:messageCopy options:0];
LABEL_70:

        v18 = v80;
        goto LABEL_71;
      }

      if ([dataListValues count])
      {
        v78 = sub_1000282B8(dataListValues, &stru_100085EC8);
      }

      else
      {
        if (v14)
        {
          [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v14];
        }

        else
        {
          [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
        }
        v24 = ;
        if (v15)
        {
          [NanoDirectionWaypoint directionWaypointWithGEOMapItem:v15];
        }

        else
        {
          [NanoDirectionWaypoint directionWaypointForCurrentLocation:0];
        }
        v25 = ;
        v82[0] = v24;
        v82[1] = v25;
        v78 = [NSArray arrayWithObjects:v82 count:2];
      }

      v26 = [messageCopy argumentForTag:406];
      dataValue3 = [v26 dataValue];

      v28 = [(NMReply *)dataValue3 length];
      v71 = dataValue3;
      if (v28)
      {
        v28 = [[GEOCompanionRouteContext alloc] initWithData:dataValue3];
      }

      v77 = v28;
      v29 = [messageCopy argumentForTag:407];
      v74 = v29;
      if (v29)
      {
        [v29 doubleValue];
        v79 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v79 = 0;
      }

      v30 = [messageCopy argumentForTag:408];
      v73 = v30;
      if (v30)
      {
        [v30 doubleValue];
        v72 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v72 = 0;
      }

      v31 = [messageCopy argumentForTag:413];
      dataValue4 = [v31 dataValue];

      if (dataValue4)
      {
        v69 = [[GEOAutomobileOptions alloc] initWithData:dataValue4];
      }

      else
      {
        v69 = 0;
      }

      v33 = [messageCopy argumentForTag:414];
      dataValue5 = [v33 dataValue];

      v68 = dataValue5;
      if (dataValue5)
      {
        v67 = [[GEOTransitOptions alloc] initWithData:dataValue5];
      }

      else
      {
        v67 = 0;
      }

      v35 = [messageCopy argumentForTag:415];
      dataValue6 = [v35 dataValue];

      if (dataValue6)
      {
        v66 = [[GEOWalkingOptions alloc] initWithData:dataValue6];
      }

      else
      {
        v66 = 0;
      }

      v37 = [messageCopy argumentForTag:416];
      dataValue7 = [v37 dataValue];

      v70 = dataValue4;
      if (dataValue7)
      {
        v65 = [[GEOCyclingOptions alloc] initWithData:dataValue7];
      }

      else
      {
        v65 = 0;
      }

      v39 = [[NMCRPCGizmoPreviewState alloc] initWithMessage:messageCopy];
      gizmoPreviewState = self->_gizmoPreviewState;
      self->_gizmoPreviewState = v39;

      v41 = [messageCopy argumentForTag:400];
      intValue = [v41 intValue];

      v76 = dataValue;
      if (intValue <= 3)
      {
        if (intValue == 2)
        {
          v44 = 2;
          goto LABEL_56;
        }
      }

      else
      {
        switch(intValue)
        {
          case 4:
            v44 = 1;
            goto LABEL_56;
          case 8:
            v44 = 3;
            goto LABEL_56;
          case 0xFFFFFFFLL:
            v44 = 4;
LABEL_56:
            v75 = v14;
            v45 = sub_100053324(v43);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = *(&off_100085FF0 + v44);
              simpleDescription = [v77 simpleDescription];
              *buf = 138412546;
              *&buf[4] = v46;
              *&buf[12] = 2112;
              *&buf[14] = simpleDescription;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Will preview directions (transportType:%@, context:%@)", buf, 0x16u);
            }

            routePlanningSession = self->_routePlanningSession;
            if (routePlanningSession)
            {
              request = [(NanoRoutePlanningSession *)routePlanningSession request];
              companionRouteContext = [request companionRouteContext];

              v52 = sub_100053324(v51);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                simpleDescription2 = [companionRouteContext simpleDescription];
                *buf = 138412290;
                *&buf[4] = simpleDescription2;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Invalidating existing route planning session (context, %@)", buf, 0xCu);
              }

              lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
              self->_lastInvalidatedCompanionRouteContext = companionRouteContext;
              v55 = companionRouteContext;

              [(NanoRoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
              [(NanoRoutePlanningSession *)self->_routePlanningSession invalidate];
              snapshot = self->_snapshot;
              self->_snapshot = 0;

              v57 = self->_routePlanningSession;
              self->_routePlanningSession = 0;
            }

            v58 = +[GEOMapService sharedService];
            defaultTraits = [v58 defaultTraits];
            v22 = v77;
            v60 = [NanoRoutePlanningRequest requestWithWaypoints:v78 viaTransportType:v44 traits:defaultTraits companionRouteContext:v77];

            if (v79 || v72 || v69 || v67 || v66 || v65)
            {
              v61 = [v60 mutableCopy];
              [v61 setDepartureDate:v79];
              [v61 setArrivalDate:v72];
              [v61 setAutomobileOptions:v69];
              [v61 setTransitOptions:v67];
              [v61 setWalkingOptions:v66];
              [v61 setCyclingOptions:v65];
              v62 = [v61 copy];

              v22 = v77;
              v60 = v62;
            }

            v14 = v75;
            dataValue = v76;
            [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:3];
            v63 = objc_alloc_init(NanoRoutePlanningSession);
            v64 = self->_routePlanningSession;
            self->_routePlanningSession = v63;

            [(NanoRoutePlanningSession *)self->_routePlanningSession setShouldBroadcast:1];
            [(NanoRoutePlanningSession *)self->_routePlanningSession registerObserver:self];
            [(NanoRoutePlanningSession *)self->_routePlanningSession processRequest:v60];

            v19 = v78;
            v23 = v74;
            v21 = v71;
            goto LABEL_70;
        }
      }

      v44 = 0;
      goto LABEL_56;
    }

LABEL_12:
    v15 = [[GEOMapItemStorage alloc] initWithData:dataValue];
    goto LABEL_13;
  }

  v83 = NSLocalizedDescriptionKey;
  v84 = NSLocalizedFailureReasonErrorKey;
  *buf = @"No destination was provided";
  *&buf[8] = @"No destination was provided";
  v17 = [NSDictionary dictionaryWithObjects:buf forKeys:&v83 count:2];
  dataValue2 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:3 userInfo:v17];

  v14 = objc_alloc_init(NMReply);
  v18 = [[NMArgument alloc] _nm_initWithErrorValue:dataValue2 tag:3];
  [(NMReply *)v14 addArgument:v18];
  v19 = +[NMCGizmoConnection sharedInstance];
  [v19 sendReply:v14 forMessage:messageCopy options:0];
LABEL_71:
}

- (void)_notifyNanoMapsRoutePlanningSessionDidStartLoading:(id)loading
{
  loadingCopy = loading;
  dispatch_assert_queue_V2(self->_isolationQueue);
  request = [loadingCopy request];
  v6 = sub_100053324(request);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    *buf = 138412290;
    v16 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session did start (context:%@)", buf, 0xCu);
  }

  requestedCompanionRouteDetails = [request requestedCompanionRouteDetails];
  v10 = requestedCompanionRouteDetails;
  if (requestedCompanionRouteDetails)
  {
    v14 = requestedCompanionRouteDetails;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    request2 = [loadingCopy request];
    companionRouteContext2 = [request2 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendPreviewRoutes:v11 atIndexes:0 error:0 companionRouteContext:companionRouteContext2 includeSyntheticRoute:0];
  }
}

- (void)_notifyNanoMapsRoutePlanningSessionDidUpdateResponse:(id)response changedRouteIdentifiers:(id)identifiers
{
  responseCopy = response;
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = sub_100053324(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    request = [responseCopy request];
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    *buf = 138412290;
    v35 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did receive routes (context:%@)", buf, 0xCu);
  }

  gizmoPreviewState = self->_gizmoPreviewState;
  if (gizmoPreviewState)
  {
    message = [(NMCRPCGizmoPreviewState *)gizmoPreviewState message];
    hasShownNavModeAdvisory = [(NMCRPCGizmoPreviewState *)self->_gizmoPreviewState hasShownNavModeAdvisory];
    v16 = self->_gizmoPreviewState;
    self->_gizmoPreviewState = 0;

    response = [responseCopy response];
    lastError = [response lastError];
    v19 = [(NMCRoutePlanningController *)self _replyForMessage:message withSafetyWarning:hasShownNavModeAdvisory << 63 >> 63 error:lastError];

    v20 = +[NMCGizmoConnection sharedInstance];
    [v20 sendReply:v19 forMessage:message options:0];
  }

  response2 = [responseCopy response];
  companionRoutes = [response2 companionRoutes];

  if ([companionRoutes count])
  {
    if (identifiersCopy)
    {
      sub_1000282B8(identifiersCopy, &stru_100085F08);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10002339C;
      request2 = v32[3] = &unk_100085F30;
      v33 = request2;
      v24 = [companionRoutes indexesOfObjectsPassingTest:v32];
      v25 = [v24 count];
      v26 = [companionRoutes count];
      if (v25 == v26)
      {

        v24 = 0;
      }

      else
      {
        v27 = sub_100053324(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [v24 count];
          v29 = [companionRoutes count];
          *buf = 134218240;
          v35 = v28;
          v36 = 2048;
          v37 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Filtered %lu to %lu companion routes to send", buf, 0x16u);
        }

        if (![v24 count])
        {
          v31 = sub_100053324(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "No routes to send after filtering, bailing", buf, 2u);
          }

          companionRouteContext2 = v33;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    request2 = [responseCopy request];
    companionRouteContext2 = [request2 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendPreviewRoutes:companionRoutes atIndexes:v24 error:0 companionRouteContext:companionRouteContext2 includeSyntheticRoute:0];
LABEL_15:
  }
}

- (void)_notifyNanoMapsRoutePlanningSession:(id)session didReceiveRouteUpdatesForRoutes:(id)routes
{
  sessionCopy = session;
  routesCopy = routes;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [sessionCopy response];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000235C0;
  v17 = v16[3] = &unk_100085E88;
  v8 = v17;
  v9 = sub_1000282B8(routesCopy, v16);
  v10 = sub_100053324(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    request = [sessionCopy request];
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    *buf = 138412546;
    v19 = routesCopy;
    v20 = 2112;
    v21 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did receive updates for routes: %@ (context:%@)", buf, 0x16u);
  }

  request2 = [sessionCopy request];
  companionRouteContext2 = [request2 companionRouteContext];
  [(NMCRoutePlanningController *)self _sendRouteUpdates:v9 context:companionRouteContext2];
}

- (void)_notifyNanoMapsRoutePlanningSessionDidSelectRoute:(id)route
{
  routeCopy = route;
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = [routeCopy response];
  routes = [response routes];
  selectedRoute = [routeCopy selectedRoute];
  v8 = [routes indexOfObject:selectedRoute];

  v10 = sub_100053324(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    request = [routeCopy request];
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v22 = 134218242;
    v23 = v8;
    v24 = 2112;
    v25 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying NanoMaps: did select route (index:%lu, context:%@)", &v22, 0x16u);
  }

  v14 = +[NMCGizmoConnection sharedInstance];
  v15 = [v14 canSendMessageWithType:309];

  if (v15)
  {
    request2 = [routeCopy request];
    companionRouteContext2 = [request2 companionRouteContext];
    [(NMCRoutePlanningController *)self _sendSelectedPreviewRouteIndex:v8 context:companionRouteContext2];
  }

  else
  {
    response2 = [routeCopy response];
    companionRoutes = [response2 companionRoutes];
    request2 = [companionRoutes objectAtIndexedSubscript:v8];

    companionRouteContext2 = +[NMCNavigationProxy sharedInstance];
    request3 = [routeCopy request];
    companionRouteContext3 = [request3 companionRouteContext];
    [companionRouteContext2 _legacy_sendPreviewRouteDetails:request2 context:companionRouteContext3];
  }
}

- (void)_notifyNanoMapsRoutePlanningSessionDidFail:(id)fail
{
  failCopy = fail;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = sub_100053324(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    response = [failCopy response];
    lastError = [response lastError];
    request = [failCopy request];
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v23 = 138412546;
    v24 = lastError;
    v25 = 2112;
    v26 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session failed with error: %@ (context:%@)", &v23, 0x16u);
  }

  gizmoPreviewState = self->_gizmoPreviewState;
  if (gizmoPreviewState)
  {
    message = [(NMCRPCGizmoPreviewState *)gizmoPreviewState message];
    v14 = self->_gizmoPreviewState;
    self->_gizmoPreviewState = 0;

    response2 = [failCopy response];
    lastError2 = [response2 lastError];
    v17 = [(NMCRoutePlanningController *)self _replyForMessage:message withSafetyWarning:-1 error:lastError2];

    v18 = +[NMCGizmoConnection sharedInstance];
    [v18 sendReply:v17 forMessage:message options:0];
  }

  response3 = [failCopy response];
  lastError3 = [response3 lastError];
  request2 = [failCopy request];
  companionRouteContext2 = [request2 companionRouteContext];
  [(NMCRoutePlanningController *)self _sendPreviewRoutes:0 atIndexes:0 error:lastError3 companionRouteContext:companionRouteContext2 includeSyntheticRoute:0];
}

- (void)_notifyNanoMapsRoutePlanningSessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v6 = sub_100053324(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    request = [invalidateCopy request];
    companionRouteContext = [request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v13 = 138412290;
    v14 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Notifying NanoMaps: session invalidated (context:%@)", &v13, 0xCu);
  }

  request2 = [invalidateCopy request];
  companionRouteContext2 = [request2 companionRouteContext];
  data = [companionRouteContext2 data];
  [(NMCRoutePlanningController *)self _sendClearPreviewWithContext:data];
}

- (void)_sendPreviewRoutes:(id)routes atIndexes:(id)indexes error:(id)error companionRouteContext:(id)context includeSyntheticRoute:(BOOL)route
{
  routeCopy = route;
  routesCopy = routes;
  indexesCopy = indexes;
  errorCopy = error;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v16 = +[NMCGizmoConnection sharedInstance];
  v17 = [v16 canSendMessageWithType:308];

  if ((v17 & 1) == 0)
  {
    v22 = +[NMCNavigationProxy sharedInstance];
    firstObject = [routesCopy firstObject];
    [v22 _legacy_sendPreviewRouteDetails:firstObject context:contextCopy];

    goto LABEL_26;
  }

  v18 = +[NMCGizmoConnection sharedInstance];
  firstObject2 = [routesCopy firstObject];
  v20 = [v18 supportsTransportType:{objc_msgSend(firstObject2, "transportType")}];

  if (v20)
  {
    if (!contextCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v24 = sub_100053324(v21);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Gizmo does not support transport type of first route, sending error instead", buf, 2u);
  }

  v63[0] = NSLocalizedDescriptionKey;
  v63[1] = NSLocalizedFailureReasonErrorKey;
  *buf = @"Transport type not supported";
  *&buf[8] = @"Transport type not supported";
  v25 = [NSDictionary dictionaryWithObjects:buf forKeys:v63 count:2];
  v26 = [NSError errorWithDomain:@"com.apple.nanomapscd" code:7 userInfo:v25];

  errorCopy = v26;
  if (contextCopy)
  {
LABEL_9:
    v27 = +[NMCGizmoConnection sharedInstance];
    v61 = @"NMSendMessageOptionTimeout";
    v62 = &off_10008C768;
    v28 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    data = [contextCopy data];
    [v27 cancelAllMessagesOfType:308];
    v30 = [v27 cancelAllMessagesOfType:312];
    if (errorCopy)
    {
      v31 = sub_100053324(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Will send no-routes+error to gizmo", buf, 2u);
      }

      v32 = [(NMCRoutePlanningController *)self _messageForNoRoutesWithError:errorCopy routeContextData:data];
      [v27 sendMessage:v32 options:v28];
    }

    else
    {
      v33 = [routesCopy count];
      v34 = v33;
      if (routeCopy)
      {
        v49 = v33;
        v50 = data;
        v51 = v28;
        firstObject3 = [routesCopy firstObject];
        v36 = sub_100053324(firstObject3);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          composedOrigin = [firstObject3 composedOrigin];
          composedDestination = [firstObject3 composedDestination];
          *buf = 138412802;
          *&buf[4] = firstObject3;
          *&buf[12] = 2112;
          *&buf[14] = composedOrigin;
          v59 = 2112;
          v60 = composedDestination;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Will send synthetic route ahead of full routes: %@, origin: %@, destination: %@", buf, 0x20u);
        }

        [firstObject3 waypoints];
        v39 = firstObject3;
        v40 = v48 = firstObject3;
        transportType = [v39 transportType];
        destinationName = [v39 destinationName];
        v43 = [GEOCompanionRouteDetails syntheticRouteDetailsWithWaypoints:v40 transportType:transportType destinationName:destinationName];

        data2 = [v43 data];
        v45 = -[NMCRoutePlanningController _messageForRouteDetailsData:index:count:routeContextData:](self, "_messageForRouteDetailsData:index:count:routeContextData:", data2, 0, [routesCopy count], v50);

        [v45 setPriority:300];
        v28 = v51;
        [v27 sendMessage:v45 options:v51];

        data = v50;
        v34 = v49;
      }

      v46 = sub_100053324(v33);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);
      if (indexesCopy)
      {
        if (v47)
        {
          *buf = 138412546;
          *&buf[4] = indexesCopy;
          *&buf[12] = 2048;
          *&buf[14] = v34;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Will send routes %@ to gizmo (out of all %lu)", buf, 0x16u);
        }
      }

      else
      {
        if (v47)
        {
          *buf = 134217984;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Will send %lu routes to gizmo", buf, 0xCu);
        }

        indexesCopy = [NSIndexSet indexSetWithIndexesInRange:0, v34];
      }

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000241C8;
      v52[3] = &unk_100085F58;
      v52[4] = self;
      v57 = v34;
      v53 = data;
      indexesCopy = indexesCopy;
      v54 = indexesCopy;
      v55 = v27;
      v56 = v28;
      [routesCopy enumerateObjectsAtIndexes:indexesCopy options:0 usingBlock:v52];
    }
  }

LABEL_26:
}

- (void)_sendSelectedPreviewRouteIndex:(unint64_t)index context:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (index != 0x7FFFFFFFFFFFFFFFLL && contextCopy)
  {
    v7 = objc_alloc_init(NMMessage);
    [(NMMessage *)v7 setType:309];
    v8 = objc_alloc_init(NMArgument);
    [(NMArgument *)v8 setIntValue:index];
    [(NMArgument *)v8 setTag:409];
    [(NMMessage *)v7 addArgument:v8];
    v9 = objc_alloc_init(NMArgument);
    data = [contextCopy data];
    [(NMArgument *)v9 setDataValue:data];

    [(NMArgument *)v9 setTag:406];
    [(NMMessage *)v7 addArgument:v9];
    v11 = +[NMCGizmoConnection sharedInstance];
    v13 = @"NMSendMessageOptionTimeout";
    v14 = &off_10008C768;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v11 sendMessage:v7 options:v12];
  }
}

- (void)_sendRouteUpdates:(id)updates context:(id)context
{
  updatesCopy = updates;
  contextCopy = context;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = updatesCopy;
  v7 = [updatesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [[GEOCompanionRouteUpdate alloc] initWithTransitRouteUpdate:*(*(&v19 + 1) + 8 * v10)];
        v12 = objc_alloc_init(NMMessage);
        [(NMMessage *)v12 setType:312];
        v13 = objc_alloc_init(NMArgument);
        [(NMArgument *)v13 setTag:412];
        data = [v11 data];
        [(NMArgument *)v13 setDataValue:data];

        [(NMMessage *)v12 addArgument:v13];
        v15 = objc_alloc_init(NMArgument);
        [(NMArgument *)v15 setTag:406];
        data2 = [contextCopy data];
        [(NMArgument *)v15 setDataValue:data2];

        [(NMMessage *)v12 addArgument:v15];
        v17 = +[NMCGizmoConnection sharedInstance];
        [v17 sendMessage:v12 options:0];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)_sendClearPreviewWithContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (contextCopy)
  {
    v5 = objc_alloc_init(NMMessage);
    [(NMMessage *)v5 setType:305];
    v6 = objc_alloc_init(NMArgument);
    [(NMArgument *)v6 setDataValue:contextCopy];
    [(NMArgument *)v6 setTag:406];
    [(NMMessage *)v5 addArgument:v6];
    v7 = +[NMCGizmoConnection sharedInstance];
    v9 = @"NMSendMessageOptionTimeout";
    v10 = &off_10008C768;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendMessage:v5 options:v8];
  }
}

- (id)_messageForRouteDetailsData:(id)data index:(unint64_t)index count:(unint64_t)count routeContextData:(id)contextData
{
  contextDataCopy = contextData;
  dataCopy = data;
  v11 = objc_alloc_init(NMMessage);
  [(NMMessage *)v11 setType:308];
  v12 = objc_alloc_init(NMArgument);
  [(NMArgument *)v12 setDataValue:dataCopy];

  [(NMArgument *)v12 setTag:401];
  [(NMMessage *)v11 addArgument:v12 withCompressionType:1];
  v13 = objc_alloc_init(NMArgument);
  [(NMArgument *)v13 setIntValue:index];
  [(NMArgument *)v13 setTag:409];
  [(NMMessage *)v11 addArgument:v13];
  v14 = objc_alloc_init(NMArgument);
  [(NMArgument *)v14 setIntValue:count];
  [(NMArgument *)v14 setTag:410];
  [(NMMessage *)v11 addArgument:v14];
  v15 = objc_alloc_init(NMArgument);
  [(NMArgument *)v15 setDataValue:contextDataCopy];

  [(NMArgument *)v15 setTag:406];
  [(NMMessage *)v11 addArgument:v15];

  return v11;
}

- (id)_messageForNoRoutesWithError:(id)error routeContextData:(id)data
{
  dataCopy = data;
  errorCopy = error;
  v7 = objc_alloc_init(NMMessage);
  [(NMMessage *)v7 setType:308];
  v8 = objc_alloc_init(NMArgument);
  [(NMArgument *)v8 setTag:409];
  [(NMMessage *)v7 addArgument:v8];
  v9 = [[NMArgument alloc] _nm_initWithErrorValue:errorCopy tag:3];

  [(NMMessage *)v7 addArgument:v9];
  v10 = objc_alloc_init(NMArgument);
  [(NMArgument *)v10 setDataValue:dataCopy];

  [(NMArgument *)v10 setTag:406];
  [(NMMessage *)v7 addArgument:v10];

  return v7;
}

- (id)_replyForMessage:(id)message withSafetyWarning:(int64_t)warning error:(id)error
{
  errorCopy = error;
  if (message)
  {
    messageCopy = message;
    message = objc_alloc_init(NMReply);
    if (errorCopy)
    {
      v9 = [[NMArgument alloc] _nm_initWithErrorValue:errorCopy tag:3];
    }

    else
    {
      v10 = objc_alloc_init(NMArgument);
      v9 = v10;
      if (warning == -1)
      {
        [(NMArgument *)v10 setTag:1];
      }

      else
      {
        [(NMArgument *)v10 setTag:403];
        [(NMArgument *)v9 setIntValue:warning];
      }
    }

    [message addArgument:v9];

    v11 = +[NMCGizmoConnection sharedInstance];
    [v11 sendReply:message forMessage:messageCopy options:0];
  }

  return message;
}

- (void)_registerXPCRoutes
{
  v3 = +[NSMutableSet set];
  connections = self->_connections;
  self->_connections = v3;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.Maps.NMCRoutePlanningController.XPC", v5);
  isolationQueue = self->_isolationQueue;
  self->_isolationQueue = v6;

  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanomaps.xpc.Routes"];
  listener = self->_listener;
  self->_listener = v8;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener _setQueue:self->_isolationQueue];
  v10 = self->_listener;

  [(NSXPCListener *)v10 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
  [connectionCopy setExportedInterface:v8];

  [connectionCopy setExportedObject:self];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoCompanionXPCRouting];
  [connectionCopy setRemoteObjectInterface:v9];

  [connectionCopy _setQueue:self->_isolationQueue];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100024E50;
  v17[3] = &unk_100085720;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  [connectionCopy setInvalidationHandler:v17];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100024EBC;
  v14 = &unk_100085720;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [connectionCopy setInterruptionHandler:&v11];
  [(NSMutableSet *)self->_connections addObject:connectionCopy, v11, v12, v13, v14];
  [connectionCopy resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)_forgetConnection:(id)connection reason:(id)reason
{
  connectionCopy = connection;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (connectionCopy)
  {
    v8 = sub_100053324([(NSMutableSet *)self->_connections removeObject:connectionCopy]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSMutableSet *)self->_connections count];
      v10 = 138412802;
      v11 = reasonCopy;
      v12 = 2048;
      v13 = v9;
      v14 = 2112;
      v15 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ XPC connection (%lu remaining peers) %@", &v10, 0x20u);
    }
  }
}

- (void)_enumerateMapsConnectionsUnderAssertionNamed:(id)named usingBlock:(id)block
{
  isolationQueue = self->_isolationQueue;
  blockCopy = block;
  namedCopy = named;
  dispatch_assert_queue_V2(isolationQueue);
  allObjects = [(NSMutableSet *)self->_connections allObjects];
  sub_100013B60(allObjects, namedCopy, blockCopy);
}

- (void)checkinForRoutePlanning
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_100053324(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "checkinForRoutePlanning on connection %@", &v5, 0xCu);
  }

  [(NMCRoutePlanningController *)self _checkinForRoutePlanningWithConnection:v3];
}

- (void)anticipateRoutePlanningRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  isolationQueue = self->_isolationQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(isolationQueue);
  v10 = sub_100053324(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    companionRouteContext = [requestCopy companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v13 = 138412290;
    v14 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Anticipate request with context: %@", &v13, 0xCu);
  }

  [(NMCRoutePlanningController *)self _updateRoutePlanningRequest:requestCopy withResponse:0 completionHandler:handlerCopy];
}

- (void)updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  isolationQueue = self->_isolationQueue;
  handlerCopy = handler;
  responseCopy = response;
  dispatch_assert_queue_V2(isolationQueue);
  v13 = sub_100053324(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    companionRouteContext = [requestCopy companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v16 = 138412290;
    v17 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "updateRoutePlanningRequest:, Update request/response with context: %@", &v16, 0xCu);
  }

  [(NMCRoutePlanningController *)self _updateRoutePlanningRequest:requestCopy withResponse:responseCopy completionHandler:handlerCopy];
}

- (void)_updateRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  companionRouteContext = [requestCopy companionRouteContext];
  v12 = self->_routePlanningSession;
  request = [(NanoRoutePlanningSession *)v12 request];
  companionRouteContext2 = [request companionRouteContext];
  lastInvalidatedCompanionRouteContext = companionRouteContext2;
  if (!companionRouteContext2)
  {
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
  }

  v16 = lastInvalidatedCompanionRouteContext;

  v17 = [companionRouteContext isStaleComparedToContext:v16];
  if (v17)
  {
    v18 = sub_100053324(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [(GEOCompanionRouteContext *)v16 simpleDescription];
      simpleDescription2 = [companionRouteContext simpleDescription];
      *buf = 138412546;
      v29 = simpleDescription;
      v30 = 2112;
      v31 = simpleDescription2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "updatePreviewRoutes: incoming route context is old (current:%@, incoming:%@)", buf, 0x16u);
    }
  }

  else
  {
    v27 = responseCopy;
    if (!v16 || (v17 = [(GEOCompanionRouteContext *)v16 isStaleComparedToContext:companionRouteContext], v17))
    {
      v21 = sub_100053324(v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        simpleDescription3 = [(GEOCompanionRouteContext *)v16 simpleDescription];
        simpleDescription4 = [companionRouteContext simpleDescription];
        *buf = 138412546;
        v29 = simpleDescription3;
        v30 = 2112;
        v31 = simpleDescription4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "updatePreviewRoutes: incoming context is newer, create new session (current:%@, incoming:%@)", buf, 0x16u);
      }

      objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
      [(NanoRoutePlanningSession *)v12 unregisterObserver:self];
      [(NanoRoutePlanningSession *)v12 invalidate];
      v24 = objc_alloc_init(NanoRoutePlanningSession);
      [(NanoRoutePlanningSession *)v24 setShouldBroadcast:1];
      [(NanoRoutePlanningSession *)v24 setNextClass:objc_opt_class() forSessionState:3];
      [(NanoRoutePlanningSession *)v24 setNextClass:objc_opt_class() forSessionState:4];
      [(NanoRoutePlanningSession *)v24 registerObserver:self];
      routePlanningSession = self->_routePlanningSession;
      self->_routePlanningSession = v24;
    }

    v26 = self->_routePlanningSession;

    [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:1];
    [(NanoRoutePlanningSession *)v26 updateWithRequest:requestCopy response:v27];
    v12 = v26;
    responseCopy = v27;
  }

  handlerCopy[2](handlerCopy);
}

- (void)failRoutePlanningRequest:(id)request withResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_currentSessionInputOrigin == 1)
  {
    companionRouteContext = [requestCopy companionRouteContext];
    v12 = self->_routePlanningSession;
    request = [(NanoRoutePlanningSession *)v12 request];
    companionRouteContext2 = [request companionRouteContext];
    lastInvalidatedCompanionRouteContext = companionRouteContext2;
    if (!companionRouteContext2)
    {
      lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
    }

    v16 = lastInvalidatedCompanionRouteContext;

    v17 = [companionRouteContext isStaleComparedToContext:v16];
    if (v17)
    {
      v18 = sub_100053324(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        simpleDescription = [(GEOCompanionRouteContext *)v16 simpleDescription];
        simpleDescription2 = [companionRouteContext simpleDescription];
        *buf = 138412546;
        v25 = simpleDescription;
        v26 = 2112;
        v27 = simpleDescription2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "failRoutePlanningRequest: incoming context is old (current:%@, incoming:%@)", buf, 0x16u);
      }
    }

    else if (v16 && (v17 = [(GEOCompanionRouteContext *)v16 isStaleComparedToContext:companionRouteContext], !v17))
    {
      [(NanoRoutePlanningSession *)v12 updateWithRequest:requestCopy response:responseCopy];
    }

    else
    {
      v21 = sub_100053324(v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        simpleDescription3 = [(GEOCompanionRouteContext *)v16 simpleDescription];
        [companionRouteContext simpleDescription];
        *buf = 138412546;
        v25 = simpleDescription3;
        v27 = v26 = 2112;
        v22 = v27;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "failRoutePlanningRequest: incoming context is newer, invalidate current session and ignore incoming (current:%@, incoming:%@)", buf, 0x16u);
      }

      objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
      [(NanoRoutePlanningSession *)v12 unregisterObserver:self];
      [(NanoRoutePlanningSession *)v12 invalidate];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)updateRoutePlanningRequest:(id)request withSelectedRouteID:(id)d completionHandler:(id)handler
{
  isolationQueue = self->_isolationQueue;
  handlerCopy = handler;
  dCopy = d;
  dispatch_assert_queue_V2(isolationQueue);
  [(NMCRoutePlanningController *)self _setCurrentSessionInputOrigin:1];
  v10 = [NSUUID _maps_UUIDWithData:dCopy];

  [(NanoRoutePlanningSession *)self->_routePlanningSession setSelectedRouteWithRouteID:v10];
  handlerCopy[2](handlerCopy);
}

- (void)clearRoutePlanningWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = self->_routePlanningSession;
  request = [(NanoRoutePlanningSession *)v8 request];
  companionRouteContext = [request companionRouteContext];
  lastInvalidatedCompanionRouteContext = companionRouteContext;
  if (!companionRouteContext)
  {
    lastInvalidatedCompanionRouteContext = self->_lastInvalidatedCompanionRouteContext;
  }

  v12 = lastInvalidatedCompanionRouteContext;

  v13 = [contextCopy isStaleComparedToContext:v12];
  if (v13)
  {
    v14 = sub_100053324(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [(GEOCompanionRouteContext *)v12 simpleDescription];
      simpleDescription2 = [contextCopy simpleDescription];
      *buf = 138412546;
      v29 = simpleDescription;
      v30 = 2112;
      v31 = simpleDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "clearRoutePlanningRequest: incoming context is old (current:%@, incoming:%@)", buf, 0x16u);
    }

LABEL_12:
    handlerCopy[2](handlerCopy);
    goto LABEL_13;
  }

  if (!v12 || (v13 = [(GEOCompanionRouteContext *)v12 isStaleComparedToContext:contextCopy], v13))
  {
    v17 = sub_100053324(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      simpleDescription3 = [(GEOCompanionRouteContext *)v12 simpleDescription];
      simpleDescription4 = [contextCopy simpleDescription];
      *buf = 138412546;
      v29 = simpleDescription3;
      v30 = 2112;
      v31 = simpleDescription4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "clearRoutePlanningRequest: incoming context is newer, invalidate current session and ignore incoming (current:%@, incoming:%@)", buf, 0x16u);
    }

    [(NanoRoutePlanningSession *)v8 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v8 invalidate];
    goto LABEL_12;
  }

  v20 = self->_routePlanningSession;
  snapshot = self->_snapshot;
  self->_snapshot = 0;

  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = 0;

  if (v20)
  {
    v24 = sub_100053324(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      request2 = [(NanoRoutePlanningSession *)v20 request];
      companionRouteContext2 = [request2 companionRouteContext];
      simpleDescription5 = [companionRouteContext2 simpleDescription];
      *buf = 138412290;
      v29 = simpleDescription5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Maps asked us to clear route planning (context:%@)", buf, 0xCu);
    }

    objc_storeStrong(&self->_lastInvalidatedCompanionRouteContext, lastInvalidatedCompanionRouteContext);
    [(NanoRoutePlanningSession *)v20 unregisterObserver:self];
    [(NanoRoutePlanningSession *)v20 invalidate];
    [(NMCRoutePlanningController *)self _notifyNanoMapsRoutePlanningSessionDidInvalidate:v20];
  }

  handlerCopy[2](handlerCopy);

LABEL_13:
}

- (void)_checkinForRoutePlanningWithConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  supportsXPCUseMapsForRoutePlanning = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((supportsXPCUseMapsForRoutePlanning & 1) == 0)
  {
    routePlanningSession = self->_routePlanningSession;
    if (routePlanningSession)
    {
      v8 = routePlanningSession;
      request = [(NanoRoutePlanningSession *)v8 request];
      response = [(NanoRoutePlanningSession *)v8 response];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100025E68;
      v13[3] = &unk_100085F80;
      v14 = connectionCopy;
      v15 = request;
      v16 = response;
      v11 = response;
      v12 = request;
      sub_100013C38(@"com.apple.Maps.launchFromGizmo.preview.synchronize", v13);
    }
  }
}

- (void)_notifyMapsRoutePlanningSessionDidStartLoading:(id)loading
{
  loadingCopy = loading;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  supportsXPCUseMapsForRoutePlanning = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((supportsXPCUseMapsForRoutePlanning & 1) == 0)
  {
    request = [loadingCopy request];
    companionRouteContext = [request companionRouteContext];
    v9 = sub_100053324(companionRouteContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [companionRouteContext simpleDescription];
      *buf = 138412290;
      v15 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Notifying Maps: session did start (context:%@)", buf, 0xCu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000260CC;
    v12[3] = &unk_100085FA8;
    v13 = request;
    v11 = request;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.anticipate" usingBlock:v12];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidUpdateResponse:(id)response
{
  responseCopy = response;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  supportsXPCUseMapsForRoutePlanning = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((supportsXPCUseMapsForRoutePlanning & 1) == 0)
  {
    request = [responseCopy request];
    response = [responseCopy response];
    companionRouteContext = [request companionRouteContext];
    v10 = sub_100053324(companionRouteContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      simpleDescription = [companionRouteContext simpleDescription];
      *buf = 138412290;
      v18 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying Maps: session did receive routes (context:%@)", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100026368;
    v14[3] = &unk_100085FD0;
    v15 = request;
    v16 = response;
    v12 = response;
    v13 = request;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.routes" usingBlock:v14];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidSelectRoute:(id)route
{
  isolationQueue = self->_isolationQueue;
  routeCopy = route;
  dispatch_assert_queue_V2(isolationQueue);
  request = [routeCopy request];
  selectedRoute = [routeCopy selectedRoute];

  uniqueRouteID = [selectedRoute uniqueRouteID];
  _maps_data = [uniqueRouteID _maps_data];

  companionRouteContext = [request companionRouteContext];
  v11 = sub_100053324(companionRouteContext);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [companionRouteContext simpleDescription];
    *buf = 138412546;
    v19 = _maps_data;
    v20 = 2112;
    v21 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Notifying Maps: did select route (routeID:%@, context:%@)", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026610;
  v15[3] = &unk_100085FD0;
  v16 = request;
  v17 = _maps_data;
  v13 = _maps_data;
  v14 = request;
  [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.select" usingBlock:v15];
}

- (void)_notifyMapsRoutePlanningSessionDidFail:(id)fail
{
  failCopy = fail;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = +[NMCGizmoConnection sharedInstance];
  supportsXPCUseMapsForRoutePlanning = [v5 supportsXPCUseMapsForRoutePlanning];

  if ((supportsXPCUseMapsForRoutePlanning & 1) == 0)
  {
    request = [failCopy request];
    response = [failCopy response];
    companionRouteContext = [request companionRouteContext];
    v10 = sub_100053324(companionRouteContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      lastError = [response lastError];
      simpleDescription = [companionRouteContext simpleDescription];
      *buf = 138412546;
      v19 = lastError;
      v20 = 2112;
      v21 = simpleDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Notifying Maps: session failed with error: %@ (context:%@)", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000268D0;
    v15[3] = &unk_100085FD0;
    v16 = request;
    v17 = response;
    v13 = response;
    v14 = request;
    [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.fail" usingBlock:v15];
  }
}

- (void)_notifyMapsRoutePlanningSessionDidInvalidate:(id)invalidate
{
  isolationQueue = self->_isolationQueue;
  invalidateCopy = invalidate;
  dispatch_assert_queue_V2(isolationQueue);
  request = [invalidateCopy request];

  companionRouteContext = [request companionRouteContext];

  v9 = sub_100053324(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [companionRouteContext simpleDescription];
    *buf = 138412290;
    v15 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Notifying Maps: session invalidated (context:%@)", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100026B1C;
  v12[3] = &unk_100085FA8;
  v13 = companionRouteContext;
  v11 = companionRouteContext;
  [(NMCRoutePlanningController *)self _enumerateMapsConnectionsUnderAssertionNamed:@"com.apple.Maps.launchFromGizmo.preview.clear" usingBlock:v12];
}

@end