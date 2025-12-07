@interface BLSBacklightSceneEnvironmentUpdater
- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)environment;
- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)environment;
- (void)performDesiredFidelityRequest:(id)request;
- (void)performFrameSpecifiersRequest:(id)request;
- (void)updatedEnvironmentWithDelta:(id)delta backlightSceneUpdate:(id)update;
@end

@implementation BLSBacklightSceneEnvironmentUpdater

- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v8.receiver = self;
  v8.super_class = BLSBacklightSceneEnvironmentUpdater;
  v5 = [(BLSBacklightSceneEnvironmentUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
  }

  return v6;
}

- (void)updatedEnvironmentWithDelta:(id)delta backlightSceneUpdate:(id)update
{
  v49 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    delegate = bls_environment_log(0);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [BLSBacklightSceneEnvironmentUpdater updatedEnvironmentWithDelta:delegate backlightSceneUpdate:?];
    }

    goto LABEL_27;
  }

  if ((*&delta & 4) != 0)
  {
    visualState = [WeakRetained visualState];
    updateFidelity = [visualState updateFidelity];
    adjustedLuminance = [visualState adjustedLuminance];
    alwaysOnSession = [v8 alwaysOnSession];
    v13 = alwaysOnSession;
    if (adjustedLuminance == 1 || (updateFidelity - 1) <= 1)
    {
      if (![(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:v8])
      {
        goto LABEL_16;
      }

      alwaysOnSession2 = [v8 alwaysOnSession];

      v16 = bls_environment_log(v36);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        identifier = [v8 identifier];
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
        *buf = 134218754;
        selfCopy5 = self;
        v41 = 2114;
        v42 = alwaysOnSession2;
        v43 = 2112;
        v44 = identifier;
        v45 = 2112;
        v46 = v38;
        _os_log_impl(&dword_21FE25000, v16, OS_LOG_TYPE_INFO, "%p created alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
      }
    }

    else
    {
      if (!alwaysOnSession)
      {
LABEL_16:

        goto LABEL_17;
      }

      v14 = BLSDeviceSupports1HzFlipbook();
      v15 = v14;
      v16 = bls_environment_log(v14);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v17)
        {
          identifier2 = [v8 identifier];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
          *buf = 134218754;
          selfCopy5 = self;
          v41 = 2114;
          v42 = v13;
          v43 = 2112;
          v44 = identifier2;
          v45 = 2112;
          v46 = v19;
          _os_log_impl(&dword_21FE25000, v16, OS_LOG_TYPE_INFO, "%p (rdar://133418257)  keeping alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        alwaysOnSession2 = v13;
      }

      else
      {
        if (v17)
        {
          identifier3 = [v8 identifier];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
          *buf = 134218754;
          selfCopy5 = self;
          v41 = 2114;
          v42 = v13;
          v43 = 2112;
          v44 = identifier3;
          v45 = 2112;
          v46 = v23;
          _os_log_impl(&dword_21FE25000, v16, OS_LOG_TYPE_INFO, "%p destroying alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        [v13 invalidate];
        [v8 setAlwaysOnSession:0];
        alwaysOnSession2 = 0;
        v16 = v13;
      }
    }

    v13 = alwaysOnSession2;
    goto LABEL_16;
  }

LABEL_17:
  if (updateCopy)
  {
    context = [updateCopy context];
    triggerEvent = [context triggerEvent];

    [triggerEvent eventID];
    [triggerEvent state];
    identifier4 = [v8 identifier];
    BLSEncode4Chars(identifier4, 4);
    identifier5 = [v8 identifier];
    BLSEncode4Chars(identifier5, 0);
    kdebug_trace();

    delegate = [v8 delegate];
    v28 = bls_environment_log(delegate);
    v29 = v28;
    if (delegate)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        identifier6 = [v8 identifier];
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 134219010;
        selfCopy5 = self;
        v41 = 2114;
        v42 = identifier6;
        v43 = 2048;
        v44 = delegate;
        v45 = 2114;
        v46 = v32;
        v47 = 2114;
        v48 = updateCopy;
        _os_log_impl(&dword_21FE25000, v29, OS_LOG_TYPE_INFO, "%p calling performBacklightSceneUpdate: on delegate for %{public}@: %p %{public}@ with %{public}@", buf, 0x34u);
      }

      [delegate environment:v8 performBacklightSceneUpdate:updateCopy];
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy5 = self;
        v41 = 2114;
        v42 = v8;
        v43 = 2114;
        v44 = updateCopy;
        _os_log_error_impl(&dword_21FE25000, v29, OS_LOG_TYPE_ERROR, "%p delegate:<NULL> (will complete immediately) environment:%{public}@ performBacklightSceneUpdate:%{public}@", buf, 0x20u);
      }

      [updateCopy sceneContentsDidUpdate];
      context2 = [updateCopy context];
      isAnimated = [context2 isAnimated];
      v35 = 0.0;
      if (isAnimated)
      {
        v35 = 0.5;
      }

      [updateCopy performBacklightRampWithDuration:v35];

      [updateCopy sceneContentsAnimationDidComplete];
    }

LABEL_27:
  }
}

- (void)performDesiredFidelityRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained)
  {
    [0 eventID];
    [0 state];
    identifier = [WeakRetained identifier];
    BLSEncode4Chars(identifier, 4);
    identifier2 = [WeakRetained identifier];
    BLSEncode4Chars(identifier2, 0);
    kdebug_trace();

    v9 = [(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:?];
    alwaysOnSession = [WeakRetained alwaysOnSession];
    v11 = bls_environment_log(alwaysOnSession);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      identifier3 = [WeakRetained identifier];
      *buf = 134219266;
      selfCopy = self;
      v25 = 2114;
      v26 = requestCopy;
      v27 = 2114;
      v28 = alwaysOnSession;
      v29 = 2048;
      v30 = WeakRetained;
      v31 = 2114;
      v32 = identifier3;
      v33 = 1024;
      v34 = v9;
      _os_log_impl(&dword_21FE25000, v11, OS_LOG_TYPE_INFO, "%p performDesiredFidelityRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>, createdSession=%{BOOL}u", buf, 0x3Au);
    }

    delegate = [WeakRetained delegate];

    if (delegate)
    {
      v14 = objc_alloc(MEMORY[0x277CCA970]);
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = [v14 initWithStartDate:v15 duration:60.0];

      delegate2 = [WeakRetained delegate];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke;
      v19[3] = &unk_278428790;
      v20 = alwaysOnSession;
      v21 = v16;
      v22 = requestCopy;
      v18 = v16;
      [delegate2 environment:WeakRetained timelinesForDateInterval:v18 previousSpecifier:0 completion:v19];
    }

    else
    {
      [requestCopy completeWithDesiredFidelity:1];
    }
  }

  else
  {
    v6 = bls_environment_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BLSBacklightSceneEnvironmentUpdater *)self performDesiredFidelityRequest:v6];
    }

    [requestCopy completeWithDesiredFidelity:1];
  }
}

void __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke_2;
  v5[3] = &unk_278428768;
  v6 = *(a1 + 48);
  [v3 desiredFidelityForDateInterval:v4 timelines:a2 withCompletion:v5];
}

- (void)performFrameSpecifiersRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    alwaysOnSession = [WeakRetained alwaysOnSession];
    v8 = bls_environment_log(alwaysOnSession);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [v6 identifier];
      *buf = 134219010;
      selfCopy2 = self;
      v19 = 2114;
      v20 = requestCopy;
      v21 = 2114;
      v22 = alwaysOnSession;
      v23 = 2048;
      v24 = v6;
      v25 = 2114;
      v26 = identifier;
      _os_log_impl(&dword_21FE25000, v8, OS_LOG_TYPE_INFO, "%p performFrameSpecifiersRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>", buf, 0x34u);
    }

    delegate = [v6 delegate];

    if (delegate && alwaysOnSession)
    {
      dateInterval = [requestCopy dateInterval];
      delegate2 = [v6 delegate];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__BLSBacklightSceneEnvironmentUpdater_performFrameSpecifiersRequest___block_invoke;
      v14[3] = &unk_2784287B8;
      v15 = alwaysOnSession;
      v16 = requestCopy;
      [delegate2 environment:v6 timelinesForDateInterval:dateInterval previousSpecifier:0 completion:v14];
    }

    else
    {
      [requestCopy completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v13 = bls_environment_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21FE25000, v13, OS_LOG_TYPE_DEFAULT, "%p: performFrameSpecifiersRequest: environment is nil", buf, 0xCu);
    }

    [requestCopy completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
  }
}

- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)environment
{
  v3 = a2;
  v4 = v3;
  if (environment)
  {
    alwaysOnSession = [v3 alwaysOnSession];
    environment = alwaysOnSession == 0;
    if (!alwaysOnSession)
    {
      alwaysOnSession = [[BLSAlwaysOnSession alloc] initWithEnvironment:v4];
      [v4 setAlwaysOnSession:alwaysOnSession];
    }
  }

  return environment;
}

- (void)updatedEnvironmentWithDelta:(uint64_t)a1 backlightSceneUpdate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "%p: updatedEnvironmentWithDelta: environment is nil", &v2, 0xCu);
}

- (void)performDesiredFidelityRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "%p: performDesiredFidelityRequest: environment is nil", &v2, 0xCu);
}

@end