@interface GCAnalytics
+ (id)instance;
- (BOOL)sendEvent:(id)event withXPCPayloadBuilder:(id)builder;
- (GCAnalytics)init;
- (id)getBundleID;
- (void)checkMultipleControllers;
- (void)dealloc;
- (void)publishController:(id)controller;
- (void)runInputPollTimer;
- (void)sendEvent:(id)event withXPCPayload:(id)payload;
- (void)sendHapticsClientDestroyedEventForBundleID:(id)d productCategory:(id)category totalPlayers:(int)players sessionTotalDuration:(int)duration sessionActiveDuration:(int)activeDuration terminationReason:(id)reason;
- (void)sendHapticsEngineCreatedEventForBundleID:(id)d productCategory:(id)category hapticsLocality:(id)locality;
- (void)sendHapticsErrorRaisedEventFromSource:(id)source productCategory:(id)category errorType:(id)type;
- (void)sendHapticsPlayerDestroyedEventForBundleID:(id)d productCategory:(id)category totalEventsProcessed:(int)processed transientEventsProcessed:(int)eventsProcessed continuousEventsProcessed:(int)continuousEventsProcessed parameterCurvesProcessed:(int)curvesProcessed sessionTotalDuration:(int)duration sessionActiveDuration:(int)self0;
- (void)sendRPKitInstantCaptureBufferStartedEventForBundleID:(id)d;
- (void)sendRPKitInstantCaptureSavedEventForBundleID:(id)d productCategory:(id)category;
- (void)sendRPKitManualRecordingSavedEventForBundleID:(id)d productCategory:(id)category duration:(int)duration;
- (void)sendRPKitScreenshotSavedEventForBundleID:(id)d productCategory:(id)category;
- (void)sendSettingsButtonCustomizedEventForBundleID:(id)d productCategory:(id)category button:(id)button;
- (void)sendSettingsCustomizationsResetEventForBundleID:(id)d productCategory:(id)category;
- (void)sendSettingsCustomizationsToggledEventForBundleID:(id)d productCategory:(id)category toggledOn:(BOOL)on;
- (void)sendSettingsIdentifyControllerEventForProductCategory:(id)category;
- (void)sendSettingsRPKitGesturesCustomized:(id)customized from:(id)from;
- (void)unpublishController:(id)controller;
@end

@implementation GCAnalytics

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__GCAnalytics_GameController__instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (instance_dispatcher != -1)
  {
    dispatch_once(&instance_dispatcher, block);
  }

  v2 = instance_sharedInstance;

  return v2;
}

void __39__GCAnalytics_GameController__instance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = instance_sharedInstance;
  instance_sharedInstance = v1;
}

- (id)getBundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = self->_bundleID;
    self->_bundleID = bundleIdentifier;

    bundleID = self->_bundleID;
    if (!bundleID)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v9 = self->_bundleID;
      self->_bundleID = processName;

      bundleID = self->_bundleID;
    }
  }

  return bundleID;
}

- (void)dealloc
{
  [(NSTimer *)self->_eventPollTimer invalidate];
  eventPollTimer = self->_eventPollTimer;
  self->_eventPollTimer = 0;

  v4.receiver = self;
  v4.super_class = GCAnalytics;
  [(GCAnalytics *)&v4 dealloc];
}

id __54__GCAnalytics_GameController__sendInputsPressedEvent___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  v8 = @"bundleID";
  v3 = [*(a1 + 32) getBundleID];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 dictionaryWithDictionary:v4];

  v6 = convertToDict(*(a1 + 40), numberFromInt);
  [v5 addEntriesFromDictionary:v6];

  return v5;
}

- (void)checkMultipleControllers
{
  v18 = *MEMORY[0x1E69E9840];
  if (checkMultipleControllers_maximumControllersConnectedForSentEvent <= 3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)self->_controllersData allValues];
    v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (([v10 isATVRemote] & 1) == 0)
          {
            ++v7;
            detailedProductCategory = [v10 detailedProductCategory];
            [v3 addObject:detailedProductCategory];
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    [v3 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
    if (v7 >= 2 && v7 > checkMultipleControllers_maximumControllersConnectedForSentEvent)
    {
      v12 = v3;
      AnalyticsSendEventLazy();
      checkMultipleControllers_maximumControllersConnectedForSentEvent = v7;
    }
  }
}

id __55__GCAnalytics_GameController__checkMultipleControllers__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) getBundleID];
  [v2 setObject:v3 forKeyedSubscript:@"bundleID"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getpid()];
  [v2 setObject:v4 forKeyedSubscript:@"processID"];

  if ([*(a1 + 40) count])
  {
    v5 = [*(a1 + 40) objectAtIndexedSubscript:0];
    [v2 setObject:v5 forKeyedSubscript:@"controller1"];
  }

  if ([*(a1 + 40) count] >= 2)
  {
    v6 = [*(a1 + 40) objectAtIndexedSubscript:1];
    [v2 setObject:v6 forKeyedSubscript:@"controller2"];
  }

  if ([*(a1 + 40) count] >= 3)
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:2];
    [v2 setObject:v7 forKeyedSubscript:@"controller3"];
  }

  if ([*(a1 + 40) count] >= 4)
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:3];
    [v2 setObject:v8 forKeyedSubscript:@"controller4"];
  }

  return v2;
}

- (void)runInputPollTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__GCAnalytics_GameController__runInputPollTimer__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__GCAnalytics_GameController__runInputPollTimer__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__GCAnalytics_GameController__runInputPollTimer__block_invoke_2;
  v5[3] = &unk_1E8418E90;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v5 block:10.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

void *__48__GCAnalytics_GameController__runInputPollTimer__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 8) count];
  if (result)
  {
    v12 = 0u;
    memset(v13, 0, 60);
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(*(a1 + 32) + 8) allValues];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          *&v8 = batchInputData(v13, *(*(&v9 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:{16, v8}];
      }

      while (v5);
    }

    return [*(a1 + 32) sendInputsPressedEvent:v13];
  }

  return result;
}

- (void)publishController:(id)controller
{
  controllerCopy = controller;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__GCAnalytics_GameController__publishController___block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  if (publishController__dispatcher != -1)
  {
    dispatch_once(&publishController__dispatcher, block);
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  dataFromController(controllerCopy, &v11);
  controllersData = self->_controllersData;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(controllerCopy, "deviceHash")}];
  [(NSMutableDictionary *)controllersData setObject:controllerCopy forKey:v6];

  v7 = MEMORY[0x1E69E9820];
  v8 = v11;
  v9 = *(&v11 + 1);
  v10 = v12;
  AnalyticsSendEventLazy();
  [(GCAnalytics *)self checkMultipleControllers:v7];
}

id __49__GCAnalytics_GameController__publishController___block_invoke_2(uint64_t a1)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"productCategoryName";
  v16[1] = @"connectionCount";
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v17[0] = *(v3 + 8);
  v17[1] = &unk_1F4E8E000;
  v16[2] = @"bundleID";
  v4 = MEMORY[0x1E695DF90];
  v5 = [v2 getBundleID];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v17[2] = v5;
  v17[3] = v6;
  v16[3] = @"vendorName";
  v16[4] = @"profileName";
  v17[4] = v7;
  v16[5] = @"isFormFitting";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v17[5] = v8;
  v16[6] = @"hasClickableThumbsticks";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 65)];
  v17[6] = v9;
  v16[7] = @"isSiriRemote";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 66)];
  v17[7] = v10;
  v16[8] = @"isPhysicalRemote";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 67)];
  v17[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
  v13 = [v4 dictionaryWithDictionary:v12];

  v14 = convertToDict((a1 + 68), stringFromState);
  [v13 addEntriesFromDictionary:v14];

  return v13;
}

- (void)unpublishController:(id)controller
{
  controllersData = self->_controllersData;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(controller, "deviceHash")}];
  [(NSMutableDictionary *)controllersData removeObjectForKey:v4];
}

id __50__GCAnalytics_GameController__onSiriMotionEnabled__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"bundleID";
  v1 = [*(a1 + 32) getBundleID];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)sendSettingsCustomizationsToggledEventForBundleID:(id)d productCategory:(id)category toggledOn:(BOOL)on
{
  dCopy = d;
  categoryCopy = category;
  v8 = @"N/A";
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = @"N/A";
  }

  if (categoryCopy)
  {
    v8 = categoryCopy;
  }

  v12 = v9;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  AnalyticsSendEventLazy();
}

id __110__GCAnalytics_SettingsAnalytics__sendSettingsCustomizationsToggledEventForBundleID_productCategory_toggledOn___block_invoke(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v5[2] = @"customizationsToggledOn";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)sendSettingsCustomizationsResetEventForBundleID:(id)d productCategory:(id)category
{
  dCopy = d;
  categoryCopy = category;
  v7 = @"N/A";
  if (!dCopy)
  {
    dCopy = @"N/A";
  }

  if (categoryCopy)
  {
    v7 = categoryCopy;
  }

  v10 = dCopy;
  v11 = v7;
  v8 = v7;
  v9 = dCopy;
  AnalyticsSendEventLazy();
}

id __98__GCAnalytics_SettingsAnalytics__sendSettingsCustomizationsResetEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"bundleID";
  v4[1] = @"productCategory";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)sendSettingsButtonCustomizedEventForBundleID:(id)d productCategory:(id)category button:(id)button
{
  dCopy = d;
  categoryCopy = category;
  buttonCopy = button;
  if (buttonCopy)
  {
    if (dCopy)
    {
      v10 = dCopy;
    }

    else
    {
      v10 = @"N/A";
    }

    if (!categoryCopy)
    {
      categoryCopy = @"N/A";
    }

    dCopy = v10;
    categoryCopy = categoryCopy;
    v11 = buttonCopy;
    AnalyticsSendEventLazy();
  }
}

id __102__GCAnalytics_SettingsAnalytics__sendSettingsButtonCustomizedEventForBundleID_productCategory_button___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"bundleID";
  v4[1] = @"productCategory";
  v5 = v1;
  v4[2] = @"buttonName";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

- (void)sendSettingsIdentifyControllerEventForProductCategory:(id)category
{
  categoryCopy = category;
  v4 = @"N/A";
  if (categoryCopy)
  {
    v4 = categoryCopy;
  }

  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
}

id __88__GCAnalytics_SettingsAnalytics__sendSettingsIdentifyControllerEventForProductCategory___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"productCategory";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __93__GCAnalytics_SettingsAnalytics__sendSettingsDevicesEventForTotalCustomizedControllersCount___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"customizedControllersCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __93__GCAnalytics_SettingsAnalytics__sendSettingsCustomizedAppsEventForTotalCustomizedAppsCount___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"customizedAppsCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)sendSettingsRPKitGesturesCustomized:(id)customized from:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  customizedCopy = customized;
  fromCopy = from;
  v7 = getGCSettingsLogger(fromCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = customizedCopy;
    v34 = 2112;
    v35 = fromCopy;
    _os_log_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_DEFAULT, "sendSettingsRPKitGesturesCustomized %@, %@", buf, 0x16u);
  }

  if (customizedCopy)
  {
    if (fromCopy)
    {
      controllerElementMappingKey = [customizedCopy controllerElementMappingKey];

      if (controllerElementMappingKey)
      {
        v24 = objc_opt_new();
        singlePressGesture = [customizedCopy singlePressGesture];
        if (singlePressGesture != [fromCopy singlePressGesture])
        {
          v10 = GCSystemGestureModeToString([customizedCopy singlePressGesture]);
          [v24 setObject:v10 forKeyedSubscript:@"Single Press"];
        }

        doublePressGesture = [customizedCopy doublePressGesture];
        if (doublePressGesture != [fromCopy doublePressGesture])
        {
          v12 = GCSystemGestureModeToString([customizedCopy doublePressGesture]);
          [v24 setObject:v12 forKeyedSubscript:@"Double Press"];
        }

        longPressGesture = [customizedCopy longPressGesture];
        longPressGesture2 = [fromCopy longPressGesture];
        if (longPressGesture != longPressGesture2)
        {
          v15 = GCSystemGestureModeToString([customizedCopy longPressGesture]);
          [v24 setObject:v15 forKeyedSubscript:@"Long Press"];
        }

        v23 = fromCopy;
        v16 = getGCSettingsLogger(longPressGesture2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v24;
          _os_log_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_DEFAULT, "sendSettingsRPKitGesturesCustomized changedGestures %@", buf, 0xCu);
        }

        context = objc_autoreleasePoolPush();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        allKeys = [v24 allKeys];
        v18 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(allKeys);
              }

              v25 = customizedCopy;
              v26 = v24;
              AnalyticsSendEventLazy();
            }

            v19 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v19);
        }

        objc_autoreleasePoolPop(context);
        fromCopy = v23;
      }
    }
  }
}

id __75__GCAnalytics_SettingsAnalytics__sendSettingsRPKitGesturesCustomized_from___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"buttonName";
  v2 = [*(a1 + 32) controllerElementMappingKey];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v9[0] = v2;
  v9[1] = v4;
  v8[1] = @"gestureType";
  v8[2] = @"gestureMode";
  v5 = [v3 objectForKeyedSubscript:?];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (void)sendRPKitScreenshotSavedEventForBundleID:(id)d productCategory:(id)category
{
  dCopy = d;
  categoryCopy = category;
  v7 = @"N/A";
  if (!dCopy)
  {
    dCopy = @"N/A";
  }

  if (categoryCopy)
  {
    v7 = categoryCopy;
  }

  v10 = dCopy;
  v11 = v7;
  v8 = v7;
  v9 = dCopy;
  AnalyticsSendEventLazy();
}

id __92__GCAnalytics_ReplayKitAnalytics__sendRPKitScreenshotSavedEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"bundleID";
  v4[1] = @"productCategory";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)sendRPKitManualRecordingSavedEventForBundleID:(id)d productCategory:(id)category duration:(int)duration
{
  dCopy = d;
  categoryCopy = category;
  v8 = @"N/A";
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = @"N/A";
  }

  if (categoryCopy)
  {
    v8 = categoryCopy;
  }

  v12 = v9;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  AnalyticsSendEventLazy();
}

id __106__GCAnalytics_ReplayKitAnalytics__sendRPKitManualRecordingSavedEventForBundleID_productCategory_duration___block_invoke(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"bundleID";
  v5[1] = @"productCategory";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v5[2] = @"duration";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

- (void)sendRPKitInstantCaptureSavedEventForBundleID:(id)d productCategory:(id)category
{
  dCopy = d;
  categoryCopy = category;
  v7 = @"N/A";
  if (!dCopy)
  {
    dCopy = @"N/A";
  }

  if (categoryCopy)
  {
    v7 = categoryCopy;
  }

  v10 = dCopy;
  v11 = v7;
  v8 = v7;
  v9 = dCopy;
  AnalyticsSendEventLazy();
}

id __96__GCAnalytics_ReplayKitAnalytics__sendRPKitInstantCaptureSavedEventForBundleID_productCategory___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"bundleID";
  v4[1] = @"productCategory";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)sendRPKitInstantCaptureBufferStartedEventForBundleID:(id)d
{
  dCopy = d;
  v4 = @"N/A";
  if (dCopy)
  {
    v4 = dCopy;
  }

  v6 = v4;
  v5 = v4;
  AnalyticsSendEventLazy();
}

id __88__GCAnalytics_ReplayKitAnalytics__sendRPKitInstantCaptureBufferStartedEventForBundleID___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"bundleID";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)sendHapticsEngineCreatedEventForBundleID:(id)d productCategory:(id)category hapticsLocality:(id)locality
{
  dCopy = d;
  categoryCopy = category;
  localityCopy = locality;
  v10 = @"N/A";
  if (!dCopy)
  {
    dCopy = @"N/A";
  }

  if (!categoryCopy)
  {
    categoryCopy = @"N/A";
  }

  if (localityCopy)
  {
    v10 = localityCopy;
  }

  v14 = dCopy;
  v15 = categoryCopy;
  v16 = v10;
  v11 = v10;
  v12 = categoryCopy;
  v13 = dCopy;
  AnalyticsSendEventLazy();
}

id __106__GCAnalytics_HapticsAnalytics__sendHapticsEngineCreatedEventForBundleID_productCategory_hapticsLocality___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"bundleID";
  v4[1] = @"productCategory";
  v5 = v1;
  v4[2] = @"hapticsLocality";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

- (void)sendHapticsClientDestroyedEventForBundleID:(id)d productCategory:(id)category totalPlayers:(int)players sessionTotalDuration:(int)duration sessionActiveDuration:(int)activeDuration terminationReason:(id)reason
{
  dCopy = d;
  categoryCopy = category;
  reasonCopy = reason;
  v13 = @"N/A";
  if (!dCopy)
  {
    dCopy = @"N/A";
  }

  if (!categoryCopy)
  {
    categoryCopy = @"N/A";
  }

  if (reasonCopy)
  {
    v13 = reasonCopy;
  }

  v17 = v13;
  v14 = v13;
  v15 = categoryCopy;
  v16 = dCopy;
  AnalyticsSendEventLazy();
}

id __166__GCAnalytics_HapticsAnalytics__sendHapticsClientDestroyedEventForBundleID_productCategory_totalPlayers_sessionTotalDuration_sessionActiveDuration_terminationReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v7[0] = @"bundleID";
  v7[1] = @"productCategory";
  v9 = *(a1 + 48);
  v7[2] = @"terminationReason";
  v7[3] = @"totalPlayers";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v10 = v2;
  v7[4] = @"sessionTotalDuration";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
  v11 = v3;
  v7[5] = @"sessionActiveDuration";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v12 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:v7 count:6];

  return v5;
}

- (void)sendHapticsPlayerDestroyedEventForBundleID:(id)d productCategory:(id)category totalEventsProcessed:(int)processed transientEventsProcessed:(int)eventsProcessed continuousEventsProcessed:(int)continuousEventsProcessed parameterCurvesProcessed:(int)curvesProcessed sessionTotalDuration:(int)duration sessionActiveDuration:(int)self0
{
  dCopy = d;
  categoryCopy = category;
  v14 = mach_absolute_time();
  if (v14 * self->_timebaseInfo.numer / self->_timebaseInfo.denom / 0x3B9ACA00 - self->_lastHapticsEvent * self->_timebaseInfo.numer / self->_timebaseInfo.denom / 0x3B9ACA00 > 4)
  {
    self->_lastHapticsEvent = v14;
    if (dCopy)
    {
      v18 = dCopy;
    }

    else
    {
      v18 = @"N/A";
    }

    if (!categoryCopy)
    {
      categoryCopy = @"N/A";
    }

    dCopy = v18;
    categoryCopy = categoryCopy;
    AnalyticsSendEventLazy();

    v17 = dCopy;
    goto LABEL_11;
  }

  isInternalBuild = gc_isInternalBuild(v14, v15);
  if (isInternalBuild)
  {
    v17 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [GCAnalytics(HapticsAnalytics) sendHapticsPlayerDestroyedEventForBundleID:v17 productCategory:? totalEventsProcessed:? transientEventsProcessed:? continuousEventsProcessed:? parameterCurvesProcessed:? sessionTotalDuration:? sessionActiveDuration:?];
    }

LABEL_11:
  }
}

id __232__GCAnalytics_HapticsAnalytics__sendHapticsPlayerDestroyedEventForBundleID_productCategory_totalEventsProcessed_transientEventsProcessed_continuousEventsProcessed_parameterCurvesProcessed_sessionTotalDuration_sessionActiveDuration___block_invoke(uint64_t a1)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v11[0] = @"bundleID";
  v11[1] = @"productCategory";
  v2 = *(a1 + 40);
  v12[0] = *(a1 + 32);
  v12[1] = v2;
  v11[2] = @"totalEventsProcessed";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v12[2] = v3;
  v11[3] = @"transientEventsProcessed";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 52)];
  v12[3] = v4;
  v11[4] = @"continuousEventsProcessed";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v12[4] = v5;
  v11[5] = @"parameterCurvesProcessed";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 60)];
  v12[5] = v6;
  v11[6] = @"sessionTotalDuration";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v12[6] = v7;
  v11[7] = @"sessionActiveDuration";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 68)];
  v12[7] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:8];

  return v9;
}

- (void)sendHapticsErrorRaisedEventFromSource:(id)source productCategory:(id)category errorType:(id)type
{
  sourceCopy = source;
  categoryCopy = category;
  typeCopy = type;
  if (sourceCopy)
  {
    v10 = sourceCopy;
  }

  else
  {
    v10 = @"N/A";
  }

  if (!categoryCopy)
  {
    categoryCopy = @"N/A";
  }

  if (typeCopy)
  {
    v11 = typeCopy;
  }

  else
  {
    v11 = @"Unknown Error";
  }

  v15 = v11;
  v16 = categoryCopy;
  v17 = v10;
  v12 = v10;
  v13 = categoryCopy;
  v14 = v11;
  AnalyticsSendEventLazy();
}

id __97__GCAnalytics_HapticsAnalytics__sendHapticsErrorRaisedEventFromSource_productCategory_errorType___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"errorType";
  v4[1] = @"productCategory";
  v5 = v1;
  v4[2] = @"source";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

- (GCAnalytics)init
{
  v6.receiver = self;
  v6.super_class = GCAnalytics;
  v2 = [(GCAnalytics *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  controllersData = v2->_controllersData;
  v2->_controllersData = v3;

  mach_timebase_info(&v2->_timebaseInfo);
  return v2;
}

- (void)sendEvent:(id)event withXPCPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  [event UTF8String];
  analytics_send_event();
}

- (BOOL)sendEvent:(id)event withXPCPayloadBuilder:(id)builder
{
  eventCopy = event;
  eventCopy2 = event;
  builderCopy = builder;
  [eventCopy UTF8String];
  LOBYTE(eventCopy) = analytics_send_event_lazy();

  return eventCopy;
}

@end