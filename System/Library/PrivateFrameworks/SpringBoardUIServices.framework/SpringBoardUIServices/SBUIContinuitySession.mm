@interface SBUIContinuitySession
- (NSSet)externallyBlockedReasons;
- (NSSet)stepReasons;
- (SBUIContinuitySession)init;
- (SBUIContinuitySession)initWithConnectionFactory:(id)factory connectionQueue:(id)queue;
- (SBUIContinuitySessionAppearanceSettings)appearanceSettings;
- (SBUIContinuitySessionDelegate)delegate;
- (id)acquireScreenRecordingAssertion;
- (int64_t)hostedInterfaceOrientation;
- (unint64_t)step;
- (void)activate;
- (void)dealloc;
- (void)didSetDisplayHardwareIdentifier:(id)identifier;
- (void)didUpdateContinuitySessionStep:(id)step reasons:(id)reasons;
- (void)didUpdateCurrentInterfaceOrientation:(id)orientation supportedInterfaceOrientations:(id)orientations;
- (void)handleContinuityButtonEvent:(unint64_t)event;
- (void)handleLaunchEventOfType:(id)type payload:(id)payload;
- (void)invalidate;
- (void)noteHIDServicesConfigured;
- (void)noteScreenshotCaptured;
- (void)setExternallyBlockedReasons:(id)reasons;
- (void)setHostedInterfaceOrientation:(int64_t)orientation;
- (void)staging_adoptedMacDrivenScreenCaptureNotifications;
- (void)updateAppearanceSettings:(id)settings withCompletion:(id)completion;
@end

@implementation SBUIContinuitySession

- (SBUIContinuitySession)init
{
  v3 = BSDispatchQueueCreateWithQualityOfService();
  v4 = objc_alloc_init(SBUIBSServiceConnectionWrapper);
  v5 = [(SBUIContinuitySession *)self initWithConnectionFactory:v4 connectionQueue:v3];

  return v5;
}

- (SBUIContinuitySession)initWithConnectionFactory:(id)factory connectionQueue:(id)queue
{
  factoryCopy = factory;
  queueCopy = queue;
  v41.receiver = self;
  v41.super_class = SBUIContinuitySession;
  v8 = [(SBUIContinuitySession *)&v41 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_lock_clientCalledActivate = 0;
    objc_storeStrong(&v8->_connectionQueue, queue);
    v9->_lock_serverStep = 0;
    v10 = [MEMORY[0x1E695DFD8] set];
    lock_serverBlockedReasons = v9->_lock_serverBlockedReasons;
    v9->_lock_serverBlockedReasons = v10;

    v12 = [MEMORY[0x1E695DFD8] set];
    lock_clientBlockedReasons = v9->_lock_clientBlockedReasons;
    v9->_lock_clientBlockedReasons = v12;

    v9->_lock_hostedInterfaceOrientation = 0;
    v14 = objc_alloc_init(SBUIContinuitySessionAppearanceSettings);
    appearanceSettings = v9->_appearanceSettings;
    v9->_appearanceSettings = v14;

    objc_initWeak(&location, v9);
    v16 = MEMORY[0x1E698E658];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke;
    v38[3] = &unk_1E789FF40;
    objc_copyWeak(&v39, &location);
    v19 = [v16 assertionWithIdentifier:v18 stateDidChangeHandler:v38];
    screenRecordingAssertions = v9->_screenRecordingAssertions;
    v9->_screenRecordingAssertions = v19;

    v21 = v9->_screenRecordingAssertions;
    v23 = SBLogContinuitySessionService(v22);
    [(BSCompoundAssertion *)v21 setLog:v23];

    v24 = MEMORY[0x1E698F498];
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v26 = +[SBUIContinuitySessionServiceSpecification identifier];
    v27 = [v24 endpointForMachName:defaultShellMachName service:v26 instance:0];

    v28 = [factoryCopy connectionWithEndpoint:v27];
    connection = v9->_connection;
    v9->_connection = v28;

    v30 = v9->_connection;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_11;
    v36[3] = &unk_1E789FF90;
    v31 = v9;
    v37 = v31;
    [(BSServiceConnection *)v30 configureConnection:v36];
    connectionQueue = v9->_connectionQueue;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2_16;
    v34[3] = &unk_1E789DA38;
    v35 = v31;
    dispatch_sync(connectionQueue, v34);

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 6);
    v6 = BYTE1(v5[7]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v5 + 6);
    if (v6 == 1)
    {
      v8 = SBLogContinuitySessionService(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v3 isActive];
        v10 = @"stop";
        if (v9)
        {
          v10 = @"start";
        }

        v15 = 138543362;
        v16 = v10;
        _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring call to %{public}@ screen recording because the session has already ended", &v15, 0xCu);
      }
    }

    else
    {
      v11 = [v3 isActive];
      v12 = v11;
      v13 = SBLogContinuitySessionService(v11);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1A9A79000, v13, OS_LOG_TYPE_DEFAULT, "Screen recording started", &v15, 2u);
        }

        v8 = [*&v5[2]._os_unfair_lock_opaque remoteTarget];
        [v8 didStartScreenRecording];
      }

      else
      {
        if (v14)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1A9A79000, v13, OS_LOG_TYPE_DEFAULT, "Screen recording stopped", &v15, 2u);
        }

        v8 = [*&v5[2]._os_unfair_lock_opaque remoteTarget];
        [v8 didStopScreenRecording];
      }
    }
  }
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBUIContinuitySessionServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBUIContinuitySessionServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2;
  v6[3] = &unk_1E789FF68;
  v7 = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_2(uint64_t a1)
{
  v2 = SBLogContinuitySessionService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Ending session - server invalidated", buf, 2u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(a1 + 32) + 29) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  BSDispatchMain();
}

void __67__SBUIContinuitySession_initWithConnectionFactory_connectionQueue___block_invoke_12(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"serverInvalidated"];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;

  *(*(a1 + 32) + 40) = 7;
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v6 = [*(a1 + 32) delegate];
  [v6 continuitySession:*(a1 + 32) didUpdateContinuitySessionStep:7 reasons:v5];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_screenRecordingAssertions invalidate];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  self->_screenRecordingAssertions = 0;

  v4.receiver = self;
  v4.super_class = SBUIContinuitySession;
  [(SBUIContinuitySession *)&v4 dealloc];
}

- (void)activate
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already activated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUIContinuitySession.m";
    v16 = 1024;
    v17 = 165;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A9A79000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setExternallyBlockedReasons:(id)reasons
{
  v15 = *MEMORY[0x1E69E9840];
  reasonsCopy = reasons;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (reasonsCopy)
  {
    v5 = [reasonsCopy copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSSet *)self->_lock_clientBlockedReasons isEqual:v6]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = [v6 copy];
    lock_clientBlockedReasons = self->_lock_clientBlockedReasons;
    self->_lock_clientBlockedReasons = v7;

    lock_sessionEnded = self->_lock_sessionEnded;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_sessionEnded)
    {
      v11 = SBLogContinuitySessionService(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v6;
        _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Sending updated externally blocked reasons: %{public}@", &v13, 0xCu);
      }

      remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
      [remoteTarget didUpdateExternalBlockedReasons:v6];
    }
  }
}

- (NSSet)externallyBlockedReasons
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_clientBlockedReasons copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)step
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_serverStep = self->_lock_serverStep;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_sessionEnded && lock_serverStep != 7)
  {
    v7 = SBLogContinuitySessionService(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSBUIContinuitySessionStep(lock_serverStep);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_INFO, "overriding current state (%{public}@ to invalid because the session has ended", &v10, 0xCu);
    }

    return 7;
  }

  return lock_serverStep;
}

- (NSSet)stepReasons
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_serverBlockedReasons copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)noteHIDServicesConfigured
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  hidServicesConfigured = self->_hidServicesConfigured;
  v5 = SBLogContinuitySessionService(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (hidServicesConfigured)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate notification that HID services were configured.  I already told SB that...", v8, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Sending note that HID services were configured", buf, 2u);
    }

    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget noteHIDServicesConfigured];

    self->_hidServicesConfigured = 1;
  }
}

- (void)handleLaunchEventOfType:(id)type payload:(id)payload
{
  v14 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadCopy = payload;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  remoteTarget = SBLogContinuitySessionService(v9);
  v11 = os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT);
  if (lock_sessionEnded)
  {
    if (v11)
    {
      v12 = 138543362;
      v13 = typeCopy;
      _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Ignoring call to handleLaunchEventOfType - %{public}@ because the session has ended", &v12, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v12 = 138543362;
      v13 = typeCopy;
      _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Sending launch event: %{public}@", &v12, 0xCu);
    }

    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget handleLaunchEventOfType:typeCopy payload:payloadCopy];
  }
}

- (void)updateAppearanceSettings:(id)settings withCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke;
  v34[3] = &unk_1E789FFB8;
  v8 = completionCopy;
  v35 = v8;
  v9 = MEMORY[0x1AC58E960](v34);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_sessionEnded)
  {
    v12 = SBLogContinuitySessionService(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring call to updateAppearanceSettings because the session has ended", buf, 2u);
    }

    v19 = SBUIContinuitySessionErrorCreate(0xFFFFFFFFFFFFF82FLL, @"Session has ended", v13, v14, v15, v16, v17, v18, v32[0]);
    (v9)[2](v9, 0, v19);
  }

  else
  {
    v19 = self->_appearanceSettings;
    v20 = [(SBUIContinuitySessionAppearanceSettings *)v19 mutableCopy];
    v21 = objc_alloc_init(SBUIContinuitySessionTransitionContext);
    v22 = v21;
    if (settingsCopy)
    {
      settingsCopy[2](settingsCopy, v20, v21);
      v23 = [v20 copy];
      v24 = [(SBUIContinuitySessionAppearanceSettings *)v19 isEqual:v23];
      if (v24)
      {
        v25 = SBLogContinuitySessionService(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v37 = v19;
          _os_log_impl(&dword_1A9A79000, v25, OS_LOG_TYPE_DEFAULT, "Appearance settings not changed from %{public}@ - firing completion now", buf, 0xCu);
        }

        v9[2](v9, 1, 0);
      }

      else
      {
        v27 = [v20 copy];
        appearanceSettings = self->_appearanceSettings;
        self->_appearanceSettings = v27;

        v30 = SBLogContinuitySessionService(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v37 = v19;
          v38 = 2114;
          v39 = v23;
          _os_log_impl(&dword_1A9A79000, v30, OS_LOG_TYPE_DEFAULT, "Appearance settings changed from %{public}@ to %{public}@ - sending appearance update", buf, 0x16u);
        }

        remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_32;
        v32[3] = &unk_1E78A0008;
        v33 = v9;
        [remoteTarget updatedAppearanceSettings:v23 transitionContext:v22 completion:v32];
      }
    }

    else
    {
      v26 = SBLogContinuitySessionService(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v26, OS_LOG_TYPE_DEFAULT, "No updater block provided, firing completion now", buf, 2u);
      }

      v9[2](v9, 1, 0);
    }
  }
}

uint64_t __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

uint64_t __65__SBUIContinuitySession_updateAppearanceSettings_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) BOOLValue];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (SBUIContinuitySessionAppearanceSettings)appearanceSettings
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  appearanceSettings = self->_appearanceSettings;

  return appearanceSettings;
}

- (void)handleContinuityButtonEvent:(unint64_t)event
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_clientCalledActivate = self->_lock_clientCalledActivate;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_clientCalledActivate)
  {
    remoteTarget = SBLogContinuitySessionService(v7);
    v9 = os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT);
    if (!lock_sessionEnded)
    {
      if (v9)
      {
        v12 = NSStringFromSBUIContinuityButtonEventType(event);
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Sending button event: %{public}@", &v13, 0xCu);
      }

      remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:event];
      [remoteTarget handleContinuityButtonEvent:v10];
      goto LABEL_11;
    }

    if (v9)
    {
      v10 = NSStringFromSBUIContinuityButtonEventType(event);
      v13 = 138543362;
      v14 = v10;
      v11 = "Ignoring call to handleContinuityButtonEvent - %{public}@ because the session has ended";
LABEL_7:
      _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
LABEL_11:
    }
  }

  else
  {
    remoteTarget = SBLogContinuitySessionService(v7);
    if (os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSBUIContinuityButtonEventType(event);
      v13 = 138543362;
      v14 = v10;
      v11 = "Ignoring call to handleContinuityButtonEvent - %{public}@ because the session hasn't been activated by the client";
      goto LABEL_7;
    }
  }
}

- (int64_t)hostedInterfaceOrientation
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_hostedInterfaceOrientation = self->_lock_hostedInterfaceOrientation;
  os_unfair_lock_unlock(&self->_lock);
  return lock_hostedInterfaceOrientation;
}

- (void)setHostedInterfaceOrientation:(int64_t)orientation
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_clientCalledActivate)
  {
    lock_sessionEnded = self->_lock_sessionEnded;
    self->_lock_hostedInterfaceOrientation = orientation;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_sessionEnded)
    {
      v7 = SBLogContinuitySessionService(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = BSInterfaceOrientationDescription();
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Setting hosted interface orientation: %{public}@", &v11, 0xCu);
      }

      remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
      [remoteTarget setHostedInterfaceOrientation:v10];
      goto LABEL_9;
    }
  }

  else
  {
    self->_lock_hostedInterfaceOrientation = orientation;
    os_unfair_lock_unlock(&self->_lock);
  }

  remoteTarget = SBLogContinuitySessionService(v6);
  if (os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT))
  {
    v10 = BSInterfaceOrientationDescription();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Pending call to set the hosted interface orientation: %{public}@ because the session hasn't been activated by the client or has ended", &v11, 0xCu);
LABEL_9:
  }
}

- (void)noteScreenshotCaptured
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_clientCalledActivate = self->_lock_clientCalledActivate;
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_clientCalledActivate)
  {
    remoteTarget = SBLogContinuitySessionService(v5);
    v7 = os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT);
    if (lock_sessionEnded)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "Ignoring call to note screenshot captured because the session has ended";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Noting screenshot captured", v10, 2u);
      }

      remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
      [remoteTarget didCaptureScreenshot];
    }
  }

  else
  {
    remoteTarget = SBLogContinuitySessionService(v5);
    if (os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Ignoring call to note screenshot captured because the session hasn't been activated by the client";
      v9 = buf;
      goto LABEL_7;
    }
  }
}

- (id)acquireScreenRecordingAssertion
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  uUIDString = [uUID UUIDString];
  v6 = [(BSCompoundAssertion *)screenRecordingAssertions acquireForReason:uUIDString];

  return v6;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_sessionEnded)
  {
    v4 = SBLogContinuitySessionService(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Ending session - client manually invalidated session", v9, 2u);
    }

    v5 = [MEMORY[0x1E695DFD8] set];
    lock_serverBlockedReasons = self->_lock_serverBlockedReasons;
    self->_lock_serverBlockedReasons = v5;

    self->_lock_serverStep = 7;
  }

  self->_lock_sessionEnded = 1;
  [(SBUIContinuitySession *)self _invalidateOrientations];
  os_unfair_lock_unlock(&self->_lock);
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  [(BSCompoundAssertion *)self->_screenRecordingAssertions invalidate];
  screenRecordingAssertions = self->_screenRecordingAssertions;
  self->_screenRecordingAssertions = 0;
}

- (void)didSetDisplayHardwareIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v5 = identifierCopy;
  BSDispatchMain();
}

void __57__SBUIContinuitySession_didSetDisplayHardwareIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SBLogContinuitySessionService(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Received display hardware identifier: %{public}@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 96), *(a1 + 32));
}

- (void)didUpdateContinuitySessionStep:(id)step reasons:(id)reasons
{
  stepCopy = step;
  reasonsCopy = reasons;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v10 = reasonsCopy;
  v8 = reasonsCopy;
  v9 = stepCopy;
  BSDispatchMain();
}

void __64__SBUIContinuitySession_didUpdateContinuitySessionStep_reasons___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] intValue];
  os_unfair_lock_lock(a1[5] + 6);
  v3 = BSEqualObjects();
  v4 = a1[5];
  v5 = *(v4 + 5);
  objc_storeStrong(v4 + 6, a1[6]);
  *(a1[5] + 5) = v2;
  os_unfair_lock_unlock(a1[5] + 6);
  if (v5 == v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = SBLogContinuitySessionService(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v9 = &stru_1F1D7ED48;
    }

    else
    {
      v9 = @"updated";
    }

    v10 = NSStringFromSBUIContinuitySessionStep(v2);
    v11 = [a1[6] bs_array];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Received %{public}@ state: %{public}@ reasons: %{public}@", &v13, 0x20u);
  }

  if ((v7 & 1) == 0)
  {
    v12 = [a1[5] delegate];
    [v12 continuitySession:a1[5] didUpdateContinuitySessionStep:v2 reasons:a1[6]];
  }
}

- (void)didUpdateCurrentInterfaceOrientation:(id)orientation supportedInterfaceOrientations:(id)orientations
{
  orientationCopy = orientation;
  orientationsCopy = orientations;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v10 = orientationsCopy;
  v8 = orientationsCopy;
  v9 = orientationCopy;
  BSDispatchMain();
}

void __93__SBUIContinuitySession_didUpdateCurrentInterfaceOrientation_supportedInterfaceOrientations___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] unsignedIntValue];
  v3 = [a1[5] unsignedIntValue];
  v4 = [a1[6] delegate];
  os_unfair_lock_lock(a1[6] + 6);
  v5 = [a1[6] interfaceOrientation];
  v6 = [a1[6] supportedInterfaceOrientations];
  [a1[6] setInterfaceOrientation:v2];
  [a1[6] setSupportedInterfaceOrientations:v3];
  os_unfair_lock_unlock(a1[6] + 6);
  if (v5 != v2 || v6 != v3)
  {
    v8 = SBLogContinuitySessionService(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = BSInterfaceOrientationDescription();
      v10 = BSInterfaceOrientationMaskDescription();
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Received interfaceOrientation: %{public}@ supportedOrientations: %{public}@", &v11, 0x16u);
    }

    [v4 continuitySession:a1[6] didUpdateCurrentInterfaceOrientation:v2 supportedInterfaceOrientations:v3];
  }
}

- (SBUIContinuitySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)staging_adoptedMacDrivenScreenCaptureNotifications
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  lock_sessionEnded = self->_lock_sessionEnded;
  os_unfair_lock_unlock(&self->_lock);
  remoteTarget = SBLogContinuitySessionService(v4);
  v6 = os_log_type_enabled(remoteTarget, OS_LOG_TYPE_DEFAULT);
  if (lock_sessionEnded)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Ignoring client telling me they adopted screen capture notifications because the session has ended", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9A79000, remoteTarget, OS_LOG_TYPE_DEFAULT, "Client has adopted screen capture notifications", v7, 2u);
    }

    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget clientHasAdoptedScreenCaptureNotifications];
  }
}

@end