@interface TextSettingsMiniFlowController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)skipControllerForExpressMode:(id)mode;
- (BOOL)holdBeforeDisplaying;
- (TextSettingsMiniFlowController)init;
- (id)viewController;
- (void)dealloc;
- (void)didReceiveIncomingData:(id)data;
- (void)didSelectContentSizeCategory:(id)category boldTextEnabled:(BOOL)enabled;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
@end

@implementation TextSettingsMiniFlowController

- (TextSettingsMiniFlowController)init
{
  v8.receiver = self;
  v8.super_class = TextSettingsMiniFlowController;
  v2 = [(TextSettingsMiniFlowController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.accessibility.ids.services.queue", v3);
    [(TextSettingsMiniFlowController *)v2 setIdsServicesQueue:v4];

    v5 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(TextSettingsMiniFlowController *)v2 setControllerHoldTimeoutTimer:v5];

    v6 = +[AXIDSServices sharedInstance];
    [v6 registerForIncomingData:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXIDSServices sharedInstance];
  [v3 deregisterForIncomingData:self];

  v4.receiver = self;
  v4.super_class = TextSettingsMiniFlowController;
  [(TextSettingsMiniFlowController *)&v4 dealloc];
}

+ (BOOL)controllerNeedsToRun
{
  v2 = getActiveDevice();
  v3 = [[NSUUID alloc] initWithUUIDString:@"B4FBD189-BF37-4C38-A2C3-A0471795086C"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

+ (BOOL)skipControllerForExpressMode:(id)mode
{
  modeCopy = mode;
  v4 = getWatchContentSize(modeCopy);
  v5 = boldTextKeyExistsOnDevice(modeCopy);

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = AXLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 0;
      v9 = "[TextSettingsMiniFlowController] skip for express mode";
      v10 = &v13;
LABEL_9:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v8)
  {
    v12 = 0;
    v9 = "[TextSettingsMiniFlowController] do not skip for express mode";
    v10 = &v12;
    goto LABEL_9;
  }

  return v6;
}

- (BOOL)holdBeforeDisplaying
{
  receivedCachedScreenshots = [(TextSettingsMiniFlowController *)self receivedCachedScreenshots];
  if (receivedCachedScreenshots)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "[TextSettingsMiniFlowController] already received snapshots, do not hold";
LABEL_8:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, location, 2u);
    }
  }

  else
  {
    if (![(TextSettingsMiniFlowController *)self controllerIsOnHold])
    {
      [(TextSettingsMiniFlowController *)self setControllerIsOnHold:1];
      objc_initWeak(location, self);
      controllerHoldTimeoutTimer = [(TextSettingsMiniFlowController *)self controllerHoldTimeoutTimer];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke;
      v9[3] = &unk_C470;
      objc_copyWeak(&v10, location);
      [controllerHoldTimeoutTimer afterDelay:v9 processBlock:30.0];

      idsServicesQueue = [(TextSettingsMiniFlowController *)self idsServicesQueue];
      dispatch_async(idsServicesQueue, &__block_literal_global);

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v5 = "[TextSettingsMiniFlowController] continue to hold";
      goto LABEL_8;
    }
  }

  return receivedCachedScreenshots ^ 1;
}

void __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 buddyControllerReleaseHoldAndSkip:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setControllerIsOnHold:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setReceivedCachedScreenshots:0];
}

void __54__TextSettingsMiniFlowController_holdBeforeDisplaying__block_invoke_2(id a1)
{
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] publishing sendSnapshots request", v4, 2u);
  }

  v2 = +[AXIDSServices sharedInstance];
  v3 = [v2 publishMessage:&off_C868 priority:2 requestingResponse:1];
}

- (id)viewController
{
  textSettingsViewController = [(TextSettingsMiniFlowController *)self textSettingsViewController];

  if (!textSettingsViewController)
  {
    delegate = [(TextSettingsMiniFlowController *)self delegate];
    activePairingDevice = [delegate activePairingDevice];

    v6 = [[TextSettingsViewController alloc] initWithDevice:activePairingDevice observer:self];
    [(TextSettingsMiniFlowController *)self setTextSettingsViewController:v6];

    textSettingsViewController2 = [(TextSettingsMiniFlowController *)self textSettingsViewController];
    [textSettingsViewController2 setMiniFlowDelegate:self];
  }

  return [(TextSettingsMiniFlowController *)self textSettingsViewController];
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(TextSettingsMiniFlowController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  v5 = objc_alloc_init(class);
  [v5 setMiniFlowDelegate:self];
  [(TextSettingsMiniFlowController *)self pushController:v5 animated:1];
}

- (void)didReceiveIncomingData:(id)data
{
  dataCopy = data;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] did receive incoming data", buf, 2u);
  }

  controllerHoldTimeoutTimer = [(TextSettingsMiniFlowController *)self controllerHoldTimeoutTimer];
  [controllerHoldTimeoutTimer cancel];

  idsServicesQueue = [(TextSettingsMiniFlowController *)self idsServicesQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke;
  v9[3] = &unk_C448;
  v10 = dataCopy;
  selfCopy = self;
  v8 = dataCopy;
  dispatch_async(idsServicesQueue, v9);
}

void __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKeyedSubscript:AXIDSServiceDataKey];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v2, v3, v4, objc_opt_class(), 0];
  v28 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v1 error:&v28];
  v7 = v28;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v7;
    v22 = v6;
    v23 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = [v14 objectForKeyedSubscript:&__kCFBooleanFalse];
          v16 = [UIImage imageWithData:v15];

          v17 = [v8 objectForKeyedSubscript:v13];
          v18 = [v17 objectForKeyedSubscript:&__kCFBooleanTrue];
          v19 = [UIImage imageWithData:v18];

          cacheTextPreviewImage(v16, v13, 0);
          cacheTextPreviewImage(v19, v13, 1);
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    AXPerformBlockOnMainThread();
    v6 = v22;
    v5 = v23;
    v7 = v21;
  }

  else
  {
    v20 = AXLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke_cold_1(v20);
    }
  }
}

void __57__TextSettingsMiniFlowController_didReceiveIncomingData___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setReceivedCachedScreenshots:1];
  v2 = [*(a1 + 32) textSettingsViewController];
  [v2 updateWatchScreenImageViewAndNotifyObserver:0];

  if ([*(a1 + 32) controllerIsOnHold])
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[TextSettingsMiniFlowController] releasing hold on controller", v5, 2u);
    }

    [*(a1 + 32) setControllerIsOnHold:0];
    v4 = [*(a1 + 32) delegate];
    [v4 buddyControllerReleaseHold:*(a1 + 32)];
  }
}

- (void)didSelectContentSizeCategory:(id)category boldTextEnabled:(BOOL)enabled
{
  categoryCopy = category;
  idsServicesQueue = [(TextSettingsMiniFlowController *)self idsServicesQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __79__TextSettingsMiniFlowController_didSelectContentSizeCategory_boldTextEnabled___block_invoke;
  v9[3] = &unk_C500;
  v10 = categoryCopy;
  enabledCopy = enabled;
  v8 = categoryCopy;
  dispatch_async(idsServicesQueue, v9);
}

void __79__TextSettingsMiniFlowController_didSelectContentSizeCategory_boldTextEnabled___block_invoke(uint64_t a1)
{
  v9 = @"updateUI";
  v1 = *(a1 + 32);
  v7[1] = @"boldTextEnabled";
  v8[0] = v1;
  v7[0] = @"contentSizeCategory";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v5 = +[AXIDSServices sharedInstance];
  v6 = [v5 publishMessage:v4 priority:2 requestingResponse:0];
}

@end