@interface SBAlertLayoutPresentationVerifier
+ (id)__lock_verifiers;
+ (void)_handleTrackingStateChange;
- (SBAlertLayoutPresentationVerifier)initWithScreen:(id)screen;
- (uint64_t)_fixAlertItemLayout;
- (uint64_t)_hasBrokenAlertPresentationInvariants;
- (uint64_t)_hasBrokenHostingLayerInvariants;
- (uint64_t)_hasBrokenWindowInvariants;
- (void)_logAlertItemLayout;
- (void)_logToAutoBugCapture;
- (void)_performLayoutVerification;
- (void)_startTrackingBadPositions;
- (void)_stopTrackingBadPositions;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)activeInterfaceOrientationWillChangeToOrientation:(int64_t)orientation;
- (void)addVerifier:(uint64_t)verifier;
- (void)dealloc;
- (void)removeVerifier:(uint64_t)verifier;
- (void)scheduleAlertLayoutVerificationForReason:(id)reason;
- (void)scheduleDelayedAlertLayoutVerificationForReason:(id)reason;
@end

@implementation SBAlertLayoutPresentationVerifier

- (SBAlertLayoutPresentationVerifier)initWithScreen:(id)screen
{
  screenCopy = screen;
  v11.receiver = self;
  v11.super_class = SBAlertLayoutPresentationVerifier;
  v6 = [(SBAlertLayoutPresentationVerifier *)&v11 init];
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updateReasons = v6->_updateReasons;
    v6->_updateReasons = v8;

    v6->_firstLogEventTime = -1.79769313e308;
    objc_storeStrong(&v6->_screen, screen);
    v6->_lastAutoBugCaptureEventTime = 0.0;
    [SBApp addActiveOrientationObserver:v6];
    v10 = +[SBReachabilityManager sharedInstance];
    [v10 addObserver:v6];

    +[SBAlertLayoutPresentationVerifier _handleTrackingStateChange];
    [(SBAlertLayoutPresentationVerifier *)v6 addVerifier:v6];
  }

  return v6;
}

+ (void)_handleTrackingStateChange
{
  v8 = **(self + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(self + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(self + 8) + 8 * v9);
      if (v10)
      {
        [*(v10 + 48) invalidate];
        v11 = *(v10 + 48);
        *(v10 + 48) = 0;
      }

      v9 = v9 + 1;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:self objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)dealloc
{
  [(SBAlertLayoutPresentationVerifier *)self removeVerifier:?];
  [(NSTimer *)self->_bugCaptureTimer invalidate];
  [SBApp removeActiveOrientationObserver:self];
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBAlertLayoutPresentationVerifier;
  [(SBAlertLayoutPresentationVerifier *)&v4 dealloc];
}

- (void)scheduleDelayedAlertLayoutVerificationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBAlertLayoutPresentationVerifier *)a2 scheduleDelayedAlertLayoutVerificationForReason:?];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_pendingScheduledLayoutVerification)
  {
    [(NSMutableArray *)self->_updateReasons addObject:reasonCopy];
  }

  else
  {
    self->_pendingScheduledLayoutVerification = 1;
    v6 = dispatch_time(0, 300000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__SBAlertLayoutPresentationVerifier_scheduleDelayedAlertLayoutVerificationForReason___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = reasonCopy;
    v7 = MEMORY[0x277D85CD0];
    dispatch_after(v6, MEMORY[0x277D85CD0], v8);
  }
}

- (void)scheduleAlertLayoutVerificationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBAlertLayoutPresentationVerifier *)a2 scheduleAlertLayoutVerificationForReason:?];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NSMutableArray *)self->_updateReasons addObject:reasonCopy];
  if (!self->_pendingLayoutVerification)
  {
    self->_pendingLayoutVerification = 1;
    v6 = *MEMORY[0x277D76620];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SBAlertLayoutPresentationVerifier_scheduleAlertLayoutVerificationForReason___block_invoke;
    v7[3] = &unk_2783A8C18;
    v7[4] = self;
    [v6 _performBlockAfterCATransactionCommits:v7];
  }
}

uint64_t __78__SBAlertLayoutPresentationVerifier_scheduleAlertLayoutVerificationForReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9FF0] currentState];
  v3 = *(a1 + 32);
  if (v2)
  {
    *(v3 + 8) = 0;
    v4 = *(a1 + 32);

    return [v4 scheduleAlertLayoutVerificationForReason:@"Rescheduling for later when not in a transaction."];
  }

  else
  {
    [(SBAlertLayoutPresentationVerifier *)v3 _performLayoutVerification];
    *(*(a1 + 32) + 8) = 0;
    v6 = *(*(a1 + 32) + 16);

    return [v6 removeAllObjects];
  }
}

+ (id)__lock_verifiers
{
  objc_opt_self();
  if (__lock_verifiers_once != -1)
  {
    +[SBAlertLayoutPresentationVerifier __lock_verifiers];
  }

  v1 = __lock_verifiers_lock_verifiers;

  return v1;
}

void __53__SBAlertLayoutPresentationVerifier___lock_verifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:5];
  v1 = __lock_verifiers_lock_verifiers;
  __lock_verifiers_lock_verifiers = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SBTrackAlertWindowPreferencesChangedHandler, @"com.apple.springboard.trackAlertWindowPositionPrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_startTrackingBadPositions
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x277CBEBB8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SBAlertLayoutPresentationVerifier__startTrackingBadPositions__block_invoke;
    v5[3] = &unk_2783AA438;
    objc_copyWeak(&v6, &location);
    v3 = [v2 scheduledTimerWithTimeInterval:1 repeats:v5 block:5.0];
    v4 = *(val + 6);
    *(val + 6) = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __63__SBAlertLayoutPresentationVerifier__startTrackingBadPositions__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scheduleAlertLayoutVerificationForReason:@"timer"];
}

void __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_2;
    v7[3] = &unk_2783A8C18;
    v7[4] = *(a1 + 32);
  }

  else
  {
    v5 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_3;
    block[3] = &unk_2783A8BC8;
    block[4] = *(a1 + 32);
    block[5] = *(a1 + 40);
  }

  dispatch_async(MEMORY[0x277D85CD0], v5);
}

double __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (void)activeInterfaceOrientationWillChangeToOrientation:(int64_t)orientation
{
  orientation = [MEMORY[0x277CCACA8] stringWithFormat:@"Will change to orientation %li", orientation];
  [(SBAlertLayoutPresentationVerifier *)self scheduleAlertLayoutVerificationForReason:orientation];
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  orientation = [MEMORY[0x277CCACA8] stringWithFormat:@"Did change from orientation %li to orientation %li", duration, fromOrientation, orientation];
  [(SBAlertLayoutPresentationVerifier *)self scheduleAlertLayoutVerificationForReason:orientation];
}

- (void)addVerifier:(uint64_t)verifier
{
  if (verifier)
  {
    v2 = a2;
    os_unfair_lock_lock(&__verifierLock);
    v3 = +[SBAlertLayoutPresentationVerifier __lock_verifiers];
    [v3 addObject:v2];

    os_unfair_lock_unlock(&__verifierLock);
  }
}

- (void)removeVerifier:(uint64_t)verifier
{
  if (verifier)
  {
    v2 = a2;
    os_unfair_lock_lock(&__verifierLock);
    v3 = +[SBAlertLayoutPresentationVerifier __lock_verifiers];
    [v3 removeObject:v2];

    os_unfair_lock_unlock(&__verifierLock);
  }
}

- (void)_performLayoutVerification
{
  if (self)
  {
    if (([(SBAlertLayoutPresentationVerifier *)self _hasBrokenHostingLayerInvariants]& 1) != 0 || ([(SBAlertLayoutPresentationVerifier *)self _hasBrokenWindowInvariants]& 1) != 0 || (hasBrokenAlertPresentation = [(SBAlertLayoutPresentationVerifier *)self _hasBrokenAlertPresentationInvariants], hasBrokenAlertPresentation))
    {
      if (*&self[8].isa == -1.79769313e308)
      {
        BSContinuousMachTimeNow();
        self[8].isa = v2;
      }

      v3 = BSContinuousMachTimeNow();
      if (v4 - *&self[8].isa >= 10.0)
      {
        v6 = SBLogAlertItems(v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_ERROR, "Omitting giant layout dump. We've logged it enough.", buf, 2u);
        }
      }

      else
      {
        [(SBAlertLayoutPresentationVerifier *)self _logAlertItemLayout];
        if (__isReportingBadPositions == 1)
        {
          [(SBAlertLayoutPresentationVerifier *)self _logToAutoBugCapture];
        }
      }

      [(SBAlertLayoutPresentationVerifier *)self _fixAlertItemLayout];
    }

    else
    {
      v8 = SBLogAlertItems(hasBrokenAlertPresentation);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v9 = 0;
        _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "Alert layout appears correct.", v9, 2u);
      }

      self[8].isa = 0xFFEFFFFFFFFFFFFFLL;
    }
  }
}

- (void)_stopTrackingBadPositions
{
  if (self)
  {
    [*(self + 48) invalidate];
    v2 = *(self + 48);
    *(self + 48) = 0;
  }
}

- (void)_logToAutoBugCapture
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    if (__isReportingBadPositions == 1)
    {
      v2 = *(self + 56);
      if (v2 == 0.0 || (BSContinuousMachTimeNow(), v3 - *(self + 56) >= 300.0))
      {
        BSContinuousMachTimeNow();
        *(self + 56) = v4;
        v5 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        processName = [processInfo processName];
        v8 = [v5 signatureWithDomain:@"SpringBoard" type:@"AlertLayout" subType:@"PositionVerifier" subtypeContext:0 detectedProcess:processName triggerThresholdValues:0];

        v9 = *MEMORY[0x277D6AFF0];
        v12[0] = *MEMORY[0x277D6AFF8];
        v12[1] = v9;
        v13[0] = MEMORY[0x277CBEC28];
        v13[1] = MEMORY[0x277CBEC28];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __57__SBAlertLayoutPresentationVerifier__logToAutoBugCapture__block_invoke;
        v11[3] = &unk_2783BE8E0;
        v11[4] = self;
        *&v11[5] = v2;
        [v5 snapshotWithSignature:v8 duration:MEMORY[0x277CBEBF8] events:0 payload:v10 actions:v11 reply:0.0];
      }
    }
  }
}

- (uint64_t)_hasBrokenHostingLayerInvariants
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (*(self + 24))
    {
      mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
      _scene = [*(selfCopy + 24) _scene];
      identifier = [_scene identifier];
      v5 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:identifier];

      uiPresentationManager = [v5 uiPresentationManager];
      defaultPresentationContext = [uiPresentationManager defaultPresentationContext];
      layerPresentationOverrides = [defaultPresentationContext layerPresentationOverrides];

      v9 = [MEMORY[0x277D75968] targetForUIWindow:*(selfCopy + 24)];
      v10 = [layerPresentationOverrides objectForKey:v9];
      transformer = [v10 transformer];

      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      if (transformer)
      {
        objc_msgSend_transform(transformer);
      }

      else
      {
        v22 = *MEMORY[0x277CBF2C0];
        v23 = *(MEMORY[0x277CBF2C0] + 16);
        v24 = *(MEMORY[0x277CBF2C0] + 32);
      }

      [*(selfCopy + 24) bounds];
      OUTLINED_FUNCTION_4_14();
      MidX = CGRectGetMidX(v31);
      v32.origin.x = OUTLINED_FUNCTION_3_23();
      MidY = CGRectGetMidY(v32);
      v14 = vaddq_f64(v24, vmlaq_n_f64(vmulq_n_f64(v23, MidY), v22, MidX));
      selfCopy = MidX != v14.f64[0];
      if (MidX != v14.f64[0])
      {
        point = v14;
        v20 = MidY;
        v15 = SBLogAlertItems(v12);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v30.y = v20;
          v30.x = MidX;
          v17 = NSStringFromCGPoint(v30);
          v18 = NSStringFromCGPoint(point);
          *buf = 138543618;
          v26 = v17;
          v27 = 2114;
          v28 = v18;
          _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "Alert window hosting layer has misaligned transform. Layer midpoint: %{public}@. Transformed midpoint:  %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (uint64_t)_hasBrokenWindowInvariants
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      screen = [result screen];
      v3 = *(v1 + 40);

      [*(v1 + 24) bounds];
      OUTLINED_FUNCTION_4_14();
      [*(v1 + 40) bounds];
      v18.origin.x = OUTLINED_FUNCTION_3_23();
      v4 = CGRectEqualToRect(v18, v21);
      isHidden = [*(v1 + 24) isHidden];
      v6 = isHidden | v4;
      if (screen == v3)
      {
        coordinateSpace = [*(v1 + 40) coordinateSpace];
        [*(v1 + 24) bounds];
        [coordinateSpace convertRect:*(v1 + 24) fromCoordinateSpace:?];
        OUTLINED_FUNCTION_4_14();

        v19.origin.x = OUTLINED_FUNCTION_3_23();
        MidX = CGRectGetMidX(v19);
        [*(v1 + 40) bounds];
        v10 = vabdd_f64(MidX, CGRectGetMidX(v20));
        isHidden = [*(v1 + 24) isHidden];
        if (v10 < 1.0)
        {
          v7 = 1;
        }

        else
        {
          v7 = isHidden;
        }

        if (v6 & v7)
        {
          return 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = SBLogAlertItems(isHidden);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12[0] = 67109632;
        v12[1] = screen == v3;
        v13 = 1024;
        v14 = v6 & 1;
        v15 = 1024;
        v16 = v7;
        _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "Alert window invariants broken. correctScreenPresentation:%{BOOL}i correctBounds:%{BOOL}i correctXLayout:%{BOOL}i", v12, 0x14u);
      }

      return 1;
    }
  }

  return result;
}

- (uint64_t)_hasBrokenAlertPresentationInvariants
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self[4].isa);
    currentlyPresentedAlertItem = [WeakRetained currentlyPresentedAlertItem];

    alertController = [currentlyPresentedAlertItem alertController];
    view = [alertController view];
    presentationController = [alertController presentationController];
    if (presentationController)
    {
      v7 = presentationController;
      window = [view window];
      if (window)
      {
        v9 = window;
        window2 = [view window];
        isHidden = [window2 isHidden];

        if ((isHidden & 1) == 0)
        {
          window3 = [view window];
          v13 = *(selfCopy + 24);

          v14 = *(selfCopy + 40);
          screen = [*(selfCopy + 24) screen];

          if (v14 != screen)
          {
            v17 = 0;
            goto LABEL_15;
          }

          coordinateSpace = [*(selfCopy + 40) coordinateSpace];
          [view bounds];
          [coordinateSpace convertRect:view fromCoordinateSpace:?];
          OUTLINED_FUNCTION_4_14();

          v28.origin.x = OUTLINED_FUNCTION_3_23();
          MidX = CGRectGetMidX(v28);
          [*(selfCopy + 40) bounds];
          v21 = vabdd_f64(MidX, CGRectGetMidX(v29));
          v17 = v21 < 1.0;
          if (window3 != v13 || v21 >= 1.0)
          {
LABEL_15:
            v23 = SBLogAlertItems(v16);
            if (OUTLINED_FUNCTION_9_6(v23))
            {
              v24[0] = 67109376;
              v24[1] = window3 == v13;
              v25 = 1024;
              v26 = v17;
              _os_log_error_impl(&dword_21ED4E000, selfCopy, OS_LOG_TYPE_ERROR, "Alert layout invariants broken. correctScreenPresentation:%{BOOL}i correctXLayout:%{BOOL}i", v24, 0xEu);
            }

            selfCopy = 1;
            goto LABEL_9;
          }
        }
      }

      else
      {
      }
    }

    selfCopy = 0;
LABEL_9:
  }

  return selfCopy;
}

- (void)_logAlertItemLayout
{
  v208 = *MEMORY[0x277D85DE8];
  if (self)
  {
    selfCopy = self;
    v4 = SBLogAlertItems(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_fault_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_FAULT, "Broken invariant in alert item layout.", &buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((selfCopy + 32));
    currentlyPresentedAlertItem = [WeakRetained currentlyPresentedAlertItem];

    v7 = arc4random();
    HIDWORD(v196) = v7;
    v8 = SBLogAlertItems(v7);
    if (OUTLINED_FUNCTION_9_6(v8))
    {
      v92 = *(selfCopy + 16);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v92;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v93, v94, v95, v96, v97, 0xCu);
    }

    v10 = SBLogAlertItems(v9);
    if (OUTLINED_FUNCTION_9_6(v10))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = v98;
      *(&buf.a + 4) = currentlyPresentedAlertItem;
      WORD2(buf.b) = 1024;
      *(&buf.b + 6) = v99;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v100, v101, v102, v103, v104, 0x12u);
    }

    v12 = SBLogAlertItems(v11);
    if (OUTLINED_FUNCTION_9_6(v12))
    {
      OUTLINED_FUNCTION_8_5();
      v105 = *(selfCopy + 24);
      [v105 bounds];
      v106 = NSStringFromCGRect(v211);
      LODWORD(buf.a) = 67109634;
      HIDWORD(buf.a) = v4;
      LOWORD(buf.b) = 2114;
      *(&buf.b + 2) = v105;
      WORD1(buf.c) = 2114;
      *(&buf.c + 4) = v106;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v107, v108, v109, v110, v111, 0x1Cu);
    }

    v14 = SBLogAlertItems(v13);
    if (OUTLINED_FUNCTION_9_6(v14))
    {
      OUTLINED_FUNCTION_8_5();
      _contextId = [*(selfCopy + 24) _contextId];
      LODWORD(buf.a) = 67109376;
      HIDWORD(buf.a) = v4;
      LOWORD(buf.b) = 1024;
      *(&buf.b + 2) = _contextId;
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v113, v114, v115, v116, v117, 0xEu);
    }

    v16 = SBLogAlertItems(v15);
    if (OUTLINED_FUNCTION_9_6(v16))
    {
      OUTLINED_FUNCTION_8_5();
      screen = [*(selfCopy + 24) screen];
      OUTLINED_FUNCTION_0_45(screen, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v119, v120, v121, v122, v123, 0x12u);
    }

    v18 = SBLogAlertItems(v17);
    if (OUTLINED_FUNCTION_9_6(v18))
    {
      OUTLINED_FUNCTION_8_5();
      _scene = [*(selfCopy + 24) _scene];
      OUTLINED_FUNCTION_0_45(_scene, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v125, v126, v127, v128, v129, 0x12u);
    }

    v20 = SBLogAlertItems(v19);
    if (OUTLINED_FUNCTION_9_6(v20))
    {
      OUTLINED_FUNCTION_8_5();
      _scene2 = [*(selfCopy + 24) _scene];
      settings = [_scene2 settings];
      OUTLINED_FUNCTION_0_45(settings, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v132, v133, v134, v135, v136, 0x12u);
    }

    v22 = SBLogAlertItems(v21);
    if (OUTLINED_FUNCTION_9_6(v22))
    {
      OUTLINED_FUNCTION_8_5();
      _scene3 = [*(selfCopy + 24) _scene];
      clientSettings = [_scene3 clientSettings];
      OUTLINED_FUNCTION_0_45(clientSettings, 1.5047e-36);
      OUTLINED_FUNCTION_5_12();
      _os_log_error_impl(v139, v140, v141, v142, v143, 0x12u);
    }

    alertController = [currentlyPresentedAlertItem alertController];
    if (alertController)
    {
      v24 = alertController;
      OUTLINED_FUNCTION_8_5();
      do
      {
        v26 = SBLogAlertItems(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v2 = NSStringFromClass(v28);
          LODWORD(buf.a) = 67109634;
          HIDWORD(buf.a) = v4;
          LOWORD(buf.b) = 2114;
          *(&buf.b + 2) = v2;
          WORD1(buf.c) = 2048;
          *(&buf.c + 4) = v24;
          _os_log_error_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_ERROR, "DL%x: View controller in presentation hierarchy: <%{public}@, %p>.", &buf, 0x1Cu);
        }

        presentingViewController = [v24 presentingViewController];

        v24 = presentingViewController;
      }

      while (presentingViewController);
    }

    alertController2 = [currentlyPresentedAlertItem alertController];
    view = [alertController2 view];

    if (view)
    {
      LODWORD(v4) = 2114;
      do
      {
        v32 = SBLogAlertItems(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [view center];
          v2 = NSStringFromCGPoint(v209);
          [view bounds];
          v34 = NSStringFromCGRect(v210);
          objc_msgSend_transform(view);
          NSStringFromCGAffineTransform(&buf);
          v35 = selfCopy;
          v37 = v36 = currentlyPresentedAlertItem;
          LODWORD(buf.a) = 67110146;
          HIDWORD(buf.a) = WORD2(v196);
          LOWORD(buf.b) = 2114;
          *(&buf.b + 2) = view;
          WORD1(buf.c) = 2114;
          *(&buf.c + 4) = v2;
          WORD2(buf.d) = 2114;
          *(&buf.d + 6) = v34;
          HIWORD(buf.tx) = 2114;
          *&buf.ty = v37;
          _os_log_error_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_ERROR, "DL%x: View in hierarchy: %{public}@. Center: %{public}@. Bounds: %{public}@. Transform: %{public}@", &buf, 0x30u);

          currentlyPresentedAlertItem = v36;
          selfCopy = v35;
        }

        superview = [view superview];

        view = superview;
      }

      while (superview);
    }

    _scene4 = [*(selfCopy + 24) _scene];
    if (_scene4)
    {
      mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
      identifier = [_scene4 identifier];
      v41 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:identifier];
    }

    else
    {
      v41 = 0;
    }

    uiPresentationManager = [v41 uiPresentationManager];
    defaultPresentationContext = [uiPresentationManager defaultPresentationContext];

    v44 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
    v45 = SBLogAlertItems(v44);
    if (OUTLINED_FUNCTION_11_5(v45))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v144;
      OUTLINED_FUNCTION_2_30();
      *(v145 + 58) = v44;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v146, v147, "DL%x: Root window scene binder: %{public}@");
    }

    v47 = SBLogAlertItems(v46);
    if (OUTLINED_FUNCTION_11_5(v47))
    {
      OUTLINED_FUNCTION_8_5();
      rootWindow = [v44 rootWindow];
      OUTLINED_FUNCTION_0_45(rootWindow, 1.5047e-36);
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v149, v150, "DL%x: Root window: %{public}@");
    }

    v49 = SBLogAlertItems(v48);
    if (OUTLINED_FUNCTION_11_5(v49))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v151;
      OUTLINED_FUNCTION_2_30();
      *(v152 + 58) = v41;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v153, v154, "DL%x: Host scene: %{public}@");
    }

    v51 = SBLogAlertItems(v50);
    if (OUTLINED_FUNCTION_11_5(v51))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v155;
      OUTLINED_FUNCTION_2_30();
      *(v156 + 58) = defaultPresentationContext;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v157, v158, "DL%x: Host scene presentation context: %{public}@");
    }

    v53 = SBLogAlertItems(v52);
    if (OUTLINED_FUNCTION_11_5(v53))
    {
      OUTLINED_FUNCTION_8_5();
      layerPresentationOverrides = [defaultPresentationContext layerPresentationOverrides];
      OUTLINED_FUNCTION_0_45(layerPresentationOverrides, 1.5047e-36);
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v160, v161, "DL%x: Host scene layer presentation overrides: %{public}@");
    }

    v55 = SBLogAlertItems(v54);
    if (OUTLINED_FUNCTION_11_5(v55))
    {
      OUTLINED_FUNCTION_10_7();
      LODWORD(buf.a) = 67109378;
      HIDWORD(buf.a) = v162;
      OUTLINED_FUNCTION_2_30();
      *(v163 + 58) = _scene4;
      OUTLINED_FUNCTION_6_10(&dword_21ED4E000, v164, v165, "DL%x: Alert client scene: %{public}@");
    }

    memset(&buf, 0, sizeof(buf));
    sceneTransformer = [v44 sceneTransformer];
    v57 = sceneTransformer;
    if (sceneTransformer)
    {
      objc_msgSend_transform(sceneTransformer);
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v58 = *(MEMORY[0x277CBF2C0] + 16);
    *&v205.a = *MEMORY[0x277CBF2C0];
    *&v205.c = v58;
    *&v205.tx = *(MEMORY[0x277CBF2C0] + 32);
    v188 = v58;
    v191 = *&v205.a;
    v202 = *&v205.a;
    v203 = v58;
    v185 = *&v205.tx;
    v204 = *&v205.tx;
    hostTransformer = [defaultPresentationContext hostTransformer];

    if (hostTransformer)
    {
      hostTransformer2 = [defaultPresentationContext hostTransformer];
      hostTransformer = hostTransformer2;
      if (hostTransformer2)
      {
        objc_msgSend_transform(hostTransformer2);
      }

      else
      {
        memset(&v201, 0, sizeof(v201));
      }

      v205 = v201;
    }

    if (*(selfCopy + 24))
    {
      v4 = currentlyPresentedAlertItem;
      selfCopy = [MEMORY[0x277D75968] targetForUIWindow:?];
      layerPresentationOverrides2 = [defaultPresentationContext layerPresentationOverrides];
      v62 = [layerPresentationOverrides2 objectForKey:selfCopy];
      hostTransformer = [v62 transformer];

      if (hostTransformer)
      {
        objc_msgSend_transform(hostTransformer);
      }

      else
      {
        v202 = v191;
        v203 = v188;
        v204 = v185;
      }

      currentlyPresentedAlertItem = v4;
    }

    *&v201.a = v191;
    *&v201.c = v188;
    *&v201.tx = v185;
    *&t1.a = v191;
    *&t1.c = v188;
    *&t1.tx = v185;
    t2 = buf;
    v63 = CGAffineTransformConcat(&v201, &t1, &t2);
    t2 = v201;
    v72 = OUTLINED_FUNCTION_14_2(v63, v64, v65, v66, v67, v68, v69, v70, *&v205.tx, *&v205.c, v185.n128_u64[0], v185.n128_u64[1], v188.n128_i64[0], v188.n128_i64[1], v191, *(&v191 + 1), v194, v196, *&v205.a, *&v205.b, *&v205.c, *&v205.d, v71, v198);
    v201 = t1;
    t2 = t1;
    v80 = OUTLINED_FUNCTION_14_2(v72, v73, v74, v75, v76, v77, v78, v79, v204, v203, v186, v187, v189, v190, v192, v193, v195, v197, v202, *(&v202 + 1), v203.n128_i64[0], v203.n128_i64[1], *&t1.a, v199);
    v201 = t1;
    v81 = SBLogAlertItems(v80);
    if (OUTLINED_FUNCTION_12_4(v81))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&buf.a;
      *&t1.c = *&buf.c;
      v166 = OUTLINED_FUNCTION_13_3(*&buf.tx);
      hostTransformer = NSStringFromCGAffineTransform(v166);
      OUTLINED_FUNCTION_1_27(hostTransformer, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v167, v168, "DL%x: Root transform: %{public}@");
    }

    v83 = SBLogAlertItems(v82);
    if (OUTLINED_FUNCTION_12_4(v83))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&v205.a;
      *&t1.c = *&v205.c;
      v169 = OUTLINED_FUNCTION_13_3(*&v205.tx);
      hostTransformer = NSStringFromCGAffineTransform(v169);
      OUTLINED_FUNCTION_1_27(hostTransformer, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v170, v171, "DL%x: Scene transform: %{public}@");
    }

    v85 = SBLogAlertItems(v84);
    if (OUTLINED_FUNCTION_12_4(v85))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = v202;
      *&t1.c = v203;
      v172 = OUTLINED_FUNCTION_13_3(v204);
      hostTransformer = NSStringFromCGAffineTransform(v172);
      OUTLINED_FUNCTION_1_27(hostTransformer, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v173, v174, "DL%x: Alert layer transform: %{public}@");
    }

    v87 = SBLogAlertItems(v86);
    if (OUTLINED_FUNCTION_12_4(v87))
    {
      OUTLINED_FUNCTION_8_5();
      *&t1.a = *&v201.a;
      *&t1.c = *&v201.c;
      v175 = OUTLINED_FUNCTION_13_3(*&v201.tx);
      hostTransformer = NSStringFromCGAffineTransform(v175);
      OUTLINED_FUNCTION_1_27(hostTransformer, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v176, v177, "DL%x: Total combined transform: %{public}@");
    }

    v89 = SBLogAlertItems(v88);
    if (OUTLINED_FUNCTION_12_4(v89))
    {
      OUTLINED_FUNCTION_8_5();
      hostTransformer = [SBApp orientationAggregator];
      OUTLINED_FUNCTION_1_27(hostTransformer, 1.5047e-36);
      OUTLINED_FUNCTION_7_4(&dword_21ED4E000, v178, v179, "DL%x: Orientation state: %{public}@");
    }

    v90 = +[SBReachabilityManager sharedInstance];
    v91 = SBLogAlertItems(v90);
    if (OUTLINED_FUNCTION_11_5(v91))
    {
      OUTLINED_FUNCTION_8_5();
      reachabilityEnabled = [v90 reachabilityEnabled];
      reachabilityModeActive = [v90 reachabilityModeActive];
      [v90 reachabilityYOffset];
      v183 = v182;
      [v90 effectiveReachabilityYOffset];
      LODWORD(t1.a) = 67110144;
      HIDWORD(t1.a) = v4;
      LOWORD(t1.b) = 1024;
      *(&t1.b + 2) = reachabilityEnabled;
      HIWORD(t1.b) = 1024;
      LODWORD(t1.c) = reachabilityModeActive;
      WORD2(t1.c) = 2048;
      *(&t1.c + 6) = v183;
      HIWORD(t1.d) = 2048;
      t1.tx = v184;
      _os_log_error_impl(&dword_21ED4E000, hostTransformer, OS_LOG_TYPE_ERROR, "DL%x: Reachability enabled:%{BOOL}i active:%{BOOL}i offsetWhenActive:%f currentOffset:%f", &t1, 0x28u);
    }
  }
}

- (uint64_t)_fixAlertItemLayout
{
  if (result)
  {
    v3 = result;
    objc_msgSend_frame(*(result + 24), a2);
    OUTLINED_FUNCTION_4_14();
    [*(v3 + 40) bounds];
    v7.origin.x = OUTLINED_FUNCTION_3_23();
    result = CGRectEqualToRect(v7, v8);
    if ((result & 1) == 0)
    {
      v4 = SBLogAlertItems(result);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Broken alert layout getting fixed", v6, 2u);
      }

      v5 = *(v3 + 24);
      [*(v3 + 40) bounds];
      return [v5 setFrame:?];
    }
  }

  return result;
}

- (void)scheduleDelayedAlertLayoutVerificationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertLayoutPresentationVerifier.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)scheduleAlertLayoutVerificationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertLayoutPresentationVerifier.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end