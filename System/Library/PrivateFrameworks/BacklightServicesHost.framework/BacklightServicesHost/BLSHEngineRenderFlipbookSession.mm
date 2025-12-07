@interface BLSHEngineRenderFlipbookSession
- (BLSHEngineRenderFlipbookSession)initWithDelegate:(id)delegate flipbook:(id)flipbook presentation:(id)presentation osInterfaceProvider:(id)provider;
- (NSArray)renderedFrames;
- (NSString)debugDescription;
- (NSString)description;
- (id)telemetryDataWithEndTime:(double)time reasonEnded:(id)ended preventedSleepDuration:(double)duration;
- (uint64_t)lock_memoryUsage;
- (unint64_t)count;
- (unint64_t)memoryUsage;
- (void)_lock_scheduleTimeoutForSpecifier:(uint64_t)specifier;
- (void)dealloc;
- (void)environment:(void *)environment didUpdateToSpecifier:;
- (void)invalidate;
- (void)prepareAndRenderFrameSpecifier:(id)specifier;
- (void)renderFrameSpecifier:(void *)specifier timedOutEnvironments:;
- (void)timeoutTimerFiredForSpecifier:(uint64_t)specifier;
@end

@implementation BLSHEngineRenderFlipbookSession

- (BLSHEngineRenderFlipbookSession)initWithDelegate:(id)delegate flipbook:(id)flipbook presentation:(id)presentation osInterfaceProvider:(id)provider
{
  v36 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  flipbookCopy = flipbook;
  presentationCopy = presentation;
  providerCopy = provider;
  v34.receiver = self;
  v34.super_class = BLSHEngineRenderFlipbookSession;
  v14 = [(BLSHEngineRenderFlipbookSession *)&v34 init];
  v15 = v14;
  if (v14)
  {
    v26 = providerCopy;
    v27 = flipbookCopy;
    objc_storeStrong(&v14->_flipbook, flipbook);
    objc_storeStrong(&v15->_presentation, presentation);
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_lock_delegate, delegateCopy);
    objc_storeStrong(&v15->_osInterfaceProvider, provider);
    array = [MEMORY[0x277CBEB18] array];
    lock_renderedFrames = v15->_lock_renderedFrames;
    v15->_lock_renderedFrames = array;

    BSContinuousMachTimeNow();
    v15->_sessionStartTime = v18;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    presentationEntries = [presentationCopy presentationEntries];
    v20 = [presentationEntries countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(presentationEntries);
          }

          environment = [*(*(&v30 + 1) + 8 * i) environment];
          if (objc_opt_respondsToSelector())
          {
            [environment willBeginRenderSession:v15];
          }
        }

        v21 = [presentationEntries countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v21);
    }

    objc_initWeak(&location, v15);
    objc_copyWeak(&v28, &location);
    v15->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    providerCopy = v26;
    flipbookCopy = v27;
  }

  return v15;
}

uint64_t __94__BLSHEngineRenderFlipbookSession_initWithDelegate_flipbook_presentation_osInterfaceProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained debugDescription];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[BLSHEngineRenderFlipbookSession count](self withName:{"count"), @"renderedCount"}];
  build = [v3 build];

  return build;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_lock_renderedFrames withName:{"count"), @"renderedCount"}];
  v5 = [v3 appendBool:self->_lock_didFailToRender withName:@"didFailToRender" ifEqualTo:1];
  v6 = [v3 appendBool:self->_lock_timedOut withName:@"timedOut" ifEqualTo:1];
  v7 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  if (self->_lock_retryRenderCount >= 1)
  {
    v8 = [v3 appendInt:? withName:?];
  }

  BSContinuousMachTimeNow();
  v10 = [v3 appendDouble:@"totalPreparationSeconds" withName:3 decimalPrecision:v9 - self->_sessionStartTime];
  v11 = [v3 appendDouble:@"accumulatedLayoutSeconds" withName:3 decimalPrecision:self->_lock_accumulatedLayoutDuration];
  v12 = [v3 appendDouble:@"accumulatedRenderSeconds" withName:3 decimalPrecision:self->_lock_accumulatedRenderDuration];
  v13 = [v3 appendObject:self->_lock_preparingSpecifier withName:@"preparingSpecifier" skipIfNil:1];
  v14 = [v3 appendObject:self->_lock_timeoutTimer withName:@"timeoutTimer" skipIfNil:1];
  allObjects = [(NSMutableSet *)self->_lock_pendingEnvironments allObjects];
  [v3 appendArraySection:allObjects withName:@"pendingEnvironments" multilinePrefix:@"      " skipIfEmpty:1];

  [v3 appendArraySection:self->_lock_renderedFrames withName:@"renderedFrames" multilinePrefix:@"      " skipIfEmpty:1];
  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_renderedFrames count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)memoryUsage
{
  os_unfair_lock_lock(&self->_lock);
  lock_memoryUsage = [(BLSHEngineRenderFlipbookSession *)self lock_memoryUsage];
  os_unfair_lock_unlock(&self->_lock);
  return lock_memoryUsage;
}

- (NSArray)renderedFrames
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_renderedFrames copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  if (self->_lock_didDisableFlipbookPowerSavings)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
    [WeakRetained decrementDisablePowerSavingUsageCountForReason:3];

    self->_lock_didDisableFlipbookPowerSavings = 0;
  }

  [(BSTimerScheduleQuerying *)self->_lock_timeoutTimer invalidate];
  lock_timeoutTimer = self->_lock_timeoutTimer;
  self->_lock_timeoutTimer = 0;

  objc_storeWeak(&self->_lock_delegate, 0);
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_presentation presentationEntries];
  v6 = [presentationEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment = [*(*(&v11 + 1) + 8 * v9) environment];
        if (objc_opt_respondsToSelector())
        {
          [environment willEndRenderSession:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [presentationEntries countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareAndRenderFrameSpecifier:(id)specifier
{
  v42 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  if (!specifierCopy)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  v7 = specifierCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  if (self->_lock_preparingSpecifier)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  BSContinuousMachTimeNow();
  self->_lock_layoutStartTime = v8;
  if (!self->_lock_didDisableFlipbookPowerSavings)
  {
    self->_lock_didDisableFlipbookPowerSavings = 1;
    WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
    [WeakRetained incrementDisablePowerSavingUsageCountForReason:3];
  }

  objc_storeStrong(&self->_lock_preparingSpecifier, specifier);
  v10 = [MEMORY[0x277CBEB58] set];
  lock_pendingEnvironments = self->_lock_pendingEnvironments;
  self->_lock_pendingEnvironments = v10;

  [v7 specifiers];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v12 = v37 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v13)
  {
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = self->_lock_pendingEnvironments;
        environment = [*(*(&v36 + 1) + 8 * i) environment];
        identifier = [environment identifier];
        [(NSMutableSet *)v16 addObject:identifier];
      }

      v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  if (![(NSMutableSet *)self->_lock_pendingEnvironments count])
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  [(BLSHEngineRenderFlipbookSession *)self _lock_scheduleTimeoutForSpecifier:v7];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v20)
  {
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        environment2 = [v23 environment];
        dateSpecifier = [v23 dateSpecifier];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __66__BLSHEngineRenderFlipbookSession_prepareAndRenderFrameSpecifier___block_invoke;
        v27[3] = &unk_27841EE88;
        objc_copyWeak(&v30, &location);
        v26 = environment2;
        v28 = v26;
        v29 = v7;
        [v26 updateToDateSpecifier:dateSpecifier sceneContentsUpdated:v27];

        objc_destroyWeak(&v30);
      }

      v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v20);
  }

  objc_destroyWeak(&location);
}

- (void)_lock_scheduleTimeoutForSpecifier:(uint64_t)specifier
{
  v3 = a2;
  if (specifier)
  {
    objc_initWeak(&location, specifier);
    [*(specifier + 48) invalidate];
    v4 = *(specifier + 64);
    v5 = [MEMORY[0x277CF0C00] builderWithObject:specifier];
    build = [v5 build];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__BLSHEngineRenderFlipbookSession__lock_scheduleTimeoutForSpecifier___block_invoke;
    v9[3] = &unk_27841EED0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    v7 = [v4 scheduledTimerWithIdentifier:build interval:v9 leewayInterval:1.0 handler:2.0];
    v8 = *(specifier + 48);
    *(specifier + 48) = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __66__BLSHEngineRenderFlipbookSession_prepareAndRenderFrameSpecifier___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(BLSHEngineRenderFlipbookSession *)WeakRetained environment:a1[5] didUpdateToSpecifier:?];
}

- (id)telemetryDataWithEndTime:(double)time reasonEnded:(id)ended preventedSleepDuration:(double)duration
{
  endedCopy = ended;
  os_unfair_lock_lock(&self->_lock);
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  v10 = [v9 bls_initWithBSContinuousMachTime:time];

  v11 = [BLSHFlipbookFramesHistogram histogramWithReferenceDate:v10 flipbookFrames:self->_lock_renderedFrames];
  presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_presentation presentationEntries];
  v13 = [presentationEntries bs_mapNoNulls:&__block_literal_global_612];

  v14 = [[BLSHFlipbookRenderSessionTelemetryData alloc] initWithTimestamp:v13 environmentIdentifiers:endedCopy reasonEnded:v11 sessionFramesHistogram:self->_lock_didFailToRender totalPreparationDuration:[(NSMutableSet *)self->_lock_pendingEnvironments count] accumulatedLayoutDuration:time accumulatedRenderDuration:time - self->_sessionStartTime preventedSleepDuration:self->_lock_accumulatedLayoutDuration didFailToRender:self->_lock_accumulatedRenderDuration timedOutEnvironmentCount:duration];
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

id __95__BLSHEngineRenderFlipbookSession_telemetryDataWithEndTime_reasonEnded_preventedSleepDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = [v2 identifier];

  return v3;
}

void __69__BLSHEngineRenderFlipbookSession__lock_scheduleTimeoutForSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BLSHEngineRenderFlipbookSession *)WeakRetained timeoutTimerFiredForSpecifier:?];
}

- (void)timeoutTimerFiredForSpecifier:(uint64_t)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (specifier)
  {
    os_unfair_lock_lock((specifier + 16));
    v4 = *(specifier + 24);
    if (v4 != v3)
    {
      [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:?];
    }

    *(specifier + 117) = 1;
    v5 = *(specifier + 118);
    *(specifier + 24) = 0;

    allObjects = [*(specifier + 32) allObjects];
    [*(specifier + 48) invalidate];
    v7 = *(specifier + 48);
    *(specifier + 48) = 0;

    os_unfair_lock_unlock((specifier + 16));
    if (v5 == 1)
    {
      v8 = bls_flipbook_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:];
      }
    }

    else
    {
      v9 = BSIsBeingDebugged();
      v10 = bls_flipbook_log();
      v8 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:];
        }

        [(BLSHEngineRenderFlipbookSession *)specifier renderFrameSpecifier:v3 timedOutEnvironments:allObjects];
        goto LABEL_10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134218242;
        specifierCopy = specifier;
        v13 = 2114;
        v14 = allObjects;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "%p prepare frame operation did not complete after ~1 second (+leeway), (but it is being debugged), pending environments:%{public}@ ", &v11, 0x16u);
      }
    }

LABEL_10:
  }
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 16));
  WeakRetained = objc_loadWeakRetained((a1[4] + 56));
  os_unfair_lock_unlock((a1[4] + 16));
  [WeakRetained renderFramesSession:a1[4] beganRenderingSpecifier:a1[5] timedOutEnvironments:a1[6]];
}

- (uint64_t)lock_memoryUsage
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 40);
  v3 = [v2 countByEnumeratingWithState:v9 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(v9[1] + 8 * i) memoryUsage];
      }

      v4 = [v2 countByEnumeratingWithState:v9 objects:v11 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)environment:(void *)environment didUpdateToSpecifier:
{
  v10 = a2;
  environmentCopy = environment;
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    if ((*(self + 118) & 1) != 0 || (*(self + 117) & 1) != 0 || *(self + 24) != environmentCopy || (v6 = *(self + 32), [v10 identifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "removeObject:", v7), v7, objc_msgSend(*(self + 32), "count")))
    {
      os_unfair_lock_unlock((self + 16));
    }

    else
    {
      v8 = *(self + 24);
      *(self + 24) = 0;

      [*(self + 48) invalidate];
      v9 = *(self + 48);
      *(self + 48) = 0;

      *(self + 112) = 0;
      os_unfair_lock_unlock((self + 16));
      [(BLSHEngineRenderFlipbookSession *)self renderFrameSpecifier:environmentCopy timedOutEnvironments:0];
    }
  }
}

- (void)renderFrameSpecifier:(void *)specifier timedOutEnvironments:
{
  v5 = a2;
  specifierCopy = specifier;
  if (self)
  {
    encodedPresentationTime = [v5 encodedPresentationTime];
    [specifierCopy count];
    [v5 encodedPresentationTime];
    kdebug_trace();
    BSContinuousMachTimeNow();
    *(self + 96) = *(self + 96) + v8 - *(self + 88);
    specifiers = [v5 specifiers];
    [specifiers count];
    kdebug_trace();

    BSContinuousMachTimeNow();
    v11 = v10;
    v12 = *(self + 8);
    v13 = *(self + 120);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke;
    v24[3] = &unk_27841EAF0;
    v24[4] = self;
    v25 = v5;
    v26 = specifierCopy;
    OUTLINED_FUNCTION_0_5();
    v15 = 3221225472;
    v16 = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_2;
    v17 = &unk_27841EF20;
    v21 = encodedPresentationTime;
    v18 = v25;
    selfCopy = self;
    v22 = v11;
    v20 = v26;
    v23 = sel_renderFrameSpecifier_timedOutEnvironments_;
    [v12 renderFrameForPresentation:v13 dateSpecifier:v18 onRenderBegin:v24 onRenderComplete:v14];
  }
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v155 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v5 frameId];
  kdebug_trace();
  BSContinuousMachTimeNow();
  v8 = v7 - *(a1 + 64);
  v9 = OUTLINED_FUNCTION_25();
  os_unfair_lock_lock(v9);
  *(*(a1 + 40) + 104) = v8 + *(*(a1 + 40) + 104);
  v10 = *(a1 + 40);
  v11 = *(v10 + 118);
  WeakRetained = objc_loadWeakRetained((v10 + 56));
  if (v5)
  {
    [*(*(a1 + 40) + 40) addObject:v5];
  }

  v13 = [*(*(a1 + 40) + 40) count];
  v14 = [(BLSHEngineRenderFlipbookSession *)*(a1 + 40) lock_memoryUsage];
  if (v6)
  {
    v15 = [v6 domain];
    v16 = [v15 isEqual:*MEMORY[0x277CD9DC8]];

    if (v16)
    {
      v17 = [v6 code];
      if (v17 == 5)
      {
        ++*(*(a1 + 40) + 112);
        v47 = OUTLINED_FUNCTION_25();
        os_unfair_lock_unlock(v47);
        v48 = bls_flipbook_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          [OUTLINED_FUNCTION_29() bls_loggingString];
          objc_claimAutoreleasedReturnValue();
          v49 = [OUTLINED_FUNCTION_37() bls_loggingString];
          v50 = [MEMORY[0x277CF0978] sharedFormatter];
          v51 = [v50 stringFromByteCount:v14];
          OUTLINED_FUNCTION_5_1(3.8524e-34, v51, v52, v53, v54, v55, v56, v57, v58, v127, v128, v129, v130, v131, v132, v134);
          *v152 = v49;
          OUTLINED_FUNCTION_6_0(v59, v60);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v61, v62, OS_LOG_TYPE_INFO, v63, v64, 0x30u);
        }

        objc_initWeak(location, *(a1 + 40));
        v65 = dispatch_time(0, 10000000);
        v66 = block;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_619;
        block[3] = &unk_27841EE88;
        objc_copyWeak(&v143, location);
        v141 = *(a1 + 32);
        v142 = *(a1 + 48);
        dispatch_after(v65, MEMORY[0x277D85CD0], block);

        v67 = v141;
        goto LABEL_24;
      }

      if (v17 == 2)
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [*(*(a1 + 40) + 64) isFlipbookTransparent];
        }

        else
        {
          v18 = 0;
        }

        v16 = v18 & ([WeakRetained isUsingPseudoFlipbook] ^ 1);
        v68 = *(a1 + 40);
        if (v68[28]._os_unfair_lock_opaque >= 1)
        {
          v69 = bls_flipbook_log();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v130 = *(a1 + 40);
            v134 = [v6 bls_loggingString];
            v132 = [*(a1 + 32) bls_loggingString];
            v131 = [MEMORY[0x277CF0978] sharedFormatter];
            v129 = [v131 stringFromByteCount:v14];
            *location = 134219010;
            *&location[4] = v130;
            OUTLINED_FUNCTION_22();
            *(v83 + 14) = v134;
            v151 = v84;
            *v152 = v132;
            *&v152[8] = 1024;
            *(v83 + 34) = v13;
            *&v152[14] = v84;
            *&v152[16] = v85;
            OUTLINED_FUNCTION_21();
            _os_log_error_impl(v86, v87, OS_LOG_TYPE_ERROR, v88, v89, 0x30u);
          }

          v70 = OUTLINED_FUNCTION_25();
          os_unfair_lock_unlock(v70);
          if (v16)
          {
            goto LABEL_33;
          }

          goto LABEL_10;
        }

        if ((v16 | v11))
        {
          os_unfair_lock_unlock(v68 + 4);
          if (v16)
          {
LABEL_33:
            v23 = bls_flipbook_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [OUTLINED_FUNCTION_29() bls_loggingString];
              objc_claimAutoreleasedReturnValue();
              v90 = [OUTLINED_FUNCTION_37() bls_loggingString];
              v91 = [MEMORY[0x277CF0978] sharedFormatter];
              v92 = [v91 stringFromByteCount:v14];
              OUTLINED_FUNCTION_5_1(3.8524e-34, v92, v93, v94, v95, v96, v97, v98, v99, v127, v128, v129, v130, v131, v132, v134);
              *v152 = v90;
              OUTLINED_FUNCTION_6_0(v100, v101);
              OUTLINED_FUNCTION_21();
              _os_log_error_impl(v102, v103, OS_LOG_TYPE_ERROR, v104, v105, 0x30u);
            }

LABEL_35:

            goto LABEL_36;
          }

          goto LABEL_10;
        }

        v68[28]._os_unfair_lock_opaque = 1;
        v80 = OUTLINED_FUNCTION_25();
        os_unfair_lock_unlock(v80);
        v81 = bls_flipbook_log();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          [OUTLINED_FUNCTION_29() bls_loggingString];
          objc_claimAutoreleasedReturnValue();
          v106 = [OUTLINED_FUNCTION_37() bls_loggingString];
          v107 = [MEMORY[0x277CF0978] sharedFormatter];
          v108 = [v107 stringFromByteCount:v14];
          OUTLINED_FUNCTION_5_1(3.8524e-34, v108, v109, v110, v111, v112, v113, v114, v115, v127, v128, v129, v130, v131, v132, v134);
          *v152 = v106;
          OUTLINED_FUNCTION_6_0(v116, v117);
          OUTLINED_FUNCTION_21();
          _os_log_error_impl(v118, v119, OS_LOG_TYPE_ERROR, v120, v121, 0x30u);
        }

        objc_initWeak(location, *(a1 + 40));
        v82 = dispatch_time(0, 50000000);
        v66 = v144;
        v144[0] = MEMORY[0x277D85DD0];
        v144[1] = 3221225472;
        v144[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_618;
        v144[3] = &unk_27841EE88;
        objc_copyWeak(&v147, location);
        v145 = *(a1 + 32);
        v146 = *(a1 + 48);
        dispatch_after(v82, MEMORY[0x277D85CD0], v144);

        v67 = v145;
LABEL_24:

        objc_destroyWeak(v66 + 6);
        objc_destroyWeak(location);
        goto LABEL_36;
      }
    }

    v19 = OUTLINED_FUNCTION_25();
    os_unfair_lock_unlock(v19);
LABEL_10:
    v20 = bls_flipbook_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v133 = *(a1 + 40);
      [v6 bls_loggingString];
      objc_claimAutoreleasedReturnValue();
      v71 = [OUTLINED_FUNCTION_37() bls_loggingString];
      v136 = [MEMORY[0x277CF0978] sharedFormatter];
      v72 = [v136 stringFromByteCount:v14];
      *location = 134219010;
      *&location[4] = v133;
      OUTLINED_FUNCTION_22();
      *(v73 + 14) = v16;
      v151 = v74;
      *v152 = v71;
      OUTLINED_FUNCTION_6_0(v75, v74);
      OUTLINED_FUNCTION_21();
      _os_log_fault_impl(v76, v77, OS_LOG_TYPE_FAULT, v78, v79, 0x30u);
    }

    if ((v11 & 1) == 0)
    {
      v137 = WeakRetained;
      v135 = *(a1 + 32);
      v21 = v135.i64[0];
      v138 = v6;
      v139 = *(a1 + 48);
      BSDispatchMain();
    }

    goto LABEL_36;
  }

  v22 = OUTLINED_FUNCTION_25();
  os_unfair_lock_unlock(v22);
  if (v11)
  {
    v23 = bls_flipbook_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v25 = [v5 bls_loggingString];
      v26 = [MEMORY[0x277CF0978] sharedFormatter];
      v27 = [v26 stringFromByteCount:v14];
      *location = 134218754;
      *&location[4] = v24;
      OUTLINED_FUNCTION_22();
      v150 = v25;
      OUTLINED_FUNCTION_36(v28);
      *&v152[6] = v29;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v30, v31, OS_LOG_TYPE_INFO, v32, v33, 0x26u);
    }

    goto LABEL_35;
  }

  if (!v5)
  {
    v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"renderedFrame != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v123 = NSStringFromSelector(*(a1 + 72));
      v124 = objc_opt_class();
      v125 = NSStringFromClass(v124);
      v126 = *(a1 + 40);
      *location = 138544642;
      *&location[4] = v123;
      v149 = 2114;
      v150 = v125;
      v151 = 2048;
      *v152 = v126;
      *&v152[8] = 2114;
      *&v152[10] = @"BLSHAlwaysOnPresentationEngine.m";
      *&v152[18] = 1024;
      *&v152[20] = 2406;
      v153 = 2114;
      v154 = v122;
      _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    [v122 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD7FCACLL);
  }

  v34 = bls_flipbook_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = *(a1 + 40);
    v36 = [v5 bls_loggingString];
    v37 = [MEMORY[0x277CF0978] sharedFormatter];
    v38 = [v37 stringFromByteCount:v14];
    *location = 134218754;
    *&location[4] = v35;
    OUTLINED_FUNCTION_22();
    *(v39 + 14) = v36;
    OUTLINED_FUNCTION_36(v40);
    *(v42 + 30) = v41;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v43, v44, OS_LOG_TYPE_INFO, v45, v46, 0x26u);
  }

  [WeakRetained renderFramesSession:*(a1 + 40) didRenderFrame:v5 timedOutEnvironments:*(a1 + 48)];
LABEL_36:
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_618(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(BLSHEngineRenderFlipbookSession *)WeakRetained renderFrameSpecifier:a1[5] timedOutEnvironments:?];
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_619(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(BLSHEngineRenderFlipbookSession *)WeakRetained renderFrameSpecifier:a1[5] timedOutEnvironments:?];
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_preparingSpecifier == nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_lock_pendingEnvironments count] > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"specifier != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)timeoutTimerFiredForSpecifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_preparingSpecifier == specifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)timeoutTimerFiredForSpecifier:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  v3 = v0;
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "%p prepare frame operation did not complete after ~1 second (+leeway), pending environments:%{public}@", v2, 0x16u);
}

- (void)timeoutTimerFiredForSpecifier:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end