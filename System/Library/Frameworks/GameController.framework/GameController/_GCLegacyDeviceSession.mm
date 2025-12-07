@interface _GCLegacyDeviceSession
+ (id)defaultConfiguration;
+ (id)sharedInstance;
- (GCController)currentController;
- (GCExtendedGamepad)currentExtendedGamepad;
- (GCMicroGamepad)currentMicroGamepad;
- (GCMouse)currentMouse;
- (_GCLegacyDeviceSession)initWithConfiguration:(id)configuration environment:(id)environment;
- (void)_becomeCurrentController:(void *)controller;
- (void)_becomeCurrentMouse:(void *)mouse;
- (void)_resignCurrentController:(void *)controller;
- (void)_resignCurrentMouse:(uint64_t)mouse;
- (void)_setCurrentController:(void *)controller;
- (void)_setCurrentExtendedGamepad:(void *)gamepad;
- (void)_setCurrentMicroGamepad:(void *)gamepad;
- (void)_setCurrentMouse:(void *)mouse;
- (void)becomeCurrentController:(id)controller;
- (void)becomeCurrentMouse:(id)mouse;
- (void)resignCurrentController:(id)controller;
- (void)resignCurrentMouse:(id)mouse;
@end

@implementation _GCLegacyDeviceSession

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___GCLegacyDeviceSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = SharedManager;

  return v2;
}

+ (id)defaultConfiguration
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [mainBundle objectForInfoDictionaryKey:@"_GCBypassUIKit"];

  if (v4)
  {
    [v2 setBypassUIKit:{objc_msgSend(v4, "BOOLValue")}];
  }

  v52 = v2;
  [v2 supportedGameControllers];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v5 = v57 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v55;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 objectForKey:@"ProfileName"];
          v12 = [v11 isEqual:@"SpatialGamepad"];

          if (v12)
          {
            v13 = [v10 objectForKey:@"_WantsGCControllerProductCategoryWithChirality"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }

            v51 = v14;

            v49 = 1;
            goto LABEL_18;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v51 = 0;
    v49 = 0;
  }

  else
  {
    v51 = 0;
    v49 = 0;
  }

LABEL_18:

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v16 = [standardUserDefaults objectForKey:@"WantsGCControllerSpatialGamepad"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [standardUserDefaults objectForKey:@"WantsGCControllerProductCategoryWithChirality"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v18;
  }

  else
  {
    v50 = 0;
  }

  v20 = currentProcessBundleIdentifier(v19);
  v21 = [v20 isEqualToString:@"com.apple.mobilesafari"];

  v23 = currentProcessBundleIdentifier(v22);
  LODWORD(v20) = [v23 isEqualToString:@"com.apple.backboardd"];

  v25 = currentProcessBundleIdentifier(v24);
  LODWORD(v23) = [v25 isEqualToString:@"com.apple.SurfBoard"];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  LODWORD(v25) = [processName isEqualToString:@"arviz"];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName2 = [processInfo2 processName];
  v30 = [processName2 isEqualToString:@"TouchToSound"];

  v32 = currentProcessBundleIdentifier(v31);
  LODWORD(processName2) = [v32 isEqualToString:@"dev-apple.realitykit-spatial-tracking"];

  v34 = currentProcessBundleIdentifier(v33);
  v35 = [v34 hasPrefix:@"com.apple."];

  v36 = v35 | processName2 | v30 | v25 | v23 | v20 | v21;
  v37 = v17;
  if (v17)
  {
    bOOLValue = [v17 BOOLValue];
    v40 = v51;
    v39 = v52;
    v41 = v50;
  }

  else
  {
    v40 = v51;
    v39 = v52;
    v41 = v50;
    if (v49)
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = (_os_feature_enabled_impl() ^ 1) & v36;
    }
  }

  [v39 setSpatialGamepadSupported:bOOLValue];
  spatialGamepadSupported = [v39 spatialGamepadSupported];
  if (spatialGamepadSupported)
  {
    v43 = _gc_log_session(spatialGamepadSupported);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v43, OS_LOG_TYPE_DEFAULT, "Current process gets spatial GCController.", buf, 2u);
    }
  }

  if (v41)
  {
    v44 = v41;
LABEL_37:
    bOOLValue2 = [v44 BOOLValue];
    goto LABEL_38;
  }

  if (v40)
  {
    v44 = v40;
    goto LABEL_37;
  }

  if (v49)
  {
    bOOLValue2 = 0;
  }

  else
  {
    bOOLValue2 = (_os_feature_enabled_impl() ^ 1) & v36;
  }

LABEL_38:
  [v39 setSpatialGamepadProductCategoryIncludesChirality:bOOLValue2];
  spatialGamepadProductCategoryIncludesChirality = [v39 spatialGamepadProductCategoryIncludesChirality];
  if (spatialGamepadProductCategoryIncludesChirality)
  {
    v47 = _gc_log_session(spatialGamepadProductCategoryIncludesChirality);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2CD5000, v47, OS_LOG_TYPE_DEFAULT, "Current process gets spatial GCController product category with chirality.", buf, 2u);
    }
  }

  return v39;
}

- (_GCLegacyDeviceSession)initWithConfiguration:(id)configuration environment:(id)environment
{
  v8.receiver = self;
  v8.super_class = _GCLegacyDeviceSession;
  v4 = [(GCDeviceSession *)&v8 initWithConfiguration:configuration environment:environment];
  v5 = v4;
  if (v4)
  {
    [(GCDeviceSession *)v4 setEventHandler:&__block_literal_global_152];
    v6 = v5;
  }

  return v5;
}

- (GCMouse)currentMouse
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentMouse;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentMouse:(void *)mouse
{
  v4 = a2;
  if (mouse)
  {
    mouseCopy = mouse;
    v6 = objc_sync_enter(mouseCopy);
    v7 = mouseCopy[25];
    if (v7 != v4)
    {
      if (v7)
      {
        v8 = _gc_log_session(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMouse:];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCMouseDidStopBeingCurrentNotification" object:mouseCopy[25] userInfo:0];
      }

      objc_storeStrong(mouseCopy + 25, a2);
      if (mouseCopy[25])
      {
        v11 = _gc_log_session(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMouse:];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCMouseDidBecomeCurrentNotification" object:mouseCopy[25] userInfo:0];
      }
    }

    objc_sync_exit(mouseCopy);
  }
}

- (void)becomeCurrentMouse:(id)mouse
{
  mouseCopy = mouse;
  mice = [(GCDeviceSession *)self mice];
  underlyingCollection = [(GCDeviceCollection *)mice underlyingCollection];
  v7 = [underlyingCollection containsObject:mouseCopy];

  if (v7)
  {
    targetQueue = [(GCDeviceSession *)self targetQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45___GCLegacyDeviceSession_becomeCurrentMouse___block_invoke;
    v9[3] = &unk_1E8418C50;
    v9[4] = self;
    v10 = mouseCopy;
    dispatch_async(targetQueue, v9);
  }
}

- (void)resignCurrentMouse:(id)mouse
{
  mouseCopy = mouse;
  targetQueue = [(GCDeviceSession *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___GCLegacyDeviceSession_resignCurrentMouse___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = mouseCopy;
  v6 = mouseCopy;
  dispatch_async(targetQueue, v7);
}

- (GCController)currentController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentController;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentController:(void *)controller
{
  v4 = a2;
  if (controller)
  {
    controllerCopy = controller;
    v6 = objc_sync_enter(controllerCopy);
    v7 = controllerCopy[26];
    if (v7 != v4)
    {
      if (v7)
      {
        v8 = _gc_log_session(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentController:];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCControllerDidStopBeingCurrentNotification" object:controllerCopy[26] userInfo:0];
      }

      objc_storeStrong(controllerCopy + 26, a2);
      if (controllerCopy[26])
      {
        v11 = _gc_log_session(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentController:];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCControllerDidBecomeCurrentNotification" object:controllerCopy[26] userInfo:0];
      }
    }

    objc_sync_exit(controllerCopy);
  }
}

- (GCMicroGamepad)currentMicroGamepad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentMicroGamepad;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentMicroGamepad:(void *)gamepad
{
  v4 = a2;
  if (gamepad)
  {
    gamepadCopy = gamepad;
    v6 = objc_sync_enter(gamepadCopy);
    v7 = gamepadCopy[27];
    if (v7 != v4)
    {
      if (v7)
      {
        v8 = _gc_log_session(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMicroGamepad:];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCMicroGamepadDidStopBeingCurrentNotification" object:gamepadCopy[27] userInfo:0];
      }

      objc_storeStrong(gamepadCopy + 27, a2);
      if (gamepadCopy[27])
      {
        v11 = _gc_log_session(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentMicroGamepad:];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCMicroGamepadDidBecomeCurrentNotification" object:gamepadCopy[27] userInfo:0];
      }
    }

    objc_sync_exit(gamepadCopy);
  }
}

- (GCExtendedGamepad)currentExtendedGamepad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentExtendedGamepad;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setCurrentExtendedGamepad:(void *)gamepad
{
  v4 = a2;
  if (gamepad)
  {
    gamepadCopy = gamepad;
    v6 = objc_sync_enter(gamepadCopy);
    v7 = gamepadCopy[28];
    if (v7 != v4)
    {
      if (v7)
      {
        v8 = _gc_log_session(v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentExtendedGamepad:];
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"GCExtendedGamepadDidStopBeingCurrentNotification" object:gamepadCopy[28] userInfo:0];
      }

      objc_storeStrong(gamepadCopy + 28, a2);
      if (gamepadCopy[28])
      {
        v11 = _gc_log_session(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [_GCLegacyDeviceSession _setCurrentExtendedGamepad:];
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"GCExtendedGamepadDidBecomeCurrentNotification" object:gamepadCopy[28] userInfo:0];
      }
    }

    objc_sync_exit(gamepadCopy);
  }
}

- (void)becomeCurrentController:(id)controller
{
  controllerCopy = controller;
  controllers = [(GCDeviceSession *)self controllers];
  underlyingCollection = [(GCDeviceCollection *)controllers underlyingCollection];
  v7 = [underlyingCollection containsObject:controllerCopy];

  if (v7)
  {
    targetQueue = [(GCDeviceSession *)self targetQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___GCLegacyDeviceSession_becomeCurrentController___block_invoke;
    v9[3] = &unk_1E8418C50;
    v9[4] = self;
    v10 = controllerCopy;
    dispatch_async(targetQueue, v9);
  }
}

- (void)resignCurrentController:(id)controller
{
  controllerCopy = controller;
  targetQueue = [(GCDeviceSession *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___GCLegacyDeviceSession_resignCurrentController___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_async(targetQueue, v7);
}

- (void)_becomeCurrentMouse:(void *)mouse
{
  if (mouse)
  {
    [(_GCLegacyDeviceSession *)mouse _setCurrentMouse:a2];
  }
}

- (void)_resignCurrentMouse:(uint64_t)mouse
{
  OUTLINED_FUNCTION_6_1();
  a47 = v48;
  a48 = v50;
  v52 = v51;
  a33 = *MEMORY[0x1E69E9840];
  v54 = v53;
  if (v52)
  {
    mice = [v52 mice];
    v56 = [mice countByEnumeratingWithState:&a9 objects:&a17 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = *a11;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          OUTLINED_FUNCTION_11_1();
          if (v61 != v59)
          {
            objc_enumerationMutation(mice);
          }

          v62 = *(a10 + 8 * i);
          if (v62 != v54)
          {
            mouseInput = [*(a10 + 8 * i) mouseInput];
            [mouseInput lastEventTimestamp];
            mouseInput2 = [OUTLINED_FUNCTION_10_1() mouseInput];
            [mouseInput2 lastEventTimestamp];
            v66 = v65;

            if (v49 >= v66)
            {
              v67 = v62;

              v58 = v67;
            }
          }
        }

        v57 = [mice countByEnumeratingWithState:&a9 objects:&a17 count:16];
      }

      while (v57);
    }

    else
    {
      v58 = 0;
    }

    currentMouse = [v52 currentMouse];

    if (currentMouse == v54)
    {
      [(_GCLegacyDeviceSession *)v52 _setCurrentMouse:v58];
    }
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)_becomeCurrentController:(void *)controller
{
  v9 = a2;
  if (controller)
  {
    [(_GCLegacyDeviceSession *)controller _setCurrentController:v9];
    extendedGamepad = [OUTLINED_FUNCTION_12_1() extendedGamepad];

    if (extendedGamepad)
    {
      [OUTLINED_FUNCTION_12_1() extendedGamepad];
      objc_claimAutoreleasedReturnValue();
      v4 = OUTLINED_FUNCTION_1_3();
      [(_GCLegacyDeviceSession *)v4 _setCurrentExtendedGamepad:v5];
    }

    microGamepad = [OUTLINED_FUNCTION_12_1() microGamepad];

    if (microGamepad)
    {
      [OUTLINED_FUNCTION_12_1() microGamepad];
      objc_claimAutoreleasedReturnValue();
      v7 = OUTLINED_FUNCTION_1_3();
      [(_GCLegacyDeviceSession *)v7 _setCurrentMicroGamepad:v8];
    }
  }
}

- (void)_resignCurrentController:(void *)controller
{
  v12 = a2;
  if (controller)
  {
    [(_GCLegacyDeviceSession *)controller _mostRecentlyActiveControllerIgnoring:v12];
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_1_3();
    [(_GCLegacyDeviceSession *)v4 _setCurrentController:v5];

    extendedGamepad = [v12 extendedGamepad];

    if (extendedGamepad)
    {
      [v12 extendedGamepad];
      objc_claimAutoreleasedReturnValue();
      v8 = OUTLINED_FUNCTION_1_3();
      v9 = [_GCLegacyDeviceSession _mostRecentlyActiveExtendedGamepadIgnoring:v8];
      [(_GCLegacyDeviceSession *)controller _setCurrentExtendedGamepad:v9];
    }

    microGamepad = [v12 microGamepad];

    if (microGamepad)
    {
      [v12 microGamepad];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_1_3();
      v11 = [_GCLegacyDeviceSession _mostRecentlyActiveMicroGamepadIgnoring:v10];
      [(_GCLegacyDeviceSession *)controller _setCurrentMicroGamepad:v11];
    }
  }
}

@end