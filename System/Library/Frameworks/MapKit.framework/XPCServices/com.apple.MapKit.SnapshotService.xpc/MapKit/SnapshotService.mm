@interface SnapshotService
- (BOOL)hasEnoughPixelsForRequest:(int64_t)request;
- (SnapshotService)init;
- (id)_nextSnapshotRequest;
- (int64_t)pixelsForRequest:(id)request;
- (void)_cleanupForRequest:(id)request;
- (void)_startNextSnapshotterIfPossible:(id)possible;
- (void)cancelSnapshotForConnection:(id)connection;
- (void)requestIconWithStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler;
- (void)requestSnapshotWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation SnapshotService

- (void)requestIconWithStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = objc_alloc_init(VKIconManager);
    v13 = v11;
    if (size > 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = qword_1000040E8[size];
    }

    *&v12 = scale;
    v15 = [v11 imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:v14 sizeGroup:0 modifiers:v12];
    v16 = v15;
    if (v15)
    {
      v17 = CGImageRetain([v15 image]);
      if (v17)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v18 = qword_10000CAE0;
        v27 = qword_10000CAE0;
        if (!qword_10000CAE0)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10000150C;
          v23[3] = &unk_100008370;
          v23[4] = &v24;
          sub_10000150C(v23);
          v18 = v25[3];
        }

        v19 = v18;
        _Block_object_dispose(&v24, 8);
        v20 = [v18 alloc];
        [v16 contentScale];
        v22 = [v20 initWithCGImage:v17 scale:0 orientation:v21];
      }

      else
      {
        v22 = 0;
      }

      CGImageRelease(v17);
      handlerCopy[2](handlerCopy, v22);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)requestSnapshotWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = sub_100000E38();
  signpostId = [optionsCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpostId;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RequestSnapshotWithOptions", &unk_1000050CB, buf, 2u);
    }
  }

  v11 = +[NSXPCConnection currentConnection];
  homeQueue = self->_homeQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100001834;
  v16[3] = &unk_100008410;
  v16[4] = self;
  v17 = v11;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = optionsCopy;
  v15 = v11;
  dispatch_async(homeQueue, v16);
}

- (void)_startNextSnapshotterIfPossible:(id)possible
{
  possibleCopy = possible;
  [(NSLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_pendingSnapshotRequests count])
  {
    while (1)
    {
      v4 = [(NSMutableDictionary *)self->_requestIdToSnapshotter count];
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v5 = qword_10000CAC8;
      v56 = qword_10000CAC8;
      if (!qword_10000CAC8)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100002514;
        *&buf[24] = &unk_100008370;
        v58 = &v53;
        v6 = sub_100002564();
        v7 = dlsym(v6, "MapKitConfig_SnapshotServiceQueueWidth");
        *(*(v58 + 1) + 24) = v7;
        qword_10000CAC8 = *(*(v58 + 1) + 24);
        v5 = v54[3];
      }

      _Block_object_dispose(&v53, 8);
      if (!v5)
      {
        v45 = dlerror();
        abort_report_np("%s", v45);
        __break(1u);
      }

      if (v4 >= GEOConfigGetUInteger())
      {
        goto LABEL_41;
      }

      _nextSnapshotRequest = [(SnapshotService *)self _nextSnapshotRequest];
      if (!_nextSnapshotRequest)
      {
        v43 = sub_100000E38();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "All pending snapshots are waiting on other snapshots to complete trying again as soon as the current snapshot(s) are finished.", buf, 2u);
        }

        _nextSnapshotRequest = 0;
        goto LABEL_40;
      }

      v9 = [(SnapshotService *)self pixelsForRequest:_nextSnapshotRequest];
      if ([(NSMutableDictionary *)self->_requestIdToSnapshotter count]&& ![(SnapshotService *)self hasEnoughPixelsForRequest:v9])
      {
        v43 = sub_100000E38();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          requestId = [_nextSnapshotRequest requestId];
          *buf = 134349056;
          *&buf[4] = requestId;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Not enough memory to take snapshot for request %{public}llu. Trying again as soon as the current snapshot(s) are finished.", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      v10 = sub_100000E38();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        requestId2 = [_nextSnapshotRequest requestId];
        processIdentifier = [_nextSnapshotRequest processIdentifier];
        *buf = 134349312;
        *&buf[4] = requestId2;
        *&buf[12] = 1024;
        *&buf[14] = processIdentifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Starting snapshot request %{public}llu for process %d", buf, 0x12u);
      }

      [(NSMutableArray *)self->_pendingSnapshotRequests removeObject:_nextSnapshotRequest];
      self->_lastRequestPID = [_nextSnapshotRequest processIdentifier];
      self->_usedPixels += v9;
      proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_nextSnapshotRequest requestId]);
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [_nextSnapshotRequest processIdentifier]);
      [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot setObject:v14 forKey:v15];

      completionHandler = [_nextSnapshotRequest completionHandler];
      connection = [_nextSnapshotRequest connection];
      options = [_nextSnapshotRequest options];
      _auditToken = [options _auditToken];

      if (!_auditToken)
      {
        goto LABEL_17;
      }

      v20 = [connection valueForEntitlement:@"com.apple.private.network.socket-delegate"];
      v21 = v20;
      if (!v20 || ([v20 BOOLValue] & 1) == 0)
      {
        break;
      }

      options2 = [_nextSnapshotRequest options];
      _auditToken2 = [options2 _auditToken];

      if (!_auditToken2)
      {
        goto LABEL_17;
      }

LABEL_20:
      v25 = [VKMapSnapshotCreator alloc];
      options3 = [_nextSnapshotRequest options];
      v27 = [v25 initWithSnapshotOptions:options3 homeQueue:self->_homeQueue auditToken:_auditToken2];

      if (v27)
      {
        options4 = [_nextSnapshotRequest options];
        _customFeatureAnnotations = [options4 _customFeatureAnnotations];
        v30 = [_customFeatureAnnotations count] == 0;

        if (!v30)
        {
          v31 = objc_alloc_init(NSClassFromString(@"_MKCustomFeatureStore"));
          options5 = [_nextSnapshotRequest options];
          _customFeatureAnnotations2 = [options5 _customFeatureAnnotations];
          [v31 addAnnotations:_customFeatureAnnotations2];

          [v27 addCustomFeatureDataSource:v31];
        }

        v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_nextSnapshotRequest requestId]);
        [(NSMutableDictionary *)self->_requestIdToSnapshotter setObject:v27 forKey:v34];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = sub_100002230;
        v58 = sub_100002240;
        v59 = v27;
        [v59 setClearFontCache:1];
        v35 = *(*&buf[8] + 40);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100002248;
        v47[3] = &unk_1000083E8;
        v47[4] = self;
        v48 = connection;
        v36 = v34;
        v49 = v36;
        v50 = _nextSnapshotRequest;
        v52 = buf;
        v51 = completionHandler;
        [v35 renderSnapshot:v47];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v37 = sub_100000E38();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "Invalid MKMapSnapshotOptions", buf, 2u);
        }

        if (completionHandler)
        {
          options6 = [_nextSnapshotRequest options];
          v39 = [NSString stringWithFormat:@"Invalid MKMapSnapshotOptions: %@.", options6];

          v40 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v39;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          v60 = NSLocalizedFailureReasonErrorKey;
          v61 = v39;
          v41 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v42 = [NSError errorWithDomain:@"MKErrorDomain" code:1 userInfo:v41];
          (completionHandler)[2](completionHandler, 0, v42);
          if (connection)
          {
            [(NSMapTable *)self->_connectionToSnapshotRequest removeObjectForKey:connection];
          }
        }

        [(SnapshotService *)self _cleanupForRequest:_nextSnapshotRequest];
      }

      if (![(NSMutableArray *)self->_pendingSnapshotRequests count])
      {
        goto LABEL_41;
      }
    }

LABEL_17:
    memset(buf, 0, sizeof(buf));
    if (connection)
    {
      objc_msgSend_auditToken(connection);
    }

    v24 = [NSData dataWithBytes:buf length:32];
    _auditToken2 = [[GEOApplicationAuditToken alloc] initWithAuditTokenData:v24];

    goto LABEL_20;
  }

LABEL_41:
  [(NSLock *)self->_lock unlock];
}

- (void)_cleanupForRequest:(id)request
{
  requestCopy = request;
  self->_usedPixels -= [(SnapshotService *)self pixelsForRequest:requestCopy];
  proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
  processIdentifier = [requestCopy processIdentifier];

  v7 = [NSNumber numberWithInt:processIdentifier];
  [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot removeObjectForKey:v7];
}

- (id)_nextSnapshotRequest
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v3 = qword_10000CAD0;
  v28 = qword_10000CAD0;
  if (!qword_10000CAD0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002B18;
    v30 = &unk_100008370;
    v31 = &v25;
    v4 = sub_100002564();
    v5 = dlsym(v4, "MapKitConfig_SnapshotServicePerProcessSerializationEnabled");
    *(v31[1] + 24) = v5;
    qword_10000CAD0 = *(v31[1] + 24);
    v3 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v3)
  {
    v24 = dlerror();
    abort_report_np("%s", v24);
  }

  BOOL = GEOConfigGetBOOL();
  pendingSnapshotRequests = self->_pendingSnapshotRequests;
  if (BOOL)
  {
    if ([(NSMutableArray *)pendingSnapshotRequests count])
    {
      v8 = 0;
      while (1)
      {
        v9 = [(NSMutableArray *)self->_pendingSnapshotRequests objectAtIndex:v8];
        options = [v9 options];
        _snapshotServiceSerialPerProcess = [options _snapshotServiceSerialPerProcess];

        if (!_snapshotServiceSerialPerProcess)
        {
          break;
        }

        proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
        v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 processIdentifier]);
        v14 = [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot objectForKey:v13];
        LOBYTE(proccessIdToPendingSerialSnapshot) = v14 == 0;

        if (proccessIdToPendingSerialSnapshot)
        {
          break;
        }

        v15 = self->_proccessIdToPendingSerialSnapshot;
        v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 processIdentifier]);
        v17 = [(NSMutableDictionary *)v15 objectForKey:v16];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        v19 = sub_100000E38();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          requestId = [v9 requestId];
          processIdentifier = [v9 processIdentifier];
          *buf = 134218496;
          *&buf[4] = requestId;
          *&buf[12] = 2048;
          *&buf[14] = processIdentifier;
          *&buf[22] = 2048;
          v30 = unsignedIntegerValue;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Skipping request %llu from process %llu due to per process serialization waiting on request %llu.", buf, 0x20u);
        }

        if (++v8 >= [(NSMutableArray *)self->_pendingSnapshotRequests count])
        {
          goto LABEL_12;
        }
      }

      firstObject = v9;
    }

    else
    {
LABEL_12:
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [(NSMutableArray *)pendingSnapshotRequests firstObject];
  }

  return firstObject;
}

- (void)cancelSnapshotForConnection:(id)connection
{
  connectionCopy = connection;
  homeQueue = self->_homeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002C00;
  v7[3] = &unk_1000083C0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(homeQueue, v7);
}

- (BOOL)hasEnoughPixelsForRequest:(int64_t)request
{
  usedPixels = self->_usedPixels;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = qword_10000CAD8;
  v13 = qword_10000CAD8;
  if (!qword_10000CAD8)
  {
    v6 = sub_100002564();
    v11[3] = dlsym(v6, "MapKitConfig_SnapshotServiceMaxPixels");
    qword_10000CAD8 = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return usedPixels + request <= GEOConfigGetInteger();
}

- (int64_t)pixelsForRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  [options scale];
  v6 = v5;
  options2 = [requestCopy options];
  [options2 size];
  v9 = v6 * v8;
  options3 = [requestCopy options];

  [options3 size];
  v12 = llround(v9 * v11);

  return v12;
}

- (SnapshotService)init
{
  v19.receiver = self;
  v19.super_class = SnapshotService;
  v2 = [(SnapshotService *)&v19 init];
  if (v2)
  {
    sub_100002564();
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:5];
    connectionToSnapshotRequest = v2->_connectionToSnapshotRequest;
    v2->_connectionToSnapshotRequest = v5;

    v7 = objc_alloc_init(NSMutableArray);
    pendingSnapshotRequests = v2->_pendingSnapshotRequests;
    v2->_pendingSnapshotRequests = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    requestIdToSnapshotter = v2->_requestIdToSnapshotter;
    v2->_requestIdToSnapshotter = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    proccessIdToPendingSerialSnapshot = v2->_proccessIdToPendingSerialSnapshot;
    v2->_proccessIdToPendingSerialSnapshot = v11;

    v2->_requestCounter = 0;
    v2->_lastRequestPID = 0;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v15 = dispatch_queue_create("com.apple.MapKit.SnapshotService.homeQueue", v14);
    homeQueue = v2->_homeQueue;
    v2->_homeQueue = v15;

    [GEOMapService setShouldResolveAttribution:0];
    v17 = v2;
  }

  return v2;
}

@end