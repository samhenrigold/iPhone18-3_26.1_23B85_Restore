@interface NanoRoutePlanningRouteRequestState
- (void)_processIncomingRoutes:(id)routes error:(id)error directionsError:(id)directionsError fromTicket:(id)ticket;
- (void)cancelRequest;
- (void)dealloc;
- (void)start;
@end

@implementation NanoRoutePlanningRouteRequestState

- (void)dealloc
{
  [(MNNavigationServiceDirectionsRequestTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;

  v4.receiver = self;
  v4.super_class = NanoRoutePlanningRouteRequestState;
  [(NanoRoutePlanningRouteRequestState *)&v4 dealloc];
}

- (void)start
{
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  waypoints = [request waypoints];
  v6 = sub_1000282B8(waypoints, &stru_1000853D0);

  routeAttributes = [request routeAttributes];
  tracePath = [request tracePath];
  v9 = [tracePath length];

  v10 = [MNDirectionsRequestDetails alloc];
  v11 = v10;
  if (v9)
  {
    tracePath2 = [request tracePath];
    v13 = [v11 initWithTracePath:tracePath2];
  }

  else
  {
    v13 = [v10 initWithWaypoints:v6 routeAttributes:routeAttributes];
  }

  v14 = [[GEODirectionsRequestFeedback alloc] initWithPurpose:4 andSource:1];
  [v14 setAppIdentifier:MapsAppBundleId];
  [v13 setDirectionsRequestFeedback:v14];
  auditToken = [request auditToken];
  [v13 setAuditToken:auditToken];

  traits = [request traits];
  [v13 setTraits:traits];

  traits2 = [request traits];
  deviceLocation = [traits2 deviceLocation];

  [v13 setCurrentUserLocation:deviceLocation];
  ticket = self->_ticket;
  if (ticket)
  {
    [(MNNavigationServiceDirectionsRequestTicket *)ticket cancel];
    v20 = self->_ticket;
    self->_ticket = 0;
  }

  v21 = +[MNNavigationService sharedService];
  v22 = [v21 ticketForDirectionsRequest:v13];

  objc_storeStrong(&self->_ticket, v22);
  v24 = sub_100053324(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = sub_10001C414(v6);
    *buf = 138477827;
    v31 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Will submit directions request ticket for waypoints: %{private}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000101F0;
  v27[3] = &unk_100085420;
  objc_copyWeak(&v29, buf);
  v26 = v22;
  v28 = v26;
  [v26 submitWithHandler:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)_processIncomingRoutes:(id)routes error:(id)error directionsError:(id)directionsError fromTicket:(id)ticket
{
  routesCopy = routes;
  errorCopy = error;
  directionsErrorCopy = directionsError;
  ticketCopy = ticket;
  isActive = [(NanoRoutePlanningState *)self isActive];
  if (isActive)
  {
    v15 = sub_100053324(isActive);
    v16 = v15;
    if (errorCopy | directionsErrorCopy)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        *&buf[4] = [routesCopy count];
        v37 = 2114;
        v38 = errorCopy;
        v39 = 2114;
        v40 = directionsErrorCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Route request returned with %lu routes and error: %{public}@, directionsError: %{public}@", buf, 0x20u);
      }

      ticket = self->_ticket;
      self->_ticket = 0;

      if (directionsErrorCopy)
      {
        v18 = +[GEODirectionsError key];
        v34 = v18;
        v35 = directionsErrorCopy;
        v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v20 = [v19 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        v21 = v19;
        if (!v20)
        {
          v22 = sub_1000134CC(5);
          v21 = v19;
          if (v22)
          {
            v29 = v22;
            v23 = [[NSMutableDictionary alloc] initWithDictionary:v19];
            [v23 setObject:v29 forKeyedSubscript:NSLocalizedDescriptionKey];
            v21 = [v23 copy];

            v22 = v29;
          }
        }

        v24 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:5 userInfo:v21, v29];

        goto LABEL_20;
      }

      if (errorCopy)
      {
        v26 = sub_1000134CC(5);
        v18 = v26;
        if (v26)
        {
          v41 = NSLocalizedDescriptionKey;
          *buf = v26;
          v19 = [NSDictionary dictionaryWithObjects:buf forKeys:&v41 count:1];
        }

        else
        {
          v19 = 0;
        }

        v24 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:5 userInfo:v19];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = [routesCopy count];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Route request returned %lu routes", buf, 0xCu);
      }

      v25 = self->_ticket;
      self->_ticket = 0;
    }

    v24 = 0;
LABEL_21:
    manager = [(NanoRoutePlanningState *)self manager];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100010748;
    v30[3] = &unk_100085448;
    v31 = ticketCopy;
    v32 = v24;
    v33 = routesCopy;
    v28 = v24;
    [manager updateWithBlock:v30];
  }
}

- (void)cancelRequest
{
  if (self->_ticket)
  {
    v3 = sub_100053324(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Cancelling in-flight route manager request", v5, 2u);
    }

    [(MNNavigationServiceDirectionsRequestTicket *)self->_ticket cancel];
    ticket = self->_ticket;
    self->_ticket = 0;
  }
}

@end