@interface PUIPosterSceneComponent
- (PUIPosterSceneComponent)initWithScene:(id)scene bundleIdentifier:(id)identifier processIdentity:(id)identity options:(unint64_t)options;
- (void)_invalidateLocationInUseAssertion;
- (void)_main_remoteMLMInvalidation:(id)invalidation;
- (void)_main_updateState;
- (void)invalidate;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
@end

@implementation PUIPosterSceneComponent

- (void)_main_updateState
{
  v2 = NSStringFromSelector(self);
  v3 = objc_opt_class();
  v9 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
}

- (void)_invalidateLocationInUseAssertion
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_locationInUseAssertion)
  {
    v3 = PUILogCommon(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      locationInUseAssertion = self->_locationInUseAssertion;
      v6 = 138412290;
      v7 = locationInUseAssertion;
      _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "invalidating CLInUseAssertion: %@", &v6, 0xCu);
    }

    [(CLInUseAssertion *)self->_locationInUseAssertion invalidate];
    v5 = self->_locationInUseAssertion;
    self->_locationInUseAssertion = 0;
  }
}

- (PUIPosterSceneComponent)initWithScene:(id)scene bundleIdentifier:(id)identifier processIdentity:(id)identity options:(unint64_t)options
{
  sceneCopy = scene;
  identifierCopy = identifier;
  identityCopy = identity;
  v14 = [(PUIPosterSceneComponent *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scene, scene);
    v16 = [identifierCopy copy];
    bundleIdentifier = v15->_bundleIdentifier;
    v15->_bundleIdentifier = v16;

    objc_storeStrong(&v15->_processIdentity, identity);
    v15->_options = options;
    [(FBScene *)v15->_scene addObserver:v15];
    [(PUIPosterSceneComponent *)v15 _main_updateState];
  }

  return v15;
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  [(BSAbsoluteMachTimer *)self->_wakeTimer invalidate];
  [(BSTimerScheduleQuerying *)self->_eventTimer invalidate];
  v3 = [(FBScene *)self->_scene removeObserver:self];
  if (self->_mlmAssertion)
  {
    v4 = PUILogCommon(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      pui_shortDescription = [(FBScene *)self->_scene pui_shortDescription];
      v9 = 138543362;
      v10 = pui_shortDescription;
      _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating MLM assertion.", &v9, 0xCu);
    }

    [(RBSAssertion *)self->_mlmAssertion invalidate];
    mlmAssertion = self->_mlmAssertion;
    self->_mlmAssertion = 0;
  }

  [(RBSAssertion *)self->_taskAssertion invalidate];
  taskAssertion = self->_taskAssertion;
  self->_taskAssertion = 0;

  [(PUIPosterSceneComponent *)self _invalidateLocationInUseAssertion];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)_main_remoteMLMInvalidation:(id)invalidation
{
  mlmAssertion = self->_mlmAssertion;
  if (mlmAssertion == invalidation)
  {
    [(RBSAssertion *)mlmAssertion invalidate];
    v5 = self->_mlmAssertion;
    self->_mlmAssertion = 0;

    [(PUIPosterSceneComponent *)self _main_updateState];
  }
}

void __44__PUIPosterSceneComponent__main_updateState__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PUILogCommon(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] MLM assertion for %{public}@ was invalidated remotely.", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PUIPosterSceneComponent__main_updateState__block_invoke_44;
  v8[3] = &unk_1E7854C68;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
}

void __44__PUIPosterSceneComponent__main_updateState__block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _main_remoteMLMInvalidation:*(a1 + 32)];
}

uint64_t __44__PUIPosterSceneComponent__main_updateState__block_invoke_47(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PUILogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1A8C85000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finalizing delayed invalidation of MLM assertion %p.", &v6, 0x16u);
  }

  return [*(a1 + 40) invalidate];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v55 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  diffCopy = diff;
  pui_significantEventTimeDidChange = [diffCopy pui_significantEventTimeDidChange];
  pui_significantEventsDidChange = [diffCopy pui_significantEventsDidChange];

  if ((pui_significantEventTimeDidChange & 1) != 0 || pui_significantEventsDidChange)
  {
    [(BSTimerScheduleQuerying *)self->_eventTimer invalidate];
    eventTimer = self->_eventTimer;
    self->_eventTimer = 0;

    clientSettings = [sceneCopy clientSettings];
    pui_significantEventOptions = [clientSettings pui_significantEventOptions];

    clientSettings2 = [sceneCopy clientSettings];
    pui_significantEventOptions2 = [clientSettings2 pui_significantEventOptions];

    pui_isLegacyProvider = [sceneCopy pui_isLegacyProvider];
    if ((pui_significantEventOptions & 1) != 0 || (pui_significantEventOptions2 & 8) != 0 && ((pui_isLegacyProvider ^ 1) & 1) == 0)
    {
      clientSettings3 = [sceneCopy clientSettings];
      pui_significantEventTime = [clientSettings3 pui_significantEventTime];

      v49 = 0;
      v50 = 0;
      v20 = dispatch_time_to_nsec();
      if (!v20)
      {
        v22 = PUILogCommon(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

        goto LABEL_23;
      }

      v21 = (v49 == 2) << 63;
      if (pui_significantEventTime == v21)
      {
        v22 = PUILogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

LABEL_23:

        goto LABEL_24;
      }

      v48 = 0;
      v23 = dispatch_time_to_nsec();
      if (!v23)
      {
        v22 = PUILogCommon(v23);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }

        goto LABEL_23;
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __101__PUIPosterSceneComponent_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
      v47[3] = &unk_1E78560A0;
      v47[4] = self;
      v24 = MEMORY[0x1AC5769F0](v47);
      v25 = v24;
      v26 = (v50 - v48) / 1000000000.0;
      if (v26 <= 0.0)
      {
        v32 = PUILogCommon(v24);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
        }
      }

      else
      {
        if (v49 == 3)
        {
          v38 = objc_alloc(MEMORY[0x1E698E7A0]);
          pui_shortDescription = [sceneCopy pui_shortDescription];
          v40 = [v38 initWithIdentifier:pui_shortDescription];
          v41 = self->_eventTimer;
          self->_eventTimer = v40;

          v42 = self->_eventTimer;
          v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v26];
          [(BSTimerScheduleQuerying *)v42 scheduleForDate:v43 leewayInterval:MEMORY[0x1E69E96A0] queue:v25 handler:0.1];

          v37 = @"wall";
        }

        else if (v49 == 2)
        {
          v33 = objc_alloc(MEMORY[0x1E698E660]);
          pui_shortDescription2 = [sceneCopy pui_shortDescription];
          v35 = [v33 initWithIdentifier:pui_shortDescription2];
          v36 = self->_eventTimer;
          self->_eventTimer = v35;

          v31 = [(BSTimerScheduleQuerying *)self->_eventTimer scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v25 queue:v26 handler:0.1];
          v37 = @"monotonic";
        }

        else
        {
          if (v49 == 1)
          {
            v27 = objc_alloc(MEMORY[0x1E698E5E8]);
            pui_shortDescription3 = [sceneCopy pui_shortDescription];
            v29 = [v27 initWithIdentifier:pui_shortDescription3];
            v30 = self->_eventTimer;
            self->_eventTimer = v29;

            v31 = [(BSTimerScheduleQuerying *)self->_eventTimer scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v25 queue:v26 handler:0.1];
          }

          else
          {
            v44 = PUILogCommon(v24);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [PUIPosterSceneComponent scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:];
            }
          }

          v37 = @"default";
        }

        if (!self->_eventTimer)
        {
          goto LABEL_41;
        }

        if (v26 <= 60.0)
        {
          v32 = PUILogCommon(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v52 = v26;
            v53 = 2112;
            v54 = v37;
            _os_log_impl(&dword_1A8C85000, v32, OS_LOG_TYPE_DEFAULT, "Setting significant time interval to %.1fs (%@)", buf, 0x16u);
          }
        }

        else
        {
          v32 = objc_alloc_init(MEMORY[0x1E696AB70]);
          [v32 setUnitsStyle:1];
          v45 = [v32 stringFromTimeInterval:v26];
          v46 = PUILogCommon(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v52 = *&v45;
            v53 = 2112;
            v54 = v37;
            _os_log_impl(&dword_1A8C85000, v46, OS_LOG_TYPE_DEFAULT, "Setting significant time interval to %{public}@ (%@)", buf, 0x16u);
          }
        }
      }

LABEL_41:
      goto LABEL_24;
    }

    if (!(((pui_significantEventOptions2 & 8) == 0) | pui_isLegacyProvider & 1))
    {
      v22 = PUILogCommon(pui_isLegacyProvider);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [PUIPosterSceneComponent scene:sceneCopy didUpdateClientSettingsWithDiff:v22 oldClientSettings:? transitionContext:?];
      }

      goto LABEL_23;
    }
  }

LABEL_24:
}

void __101__PUIPosterSceneComponent_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v4 isActive];
  if (v5)
  {
    v6 = PUILogCommon(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 pui_shortDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_1A8C85000, v6, OS_LOG_TYPE_DEFAULT, "Significant event timer fired for %{public}@", &v8, 0xCu);
    }

    [v4 pui_postSignificantEvent:1];
  }

  [v3 invalidate];
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:.cold.5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scene:(void *)a1 didUpdateClientSettingsWithDiff:(NSObject *)a2 oldClientSettings:transitionContext:.cold.6(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 pui_shortDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&dword_1A8C85000, a2, OS_LOG_TYPE_FAULT, "PRPosterSignificantEventOptionLegacySettingsUpdate requested from *not* LegacyPoster BUT: %{public}@", &v4, 0xCu);
}

@end