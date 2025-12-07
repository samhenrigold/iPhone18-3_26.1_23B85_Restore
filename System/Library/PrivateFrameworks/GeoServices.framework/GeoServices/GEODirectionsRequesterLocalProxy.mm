@interface GEODirectionsRequesterLocalProxy
- (GEODirectionsRequesterLocalProxy)init;
- (id)_keyForRequest:(id)request;
- (id)_validateResponse:(id)response;
- (void)startRequest:(id)request traits:(id)traits auditToken:(id)token useBackgroundURL:(BOOL)l requestPriority:(id)priority callbackQueue:(id)queue finished:(id)finished networkActivity:(id)self0 error:(id)self1;
@end

@implementation GEODirectionsRequesterLocalProxy

- (id)_validateResponse:(id)response
{
  responseCopy = response;
  v4 = [[GEODirectionsError alloc] initWithResponse:responseCopy];
  if (v4)
  {
    v5 = +[GEODirectionsError key];
    v15 = v5;
    v16 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v6 = 0;
  }

  status = [responseCopy status];
  if (status > 4)
  {
    switch(status)
    {
      case 60:
        v8 = -28;
        goto LABEL_17;
      case 30:
        if ([responseCopy placeSearchResponsesCount] == 2)
        {
          v9 = [responseCopy placeSearchResponseAtIndex:0];
          status2 = [v9 status];

          if (status2)
          {
            v8 = -401;
            goto LABEL_17;
          }

          v13 = [responseCopy placeSearchResponseAtIndex:1];
          status3 = [v13 status];

          if (status3)
          {
            v8 = -402;
            goto LABEL_17;
          }
        }

        break;
      case 5:
        v8 = -10;
LABEL_17:
        v11 = [NSError GEOErrorWithCode:v8 userInfo:v6];
        goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (status)
  {
    if (status == 1)
    {
      v8 = -8;
      goto LABEL_17;
    }

LABEL_16:
    v8 = -7;
    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)_keyForRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpcUuid = [requestCopy xpcUuid];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GEODirectionsRequesterLocalProxy;
    xpcUuid = [(GEODirectionsRequesterLocalProxy *)&v8 _keyForRequest:requestCopy];
  }

  v6 = xpcUuid;

  return v6;
}

- (void)startRequest:(id)request traits:(id)traits auditToken:(id)token useBackgroundURL:(BOOL)l requestPriority:(id)priority callbackQueue:(id)queue finished:(id)finished networkActivity:(id)self0 error:(id)self1
{
  requestCopy = request;
  traitsCopy = traits;
  tokenCopy = token;
  priorityCopy = priority;
  queueCopy = queue;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v22 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO) && [requestCopy hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v47 = priorityCopy;
  v23 = [objc_alloc(objc_opt_class()) initWithRequest:requestCopy requestPriority:priorityCopy];
  v24 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v24 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];
  [requestCopy setAbClientMetadata:clientDatasetMetadata];

  bundleId = [tokenCopy bundleId];
  LODWORD(v24) = [bundleId isEqualToString:MapsAppBundleId];

  if (v24)
  {
    v28 = [GEOLocalTime alloc];
    v29 = +[NSDate date];
    v30 = [v28 initWithDate:v29];
    clientCapabilities = [requestCopy clientCapabilities];
    [clientCapabilities setRequestTime:v30];
  }

  if (![requestCopy serviceTagsCount])
  {
    v32 = +[GEOGeoServiceTag defaultTag];
    [requestCopy addServiceTag:v32];
  }

  if (GEOConfigGetBOOL() && GEODirectionsRequestHasSensitiveFields())
  {
    [requestCopy clearSensitiveFields:0];
  }

  privacyMetadata = +[GEOPlatform sharedPlatform];
  if ([privacyMetadata isInternalInstall])
  {
    hasPrivacyMetadata = [traitsCopy hasPrivacyMetadata];

    if (!hasPrivacyMetadata)
    {
      goto LABEL_17;
    }

    privacyMetadata = [traitsCopy privacyMetadata];
    v35 = [privacyMetadata copy];
    [requestCopy setPrivacyMetadata:v35];
  }

LABEL_17:
  familiarWaypointRoute = [requestCopy familiarWaypointRoute];
  familarRouteUuid = [familiarWaypointRoute familarRouteUuid];

  familiarWaypointRoute2 = [requestCopy familiarWaypointRoute];
  [familiarWaypointRoute2 setFamilarRouteUuid:0];

  v39 = 0;
  if ([requestCopy hasPredictedDepartureTimeDelta])
  {
    [requestCopy predictedDepartureTimeDelta];
    v39 = [NSNumber numberWithDouble:?];
    [requestCopy setHasPredictedDepartureTimeDelta:0];
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100046D5C;
  v48[3] = &unk_100083578;
  v51 = activityCopy;
  v52 = finishedCopy;
  v49 = familarRouteUuid;
  v50 = v39;
  v53 = errorCopy;
  v40 = errorCopy;
  v41 = v39;
  v42 = familarRouteUuid;
  v43 = finishedCopy;
  v44 = activityCopy;
  [(GEODirectionsRequesterLocalProxy *)self _startWithRequest:requestCopy traits:traitsCopy auditToken:tokenCopy config:v23 throttleToken:0 options:0 completionHandler:v48];
}

- (GEODirectionsRequesterLocalProxy)init
{
  v4.receiver = self;
  v4.super_class = GEODirectionsRequesterLocalProxy;
  v2 = [(GEODirectionsRequesterLocalProxy *)&v4 init];
  if (v2)
  {
    [(GEODirectionsRequesterLocalProxy *)v2 setOfflineOperationClass:objc_opt_class()];
  }

  return v2;
}

@end