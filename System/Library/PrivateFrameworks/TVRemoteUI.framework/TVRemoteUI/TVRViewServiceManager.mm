@interface TVRViewServiceManager
+ (id)sharedInstance;
- (id)_actionForSetting:(unint64_t)setting animationBlock:(id)block;
- (id)_settingNameForValue:(unint64_t)value;
- (void)_fetchActiveEndpointUID;
- (void)_launchViewServiceSuspended;
- (void)_prewarmWithLaunchViewService:(BOOL)service fetchActiveEndpoint:(BOOL)endpoint;
- (void)dismiss;
- (void)presentWithContext:(id)context;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation TVRViewServiceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVRViewServiceManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __39__TVRViewServiceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TVRViewServiceManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)presentWithContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = _TVRUIViewServiceLog(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [contextCopy description];
    *buf = 136315394;
    v52 = "[TVRViewServiceManager presentWithContext:]";
    v53 = 2114;
    v54 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s: context=%{public}@", buf, 0x16u);
  }

  v7 = [@"com.apple.TVRemoteUI.Instrumentation" hash];
  v8 = _TVRUISignpostLog(v7);
  v9 = v8;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26CFEB000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TVRemoteUIAlertLaunch", "PresentWithContext", buf, 2u);
  }

  canLaunchAsAnApp = [(TVRViewServiceManager *)self canLaunchAsAnApp];
  if (canLaunchAsAnApp)
  {
    v11 = _TVRUIViewServiceLog(canLaunchAsAnApp);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Launching TVRemote App", buf, 2u);
    }

    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"tvremote://"];
    v13 = *MEMORY[0x277D0AC70];
    v49[0] = *MEMORY[0x277D0AC58];
    v49[1] = v13;
    v50[0] = MEMORY[0x277CBEC38];
    v50[1] = MEMORY[0x277CBEC38];
    v14 = *MEMORY[0x277D0AC40];
    v50[2] = v12;
    v15 = *MEMORY[0x277D0AC30];
    v49[2] = v14;
    v49[3] = v15;
    userInfo = [contextCopy userInfo];
    v50[3] = userInfo;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];

    v18 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v18 setFrontBoardOptions:v17];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __44__TVRViewServiceManager_presentWithContext___block_invoke;
    v48[3] = &unk_279D891F8;
    v48[4] = self;
    [defaultWorkspace openApplicationWithBundleIdentifier:@"com.apple.TVRemoteUIService" usingConfiguration:v18 completionHandler:v48];

    v21 = _TVRUISignpostLog(v20);
    v22 = v21;
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26CFEB000, v22, OS_SIGNPOST_INTERVAL_END, v7, "TVRemoteUIAlertLaunch", "AnimationEnded", buf, 2u);
    }
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 1)
    {
      v24 = _TVRUIViewServiceLog(DeviceClass);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [TVRViewServiceManager presentWithContext:v24];
      }
    }

    v12 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.TVRemoteUIService" viewControllerClassName:@"TVRemoteAlertViewController"];
    v17 = objc_alloc_init(MEMORY[0x277D66BD0]);
    lastActiveEndpointIdentifier = [(TVRViewServiceManager *)self lastActiveEndpointIdentifier];

    if (lastActiveEndpointIdentifier)
    {
      lastActiveEndpointIdentifier2 = [(TVRViewServiceManager *)self lastActiveEndpointIdentifier];
      [contextCopy setLastActiveEndpointIdentifier:lastActiveEndpointIdentifier2];
    }

    userInfo2 = [contextCopy userInfo];
    [v17 setUserInfo:userInfo2];

    v29 = _TVRUIViewServiceLog(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      userInfo3 = [v17 userInfo];
      *buf = 138543362;
      v52 = userInfo3;
      _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_DEFAULT, "View service manager set userInfo %{public}@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v12 configurationContext:v17];
    [v18 registerObserver:self];
    v31 = objc_alloc_init(MEMORY[0x277D66BC0]);
    if ([contextCopy launchContext] == 9 || objc_msgSend(contextCopy, "launchContext") == 7)
    {
      v32 = _TVRUIViewControllerLog([v31 setActivatingForSiri:1]);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        launchContext = [contextCopy launchContext];
        *buf = 134217984;
        v52 = launchContext;
        _os_log_impl(&dword_26CFEB000, v32, OS_LOG_TYPE_DEFAULT, "Setting activatingForSiri flag to YES. Launch Context %ld", buf, 0xCu);
      }
    }

    v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
    presentationAnimations = [contextCopy presentationAnimations];

    if (presentationAnimations)
    {
      v37 = _TVRUIViewServiceLog(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v37, OS_LOG_TYPE_DEFAULT, "View service manager client set presentation animations", buf, 2u);
      }

      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __44__TVRViewServiceManager_presentWithContext___block_invoke_33;
      v45[3] = &unk_279D88BE0;
      v46 = contextCopy;
      v47 = v7;
      v38 = [(TVRViewServiceManager *)self _actionForSetting:1 animationBlock:v45];
      if (v38)
      {
        [v34 addObject:v38];
      }
    }

    dismissalAnimations = [contextCopy dismissalAnimations];

    if (dismissalAnimations)
    {
      v41 = _TVRUIViewServiceLog(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v41, OS_LOG_TYPE_DEFAULT, "View service manager client set dismissal animations", buf, 2u);
      }

      dismissalAnimations2 = [contextCopy dismissalAnimations];
      v43 = [(TVRViewServiceManager *)self _actionForSetting:2 animationBlock:dismissalAnimations2];

      if (v43)
      {
        [v34 addObject:v43];
      }
    }

    if ([v34 count])
    {
      v44 = [MEMORY[0x277CBEB98] setWithSet:v34];
      [v31 setActions:v44];
    }

    [v18 activateWithContext:v31];
    [(TVRViewServiceManager *)self setAlertHandle:v18];
  }
}

void __44__TVRViewServiceManager_presentWithContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = _TVRUIViewServiceLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__TVRViewServiceManager_presentWithContext___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

void __44__TVRViewServiceManager_presentWithContext___block_invoke_33(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationAnimations];
  v2[2]();

  v4 = _TVRUISignpostLog(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26CFEB000, v5, OS_SIGNPOST_INTERVAL_END, v6, "TVRemoteUIAlertLaunch", "AnimationEnded", v7, 2u);
  }
}

- (void)dismiss
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewServiceLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVRViewServiceManager dismiss]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  alertHandle = [(TVRViewServiceManager *)self alertHandle];

  if (alertHandle)
  {
    alertHandle2 = [(TVRViewServiceManager *)self alertHandle];
    [alertHandle2 unregisterObserver:self];

    alertHandle3 = [(TVRViewServiceManager *)self alertHandle];
    [alertHandle3 invalidate];

    [(TVRViewServiceManager *)self setAlertHandle:0];
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v11 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = _TVRUIViewServiceLog(deactivateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[TVRViewServiceManager remoteAlertHandleDidDeactivate:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  alertHandle = [(TVRViewServiceManager *)self alertHandle];
  v7 = [alertHandle isEqual:deactivateCopy];

  if (v7)
  {
    alertHandle2 = [(TVRViewServiceManager *)self alertHandle];
    [alertHandle2 unregisterObserver:self];

    [(TVRViewServiceManager *)self setAlertHandle:0];
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = _TVRUIViewServiceLog(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [TVRViewServiceManager remoteAlertHandle:errorCopy didInvalidateWithError:v6];
  }

  [(TVRViewServiceManager *)self setAlertHandle:0];
}

- (id)_actionForSetting:(unint64_t)setting animationBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v6 setObject:&unk_287E84E30 forSetting:setting];
  v7 = MEMORY[0x277CF0B60];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__TVRViewServiceManager__actionForSetting_animationBlock___block_invoke;
  v12[3] = &unk_279D89220;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = [v7 responderWithHandler:v12];
  v10 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:v6 responder:v9];

  return v10;
}

uint64_t __58__TVRViewServiceManager__actionForSetting_animationBlock___block_invoke(uint64_t a1)
{
  v2 = _TVRUIViewServiceLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "View service manager executing client animations", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_settingNameForValue:(unint64_t)value
{
  if (value == 1)
  {
    value = @"Presentation";
  }

  else if (value == 2)
  {
    value = @"Dismissal";
  }

  else
  {
    value = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", value];
  }

  return value;
}

- (void)_prewarmWithLaunchViewService:(BOOL)service fetchActiveEndpoint:(BOOL)endpoint
{
  endpointCopy = endpoint;
  serviceCopy = service;
  v7 = _TVRUIPrewarmLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "TVRViewServiceManager", v8, 2u);
  }

  if (serviceCopy && ![(TVRViewServiceManager *)self canLaunchAsAnApp])
  {
    [(TVRViewServiceManager *)self _launchViewServiceSuspended];
  }

  if (endpointCopy)
  {
    [(TVRViewServiceManager *)self _fetchActiveEndpointUID];
  }
}

- (void)_fetchActiveEndpointUID
{
  v3 = _TVRUIPrewarmLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Fetching active endpoint", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277D6C4E0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TVRViewServiceManager__fetchActiveEndpointUID__block_invoke;
  v7[3] = &unk_279D89248;
  objc_copyWeak(&v8, buf);
  v5 = _TVRUIPrewarmLog([v4 fetchActiveEndpointUIDWithCompletion:v7]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Cache last active endpoint", v6, 2u);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __48__TVRViewServiceManager__fetchActiveEndpointUID__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 3, a2);
    v8 = _TVRUIPrewarmLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Last active endpoint %@", &v9, 0xCu);
    }
  }
}

- (void)_launchViewServiceSuspended
{
  v11[1] = *MEMORY[0x277D85DE8];
  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 1)
  {
    v3 = _TVRUIViewServiceLog(DeviceClass);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(TVRViewServiceManager *)v3 _launchViewServiceSuspended];
    }
  }

  v4 = _TVRUIPrewarmLog(DeviceClass);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Launching view service", v9, 2u);
  }

  v5 = MEMORY[0x277D0AD60];
  v10 = *MEMORY[0x277D0ABF0];
  v11[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 optionsWithDictionary:v6];

  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  [serviceWithDefaultShellEndpoint openApplication:@"com.apple.TVRemoteUIService" withOptions:v7 completion:&__block_literal_global_56];
}

void __52__TVRViewServiceManager__launchViewServiceSuspended__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = _TVRUIPrewarmLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52__TVRViewServiceManager__launchViewServiceSuspended__block_invoke_cold_1(v4, v5);
    }
  }
}

void __44__TVRViewServiceManager_presentWithContext___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_26CFEB000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Error opening TV Remote: %{public}@", &v6, 0x16u);
}

- (void)remoteAlertHandle:(uint64_t)a1 didInvalidateWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[TVRViewServiceManager remoteAlertHandle:didInvalidateWithError:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "%s error=%{public}@", &v2, 0x16u);
}

void __52__TVRViewServiceManager__launchViewServiceSuspended__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "View service error %{public}@", &v2, 0xCu);
}

@end