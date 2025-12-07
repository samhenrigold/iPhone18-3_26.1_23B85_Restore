@interface GEOETAServiceRequester
+ (GEOETAServiceRequester)sharedRequester;
- (GEOETAServiceRequester)init;
- (id)_keyForRequest:(id)request;
- (id)_validateResponse:(id)response;
- (void)cancelRequest:(id)request;
- (void)startRequest:(id)request connectionProperties:(id)properties traits:(id)traits auditToken:(id)token willSendRequest:(id)sendRequest finished:(id)finished networkActivity:(id)activity error:(id)self0;
- (void)startSimpleETARequest:(id)request traits:(id)traits auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error;
@end

@implementation GEOETAServiceRequester

+ (GEOETAServiceRequester)sharedRequester
{
  if (qword_1000961D8 != -1)
  {
    dispatch_once(&qword_1000961D8, &stru_100083DA8);
  }

  v3 = qword_1000961D0;

  return v3;
}

- (id)_validateResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [NSString stringWithFormat:@"Response is of unexpected type %@", objc_opt_class()];
    v8 = GEOURLLogFacility();
    [v8 UTF8String];
    v9 = GEOFindOrCreateLog();

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v4 = [NSError GEOErrorWithCode:-13 reason:v5];
    goto LABEL_21;
  }

  v5 = responseCopy;
  status = [v5 status];
  v4 = 0;
  if (status > 19)
  {
    if (status != 20)
    {
      if (status == 60)
      {
        v7 = -28;
        goto LABEL_17;
      }

LABEL_15:
      v7 = -7;
      goto LABEL_17;
    }
  }

  else if (status)
  {
    if (status == 1)
    {
      v7 = -8;
      goto LABEL_17;
    }

    if (status == 5)
    {
      v7 = -10;
LABEL_17:
      v10 = [[GEOETATrafficUpdateErrorInfo alloc] initWithResponse:v5];
      if (v10)
      {
        v11 = +[GEOETATrafficUpdateErrorInfo key];
        v14 = v11;
        v15 = v10;
        v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        v12 = 0;
      }

      v4 = [NSError GEOErrorWithCode:v7 userInfo:v12];

      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_21:

LABEL_22:

  return v4;
}

- (void)cancelRequest:(id)request
{
  v3.receiver = self;
  v3.super_class = GEOETAServiceRequester;
  [(GEOETAServiceRequester *)&v3 _cancelRequest:request];
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
    v8.super_class = GEOETAServiceRequester;
    xpcUuid = [(GEOETAServiceRequester *)&v8 _keyForRequest:requestCopy];
  }

  v6 = xpcUuid;

  return v6;
}

- (void)startRequest:(id)request connectionProperties:(id)properties traits:(id)traits auditToken:(id)token willSendRequest:(id)sendRequest finished:(id)finished networkActivity:(id)activity error:(id)self0
{
  requestCopy = request;
  traitsCopy = traits;
  sendRequestCopy = sendRequest;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  tokenCopy = token;
  v20 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v20 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];
  [requestCopy setAbClientMetadata:clientDatasetMetadata];

  v23 = +[GEOAdditionalEnabledMarkets additionalEnabledMarkets];
  [requestCopy setAdditionalEnabledMarkets:v23];

  if (![requestCopy serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [requestCopy addServiceTag:v24];
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100052EE4;
  v45[3] = &unk_100083E20;
  v36 = sendRequestCopy;
  v46 = v36;
  v25 = objc_retainBlock(v45);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100052FD4;
  v43[3] = &unk_100083E48;
  v26 = finishedCopy;
  v44 = v26;
  v27 = objc_retainBlock(v43);
  if (GEOConfigGetBOOL() && GEOETATrafficUpdateRequestHasSensitiveFields())
  {
    [requestCopy clearSensitiveFields:0];
  }

  privacyMetadata = +[GEOPlatform sharedPlatform];
  if ([privacyMetadata isInternalInstall])
  {
    v29 = traitsCopy;
    hasPrivacyMetadata = [traitsCopy hasPrivacyMetadata];

    if (!hasPrivacyMetadata)
    {
      goto LABEL_11;
    }

    privacyMetadata = [v29 privacyMetadata];
    v31 = [privacyMetadata copy];
    [requestCopy setPrivacyMetadata:v31];
  }

  else
  {
    v29 = traitsCopy;
  }

LABEL_11:
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v32 = objc_alloc_init(_GEOTrafficUpdateETARequestConfig);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10005317C;
  v39[3] = &unk_100083DD0;
  v40 = activityCopy;
  v41 = errorCopy;
  v42 = v27;
  v33 = v27;
  v34 = errorCopy;
  v35 = activityCopy;
  [(GEOETAServiceRequester *)self _startWithRequest:requestCopy traits:v29 auditToken:tokenCopy config:v32 throttleToken:0 options:0 willSendRequestHandler:v25 completionHandler:v39];
}

- (void)startSimpleETARequest:(id)request traits:(id)traits auditToken:(id)token finished:(id)finished networkActivity:(id)activity error:(id)error
{
  requestCopy = request;
  traitsCopy = traits;
  tokenCopy = token;
  finishedCopy = finished;
  activityCopy = activity;
  errorCopy = error;
  if (activityCopy)
  {
    activityCopy[2](activityCopy, 1);
  }

  v20 = GEOGreenTeaGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO) && [requestCopy hasGreenTeaWithValue:1])
  {
    GEOGreenTeaLog();
  }

  v21 = +[GEOExperimentConfiguration sharedConfiguration];
  _mapsAbClientMetadata = [v21 _mapsAbClientMetadata];
  clientDatasetMetadata = [_mapsAbClientMetadata clientDatasetMetadata];
  [requestCopy setAbClientMetadata:clientDatasetMetadata];

  if (![requestCopy serviceTagsCount])
  {
    v24 = +[GEOGeoServiceTag defaultTag];
    [requestCopy addServiceTag:v24];
  }

  if (GEOConfigGetBOOL())
  {
    GEOETARequestRemoveFieldsForSendingRequest();
  }

  privacyMetadata = +[GEOPlatform sharedPlatform];
  if (![privacyMetadata isInternalInstall])
  {
    goto LABEL_13;
  }

  hasPrivacyMetadata = [traitsCopy hasPrivacyMetadata];

  if (hasPrivacyMetadata)
  {
    privacyMetadata = [traitsCopy privacyMetadata];
    v27 = [privacyMetadata copy];
    [requestCopy setPrivacyMetadata:v27];

LABEL_13:
  }

  v28 = objc_alloc_init(_GEOSimpleETARequestConfig);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100053618;
  v32[3] = &unk_100083DD0;
  v33 = activityCopy;
  v34 = finishedCopy;
  v35 = errorCopy;
  v29 = errorCopy;
  v30 = finishedCopy;
  v31 = activityCopy;
  [(GEOETAServiceRequester *)self _startWithRequest:requestCopy traits:traitsCopy auditToken:tokenCopy config:v28 throttleToken:0 options:0 completionHandler:v32];
}

- (GEOETAServiceRequester)init
{
  v6.receiver = self;
  v6.super_class = GEOETAServiceRequester;
  v2 = [(GEOETAServiceRequester *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end