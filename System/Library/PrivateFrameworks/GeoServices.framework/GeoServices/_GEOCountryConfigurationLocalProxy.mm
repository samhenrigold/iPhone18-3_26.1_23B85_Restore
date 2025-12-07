@interface _GEOCountryConfigurationLocalProxy
- (BOOL)_checkThrottlerOrScheduleUpdate:(id *)update;
- (_GEOCountryConfigurationLocalProxy)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (id)_buildNetworkSignature;
- (id)_getCachedCountryInfoForSource:(unsigned int)source;
- (void)_callCompletionHandler:(id)handler;
- (void)_deleteCacheForSource:(unsigned int)source;
- (void)_determineGeoIPCountryCode:(id)code completion:(id)completion;
- (void)_determineGeoIPCountryCodeLocal:(id)local;
- (void)_determineRegulatoryDomain:(id)domain;
- (void)_determineRegulatoryDomainSync:(id)sync;
- (void)_getNetworkSignature:(id)signature;
- (void)_pickNewCountryCode;
- (void)_postNotificationsForOldInfo:(id)info newInfo:(id)newInfo;
- (void)_reachabilityChanged:(id)changed;
- (void)_regulatoryDomainUpdated;
- (void)_scheduleUpdate:(double)update source:(unsigned int)source;
- (void)_updateCachedCountryInfo:(id)info;
- (void)_updateCountryCode:(unsigned int)code;
- (void)_withCache:(id)cache;
- (void)dealloc;
- (void)fetchGEOIPCountryCode:(id)code auditToken:(id)token callback:(id)callback;
- (void)updateCountryCodeWithCallbackQueue:(id)queue callback:(id)callback;
@end

@implementation _GEOCountryConfigurationLocalProxy

- (void)fetchGEOIPCountryCode:(id)code auditToken:(id)token callback:(id)callback
{
  codeCopy = code;
  tokenCopy = token;
  callbackCopy = callback;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003335C;
  v15[3] = &unk_100083390;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = codeCopy;
  v18 = callbackCopy;
  v12 = callbackCopy;
  v13 = codeCopy;
  v14 = tokenCopy;
  dispatch_async(queue, v15);
}

- (void)_callCompletionHandler:(id)handler
{
  handlerCopy = handler;
  callbackQueue = self->_callbackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033634;
  v7[3] = &unk_100083940;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(callbackQueue, v7);
}

- (void)updateCountryCodeWithCallbackQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  v7 = objc_retainBlock(callback);
  callback = self->_callback;
  self->_callback = v7;

  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = queueCopy;
  v10 = queueCopy;

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033704;
  block[3] = &unk_1000838C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_postNotificationsForOldInfo:(id)info newInfo:(id)newInfo
{
  newInfoCopy = newInfo;
  infoCopy = info;
  v8 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Country code changed. Informing delegate", buf, 2u);
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033978;
  block[3] = &unk_100083940;
  block[4] = self;
  v10 = newInfoCopy;
  v23 = v10;
  dispatch_async(delegateQueue, block);
  notify_post(GEOCountryConfigurationCountryCodeChangedDarwinNotification);
  v11 = GEOConfigGetDictionary();
  countryCode = [infoCopy countryCode];

  v13 = [v11 objectForKeyedSubscript:countryCode];

  countryCode2 = [v10 countryCode];
  v15 = [v11 objectForKeyedSubscript:countryCode2];

  if (v13 && v15)
  {
    if ([v15 isEqualToDictionary:v13])
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = v13 == 0;
    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v16 = 0;
      v17 = v13 == 0;
    }

    if (v17 && !v16)
    {
      goto LABEL_17;
    }
  }

  v19 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Country-specific networkDefaults changed. Informing delegate", buf, 2u);
  }

  v20 = self->_delegateQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000339CC;
  v21[3] = &unk_1000838C8;
  v21[4] = self;
  dispatch_async(v20, v21);
  notify_post(kCountryProvidersChangedDarwinNotification);
LABEL_17:
}

- (void)_pickNewCountryCode
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100033ED4;
  v27 = sub_100033EE4;
  v28 = 0;
  if (GEOConfigGetBOOL())
  {
    v3 = GEOConfigGetString();
    if (_GEO_validateCountryCode())
    {
      v4 = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Overriding country code to '%{private}@'", &buf, 0xCu);
      }

      v5 = [[_GEOCountryConfigurationInfo alloc] initWithCountryCode:v3 source:258];
      v6 = v24[5];
      v24[5] = v5;
    }
  }

  if (!v24[5])
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100033EEC;
    v22[3] = &unk_100082AB0;
    v22[4] = &v23;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v22];
  }

  v7 = +[_GEOCountryConfigurationInfo get];
  v8 = v24[5];
  if (!v8 || ([v8 countryCode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length") == 0, v9, v10))
  {
    v14 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      countryCode = [v24[5] countryCode];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = countryCode;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Country code '%{public}@' is not a valid ISO 3166-1 alpha-2 country code. Ignoring...", &buf, 0xCu);
    }

    v16 = [NSMutableDictionary dictionaryWithObject:@"Received non-ISO 3166-1 alpha-2 country code" forKey:kCFErrorDescriptionKey];
    countryCode2 = [v24[5] countryCode];
    v18 = countryCode2 == 0;

    if (!v18)
    {
      countryCode3 = [v24[5] countryCode];
      [v16 setObject:countryCode3 forKey:@"Country Code"];
    }

    v20 = [NSError GEOErrorWithCode:-14 userInfo:v16];
    [(_GEOCountryConfigurationLocalProxy *)self _callCompletionHandler:v20];
  }

  else
  {
    if (([v24[5] isEqual:v7] & 1) == 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v30 = 0x3032000000;
      v31 = sub_100033ED4;
      v32 = sub_100033EE4;
      v33 = 0;
      v21 = v7;
      v11 = _GEOConfigAddBlockListenerForKey();
      v12 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v11;

      _Block_object_dispose(&buf, 8);
    }

    [v24[5] set];
    v13 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Finished updating country configuration. Calling callback.", &buf, 2u);
    }

    [(_GEOCountryConfigurationLocalProxy *)self _callCompletionHandler:0];
  }

  _Block_object_dispose(&v23, 8);
}

- (void)_updateCountryCode:(unsigned int)code
{
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
    v6 = self->_scheduledUpdateTimer;
    self->_scheduledUpdateTimer = 0;
  }

  +[NSMutableArray array];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000343B0;
  v7 = v20[3] = &unk_100082A88;
  v21 = v7;
  selfCopy = self;
  v8 = objc_retainBlock(v20);
  v9 = v8;
  switch(code)
  {
    case 6u:
      goto LABEL_6;
    case 4u:
LABEL_7:
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100034558;
      v15 = &unk_100083BC0;
      selfCopy2 = self;
      v17 = v9;
      v11 = objc_retainBlock(&v12);
      [v7 addObject:{v11, v12, v13, v14, v15, selfCopy2}];

      break;
    case 0u:
LABEL_6:
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10003454C;
      v18[3] = &unk_100083BC0;
      v18[4] = self;
      v19 = v8;
      v10 = objc_retainBlock(v18);
      [v7 addObject:v10];

      if ((code | 4) == 4)
      {
        goto LABEL_7;
      }

      break;
  }

  v9[2](v9, 0, 0, 0);
}

- (BOOL)_checkThrottlerOrScheduleUpdate:(id *)update
{
  v5 = +[GEOApplicationAuditToken currentProcessAuditToken];
  v6 = +[GEODataRequestThrottler sharedThrottler];
  v7 = [v6 allowRequest:1 forClient:v5 throttlerToken:0 error:update];

  if ((v7 & 1) == 0)
  {
    v13 = 0.0;
    v12 = 0;
    v8 = +[GEODataRequestThrottler sharedThrottler];
    [v8 getInfoForRequest:1 client:v5 timeUntilNextReset:&v13 availableRequestCount:&v12];

    if (v13 > 0.0)
    {
      [(_GEOCountryConfigurationLocalProxy *)self _scheduleUpdate:4 source:v13];
    }

    v9 = GEOGetCountryConfigurationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *update;
      *buf = 134218242;
      v15 = v13;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Refusing to update country code again, will try again in %f seconds: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)_determineGeoIPCountryCodeLocal:(id)local
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000347E8;
  v9[3] = &unk_100082A10;
  v9[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034924;
  v6[3] = &unk_100082A60;
  localCopy = local;
  v8 = objc_retainBlock(v9);
  v6[4] = self;
  v4 = localCopy;
  v5 = v8;
  [(_GEOCountryConfigurationLocalProxy *)self _getNetworkSignature:v6];
}

- (void)_determineGeoIPCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  geoIPCompletions = self->_geoIPCompletions;
  if (geoIPCompletions)
  {
    completionCopy = completion;
    v8 = [completionCopy copy];

    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)geoIPCompletions addObject:v9];
  }

  else
  {
    completionCopy2 = completion;
    v11 = +[NSMutableArray array];
    v12 = self->_geoIPCompletions;
    self->_geoIPCompletions = v11;

    v13 = self->_geoIPCompletions;
    v14 = [completionCopy2 copy];

    v15 = objc_retainBlock(v14);
    [(NSMutableArray *)v13 addObject:v15];

    [(_GEOCountryConfigurationLocalProxy *)self _determineGeoIPCountryCodeLocal:codeCopy];
  }
}

- (void)_determineRegulatoryDomainSync:(id)sync
{
  syncCopy = sync;
  if (sub_100001910(0))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v5 = qword_1000960B0;
    v22 = qword_1000960B0;
    if (!qword_1000960B0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v24 = sub_1000353F0;
      v25 = &unk_1000830D0;
      v26 = &v19;
      sub_100001910(0);
      Class = objc_getClass("RDEstimate");
      *(v26[1] + 24) = Class;
      qword_1000960B0 = *(v26[1] + 24);
      v5 = v20[3];
    }

    v7 = v5;
    _Block_object_dispose(&v19, 8);
    currentEstimates = [v5 currentEstimates];
    if ([currentEstimates count] == 1)
    {
      firstObject = [currentEstimates firstObject];
      countryCode = [firstObject countryCode];
      if (([countryCode isEqual:@"XZ"] & 1) == 0)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v11 = qword_1000960B8;
        v22 = qword_1000960B8;
        if (!qword_1000960B8)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v24 = sub_100035444;
          v25 = &unk_1000830D0;
          v26 = &v19;
          v12 = sub_100035494();
          v13 = dlsym(v12, "kRDPriorityWiFiAP");
          *(v26[1] + 24) = v13;
          qword_1000960B8 = *(v26[1] + 24);
          v11 = v20[3];
        }

        _Block_object_dispose(&v19, 8);
        if (!v11)
        {
          v18 = dlerror();
          abort_report_np("%s", v18);
          __break(1u);
        }

        if ([firstObject priorityIsAtLeast:*v11])
        {
          v14 = [[_GEOCountryConfigurationInfo alloc] initWithCountryCode:countryCode source:262];
          [(_GEOCountryConfigurationLocalProxy *)self _updateCachedCountryInfo:v14];
          syncCopy[2](syncCopy, 262, countryCode, 0);

LABEL_20:
          goto LABEL_21;
        }
      }

      v17 = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"XZ";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "current RDEstimate < kRDPriorityWiFiAP or == %@, ignoring", &buf, 0xCu);
      }
    }

    else
    {
      firstObject = GEOGetCountryConfigurationLog();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        v16 = [currentEstimates count];
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v16;
        _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "current RDEstimate count == %d, ignoring", &buf, 8u);
      }
    }

    [(_GEOCountryConfigurationLocalProxy *)self _deleteCacheForSource:262];
    syncCopy[2](syncCopy, 262, 0, 0);
    goto LABEL_20;
  }

  v15 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RegulatoryDomain.framework is not available", &buf, 2u);
  }

  syncCopy[2](syncCopy, 262, 0, 0);
LABEL_21:
}

- (void)_determineRegulatoryDomain:(id)domain
{
  domainCopy = domain;
  qos_class_self();
  global_queue = geo_get_global_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035614;
  v7[3] = &unk_100083BC0;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(global_queue, v7);
}

- (void)_scheduleUpdate:(double)update source:(unsigned int)source
{
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
    v6 = self->_scheduledUpdateTimer;
    self->_scheduledUpdateTimer = 0;
  }

  v7 = geo_dispatch_timer_create_on_queue();
  v8 = self->_scheduledUpdateTimer;
  self->_scheduledUpdateTimer = v7;

  dispatch_activate(self->_scheduledUpdateTimer);
}

- (void)_reachabilityChanged:(id)changed
{
  changedCopy = changed;
  v5 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v9 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Reachability changed: %{private}@", buf, 0xCu);
  }

  if (GEOConfigGetBOOL())
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000358AC;
    block[3] = &unk_1000838C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_regulatoryDomainUpdated
{
  v3 = GEOGetCountryConfigurationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Regulatory Domain updated. Scheduling country code update", v4, 2u);
  }

  [(_GEOCountryConfigurationLocalProxy *)self _scheduleUpdate:0 source:0.5];
}

- (void)_deleteCacheForSource:(unsigned int)source
{
  v4 = sub_1000340A0(source);
  if ([v4 length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100035AE8;
    v5[3] = &unk_1000829C0;
    v6 = v4;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v5];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
  }
}

- (void)_updateCachedCountryInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = sub_1000340A0([infoCopy source]);
    if ([v6 length])
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100035C9C;
      v7[3] = &unk_100082998;
      v8 = v6;
      v9 = v5;
      [(_GEOCountryConfigurationLocalProxy *)self _withCache:v7];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
    }
  }
}

- (id)_getCachedCountryInfoForSource:(unsigned int)source
{
  v4 = sub_1000340A0(source);
  if ([v4 length])
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = sub_100033ED4;
    v14 = sub_100033EE4;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100035ECC;
    v7[3] = &unk_100082970;
    v9 = buf;
    v8 = v4;
    [(_GEOCountryConfigurationLocalProxy *)self _withCache:v7];
    v5 = *(v11 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: name.length > 0", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)_withCache:(id)cache
{
  cacheCopy = cache;
  v3 = cacheCopy;
  geo_isolate_sync();
}

- (id)_buildNetworkSignature
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[GEONetworkObserver sharedNetworkObserver];
  networkSignature = [v2 networkSignature];

  v4 = [networkSignature base64EncodedStringWithOptions:0];

  return v4;
}

- (void)_getNetworkSignature:(id)signature
{
  signatureCopy = signature;
  dispatch_assert_queue_V2(self->_queue);
  if (GEOConfigGetBOOL())
  {
    _buildNetworkSignature = [(_GEOCountryConfigurationLocalProxy *)self _buildNetworkSignature];
    signatureCopy[2](signatureCopy, _buildNetworkSignature);
  }

  else
  {
    signatureCopy[2](signatureCopy, 0);
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  scheduledUpdateTimer = self->_scheduledUpdateTimer;
  if (scheduledUpdateTimer)
  {
    dispatch_source_cancel(scheduledUpdateTimer);
  }

  regulatoryDomainListener = self->_regulatoryDomainListener;
  self->_regulatoryDomainListener = -1;
  if (regulatoryDomainListener != -1)
  {
    notify_cancel(regulatoryDomainListener);
  }

  v5 = +[GEONetworkObserver sharedNetworkObserver];
  [v5 removeNetworkReachableObserver:self];

  v6.receiver = self;
  v6.super_class = _GEOCountryConfigurationLocalProxy;
  [(_GEOCountryConfigurationLocalProxy *)&v6 dealloc];
}

- (_GEOCountryConfigurationLocalProxy)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = _GEOCountryConfigurationLocalProxy;
  v8 = [(_GEOCountryConfigurationLocalProxy *)&v26 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = geo_dispatch_queue_create();
  queue = v8->_queue;
  v8->_queue = v9;

  objc_storeWeak(&v8->_delegate, delegateCopy);
  objc_storeStrong(&v8->_delegateQueue, queue);
  v11 = geo_isolater_create();
  cacheIsolater = v8->_cacheIsolater;
  v8->_cacheIsolater = v11;

  v8->_regulatoryDomainListener = -1;
  objc_initWeak(&location, v8);
  if (!sub_100001910(0))
  {
LABEL_7:
    v22 = v8;
    geo_dispatch_async_qos();
    v19 = v22;

    objc_destroyWeak(&location);
LABEL_8:

    return v8;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v13 = qword_1000960A8;
  v35 = qword_1000960A8;
  if (!qword_1000960A8)
  {
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1000365B4;
    v30 = &unk_1000830D0;
    v31 = &v32;
    v14 = sub_100035494();
    v15 = dlsym(v14, "kRegulatoryDomainUpdateNotification");
    *(v31[1] + 24) = v15;
    qword_1000960A8 = *(v31[1] + 24);
    v13 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (v13)
  {
    v16 = *v13;
    uTF8String = [v16 UTF8String];
    v18 = v8->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100036604;
    handler[3] = &unk_100082928;
    objc_copyWeak(&v24, &location);
    notify_register_dispatch(uTF8String, &v8->_regulatoryDomainListener, v18, handler);

    objc_destroyWeak(&v24);
    goto LABEL_7;
  }

  v21 = dlerror();
  result = abort_report_np("%s", v21);
  __break(1u);
  return result;
}

@end