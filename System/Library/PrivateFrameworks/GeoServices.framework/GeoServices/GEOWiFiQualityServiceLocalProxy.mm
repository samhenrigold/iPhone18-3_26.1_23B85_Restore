@interface GEOWiFiQualityServiceLocalProxy
- (GEOWiFiQualityServiceLocalProxy)init;
- (void)cancelRequestId:(id)id;
- (void)submitWiFiQualityServiceRequest:(id)request requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion;
- (void)submitWiFiQualityTileLoadForKey:(id)key eTag:(id)tag requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion;
@end

@implementation GEOWiFiQualityServiceLocalProxy

- (void)cancelRequestId:(id)id
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100025430;
  v8 = sub_100025440;
  v9 = 0;
  idCopy = id;
  geo_isolate_sync();
  [v5[5] cancel];

  _Block_object_dispose(&v4, 8);
}

- (void)submitWiFiQualityTileLoadForKey:(id)key eTag:(id)tag requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion
{
  keyCopy = key;
  idCopy = id;
  completionCopy = completion;
  queueCopy = queue;
  tokenCopy = token;
  tagCopy = tag;
  v18 = [GEOWiFiQualityTileRequester alloc];
  v19 = keyCopy;
  v20 = tagCopy;
  v21 = tokenCopy;
  if (v18)
  {
    block.receiver = v18;
    block.super_class = GEOWiFiQualityTileRequester;
    v22 = [(GEOWiFiQualityServiceLocalProxy *)&block init];
    v18 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_inflightRequests, key);
      objc_storeStrong(&v18->_eTag, tag);
      objc_storeStrong(&v18->_auditToken, token);
    }
  }

  v64 = _NSConcreteStackBlock;
  v65 = 3221225472;
  v66 = sub_1000259B4;
  v67 = &unk_100083A30;
  selfCopy = self;
  v69 = idCopy;
  v70 = v18;
  v23 = v18;
  geo_isolate_sync();
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000259C4;
  v60[3] = &unk_1000822C8;
  v60[4] = self;
  v61 = v69;
  v62 = v19;
  v63 = completionCopy;
  v24 = v19;
  v25 = completionCopy;
  v26 = v69;
  v27 = queueCopy;
  v28 = v60;
  if (v23)
  {
    v29 = GEOURLString();
    if ([v29 length])
    {
      v52 = v27;
      v53 = v28;
      v55 = v26;
      v57 = v25;
      v59 = v24;
      v30 = [v28 copy];
      completion = v23->_completion;
      v23->_completion = v30;

      v32 = [NSMutableDictionary dictionaryWithCapacity:2];
      [v32 setObject:v23->_tileKey forKey:@"X-tilekey"];
      if (GEOConfigGetBOOL())
      {
        v33 = +[GEOPlatform sharedPlatform];
        osAndBuildVersion = [v33 osAndBuildVersion];

        [v32 setObject:osAndBuildVersion forKey:@"X-os-version"];
      }

      requestKind = [objc_opt_class() requestKind];
      v36 = +[GEORequestCounter sharedCounter];
      v37 = [v36 requestCounterTicketForType:requestKind auditToken:v23->_auditToken traits:0];

      if (GEOConfigGetBOOL())
      {
        v38 = 0;
      }

      else
      {
        v38 = 16;
      }

      if (GEOConfigGetBOOL())
      {
        v38 |= 0x20uLL;
      }

      if (GEOConfigGetBOOL())
      {
        v39 = v38 | 2;
      }

      else
      {
        v39 = v38;
      }

      v40 = [GEODataRequest alloc];
      v41 = [NSURL URLWithString:v29];
      auditToken = v23->_auditToken;
      GEOConfigGetDouble();
      v44 = v43;
      v45 = [v32 copy];
      v46 = [v40 initWithKind:requestKind URL:v41 auditToken:auditToken timeoutInterval:v45 additionalHTTPHeaders:0 bodyData:0 userAgent:v44 entityTag:v23->_eTag cachedData:0 requestCounterTicket:v37 multipathServiceType:0 multipathAlternatePort:0 backgroundSessionIdentifier:0 throttleToken:0 options:v39];

      v47 = +[GEODataURLSession sharedDataURLSession];
      v27 = v52;
      v48 = [v47 taskWithRequest:v46 delegate:v23 delegateQueue:v52];
      task = v23->_task;
      v23->_task = v48;

      [(GEODataURLSessionTask *)v23->_task start];
      v25 = v57;
      v24 = v59;
      v28 = v53;
      v26 = v55;
    }

    else
    {
      v50 = [NSError GEOErrorWithCode:-4 reason:@"No URL in manifest for WiFi tile service"];
      block.receiver = _NSConcreteStackBlock;
      block.super_class = 3221225472;
      v72 = sub_100036A78;
      v73 = &unk_100083BC0;
      v51 = v28;
      v74 = v50;
      v75 = v51;
      v32 = v50;
      dispatch_async(v27, &block);

      v37 = v75;
    }
  }
}

- (void)submitWiFiQualityServiceRequest:(id)request requestId:(id)id auditToken:(id)token completionQueue:(id)queue completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queueCopy = queue;
  tokenCopy = token;
  requestCopy = request;
  v17 = [GEOWiFiQualityServiceRequester alloc];
  v18 = requestCopy;
  v19 = tokenCopy;
  if (v17)
  {
    v41.receiver = v17;
    v41.super_class = GEOWiFiQualityServiceRequester;
    v20 = [(GEOWiFiQualityServiceLocalProxy *)&v41 init];
    v17 = v20;
    if (v20)
    {
      objc_storeStrong(&v20->_inflightRequests, request);
      objc_storeStrong(&v17->_token, token);
    }
  }

  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_100025DAC;
  v37 = &unk_100083A30;
  selfCopy = self;
  v39 = idCopy;
  v40 = v17;
  v21 = v17;
  geo_isolate_sync();
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100025DBC;
  v31[3] = &unk_1000822A0;
  v31[4] = self;
  v32 = v39;
  v33 = completionCopy;
  v30 = completionCopy;
  v22 = v39;
  v23 = queueCopy;
  v24 = v31;
  if (v21)
  {
    v25 = objc_alloc_init(GEOWiFiQualityServiceDataRequestConfig);
    request = v21->_request;
    v27 = +[GEOMapService sharedService];
    defaultTraits = [v27 defaultTraits];
    token = v21->_token;
    v41.receiver = _NSConcreteStackBlock;
    v41.super_class = 3221225472;
    v42 = sub_10003AE0C;
    v43 = &unk_100082DE0;
    v44 = v23;
    v45 = v24;
    [(GEOWiFiQualityServiceRequester *)v21 _startWithRequest:request traits:defaultTraits auditToken:token config:v25 throttleToken:0 options:0 completionHandler:&v41];
  }
}

- (GEOWiFiQualityServiceLocalProxy)init
{
  v8.receiver = self;
  v8.super_class = GEOWiFiQualityServiceLocalProxy;
  v2 = [(GEOWiFiQualityServiceLocalProxy *)&v8 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:1];
    inflightRequests = v2->_inflightRequests;
    v2->_inflightRequests = v3;

    v5 = geo_isolater_create();
    inflightIsolater = v2->_inflightIsolater;
    v2->_inflightIsolater = v5;
  }

  return v2;
}

@end