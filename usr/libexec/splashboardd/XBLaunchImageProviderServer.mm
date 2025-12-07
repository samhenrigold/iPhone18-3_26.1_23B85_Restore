@interface XBLaunchImageProviderServer
+ (id)sharedInstance;
- (XBLaunchImageProviderServer)init;
- (id)_transactionWorkForClient:(id)client;
- (unsigned)_onMain_createLaunchWindowForClient:(id)client withLaunchRequest:(id)request appInfo:(id)info captureInfo:(id *)captureInfo captureOptions:(int64_t)options error:(id *)error;
- (void)_queue_handleGetLaunchImage:(id)image forClient:(id)client;
- (void)_removeTransactionWorkForClient:(id)client;
- (void)_setTransactionWork:(id)work forClient:(id)client;
- (void)queue_clientAdded:(id)added;
- (void)queue_clientRemoved:(id)removed;
- (void)queue_handleMessage:(id)message client:(id)client;
- (void)run;
@end

@implementation XBLaunchImageProviderServer

+ (id)sharedInstance
{
  if (qword_100011438 != -1)
  {
    sub_100005F84();
  }

  v3 = qword_100011430;

  return v3;
}

- (XBLaunchImageProviderServer)init
{
  v8.receiver = self;
  v8.super_class = XBLaunchImageProviderServer;
  v2 = [(XBLaunchImageProviderServer *)&v8 initWithServiceName:XBApplicationLaunchImageServiceName];
  if (v2)
  {
    v3 = objc_alloc_init(_XBMemoryMonitor);
    memoryMonitor = v2->_memoryMonitor;
    v2->_memoryMonitor = v3;

    v2->_accessLock._os_unfair_lock_opaque = 0;
    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    accessLock_clientTransactionWorkMap = v2->_accessLock_clientTransactionWorkMap;
    v2->_accessLock_clientTransactionWorkMap = v5;
  }

  return v2;
}

- (void)run
{
  v3 = sub_100001248(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running", buf, 2u);
  }

  if (qword_100011440 != -1)
  {
    sub_100005F98();
  }

  queue = [(XBLaunchImageProviderServer *)self queue];
  dispatch_async(queue, &stru_10000C708);

  v5.receiver = self;
  v5.super_class = XBLaunchImageProviderServer;
  [(XBLaunchImageProviderServer *)&v5 run];
}

- (void)queue_handleMessage:(id)message client:(id)client
{
  xdict = message;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(xdict, XBLaunchImageProviderMessageKeyMessageType);
  if (int64 == 1)
  {
    [(XBLaunchImageProviderServer *)self _handlePreheat:xdict forClient:clientCopy];
  }

  else if (!int64)
  {
    [(XBLaunchImageProviderServer *)self _queue_handleGetLaunchImage:xdict forClient:clientCopy];
  }
}

- (void)queue_clientAdded:(id)added
{
  addedCopy = added;
  v5 = objc_alloc_init(XBLaunchImageClientTransactionWork);
  [(XBLaunchImageProviderServer *)self _setTransactionWork:v5 forClient:addedCopy];
}

- (void)queue_clientRemoved:(id)removed
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000045AC;
  block[3] = &unk_10000C758;
  block[4] = self;
  removedCopy = removed;
  v8 = dispatch_semaphore_create(0);
  v4 = v8;
  v5 = removedCopy;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  [(XBLaunchImageProviderServer *)self _removeTransactionWorkForClient:v5];
}

- (void)_queue_handleGetLaunchImage:(id)image forClient:(id)client
{
  imageCopy = image;
  clientCopy = client;
  dispatch_assert_queue_V2(*&self->BSBaseXPCServer_opaque[OBJC_IVAR___BSBaseXPCServer__queue]);
  xdict = imageCopy;
  v8 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v37 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  LODWORD(v9) = xpc_dictionary_get_BOOL(imageCopy, XBLaunchImageProviderMessageKeyCreateCaptureInfo);
  connection = [clientCopy connection];
  BSPIDForXPCConnection();
  v11 = BSProcessDescriptionForPID();

  v13 = sub_1000012D0(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [v8 bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Running image request from %{public}@ for %@", buf, 0x16u);
  }

  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = XBInvalidContextId;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = sub_100004D5C;
  v58 = sub_100004D6C;
  v59 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = sub_100004D5C;
  v51[4] = sub_100004D6C;
  v52 = 0;
  connection2 = [clientCopy connection];
  v16 = [BSAuditToken tokenFromXPCConnection:connection2];

  if ([v16 hasEntitlement:XBApplicationLaunchImageCaptureEntitlement])
  {
    goto LABEL_8;
  }

  if (v16)
  {
    objc_msgSend_realToken(v16);
  }

  else
  {
    memset(v55, 0, sizeof(v55));
  }

  v17 = BSAuditTokenRepresentsPlatformBinary();
  if (v17)
  {
LABEL_8:
    v18 = v9;
    if (v9)
    {
      LOBYTE(v9) = [v16 hasEntitlement:XBApplicationLaunchImageCaarCaptureEntitlement];
    }

    *v55 = 0;
    *&v55[8] = 0;
    pthread_dependency_init_np();
    Main = CFRunLoopGetMain();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004D74;
    block[3] = &unk_10000C780;
    v49 = v18;
    v50 = v9;
    v45 = v53;
    block[4] = self;
    v42 = clientCopy;
    v43 = v37;
    v9 = v8;
    v44 = v9;
    v46 = v51;
    v47 = buf;
    v48 = v55;
    CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
    v20 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v20);
    pthread_dependency_wait_np();
    memoryMonitor = self->_memoryMonitor;
    bundleIdentifier2 = [v9 bundleIdentifier];
    [(_XBMemoryMonitor *)memoryMonitor recordMemoryForBundleID:bundleIdentifier2];

    LOBYTE(v9) = v18;
  }

  else
  {
    v23 = sub_1000012D0(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10000604C(v11, v23);
    }

    v24 = [XBLaunchImageError alloc];
    bundleIdentifier3 = [v8 bundleIdentifier];
    v26 = [v24 initWithCode:10 bundleID:bundleIdentifier3 reason:@"The client is unentitled" fatal:0];
    v27 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v26;
  }

  v28 = [BSXPCReply replyForMessage:xdict];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100004E40;
  v39[3] = &unk_10000C7A8;
  v39[4] = v53;
  v39[5] = buf;
  v40 = v9;
  v39[6] = v51;
  [v28 sendReply:v39];
  v29 = *(*&buf[8] + 40);
  if (v29)
  {
    isFatal = [v29 isFatal];
    if (isFatal)
    {
      v34 = sub_1000012D0(isFatal);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        code = [*(*&buf[8] + 40) code];
        bundleIdentifier4 = [v8 bundleIdentifier];
        *v55 = 134218242;
        *&v55[4] = code;
        *&v55[12] = 2114;
        *&v55[14] = bundleIdentifier4;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "XBLaunchImageProviderServer encountered a fatal error with code: %ld during launch image generation for bundleID: %{public}@", v55, 0x16u);
      }

      exit(0);
    }

    v31 = sub_1000012D0(isFatal);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      code2 = [*(*&buf[8] + 40) code];
      bundleIdentifier5 = [v8 bundleIdentifier];
      *v55 = 134218242;
      *&v55[4] = code2;
      *&v55[12] = 2114;
      *&v55[14] = bundleIdentifier5;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "XBLaunchImageProviderServer encountered an error with code: %ld during launch image generation for bundleID: %{public}@", v55, 0x16u);
    }
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v53, 8);
}

- (unsigned)_onMain_createLaunchWindowForClient:(id)client withLaunchRequest:(id)request appInfo:(id)info captureInfo:(id *)captureInfo captureOptions:(int64_t)options error:(id *)error
{
  requestCopy = request;
  infoCopy = info;
  clientCopy = client;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v18 = sub_1000012D0(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v33 = 67109376;
    *v34 = qos_class_self();
    *&v34[4] = 1024;
    *&v34[6] = BSPthreadGetCurrentPriority();
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Running on main thread at QoS %d with priority %d.", &v33, 0xEu);
  }

  v19 = +[NSDate date];
  v20 = [(XBLaunchImageProviderServer *)self _transactionWorkForClient:clientCopy];

  contextWrapper = [v20 contextWrapper];
  if (!contextWrapper)
  {
    v22 = [XBLaunchImageContextWrapper contextWrapperForApplicationWithCompatibilityInfo:infoCopy launchRequest:requestCopy captureOptions:options];
    [v20 setContextWrapper:v22];
    if (!captureInfo)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22 = contextWrapper;
  [contextWrapper updateLaunchRequest:requestCopy];
  if (captureInfo)
  {
LABEL_5:
    *captureInfo = [v22 captureInformation];
  }

LABEL_6:
  LODWORD(contextID) = XBInvalidContextId;
  error = [v22 error];
  if (error || (v28 = [v22 contextID]) == 0 || contextID == v28)
  {
    [v22 invalidate];
    v25 = sub_1000012D0([v20 setContextWrapper:0]);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [infoCopy bundleIdentifier];
      v33 = 138412546;
      *v34 = bundleIdentifier;
      *&v34[8] = 2112;
      v35 = *&error;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] launch image generation failed with error: %@", &v33, 0x16u);
    }

    if (error && error)
    {
      v27 = error;
      *error = error;
    }
  }

  else
  {
    contextID = [v22 contextID];
    v29 = sub_1000012D0(contextID);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [infoCopy bundleIdentifier];
      [v19 timeIntervalSinceNow];
      v33 = 138412546;
      *v34 = bundleIdentifier2;
      *&v34[8] = 2048;
      v35 = -v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] launch image generation completed after %.3fs", &v33, 0x16u);
    }
  }

  return contextID;
}

- (id)_transactionWorkForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMapTable *)self->_accessLock_clientTransactionWorkMap objectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (void)_setTransactionWork:(id)work forClient:(id)client
{
  clientCopy = client;
  workCopy = work;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMapTable *)self->_accessLock_clientTransactionWorkMap setObject:workCopy forKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)_removeTransactionWorkForClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMapTable *)self->_accessLock_clientTransactionWorkMap removeObjectForKey:clientCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

@end