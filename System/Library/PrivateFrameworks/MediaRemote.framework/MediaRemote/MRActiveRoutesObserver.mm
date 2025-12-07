@interface MRActiveRoutesObserver
+ (id)_computeActiveRouteIDsFromEndpoint:(id)endpoint localDeviceInfo:(id)info;
+ (void)fetchActiveEndpointOnQueue:(id)queue withCompletion:(id)completion;
+ (void)fetchActiveRouteIDsWithCompletion:(id)completion;
- (BOOL)isLocalDeviceAirPlayActive;
- (MRAVDistantEndpoint)activeEndpointSnapshot;
- (MRAVEndpoint)activeEndpoint;
- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)callback;
- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)callback isLocalDeviceAirplayActiveChangedCallback:(id)changedCallback;
- (MRActiveRoutesObserverOutputDeviceRemovedSnapshot)deviceRemovedSnapshot;
- (NSArray)activeRouteIDs;
- (void)_handleActiveSystemEndpointDidAddOutputDevice:(id)device;
- (void)_handleActiveSystemEndpointDidRemoveOutputDevice:(id)device;
- (void)_onWorkerQueue_reevaluateAPA;
- (void)_onWorkerQueue_reevaluateASE;
- (void)_onWorkerQueue_reevaluateWithEndpoint:(id)endpoint;
- (void)_reevaluateAPA;
- (void)_reevaluateASE;
- (void)_reevaluateWithEndpoint:(id)endpoint;
- (void)setActiveEndpoint:(id)endpoint;
- (void)setIsLocalDeviceAirPlayActive:(BOOL)active;
@end

@implementation MRActiveRoutesObserver

- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)callback
{
  callbackCopy = callback;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__MRActiveRoutesObserver_initWithActiveRouteIDsChangedCallback___block_invoke;
  v8[3] = &unk_1E769E878;
  v9 = callbackCopy;
  v5 = callbackCopy;
  v6 = [(MRActiveRoutesObserver *)self initWithActiveRouteIDsChangedCallback:v8 isLocalDeviceAirplayActiveChangedCallback:0];

  return v6;
}

uint64_t __64__MRActiveRoutesObserver_initWithActiveRouteIDsChangedCallback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MRActiveRoutesObserver)initWithActiveRouteIDsChangedCallback:(id)callback isLocalDeviceAirplayActiveChangedCallback:(id)changedCallback
{
  callbackCopy = callback;
  changedCallbackCopy = changedCallback;
  v15.receiver = self;
  v15.super_class = MRActiveRoutesObserver;
  v8 = [(MRActiveRoutesObserver *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(MRActiveRoutesObserver *)v8 setActiveRouteIDsChangedCallback:callbackCopy];
    [(MRActiveRoutesObserver *)v9 setIsLocalDeviceAirPlayActiveCallback:changedCallbackCopy];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.MRActiveRoutesObserver", v10);
    [(MRActiveRoutesObserver *)v9 setWorkerQueue:v11];

    [(MRActiveRoutesObserver *)v9 setDeviceRemovedWaitInterval:3.0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleActiveSystemEndpointDidChange_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__handleActiveDeviceInfoDidChange_ name:@"kMRActiveDeviceInfoDidChangeNotification" object:0];

    [(MRActiveRoutesObserver *)v9 _reevaluateASE];
    [(MRActiveRoutesObserver *)v9 _reevaluateAPA];
  }

  return v9;
}

+ (void)fetchActiveRouteIDsWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    [(MRActiveRoutesObserver *)a2 fetchActiveRouteIDsWithCompletion:self];
  }

  v6 = qos_class_self();
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion", uUIDString];
  v11 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v10;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke;
  v21[3] = &unk_1E76A3BB8;
  v22 = uUIDString;
  v23 = date;
  v25 = v6;
  v24 = completionCopy;
  v12 = completionCopy;
  v13 = date;
  v14 = uUIDString;
  v15 = MEMORY[0x1A58E3570](v21);
  v16 = dispatch_get_global_queue(v6, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_2;
  v18[3] = &unk_1E76A3BE0;
  v19 = v15;
  selfCopy = self;
  v17 = v15;
  [self fetchActiveEndpointOnQueue:v16 withCompletion:v18];
}

void __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E695DF00] date];
      [v7 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v21 = @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion";
      v22 = 2114;
      v23 = v6;
      v24 = 2112;
      v25 = v3;
      v26 = 2048;
      v27 = v8;
      v9 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v10 = v4;
      v11 = 42;
LABEL_6:
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v5)
  {
    v12 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138543874;
    v21 = @"MRActiveRoutesObserver.fetchActiveRouteIDsWithCompletion";
    v22 = 2114;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    v9 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v10 = v4;
    v11 = 32;
    goto LABEL_6;
  }

  v14 = dispatch_get_global_queue(*(a1 + 56), 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_29;
  v17[3] = &unk_1E769AB28;
  v15 = *(a1 + 48);
  v18 = v3;
  v19 = v15;
  v16 = v3;
  dispatch_async(v14, v17);
}

void __60__MRActiveRoutesObserver_fetchActiveRouteIDsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = +[MRDeviceInfoRequest localDeviceInfo];
  v5 = [v3 _computeActiveRouteIDsFromEndpoint:v4 localDeviceInfo:v6];

  (*(v2 + 16))(v2, v5);
}

+ (void)fetchActiveEndpointOnQueue:(id)queue withCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRActiveRoutesObserver fetchActiveEndpointOnQueue:a2 withCompletion:self];
  }

  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue", uUIDString];
  v13 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke;
  v27[3] = &unk_1E76A2708;
  v14 = uUIDString;
  v28 = v14;
  v15 = date;
  v29 = v15;
  v16 = queueCopy;
  v30 = v16;
  v17 = completionCopy;
  v31 = v17;
  v18 = MEMORY[0x1A58E3570](v27);
  v19 = +[MRUserSettings currentSettings];
  supportRoutingContinuity = [v19 supportRoutingContinuity];

  if (supportRoutingContinuity)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_2;
    v24[3] = &unk_1E76A3C08;
    v25 = v14;
    v26 = v18;
    MRAVEndpointResolveActiveSystemEndpointWithTimeout(v16, v24, 7.0);

    v21 = v25;
  }

  else
  {
    v22 = +[MRUserSettings currentSettings];
    supportTopologyHealing = [v22 supportTopologyHealing];

    if (supportTopologyHealing)
    {
      v21 = +[MRAVLocalEndpoint sharedSystemAudioLocalEndpoint];
      (v18)[2](v18, v21, 0);
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:132];
      (v18)[2](v18, 0, v21);
    }
  }
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_cold_1(a1, v6, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138543874;
      v22 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
      v23 = 2114;
      v24 = v12;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    if (!v5)
    {
      v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544130;
      v22 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
      v23 = 2114;
      v24 = v9;
      v25 = 2112;
      v26 = v5;
      v27 = 2048;
      v28 = v11;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_37;
  v18[3] = &unk_1E769AB28;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v19 = v5;
  v20 = v16;
  v17 = v5;
  dispatch_async(v15, v18);
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[MRRequestDetails alloc] initWithName:@"MRActiveRoutesObserver" requestID:*(a1 + 32) reason:@"MRActiveRoutesObserver"];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_3;
    v5[3] = &unk_1E769AB50;
    v7 = *(a1 + 40);
    v6 = v3;
    [v6 connectToExternalDeviceWithOptions:0 details:v4 completion:v5];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24];
    (*(*(a1 + 40) + 16))();
  }
}

- (NSArray)activeRouteIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeRouteIDs;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setActiveEndpoint:(id)endpoint
{
  v21 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [endpointCopy debugName];
    v19 = 138412290;
    v20 = debugName;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] ActiveEndpoint -> %@", &v19, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeEndpoint)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy name:@"MRAVEndpointDidAddOutputDeviceNotification" object:selfCopy->_activeEndpoint];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:selfCopy name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:selfCopy->_activeEndpoint];
  }

  objc_storeStrong(&selfCopy->_activeEndpoint, endpoint);
  if (selfCopy->_activeEndpoint)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:selfCopy selector:sel__handleActiveSystemEndpointDidAddOutputDevice_ name:@"MRAVEndpointDidAddOutputDeviceNotification" object:selfCopy->_activeEndpoint];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:selfCopy selector:sel__handleActiveSystemEndpointDidRemoveOutputDevice_ name:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:selfCopy->_activeEndpoint];
  }

  v13 = [MRAVDistantEndpoint alloc];
  descriptor = [endpointCopy descriptor];
  v15 = [(MRAVDistantEndpoint *)v13 initWithDescriptor:descriptor];
  activeEndpointSnapshot = selfCopy->_activeEndpointSnapshot;
  selfCopy->_activeEndpointSnapshot = v15;

  v17 = selfCopy->_activeEndpointSnapshot;
  v18 = _MRLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Init: %@", &v19, 0xCu);
  }

  objc_sync_exit(selfCopy);
  [(MRActiveRoutesObserver *)selfCopy _reevaluateWithEndpoint:v17];
}

- (MRAVEndpoint)activeEndpoint
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeEndpoint;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRAVDistantEndpoint)activeEndpointSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeEndpointSnapshot;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setIsLocalDeviceAirPlayActive:(BOOL)active
{
  activeCopy = active;
  v11 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (obj->_localDeviceAirPlayActive == activeCopy)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_localDeviceAirPlayActive = activeCopy;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      localDeviceAirPlayActive = obj->_localDeviceAirPlayActive;
      *buf = 67109120;
      v10 = localDeviceAirPlayActive;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] LocalDeviceAirPlayActive -> %u", buf, 8u);
    }

    objc_sync_exit(obj);
    isLocalDeviceAirPlayActiveCallback = [(MRActiveRoutesObserver *)obj isLocalDeviceAirPlayActiveCallback];

    if (isLocalDeviceAirPlayActiveCallback)
    {
      isLocalDeviceAirPlayActiveCallback2 = [(MRActiveRoutesObserver *)obj isLocalDeviceAirPlayActiveCallback];
      isLocalDeviceAirPlayActiveCallback2[2](isLocalDeviceAirPlayActiveCallback2, activeCopy);
    }
  }
}

- (BOOL)isLocalDeviceAirPlayActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localDeviceAirPlayActive = selfCopy->_localDeviceAirPlayActive;
  objc_sync_exit(selfCopy);

  return localDeviceAirPlayActive;
}

- (MRActiveRoutesObserverOutputDeviceRemovedSnapshot)deviceRemovedSnapshot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceRemovedSnapshot;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_handleActiveSystemEndpointDidAddOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MRAVEndpointOutputDeviceUserInfoKey"];

  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MRActiveRoutesObserver__handleActiveSystemEndpointDidAddOutputDevice___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(workerQueue, v8);
}

void __72__MRActiveRoutesObserver__handleActiveSystemEndpointDidAddOutputDevice___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(*(a1 + 32) + 48) isLocalEndpoint])
  {
    v3 = [*(*(a1 + 32) + 48) descriptor];
    v4 = [v3 outputDevices];
    v5 = [*(a1 + 40) descriptor];
    [v4 addObject:v5];

    v6 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) debugName];
      v11 = *(*(a1 + 32) + 48);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Added %@ -> %@", &v13, 0x16u);
    }
  }

  v12 = *(*(a1 + 32) + 48);
  objc_sync_exit(v2);

  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:v12];
}

- (void)_handleActiveSystemEndpointDidRemoveOutputDevice:(id)device
{
  v4 = MEMORY[0x1E695DF00];
  deviceCopy = device;
  v6 = [v4 now];
  userInfo = [deviceCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"MRAVEndpointOutputDeviceUserInfoKey"];

  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke;
  block[3] = &unk_1E769BA00;
  block[4] = self;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  dispatch_async(workerQueue, block);
}

void __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(*(a1 + 32) + 48) isLocalEndpoint])
  {
    v3 = [*(*(a1 + 32) + 48) descriptor];
    v4 = [v3 outputDevices];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_2;
    v32[3] = &unk_1E76A3C30;
    v33 = *(a1 + 40);
    v5 = [v4 msv_filter:v32];
    v6 = [v5 mutableCopy];
    [v3 setOutputDevices:v6];

    v7 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v3];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v10 = _MRLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) debugName];
      v12 = *(*(a1 + 32) + 48);
      *buf = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] Snapshot Removed %@ -> %@", buf, 0x16u);
    }
  }

  v13 = *(*(a1 + 32) + 48);
  objc_sync_exit(v2);

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53;
  v30[3] = &unk_1E769DAB8;
  v14 = v13;
  v31 = v14;
  if (__75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53(v30))
  {
    v15 = *(a1 + 32);
    objc_sync_enter(v15);
    v16 = objc_alloc_init(MRActiveRoutesObserverOutputDeviceRemovedSnapshot);
    v17 = *(a1 + 32);
    v18 = *(v17 + 72);
    *(v17 + 72) = v16;

    [*(*(a1 + 32) + 72) setEndpoint:*(*(a1 + 32) + 48)];
    [*(*(a1 + 32) + 72) setDate:*(a1 + 48)];
    objc_initWeak(buf, *(a1 + 32));
    v19 = objc_alloc(MEMORY[0x1E69B14D8]);
    [*(a1 + 32) deviceRemovedWaitInterval];
    v21 = v20;
    v22 = [*(a1 + 32) workerQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_3;
    v28[3] = &unk_1E769B178;
    objc_copyWeak(&v29, buf);
    v23 = [v19 initWithInterval:0 repeats:v22 queue:v28 block:v21];
    v24 = *(a1 + 32);
    v25 = *(v24 + 88);
    *(v24 + 88) = v23;

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
    objc_sync_exit(v15);

    v26 = _MRLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(a1 + 32) + 72);
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] DeviceRemovedSnapshot Added: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:v14];
}

uint64_t __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uid];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isEqual:v4] ^ 1;
  }

  return v5;
}

BOOL __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_53(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || ![v2 isLocalEndpoint])
  {
    return 0;
  }

  v3 = [*(a1 + 32) outputDevices];
  v4 = [v3 msv_firstWhere:&__block_literal_global_95];

  v5 = v4 == 0;
  return v5;
}

void __75__MRActiveRoutesObserver__handleActiveSystemEndpointDidRemoveOutputDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained activeEndpointSnapshot];
    [v3 _onWorkerQueue_reevaluateWithEndpoint:v2];

    WeakRetained = v3;
  }
}

- (void)_reevaluateASE
{
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MRActiveRoutesObserver__reevaluateASE__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)_reevaluateAPA
{
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MRActiveRoutesObserver__reevaluateAPA__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

uint64_t __40__MRActiveRoutesObserver__reevaluateAPA__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onWorkerQueue_reevaluateWithEndpoint:*(*(a1 + 32) + 48)];
  v2 = *(a1 + 32);

  return [v2 _onWorkerQueue_reevaluateAPA];
}

- (void)_onWorkerQueue_reevaluateASE
{
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  v4 = [MEMORY[0x1E695DF00] now];
  [(MRActiveRoutesObserver *)self setLastFetchAttemptToken:v4];
  v5 = objc_opt_class();
  workerQueue2 = [(MRActiveRoutesObserver *)self workerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MRActiveRoutesObserver__onWorkerQueue_reevaluateASE__block_invoke;
  v8[3] = &unk_1E76A3C58;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  [v5 fetchActiveEndpointOnQueue:workerQueue2 withCompletion:v8];
}

void __54__MRActiveRoutesObserver__onWorkerQueue_reevaluateASE__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) lastFetchAttemptToken];

  if (v3 == v4)
  {
    [*(a1 + 40) setActiveEndpoint:v5];
  }
}

- (void)_onWorkerQueue_reevaluateAPA
{
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  v4 = +[MRDeviceInfoRequest localDeviceInfo];
  -[MRActiveRoutesObserver setIsLocalDeviceAirPlayActive:](self, "setIsLocalDeviceAirPlayActive:", [v4 isAirPlayActive]);
}

- (void)_reevaluateWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRActiveRoutesObserver__reevaluateWithEndpoint___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(workerQueue, v7);
}

- (void)_onWorkerQueue_reevaluateWithEndpoint:(id)endpoint
{
  v32 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  workerQueue = [(MRActiveRoutesObserver *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  v7 = +[MRDeviceInfoRequest localDeviceInfo];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke;
  v25 = &unk_1E76A3C80;
  selfCopy = self;
  v29 = a2;
  v8 = endpointCopy;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  if (__64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke(&v22))
  {
    v10 = [objc_opt_class() _computeActiveRouteIDsFromEndpoint:v8 localDeviceInfo:{v9, v22, v23}];
    activeRouteIDs = [(MRActiveRoutesObserver *)self activeRouteIDs];
    v12 = activeRouteIDs;
    if (v10 == activeRouteIDs)
    {
    }

    else
    {
      v13 = [v10 isEqual:activeRouteIDs];

      if ((v13 & 1) == 0)
      {
        v14 = _MRLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v10;
          _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] ActiveRouteIDs -> %@", buf, 0xCu);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        objc_storeStrong(&selfCopy2->_activeRouteIDs, v10);
        deviceRemovedSnapshot = selfCopy2->_deviceRemovedSnapshot;
        selfCopy2->_deviceRemovedSnapshot = 0;

        deviceRemovedWaitIntervalTimer = selfCopy2->_deviceRemovedWaitIntervalTimer;
        selfCopy2->_deviceRemovedWaitIntervalTimer = 0;

        objc_sync_exit(selfCopy2);
        activeRouteIDsChangedCallback = [(MRActiveRoutesObserver *)selfCopy2 activeRouteIDsChangedCallback];

        if (!activeRouteIDsChangedCallback)
        {
          goto LABEL_11;
        }

        selfCopy3 = [(MRActiveRoutesObserver *)selfCopy2 activeRouteIDsChangedCallback];
        (*&selfCopy3->_localDeviceAirPlayActive)(selfCopy3, v10);
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }
    }

    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    v20 = selfCopy3->_deviceRemovedSnapshot;
    selfCopy3->_deviceRemovedSnapshot = 0;

    v21 = selfCopy3->_deviceRemovedWaitIntervalTimer;
    selfCopy3->_deviceRemovedWaitIntervalTimer = 0;

    objc_sync_exit(selfCopy3);
    goto LABEL_10;
  }

LABEL_12:
}

uint64_t __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) deviceRemovedSnapshot];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 endpoint];
    v6 = [v5 isLocalEndpoint];

    if ((v6 & 1) == 0)
    {
      __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke_cold_1(a1, v2);
    }

    v7 = *(a1 + 40);
    v8 = [v4 endpoint];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v7 isEqual:v8];

      if ((v10 & 1) == 0)
      {
        v11 = _MRLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to new activeEndpoint";
LABEL_13:
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, v12, &v23, 2u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    v14 = [v4 date];
    [v14 timeIntervalSinceNow];
    v16 = fabs(v15);
    [*v2 deviceRemovedWaitInterval];
    v18 = v17;

    if (v16 <= v18)
    {
      if ([*(a1 + 48) isAirPlayActive] && (objc_msgSend(*(a1 + 48), "parentGroupSupportsGroupCohesion") & 1) == 0)
      {
        v11 = _MRLogForCategory(0);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        LOWORD(v23) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to airPlayActive + !parentGroupSupportsGroupCohesion";
        goto LABEL_13;
      }

      if (![*(a1 + 48) isAirPlayActive] || !objc_msgSend(*(a1 + 48), "parentGroupSupportsGroupCohesion") || (objc_msgSend(*(a1 + 48), "leaderDeviceInfo"), v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
      {
        v11 = _MRLogForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v4 date];
          [v20 timeIntervalSinceNow];
          v23 = 134217984;
          v24 = v21;
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRActiveRoutesObserver] DeviceRemovedSnapshot: ActiveRouteIDs update ignored due to snapshot %lf seconds ago", &v23, 0xCu);
        }

        v13 = 0;
        goto LABEL_25;
      }

      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to airPlayActive + parentGroupSupportsGroupCohesion + leaderDeviceInfo";
        goto LABEL_13;
      }
    }

    else
    {
      v11 = _MRLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v12 = "[MRActiveRoutesObserver] DeviceRemovedSnapshot: removed due to deviceRemovedWaitInterval";
        goto LABEL_13;
      }
    }

LABEL_14:
    v13 = 1;
LABEL_25:

    goto LABEL_26;
  }

  v13 = 1;
LABEL_26:

  return v13;
}

+ (id)_computeActiveRouteIDsFromEndpoint:(id)endpoint localDeviceInfo:(id)info
{
  v22[1] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  infoCopy = info;
  v7 = +[MRUserSettings currentSettings];
  supportTopologyHealing = [v7 supportTopologyHealing];

  if (supportTopologyHealing)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke;
    v19[3] = &unk_1E76A3130;
    v9 = endpointCopy;
    v20 = v9;
    v10 = infoCopy;
    v21 = v10;
    if ((__77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke)(v19))
    {
      leaderDeviceInfo = [v10 leaderDeviceInfo];
      groupedDevices = [leaderDeviceInfo groupedDevices];
      v13 = [groupedDevices msv_map:&__block_literal_global_64_0];
    }

    else
    {
      leaderDeviceInfo = [v9 resolvedOutputDevices];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke_3;
      v17[3] = &unk_1E769B6F8;
      v18 = v10;
      v13 = [leaderDeviceInfo msv_map:v17];
      groupedDevices = v18;
    }

    v15 = v20;
  }

  else
  {
    effectiveID = [infoCopy effectiveID];
    v15 = effectiveID;
    if (effectiveID)
    {
      v22[0] = effectiveID;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

BOOL __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isLocalEndpoint] || !objc_msgSend(*(a1 + 40), "isAirPlayActive"))
  {
    return 0;
  }

  v2 = [*(a1 + 40) leaderDeviceInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 groupedDevices];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __77__MRActiveRoutesObserver__computeActiveRouteIDsFromEndpoint_localDeviceInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deviceType] == 1)
  {
    v4 = [v3 uid];
  }

  else
  {
    v5 = [*(a1 + 32) clusterID];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v7 = [*(a1 + 32) deviceUID];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [v3 uid];
      }

      v4 = v9;
    }
  }

  return v4;
}

+ (void)fetchActiveRouteIDsWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRActiveRoutesObserver.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

+ (void)fetchActiveEndpointOnQueue:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRActiveRoutesObserver.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __68__MRActiveRoutesObserver_fetchActiveEndpointOnQueue_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSinceDate:*(a1 + 40)];
  v9 = 138544130;
  v10 = @"MRActiveRoutesObserver.fetchActiveEndpointOnQueue";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = a2;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void __64__MRActiveRoutesObserver__onWorkerQueue_reevaluateWithEndpoint___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"MRActiveRoutesObserver.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"snapshot.endpoint.isLocalEndpoint"}];
}

@end