@interface IntentHandler
- (id)_resolveApplication:(id)application;
- (id)_resolveCaptionsToggle:(int64_t)toggle;
- (id)_resolveDevice:(id)device;
- (id)_resolveMediaCommand:(int64_t)command;
- (id)_resolveReduceLoudSoundsToggle:(id)toggle;
- (id)_resolveSkipCommand:(int64_t)command;
- (id)_resolveSkipDuration:(id)duration;
- (id)_resolveSystemAppearanceToggle:(int64_t)toggle;
- (id)_resolveUserAccount:(id)account;
- (id)defaultApplicationForLaunchApplication:(id)application;
- (id)handlerForIntent:(id)intent;
- (void)confirmLaunchTVApp:(id)app completion:(id)completion;
- (void)handleLaunchApplication:(id)application completion:(id)completion;
- (void)handleLaunchRemote:(id)remote completion:(id)completion;
- (void)handleLaunchScreenSaver:(id)saver completion:(id)completion;
- (void)handleLaunchTVApp:(id)app completion:(id)completion;
- (void)handlePauseContent:(id)content completion:(id)completion;
- (void)handleReduceLoudSounds:(id)sounds completion:(id)completion;
- (void)handleSkipContent:(id)content completion:(id)completion;
- (void)handleSleepAppleTV:(id)v completion:(id)completion;
- (void)handleSwitchUserAccount:(id)account completion:(id)completion;
- (void)handleToggleCaptions:(id)captions completion:(id)completion;
- (void)handleToggleSystemAppearance:(id)appearance completion:(id)completion;
- (void)handleWakeAppleTV:(id)v completion:(id)completion;
- (void)provideAccountOptionsCollectionForSwitchUserAccount:(id)account withCompletion:(id)completion;
- (void)provideApplicationOptionsCollectionForLaunchApplication:(id)application withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForLaunchApplication:(id)application withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForLaunchRemote:(id)remote withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForLaunchScreenSaver:(id)saver withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForPauseContent:(id)content withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForReduceLoudSounds:(id)sounds withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForSkipContent:(id)content withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForSleepAppleTV:(id)v withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForSwitchUserAccount:(id)account withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForToggleCaptions:(id)captions withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForToggleSystemAppearance:(id)appearance withCompletion:(id)completion;
- (void)provideDeviceOptionsCollectionForWakeAppleTV:(id)v withCompletion:(id)completion;
- (void)resolveAccountForSwitchUserAccount:(id)account withCompletion:(id)completion;
- (void)resolveAppearanceToggleForToggleSystemAppearance:(id)appearance withCompletion:(id)completion;
- (void)resolveApplicationForLaunchApplication:(id)application withCompletion:(id)completion;
- (void)resolveDeviceForLaunchApplication:(id)application withCompletion:(id)completion;
- (void)resolveDeviceForLaunchRemote:(id)remote withCompletion:(id)completion;
- (void)resolveDeviceForLaunchScreenSaver:(id)saver withCompletion:(id)completion;
- (void)resolveDeviceForPauseContent:(id)content withCompletion:(id)completion;
- (void)resolveDeviceForReduceLoudSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveDeviceForSkipContent:(id)content withCompletion:(id)completion;
- (void)resolveDeviceForSleepAppleTV:(id)v withCompletion:(id)completion;
- (void)resolveDeviceForSwitchUserAccount:(id)account withCompletion:(id)completion;
- (void)resolveDeviceForToggleCaptions:(id)captions withCompletion:(id)completion;
- (void)resolveDeviceForToggleSystemAppearance:(id)appearance withCompletion:(id)completion;
- (void)resolveDeviceForWakeAppleTV:(id)v withCompletion:(id)completion;
- (void)resolveMediaCommandForPauseContent:(id)content withCompletion:(id)completion;
- (void)resolveSkipCommandForSkipContent:(id)content withCompletion:(id)completion;
- (void)resolveSkipDurationForSkipContent:(id)content withCompletion:(id)completion;
- (void)resolveToggleForReduceLoudSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveToggleForToggleCaptions:(id)captions withCompletion:(id)completion;
@end

@implementation IntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  v5 = _TVRIntentExtensionLog(intentCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[IntentHandler handlerForIntent:]";
    v9 = 2114;
    v10 = intentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v7, 0x16u);
  }

  return self;
}

- (void)handleWakeAppleTV:(id)v completion:(id)completion
{
  vCopy = v;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleWakeAppleTV:completion:]";
    v18 = 2114;
    v19 = vCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [vCopy device];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleWakeAppleTV_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = vCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = vCopy;
  [v8 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __46__IntentHandler_handleWakeAppleTV_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v18, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:21];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[WakeAppleTVIntentResponse alloc] initWithCode:4 userActivity:0];
    v13 = +[TVRCAnalytics sharedInstance];
    [v13 logShortcutActionRunWithType:@"Wake_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    v14 = [[WakeAppleTVIntentResponse alloc] initWithCode:5 userActivity:0];
    v12 = v14;
  }

  v15 = _TVRIntentExtensionLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v18, 0x16u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v12);
  }
}

- (void)provideDeviceOptionsCollectionForWakeAppleTV:(id)v withCompletion:(id)completion
{
  vCopy = v;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForWakeAppleTV:withCompletion:]";
    v11 = 2114;
    v12 = vCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForWakeAppleTV:(id)v withCompletion:(id)completion
{
  completionCopy = completion;
  device = [v device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleSleepAppleTV:(id)v completion:(id)completion
{
  vCopy = v;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleSleepAppleTV:completion:]";
    v18 = 2114;
    v19 = vCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [vCopy device];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __47__IntentHandler_handleSleepAppleTV_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = vCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = vCopy;
  [v8 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __47__IntentHandler_handleSleepAppleTV_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v18, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:22];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[SleepAppleTVIntentResponse alloc] initWithCode:4 userActivity:0];
    v13 = +[TVRCAnalytics sharedInstance];
    [v13 logShortcutActionRunWithType:@"Sleep_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    v14 = [[SleepAppleTVIntentResponse alloc] initWithCode:5 userActivity:0];
    v12 = v14;
  }

  v15 = _TVRIntentExtensionLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v18, 0x16u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v12);
  }
}

- (void)provideDeviceOptionsCollectionForSleepAppleTV:(id)v withCompletion:(id)completion
{
  vCopy = v;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSleepAppleTV:withCompletion:]";
    v11 = 2114;
    v12 = vCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForSleepAppleTV:(id)v withCompletion:(id)completion
{
  completionCopy = completion;
  device = [v device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleLaunchRemote:(id)remote completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[IntentHandler handleLaunchRemote:completion:]";
    v28 = 2114;
    v29 = remoteCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = TVRViewServiceDeviceIdentifierTypeNone;
  device = [remoteCopy device];
  identifier = [device identifier];
  if (!identifier)
  {
    goto LABEL_6;
  }

  device2 = [remoteCopy device];
  identifier2 = [device2 identifier];
  v13 = [identifier2 length];

  if (v13)
  {
    device = [remoteCopy device];
    identifier = [device identifier];
    v8 = 1;
LABEL_6:

    goto LABEL_8;
  }

  identifier = 0;
LABEL_8:
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = __47__IntentHandler_handleLaunchRemote_completion___block_invoke;
  v23 = &unk_1000103A0;
  v14 = identifier;
  v24 = v14;
  v25 = v8;
  dispatch_async(&_dispatch_main_q, &v20);
  v16 = _TVRIntentExtensionLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Lauching the TVRemote with deviceIdentifier=%{public}@", buf, 0xCu);
  }

  v17 = [TVRCAnalytics sharedInstance:v20];
  [v17 logShortcutActionRunWithType:@"LaunchRemote_AppleTV"];

  if (completionCopy)
  {
    v18 = [[LaunchRemoteIntentResponse alloc] initWithCode:4 userActivity:0];
    v19 = _TVRIntentExtensionLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = remoteCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v18);
  }
}

void __47__IntentHandler_handleLaunchRemote_completion___block_invoke(uint64_t a1)
{
  v2 = [[TVRViewServiceConfigContext alloc] initWithDeviceIdentifier:*(a1 + 32) identifierType:*(a1 + 40) deviceType:1 launchContext:4 launchMethod:1];
  v1 = +[TVRViewServiceManager sharedInstance];
  [v1 presentWithContext:v2];
}

- (void)provideDeviceOptionsCollectionForLaunchRemote:(id)remote withCompletion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchRemote:withCompletion:]";
    v11 = 2114;
    v12 = remoteCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForLaunchRemote:(id)remote withCompletion:(id)completion
{
  completionCopy = completion;
  device = [remote device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handlePauseContent:(id)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handlePauseContent:completion:]";
    v18 = 2114;
    v19 = contentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  device = [contentCopy device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __47__IntentHandler_handlePauseContent_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = contentCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = contentCopy;
  [v9 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __47__IntentHandler_handlePauseContent_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mediaCommand];
  if (!v3 || (v5 = v4) == 0)
  {
    v13 = [PauseContentIntentResponse alloc];
    v14 = 5;
    goto LABEL_15;
  }

  v6 = _TVRIntentExtensionLog(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v22 = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v22, 0x16u);
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = [TVRCButton alloc];
    if (v5 == 3)
    {
      v9 = 204;
    }

    else
    {
      v9 = 205;
    }

    v10 = [v8 _initWithButtonType:v9];
    v11 = v10;
    v12 = 0;
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v10 = [[TVRCButton alloc] _initWithButtonType:5];
    v15 = [TVRCButtonEvent buttonEventForButton:v10 eventType:1];
    [v3 sendButtonEvent:v15];

    v11 = v10;
    v12 = 2;
LABEL_13:
    v16 = [TVRCButtonEvent buttonEventForButton:v11 eventType:v12];
    [v3 sendButtonEvent:v16];
  }

  v17 = +[TVRCAnalytics sharedInstance];
  [v17 logShortcutActionRunWithType:@"PlayPause_AppleTV"];

  v13 = [PauseContentIntentResponse alloc];
  v14 = 4;
LABEL_15:
  v18 = [v13 initWithCode:v14 userActivity:0];
  v19 = _TVRIntentExtensionLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v22 = 138543618;
    v23 = v20;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v22, 0x16u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v18);
  }
}

- (void)provideDeviceOptionsCollectionForPauseContent:(id)content withCompletion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForPauseContent:withCompletion:]";
    v11 = 2114;
    v12 = contentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForPauseContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  device = [content device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveMediaCommandForPauseContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = -[IntentHandler _resolveMediaCommand:](self, "_resolveMediaCommand:", [content mediaCommand]);
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleLaunchTVApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchTVApp:completion:]";
    v18 = 2114;
    v19 = appCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  device = [appCopy device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleLaunchTVApp_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = appCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = appCopy;
  [v9 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __46__IntentHandler_handleLaunchTVApp_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:21];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [TVRCButton alloc];
    v22 = TVRCButtonApplicationBundleIDKey;
    v23 = @"com.apple.TVWatchList";
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [v12 _initWithButtonType:20 hasTapAction:1 properties:v13];

    v15 = [TVRCButtonEvent buttonEventForButton:v14 eventType:0];
    [v5 sendButtonEvent:v15];

    v16 = [[LaunchTVAppIntentResponse alloc] initWithCode:4 userActivity:0];
    v17 = +[TVRCAnalytics sharedInstance];
    [v17 logShortcutActionRunWithType:@"LaunchApp_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    v18 = [[LaunchTVAppIntentResponse alloc] initWithCode:5 userActivity:0];
    v16 = v18;
  }

  v19 = _TVRIntentExtensionLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543618;
    v25 = v20;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v16);
  }
}

- (void)confirmLaunchTVApp:(id)app completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[IntentHandler confirmLaunchTVApp:completion:]";
    v17 = 2114;
    v18 = appCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v15, 0x16u);
  }

  device = [appCopy device];
  v9 = device;
  if (device && ([device identifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = _TVRIntentExtensionLog(device);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = appCopy;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v15, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    v11 = _TVRIntentExtensionLog(device);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler confirmLaunchTVApp:v9 completion:v11];
    }

    v12 = 5;
  }

  v13 = [[LaunchTVAppIntentResponse alloc] initWithCode:v12 userActivity:0];
  v14 = _TVRIntentExtensionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = appCopy;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v15, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v13);
  }
}

- (void)handleLaunchApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchApplication:completion:]";
    v18 = 2114;
    v19 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [applicationCopy device];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __52__IntentHandler_handleLaunchApplication_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = applicationCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = applicationCopy;
  [v8 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __52__IntentHandler_handleLaunchApplication_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) application];
  v9 = [v8 identifier];

  v11 = _TVRIntentExtensionLog(v10);
  v12 = v11;
  if (v5 && v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v7;
      *buf = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v15 = _TVRIntentExtensionLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[IntentHandler handleLaunchApplication:completion:]_block_invoke";
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s with bundleID %@", buf, 0x16u);
    }

    v16 = [[TVRCButton alloc] _initWithButtonType:21];
    v17 = [TVRCButtonEvent buttonEventForButton:v16 eventType:2];
    [v5 sendButtonEvent:v17];

    v18 = [TVRCButton alloc];
    v28 = TVRCButtonApplicationBundleIDKey;
    v29 = v9;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [v18 _initWithButtonType:20 hasTapAction:1 properties:v19];

    v21 = [TVRCButtonEvent buttonEventForButton:v20 eventType:0];
    [v5 sendButtonEvent:v21];

    v22 = [[LaunchApplicationIntentResponse alloc] initWithCode:4 userActivity:0];
    v23 = +[TVRCAnalytics sharedInstance];
    [v23 logShortcutActionRunWithType:@"LaunchApp_AppleTV"];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__IntentHandler_handleLaunchApplication_completion___block_invoke_cold_1();
    }

    v24 = [[LaunchApplicationIntentResponse alloc] initWithCode:5 userActivity:0];
    v22 = v24;
  }

  v25 = _TVRIntentExtensionLog(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *v7;
    *buf = 138543618;
    v31 = v26;
    v32 = 2114;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v22);
  }
}

- (id)defaultApplicationForLaunchApplication:(id)application
{
  v3 = [[TVRApplication alloc] initWithIdentifier:@"com.apple.TVWatchList" displayString:@"TV"];

  return v3;
}

- (void)provideApplicationOptionsCollectionForLaunchApplication:(id)application withCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v8 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:]";
    v31 = 2114;
    v32 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  device = [applicationCopy device];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"TVRI_APPLICATION_FETCH_ERROR" value:&stru_100010700 table:0];
  displayString = [device displayString];
  v13 = [NSString stringWithFormat:v11, displayString];

  if (device)
  {
    objc_initWeak(buf, self);
    v14 = +[TVRIntentExtensionDeviceManager sharedInstance];
    identifier = [device identifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke;
    v22[3] = &unk_1000103F0;
    objc_copyWeak(&v26, buf);
    v23 = applicationCopy;
    v24 = v13;
    v25 = completionCopy;
    [v14 resolveDeviceWithIdentifier:identifier handler:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    v27 = NSLocalizedDescriptionKey;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"TVRI_APPLICATION_FETCH_ERROR_TV_NOT_FOUND" value:&stru_100010700 table:0];
    v28 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = TVRCMakeError();

    v21 = _TVRIntentExtensionLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _TVRIntentExtensionLog(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543618;
        v30 = v7;
        v31 = 2114;
        v32 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
      }

      v8 = [TVRCDeviceEventManager alloc];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44;
      v22 = &unk_1000103C8;
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v9 = [v8 initWithDevice:v3 responseHandler:&v19];
      [v5 setEventManager:{v9, v19, v20, v21, v22}];

      v10 = [v5 eventManager];
      v11 = TVRCFetchLaunchableApplicationsEvent;
      v12 = *(a1 + 40);
      v27 = NSLocalizedDescriptionKey;
      v28 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v10 sendEvent:v11 options:v13];

      v14 = v23;
    }

    else
    {
      v15 = *(a1 + 40);
      v25 = NSLocalizedDescriptionKey;
      v26 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v14 = TVRCMakeError();

      v18 = _TVRIntentExtensionLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (a5)
  {
    v9 = *(a1 + 32);
    v33 = NSLocalizedDescriptionKey;
    v34 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v11 = TVRCMakeError();

    v13 = _TVRIntentExtensionLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __88__IntentHandler_provideApplicationOptionsCollectionForLaunchApplication_withCompletion___block_invoke_44_cold_1();
    }

    (*(*(a1 + 40) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if ([a2 isEqualToString:TVRCFetchLaunchableApplicationsEvent])
  {
    v11 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = [v8 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v8 objectForKey:v19];
          v21 = [[TVRApplication alloc] initWithIdentifier:v19 displayString:v20 pronunciationHint:v20];
          [v11 addObject:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    if ([v11 count])
    {
      v22 = [NSSortDescriptor sortDescriptorWithKey:@"displayString" ascending:1];
      v31 = v22;
      v23 = [NSArray arrayWithObjects:&v31 count:1];
      [v11 sortUsingDescriptors:v23];

      v24 = *(a1 + 40);
      v25 = [[INObjectCollection alloc] initWithItems:v11];
      (*(v24 + 16))(v24, v25, 0);
    }

    else
    {
      v25 = TVRCMakeError();
      v26 = _TVRIntentExtensionLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [IntentHandler provideApplicationOptionsCollectionForLaunchApplication:withCompletion:];
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v25);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)provideDeviceOptionsCollectionForLaunchApplication:(id)application withCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchApplication:withCompletion:]";
    v11 = 2114;
    v12 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveApplicationForLaunchApplication:(id)application withCompletion:(id)completion
{
  completionCopy = completion;
  application = [application application];
  v8 = [(IntentHandler *)self _resolveApplication:application];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveDeviceForLaunchApplication:(id)application withCompletion:(id)completion
{
  completionCopy = completion;
  device = [application device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleLaunchScreenSaver:(id)saver completion:(id)completion
{
  saverCopy = saver;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleLaunchScreenSaver:completion:]";
    v18 = 2114;
    v19 = saverCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  device = [saverCopy device];
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __52__IntentHandler_handleLaunchScreenSaver_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = saverCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = saverCopy;
  [v9 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __52__IntentHandler_handleLaunchScreenSaver_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v17, 0x16u);
    }

    v10 = [[TVRCButton alloc] _initWithButtonType:19];
    v11 = [TVRCButtonEvent buttonEventForButton:v10 eventType:2];
    [v5 sendButtonEvent:v11];

    v12 = [[LaunchScreenSaverIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    v13 = [[LaunchScreenSaverIntentResponse alloc] initWithCode:5 userActivity:0];
    v12 = v13;
  }

  v14 = _TVRIntentExtensionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v17, 0x16u);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v12);
  }
}

- (void)provideDeviceOptionsCollectionForLaunchScreenSaver:(id)saver withCompletion:(id)completion
{
  saverCopy = saver;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForLaunchScreenSaver:withCompletion:]";
    v11 = 2114;
    v12 = saverCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForLaunchScreenSaver:(id)saver withCompletion:(id)completion
{
  completionCopy = completion;
  device = [saver device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleToggleCaptions:(id)captions completion:(id)completion
{
  captionsCopy = captions;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleToggleCaptions:completion:]";
    v18 = 2114;
    v19 = captionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [captionsCopy device];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __49__IntentHandler_handleToggleCaptions_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = captionsCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = captionsCopy;
  [v8 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __49__IntentHandler_handleToggleCaptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v18 = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", &v18, 0x16u);
    }

    if ([*(a1 + 32) toggle] == 1)
    {
      v10 = 17;
    }

    else
    {
      v10 = 18;
    }

    v11 = [[TVRCButton alloc] _initWithButtonType:v10];
    v12 = [TVRCButtonEvent buttonEventForButton:v11 eventType:0];
    [v5 sendButtonEvent:v12];

    v13 = [[ToggleCaptionsIntentResponse alloc] initWithCode:4 userActivity:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    v14 = [[ToggleCaptionsIntentResponse alloc] initWithCode:5 userActivity:0];
    v13 = v14;
  }

  v15 = _TVRIntentExtensionLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", &v18, 0x16u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v13);
  }
}

- (void)provideDeviceOptionsCollectionForToggleCaptions:(id)captions withCompletion:(id)completion
{
  captionsCopy = captions;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForToggleCaptions:withCompletion:]";
    v11 = 2114;
    v12 = captionsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveToggleForToggleCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = -[IntentHandler _resolveCaptionsToggle:](self, "_resolveCaptionsToggle:", [captions toggle]);
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveDeviceForToggleCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  device = [captions device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleSwitchUserAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[IntentHandler handleSwitchUserAccount:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = accountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  account = [accountCopy account];
  identifier = [account identifier];

  v11 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [accountCopy device];
  identifier2 = [device identifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke;
  v17[3] = &unk_100010458;
  v17[4] = self;
  v14 = identifier;
  v18 = v14;
  v21 = buf;
  v15 = accountCopy;
  v19 = v15;
  v16 = completionCopy;
  v20 = v16;
  [v11 resolveDeviceWithIdentifier:identifier2 handler:v17];

  _Block_object_dispose(buf, 8);
}

void __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  if (v5)
  {
    v7 = objc_loadWeakRetained(&location);
    v8 = v7;
    if (v7)
    {
      v9 = _TVRIntentExtensionLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138543362;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending switch account for accountID=%{public}@", buf, 0xCu);
      }

      v11 = [[TVRCDeviceEventManager alloc] initWithDevice:v5 responseHandler:&__block_literal_global];
      [v8 setEventManager:v11];

      v12 = [v8 eventManager];
      v13 = *(a1 + 40);
      v33 = TVRCSwitchAccountID;
      v34 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [v12 sendEvent:TVRCSwitchUserAccountEvent options:v14];

      v15 = [SwitchUserAccountIntentResponse alloc];
      v16 = 4;
    }

    else
    {
      v19 = _TVRIntentExtensionLog(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __52__IntentHandler_handleSwitchUserAccount_completion___block_invoke_cold_1(v19);
      }

      v15 = [SwitchUserAccountIntentResponse alloc];
      v16 = 5;
    }

    v20 = [v15 initWithCode:v16 userActivity:0];
    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  else
  {
    v17 = [[SwitchUserAccountIntentResponse alloc] initWithCode:5 userActivity:0];
    v18 = *(*(a1 + 64) + 8);
    v8 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  v24 = _TVRIntentExtensionLog(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 48);
    v26 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138543618;
    v30 = v25;
    v31 = 2114;
    v32 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    (*(v27 + 16))(v27, *(*(*(a1 + 64) + 8) + 40));
  }

  objc_destroyWeak(&location);
}

- (void)provideDeviceOptionsCollectionForSwitchUserAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSwitchUserAccount:withCompletion:]";
    v11 = 2114;
    v12 = accountCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)provideAccountOptionsCollectionForSwitchUserAccount:(id)account withCompletion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v8 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[IntentHandler provideAccountOptionsCollectionForSwitchUserAccount:withCompletion:]";
    v26 = 2114;
    v27 = accountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  device = [accountCopy device];
  if (device)
  {
    objc_initWeak(buf, self);
    v10 = +[TVRIntentExtensionDeviceManager sharedInstance];
    identifier = [device identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke;
    v18[3] = &unk_1000104A8;
    objc_copyWeak(&v21, buf);
    v19 = accountCopy;
    v20 = completionCopy;
    [v10 resolveDeviceWithIdentifier:identifier handler:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = NSLocalizedDescriptionKey;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"TVRI_INVALID_APPLE_TV" value:&stru_100010700 table:0];
    v23 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = TVRCMakeError();

    v17 = _TVRIntentExtensionLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [IntentHandler provideAccountOptionsCollectionForSwitchUserAccount:withCompletion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = _TVRIntentExtensionLog(WeakRetained);
    v10 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138543618;
        v22 = v11;
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
      }

      v12 = [TVRCDeviceEventManager alloc];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60;
      v17[3] = &unk_100010480;
      v18 = v5;
      v20 = *(a1 + 40);
      v19 = v6;
      v13 = [v12 initWithDevice:v18 responseHandler:v17];
      [v8 setEventManager:v13];

      v14 = [v8 eventManager];
      [v14 sendEvent:TVRCFetchUserAccountsEvent options:0];

      v15 = v18;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
      }

      v16 = *(a1 + 40);
      v15 = TVRCMakeError();
      (*(v16 + 16))(v16, 0, v15);
    }
  }
}

void __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = TVRCMakeError();
    v11 = _TVRIntentExtensionLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 138543874;
      v34 = v25;
      v35 = 2114;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create event manager with device=%{public}@, eventManagerError=%{public}@, error=%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  if ([a2 isEqualToString:TVRCFetchUserAccountsEvent])
  {
    v26 = a1;
    v10 = objc_alloc_init(NSMutableArray);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [v8 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v8 objectForKey:v17];
          v19 = [[TVRUserAccount alloc] initWithIdentifier:v17 displayString:v18 pronunciationHint:v18];
          [v10 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    if ([v10 count])
    {
      v20 = [NSSortDescriptor sortDescriptorWithKey:@"displayString" ascending:1];
      v31 = v20;
      v21 = [NSArray arrayWithObjects:&v31 count:1];
      [v10 sortUsingDescriptors:v21];

      v22 = *(v26 + 48);
      v23 = [[INObjectCollection alloc] initWithItems:v10];
      (*(v22 + 16))(v22, v23, 0);
    }

    else
    {
      v23 = TVRCMakeError();
      v24 = _TVRIntentExtensionLog(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __84__IntentHandler_provideAccountOptionsCollectionForSwitchUserAccount_withCompletion___block_invoke_60_cold_1();
      }

      (*(*(v26 + 48) + 16))(*(v26 + 48), 0, v23);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)resolveDeviceForSwitchUserAccount:(id)account withCompletion:(id)completion
{
  completionCopy = completion;
  device = [account device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveAccountForSwitchUserAccount:(id)account withCompletion:(id)completion
{
  completionCopy = completion;
  account = [account account];
  v8 = [(IntentHandler *)self _resolveUserAccount:account];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleSkipContent:(id)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IntentHandler handleSkipContent:completion:]";
    v18 = 2114;
    v19 = contentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [contentCopy device];
  identifier = [device identifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __46__IntentHandler_handleSkipContent_completion___block_invoke;
  v13[3] = &unk_100010378;
  v14 = contentCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = contentCopy;
  [v8 resolveDeviceWithIdentifier:identifier handler:v13];
}

void __46__IntentHandler_handleSkipContent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[SkipContentIntentResponse alloc] initWithCode:4 userActivity:0];
  v8 = _TVRIntentExtensionLog(v7);
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) skipCommand];
    v12 = [*(a1 + 32) skipDuration];
    v9 = v12;
    if (v11 && v12)
    {
      v13 = [TVRCButton alloc];
      if (v11 == 1)
      {
        v26 = TVRCButtonSkipIntervalKey;
        v27 = v9;
        v14 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v15 = [v13 _initWithButtonType:6 hasTapAction:1 properties:v14];
      }

      else
      {
        [v9 doubleValue];
        v14 = [NSNumber numberWithDouble:-v16];
        v25 = v14;
        v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v15 = [v13 _initWithButtonType:7 hasTapAction:1 properties:v17];
      }

      v18 = [TVRCButtonEvent buttonEventForButton:v15 eventType:0];
      [v5 sendButtonEvent:v18];

      v19 = [[SkipContentIntentResponse alloc] initWithCode:4 userActivity:0];
      v7 = v19;
    }

    else
    {
      v15 = _TVRIntentExtensionLog(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TVRIntentExtension: Inavlid configuration for SkipContentIntent", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
  }

  v21 = _TVRIntentExtensionLog(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    *buf = 138543618;
    v29 = v22;
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, v7);
  }
}

- (void)provideDeviceOptionsCollectionForSkipContent:(id)content withCompletion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForSkipContent:withCompletion:]";
    v11 = 2114;
    v12 = contentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForSkipContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  device = [content device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveSkipCommandForSkipContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = -[IntentHandler _resolveSkipCommand:](self, "_resolveSkipCommand:", [content skipCommand]);
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveSkipDurationForSkipContent:(id)content withCompletion:(id)completion
{
  completionCopy = completion;
  skipDuration = [content skipDuration];
  v8 = [(IntentHandler *)self _resolveSkipDuration:skipDuration];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleReduceLoudSounds:(id)sounds completion:(id)completion
{
  soundsCopy = sounds;
  completionCopy = completion;
  v8 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[IntentHandler handleReduceLoudSounds:completion:]";
    v20 = 2114;
    v21 = soundsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [soundsCopy device];
  identifier = [device identifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __51__IntentHandler_handleReduceLoudSounds_completion___block_invoke;
  v14[3] = &unk_1000104A8;
  objc_copyWeak(&v17, buf);
  v12 = soundsCopy;
  v15 = v12;
  v13 = completionCopy;
  v16 = v13;
  [v9 resolveDeviceWithIdentifier:identifier handler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __51__IntentHandler_handleReduceLoudSounds_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [[ReduceLoudSoundsIntentResponse alloc] initWithCode:4 userActivity:0];
  v6 = v5;
  if (v3)
  {
    v7 = _TVRIntentExtensionLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v25 = v8;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
    }

    if (WeakRetained)
    {
      v9 = [[TVRCDeviceEventManager alloc] initWithDevice:v3 responseHandler:&__block_literal_global_70];
      [WeakRetained setEventManager:v9];

      v10 = [*(a1 + 32) toggle];
      v11 = [v10 BOOLValue];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v13 = v12;
      v14 = _TVRIntentExtensionLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending TVRCToggleReduceLoudSounds with value=%{public}@", buf, 0xCu);
      }

      v15 = [WeakRetained eventManager];
      v16 = TVRCToggleReduceLoudSounds;
      v22 = TVRCReduceLoundSoundsEnabled;
      v23 = v13;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v15 sendEvent:v16 options:v17];

      v18 = [[ReduceLoudSoundsIntentResponse alloc] initWithCode:4 userActivity:0];
      v6 = v18;
    }
  }

  v19 = _TVRIntentExtensionLog(v5);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543618;
    v25 = v20;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v6);
  }
}

- (void)provideDeviceOptionsCollectionForReduceLoudSounds:(id)sounds withCompletion:(id)completion
{
  soundsCopy = sounds;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForReduceLoudSounds:withCompletion:]";
    v11 = 2114;
    v12 = soundsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForReduceLoudSounds:(id)sounds withCompletion:(id)completion
{
  completionCopy = completion;
  device = [sounds device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveToggleForReduceLoudSounds:(id)sounds withCompletion:(id)completion
{
  completionCopy = completion;
  toggle = [sounds toggle];
  v8 = [(IntentHandler *)self _resolveReduceLoudSoundsToggle:toggle];
  (*(completion + 2))(completionCopy, v8);
}

- (void)handleToggleSystemAppearance:(id)appearance completion:(id)completion
{
  appearanceCopy = appearance;
  completionCopy = completion;
  v8 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[IntentHandler handleToggleSystemAppearance:completion:]";
    v20 = 2114;
    v21 = appearanceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = +[TVRIntentExtensionDeviceManager sharedInstance];
  device = [appearanceCopy device];
  identifier = [device identifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __57__IntentHandler_handleToggleSystemAppearance_completion___block_invoke;
  v14[3] = &unk_100010510;
  v12 = appearanceCopy;
  v15 = v12;
  objc_copyWeak(&v17, buf);
  v13 = completionCopy;
  v16 = v13;
  [v9 resolveDeviceWithIdentifier:identifier handler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __57__IntentHandler_handleToggleSystemAppearance_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _TVRIntentExtensionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v5;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TVRIntentExtension: Resolved device for intent %@. Device - %@. Error - %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [[ToggleSystemAppearanceIntentResponse alloc] initWithCode:4 userActivity:0];
  v11 = _TVRIntentExtensionLog(v10);
  v12 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1();
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved device for intent=%{public}@, device=%{public}@", buf, 0x16u);
  }

  if (WeakRetained)
  {
    v15 = [[TVRCDeviceEventManager alloc] initWithDevice:v5 responseHandler:&__block_literal_global_80];
    [WeakRetained setEventManager:v15];

    v16 = [*(a1 + 32) appearanceToggle];
    v17 = @"NO";
    if (v16 == 1)
    {
      v17 = @"YES";
    }

    v18 = v17;
    v19 = [WeakRetained eventManager];
    v20 = TVRCToggleSystemAppearance;
    v26 = TVRCSystemAppearanceLight;
    v27 = v18;
    v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v19 sendEvent:v20 options:v21];

    v22 = [ToggleSystemAppearanceIntentResponse alloc];
    v12 = v10;
    v10 = [v22 initWithCode:4 userActivity:0];
LABEL_12:
  }

  v23 = _TVRIntentExtensionLog(v14);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    *buf = 138543618;
    v29 = v24;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Calling completion for intent=%{public}@, response=%{public}@", buf, 0x16u);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v10);
  }
}

- (void)provideDeviceOptionsCollectionForToggleSystemAppearance:(id)appearance withCompletion:(id)completion
{
  appearanceCopy = appearance;
  completionCopy = completion;
  v7 = _TVRIntentExtensionLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[IntentHandler provideDeviceOptionsCollectionForToggleSystemAppearance:withCompletion:]";
    v11 = 2114;
    v12 = appearanceCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, intent=%{public}@", &v9, 0x16u);
  }

  v8 = +[TVRIntentExtensionDeviceQuery sharedInstance];
  [v8 provideDeviceOptionsWithCompletion:completionCopy];
}

- (void)resolveDeviceForToggleSystemAppearance:(id)appearance withCompletion:(id)completion
{
  completionCopy = completion;
  device = [appearance device];
  v8 = [(IntentHandler *)self _resolveDevice:device];
  (*(completion + 2))(completionCopy, v8);
}

- (void)resolveAppearanceToggleForToggleSystemAppearance:(id)appearance withCompletion:(id)completion
{
  completionCopy = completion;
  v8 = -[IntentHandler _resolveSystemAppearanceToggle:](self, "_resolveSystemAppearanceToggle:", [appearance appearanceToggle]);
  (*(completion + 2))(completionCopy, v8);
}

- (id)_resolveDevice:(id)device
{
  deviceCopy = device;
  v4 = deviceCopy;
  if (deviceCopy)
  {
    identifier = [deviceCopy identifier];

    if (identifier)
    {
      [TVRDeviceResolutionResult successWithResolvedDevice:v4];
    }

    else
    {
      [TVRDeviceResolutionResult confirmationRequiredWithDeviceToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRDeviceResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveApplication:(id)application
{
  applicationCopy = application;
  v4 = applicationCopy;
  if (applicationCopy)
  {
    identifier = [applicationCopy identifier];

    if (identifier)
    {
      [TVRApplicationResolutionResult successWithResolvedApplication:v4];
    }

    else
    {
      [TVRApplicationResolutionResult confirmationRequiredWithApplicationToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRApplicationResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveMediaCommand:(int64_t)command
{
  if (command)
  {
    [TVRMediaCommandResolutionResult successWithResolvedMediaCommand:?];
  }

  else
  {
    [TVRMediaCommandResolutionResult confirmationRequiredWithMediaCommandToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveCaptionsToggle:(int64_t)toggle
{
  if (toggle <= 1)
  {
    toggle = 1;
  }

  v3 = [TVRCaptionsToggleResolutionResult successWithResolvedCaptionsToggle:toggle];

  return v3;
}

- (id)_resolveUserAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    identifier = [accountCopy identifier];

    if (identifier)
    {
      [TVRUserAccountResolutionResult successWithResolvedUserAccount:v4];
    }

    else
    {
      [TVRUserAccountResolutionResult confirmationRequiredWithUserAccountToConfirm:v4];
    }
    v6 = ;
  }

  else
  {
    v6 = +[TVRUserAccountResolutionResult notRequired];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveSkipCommand:(int64_t)command
{
  if (command)
  {
    [TVRSkipCommandResolutionResult successWithResolvedSkipCommand:?];
  }

  else
  {
    [TVRSkipCommandResolutionResult confirmationRequiredWithSkipCommandToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveSkipDuration:(id)duration
{
  durationCopy = duration;
  v4 = durationCopy;
  if (durationCopy && ([durationCopy doubleValue], v5 >= 0.0))
  {
    [v4 doubleValue];
    v6 = [SkipContentSkipDurationResolutionResult successWithResolvedValue:?];
  }

  else
  {
    v6 = [SkipContentSkipDurationResolutionResult confirmationRequiredWithValueToConfirm:v4];
  }

  v7 = v6;

  return v7;
}

- (id)_resolveReduceLoudSoundsToggle:(id)toggle
{
  if (toggle)
  {
    +[INBooleanResolutionResult successWithResolvedValue:](INBooleanResolutionResult, "successWithResolvedValue:", [toggle BOOLValue]);
  }

  else
  {
    [INBooleanResolutionResult confirmationRequiredWithValueToConfirm:?];
  }
  v3 = ;

  return v3;
}

- (id)_resolveSystemAppearanceToggle:(int64_t)toggle
{
  if (toggle)
  {
    [TVRSystemAppearanceToggleResolutionResult successWithResolvedSystemAppearanceToggle:?];
  }

  else
  {
    [TVRSystemAppearanceToggleResolutionResult confirmationRequiredWithSystemAppearanceToggleToConfirm:?];
  }
  v3 = ;

  return v3;
}

void __46__IntentHandler_handleWakeAppleTV_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3(__stack_chk_guard);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v0, v1, "Error resolving device for intent=%{public}@, error=%{public}@");
}

- (void)confirmLaunchTVApp:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[IntentHandler confirmLaunchTVApp:completion:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s called with invalid device=%{public}@", &v2, 0x16u);
}

@end