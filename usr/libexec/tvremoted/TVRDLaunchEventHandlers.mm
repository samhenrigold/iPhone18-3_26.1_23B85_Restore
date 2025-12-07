@interface TVRDLaunchEventHandlers
+ (id)sharedInstance;
- (void)_enableTVRemoteControlCenterModule;
- (void)_setupDistnotedHandlers;
- (void)_setupNotificationHandlers;
- (void)_setupNotifydHandlers;
- (void)setupHandlers;
@end

@implementation TVRDLaunchEventHandlers

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TVRDLaunchEventHandlers sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __41__TVRDLaunchEventHandlers_sharedInstance__block_invoke(id a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(TVRDLaunchEventHandlers);

  _objc_release_x1();
}

- (void)setupHandlers
{
  [(TVRDLaunchEventHandlers *)self _setupNotifydHandlers];
  [(TVRDLaunchEventHandlers *)self _setupDistnotedHandlers];

  [(TVRDLaunchEventHandlers *)self _setupNotificationHandlers];
}

- (void)_setupNotificationHandlers
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up NSNotification handlers", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_enableTVRemoteControlCenterModule" name:TVRXManagedConfigManagerTVRemoteAllowedTVAdded object:0];
}

- (void)_setupDistnotedHandlers
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up com.apple.distnoted.matching handlers", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke;
  handler[3] = &unk_1000207A8;
  objc_copyWeak(&v6, buf);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = strcmp("tvremote.applicationRegistered", string);
    if (!v5)
    {
      v6 = _TVRDXPCLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received an application registered LaunchEvent", buf, 2u);
      }

      v7 = xpc_dictionary_get_value(v3, "UserInfo");
      v8 = v7;
      if (!v7 || xpc_get_type(v7) != &_xpc_type_dictionary)
      {
        goto LABEL_23;
      }

      v9 = _CFXPCCreateCFObjectFromXPCObject();
      v10 = v9;
      if (!v9)
      {
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v11 = [v9 objectForKeyedSubscript:@"bundleIDs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        WeakRetained = _TVRDXPCLog(isKindOfClass);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          __50__TVRDLaunchEventHandlers__setupDistnotedHandlers__block_invoke_cold_1(WeakRetained);
        }

        goto LABEL_20;
      }

      v13 = [v10 objectForKeyedSubscript:@"isPlaceholder"];
      v14 = [v13 BOOLValue];

      if ((v14 & 1) == 0)
      {
        v15 = [v11 containsObject:@"com.apple.TVRemote"];
        if (v15)
        {
          v16 = _TVRDXPCLog(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 0;
            v17 = "TVRemote application registered";
            v18 = &v22;
LABEL_18:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
            goto LABEL_19;
          }

          goto LABEL_19;
        }

        v20 = [v11 containsObject:@"com.apple.Remote"];
        if (v20)
        {
          v16 = _TVRDXPCLog(v20);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 0;
            v17 = "iTunes Remote application registered";
            v18 = &v21;
            goto LABEL_18;
          }

LABEL_19:

          WeakRetained = objc_loadWeakRetained((a1 + 32));
          [WeakRetained _enableTVRemoteControlCenterModule];
LABEL_20:
        }
      }

      goto LABEL_22;
    }
  }

LABEL_24:
}

- (void)_setupNotifydHandlers
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up com.apple.notifyd.matching handlers", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __48__TVRDLaunchEventHandlers__setupNotifydHandlers__block_invoke;
  handler[3] = &unk_1000207D0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
}

void __48__TVRDLaunchEventHandlers__setupNotifydHandlers__block_invoke(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = strcmp("tvremote.TapToSetupUsed", string);
    if (v5)
    {
      v6 = strcmp("tvremote.ContinuityKeyBoardEnabled", v4);
      if (!v6)
      {
        v16 = _TVRDXPCLog(v6);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v18 = "Received tvremote.ContinuityKeyBoardEnabled LaunchEvent";
          goto LABEL_22;
        }

LABEL_23:

LABEL_37:
        [*(a1 + 32) _enableTVRemoteControlCenterModule];
        return;
      }

      v7 = strcmp("tvremote.connectionRequested", v4);
      if (!v7)
      {
        v16 = _TVRDXPCLog(v7);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v18 = "Received tvremote.connectionRequested LaunchEvent";
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v8 = strcmp("tvremote.dataMigrationFinished", v4);
      if (v8)
      {
        v9 = strcmp("tvremote.airplayTVAdded", v4);
        if (!v9 || (v9 = strcmp("tvremote.appleTVAdded", v4), !v9))
        {
          v24 = _TVRDXPCLog(v9);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 136446210;
            *&v32[4] = v4;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received %{public}s LaunchEvent", v32, 0xCu);
          }

          goto LABEL_37;
        }

        v10 = strcmp("tvremote.mdmProfileInstalled", v4);
        if (v10)
        {
          return;
        }

        v11 = _TVRDXPCLog(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 136446210;
          *&v32[4] = v4;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %{public}s LaunchEvent", v32, 0xCu);
        }

        v12 = +[TVRXManagedConfigManager sharedInstance];
        [v12 refreshState];

        v13 = +[TVRXManagedConfigManager sharedInstance];
        v14 = [v13 isManagedConfigProfileInstalled];

        v16 = _TVRDXPCLog(v15);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v17)
          {
            *v32 = 0;
            v18 = "MDM Profile installed with MCFeatureTVRemoteAllowedTVs";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, v32, 2u);
            goto LABEL_23;
          }

          goto LABEL_23;
        }

        if (v17)
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MDM Profile installed but did not include MCFeatureTVRemoteAllowedTVs", v32, 2u);
        }
      }

      else
      {
        v25 = _TVRDXPCLog(v8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received tvremote.dataMigrationFinished LaunchEvent", v32, 2u);
        }

        v26 = +[LSApplicationWorkspace defaultWorkspace];
        v27 = [v26 applicationIsInstalled:@"com.apple.TVRemote"];

        v28 = +[LSApplicationWorkspace defaultWorkspace];
        v29 = [v28 applicationIsInstalled:@"com.apple.Remote"];

        v31 = _TVRDXPCLog(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 67109376;
          *&v32[4] = v27;
          *&v32[8] = 1024;
          *&v32[10] = v29;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Value for remoteAppInstalled is %d, iTunesRemoteAppInstalled is %d", v32, 0xEu);
        }

        if ((v27 | v29))
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v19 = _TVRDXPCLog(v5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received tvremote.TapToSetupUsed LaunchEvent", v32, 2u);
      }

      v20 = CFPreferencesCopyValue(@"atvSetupCompleted", @"com.apple.Sharing", @"mobile", kCFPreferencesCurrentHost);
      if (v20)
      {
        v21 = v20;
        v22 = CFGetInt64() != 0;
        CFRelease(v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = _TVRDXPCLog(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 67109120;
        *&v32[4] = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Value for atvSetupCompleted is %d", v32, 8u);
      }

      if (v22)
      {
        goto LABEL_37;
      }
    }
  }
}

- (void)_enableTVRemoteControlCenterModule
{
  v3 = _TVRDXPCLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling TVRemote module if necessary", buf, 2u);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"AppleTVDetectionRanOnce"];
  if (v5)
  {
    v6 = _TVRDXPCLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Module already enabled once, bailing out without doing anything.", buf, 2u);
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke;
    v7[3] = &unk_100020820;
    v7[4] = self;
    v8 = v4;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestedModuleEnablement];
  v3 = v2;
  v4 = _TVRDXPCLog(v2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "There is an existing request to enable TVRemote CC module in progress. Ignoring this request", buf, 2u);
    }

    goto LABEL_12;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client requested enabling TVRemote module in Control Center", buf, 2u);
  }

  if (GestaltGetDeviceClass() == 3)
  {
    v6 = [[CCSIconElementRequest alloc] initWithIntent:2 moduleIdentifier:@"com.apple.control-center.AppleTVRemoteModule" containerBundleIdentifier:@"com.apple.TVRemoteUIService" moduleSize:0];
  }

  else
  {
    if (GestaltGetDeviceClass() != 1)
    {
      return;
    }

    v6 = [[CCSIconElementRequest alloc] initWithIntent:2 controlKind:@"com.apple.TVRemoteUIService.widget.button" controlType:2 extensionBundleIdentifier:@"com.apple.TVRemoteUIService.TVRemoteWidget" containerBundleIdentifier:@"com.apple.TVRemoteUIService" size:0];
  }

  v4 = v6;
  if (v6)
  {
    [*(a1 + 32) setRequestedModuleEnablement:1];
    v7 = +[CCSControlCenterService sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57;
    v9[3] = &unk_1000207F8;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 handleIconElementRequest:v4 completionHandler:v9];

LABEL_12:
  }
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _TVRDXPCLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "Successfully added TVRemote module to Control Center";
      v9 = &v13;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v10 = [v5 code];
    v11 = _TVRDXPCLog(v10);
    v7 = v11;
    if (v10 == 5)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "TVRemote module already exists in Control Center";
        v9 = &v12;
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57_cold_1(v6, v7);
    }
  }

  [*(a1 + 32) setRequestedModuleEnablement:0];
  [*(a1 + 40) setBool:1 forKey:@"AppleTVDetectionRanOnce"];
}

void __61__TVRDLaunchEventHandlers__enableTVRemoteControlCenterModule__block_invoke_57_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add TVRemote module to Control Center %{public}@", &v2, 0xCu);
}

@end