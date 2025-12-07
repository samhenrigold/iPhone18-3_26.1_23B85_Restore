@interface AFUIApplicationSiriTaskDeliverer
- (AFSiriTaskmaster)taskmaster;
- (AFUIApplicationSiriTaskDeliverer)initWithAppBundleIdentifier:(id)identifier;
- (void)_handleSuccessfulAppLaunchToBackground:(BOOL)background forRequest:(id)request completion:(id)completion;
- (void)_invalidateAssertionTimer;
- (void)_invalidateBackboardServices;
- (void)_processAssertionWasAcquired:(BOOL)acquired;
- (void)_processAssertionWasInvalidatedForRequest:(id)request;
- (void)_startAppStateMonitoringForRequest:(id)request;
- (void)dealloc;
- (void)deliverSiriTask:(id)task completionHandler:(id)handler;
- (void)processAssertionWasInvalidatedForRequest:(id)request;
- (void)siriTaskDidFinish;
@end

@implementation AFUIApplicationSiriTaskDeliverer

- (AFSiriTaskmaster)taskmaster
{
  WeakRetained = objc_loadWeakRetained(&self->_taskmaster);

  return WeakRetained;
}

- (void)_invalidateAssertionTimer
{
  [(AFWatchdogTimer *)self->_assertionTimer cancel];
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = 0;
}

- (void)_invalidateBackboardServices
{
  [(BKSApplicationStateMonitor *)self->_appStateMonitor invalidate];
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = 0;

  [(BKSProcessAssertion *)self->_bKSAssertionForBgLaunch invalidate];
  bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
  self->_bKSAssertionForBgLaunch = 0;
}

- (void)_handleSuccessfulAppLaunchToBackground:(BOOL)background forRequest:(id)request completion:(id)completion
{
  backgroundCopy = background;
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (backgroundCopy)
  {
    inited = objc_initWeak(&location, self);
    v11 = objc_alloc(getBKSProcessAssertionClass(inited));
    appBundleIdentifier = self->_appBundleIdentifier;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke;
    v26[3] = &unk_1E73477F0;
    v26[4] = self;
    v27 = completionCopy;
    v13 = [v11 initWithBundleIdentifier:appBundleIdentifier flags:33 reason:4 name:@"SiriTaskDelivererBackground" withHandler:v26];
    bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
    p_bKSAssertionForBgLaunch = &self->_bKSAssertionForBgLaunch;
    *p_bKSAssertionForBgLaunch = v13;

    v16 = *p_bKSAssertionForBgLaunch;
    if (v16)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_3;
      v23[3] = &unk_1E73470E0;
      objc_copyWeak(&v25, &location);
      v24 = requestCopy;
      [(BKSProcessAssertion *)v16 setInvalidationHandler:v23];

      objc_destroyWeak(&v25);
    }

    else
    {
      v22 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[AFUIApplicationSiriTaskDeliverer _handleSuccessfulAppLaunchToBackground:forRequest:completion:]";
        v31 = 2112;
        v32 = requestCopy;
        _os_log_error_impl(&dword_1912FE000, v22, OS_LOG_TYPE_ERROR, "%s Unable to take process assertion for background launch because BKSProcessAssertion is nil %@", buf, 0x16u);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    _refId = [requestCopy _refId];
    v18 = [_refId copy];

    WeakRetained = objc_loadWeakRetained(&self->_taskmaster);
    delegate = [WeakRetained delegate];
    v21 = objc_loadWeakRetained(&self->_taskmaster);
    [delegate taskmaster:v21 didLaunchApplicationForRequestWithId:v18];

    completionCopy[2](completionCopy);
  }
}

void __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_2;
  block[3] = &unk_1E7348778;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained processAssertionWasInvalidatedForRequest:*(a1 + 32)];
}

uint64_t __97__AFUIApplicationSiriTaskDeliverer__handleSuccessfulAppLaunchToBackground_forRequest_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _processAssertionWasAcquired:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)siriTaskDidFinish
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[AFUIApplicationSiriTaskDeliverer siriTaskDidFinish]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  bKSAssertionSetupGroup = self->_bKSAssertionSetupGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFUIApplicationSiriTaskDeliverer_siriTaskDidFinish__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_group_notify(bKSAssertionSetupGroup, queue, block);
}

uint64_t __53__AFUIApplicationSiriTaskDeliverer_siriTaskDidFinish__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateAssertionTimer];
  v2 = *(a1 + 32);

  return [v2 _invalidateBackboardServices];
}

- (void)deliverSiriTask:(id)task completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  handlerCopy = handler;
  v8 = [objc_alloc(getUISiriTaskActionClass()) initWithPayload:taskCopy];
  if (v8)
  {
    v32 = taskCopy;
    request = [taskCopy request];
    [(AFUIApplicationSiriTaskDeliverer *)self _startAppStateMonitoringForRequest:request];
    v10 = [request _makeAppFrontmost] ^ 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = getFBSOpenApplicationOptionKeyActions();
    if (v12)
    {
      v37 = v8;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      [v11 setObject:v13 forKey:v12];
    }

    v14 = getFBSOpenApplicationOptionKeyActivateSuspended();
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v10];
      [v11 setObject:v15 forKey:v14];
    }

    v30 = v10;
    v16 = getFBSOpenApplicationOptionKeyUnlockDevice();
    v17 = v16;
    if (v16)
    {
      v16 = [v11 setObject:MEMORY[0x1E695E118] forKey:v16];
    }

    v18 = getFBSOpenApplicationOptionKeyPromptUnlockDevice(v16);
    if (v18)
    {
      [v11 setObject:MEMORY[0x1E695E118] forKey:v18];
    }

    dispatch_group_enter(self->_bKSAssertionSetupGroup);
    serviceWithDefaultShellEndpoint = [getFBSOpenApplicationServiceClass() serviceWithDefaultShellEndpoint];
    v31 = v17;
    if (serviceWithDefaultShellEndpoint)
    {
      appBundleIdentifier = self->_appBundleIdentifier;
      [getFBSOpenApplicationOptionsClass() optionsWithDictionary:v11];
      v20 = v14;
      v21 = v12;
      v22 = v8;
      v24 = v23 = handlerCopy;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke;
      v33[3] = &unk_1E73470B8;
      v33[4] = self;
      v35 = v23;
      v36 = v30;
      v34 = request;
      [serviceWithDefaultShellEndpoint openApplication:appBundleIdentifier withOptions:v24 completion:v33];

      handlerCopy = v23;
      v8 = v22;
      v12 = v21;
      v14 = v20;
    }

    else
    {
      v26 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[AFUIApplicationSiriTaskDeliverer deliverSiriTask:completionHandler:]";
        v40 = 2112;
        v41 = v32;
        _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, "%s Unable to launch apps because FBSOpenApplicationService is nil %@", buf, 0x16u);
      }

      v27 = [AFError errorWithCode:13];
      (*(handlerCopy + 2))(handlerCopy, v27);
    }

    taskCopy = v32;
  }

  else
  {
    v25 = AFSiriLogContextConnection;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (UIKitLibrary_sOnce != -1)
      {
        dispatch_once(&UIKitLibrary_sOnce, &__block_literal_global_144_33750);
      }

      *buf = 136315650;
      v39 = "[AFUIApplicationSiriTaskDeliverer deliverSiriTask:completionHandler:]";
      v40 = 2050;
      v41 = UIKitLibrary_sLib;
      v42 = 2114;
      UISiriTaskActionClass = getUISiriTaskActionClass();
      v28 = UISiriTaskActionClass;
      _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s Couldn't create a SiriTask action %{public}p %{public}@", buf, 0x20u);

      v8 = 0;
    }

    request = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:705 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, request);
  }
}

void __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2;
  v23[3] = &unk_1E73496E8;
  v23[4] = *(a1 + 32);
  v25 = *(a1 + 48);
  v5 = v4;
  v24 = v5;
  v6 = MEMORY[0x193AFB7B0](v23);
  v7 = [v5 domain];
  v8 = getFBSOpenApplicationServiceErrorDomain();
  isEqualToString = objc_msgSend_isEqualToString_(v7);

  if (isEqualToString)
  {
    v10 = [v5 userInfo];
    v11 = [v10 objectForKey:*MEMORY[0x1E696AA08]];

    if (v11)
    {
      v12 = v11;

      v5 = v12;
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3;
  v17[3] = &unk_1E7347090;
  v18 = v5;
  v19 = v13;
  v22 = *(a1 + 56);
  v20 = *(a1 + 40);
  v21 = v6;
  v15 = v6;
  v16 = v5;
  dispatch_async(v14, v17);
}

uint64_t __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(*(a1 + 32) + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __70__AFUIApplicationSiriTaskDeliverer_deliverSiriTask_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 40) _handleSuccessfulAppLaunchToBackground:*(a1 + 64) forRequest:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)_processAssertionWasAcquired:(BOOL)acquired
{
  location[3] = *MEMORY[0x1E69E9840];
  if (acquired)
  {
    v4 = AFPreferencesSiriTaskBackgroundAssertionTimeout();
    v5 = self->_appBundleIdentifier;
    objc_initWeak(location, self);
    v6 = self->_appStateMonitor;
    v7 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke;
    v18 = &unk_1E7347068;
    v9 = v5;
    v19 = v9;
    v21[1] = *&v4;
    v10 = v6;
    v20 = v10;
    objc_copyWeak(v21, location);
    v11 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:queue onQueue:&v15 timeoutHandler:v4];
    assertionTimer = self->_assertionTimer;
    p_assertionTimer = &self->_assertionTimer;
    *p_assertionTimer = v11;

    [*p_assertionTimer start];
    objc_destroyWeak(v21);

    objc_destroyWeak(location);
  }

  else
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]";
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Could not acquire BKS assertion", location, 0xCu);
    }

    [(AFUIApplicationSiriTaskDeliverer *)self _invalidateBackboardServices];
  }
}

void __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    *buf = 136315650;
    v11 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]_block_invoke";
    v12 = 2114;
    v13 = v6;
    v14 = 2050;
    v15 = v7;
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s BKS assertion for %{public}@ timed out after %{public}.2f seconds", buf, 0x20u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke_20;
  v8[3] = &unk_1E7347018;
  v9 = v3;
  [v4 applicationInfoForApplication:v9 completion:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _invalidateBackboardServices];
}

void __65__AFUIApplicationSiriTaskDeliverer__processAssertionWasAcquired___block_invoke_20(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasAcquired:]_block_invoke";
    v8 = 2114;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s After timing out, recipient %{public}@ state was %{public}@", &v6, 0x20u);
  }
}

- (void)processAssertionWasInvalidatedForRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AFUIApplicationSiriTaskDeliverer_processAssertionWasInvalidatedForRequest___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)_processAssertionWasInvalidatedForRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]";
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s BKS assertion was unexpectedly dropped", buf, 0xCu);
  }

  appStateMonitor = self->_appStateMonitor;
  if (!appStateMonitor)
  {
    v7 = objc_alloc(getBKSApplicationStateMonitorClass());
    appBundleIdentifier = self->_appBundleIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&appBundleIdentifier count:1];
    v9 = [v7 initWithBundleIDs:v8 states:getBKSApplicationStateAll()];
    v10 = self->_appStateMonitor;
    self->_appStateMonitor = v9;

    appStateMonitor = self->_appStateMonitor;
    if (!appStateMonitor)
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]";
        _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to restart app state monitoring because BKSApplicationStateMonitor is nil.", buf, 0xCu);
        appStateMonitor = self->_appStateMonitor;
      }

      else
      {
        appStateMonitor = 0;
      }
    }
  }

  v12 = self->_appBundleIdentifier;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__AFUIApplicationSiriTaskDeliverer__processAssertionWasInvalidatedForRequest___block_invoke;
  v15[3] = &unk_1E7347040;
  v15[4] = self;
  v16 = requestCopy;
  v13 = requestCopy;
  [(BKSApplicationStateMonitor *)appStateMonitor applicationInfoForApplication:v12 completion:v15];
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateAssertionTimer];
  bKSAssertionForBgLaunch = self->_bKSAssertionForBgLaunch;
  self->_bKSAssertionForBgLaunch = 0;
}

void __78__AFUIApplicationSiriTaskDeliverer__processAssertionWasInvalidatedForRequest___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _LogAppStateInfo(v3);
  if (!v3 || (getSBApplicationStateKey(v4), v5 = objc_claimAutoreleasedReturnValue(), _SafelyGetObject(v3, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6) || (v7 = [v6 unsignedIntValue], v6, v7 <= 1))
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = 136315394;
      v15 = "[AFUIApplicationSiriTaskDeliverer _processAssertionWasInvalidatedForRequest:]_block_invoke";
      v16 = 2114;
      v17 = v13;
      _os_log_error_impl(&dword_1912FE000, v8, OS_LOG_TYPE_ERROR, "%s %{public}@ appears to have crashed", &v14, 0x16u);
    }

    v9 = +[AFAnalytics sharedAnalytics];
    v10 = [*(a1 + 40) _af_analyticsContextDescription];
    [v9 logEventWithType:505 context:v10];

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantErrorDomain" code:706 userInfo:MEMORY[0x1E695E0F8]];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained handleFailureOfRequest:*(a1 + 40) error:v11 atTime:0];
  }
}

- (void)_startAppStateMonitoringForRequest:(id)request
{
  v16[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = self->_appBundleIdentifier;
  v6 = objc_alloc(getBKSApplicationStateMonitorClass());
  v16[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v8 = [v6 initWithBundleIDs:v7 states:getBKSApplicationStateAll()];
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = v8;

  if (self->_appStateMonitor)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__AFUIApplicationSiriTaskDeliverer__startAppStateMonitoringForRequest___block_invoke;
    v12[3] = &unk_1E7347018;
    v13 = requestCopy;
    v10 = MEMORY[0x193AFB7B0](v12);
    [(BKSApplicationStateMonitor *)self->_appStateMonitor setHandler:v10];
    [(BKSApplicationStateMonitor *)self->_appStateMonitor applicationInfoForApplication:v5 completion:v10];
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[AFUIApplicationSiriTaskDeliverer _startAppStateMonitoringForRequest:]";
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Unable to start app state monitoring because BKSApplicationStateMonitor is nil.", buf, 0xCu);
    }
  }
}

void __71__AFUIApplicationSiriTaskDeliverer__startAppStateMonitoringForRequest___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  _LogAppStateInfo(v12);
  v4 = [v3 _af_analyticsContextDescription];

  v6 = getSBApplicationStateKey(v5);
  v7 = _SafelyGetObject(v12, v6);

  v8 = AFDescriptionOfBKSApplicationState([v7 unsignedIntValue]);
  [v4 setObject:v8 forKeyedSubscript:@"appState"];

  v9 = getBKSApplicationStateAppIsFrontmostKey();
  v10 = _SafelyGetObject(v12, v9);

  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"appIsFrontmost"];
  }

  v11 = +[AFAnalytics sharedAnalytics];
  [v11 logEventWithType:504 context:v4];
}

- (void)dealloc
{
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateAssertionTimer];
  [(AFUIApplicationSiriTaskDeliverer *)self _invalidateBackboardServices];
  v3.receiver = self;
  v3.super_class = AFUIApplicationSiriTaskDeliverer;
  [(AFUIApplicationSiriTaskDeliverer *)&v3 dealloc];
}

- (AFUIApplicationSiriTaskDeliverer)initWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFUIApplicationSiriTaskDeliverer.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];
  }

  v16.receiver = self;
  v16.super_class = AFUIApplicationSiriTaskDeliverer;
  v6 = [(AFUIApplicationSiriTaskDeliverer *)&v16 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    appBundleIdentifier = v6->_appBundleIdentifier;
    v6->_appBundleIdentifier = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("AFUIApplicationSiriTaskDeliverer", v9);

    queue = v6->_queue;
    v6->_queue = v10;

    v12 = dispatch_group_create();
    bKSAssertionSetupGroup = v6->_bKSAssertionSetupGroup;
    v6->_bKSAssertionSetupGroup = v12;
  }

  return v6;
}

@end