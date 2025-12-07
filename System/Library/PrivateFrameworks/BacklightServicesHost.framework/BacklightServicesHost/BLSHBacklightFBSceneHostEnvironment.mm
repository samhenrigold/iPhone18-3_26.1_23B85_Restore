@interface BLSHBacklightFBSceneHostEnvironment
+ (id)amendSceneSettingsDelegate;
+ (void)setAmendSceneSettingsDelegate:(id)delegate;
- (BLSBacklightSceneVisualState)visualState;
- (BLSHBacklightFBSceneHostEnvironment)initWithFBScene:(id)scene;
- (BOOL)cacheFlipbookOnDisplayWake;
- (BOOL)clientAlwaysOnContentIs1hz;
- (BOOL)clientHasDelegate;
- (BOOL)clientSupportsAlwaysOn;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)is1HzFlipbook;
- (BOOL)is1HzFlipbookForAssertion;
- (BOOL)isAlwaysOnEnabledForEnvironment;
- (BOOL)isAtLeastOneMinuteOld;
- (BOOL)isClientActive;
- (BOOL)isHighLuminanceAlwaysOn;
- (BOOL)isLiveUpdating;
- (BOOL)isLocal;
- (BOOL)wantsStateUpdateToActiveAfterRemovalFromPresentation;
- (NSDate)presentationDate;
- (NSString)description;
- (NSString)identifier;
- (id)clientSettingsDiffInspector;
- (uint64_t)incrementRequestDateSpecifierFailureCount;
- (uint64_t)readAndClearShouldInvalidateWhenActivated;
- (uint64_t)sceneWantsProcessAssertion:(void *)assertion withSceneSettings:;
- (void)addObserver:(id)observer;
- (void)amendSceneSettings:(id)settings;
- (void)clearPresentationDate;
- (void)copyRenderSeedToSettings:(uint64_t)settings;
- (void)deactivateClient;
- (void)dealloc;
- (void)incrementRenderSeed;
- (void)invalidateContentForReason:(id)reason;
- (void)notifyObserversWithBlock:(uint64_t)block;
- (void)removeObserver:(id)observer;
- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (void)requestedFidelityForInactiveContentWithCompletion:(id)completion;
- (void)resetRequestDateSpecifierFailureCount;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)set1HzFlipbookForAssertion:(BOOL)assertion;
- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment;
- (void)setAlwaysOnEnabledForEnvironment:(void *)environment forwardedToSettings:;
- (void)setCacheFlipbookOnDisplayWake:(BOOL)wake;
- (void)setClientActive:(void *)active forwardedToSettings:;
- (void)setHighLuminanceAlwaysOn:(BOOL)on;
- (void)setLiveUpdating:(BOOL)updating;
- (void)setLiveUpdating:(void *)updating forwardedToSettings:;
- (void)setPresentationDate:(void *)date forwardedToSettings:;
- (void)setShouldInvalidateWhenActivated;
- (void)setUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)setUnrestrictedFramerateUpdates:(void *)updates forwardedToSettings:;
- (void)setVisualState:(void *)state forwardedToSettings:;
- (void)synchronizePropertiesWithSettings:(uint64_t)settings;
- (void)update1HzFlipbookForClientSettingChange;
- (void)updateClientHasDelegateFromClientSettings;
- (void)updateClientSupportsAlwaysOnFromClientSettings;
- (void)updateHost1HzFlipbook;
- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0;
- (void)willBeginRenderSession:(id)session;
- (void)willEndRenderSession:(id)session;
@end

@implementation BLSHBacklightFBSceneHostEnvironment

- (id)clientSettingsDiffInspector
{
  if (self)
  {
    OUTLINED_FUNCTION_12_3(self);
    v2 = *(v1 + 16);
    if (!v2)
    {
      v3 = objc_alloc_init(BLSHBacklightSceneClientSettingsDiffInspector);
      v4 = *(v1 + 16);
      *(v1 + 16) = v3;

      v2 = *(v1 + 16);
    }

    v5 = v2;
    os_unfair_lock_unlock((v1 + 64));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)readAndClearShouldInvalidateWhenActivated
{
  if (self)
  {
    OUTLINED_FUNCTION_12_3(self);
    v2 = *(v1 + 115);
    *(v1 + 115) = 0;
    os_unfair_lock_unlock((v1 + 64));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (NSString)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  identifier = [WeakRetained identifier];
  nilSceneIdentifier = identifier;
  if (!identifier)
  {
    nilSceneIdentifier = self->_nilSceneIdentifier;
  }

  v6 = nilSceneIdentifier;

  return nilSceneIdentifier;
}

- (NSDate)presentationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSBacklightSceneVisualState)visualState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isLocal
{
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  definition = [WeakRetained definition];
  clientIdentity = [definition clientIdentity];
  isLocal = [clientIdentity isLocal];

  return isLocal;
}

- (BOOL)isAlwaysOnEnabledForEnvironment
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledForEnvironment;
}

- (BOOL)isLiveUpdating
{
  os_unfair_lock_lock(&self->_lock);
  lock_liveUpdating = self->_lock_liveUpdating;
  os_unfair_lock_unlock(&self->_lock);
  return lock_liveUpdating;
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  os_unfair_lock_lock(&self->_lock);
  lock_unrestrictedFramerateUpdates = self->_lock_unrestrictedFramerateUpdates;
  os_unfair_lock_unlock(&self->_lock);
  return lock_unrestrictedFramerateUpdates;
}

- (BOOL)is1HzFlipbook
{
  if ([(BLSHBacklightFBSceneHostEnvironment *)self clientAlwaysOnContentIs1hz])
  {
    return 1;
  }

  return [(BLSHBacklightFBSceneHostEnvironment *)self is1HzFlipbookForAssertion];
}

- (BOOL)clientAlwaysOnContentIs1hz
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientAlwaysOnContentIs1hz = self->_lock_clientAlwaysOnContentIs1hz;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientAlwaysOnContentIs1hz;
}

- (BOOL)is1HzFlipbookForAssertion
{
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbookForAssertion = self->_lock_1HzFlipbookForAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return lock_1HzFlipbookForAssertion;
}

- (BOOL)isAtLeastOneMinuteOld
{
  if (result)
  {
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    return v1 > 60.0;
  }

  return result;
}

- (void)setShouldInvalidateWhenActivated
{
  if (self)
  {
    OUTLINED_FUNCTION_12_3(self);
    *(v1 + 115) = 1;

    os_unfair_lock_unlock((v1 + 64));
  }
}

- (BOOL)clientHasDelegate
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientHasDelegate = self->_lock_clientHasDelegate;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientHasDelegate;
}

- (void)clearPresentationDate
{
  OUTLINED_FUNCTION_16_1();
  identifier = [v0 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __60__BLSHBacklightFBSceneHostEnvironment_clearPresentationDate__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = bls_scenes_log();
  if (OUTLINED_FUNCTION_15_1(v5))
  {
    v6 = [OUTLINED_FUNCTION_18_0() identifier];
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_7_2();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 0x20u);
  }

  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) setPresentationDate:v4 forwardedToSettings:?];
}

- (BOOL)clientSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientSupportsAlwaysOn = self->_lock_clientSupportsAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientSupportsAlwaysOn;
}

- (BLSHBacklightFBSceneHostEnvironment)initWithFBScene:(id)scene
{
  v38 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v29.receiver = self;
  v29.super_class = BLSHBacklightFBSceneHostEnvironment;
  v5 = [(BLSHBacklightFBSceneHostEnvironment *)&v29 init];
  if (v5)
  {
    v5->_creationMachTime = mach_continuous_time();
    v5->_lock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    lock_observers = v5->_lock_observers;
    v5->_lock_observers = v6;

    v5->_lock_renderSeed = 1;
    v5->_lock_requestDateSpecifierFailureCount = 0;
    if (initWithFBScene__onceToken != -1)
    {
      [BLSHBacklightFBSceneHostEnvironment initWithFBScene:];
    }

    if (__disableFrontBoardRBAssertions == 1)
    {
      v8 = bls_scenes_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = v5;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEFAULT, "%p: DisableFrontBoardRBAssertions=YES", buf, 0xCu);
      }
    }

    v9 = bls_scenes_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightFBSceneHostEnvironment initWithFBScene:];
    }

    objc_storeWeak(&v5->_fbScene, sceneCopy);
    v10 = MEMORY[0x277CCACA8];
    identifier = [sceneCopy identifier];
    v12 = [v10 stringWithFormat:@"<nil scene>:%@", identifier];
    nilSceneIdentifier = v5->_nilSceneIdentifier;
    v5->_nilSceneIdentifier = v12;

    definition = [sceneCopy definition];
    clientIdentity = [definition clientIdentity];
    processIdentity = [clientIdentity processIdentity];
    budgetProcessIdentity = v5->_budgetProcessIdentity;
    v5->_budgetProcessIdentity = processIdentity;

    [sceneCopy addObserver:v5];
    settings = [sceneCopy settings];
    v5->_lock_clientActive = [settings bls_isDelegateActive];
    bls_visualState = [settings bls_visualState];
    lock_visualState = v5->_lock_visualState;
    v5->_lock_visualState = bls_visualState;

    bls_presentationDate = [settings bls_presentationDate];
    lock_presentationDate = v5->_lock_presentationDate;
    v5->_lock_presentationDate = bls_presentationDate;

    v5->_lock_alwaysOnEnabledForEnvironment = [settings bls_isAlwaysOnEnabledForEnvironment];
    v5->_lock_liveUpdating = [settings bls_isLiveUpdating];
    v5->_lock_unrestrictedFramerateUpdates = [settings bls_hasUnrestrictedFramerateUpdates];
    clientSettings = [sceneCopy clientSettings];
    v5->_lock_clientHasDelegate = [clientSettings bls_hasDelegate];
    v5->_lock_clientSupportsAlwaysOn = [clientSettings bls_supportsAlwaysOn];
    v5->_lock_clientAlwaysOnContentIs1hz = [clientSettings bls_alwaysOnContentIs1hz];
    delegate = [sceneCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = objc_alloc_init(BLSHBacklightFBSceneEnvironmentActionHandler);
      [delegate addActionHandler:v25 forScene:sceneCopy];
    }

    else
    {
      v25 = bls_scenes_log();
      if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [sceneCopy identifier];
        v27 = [sceneCopy debugDescription];
        *buf = 134218754;
        v31 = v5;
        v32 = 2114;
        v33 = identifier2;
        v34 = 2114;
        v35 = delegate;
        v36 = 2114;
        v37 = v27;
        _os_log_impl(&dword_21FD11000, &v25->super, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ sceneDelegate:%{public}@ does not respond to @selector(addActionHandler:) - cannot invalidate from client, scene:%{public}@", buf, 0x2Au);
      }
    }
  }

  return v5;
}

void __55__BLSHBacklightFBSceneHostEnvironment_initWithFBScene___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v1 = [v0 objectForKey:@"DisableFrontBoardRBAssertions"];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    __disableFrontBoardRBAssertions = [v6 BOOLValue];
    v5 = v6;
  }
}

- (void)dealloc
{
  [(BLSHAggregatedProcessAssertion *)self->_lock_secondsFidelityAssertion invalidate];
  [(BLSHAggregatedProcessAssertion *)self->_lock_renderSessionAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BLSHBacklightFBSceneHostEnvironment;
  [(BLSHBacklightFBSceneHostEnvironment *)&v3 dealloc];
}

- (BOOL)isClientActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_clientActive = self->_lock_clientActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_clientActive;
}

- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment
{
  environmentCopy = environment;
  BSDispatchQueueAssertMain();
  if ([(BLSHBacklightFBSceneHostEnvironment *)self isAlwaysOnEnabledForEnvironment]!= environmentCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_fbScene);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __72__BLSHBacklightFBSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke;
      v10[3] = &unk_27841FF40;
      v10[4] = self;
      v11 = environmentCopy;
      [WeakRetained updateSettingsWithBlock:v10];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __72__BLSHBacklightFBSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke_2;
      v8[3] = &unk_27841EFC8;
      v8[4] = self;
      v9 = environmentCopy;
      [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v8];
    }

    else
    {
      v7 = bls_scenes_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [BLSHBacklightFBSceneHostEnvironment setAlwaysOnEnabledForEnvironment:];
      }
    }
  }
}

void __72__BLSHBacklightFBSceneHostEnvironment_setAlwaysOnEnabledForEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetAlwaysOnEnabledForEnvironment:*(a1 + 40)];
  }
}

- (void)setLiveUpdating:(BOOL)updating
{
  updatingCopy = updating;
  BSDispatchQueueAssertMain();
  if ([(BLSHBacklightFBSceneHostEnvironment *)self isLiveUpdating]!= updatingCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_fbScene);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__BLSHBacklightFBSceneHostEnvironment_setLiveUpdating___block_invoke;
      v10[3] = &unk_27841FF40;
      v10[4] = self;
      v11 = updatingCopy;
      [WeakRetained updateSettingsWithBlock:v10];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __55__BLSHBacklightFBSceneHostEnvironment_setLiveUpdating___block_invoke_2;
      v8[3] = &unk_27841EFC8;
      v8[4] = self;
      v9 = updatingCopy;
      [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v8];
    }

    else
    {
      v7 = bls_scenes_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [BLSHBacklightFBSceneHostEnvironment setLiveUpdating:];
      }
    }
  }
}

void __55__BLSHBacklightFBSceneHostEnvironment_setLiveUpdating___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetLiveUpdating:*(a1 + 40)];
  }
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)updates
{
  updatesCopy = updates;
  BSDispatchQueueAssertMain();
  if ([(BLSHBacklightFBSceneHostEnvironment *)self hasUnrestrictedFramerateUpdates]!= updatesCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_fbScene);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __71__BLSHBacklightFBSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke;
      v10[3] = &unk_27841FF40;
      v10[4] = self;
      v11 = updatesCopy;
      [WeakRetained updateSettingsWithBlock:v10];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__BLSHBacklightFBSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke_2;
      v8[3] = &unk_27841EFC8;
      v8[4] = self;
      v9 = updatesCopy;
      [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v8];
    }

    else
    {
      v7 = bls_scenes_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [BLSHBacklightFBSceneHostEnvironment setUnrestrictedFramerateUpdates:];
      }
    }
  }
}

void __71__BLSHBacklightFBSceneHostEnvironment_setUnrestrictedFramerateUpdates___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetUnrestrictedFramerateUpdates:*(a1 + 40)];
  }
}

- (void)set1HzFlipbookForAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_1HzFlipbookForAssertion = self->_lock_1HzFlipbookForAssertion;
  self->_lock_1HzFlipbookForAssertion = assertionCopy;
  os_unfair_lock_unlock(&self->_lock);
  clientAlwaysOnContentIs1hz = [(BLSHBacklightFBSceneHostEnvironment *)self clientAlwaysOnContentIs1hz];
  v7 = (lock_1HzFlipbookForAssertion != assertionCopy) & (clientAlwaysOnContentIs1hz ^ assertionCopy);
  v8 = bls_scenes_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = lock_1HzFlipbookForAssertion != assertionCopy;
    identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
    v11 = 134219266;
    selfCopy = self;
    v13 = 2114;
    v14 = identifier;
    v15 = 1024;
    v16 = assertionCopy;
    v17 = 1024;
    v18 = clientAlwaysOnContentIs1hz;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v7;
    _os_log_debug_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "%p:%{public}@ set1HzFlipbookForAssertion:%{BOOL}u client1Hz::%{BOOL}u didChange:%{BOOL}u is1HzFlipbookDidChange:%{BOOL}u", &v11, 0x2Eu);
  }

  if (v7)
  {
    [(BLSHBacklightFBSceneHostEnvironment *)self updateHost1HzFlipbook];
  }
}

void __60__BLSHBacklightFBSceneHostEnvironment_updateHost1HzFlipbook__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSet1HzFlipbook:{objc_msgSend(*(a1 + 32), "is1HzFlipbook")}];
  }
}

- (BOOL)cacheFlipbookOnDisplayWake
{
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbookOnDisplayWake = self->_lock_cacheFlipbookOnDisplayWake;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cacheFlipbookOnDisplayWake;
}

- (void)setCacheFlipbookOnDisplayWake:(BOOL)wake
{
  wakeCopy = wake;
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbookOnDisplayWake = self->_lock_cacheFlipbookOnDisplayWake;
  self->_lock_cacheFlipbookOnDisplayWake = wakeCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cacheFlipbookOnDisplayWake != wakeCopy)
  {
    [BLSHBacklightFBSceneHostEnvironment setCacheFlipbookOnDisplayWake:v6];
  }
}

void __69__BLSHBacklightFBSceneHostEnvironment_setCacheFlipbookOnDisplayWake___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetCacheFlipbookOnDisplayWake:*(a1 + 40)];
  }
}

- (BOOL)isHighLuminanceAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_highLuminanceAlwaysOn;
}

- (void)setHighLuminanceAlwaysOn:(BOOL)on
{
  onCopy = on;
  os_unfair_lock_lock(&self->_lock);
  lock_highLuminanceAlwaysOn = self->_lock_highLuminanceAlwaysOn;
  self->_lock_highLuminanceAlwaysOn = onCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_highLuminanceAlwaysOn != onCopy)
  {
    [BLSHBacklightFBSceneHostEnvironment setHighLuminanceAlwaysOn:v6];
  }
}

void __64__BLSHBacklightFBSceneHostEnvironment_setHighLuminanceAlwaysOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) hostDidSetHighLuminanceAlwaysOn:*(a1 + 40)];
  }
}

- (void)amendSceneSettings:(id)settings
{
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  v4 = +[BLSHBacklightFBSceneHostEnvironment amendSceneSettingsDelegate];
  if ([v4 hostEnvironment:self didAmendSceneSettings:settingsCopy])
  {
    [(BLSHBacklightFBSceneHostEnvironment *)self synchronizePropertiesWithSettings:settingsCopy];
  }
}

+ (id)amendSceneSettingsDelegate
{
  objc_opt_self();
  os_unfair_lock_lock(&_classLock_3);
  v1 = _amendSceneSettingsDelegate;
  os_unfair_lock_unlock(&_classLock_3);

  return v1;
}

- (void)deactivateClient
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__BLSHBacklightFBSceneHostEnvironment_deactivateClient__block_invoke;
  v4[3] = &unk_27841FF90;
  v4[4] = self;
  [WeakRetained updateSettingsWithBlock:v4];
}

void __66__BLSHBacklightFBSceneHostEnvironment_invalidateContentForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) invalidateContentForReason:*(a1 + 40)];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  v6 = [v3 appendPointer:WeakRetained withName:@"scene"];

  v7 = [v3 appendBool:-[BLSHBacklightFBSceneHostEnvironment clientHasDelegate](self withName:"clientHasDelegate") ifEqualTo:{@"clientEnabled", 0}];
  v8 = [v3 appendBool:-[BLSHBacklightFBSceneHostEnvironment isClientActive](self withName:"isClientActive") ifEqualTo:{@"clientActive", 0}];
  visualState = [(BLSHBacklightFBSceneHostEnvironment *)self visualState];
  v10 = [v3 appendObject:visualState withName:@"visualState"];

  presentationDate = [(BLSHBacklightFBSceneHostEnvironment *)self presentationDate];
  bls_shortLoggingString = [presentationDate bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"presentationDate"];

  v13 = [v3 appendBool:-[BLSHBacklightFBSceneHostEnvironment isAlwaysOnEnabledForEnvironment](self withName:"isAlwaysOnEnabledForEnvironment") ifEqualTo:{@"alwaysOnEnabled", 0}];
  v14 = [v3 appendBool:-[BLSHBacklightFBSceneHostEnvironment isLiveUpdating](self withName:"isLiveUpdating") ifEqualTo:{@"liveUpdating", 1}];
  v15 = [v3 appendBool:-[BLSHBacklightFBSceneHostEnvironment hasUnrestrictedFramerateUpdates](self withName:"hasUnrestrictedFramerateUpdates") ifEqualTo:{@"hasUnrestrictedFramerateUpdates", 1}];
  build = [v3 build];

  return build;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)requestedFidelityForInactiveContentWithCompletion:(id)completion
{
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = bls_scenes_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightFBSceneHostEnvironment requestedFidelityForInactiveContentWithCompletion:];
    }

    goto LABEL_7;
  }

  if (([WeakRetained isActive] & 1) == 0)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightFBSceneHostEnvironment requestedFidelityForInactiveContentWithCompletion:];
    }

    [(BLSHBacklightFBSceneHostEnvironment *)self setShouldInvalidateWhenActivated];
LABEL_7:
    completionCopy[2](completionCopy, 1);
    goto LABEL_8;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke;
  v9[3] = &unk_27841FFE0;
  v9[4] = self;
  v11 = completionCopy;
  v10 = v6;
  [v10 updateSettingsWithTransitionBlock:v9];

LABEL_8:
}

id __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF08E0]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_2;
  v18 = &unk_27841FFB8;
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v19 = v4;
  v20 = v3[2];
  v5 = [v2 initWithCompletion:&v15];
  v6 = [v3[1] definition];
  v7 = [v6 specification];
  v8 = [v7 transitionContextClass];

  v9 = objc_alloc_init(v8);
  v10 = MEMORY[0x277CBEB98];
  v21[0] = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12 = [v10 setWithArray:v11];
  [v9 setActions:v12];

  v13 = bls_scenes_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_cold_1(v3);
  }

  return v9;
}

void __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {
    v5 = bls_scenes_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v6 identifier];
      v8 = 134218754;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "%p:%{public}@ client desired fidelity action failed error:%{public}@ response:%{public}@, requestedFidelityForInactiveContent:Minutes", &v8, 0x2Au);
    }
  }

  else
  {
    [v3 desiredFidelity];
    v5 = bls_scenes_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0
{
  targetableCopy = targetable;
  animatedCopy = animated;
  v75 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventCopy = event;
  updatedCopy = updated;
  rampCopy = ramp;
  completeCopy = complete;
  specifierCopy = specifier;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  date = [specifierCopy date];

  if (rampCopy && !animatedCopy)
  {
    v20 = bls_scenes_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightFBSceneHostEnvironment updateToVisualState:presentationDateSpecifier:animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:];
    }
  }

  if ((((completeCopy == 0) ^ animatedCopy) & 1) == 0)
  {
    v21 = bls_scenes_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightFBSceneHostEnvironment updateToVisualState:presentationDateSpecifier:animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:];
    }
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke;
  v53[3] = &unk_278420008;
  v22 = updatedCopy;
  v54 = v22;
  v23 = rampCopy;
  v55 = v23;
  v57 = animatedCopy;
  v24 = completeCopy;
  v56 = v24;
  v58 = WeakRetained == 0;
  v25 = MEMORY[0x223D70730](v53);
  v26 = bls_scenes_log();
  v27 = v26;
  if (WeakRetained)
  {
    v28 = stateCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      bls_shortLoggingString = [stateCopy bls_shortLoggingString];
      bls_shortLoggingString2 = [eventCopy bls_shortLoggingString];
      *buf = 138543874;
      selfCopy = identifier;
      v61 = 2114;
      v62 = bls_shortLoggingString;
      v36 = bls_shortLoggingString;
      v63 = 2114;
      v64 = bls_shortLoggingString2;
      v37 = bls_shortLoggingString2;
      _os_log_debug_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEBUG, "FBSceneHostEnv.updateToVisualState: sending update from host to scene:%{public}@ to state:%{public}@ for event:%{public}@", buf, 0x20u);

      v28 = stateCopy;
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_66;
    v43[3] = &unk_2784200A8;
    v43[4] = self;
    v44 = v28;
    v29 = date;
    v45 = date;
    v30 = WeakRetained;
    v46 = v30;
    v31 = eventCopy;
    v47 = eventCopy;
    v51 = animatedCopy;
    v52 = targetableCopy;
    v48 = v22;
    v49 = v23;
    v50 = v24;
    [v30 updateSettingsWithTransitionBlock:v43];
    if (([v30 isActive] & 1) == 0)
    {
      v25[2](v25);
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      identifier2 = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      bls_shortLoggingString3 = [date bls_shortLoggingString];
      *buf = 134219778;
      selfCopy = self;
      v61 = 2114;
      v62 = identifier2;
      v63 = 2114;
      v64 = 0;
      v65 = 2114;
      v66 = stateCopy;
      v67 = 2114;
      v68 = bls_shortLoggingString3;
      v69 = 1024;
      v70 = animatedCopy;
      v71 = 2114;
      v72 = eventCopy;
      v73 = 1024;
      v74 = targetableCopy;
      _os_log_impl(&dword_21FD11000, v27, OS_LOG_TYPE_INFO, "%p:%{public}@ nil scene, will not update scene:%{public}@ to visualState:%{public}@ presentationDate:%{public}@ animated:%{BOOL}u event:%{public}@ touchTarget:%{BOOL}u", buf, 0x4Au);
    }

    v25[2](v25);
    v31 = eventCopy;
    v28 = stateCopy;
    v29 = date;
  }
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    v2.n128_u64[0] = 0;
    if (*(a1 + 56))
    {
      v2.n128_f64[0] = 0.5;
    }

    (*(v3 + 16))(v2);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
    {
      v6 = dispatch_time(0, 500000000);
      v7 = *(a1 + 48);
      v8 = MEMORY[0x277D85CD0];

      dispatch_after(v6, v8, v7);
    }

    else
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_75(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 88) & 1) == 0)
  {
    [*(a1 + 32) invalidate];
  }

  v4 = [v3 error];
  v5 = bls_scenes_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = [v7 identifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = [*(a1 + 64) bls_shortLoggingString];
      v12 = *(a1 + 88);
      v13 = *(a1 + 89);
      v14 = *(a1 + 72);
      v15 = 134220290;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v4;
      v21 = 2114;
      v22 = v3;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v13;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_21FD11000, v6, OS_LOG_TYPE_ERROR, "%p:%{public}@ client update action failed error:%{public}@ response:%{public}@, will not update scene:%{public}@ to visualState:%{public}@ presentationDate:%{public}@, animated:%{BOOL}u touchTarget:%{BOOL}u event:%{public}@", &v15, 0x5Eu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_75_cold_1(a1, (a1 + 88), v6);
  }

  (*(*(a1 + 80) + 16))();
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_79(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = bls_scenes_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 identifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 40);
    v20 = 134219010;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2114;
    v25 = v3;
    v26 = 1024;
    *v27 = isKindOfClass & 1;
    *&v27[4] = 2114;
    *&v27[6] = v8;
    _os_log_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ client ramp action response:%{public}@ isKindBLSBacklightSceneUpdateBacklightRampResponse:%{BOOL}u for update to visualState:%{public}@", &v20, 0x30u);
  }

  v9 = [v3 error];
  if (v9)
  {
    v10 = bls_scenes_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [v14 identifier];
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) bls_shortLoggingString];
      v18 = *(a1 + 72);
      v19 = *(a1 + 56);
      v20 = 134219778;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      *v27 = v3;
      *&v27[8] = 2114;
      *&v27[10] = v16;
      v28 = 2114;
      v29 = v17;
      v30 = 1024;
      v31 = v18;
      v32 = 2114;
      v33 = v19;
      _os_log_error_impl(&dword_21FD11000, v10, OS_LOG_TYPE_ERROR, "%p:%{public}@ client ramp action failed error:%{public}@ response:%{public}@, for update to visualState:%{public}@ presentationDate:%{public}@, animated:%{BOOL}u event:%{public}@", &v20, 0x4Eu);
    }

    if (*(a1 + 72))
    {
      v11 = 0.5;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    [v3 rampDuration];
    v11 = v12;
    v13 = bls_scenes_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_79_cold_1(a1, v13, v11);
    }
  }

  (*(*(a1 + 64) + 16))(v11);
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_83(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = [v3 error];
  v5 = bls_scenes_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = [v7 identifier];
      v9 = *(a1 + 48);
      v10 = [*(a1 + 56) bls_shortLoggingString];
      v11 = *(a1 + 80);
      v12 = *(a1 + 64);
      v13 = 134219778;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_21FD11000, v6, OS_LOG_TYPE_ERROR, "%p:%{public}@ client animation action failed error:%{public}@ response:%{public}@, for update to visualState:%{public}@ presentationDate:%{public}@, animated:%{BOOL}u event:%{public}@", &v13, 0x4Eu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_83_cold_1();
  }

  (*(*(a1 + 72) + 16))();
}

- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  resetCopy = reset;
  v48 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  dateCopy = date;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  v14 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = bls_scenes_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
      bls_shortLoggingString2 = [dateCopy bls_shortLoggingString];
      *buf = 134219010;
      selfCopy2 = self;
      v40 = 2114;
      v41 = identifier;
      v42 = 2114;
      v43 = bls_shortLoggingString;
      v44 = 2114;
      v45 = bls_shortLoggingString2;
      v46 = 1024;
      v47 = resetCopy;
      _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_INFO, "%p:%{public}@ nil scene, will return only now date for interval:%{public}@ previous:%{public}@ reset:%{BOOL}u", buf, 0x30u);
    }

    v19 = objc_alloc(MEMORY[0x277CF0848]);
    v20 = [MEMORY[0x277CBEAA8] now];
    v21 = [v19 initWithDate:v20 fidelity:0];
    v37 = v21;
    v22 = MEMORY[0x277CBEA60];
    v23 = &v37;
    goto LABEL_7;
  }

  if (([WeakRetained isActive] & 1) == 0)
  {
    v25 = bls_scenes_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      identifier2 = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      bls_shortLoggingString3 = [intervalCopy bls_shortLoggingString];
      bls_shortLoggingString4 = [dateCopy bls_shortLoggingString];
      *buf = 134219010;
      selfCopy2 = self;
      v40 = 2114;
      v41 = identifier2;
      v42 = 2114;
      v43 = bls_shortLoggingString3;
      v44 = 2114;
      v45 = bls_shortLoggingString4;
      v46 = 1024;
      v47 = resetCopy;
      _os_log_impl(&dword_21FD11000, v25, OS_LOG_TYPE_INFO, "%p:%{public}@ inactive scene, will return only now date for interval:%{public}@ previous:%{public}@ reset:%{BOOL}u", buf, 0x30u);
    }

    [(BLSHBacklightFBSceneHostEnvironment *)self setShouldInvalidateWhenActivated];
    v29 = objc_alloc(MEMORY[0x277CF0848]);
    v20 = [MEMORY[0x277CBEAA8] now];
    v21 = [v29 initWithDate:v20 fidelity:0];
    v36 = v21;
    v22 = MEMORY[0x277CBEA60];
    v23 = &v36;
LABEL_7:
    v24 = [v22 arrayWithObjects:v23 count:1];
    completionCopy[2](completionCopy, intervalCopy, v24);

    goto LABEL_8;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __124__BLSHBacklightFBSceneHostEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke;
  v30[3] = &unk_2784200F8;
  v30[4] = self;
  v31 = v14;
  v32 = intervalCopy;
  v33 = dateCopy;
  v35 = resetCopy;
  v34 = completionCopy;
  [v31 updateSettingsWithTransitionBlock:v30];

LABEL_8:
}

id __124__BLSHBacklightFBSceneHostEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke(uint64_t a1, void *a2)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__8;
  v50 = __Block_byref_object_dispose__8;
  v51 = 0;
  if ([(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) sceneWantsProcessAssertion:v3 withSceneSettings:?])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [*(a1 + 48) bls_shortLoggingString];
    v6 = [*(a1 + 32) identifier];
    v7 = [v4 stringWithFormat:@"requestPresentationDatesForDateInterval:%@ forScene:%@", v5, v6];

    v8 = [*(a1 + 40) definition];
    v9 = [v8 clientIdentity];
    v10 = [v9 processIdentity];

    if (v10)
    {
      v11 = [[BLSHAggregatedProcessAssertion alloc] initWithExplanation:v7 processIdentity:v10 duration:1.25];
      v12 = v47[5];
      v47[5] = v11;

      [v47[5] setShouldFaultOnFailureToAcquire:-[BLSHBacklightFBSceneHostEnvironment isAtLeastOneMinuteOld](*(a1 + 32))];
      [v47[5] acquireWithCompletion:0];
    }

    else
    {
      v13 = bls_scenes_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = [v14 identifier];
        v16 = *(a1 + 40);
        *buf = 134218498;
        v53 = v14;
        v54 = 2114;
        v55 = v15;
        v56 = 2048;
        v57 = v16;
        _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ couldn't get a client processIdentity for scene %p. cannot take CPU grant process assertion", buf, 0x20u);
      }
    }
  }

  v17 = objc_alloc(MEMORY[0x277CF0930]);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __124__BLSHBacklightFBSceneHostEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke_90;
  v39[3] = &unk_2784200D0;
  v44 = &v46;
  v21 = v18;
  v22 = *(a1 + 32);
  v40 = v21;
  v41 = v22;
  v42 = *(a1 + 56);
  v45 = *(a1 + 72);
  v43 = *(a1 + 64);
  v23 = [v17 initWithDateInterval:v21 previousPresentationDate:v19 shouldReset:v20 completion:v39];
  v24 = [*(a1 + 40) definition];
  v25 = [v24 specification];
  v26 = [v25 transitionContextClass];

  v27 = objc_alloc_init(v26);
  v28 = MEMORY[0x277CBEB98];
  v66[0] = v23;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
  v30 = [v28 setWithArray:v29];
  [v27 setActions:v30];

  if (__disableFrontBoardRBAssertions == 1)
  {
    [v27 setRunningBoardAssertionDisabled:1];
  }

  v31 = bls_scenes_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    v33 = [v32 identifier];
    v34 = [*(a1 + 48) bls_shortLoggingString];
    v35 = [*(a1 + 56) bls_shortLoggingString];
    v36 = *(a1 + 72);
    v37 = [*(a1 + 32) clientHasDelegate];
    *buf = 134219522;
    v53 = v32;
    v54 = 2114;
    v55 = v33;
    v56 = 2114;
    v57 = v34;
    v58 = 2114;
    v59 = v35;
    v60 = 1024;
    v61 = v36;
    v62 = 1024;
    v63 = v37;
    v64 = 2114;
    v65 = v23;
    _os_log_impl(&dword_21FD11000, v31, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ request presentation dates for interval:%{public}@ previous:%{public}@ reset:%{BOOL}u clientHasDelegate:%{BOOL}u created action:%{public}@", buf, 0x40u);
  }

  _Block_object_dispose(&v46, 8);

  return v27;
}

void __124__BLSHBacklightFBSceneHostEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(*(a1 + 64) + 8) + 40) invalidate];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [v3 error];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6)
  {
    v14 = [(BLSHBacklightFBSceneHostEnvironment *)v8 incrementRequestDateSpecifierFailureCount];
    v15 = v14;
    if (*(a1 + 40))
    {
      v16 = 10.0;
      if (v14 >= 2)
      {
        if (v14 >= 5)
        {
          v16 = 900.0;
        }

        else
        {
          v16 = 60.0;
        }
      }
    }

    else
    {
      v16 = 0.0;
    }

    v17 = bls_scenes_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v33 = *(a1 + 40);
      v38 = [v33 identifier];
      v40 = [MEMORY[0x277CF0BF0] sharedInstance];
      v34 = [v40 formatDuration:v16];
      v35 = [*(a1 + 32) bls_shortLoggingString];
      v36 = [*(a1 + 48) bls_shortLoggingString];
      v37 = *(a1 + 72);
      *buf = 134220034;
      v43 = v33;
      v44 = 2114;
      v45 = v38;
      v46 = 1024;
      *v47 = v15;
      *&v47[4] = 2114;
      *&v47[6] = v34;
      *&v47[14] = 2114;
      *&v47[16] = v6;
      *&v47[24] = 2114;
      *&v47[26] = v3;
      v48 = 2114;
      v49 = v35;
      v50 = 2114;
      v51 = v36;
      v52 = 1024;
      v53 = v37;
      _os_log_fault_impl(&dword_21FD11000, v17, OS_LOG_TYPE_FAULT, "%p:%{public}@ date specifier request failed (%d times). May retry after %{public}@ : error:%{public}@ response:%{public}@, for interval:%{public}@ previous:%{public}@ reset:%{BOOL}u", buf, 0x54u);
    }

    v18 = objc_alloc(MEMORY[0x277CF0848]);
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = [v18 initWithDate:v19 fidelity:0];
    v41 = v20;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];

    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v16];
    v22 = objc_alloc(MEMORY[0x277CCA970]);
    v23 = [*(a1 + 32) startDate];
    v24 = [*(a1 + 32) endDate];
    v25 = [v24 laterDate:v21];
    v26 = [v22 initWithStartDate:v23 endDate:v25];

    v7 = v26;
  }

  else
  {
    [(BLSHBacklightFBSceneHostEnvironment *)v8 resetRequestDateSpecifierFailureCount];
    v9 = [v3 dateSpecifiers];
    v10 = [v9 count];
    if (v10 < 0xB)
    {
      v13 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v11 = v10;
      [v7 duration];
      if (v11 / v12 <= 4.0)
      {
        v13 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v13 = OS_LOG_TYPE_FAULT;
      }
    }

    v21 = bls_scenes_log();
    if (os_log_type_enabled(v21, v13))
    {
      v27 = *(a1 + 40);
      v28 = [v27 identifier];
      v29 = [v9 bls_boundedDescriptionWithMax:12 transformer:&__block_literal_global_96];
      [*(a1 + 32) bls_shortLoggingString];
      v30 = v39 = v3;
      v31 = [*(a1 + 48) bls_shortLoggingString];
      v32 = *(a1 + 72);
      *buf = 134219266;
      v43 = v27;
      v44 = 2114;
      v45 = v28;
      v46 = 2114;
      *v47 = v29;
      *&v47[8] = 2114;
      *&v47[10] = v30;
      *&v47[18] = 2114;
      *&v47[20] = v31;
      *&v47[28] = 1024;
      *&v47[30] = v32;
      _os_log_impl(&dword_21FD11000, v21, v13, "%p:%{public}@ client dates:%{public}@ animation interval:%{public}@ previous:%{public}@ reset:%{BOOL}u", buf, 0x3Au);

      v6 = 0;
      v3 = v39;
    }
  }

  (*(*(a1 + 56) + 16))();
}

id __124__BLSHBacklightFBSceneHostEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke_93(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 date];
  v5 = [v4 bls_shortLoggingString];
  [v3 fidelity];

  v6 = NSStringFromBLSUpdateFidelity();
  v7 = [v2 stringWithFormat:@"%@, fidelity:%@", v5, v6];

  return v7;
}

- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated
{
  v32 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  updatedCopy = updated;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  visualState = [(BLSHBacklightFBSceneHostEnvironment *)self visualState];
  if (!WeakRetained)
  {
    v14 = bls_scenes_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      *buf = 134218754;
      selfCopy2 = self;
      v26 = 2114;
      v27 = identifier;
      v28 = 2114;
      v29 = 0;
      v30 = 2114;
      v31 = specifierCopy;
      v16 = "%p:%{public}@ nil scene, will not update scene:%{public}@ to dateSpecifier:%{public}@";
      goto LABEL_8;
    }

LABEL_9:

    updatedCopy[2](updatedCopy);
    goto LABEL_14;
  }

  presentationDate = [(BLSHBacklightFBSceneHostEnvironment *)self presentationDate];
  date = [specifierCopy date];
  if ([presentationDate isEqualToDate:date])
  {
    updateFidelity = [visualState updateFidelity];
    fidelity = [specifierCopy fidelity];

    if (updateFidelity == fidelity)
    {
      v14 = bls_scenes_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
        *buf = 134218754;
        selfCopy2 = self;
        v26 = 2114;
        v27 = identifier;
        v28 = 2114;
        v29 = WeakRetained;
        v30 = 2114;
        v31 = specifierCopy;
        v16 = "%p:%{public}@ scene:%{public}@ already at dateSpecifier:%{public}@";
LABEL_8:
        _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x2Au);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke;
  v19[3] = &unk_278420148;
  v19[4] = self;
  v20 = visualState;
  v21 = specifierCopy;
  v17 = WeakRetained;
  v22 = v17;
  v18 = updatedCopy;
  v23 = v18;
  [v17 updateSettingsWithTransitionBlock:v19];
  if (([v17 isActive] & 1) == 0)
  {
    v18[2](v18);
  }

LABEL_14:
}

void __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke_104(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = [v3 error];
  v5 = bls_scenes_log();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = [v7 identifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = 134219266;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v3;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_error_impl(&dword_21FD11000, v6, OS_LOG_TYPE_ERROR, "%p:%{public}@ client update action failed error:%{public}@ response:%{public}@ will not update scene:%{public}@ to dateSpecifier:%{public}@", &v11, 0x3Eu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke_104_cold_1();
  }

  (*(*(a1 + 64) + 16))();
}

void __62__BLSHBacklightFBSceneHostEnvironment_willBeginRenderSession___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [v4 identifier];
  v6 = [v3 stringWithFormat:@"%p:%@ willBeginRenderSession – nonnil existing renderSessionAssertion:%@ newRenderSession:%@", v4, v5, *(*(a1 + 32) + 40), *(a1 + 40)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = *(a1 + 32);
    *buf = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2114;
    v18 = @"BLSHBacklightFBSceneHostEnvironment.m";
    v19 = 1024;
    v20 = 935;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)willEndRenderSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  BSDispatchQueueAssertMain();
  os_unfair_lock_lock(&self->_lock);
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
    lock_renderSessionAssertion = self->_lock_renderSessionAssertion;
    *v11 = 134218754;
    *&v11[4] = self;
    v12 = 2114;
    v13 = identifier;
    v14 = 2048;
    v15 = sessionCopy;
    v16 = 2048;
    v17 = lock_renderSessionAssertion;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p:%{public}@ willEndRenderSession:%p assertion:%p", v11, 0x2Au);
  }

  p_lock_renderSessionAssertion = &self->_lock_renderSessionAssertion;
  v8 = self->_lock_renderSessionAssertion;
  if (!v8)
  {
    [BLSHBacklightFBSceneHostEnvironment willEndRenderSession:];
    v8 = *v11;
  }

  [(BLSHAggregatedProcessAssertion *)v8 invalidate];
  v10 = *p_lock_renderSessionAssertion;
  *p_lock_renderSessionAssertion = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  specifierCopy = specifier;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  date = [specifierCopy date];

  v10 = bls_scenes_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
    bls_shortLoggingString = [stateCopy bls_shortLoggingString];
    bls_shortLoggingString2 = [date bls_shortLoggingString];
    *buf = 138543874;
    v20 = identifier;
    v21 = 2114;
    v22 = bls_shortLoggingString;
    v23 = 2114;
    v24 = bls_shortLoggingString2;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "FBSceneHostEnv.updateToVisualState: (direct) sending scene settings from host to scene:%{public}@ state:%{public}@ presentationDate:%{public}@", buf, 0x20u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier___block_invoke;
  v16[3] = &unk_278420198;
  v16[4] = self;
  v17 = stateCopy;
  v18 = date;
  v11 = date;
  v12 = stateCopy;
  [WeakRetained updateSettingsWithBlock:v16];
}

void __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateEnabled:{objc_msgSend(*(a1 + 32), "clientHasDelegate")}];
  }
}

void __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateSupportsAlwaysOn:{objc_msgSend(*(a1 + 32), "clientSupportsAlwaysOn")}];
  }
}

void __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 hostEnvironment:*(a1 + 32) clientDidUpdateAlwaysOnContentIs1hz:{objc_msgSend(*(a1 + 32), "clientAlwaysOnContentIs1hz")}];
  }
}

- (void)sceneDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);

  if (WeakRetained == invalidateCopy)
  {
    [(BLSHBacklightFBSceneHostEnvironment *)self sceneDidInvalidate:invalidateCopy, &self->_fbScene];
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);

  if (WeakRetained == activateCopy)
  {
    [(BLSHBacklightFBSceneHostEnvironment *)self sceneDidActivate:activateCopy];
  }
}

+ (void)setAmendSceneSettingsDelegate:(id)delegate
{
  os_unfair_lock_lock(&_classLock_3);
  _amendSceneSettingsDelegate = delegate;

  os_unfair_lock_unlock(&_classLock_3);
}

- (void)updateClientHasDelegateFromClientSettings
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock((self + 64));
    WeakRetained = objc_loadWeakRetained((self + 8));
    clientSettings = [WeakRetained clientSettings];
    *(self + 108) = [clientSettings bls_hasDelegate];

    os_unfair_lock_unlock((self + 64));
  }
}

- (void)setClientActive:(void *)active forwardedToSettings:
{
  if (self)
  {
    OUTLINED_FUNCTION_24_0(self, a2, active);
    OUTLINED_FUNCTION_23();
    *(v4 + 109) = v3;
    os_unfair_lock_unlock((v4 + 64));
    [OUTLINED_FUNCTION_20_0(v5 v6];
  }
}

- (void)setVisualState:(void *)state forwardedToSettings:
{
  v7 = a2;
  if (self)
  {
    stateCopy = state;
    os_unfair_lock_lock((self + 64));
    objc_storeStrong((self + 72), a2);
    os_unfair_lock_unlock((self + 64));
    [stateCopy bls_setVisualState:v7];
  }
}

- (void)setPresentationDate:(void *)date forwardedToSettings:
{
  v7 = a2;
  if (self)
  {
    dateCopy = date;
    os_unfair_lock_lock((self + 64));
    objc_storeStrong((self + 80), a2);
    os_unfair_lock_unlock((self + 64));
    [dateCopy bls_setPresentationDate:v7];
  }
}

- (void)updateClientSupportsAlwaysOnFromClientSettings
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    os_unfair_lock_lock((self + 64));
    WeakRetained = objc_loadWeakRetained((self + 8));
    clientSettings = [WeakRetained clientSettings];
    *(self + 111) = [clientSettings bls_supportsAlwaysOn];

    os_unfair_lock_unlock((self + 64));
  }
}

- (void)setAlwaysOnEnabledForEnvironment:(void *)environment forwardedToSettings:
{
  if (self)
  {
    OUTLINED_FUNCTION_24_0(self, a2, environment);
    OUTLINED_FUNCTION_23();
    *(v4 + 110) = v3;
    os_unfair_lock_unlock((v4 + 64));
    [OUTLINED_FUNCTION_20_0(v5 v6];
  }
}

- (void)notifyObserversWithBlock:(uint64_t)block
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (block)
  {
    os_unfair_lock_lock((block + 64));
    allObjects = [*(block + 56) allObjects];
    os_unfair_lock_unlock((block + 64));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = allObjects;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setLiveUpdating:(void *)updating forwardedToSettings:
{
  if (self)
  {
    OUTLINED_FUNCTION_24_0(self, a2, updating);
    OUTLINED_FUNCTION_23();
    *(v4 + 113) = v3;
    os_unfair_lock_unlock((v4 + 64));
    [OUTLINED_FUNCTION_20_0(v5 v6];
  }
}

- (void)setUnrestrictedFramerateUpdates:(void *)updates forwardedToSettings:
{
  if (self)
  {
    OUTLINED_FUNCTION_24_0(self, a2, updates);
    OUTLINED_FUNCTION_23();
    *(v4 + 114) = v3;
    os_unfair_lock_unlock((v4 + 64));
    [OUTLINED_FUNCTION_20_0(v5 v6];
  }
}

- (void)updateHost1HzFlipbook
{
  if (self)
  {
    OUTLINED_FUNCTION_0_5();
    v3 = 3221225472;
    v4 = __60__BLSHBacklightFBSceneHostEnvironment_updateHost1HzFlipbook__block_invoke;
    v5 = &unk_27841FF68;
    v6 = v1;
    [(BLSHBacklightFBSceneHostEnvironment *)v1 notifyObserversWithBlock:v2];
  }
}

- (void)update1HzFlipbookForClientSettingChange
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    WeakRetained = objc_loadWeakRetained((self + 8));
    clientSettings = [WeakRetained clientSettings];
    bls_alwaysOnContentIs1hz = [clientSettings bls_alwaysOnContentIs1hz];

    os_unfair_lock_lock((self + 64));
    *(self + 112) = bls_alwaysOnContentIs1hz;
    LODWORD(WeakRetained) = *(self + 116);
    os_unfair_lock_unlock((self + 64));
    if (WeakRetained != bls_alwaysOnContentIs1hz)
    {

      [(BLSHBacklightFBSceneHostEnvironment *)self updateHost1HzFlipbook];
    }
  }
}

- (void)incrementRenderSeed
{
  if (self)
  {
    OUTLINED_FUNCTION_12_3(self);
    ++*(v1 + 96);

    os_unfair_lock_unlock((v1 + 64));
  }
}

- (void)copyRenderSeedToSettings:(uint64_t)settings
{
  if (settings)
  {
    v4 = a2;
    os_unfair_lock_lock((settings + 64));
    v3 = *(settings + 96);
    os_unfair_lock_unlock((settings + 64));
    [v4 bls_setRenderSeed:v3];
  }
}

- (void)synchronizePropertiesWithSettings:(uint64_t)settings
{
  if (settings)
  {
    v8 = a2;
    os_unfair_lock_lock((settings + 64));
    v3 = *(settings + 96);
    bls_visualState = [v8 bls_visualState];
    v5 = *(settings + 72);
    *(settings + 72) = bls_visualState;

    bls_presentationDate = [v8 bls_presentationDate];
    v7 = *(settings + 80);
    *(settings + 80) = bls_presentationDate;

    os_unfair_lock_unlock((settings + 64));
    [v8 bls_setRenderSeed:v3];
  }
}

- (void)invalidateContentForReason:(id)reason
{
  reasonCopy = reason;
  [(BLSHBacklightFBSceneHostEnvironment *)self incrementRenderSeed];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__BLSHBacklightFBSceneHostEnvironment_invalidateContentForReason___block_invoke;
  v6[3] = &unk_27841EFF0;
  v6[4] = self;
  v7 = reasonCopy;
  v5 = reasonCopy;
  [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v6];
}

- (uint64_t)incrementRequestDateSpecifierFailureCount
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_3(self);
  v2 = v1[26]._os_unfair_lock_opaque + 1;
  v1[26]._os_unfair_lock_opaque = v2;
  os_unfair_lock_unlock(v1 + 16);
  return v2;
}

- (void)resetRequestDateSpecifierFailureCount
{
  if (self)
  {
    OUTLINED_FUNCTION_12_3(self);
    v1[26]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v1 + 16);
  }
}

- (uint64_t)sceneWantsProcessAssertion:(void *)assertion withSceneSettings:
{
  v6 = a2;
  assertionCopy = assertion;
  if (self)
  {
    BSDispatchQueueAssertMain();
    if (v6)
    {
      clientSettings = [v6 clientSettings];
      bls_optsOutOfProcessAssertions = [clientSettings bls_optsOutOfProcessAssertions];

      activityMode = [assertionCopy activityMode];
      definition = [v6 definition];
      clientIdentity = [definition clientIdentity];
      isLocal = [clientIdentity isLocal];

      if (activityMode == 128)
      {
        v13 = 1;
      }

      else
      {
        v13 = bls_optsOutOfProcessAssertions;
      }

      v14 = (v13 | isLocal) ^ 1;
      v15 = bls_scenes_log();
      if (OUTLINED_FUNCTION_15_1(v15))
      {
        identifier = [self identifier];
        OUTLINED_FUNCTION_7_2();
        _os_log_debug_impl(v16, v17, v18, v19, v20, 0x38u);
      }
    }

    else
    {
      v21 = bls_scenes_log();
      if (OUTLINED_FUNCTION_15_1(v21))
      {
        identifier2 = [self identifier];
        OUTLINED_FUNCTION_1_13();
        OUTLINED_FUNCTION_7_2();
        _os_log_debug_impl(v24, v25, v26, v27, v28, 0x20u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

id __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_66(uint64_t a1, void *a2)
{
  v118 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0(a2);
  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) setVisualState:v2 forwardedToSettings:?];
  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) setPresentationDate:v2 forwardedToSettings:?];
  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) copyRenderSeedToSettings:v2];
  v6 = [*(a1 + 56) isActive];
  v7 = *(a1 + 32);
  if (v6)
  {
    if ([(BLSHBacklightFBSceneHostEnvironment *)v7 sceneWantsProcessAssertion:v2 withSceneSettings:?])
    {
      if ([*(a1 + 40) adjustedLuminance] == 1 && objc_msgSend(*(a1 + 40), "updateFidelity") == 2)
      {
        v8 = [*(a1 + 32) isLiveUpdating];
      }

      else
      {
        v8 = 0;
      }

      v18 = [*(a1 + 56) definition];
      v19 = [v18 clientIdentity];
      v20 = [v19 processIdentity];

      if (v20)
      {
        if (v8)
        {
          os_unfair_lock_lock((*(a1 + 32) + 64));
          v21 = *(a1 + 32);
          if (!*(v21 + 32))
          {
            v63 = bls_scenes_log();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(a1 + 32);
              v65 = [v64 identifier];
              v66 = *(a1 + 56);
              *buf = 134218498;
              v105 = v64;
              OUTLINED_FUNCTION_3_8(v65, v66);
              OUTLINED_FUNCTION_14_2(&dword_21FD11000, v63, v67, "%p:%{public}@ taking CPU/GPU grant process assertion 1FPSFlipbook for scene %p", buf);
            }

            v68 = [BLSHAggregatedProcessAssertion alloc];
            v69 = MEMORY[0x277CCACA8];
            v70 = [*(a1 + 32) identifier];
            v71 = [v69 stringWithFormat:@"1FPSFlipbook forScene:%@", v70];
            v72 = [(BLSHAggregatedProcessAssertion *)v68 initWithExplanation:v71 processIdentity:v20 duration:1.79769313e308];
            v73 = *(a1 + 32);
            v74 = *(v73 + 32);
            *(v73 + 32) = v72;

            [*(*(a1 + 32) + 32) setShouldFaultOnFailureToAcquire:-[BLSHBacklightFBSceneHostEnvironment isAtLeastOneMinuteOld](*(a1 + 32))];
            [*(*(a1 + 32) + 32) acquireWithCompletion:0];
            v21 = *(a1 + 32);
          }

          os_unfair_lock_unlock((v21 + 64));

          v11 = 0;
LABEL_21:
          v24 = objc_alloc(MEMORY[0x277CF08A8]);
          v25 = *(a1 + 96);
          v93 = MEMORY[0x277D85DD0];
          v94 = 3221225472;
          v95 = __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_75;
          v96 = &unk_278420030;
          v102 = v25;
          v3 = v11;
          v97 = v3;
          v77 = *(a1 + 32);
          v26 = *(a1 + 56);
          v27 = *(a1 + 40);
          v28 = *(a1 + 48);
          *&v29 = v27;
          *(&v29 + 1) = v28;
          *&v30 = v77;
          *(&v30 + 1) = v26;
          v98 = v30;
          v99 = v29;
          v103 = *(a1 + 97);
          v100 = *(a1 + 64);
          v101 = *(a1 + 72);
          v31 = [OUTLINED_FUNCTION_19_0() initWithBacklightChangeEvent:? animated:? touchTargetable:? isUpdateToDateSpecifier:? completion:?];
          v32 = [MEMORY[0x277CBEB18] arrayWithObject:v31];
          if (*(a1 + 80))
          {
            v33 = objc_alloc(MEMORY[0x277CF08B8]);
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_79;
            v87[3] = &unk_278420058;
            v34 = *(a1 + 40);
            v87[4] = *(a1 + 32);
            v88 = v34;
            v89 = *(a1 + 48);
            v92 = *(a1 + 96);
            v90 = *(a1 + 64);
            v91 = *(a1 + 80);
            v35 = [v33 initWithCompletion:v87];
            [OUTLINED_FUNCTION_19_0() addObject:?];
          }

          if (*(a1 + 88))
          {
            v36 = objc_alloc(MEMORY[0x277CF08B0]);
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_83;
            v79[3] = &unk_278420080;
            v37 = v3;
            v38 = *(a1 + 32);
            v39 = *(a1 + 40);
            v80 = v37;
            v81 = v38;
            v82 = v39;
            v83 = *(a1 + 48);
            v86 = *(a1 + 96);
            v84 = *(a1 + 64);
            v85 = *(a1 + 88);
            v40 = [v36 initWithCompletion:v79];
            [OUTLINED_FUNCTION_19_0() addObject:?];
          }

          v41 = [*(a1 + 56) definition];
          v42 = [v41 specification];
          v43 = [v42 transitionContextClass];

          v10 = objc_alloc_init(v43);
          v44 = [MEMORY[0x277CBEB98] setWithArray:v32];
          [v10 setActions:v44];

          if (__disableFrontBoardRBAssertions == 1)
          {
            [v10 setRunningBoardAssertionDisabled:1];
          }

          v45 = bls_scenes_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v56 = *(a1 + 32);
            v57 = [v56 identifier];
            v76 = *(a1 + 56);
            v78 = *(a1 + 48);
            v75 = *(a1 + 40);
            v58 = [*(a1 + 32) clientHasDelegate];
            *buf = 134219522;
            v105 = v56;
            v106 = 2114;
            v107 = v57;
            v108 = 2114;
            v109 = v75;
            v110 = 2048;
            v111 = v76;
            v112 = 2114;
            v113 = v78;
            v114 = 1024;
            v115 = v58;
            v116 = 2114;
            v117 = v32;
            _os_log_debug_impl(&dword_21FD11000, v45, OS_LOG_TYPE_DEBUG, "%p:%{public}@ updateToVisualState:%{public}@ scene:%p to presentationDate:%{public}@ clientHasDelegate:%{BOOL}u with:%{public}@", buf, 0x44u);
          }

          goto LABEL_30;
        }

        v59 = MEMORY[0x277CCACA8];
        v60 = *(a1 + 40);
        v61 = [*(a1 + 32) identifier];
        v62 = [v59 stringWithFormat:@"updateToSceneVisualState:%@ forScene:%@", v60, v61];

        v11 = [[BLSHAggregatedProcessAssertion alloc] initWithExplanation:v62 processIdentity:v20 duration:2.75];
        [(BLSHAggregatedProcessAssertion *)v11 setShouldFaultOnFailureToAcquire:[(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) isAtLeastOneMinuteOld]];
        [(BLSHAggregatedProcessAssertion *)v11 acquireWithCompletion:0];
      }

      else
      {
        v47 = bls_scenes_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [OUTLINED_FUNCTION_18_0() identifier];
          v49 = *(a1 + 56);
          *buf = 134218498;
          v105 = v18;
          OUTLINED_FUNCTION_3_8(v48, v49);
          OUTLINED_FUNCTION_14_2(&dword_21FD11000, v47, v50, "%p:%{public}@ couldn't get a client processIdentity for scene %p. cannot take CPU/GPU grant process assertion 1FPSFlipbook", buf);
        }

        v11 = 0;
        if (v8)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_lock((*(a1 + 32) + 64));
    if (*(*(a1 + 32) + 32))
    {
      v12 = bls_scenes_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = [v13 identifier];
        v15 = *(a1 + 56);
        *buf = 134218498;
        v105 = v13;
        OUTLINED_FUNCTION_3_8(v14, v15);
        OUTLINED_FUNCTION_14_2(&dword_21FD11000, v12, v16, "%p:%{public}@ dropping CPU/GPU grant process assertion 1FPSFlipbook for scene %p", buf);
      }

      v17 = *(*(a1 + 32) + 32);
    }

    else
    {
      v17 = 0;
    }

    [v17 invalidate];
    v22 = *(a1 + 32);
    v23 = *(v22 + 32);
    *(v22 + 32) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 64));
    goto LABEL_21;
  }

  [(BLSHBacklightFBSceneHostEnvironment *)v7 setShouldInvalidateWhenActivated];
  v9 = bls_scenes_log();
  if (OUTLINED_FUNCTION_15_1(v9))
  {
    v51 = [OUTLINED_FUNCTION_18_0() identifier];
    v53 = *(a1 + 48);
    v52 = *(a1 + 56);
    v54 = *(a1 + 40);
    v55 = [*(a1 + 32) clientHasDelegate];
    *buf = 134219266;
    v105 = v4;
    v106 = 2114;
    v107 = v51;
    v108 = 2114;
    v109 = v54;
    v110 = 2048;
    v111 = v52;
    v112 = 2114;
    v113 = v53;
    v114 = 1024;
    v115 = v55;
    _os_log_debug_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ updateToVisualState:%{public}@ inactive scene:%p to presentationDate:%{public}@ clientHasDelegate:%{BOOL}u", buf, 0x3Au);
  }

  v10 = 0;
LABEL_30:

  return v10;
}

id __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0(a2);
  v4 = *(a1 + 40);
  [v4 newVisualStateWithUpdateFidelity:{objc_msgSend(*(a1 + 48), "fidelity")}];
  v5 = OUTLINED_FUNCTION_17();
  [(BLSHBacklightFBSceneHostEnvironment *)v5 setVisualState:v6 forwardedToSettings:v7];

  [*(a1 + 48) date];
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_17();
  [(BLSHBacklightFBSceneHostEnvironment *)v8 setPresentationDate:v9 forwardedToSettings:v10];

  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) copyRenderSeedToSettings:v2];
  v11 = [*(a1 + 56) isActive];
  v12 = *(a1 + 32);
  if (v11)
  {
    if ([(BLSHBacklightFBSceneHostEnvironment *)v12 sceneWantsProcessAssertion:v2 withSceneSettings:?])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = *(a1 + 48);
      v15 = [*(a1 + 32) identifier];
      v16 = [v13 stringWithFormat:@"updateTo:%@ forScene:%@", v14, v15];

      v17 = [*(a1 + 56) definition];
      v18 = [v17 clientIdentity];
      v19 = [v18 processIdentity];

      if (v19)
      {
        v25 = [[BLSHAggregatedProcessAssertion alloc] initWithExplanation:v16 processIdentity:v19 duration:1.25];
        [(BLSHAggregatedProcessAssertion *)v25 setShouldFaultOnFailureToAcquire:[(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) isAtLeastOneMinuteOld]];
        [(BLSHAggregatedProcessAssertion *)v25 acquireWithCompletion:0];
      }

      else
      {
        v20 = bls_scenes_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 32);
          v22 = [v21 identifier];
          *buf = 134218498;
          v53 = v21;
          OUTLINED_FUNCTION_10_0();
          v57 = v23;
          OUTLINED_FUNCTION_14_2(&dword_21FD11000, v20, v24, "%p:%{public}@ couldn't get a client processIdentity for scene %p. cannot take CPU/GPU grant process assertion", buf);
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v32 = objc_alloc(MEMORY[0x277CF08A8]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke_104;
    v46[3] = &unk_278420120;
    v26 = v25;
    v33 = *(a1 + 32);
    v47 = v26;
    v48 = v33;
    v49 = *(a1 + 56);
    v50 = *(a1 + 48);
    v51 = *(a1 + 64);
    v34 = [v32 initWithBacklightChangeEvent:0 animated:0 touchTargetable:0 isUpdateToDateSpecifier:1 completion:v46];
    v35 = [*(a1 + 56) definition];
    v36 = [v35 specification];
    v37 = [v36 transitionContextClass];

    v31 = objc_alloc_init(v37);
    v38 = [MEMORY[0x277CBEB98] setWithObject:v34];
    [v31 setActions:v38];

    if (__disableFrontBoardRBAssertions == 1)
    {
      [v31 setRunningBoardAssertionDisabled:1];
    }

    v39 = bls_scenes_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 32);
      v41 = [v40 identifier];
      v43 = *(a1 + 48);
      v42 = *(a1 + 56);
      v44 = [*(a1 + 32) clientHasDelegate];
      *buf = 134219266;
      v53 = v40;
      v54 = 2114;
      v55 = v41;
      v56 = 2048;
      v57 = v42;
      v58 = 2114;
      v59 = v43;
      v60 = 1024;
      v61 = v44;
      v62 = 2114;
      v63 = v34;
      _os_log_impl(&dword_21FD11000, v39, OS_LOG_TYPE_INFO, "%p:%{public}@ request to update scene:%p to dateSpecifier:%{public}@ clientHasDelegate:%{BOOL}u action:%{public}@", buf, 0x3Au);
    }
  }

  else
  {
    [(BLSHBacklightFBSceneHostEnvironment *)v12 setShouldInvalidateWhenActivated];
    v26 = bls_scenes_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [OUTLINED_FUNCTION_18_0() identifier];
      v29 = *(a1 + 48);
      v28 = *(a1 + 56);
      v30 = [*(a1 + 32) clientHasDelegate];
      *buf = 134219010;
      v53 = v4;
      v54 = 2114;
      v55 = v27;
      v56 = 2048;
      v57 = v28;
      v58 = 2114;
      v59 = v29;
      v60 = 1024;
      v61 = v30;
      _os_log_impl(&dword_21FD11000, v26, OS_LOG_TYPE_INFO, "%p:%{public}@ request to update inactive scene:%p to dateSpecifier:%{public}@ clientHasDelegate:%{BOOL}u", buf, 0x30u);
    }

    v31 = 0;
  }

  return v31;
}

- (void)willBeginRenderSession:(id)session
{
  v42 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
    *buf = 134218754;
    selfCopy2 = self;
    OUTLINED_FUNCTION_10_0();
    v39 = sessionCopy;
    v40 = v8;
    v41 = v9;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "%p:%{public}@ willBeginRenderSession:%p oldAssertion:%p", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  settings = [WeakRetained settings];
  v12 = [(BLSHBacklightFBSceneHostEnvironment *)self sceneWantsProcessAssertion:settings withSceneSettings:?];

  if (v12)
  {
    definition = [WeakRetained definition];
    clientIdentity = [definition clientIdentity];
    processIdentity = [clientIdentity processIdentity];

    if (processIdentity)
    {
      v19 = 0x277CCA000uLL;
      if (self->_lock_renderSessionAssertion)
      {
        v26 = MEMORY[0x277CCACA8];
        identifier2 = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
        sessionCopy = [v26 stringWithFormat:@"%p:%@ willBeginRenderSession – nonnil existing renderSessionAssertion:%@ newRenderSession:%@", self, identifier2, self->_lock_renderSessionAssertion, sessionCopy];

        BLSHRecordCriticalAssertFailure(sessionCopy, 1, 0);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __62__BLSHBacklightFBSceneHostEnvironment_willBeginRenderSession___block_invoke;
        v31[3] = &unk_27841E510;
        v31[4] = self;
        v32 = sessionCopy;
        v33 = a2;
        v29 = MEMORY[0x223D70730](v31);
        if (BLSHIsUnitTestRunning())
        {
          v29[2](v29);
        }

        else
        {
          v30 = dispatch_time(0, 1000000000);
          dispatch_after(v30, MEMORY[0x277D85CD0], v29);
        }

        v19 = 0x277CCA000;
      }

      v20 = [BLSHAggregatedProcessAssertion alloc];
      v21 = *(v19 + 3240);
      identifier3 = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
      v23 = [v21 stringWithFormat:@"RenderSession:%p forScene:%@", sessionCopy, identifier3];
      v24 = [OUTLINED_FUNCTION_19_0() initWithExplanation:? processIdentity:? duration:?];
      lock_renderSessionAssertion = self->_lock_renderSessionAssertion;
      self->_lock_renderSessionAssertion = v24;

      [(BLSHAggregatedProcessAssertion *)self->_lock_secondsFidelityAssertion setShouldFaultOnFailureToAcquire:[(BLSHBacklightFBSceneHostEnvironment *)self isAtLeastOneMinuteOld]];
      [(BLSHAggregatedProcessAssertion *)self->_lock_renderSessionAssertion acquireWithCompletion:0];
    }

    else
    {
      v16 = bls_scenes_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        identifier4 = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
        *buf = 134218498;
        selfCopy2 = self;
        v36 = 2114;
        v37 = identifier4;
        v38 = 2048;
        v39 = WeakRetained;
        OUTLINED_FUNCTION_14_2(&dword_21FD11000, v16, v18, "%p:%{public}@ couldn't get a client processIdentity for scene %p. cannot take CPU/GPU grant process assertion for render session", buf);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)wantsStateUpdateToActiveAfterRemovalFromPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);
  settings = [WeakRetained settings];
  v5 = [(BLSHBacklightFBSceneHostEnvironment *)self sceneWantsProcessAssertion:settings withSceneSettings:?];

  v6 = bls_scenes_log();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    identifier = [(BLSHBacklightFBSceneHostEnvironment *)self identifier];
    OUTLINED_FUNCTION_7_2();
    _os_log_debug_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  return v5 ^ 1;
}

void __85__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [(BLSHBacklightFBSceneHostEnvironment *)v3 setVisualState:v4 forwardedToSettings:v5];
  [(BLSHBacklightFBSceneHostEnvironment *)*(a1 + 32) setPresentationDate:v5 forwardedToSettings:?];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  diffCopy = diff;
  clientSettingsDiffInspector = [(BLSHBacklightFBSceneHostEnvironment *)self clientSettingsDiffInspector];
  v9 = [clientSettingsDiffInspector inspectDiff:diffCopy];

  if (v9)
  {
    [(BLSHBacklightFBSceneHostEnvironment *)self updateClientHasDelegateFromClientSettings];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
    v17[3] = &unk_27841FF68;
    v17[4] = self;
    [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v17];
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        return;
      }

LABEL_7:
      [(BLSHBacklightFBSceneHostEnvironment *)self update1HzFlipbookForClientSettingChange];
      OUTLINED_FUNCTION_0_5();
      v12 = 3221225472;
      v13 = __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_3;
      v14 = &unk_27841FF68;
      selfCopy = self;
      [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v11];
      return;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(BLSHBacklightFBSceneHostEnvironment *)self updateClientSupportsAlwaysOnFromClientSettings];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__BLSHBacklightFBSceneHostEnvironment_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke_2;
  v16[3] = &unk_27841FF68;
  v16[4] = self;
  [(BLSHBacklightFBSceneHostEnvironment *)self notifyObserversWithBlock:v16];
  if ((v9 & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (void)initWithFBScene:.cold.2()
{
  OUTLINED_FUNCTION_16_1();
  v2 = [v1 identifier];
  v3 = [v0 debugDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

- (void)setAlwaysOnEnabledForEnvironment:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)setLiveUpdating:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)setUnrestrictedFramerateUpdates:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)setCacheFlipbookOnDisplayWake:(void *)a1 .cold.1(void *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v1[1] = 3221225472;
  OUTLINED_FUNCTION_13_2(v1, v2, v3, v4);
}

- (void)setHighLuminanceAlwaysOn:(void *)a1 .cold.1(void *a1)
{
  v1 = OUTLINED_FUNCTION_5_5(a1);
  v1[1] = 3221225472;
  OUTLINED_FUNCTION_13_2(v1, v2, v3, v4);
}

- (void)requestedFidelityForInactiveContentWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_21_0();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)requestedFidelityForInactiveContentWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_21_0();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __89__BLSHBacklightFBSceneHostEnvironment_requestedFidelityForInactiveContentWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_16_1();
  v1 = [*(v0 + 32) identifier];
  v2 = NSStringFromBLSUpdateFidelity();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)updateToVisualState:presentationDateSpecifier:animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:.cold.1()
{
  v5 = MEMORY[0x223D70730]();
  OUTLINED_FUNCTION_4_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)updateToVisualState:presentationDateSpecifier:animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:.cold.2()
{
  v5 = MEMORY[0x223D70730]();
  OUTLINED_FUNCTION_4_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_75_cold_1(uint64_t a1, unsigned __int8 *a2, NSObject *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = [v6 identifier];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 64) bls_shortLoggingString];
  v11 = *a2;
  v12 = *(a1 + 89);
  v13 = *(a1 + 72);
  v14 = 134219778;
  v15 = v6;
  v16 = 2114;
  v17 = v7;
  v18 = 2114;
  v19 = v8;
  v20 = 2114;
  v21 = v9;
  v22 = 2114;
  v23 = v10;
  v24 = 1024;
  v25 = v11;
  v26 = 1024;
  v27 = v12;
  v28 = 2114;
  v29 = v13;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ client did update scene:%{public}@ to visualState:%{public}@ presentationDate:%{public}@ animated:%{BOOL}u touchTarget:%{BOOL}u event:%{public}@", &v14, 0x4Au);
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_79_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = [v6 identifier];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) bls_shortLoggingString];
  v10 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = 134219522;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  v16 = 2048;
  v17 = a3;
  v18 = 2114;
  v19 = v8;
  v20 = 2114;
  v21 = v9;
  v22 = 1024;
  v23 = v10;
  v24 = 2114;
  v25 = v11;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p:%{public}@ client began ramp with duration:%lf for update to visualState:%{public}@ presentationDate:%{public}@, animated:%{BOOL}u event:%{public}@", &v12, 0x44u);
}

void __183__BLSHBacklightFBSceneHostEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke_83_cold_1()
{
  OUTLINED_FUNCTION_21_0();
  v2 = [*(v1 + 40) identifier];
  v8 = [*(v0 + 56) bls_shortLoggingString];
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x3Au);
}

void __82__BLSHBacklightFBSceneHostEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke_104_cold_1()
{
  OUTLINED_FUNCTION_21_0();
  v1 = [*(v0 + 40) identifier];
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)willEndRenderSession:.cold.1()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(v2 + 1);
  v5 = [WeakRetained settings];
  if ([(BLSHBacklightFBSceneHostEnvironment *)v3 sceneWantsProcessAssertion:v5 withSceneSettings:?])
  {
    v6 = [WeakRetained clientSettings];
    v7 = [v6 bls_optsOutOfProcessAssertions];

    v8 = [v5 activityMode];
    v9 = [WeakRetained definition];
    v10 = [v9 clientIdentity];
    v11 = [v10 isLocal];

    v12 = bls_scenes_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = v8 == -128;
      v14 = [v3 identifier];
      *buf = 134219778;
      v16 = v3;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      v20 = WeakRetained;
      v21 = 2048;
      v22 = v5;
      v23 = 1024;
      v24 = ((v7 | v11) & 1 | v13) == 0;
      v25 = 1024;
      v26 = v7;
      v27 = 1024;
      v28 = v13;
      v29 = 1024;
      v30 = v11;
      _os_log_fault_impl(&dword_21FD11000, v12, OS_LOG_TYPE_FAULT, "%p:%{public}@ renderSessionAssertion=nil but scene:%p settings:%p wantsProcessAssertions:%{BOOL}u optsOut:%{BOOL}u externalManaged:%{BOOL}u local:%{BOOL}u", buf, 0x42u);
    }
  }

  *v0 = *v1;
}

- (void)sceneDidInvalidate:(id *)a3 .cold.1(void *a1, uint64_t a2, id *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1 identifier];
    v11 = 134218498;
    v12 = a1;
    OUTLINED_FUNCTION_1_13();
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "%p:%{public}@ scene:%p did invalidate", &v11, 0x20u);
  }

  objc_storeWeak(a3, 0);
  [(BLSHBacklightFBSceneHostEnvironment *)a1 updateClientHasDelegateFromClientSettings];
  [(BLSHBacklightFBSceneHostEnvironment *)a1 updateClientSupportsAlwaysOnFromClientSettings];
  [(BLSHBacklightFBSceneHostEnvironment *)a1 update1HzFlipbookForClientSettingChange];
}

- (void)sceneDidActivate:(os_unfair_lock_s *)a1 .cold.1(os_unfair_lock_s *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  ShouldInvalidateWhen = [(BLSHBacklightFBSceneHostEnvironment *)a1 readAndClearShouldInvalidateWhenActivated];
  v5 = bls_scenes_log();
  v6 = v5;
  if (ShouldInvalidateWhen)
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v8 = [(os_unfair_lock_s *)a1 identifier];
    v9 = 134218498;
    v10 = a1;
    OUTLINED_FUNCTION_1_13();
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_21FD11000, v6, v7, "%p:%{public}@ scene:%p did activate", &v9, 0x20u);
  }

  if (ShouldInvalidateWhen)
  {
    [(os_unfair_lock_s *)a1 invalidateContentForReason:@"wasInPresentationWhileInactive"];
  }
}

@end