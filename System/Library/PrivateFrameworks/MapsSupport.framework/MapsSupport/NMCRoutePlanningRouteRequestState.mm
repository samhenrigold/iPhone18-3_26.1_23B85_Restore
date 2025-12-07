@interface NMCRoutePlanningRouteRequestState
+ (int64_t)requiredInitialStateForRequest:(id)request;
- (void)_launchMapsWithURL:(id)l companionRouteContext:(id)context;
- (void)start;
@end

@implementation NMCRoutePlanningRouteRequestState

+ (int64_t)requiredInitialStateForRequest:(id)request
{
  requestCopy = request;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  waypoints = [requestCopy waypoints];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B1A0;
  v9[3] = &unk_1000850D0;
  v9[4] = &v10;
  [waypoints enumerateObjectsUsingBlock:v9];

  if (v11[3])
  {
    v6 = 3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NMCRoutePlanningRouteRequestState;
    v6 = objc_msgSendSuper2(&v8, "requiredInitialStateForRequest:", requestCopy);
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)start
{
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  v6 = sub_100053324(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    waypoints = [request waypoints];
    *buf = 138477827;
    *&buf[4] = waypoints;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "-start, will generate map-ish items for waypoints: %{private}@", buf, 0xCu);
  }

  waypoints2 = [request waypoints];
  v9 = sub_1000282B8(waypoints2, &stru_100085110);

  v10 = [v9 count];
  waypoints3 = [request waypoints];
  v12 = [waypoints3 count];

  if (v10 == v12)
  {
    transportType = [request transportType];
    if (transportType > 5)
    {
      v15 = 1;
    }

    else
    {
      v15 = qword_100065980[transportType];
    }

    departureDate = [request departureDate];
    arrivalDate = [request arrivalDate];
    companionRouteContext = [request companionRouteContext];
    if (arrivalDate)
    {
      v23 = 1;
      v24 = arrivalDate;
    }

    else
    {
      if (!departureDate)
      {
        v29 = objc_alloc_init(NSMutableDictionary);
        goto LABEL_20;
      }

      v23 = 0;
      v24 = departureDate;
    }

    v27 = objc_alloc_init(GEOURLTimePoint);
    [v27 setType:v23];
    [v24 timeIntervalSinceReferenceDate];
    [v27 setTime:?];
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = v28;
    if (v27)
    {
      [v28 setObject:v27 forKeyedSubscript:MKLaunchOptionsTimePointKey];
    }

LABEL_20:
    if (v15 > 3)
    {
      if (v15 == 4)
      {
        [v29 setObject:MKLaunchOptionsDirectionsModeTransit forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request transitOptions];
        v31 = &MKLaunchOptionsTransitOptionsKey;
        goto LABEL_30;
      }

      if (v15 == 8)
      {
        [v29 setObject:MKLaunchOptionsDirectionsModeCycling forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request cyclingOptions];
        v31 = &MKLaunchOptionsCyclingOptionsKey;
        goto LABEL_30;
      }
    }

    else
    {
      if (v15 == 1)
      {
        [v29 setObject:MKLaunchOptionsDirectionsModeDriving forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request automobileOptions];
        v31 = &MKLaunchOptionsAutomobileOptionsKey;
        goto LABEL_30;
      }

      if (v15 == 2)
      {
        [v29 setObject:MKLaunchOptionsDirectionsModeWalking forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
        transitOptions = [request walkingOptions];
        v31 = &MKLaunchOptionsWalkingOptionsKey;
LABEL_30:
        [v29 setObject:transitOptions forKeyedSubscript:*v31];

        goto LABEL_31;
      }
    }

    v32 = [v29 setObject:MKLaunchOptionsDirectionsModeDefault forKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
LABEL_31:
    v33 = sub_100053324(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "-start, launching Maps with a url and options %{public}@", buf, 0xCu);
    }

    v34 = [MKMapItem urlForMapItems:v9 options:v29];
    [(NMCRoutePlanningRouteRequestState *)self _launchMapsWithURL:v34 companionRouteContext:companionRouteContext];

    goto LABEL_34;
  }

  v16 = sub_100053324(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138477827;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "-start, only generated map-ish items: %{private}@", buf, 0xCu);
  }

  v17 = sub_1000134CC(4);
  v18 = v17;
  if (v17)
  {
    v38 = NSLocalizedDescriptionKey;
    *buf = v17;
    v19 = [NSDictionary dictionaryWithObjects:buf forKeys:&v38 count:1];
  }

  else
  {
    v19 = 0;
  }

  v25 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:4 userInfo:v19];

  manager2 = [(NanoRoutePlanningState *)self manager];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10000BA84;
  v35[3] = &unk_100085138;
  v36 = v25;
  departureDate = v25;
  [manager2 updateWithBlock:v35];

  arrivalDate = v36;
LABEL_34:
}

- (void)_launchMapsWithURL:(id)l companionRouteContext:(id)context
{
  contextCopy = context;
  lCopy = l;
  v8 = sub_100053324(lCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    simpleDescription = [contextCopy simpleDescription];
    *buf = 138412290;
    v18 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will launch Maps to load directions with context %@", buf, 0xCu);
  }

  v10 = +[MapsCompanionDaemonIPCInterface sharedInterface];
  v11 = objc_alloc_init(IPCLoadDirectionsMessage);
  [(IPCLoadDirectionsMessage *)v11 setUrl:lCopy];

  [(IPCLoadDirectionsMessage *)v11 setOriginIsWatch:1];
  data = [contextCopy data];
  [(IPCLoadDirectionsMessage *)v11 setRouteContextData:data];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000BC58;
  v14[3] = &unk_1000851A0;
  v15 = contextCopy;
  selfCopy = self;
  v13 = contextCopy;
  [v10 loadDirections:v11 completion:v14];
}

@end