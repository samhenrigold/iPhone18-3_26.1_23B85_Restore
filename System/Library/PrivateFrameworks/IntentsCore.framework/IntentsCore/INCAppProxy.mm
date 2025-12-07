@interface INCAppProxy
+ (BOOL)shouldLaunchAppInBackgroundWithIntent:(id)intent intentResponse:(id)response;
+ (void)initialize;
- (INCExtensionConnection)_connection;
- (id)_initWithConnection:(id)connection;
- (void)launchAppInBackground:(BOOL)background restrictAppsToCarPlay:(BOOL)play userActivityIdentifier:(id)identifier completionHandler:(id)handler;
- (void)launchAppInBackground:(BOOL)background restrictAppsToCarPlay:(BOOL)play userActivityIdentifier:(id)identifier retainsSiri:(BOOL)siri completionHandler:(id)handler;
@end

@implementation INCAppProxy

- (INCExtensionConnection)_connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (id)_initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = INCAppProxy;
  v5 = [(INCAppProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

- (void)launchAppInBackground:(BOOL)background restrictAppsToCarPlay:(BOOL)play userActivityIdentifier:(id)identifier retainsSiri:(BOOL)siri completionHandler:(id)handler
{
  siriCopy = siri;
  playCopy = play;
  backgroundCopy = background;
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  _connection = [(INCAppProxy *)self _connection];
  _transaction = [_connection _transaction];

  currentIntent = [_transaction currentIntent];
  state = [_transaction state];
  intentResponse = [state intentResponse];

  v19 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:currentIntent response:intentResponse];
  if (identifierCopy)
  {
    currentUserActivity = [_transaction userActivityWithIdentifier:identifierCopy];
    if (!currentUserActivity)
    {
      v21 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]";
        *&buf[12] = 2114;
        *&buf[14] = identifierCopy;
        _os_log_error_impl(&dword_255503000, v21, OS_LOG_TYPE_ERROR, "%s Unable to find user activity for identifier %{public}@", buf, 0x16u);
      }

      currentUserActivity = 0;
    }
  }

  else
  {
    currentUserActivity = [_transaction currentUserActivity];
  }

  v44 = 0;
  v22 = [[INCAppLaunchRequest alloc] initWithInteraction:v19 userActivity:currentUserActivity inBackground:backgroundCopy retainsSiri:siriCopy error:&v44];
  v40 = v44;
  if (!v22)
  {
    v30 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]";
      *&buf[12] = 2114;
      *&buf[14] = v40;
      _os_log_error_impl(&dword_255503000, v30, OS_LOG_TYPE_ERROR, "%s Unable to construct launch request: %{public}@", buf, 0x16u);
      if (!handlerCopy)
      {
        goto LABEL_30;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_30;
    }

    handlerCopy[2](handlerCopy, 0, v40);
    goto LABEL_30;
  }

  if (!playCopy || backgroundCopy)
  {
    goto LABEL_13;
  }

  initAndWaitUntilSessionUpdated = [objc_alloc(getCARSessionStatusClass()) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  if (!currentSession || [(INCAppLaunchRequest *)v22 isSupportedInCarPlay])
  {

LABEL_13:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x2050000000;
      v25 = getTUCallCenterClass_softClass;
      v48 = getTUCallCenterClass_softClass;
      if (!getTUCallCenterClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getTUCallCenterClass_block_invoke;
        v52 = &unk_2797E8190;
        v53 = &v45;
        __getTUCallCenterClass_block_invoke(buf);
        v25 = v46[3];
      }

      v26 = v25;
      _Block_object_dispose(&v45, 8);
      sharedInstance = [v25 sharedInstance];
      v28 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:currentIntent response:intentResponse];
      [sharedInstance applicationWillLaunchForStartCallInteraction:v28];
    }

    v29 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_255503000, v29, OS_LOG_TYPE_INFO, "%s Performing launch request: %@", buf, 0x16u);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __112__INCAppProxy_launchAppInBackground_restrictAppsToCarPlay_userActivityIdentifier_retainsSiri_completionHandler___block_invoke;
    v41[3] = &unk_2797E79E8;
    v42 = v22;
    v43 = handlerCopy;
    [(INCAppLaunchRequest *)v42 performWithCompletionHandler:v41];

    goto LABEL_30;
  }

  v31 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    log = v31;
    bundleIdentifier = [(INCAppLaunchRequest *)v22 bundleIdentifier];
    *buf = 136315394;
    *&buf[4] = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = bundleIdentifier;
    _os_log_error_impl(&dword_255503000, log, OS_LOG_TYPE_ERROR, "%s Refusing to launch %{public}@ while CarPlay is active because it is not available in CarPlay", buf, 0x16u);
  }

  if (handlerCopy)
  {
    loga = MEMORY[0x277CCACA8];
    bundleIdentifier2 = [(INCAppLaunchRequest *)v22 bundleIdentifier];
    logb = [loga stringWithFormat:@"Cannot launch %@ while CarPlay is active because it is not available in CarPlay", bundleIdentifier2];

    v35 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA068];
    v50 = logb;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v36 = [v35 errorWithDomain:@"INCExtensionErrorDomain" code:1319 userInfo:v33];

    handlerCopy[2](handlerCopy, 0, v36);
  }

LABEL_30:
}

void __112__INCAppProxy_launchAppInBackground_restrictAppsToCarPlay_userActivityIdentifier_retainsSiri_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 136315394;
      v12 = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Successfully performed launch request %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 136315650;
    v12 = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    _os_log_error_impl(&dword_255503000, v6, OS_LOG_TYPE_ERROR, "%s Failed to perform launch request %@: %{public}@", &v11, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

- (void)launchAppInBackground:(BOOL)background restrictAppsToCarPlay:(BOOL)play userActivityIdentifier:(id)identifier completionHandler:(id)handler
{
  backgroundCopy = background;
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v11 = getAFIsPersistentSiriAvailableSymbolLoc_ptr;
  v18 = getAFIsPersistentSiriAvailableSymbolLoc_ptr;
  if (!getAFIsPersistentSiriAvailableSymbolLoc_ptr)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke;
    v14[3] = &unk_2797E8190;
    v14[4] = &v15;
    __getAFIsPersistentSiriAvailableSymbolLoc_block_invoke(v14);
    v11 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v11)
  {
    v12 = dlerror();
    v13 = abort_report_np("%s", v12);
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v13);
  }

  [(INCAppProxy *)self launchAppInBackground:backgroundCopy restrictAppsToCarPlay:0 userActivityIdentifier:0 retainsSiri:v11() completionHandler:handlerCopy];
}

+ (BOOL)shouldLaunchAppInBackgroundWithIntent:(id)intent intentResponse:(id)response
{
  v52 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  responseCopy = response;
  v7 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
    _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  initAndWaitUntilSessionUpdated = [objc_alloc(getCARSessionStatusClass()) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  v10 = currentSession != 0;
  configuration = [currentSession configuration];
  videoPlaybackSupported = [configuration videoPlaybackSupported];

  v13 = INIsDeviceLocked();
  if (v13 & 1 | (currentSession != 0))
  {
    _intents_bundleIdForLaunching = [intentCopy _intents_bundleIdForLaunching];
    objc_opt_class();
    if ((v13 & videoPlaybackSupported & objc_opt_isKindOfClass()) == 1 && ![INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:_intents_bundleIdForLaunching hasPayload:1])
    {
      v10 = 1;
LABEL_51:

      goto LABEL_52;
    }

    v14 = intentCopy;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v41 = v15;

      v16 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      v19 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v18 = 0;
      v41 = 0;
      v20 = 0;
    }

    v21 = v20;

    if (!(v41 | v18) && !v21)
    {
      v10 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2050000000;
    v22 = getTUCallProviderManagerClass_softClass;
    v48 = getTUCallProviderManagerClass_softClass;
    if (!getTUCallProviderManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getTUCallProviderManagerClass_block_invoke;
      v50 = &unk_2797E8190;
      v51 = &v45;
      __getTUCallProviderManagerClass_block_invoke(buf);
      v22 = v46[3];
    }

    v23 = v22;
    _Block_object_dispose(&v45, 8);
    v40 = objc_alloc_init(v22);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __68__INCAppProxy_shouldLaunchAppInBackgroundWithIntent_intentResponse___block_invoke;
    v43[3] = &unk_2797E7A10;
    v24 = _intents_bundleIdForLaunching;
    v44 = v24;
    v25 = [v40 providersPassingTest:v43];
    firstObject = [v25 firstObject];

    if (!firstObject)
    {
      v27 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_49;
      }

      *buf = 136315394;
      *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
      *&buf[12] = 2114;
      *&buf[14] = v24;
      v28 = "%s Calling intent has an unknown call provider (%{public}@), preventing us from determining if the app should be launched in the background";
      v29 = v27;
      v30 = 22;
LABEL_29:
      _os_log_fault_impl(&dword_255503000, v29, OS_LOG_TYPE_FAULT, v28, buf, v30);
      goto LABEL_49;
    }

    if ([firstObject isSystemProvider])
    {
LABEL_25:
      v10 = 1;
LABEL_49:

      goto LABEL_50;
    }

    if ([responseCopy _intentResponseCode] == 6)
    {
      v31 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
        _os_log_impl(&dword_255503000, v31, OS_LOG_TYPE_INFO, "%s Call intent failed requiring app launch, launching app in the foreground", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_49;
    }

    if (v41 | v18)
    {
      if (v41)
      {
        v32 = v41;
      }

      else
      {
        v32 = v18;
      }

      destinationType = [v32 destinationType];
      v34 = destinationType;
      if (destinationType == 3)
      {
        supportsVoicemail = [firstObject supportsVoicemail];
        goto LABEL_48;
      }

      if (destinationType == 2)
      {
        supportsVoicemail = [firstObject supportsEmergency];
        goto LABEL_48;
      }

      if (v41)
      {
        callCapability = [v41 callCapability];
        v36 = callCapability;
        if (callCapability != 2)
        {
          if (callCapability != 1)
          {
            goto LABEL_45;
          }

LABEL_58:
          if ([firstObject supportsAudioOnly])
          {
            goto LABEL_25;
          }

          supportsVoicemail = [firstObject supportsAudioAndVideo];
LABEL_48:
          v10 = supportsVoicemail;
          goto LABEL_49;
        }

LABEL_43:
        supportsVoicemail = [firstObject supportsAudioAndVideo];
        goto LABEL_48;
      }

      if (v18)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v34 = 0;
    }

    if (!v21)
    {
      v36 = 0;
LABEL_45:
      v37 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_49;
      }

      *buf = 136315650;
      *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
      *&buf[12] = 2048;
      *&buf[14] = v34;
      *&buf[22] = 2048;
      v50 = v36;
      v28 = "%s Calling intent had an unknown call destination (%lu) and/or an unknown call capability (%lu), preventing us from determining if the app should be launched in the background.";
      v29 = v37;
      v30 = 32;
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  v10 = 0;
LABEL_52:

  return v10;
}

uint64_t __68__INCAppProxy_shouldLaunchAppInBackgroundWithIntent_intentResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end