@interface BLSHLocalHostSceneEnvironment
- (BLSHLocalHostSceneEnvironment)initWithBacklightSceneEnvironment:(id)environment;
- (BOOL)clientAlwaysOnContentIs1hz;
- (BOOL)clientHasDelegate;
- (BOOL)clientSupportsAlwaysOn;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)hasVisualStateMistmach;
- (BOOL)isClientActive;
- (BOOL)isLiveUpdating;
- (id)presentationDate;
- (id)visualState;
- (void)clearPresentationDate;
- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (void)requestedFidelityForInactiveContentWithCompletion:(id)completion;
- (void)setLiveUpdating:(BOOL)updating;
- (void)setUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0;
@end

@implementation BLSHLocalHostSceneEnvironment

- (BLSHLocalHostSceneEnvironment)initWithBacklightSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  identifier = [environmentCopy identifier];
  v12.receiver = self;
  v12.super_class = BLSHLocalHostSceneEnvironment;
  v6 = [(BLSHBaseSceneHostEnvironment *)&v12 initWithIdentifier:identifier];

  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v6->_clientEnvironment, environmentCopy);
    visualState = [environmentCopy visualState];
    lock_visualState = v6->_lock_visualState;
    v6->_lock_visualState = visualState;

    presentationDate = [environmentCopy presentationDate];
    lock_presentationDate = v6->_lock_presentationDate;
    v6->_lock_presentationDate = presentationDate;

    [(BLSHBaseSceneHostEnvironment *)v6 setAlwaysOnEnabledForEnvironment:1];
  }

  return v6;
}

- (BOOL)hasVisualStateMistmach
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualStateMismatchStartTime != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)clientHasDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  delegate = [WeakRetained delegate];
  v4 = delegate != 0;

  return v4;
}

- (BOOL)isClientActive
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  isDelegateActive = [WeakRetained isDelegateActive];

  return isDelegateActive;
}

- (id)visualState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)clientSupportsAlwaysOn
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  supportsAlwaysOn = [WeakRetained supportsAlwaysOn];

  return supportsAlwaysOn;
}

- (BOOL)clientAlwaysOnContentIs1hz
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  alwaysOnContentIs1hz = [WeakRetained alwaysOnContentIs1hz];

  return alwaysOnContentIs1hz;
}

- (BOOL)isLiveUpdating
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  isLiveUpdating = [WeakRetained isLiveUpdating];

  return isLiveUpdating;
}

- (void)setLiveUpdating:(BOOL)updating
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called on this subclass"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BLSHLocalHostSceneEnvironment.m";
    v17 = 1024;
    v18 = 71;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  hasUnrestrictedFramerateUpdates = [WeakRetained hasUnrestrictedFramerateUpdates];

  return hasUnrestrictedFramerateUpdates;
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)updates
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called on this subclass"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BLSHLocalHostSceneEnvironment.m";
    v17 = 1024;
    v18 = 79;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)presentationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)clearPresentationDate
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = bls_environment_log();
  v4 = v3;
  lock_presentationDate = self->_lock_presentationDate;
  if (lock_presentationDate)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v6))
  {
    bls_shortLoggingString = [(NSDate *)lock_presentationDate bls_shortLoggingString];
    v8 = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = bls_shortLoggingString;
    _os_log_impl(&dword_21FD11000, v4, v6, "%p (localHostEnv) not clearing cached presentation date:%{public}@ (should be cleared later by host)", &v8, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  intervalCopy = interval;
  dateCopy = date;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  delegate = [WeakRetained delegate];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke;
  v18[3] = &unk_278420768;
  v19 = dateCopy;
  v20 = WeakRetained;
  v21 = intervalCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = intervalCopy;
  v16 = WeakRetained;
  v17 = dateCopy;
  [delegate environment:v16 timelinesForDateInterval:v15 previousSpecifier:0 completion:v18];
}

void __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) alwaysOnSession];
    v4 = [v3 specifierForPresentationDate:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CF0858] constructFrameSpecifiersForTimelines:v7 dateInterval:*(a1 + 48) shouldConstructStartSpecifier:1 framesPerSecond:v4 previousSpecifier:30.0];
  v6 = [v5 bs_map:&__block_literal_global_25];

  (*(*(a1 + 56) + 16))();
}

id __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF0848];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 presentationInterval];
  v6 = [v5 startDate];
  v7 = [v3 requestedFidelity];

  v8 = [v4 initWithDate:v6 fidelity:v7];

  return v8;
}

- (void)requestedFidelityForInactiveContentWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  visualState = [WeakRetained visualState];
  (*(completion + 2))(completionCopy, [visualState updateFidelity]);
}

- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated
{
  v102 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  updatedCopy = updated;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  visualState = [WeakRetained visualState];
  userObject = [specifierCopy userObject];
  v80 = visualState;
  v77 = userObject;
  v74 = a2;
  if (userObject)
  {
    v12 = userObject;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BLSHLocalHostSceneEnvironment *)self updateToDateSpecifier:specifierCopy sceneContentsUpdated:a2];
    }

    context = [v12 context];
    isAnimated = [context isAnimated];
    isTouchTargetable = [context isTouchTargetable];
    previousVisualState = [context previousVisualState];
    triggerEvent = [context triggerEvent];

    if (triggerEvent)
    {
      [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v74 sceneContentsUpdated:?];
    }

    visualState2 = [context visualState];
    v18 = [visualState2 isEqual:v80];

    if ((v18 & 1) == 0)
    {
      v56 = MEMORY[0x277CCACA8];
      identifier = [(BLSHBaseSceneHostEnvironment *)self identifier];
      visualState3 = [context visualState];
      v59 = [v56 stringWithFormat:@"%p %@: scene update visual state and clientEnvironment's visual state don't match: %@, %@", self, identifier, visualState3, v80];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v74 sceneContentsUpdated:self];
      }

      [v59 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD69A70);
    }
  }

  else
  {
    previousVisualState = visualState;
    isTouchTargetable = 0;
    isAnimated = 0;
  }

  alwaysOnSession = [WeakRetained alwaysOnSession];
  date = [specifierCopy date];
  v76 = alwaysOnSession;
  v21 = [alwaysOnSession specifierForPresentationDate:date];

  if (v21)
  {
    grantedFidelity = [v21 grantedFidelity];
    if (grantedFidelity != [specifierCopy fidelity])
    {
      v51 = MEMORY[0x277CCACA8];
      identifier2 = [(BLSHBaseSceneHostEnvironment *)self identifier];
      [v21 grantedFidelity];
      v53 = NSStringFromBLSUpdateFidelity();
      [specifierCopy fidelity];
      v54 = NSStringFromBLSUpdateFidelity();
      v55 = [v51 stringWithFormat:@"%p %@:frameSpecifier %@ grantedFidelity (%@) doesn't match dateSpecifier %@ fidelity (%@)", self, identifier2, v21, v53, specifierCopy, v54];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v74 sceneContentsUpdated:self];
      }

      [v55 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD699E0);
    }
  }

  BYTE1(v65) = 1;
  LOBYTE(v65) = isTouchTargetable;
  v78 = [objc_alloc(MEMORY[0x277CF08A0]) initForEnvironment:WeakRetained visualState:v80 previousVisualState:previousVisualState frameSpecifier:v21 animated:isAnimated triggerEvent:0 touchTargetable:v65 isUpdateToDateSpecifier:updatedCopy sceneContentsUpdated:0 performBacklightRamp:0 sceneContentsAnimationComplete:?];
  os_unfair_lock_lock(&self->_lock);
  presentationInterval = [v21 presentationInterval];
  v24 = presentationInterval;
  v75 = updatedCopy;
  if (presentationInterval)
  {
    startDate = [presentationInterval startDate];
    lock_presentationDate = self->_lock_presentationDate;
    self->_lock_presentationDate = startDate;

    v87 = 0.0;
    presentationDate = [WeakRetained presentationDate];
    v28 = [v24 bls_containsDate:presentationDate withEpsilon:&v87 outDelta:0.0001];

    if ((v28 & 1) == 0)
    {
      v29 = bls_environment_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        identifier3 = [WeakRetained identifier];
        v46 = @"early";
        if (v87 > 0.0)
        {
          v46 = @"late";
        }

        v66 = v46;
        if (v87 >= 0.0)
        {
          v47 = v87;
        }

        else
        {
          v47 = -v87;
        }

        bls_shortLoggingString = [specifierCopy bls_shortLoggingString];
        frameSpecifier = [WeakRetained frameSpecifier];
        bls_shortLoggingString2 = [v80 bls_shortLoggingString];
        bls_shortLoggingString3 = [v80 bls_shortLoggingString];
        *buf = 138544898;
        selfCopy2 = identifier3;
        v90 = 2112;
        v91 = v66;
        v92 = 2048;
        v93 = v47;
        v94 = 2114;
        v95 = bls_shortLoggingString;
        v96 = 2114;
        v97 = frameSpecifier;
        v98 = 2114;
        v99 = bls_shortLoggingString2;
        v100 = 2114;
        v101 = bls_shortLoggingString3;
        _os_log_fault_impl(&dword_21FD11000, v29, OS_LOG_TYPE_FAULT, "updateToDateSpecifier: %{public}@ clientEnv.presentationDate too %@ for presentationInterval by %0.4fs dateSpecifier:%{public}@ clientEnv.frameSpecifier:%{public}@ visualState:%{public}@ clientEnv.visualState:%{public}@", buf, 0x48u);
      }
    }

    if (specifierCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    presentationDate2 = [WeakRetained presentationDate];
    v34 = self->_lock_presentationDate;
    self->_lock_presentationDate = presentationDate2;

    if (specifierCopy)
    {
LABEL_14:
      fidelity = [specifierCopy fidelity];
      if ([(BLSBacklightSceneVisualState *)self->_lock_visualState updateFidelity]!= fidelity)
      {
        v31 = [(BLSBacklightSceneVisualState *)self->_lock_visualState newVisualStateWithUpdateFidelity:fidelity];
        lock_visualState = self->_lock_visualState;
        self->_lock_visualState = v31;
      }

      goto LABEL_20;
    }
  }

  v35 = bls_environment_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    [(BLSHLocalHostSceneEnvironment *)self updateToDateSpecifier:v78 sceneContentsUpdated:v35];
  }

LABEL_20:
  v36 = self->_lock_visualState;
  v37 = v80;
  if (([(BLSBacklightSceneVisualState *)v36 isEqual:v80]& 1) == 0)
  {
    v38 = bls_environment_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      bls_shortLoggingString4 = [(BLSBacklightSceneVisualState *)v36 bls_shortLoggingString];
      identifier4 = [WeakRetained identifier];
      bls_shortLoggingString5 = [v80 bls_shortLoggingString];
      *buf = 138543874;
      selfCopy2 = bls_shortLoggingString4;
      v90 = 2114;
      v91 = identifier4;
      v92 = 2114;
      v93 = *&bls_shortLoggingString5;
      v45 = bls_shortLoggingString5;
      _os_log_fault_impl(&dword_21FD11000, v38, OS_LOG_TYPE_FAULT, "hostSceneVisualState != clientEnvVisualState. visualState:%{public}@ clientEnvironment:%{public}@ clientEnvVisualState:%{public}@", buf, 0x20u);
    }

    if (os_variant_has_internal_diagnostics() && ([(BLSBacklightSceneVisualState *)v36 isEqual:v80]& 1) == 0)
    {
      v70 = MEMORY[0x277CCACA8];
      bls_shortLoggingString6 = [(BLSBacklightSceneVisualState *)v36 bls_shortLoggingString];
      identifier5 = [WeakRetained identifier];
      bls_shortLoggingString7 = [v80 bls_shortLoggingString];
      v61 = [v70 stringWithFormat:@"visualState:%@ clientEnvironment:%@ clientEnvVisualState:%@", bls_shortLoggingString6, identifier5, bls_shortLoggingString7];

      v62 = v61;
      BLSHRecordCriticalAssertFailure(v61, 1, 0);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __76__BLSHLocalHostSceneEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke;
      v81[3] = &unk_278420790;
      v82 = v36;
      v83 = WeakRetained;
      selfCopy = self;
      v86 = v74;
      v84 = v80;
      v63 = MEMORY[0x223D70730](v81);
      if (BLSHIsUnitTestRunning())
      {
        v63[2](v63);
      }

      else
      {
        v64 = dispatch_time(0, 1000000000);
        dispatch_after(v64, MEMORY[0x277D85CD0], v63);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v39 = bls_environment_log();
  if ([(BLSHLocalHostSceneEnvironment *)self hasVisualStateMistmach])
  {
    v40 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v40 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v39, v40))
  {
    identifier6 = [(BLSHBaseSceneHostEnvironment *)self identifier];
    delegate = [WeakRetained delegate];
    *buf = 134218754;
    selfCopy2 = self;
    v90 = 2114;
    v91 = identifier6;
    v92 = 2114;
    v93 = *&delegate;
    v94 = 2114;
    v95 = v78;
    _os_log_impl(&dword_21FD11000, v39, v40, "%p (localHostEnv) updateToDateSpecifier: calling performBacklightSceneUpdate: on delegate for %{public}@ %{public}@ with %{public}@", buf, 0x2Au);

    v37 = v80;
  }

  delegate2 = [WeakRetained delegate];
  [delegate2 environment:WeakRetained performBacklightSceneUpdate:v78];
}

void __76__BLSHLocalHostSceneEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) bls_shortLoggingString];
  v5 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 48) bls_shortLoggingString];
  v7 = [v3 stringWithFormat:@"visualState:%@ clientEnvironment:%@ clientEnvVisualState:%@", v4, v5, v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 64));
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 56);
    *buf = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2114;
    v19 = @"BLSHLocalHostSceneEnvironment.m";
    v20 = 1024;
    v21 = 172;
    v22 = 2114;
    v23 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0
{
  animatedCopy = animated;
  v110 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  specifierCopy = specifier;
  eventCopy = event;
  updatedCopy = updated;
  rampCopy = ramp;
  completeCopy = complete;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v94 = specifierCopy;
  userObject = [specifierCopy userObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v75 = MEMORY[0x277CCACA8];
    identifier = [WeakRetained identifier];
    specifierCopy = [v75 stringWithFormat:@"%p %@: userObject on %@ is not a BLSBacklightSceneUpdate", self, identifier, specifierCopy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BLSHLocalHostSceneEnvironment updateToVisualState:a2 presentationDateSpecifier:self animated:? triggerEvent:? touchTargetable:? sceneContentsUpdated:? performBacklightRamp:? animationComplete:?];
    }

    [specifierCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD6A4ACLL);
  }

  v92 = userObject;
  [userObject context];
  v22 = v21 = updatedCopy;
  previousVisualState = [v22 previousVisualState];

  [WeakRetained alwaysOnSession];
  v25 = v24 = self;
  date = [v94 date];
  v82 = v25;
  v27 = v25;
  v28 = v24;
  v29 = [v27 specifierForPresentationDate:date];

  v30 = objc_alloc(MEMORY[0x277CF08A0]);
  v90 = completeCopy;
  v83 = rampCopy;
  v84 = v21;
  LOWORD(v78) = targetable;
  v31 = animatedCopy;
  v86 = previousVisualState;
  v88 = eventCopy;
  v80 = [v30 initForEnvironment:WeakRetained visualState:stateCopy previousVisualState:previousVisualState frameSpecifier:v29 animated:v31 triggerEvent:eventCopy touchTargetable:v78 isUpdateToDateSpecifier:v21 sceneContentsUpdated:rampCopy performBacklightRamp:completeCopy sceneContentsAnimationComplete:?];
  os_unfair_lock_lock(&v28->_lock);
  v81 = v29;
  presentationInterval = [v29 presentationInterval];
  v33 = presentationInterval;
  v34 = stateCopy;
  if (presentationInterval)
  {
    startDate = [presentationInterval startDate];
    lock_presentationDate = v28->_lock_presentationDate;
    v28->_lock_presentationDate = startDate;

    v95 = 0.0;
    presentationDate = [WeakRetained presentationDate];
    v38 = [v33 bls_containsDate:presentationDate withEpsilon:&v95 outDelta:0.0001];

    v39 = WeakRetained;
    if ((v38 & 1) == 0)
    {
      v40 = bls_environment_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        identifier2 = [WeakRetained identifier];
        v68 = @"early";
        if (v95 > 0.0)
        {
          v68 = @"late";
        }

        v79 = v68;
        if (v95 >= 0.0)
        {
          v69 = v95;
        }

        else
        {
          v69 = -v95;
        }

        bls_shortLoggingString = [v94 bls_shortLoggingString];
        frameSpecifier = [WeakRetained frameSpecifier];
        bls_shortLoggingString2 = [(__CFString *)stateCopy bls_shortLoggingString];
        visualState = [WeakRetained visualState];
        bls_shortLoggingString3 = [visualState bls_shortLoggingString];
        *buf = 138544898;
        v97 = identifier2;
        v98 = 2112;
        v99 = v79;
        v100 = 2048;
        v101 = v69;
        v102 = 2114;
        v103 = bls_shortLoggingString;
        v104 = 2114;
        v105 = frameSpecifier;
        v106 = 2114;
        v107 = bls_shortLoggingString2;
        v108 = 2114;
        v109 = bls_shortLoggingString3;
        _os_log_fault_impl(&dword_21FD11000, v40, OS_LOG_TYPE_FAULT, "updateToVisualState: %{public}@ clientEnv.presentationDate too %@ for presentationInterval by %0.4fs presentationDateSpecifier:%{public}@ clientEnv.frameSpecifier:%{public}@ visualState:%{public}@ clientEnv.visualState:%{public}@", buf, 0x48u);

        v34 = stateCopy;
      }
    }
  }

  else
  {
    presentationDate2 = [WeakRetained presentationDate];
    v42 = v28->_lock_presentationDate;
    v28->_lock_presentationDate = presentationDate2;

    v39 = WeakRetained;
  }

  lock_visualStateMismatchStartTime = v28->_lock_visualStateMismatchStartTime;
  visualState2 = [v39 visualState];
  v45 = [(__CFString *)v34 isEssentiallyEqualToVisualState:visualState2];

  v46 = v28->_lock_visualStateMismatchStartTime;
  if (lock_visualStateMismatchStartTime && v45)
  {
    v47 = v28->_lock_visualStateMismatchStartTime;
    v28->_lock_visualStateMismatchStartTime = 0;
    v48 = v92;
    stateCopy4 = state;
  }

  else
  {
    v48 = v92;
    if ((lock_visualStateMismatchStartTime != 0) | v45 & 1)
    {
      stateCopy4 = state;
      goto LABEL_14;
    }

    v50 = [MEMORY[0x277CBEAA8] now];
    v51 = v28->_lock_visualStateMismatchStartTime;
    v28->_lock_visualStateMismatchStartTime = v50;

    v52 = v50;
    v47 = v46;
    v46 = v52;
    stateCopy4 = state;
  }

LABEL_14:
  objc_storeStrong(&v28->_lock_visualState, stateCopy4);
  os_unfair_lock_unlock(&v28->_lock);
  v53 = v33;
  if (v45)
  {
    v54 = v90;
    v55 = v80;
    if (!lock_visualStateMismatchStartTime)
    {
      goto LABEL_25;
    }

    v56 = bls_environment_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      bls_loggingString = [(NSDate *)v46 bls_loggingString];
      *buf = 134218498;
      v97 = v28;
      v98 = 2114;
      v99 = bls_loggingString;
      v100 = 2114;
      v101 = *&stateCopy;
      _os_log_impl(&dword_21FD11000, v56, OS_LOG_TYPE_DEFAULT, "%p: (localhostEnv) resolved visualStateMismatch from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v58 = bls_environment_log();
    v56 = v58;
    if (lock_visualStateMismatchStartTime)
    {
      v59 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v59 = OS_LOG_TYPE_FAULT;
    }

    v55 = v80;
    if (os_log_type_enabled(v58, v59))
    {
      visualState3 = [v39 visualState];
      identifier3 = [v39 identifier];
      bls_loggingString2 = [(NSDate *)v46 bls_loggingString];
      *buf = 134219010;
      v97 = v28;
      v98 = 2112;
      v99 = stateCopy;
      v100 = 2112;
      v101 = *&visualState3;
      v102 = 2112;
      v103 = identifier3;
      v104 = 2114;
      v105 = bls_loggingString2;
      _os_log_impl(&dword_21FD11000, v56, v59, "%p (localHostEnv) new visualState %@ is not the same as visualState from clientEnvironment: %@, %@ mismatch began at %{public}@", buf, 0x34u);
    }

    v54 = v90;
  }

  v48 = v92;
LABEL_25:
  v63 = bls_environment_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    identifier4 = [(BLSHBaseSceneHostEnvironment *)v28 identifier];
    delegate = [v39 delegate];
    *buf = 134218754;
    v97 = v28;
    v98 = 2114;
    v99 = identifier4;
    v100 = 2114;
    v101 = *&delegate;
    v102 = 2114;
    v103 = v55;
    _os_log_debug_impl(&dword_21FD11000, v63, OS_LOG_TYPE_DEBUG, "%p (localHostEnv) updateToVisualState: calling performBacklightSceneUpdate: on delegate for %{public}@ %{public}@ with %{public}@", buf, 0x2Au);

    v54 = v90;
  }

  delegate2 = [v39 delegate];
  [delegate2 environment:v39 performBacklightSceneUpdate:v55];
}

- (void)updateToDateSpecifier:(const char *)a3 sceneContentsUpdated:.cold.1(void *a1, uint64_t a2, const char *a3)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [a1 identifier];
  v8 = [v6 stringWithFormat:@"%p %@: userObject on %@ is not a BLSBacklightSceneUpdate", a1, v7, a2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a3);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = a1;
    v18 = 2114;
    v19 = @"BLSHLocalHostSceneEnvironment.m";
    v20 = 1024;
    v21 = 127;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToDateSpecifier:(void *)a1 sceneContentsUpdated:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 identifier];
  v6 = [v4 stringWithFormat:@"%p %@: trigger event should be nil", a1, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = a1;
    v16 = 2114;
    v17 = @"BLSHLocalHostSceneEnvironment.m";
    v18 = 1024;
    v19 = 134;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToDateSpecifier:(const char *)a1 sceneContentsUpdated:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

- (void)updateToDateSpecifier:(const char *)a1 sceneContentsUpdated:(uint64_t)a2 .cold.4(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

- (void)updateToDateSpecifier:(NSObject *)a3 sceneContentsUpdated:.cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v7 = 134218498;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "%p: (localHostEnv) updateToDateSpecifier: got nil dateSpecifier for %{public}@ sceneUpdate:%{public}@", &v7, 0x20u);
}

- (void)updateToVisualState:(const char *)a1 presentationDateSpecifier:(uint64_t)a2 animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:.cold.1(const char *a1, uint64_t a2)
{
  v2 = NSStringFromSelector(a1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
}

@end