@interface MNDirectionsRequestManager
- (MNDirectionsRequestManager)init;
- (void)_logRoutes:(id)routes error:(id)error;
- (void)_requestDirectionsFromTraceWithPath:(id)path feedback:(id)feedback auditToken:(id)token finishedHandler:(id)handler;
- (void)_requestServerDirections:(id)directions preferredRoute:(id)route withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler;
- (void)cancelDirectionsRequestWithIdentifier:(id)identifier;
- (void)requestDirections:(id)directions withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler;
@end

@implementation MNDirectionsRequestManager

- (void)_logRoutes:(id)routes error:(id)error
{
  *&v23[5] = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  errorCopy = error;
  if ([routesCopy count])
  {
    firstObject = [routesCopy firstObject];
    BOOL = GEOConfigGetBOOL();
    v9 = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      route = [firstObject route];
      v11 = route;
      if (BOOL)
      {
        [route debugDescription];
      }

      else
      {
        [route description];
      }
      v12 = ;
      *buf = 138412290;
      *v23 = v12;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Route 0: %@\n", buf, 0xCu);
    }

    v13 = GEOConfigGetBOOL();
    if ([routesCopy count] >= 2)
    {
      v20 = firstObject;
      v21 = errorCopy;
      v14 = 1;
      do
      {
        v15 = [routesCopy objectAtIndexedSubscript:{v14, v20, v21}];
        v16 = MNGetMNRouteLoggingLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          route2 = [v15 route];
          v18 = route2;
          if (v13)
          {
            [route2 debugDescription];
          }

          else
          {
            [route2 description];
          }
          v19 = ;
          *buf = 67109378;
          v23[0] = v14;
          LOWORD(v23[1]) = 2112;
          *(&v23[1] + 2) = v19;
          _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Route %d: %@\n", buf, 0x12u);
        }

        ++v14;
      }

      while (v14 < [routesCopy count]);
      firstObject = v20;
      errorCopy = v21;
    }
  }

  else
  {
    firstObject = MNGetMNRouteLoggingLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v23 = errorCopy;
      _os_log_impl(&dword_1D311E000, firstObject, OS_LOG_TYPE_ERROR, "Error loading routes: %@", buf, 0xCu);
    }
  }
}

- (void)_requestDirectionsFromTraceWithPath:(id)path feedback:(id)feedback auditToken:(id)token finishedHandler:(id)handler
{
  v76 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  feedbackCopy = feedback;
  tokenCopy = token;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v50 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v67 = "[MNDirectionsRequestManager _requestDirectionsFromTraceWithPath:feedback:auditToken:finishedHandler:]";
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v70 = 1024;
      v71 = 250;
      v72 = 2080;
      v73 = "finishedHandler != nil";
      _os_log_impl(&dword_1D311E000, v50, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

  v14 = objc_alloc_init(MNTraceLoader);
  v15 = objc_alloc_init(MNDirectionsResponseInfo);
  v63 = 0;
  v16 = [(MNTraceLoader *)v14 loadTraceWithPath:pathCopy outError:&v63];
  v17 = v63;
  if (v17)
  {
    v18 = v17;
    [(MNDirectionsResponseInfo *)v15 setError:v17];
    handlerCopy[2](handlerCopy, v15);
  }

  else
  {
    selfCopy = self;
    v54 = v14;
    v56 = v16;
    v57 = feedbackCopy;
    v55 = pathCopy;
    directions = [v16 directions];
    firstObject = [directions firstObject];

    request = [firstObject request];
    v22 = [request copy];

    response = [firstObject response];
    routeAttributes = [v22 routeAttributes];
    Integer = GEOConfigGetInteger();
    v59 = v22;
    v60 = tokenCopy;
    v58 = routeAttributes;
    if (Integer)
    {
      v26 = Integer;
      v51 = response;
      v27 = [MNDirectionsRequestDetails alloc];
      waypoints = [firstObject waypoints];
      v29 = MEMORY[0x1E69A2500];
      routeAttributes2 = [v22 routeAttributes];
      v31 = [v29 defaultRouteAttributesForTransportType:{objc_msgSend(routeAttributes2, "mainTransportType")}];
      v32 = [(MNDirectionsRequestDetails *)v27 initWithWaypoints:waypoints routeAttributes:v31];

      if ([v22 mainTransportTypeMaxRouteCount])
      {
        mainTransportTypeMaxRouteCount = [v22 mainTransportTypeMaxRouteCount];
      }

      else
      {
        mainTransportTypeMaxRouteCount = 3;
      }

      tokenCopy = v60;
      v14 = v54;
      [(MNDirectionsRequestDetails *)v32 setMaxRouteCount:mainTransportTypeMaxRouteCount, v51];
      v41 = objc_opt_new();
      [(MNDirectionsRequestDetails *)v32 setDirectionsRequestFeedback:v41];

      directionsRequestFeedback = [(MNDirectionsRequestDetails *)v32 directionsRequestFeedback];
      [directionsRequestFeedback setPurpose:1];

      pathCopy = v55;
      if (v26 == 2)
      {
        v43 = objc_alloc(MEMORY[0x1E69A2538]);
        waypoints2 = [firstObject waypoints];
        v45 = [v43 initWithWaypoints:waypoints2 routeAttributes:v58 directionsResponse:v52 directionsRequest:v59];

        allRouteInfos = [v45 allRouteInfos];
        selectedRouteIndex = [firstObject selectedRouteIndex];
        if (selectedRouteIndex >= [allRouteInfos count])
        {
          route = 0;
        }

        else
        {
          v48 = [allRouteInfos objectAtIndexedSubscript:{objc_msgSend(firstObject, "selectedRouteIndex")}];
          route = [v48 route];
        }

        tokenCopy = v60;
      }

      else
      {
        route = 0;
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke;
      v61[3] = &unk_1E842B8B0;
      v62 = handlerCopy;
      [(MNDirectionsRequestManager *)selfCopy _requestServerDirections:v32 preferredRoute:route withIdentifier:uUID auditToken:tokenCopy finishedHandler:v61];

      v18 = 0;
      response = v52;
    }

    else
    {
      v34 = objc_alloc(MEMORY[0x1E69A2538]);
      waypoints3 = [firstObject waypoints];
      v32 = [v34 initWithWaypoints:waypoints3 routeAttributes:routeAttributes directionsResponse:response directionsRequest:v22];

      route = [(MNDirectionsRequestDetails *)v32 allRouteInfos];
      [(MNDirectionsRequestManager *)selfCopy _logRoutes:route error:0];
      v18 = 0;
      v14 = v54;
      pathCopy = v55;
      if (![route count])
      {
        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recorded trace response has no routes and no errors."];
        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v67 = "[MNDirectionsRequestManager _requestDirectionsFromTraceWithPath:feedback:auditToken:finishedHandler:]";
          v68 = 2080;
          v69 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
          v70 = 1024;
          v71 = 277;
          v72 = 2080;
          v73 = "NO";
          v74 = 2112;
          v75 = v37;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
        }

        v64[0] = @"TracePath";
        v64[1] = @"GEODirectionsResponse";
        v65[0] = v55;
        v65[1] = response;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v18 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:5 userInfo:v39];
      }

      [(MNDirectionsResponseInfo *)v15 setRouteInfos:route];
      request2 = [firstObject request];
      [(MNDirectionsResponseInfo *)v15 setRequest:request2];

      [(MNDirectionsResponseInfo *)v15 setResponse:response];
      [(MNDirectionsResponseInfo *)v15 setError:v18];
      handlerCopy[2](handlerCopy, v15);
      tokenCopy = v60;
    }

    v16 = v56;
    feedbackCopy = v57;
  }
}

void __102__MNDirectionsRequestManager__requestDirectionsFromTraceWithPath_feedback_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTraceRecordingData:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_requestServerDirections:(id)directions preferredRoute:(id)route withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler
{
  v84 = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  routeCopy = route;
  identifierCopy = identifier;
  tokenCopy = token;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v55 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136315906;
      *&v81[4] = "[MNDirectionsRequestManager _requestServerDirections:preferredRoute:withIdentifier:auditToken:finishedHandler:]";
      *&v81[12] = 2080;
      *&v81[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      *&v81[22] = 1024;
      LODWORD(v82) = 105;
      WORD2(v82) = 2080;
      *(&v82 + 6) = "finishedHandler != nil";
      _os_log_impl(&dword_1D311E000, v55, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", v81, 0x26u);
    }
  }

  *v81 = 0;
  *&v81[8] = v81;
  *&v81[16] = 0x3032000000;
  *&v82 = __Block_byref_object_copy__7336;
  *(&v82 + 1) = __Block_byref_object_dispose__7337;
  v83 = objc_alloc_init(MNDirectionsResponseInfo);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  waypoints = [directionsCopy waypoints];
  v16 = [(MNRouteAttributes *)waypoints countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v16)
  {
    v17 = *v69;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v69 != v17)
        {
          objc_enumerationMutation(waypoints);
        }

        latLng = [*(*(&v68 + 1) + 8 * i) latLng];
        IsNilOrZero = _navigation_GEOLatLngIsNilOrZero(latLng);

        if (IsNilOrZero)
        {
          v78[0] = @"MNDirectionsRequestDetails";
          null = directionsCopy;
          if (!directionsCopy)
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          v78[1] = *MEMORY[0x1E696A588];
          v79[0] = null;
          v79[1] = @"Waypoint in request is nil or invalid";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
          if (!directionsCopy)
          {
          }

          v28 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:3 userInfo:v27];
          v29 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v28;
            _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_ERROR, "Error in fetching directions %@", buf, 0xCu);
          }

          [*(*&v81[8] + 40) setError:v28];
          handlerCopy[2](handlerCopy, *(*&v81[8] + 40));
          goto LABEL_33;
        }
      }

      v16 = [(MNRouteAttributes *)waypoints countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  waypoints = [directionsCopy routeAttributes];
  routeAttributes = [directionsCopy routeAttributes];
  mainTransportType = [routeAttributes mainTransportType];

  if ((mainTransportType - 1) >= 3)
  {
    if (mainTransportType)
    {
      v76 = @"MNDirectionsRequestDetails";
      v77 = directionsCopy;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v28 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:4 userInfo:v27];
      [*(*&v81[8] + 40) setError:v28];
      handlerCopy[2](handlerCopy, *(*&v81[8] + 40));
      goto LABEL_33;
    }

    v30 = [MNRouteAttributes alloc];
    waypoints2 = [directionsCopy waypoints];
    v23 = [(MNRouteAttributes *)v30 initWithAttributes:waypoints waypoints:waypoints2];

    if (GEOConfigGetBOOL())
    {
      [(MNRouteAttributes *)v23 addInitialPromptType:1];
    }
  }

  else
  {
    v23 = waypoints;
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A1D30]);
  global_queue = geo_get_global_queue();
  [v24 setCallbackQueue:global_queue];

  if (routeCopy)
  {
    [v24 setRequestType:15];
    [v24 setCurrentRoute:routeCopy];
  }

  else
  {
    resumeRouteHandle = [directionsCopy resumeRouteHandle];
    if (resumeRouteHandle && (v33 = [directionsCopy isResumingMultipointRoute], resumeRouteHandle, (v33 & 1) != 0))
    {
      [v24 setRequestType:12];
      resumeRouteHandle2 = [directionsCopy resumeRouteHandle];
      [v24 setHasVisitedFirstStop:{objc_msgSend(resumeRouteHandle2, "hasVisitedFirstStop")}];
    }

    else
    {
      [v24 setRequestType:{1, tokenCopy}];
    }

    waypoints3 = [directionsCopy waypoints];
    [v24 setWaypoints:waypoints3];
  }

  v36 = [MNFamiliarRouteProvider alloc];
  routeAttributes2 = [directionsCopy routeAttributes];
  anyDate = [routeAttributes2 anyDate];
  v39 = [(MNFamiliarRouteProvider *)v36 initWithPurpose:0 reason:@"Route Planning" date:anyDate];
  [v24 setFamiliarRouteProvider:v39];

  resumeRouteHandle3 = [directionsCopy resumeRouteHandle];
  [v24 setResumeRouteHandle:resumeRouteHandle3];

  [v24 setTransportType:mainTransportType];
  [v24 setRouteAttributes:v23];
  traits = [directionsCopy traits];
  [v24 setTraits:traits];

  commonOptions = [directionsCopy commonOptions];
  [v24 setCommonOptions:commonOptions];

  [v24 setMaxRouteCount:{objc_msgSend(directionsCopy, "maxRouteCount")}];
  currentUserLocation = [directionsCopy currentUserLocation];
  [v24 setCurrentLocation:currentUserLocation];

  currentMapRegion = [directionsCopy currentMapRegion];
  [v24 setVisibleRegion:currentMapRegion];

  directionsRequestFeedback = [directionsCopy directionsRequestFeedback];
  [v24 setFeedback:directionsRequestFeedback];

  [v24 setAuditToken:tokenCopy];
  v46 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedExitDate:v46];

  v47 = GEOConfigGetDate();
  [v24 setDodgeballOutsideOfMapsPredictedEntryDate:v47];

  v48 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = off_1E842B8D0[mainTransportType];
    *buf = 138412547;
    v73 = identifierCopy;
    v74 = 2113;
    v75 = v49;
    _os_log_impl(&dword_1D311E000, v48, OS_LOG_TYPE_INFO, "Requesting directions from server. identifier: %@ | transportType: %{private}@", buf, 0x16u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v51 = v50;
  directionsService = self->_directionsService;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __112__MNDirectionsRequestManager__requestServerDirections_preferredRoute_withIdentifier_auditToken_finishedHandler___block_invoke;
  v60[3] = &unk_1E842B888;
  v53 = identifierCopy;
  v61 = v53;
  selfCopy = self;
  v63 = directionsCopy;
  v67 = v51;
  v27 = v24;
  v64 = v27;
  v66 = v81;
  v65 = handlerCopy;
  v54 = [(GEODirectionsService *)directionsService requestDirections:v27 handler:v60];
  v58 = v53;
  v59 = v54;
  geo_isolate_sync();

  v28 = v61;
  waypoints = v23;
LABEL_33:

  _Block_object_dispose(v81, 8);
}

void __112__MNDirectionsRequestManager__requestServerDirections_preferredRoute_withIdentifier_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x1E695DF00];
  v16 = a2;
  [v15 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 32);
    *buf = 138412290;
    v53 = v20;
    _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "Received directions response from server. identifier: %@", buf, 0xCu);
  }

  if (v13)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v13;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "Received error from directions request: %@", buf, 0xCu);
    }
  }

  if (v14)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v14;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "Received directionsError from directions request: %@", buf, 0xCu);
    }
  }

  v49 = *(a1 + 32);
  geo_isolate_sync();
  v23 = objc_alloc(MEMORY[0x1E69A2538]);
  v24 = [*(a1 + 48) routeAttributes];
  v25 = [v23 initWithWaypoints:v16 routeAttributes:v24 directionsResponse:v12 directionsRequest:v11];

  v26 = [v25 allRouteInfos];
  [*(a1 + 40) _logRoutes:v26 error:v13];
  if (GEOConfigGetBOOL())
  {
    v27 = objc_alloc_init(MNTraceRecordingData);
    v28 = [*(a1 + 48) waypoints];
    [(MNTraceRecordingData *)v27 setWaypoints:v28];

    [(MNTraceRecordingData *)v27 setInitialDirectionsRequest:v11];
    [(MNTraceRecordingData *)v27 setInitialDirectionsResponse:v12];
    [(MNTraceRecordingData *)v27 setInitialDirectionsRequestError:v13];
    [(MNTraceRecordingData *)v27 setInitialDirectionsRequestTimestamp:*(a1 + 80)];
    [(MNTraceRecordingData *)v27 setInitialDirectionsResponseTimestamp:v18];
    v29 = [MNLocation alloc];
    v30 = [*(a1 + 48) currentUserLocation];
    v31 = [(CLLocation *)v29 initWithGeoLocation:v30];

    [(MNTraceRecordingData *)v27 setInitialUserLocation:v31];
  }

  else
  {
    v27 = 0;
  }

  v32 = [v26 count];
  if (!v13 && !v32)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server response returned no response and no errors."];
    v34 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v53 = "[MNDirectionsRequestManager _requestServerDirections:preferredRoute:withIdentifier:auditToken:finishedHandler:]_block_invoke_2";
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v56 = 1024;
      v57 = 212;
      v58 = 2080;
      v59 = "NO";
      v60 = 2112;
      v61 = v33;
      _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }

    v35 = *(a1 + 48);
    v50[0] = @"MNDirectionsRequestDetails";
    v50[1] = @"GEODirectionsResponse";
    v51[0] = v35;
    v51[1] = v12;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v13 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:5 userInfo:v36];
  }

  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v38 = Integer;
    if ([*(a1 + 56) requestType] == 1)
    {
      v47 = v14;
      v48 = v11;
      v39 = [v26 firstObject];
      v40 = [v39 route];
      [v40 distance];
      v42 = v41;

      v43 = [v26 firstObject];
      if ([v26 count] <= 1)
      {
        [v12 addFakeTrafficIncidentAlert:v38 targetLegIndex:0 mainRouteInfo:v43 alternateRouteInfo:0 currentDistance:v42];
      }

      else
      {
        v44 = [v26 objectAtIndexedSubscript:1];
        [v12 addFakeTrafficIncidentAlert:v38 targetLegIndex:0 mainRouteInfo:v43 alternateRouteInfo:v44 currentDistance:v42];
      }

      v14 = v47;
      v11 = v48;
    }
  }

  [*(*(*(a1 + 72) + 8) + 40) setRouteInfos:v26];
  [*(*(*(a1 + 72) + 8) + 40) setRequest:v11];
  [*(*(*(a1 + 72) + 8) + 40) setResponse:v12];
  [*(*(*(a1 + 72) + 8) + 40) setError:v13];
  [*(*(*(a1 + 72) + 8) + 40) setDirectionsError:v14];
  [*(*(*(a1 + 72) + 8) + 40) setTraceRecordingData:v27];
  v45 = v14;
  v46 = objc_alloc_init(MNNavigationTraceManager);
  [(MNNavigationTraceManager *)v46 saveRoutePlanningTrace:v27];
  (*(*(a1 + 64) + 16))();
}

- (void)cancelDirectionsRequestWithIdentifier:(id)identifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7336;
  v8 = __Block_byref_object_dispose__7337;
  v9 = 0;
  identifierCopy = identifier;
  geo_isolate_sync();
  [v5[5] cancel];

  _Block_object_dispose(&v4, 8);
}

uint64_t __68__MNDirectionsRequestManager_cancelDirectionsRequestWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 8);

  return [v6 removeObjectForKey:v5];
}

- (void)requestDirections:(id)directions withIdentifier:(id)identifier auditToken:(id)token finishedHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  identifierCopy = identifier;
  tokenCopy = token;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v14 = MNGetMNDirectionsRequestLog();
    v15 = os_signpost_id_generate(v14);
    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "RequestDirections", "", buf, 2u);
    }

    tracePath = [directionsCopy tracePath];

    if (tracePath)
    {
      tracePath2 = [directionsCopy tracePath];
      directionsRequestFeedback = [directionsCopy directionsRequestFeedback];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke;
      v29[3] = &unk_1E842B858;
      v21 = &v30;
      v30 = v17;
      v31[1] = v15;
      v22 = v31;
      v31[0] = handlerCopy;
      v23 = v17;
      [(MNDirectionsRequestManager *)self _requestDirectionsFromTraceWithPath:tracePath2 feedback:directionsRequestFeedback auditToken:tokenCopy finishedHandler:v29];
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke_25;
      v26[3] = &unk_1E842B858;
      v21 = &v27;
      v27 = v17;
      v28[1] = v15;
      v22 = v28;
      v28[0] = handlerCopy;
      v25 = v17;
      [(MNDirectionsRequestManager *)self _requestServerDirections:directionsCopy preferredRoute:0 withIdentifier:identifierCopy auditToken:tokenCopy finishedHandler:v26];
    }

    v24 = *v21;
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finishedHandler must be passed to requestDirections otherwise response will be unavailable."];
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v33 = "[MNDirectionsRequestManager requestDirections:withIdentifier:auditToken:finishedHandler:]";
      v34 = 2080;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNDirectionsRequestManager.m";
      v36 = 1024;
      v37 = 64;
      v38 = 2080;
      v39 = "NO";
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }
}

void __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "RequestDirections", "", v8, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void __90__MNDirectionsRequestManager_requestDirections_withIdentifier_auditToken_finishedHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "RequestDirections", "", v8, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (MNDirectionsRequestManager)init
{
  v10.receiver = self;
  v10.super_class = MNDirectionsRequestManager;
  v2 = [(MNDirectionsRequestManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1D18]);
    directionsService = v2->_directionsService;
    v2->_directionsService = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v5;

    v7 = geo_isolater_create();
    pendingRequestsIsolater = v2->_pendingRequestsIsolater;
    v2->_pendingRequestsIsolater = v7;
  }

  return v2;
}

@end