@interface CWFRemoteInterfaceManager
+ (id)sharedInstance;
- (BOOL)_isInterfaceDeactivationTimerValid;
- (CWFRemoteInterfaceManager)init;
- (id)_defaultScanParameters;
- (void)_activateInterface;
- (void)_deactivateInterface;
- (void)_invalidateInterfaceDeactivationTimer;
- (void)_startInterfaceDeactivationTimerIfNeeded;
- (void)associateNetwork:(id)network password:(id)password completion:(id)completion;
- (void)scanAvailableNetworksWithCompletion:(id)completion;
- (void)wifiStatusWithCompletion:(id)completion;
@end

@implementation CWFRemoteInterfaceManager

+ (id)sharedInstance
{
  if (qword_1ED7E3930 != -1)
  {
    dispatch_once(&qword_1ED7E3930, &unk_1F5B89AB0);
  }

  v3 = qword_1ED7E3938;

  return v3;
}

- (CWFRemoteInterfaceManager)init
{
  v8.receiver = self;
  v8.super_class = CWFRemoteInterfaceManager;
  v2 = [(CWFRemoteInterfaceManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.corewifi.requestQueue", v4);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v5;

    [(CWFRemoteInterfaceManager *)v2 _activateInterface];
  }

  return v2;
}

- (void)scanAvailableNetworksWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]";
    v14 = 2082;
    v15 = "CWFRemoteInterfaceManager.m";
    v16 = 1024;
    v17 = 61;
    v18 = 2080;
    v19 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) %s", location, 38);
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C19C3C;
  block[3] = &unk_1E86E6618;
  block[4] = self;
  objc_copyWeak(&v12, location);
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)associateNetwork:(id)network password:(id)password completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  passwordCopy = password;
  completionCopy = completion;
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]";
    v24 = 2082;
    v25 = "CWFRemoteInterfaceManager.m";
    v26 = 1024;
    v27 = 101;
    v28 = 2080;
    v29 = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] %{public}s (%{public}s:%u) %s", location, 38);
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1A33C;
  block[3] = &unk_1E86E6668;
  block[4] = self;
  objc_copyWeak(&v22, location);
  v19 = networkCopy;
  v20 = passwordCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = passwordCopy;
  v17 = networkCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);
}

- (void)wifiStatusWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager wifiStatusWithCompletion:]";
    v14 = 2082;
    v15 = "CWFRemoteInterfaceManager.m";
    v16 = 1024;
    v17 = 152;
    v18 = 2080;
    v19 = "[CWFRemoteInterfaceManager wifiStatusWithCompletion:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) %s", location, 38);
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1A9E4;
  block[3] = &unk_1E86E6618;
  block[4] = self;
  objc_copyWeak(&v12, location);
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)_startInterfaceDeactivationTimerIfNeeded
{
  objc_initWeak(&location, self);
  if (![(CWFRemoteInterfaceManager *)self _isInterfaceDeactivationTimerValid])
  {
    requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, requestQueue);
    [(CWFRemoteInterfaceManager *)self setInterfaceDeactivationTimer:v4];

    interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = sub_1E0C1AE64;
    v12 = &unk_1E86E6190;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(interfaceDeactivationTimer, &v9);

    v6 = dispatch_time(0, 30000000000);
    v7 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer:v9];
    dispatch_source_set_timer(v7, v6, 0x6FC23AC00uLL, 0);

    interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    dispatch_resume(interfaceDeactivationTimer2);

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

- (void)_invalidateInterfaceDeactivationTimer
{
  v16 = *MEMORY[0x1E69E9840];
  interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
  if (interfaceDeactivationTimer)
  {
    v4 = interfaceDeactivationTimer;
    _isInterfaceDeactivationTimerValid = [(CWFRemoteInterfaceManager *)self _isInterfaceDeactivationTimerValid];

    if (_isInterfaceDeactivationTimerValid)
    {
      v6 = CWFGetOSLog();
      if (v6)
      {
        v7 = CWFGetOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136446722;
        v11 = "[CWFRemoteInterfaceManager _invalidateInterfaceDeactivationTimer]";
        v12 = 2082;
        v13 = "CWFRemoteInterfaceManager.m";
        v14 = 1024;
        v15 = 206;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] %{public}s (%{public}s:%u) Invalidating interfaceDeactivationTimer", &v10, 28);
      }

      interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
      dispatch_source_cancel(interfaceDeactivationTimer2);

      [(CWFRemoteInterfaceManager *)self setInterfaceDeactivationTimer:0];
    }
  }
}

- (BOOL)_isInterfaceDeactivationTimerValid
{
  interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
  if (interfaceDeactivationTimer)
  {
    interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    v5 = dispatch_source_testcancel(interfaceDeactivationTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_activateInterface
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = dispatch_get_current_queue();
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];

  if (v3 == requestQueue)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446722;
      *&location[4] = "[CWFRemoteInterfaceManager _activateInterface]";
      v16 = 2082;
      v17 = "CWFRemoteInterfaceManager.m";
      v18 = 1024;
      v19 = 229;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] %{public}s (%{public}s:%u) Activating CWFInterface...", location, 28);
    }

    interface = [(CWFRemoteInterfaceManager *)self interface];
    v10 = interface == 0;

    if (v10)
    {
      v11 = objc_alloc_init(CWFInterface);
      [(CWFRemoteInterfaceManager *)self setInterface:v11];
    }

    interface2 = [(CWFRemoteInterfaceManager *)self interface];
    [interface2 activate];
  }

  else
  {
    objc_initWeak(location, self);
    requestQueue2 = [(CWFRemoteInterfaceManager *)self requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1B2D4;
    block[3] = &unk_1E86E6190;
    objc_copyWeak(&v14, location);
    dispatch_async(requestQueue2, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)_deactivateInterface
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = dispatch_get_current_queue();
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];

  if (v3 == requestQueue)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446722;
      *&location[4] = "[CWFRemoteInterfaceManager _deactivateInterface]";
      v13 = 2082;
      v14 = "CWFRemoteInterfaceManager.m";
      v15 = 1024;
      v16 = 249;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] %{public}s (%{public}s:%u) Invalidating CWFInterface...", location, 28);
    }

    interface = [(CWFRemoteInterfaceManager *)self interface];
    [interface invalidate];

    [(CWFRemoteInterfaceManager *)self setInterface:0];
  }

  else
  {
    objc_initWeak(location, self);
    requestQueue2 = [(CWFRemoteInterfaceManager *)self requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1B528;
    block[3] = &unk_1E86E6190;
    objc_copyWeak(&v11, location);
    dispatch_async(requestQueue2, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

- (id)_defaultScanParameters
{
  v2 = objc_opt_new();
  [v2 setAcceptableANQPCacheAgeForPasspointScanResults:20];
  [v2 setMergeScanResults:1];
  [v2 setScanType:1];
  [v2 setNumberOfScans:1];
  [v2 setDwellTime:0];
  [v2 setANQPElementIDListForPasspointScanResults:&unk_1F5BB9AD8];
  [v2 setIncludeMatchingKnownNetworkProfiles:1];

  return v2;
}

@end