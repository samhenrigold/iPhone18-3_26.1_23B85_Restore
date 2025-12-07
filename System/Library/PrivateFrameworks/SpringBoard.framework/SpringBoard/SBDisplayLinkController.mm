@interface SBDisplayLinkController
- (SBDisplayLinkController)initWithCADisplay:(id)display backlight:(id)backlight;
- (id)maintainDisplayLinkWhenBacklightIsOffForReason:(id)reason;
- (void)_reevaluateForcingFixedRateLinks;
- (void)backlight:(id)backlight didBlankToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)backlight:(id)backlight willUnblankToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode forEvents:(id)events abortedEvents:(id)abortedEvents;
- (void)invalidate;
@end

@implementation SBDisplayLinkController

- (SBDisplayLinkController)initWithCADisplay:(id)display backlight:(id)backlight
{
  v21 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  backlightCopy = backlight;
  v10 = displayCopy;
  if (!v10)
  {
    [SBDisplayLinkController initWithCADisplay:a2 backlight:self];
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBDisplayLinkController *)v11 initWithCADisplay:a2 backlight:self];
  }

  if (!backlightCopy)
  {
    [SBDisplayLinkController initWithCADisplay:a2 backlight:self];
  }

  v18.receiver = self;
  v18.super_class = SBDisplayLinkController;
  v12 = [(SBDisplayLinkController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_display, display);
    objc_storeStrong(&v13->_backlight, backlight);
    isForceFixedRateLinksEnabled = [(CADisplay *)v13->_display isForceFixedRateLinksEnabled];
    if (isForceFixedRateLinksEnabled)
    {
      v15 = SBLogBacklight(isForceFixedRateLinksEnabled);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        displayId = [(CADisplay *)v13->_display displayId];
        *buf = 67109120;
        v20 = displayId;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: resetting forceFixedRateLinksEnabled at bootstrap", buf, 8u);
      }

      [(CADisplay *)v13->_display setForceFixedRateLinksEnabled:0];
    }
  }

  return v13;
}

- (id)maintainDisplayLinkWhenBacklightIsOffForReason:(id)reason
{
  *&v25[7] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [(SBDisplayLinkController *)self maintainDisplayLinkWhenBacklightIsOffForReason:a2];
  }

  if (self->_maintainDisplayLinkWhenBacklightIsOffCount == 255)
  {
    [(SBDisplayLinkController *)self maintainDisplayLinkWhenBacklightIsOffForReason:a2];
  }

  v7 = SBLogBacklight(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    displayId = [(CADisplay *)self->_display displayId];
    *buf = 67109378;
    v23 = displayId;
    v24 = 2112;
    *v25 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: taking maintainDisplayLinkWhenBacklightIsOff assertion for %@", buf, 0x12u);
  }

  ++self->_maintainDisplayLinkWhenBacklightIsOffCount;
  if (!self->_observerRegistered)
  {
    self->_observerRegistered = 1;
    [(BLSHBacklightHostObservable *)self->_backlight addObserver:self];
    [(BLSHBacklightHostObservable *)self->_backlight backlightDisplayMode];
    v9 = IsBlankedForBLSBacklightDisplayMode();
    self->_displayLinkWouldBeOff = v9;
    v10 = SBLogBacklight(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      displayId2 = [(CADisplay *)self->_display displayId];
      displayLinkWouldBeOff = self->_displayLinkWouldBeOff;
      v13 = NSStringFromBLSBacklightDisplayMode();
      *buf = 67109634;
      v23 = displayId2;
      v24 = 1024;
      *v25 = displayLinkWouldBeOff;
      v25[2] = 2112;
      *&v25[3] = v13;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: _displayLinkWouldBeOff initialized to %{BOOL}i for %@", buf, 0x18u);
    }
  }

  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
  v14 = objc_alloc(MEMORY[0x277CF0CE8]);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayLinkController-%i:maintainDisplayLinkWhenBacklightIsOff", -[CADisplay displayId](self->_display, "displayId")];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke;
  v19[3] = &unk_2783B46E8;
  v20 = reasonCopy;
  v21 = a2;
  v19[4] = self;
  v16 = reasonCopy;
  v17 = [v14 initWithIdentifier:v15 forReason:v16 invalidationBlock:v19];

  return v17;
}

void __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  BSDispatchQueueAssertMain();
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (!*(v4 + 24))
  {
    __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke_cold_1(v4, a1, (a1 + 32));
  }

  v6 = SBLogBacklight(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 8) displayId];
    v8 = *(a1 + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: releasing maintainDisplayLinkWhenBacklightIsOff assertion for %@", v10, 0x12u);
  }

  --*(*v5 + 24);
  v9 = *v5;
  if (*(*v5 + 25) == 1 && !v9[24])
  {
    v9[25] = 0;
    [*(*v5 + 16) removeObserver:?];
    v9 = *v5;
  }

  [v9 _reevaluateForcingFixedRateLinks];
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_observerRegistered)
    {
      self->_observerRegistered = 0;
      v3 = [(BLSHBacklightHostObservable *)self->_backlight removeObserver:self];
    }

    if (self->_displayLinkForcedToFixedRate)
    {
      v4 = SBLogBacklight(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        displayId = [(CADisplay *)self->_display displayId];
        v6[0] = 67109120;
        v6[1] = displayId;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: resetting forceFixedRateLinksEnabled", v6, 8u);
      }

      [(CADisplay *)self->_display setForceFixedRateLinksEnabled:0];
    }
  }
}

- (void)_reevaluateForcingFixedRateLinks
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    v3 = self->_displayLinkWouldBeOff && (self->_maintainDisplayLinkWhenBacklightIsOffCount != 0);
    if (self->_displayLinkForcedToFixedRate != v3)
    {
      v4 = SBLogBacklight(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        displayId = [(CADisplay *)self->_display displayId];
        v6[0] = 67109376;
        v6[1] = displayId;
        v7 = 1024;
        v8 = v3;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: setting forceFixedRateLinksEnabled to %{BOOL}i", v6, 0xEu);
      }

      self->_displayLinkForcedToFixedRate = v3;
      [(CADisplay *)self->_display setForceFixedRateLinksEnabled:v3];
    }
  }
}

- (void)backlight:(id)backlight willUnblankToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode forEvents:(id)events abortedEvents:(id)abortedEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = BSDispatchQueueAssertMain();
  v9 = SBLogBacklight(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    displayId = [(CADisplay *)self->_display displayId];
    v11[0] = 67109120;
    v11[1] = displayId;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: display is unblanking - updating _displayLinkWouldBeOff to false", v11, 8u);
  }

  self->_displayLinkWouldBeOff = 0;
  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
}

- (void)backlight:(id)backlight didBlankToDisplayMode:(int64_t)mode fromDisplayMode:(int64_t)displayMode activeEvents:(id)events abortedEvents:(id)abortedEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = BSDispatchQueueAssertMain();
  v9 = SBLogBacklight(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    displayId = [(CADisplay *)self->_display displayId];
    v11[0] = 67109120;
    v11[1] = displayId;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: display is blanking - updating _displayLinkWouldBeOff to true", v11, 8u);
  }

  self->_displayLinkWouldBeOff = 1;
  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
}

- (void)initWithCADisplay:(uint64_t)a3 backlight:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBDisplayLinkController.m";
    v22 = 1024;
    v23 = 30;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCADisplay:(const char *)a1 backlight:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"backlight"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCADisplay:(const char *)a1 backlight:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a1);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)maintainDisplayLinkWhenBacklightIsOffForReason:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayLinkController-%i: preventing _maintainDisplayLinkWhenBacklightIsOffCount overflow", objc_msgSend(*(a1 + 8), "displayId")];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)maintainDisplayLinkWhenBacklightIsOffForReason:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayLinkController-%i: cannot adjust _maintainDisplayLinkWhenBacklightIsOffCount after invalidation", objc_msgSend(*(a1 + 8), "displayId")];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayLinkController-%i: preventing _maintainDisplayLinkWhenBacklightIsOffCount underflow", objc_msgSend(*(a1 + 8), "displayId")];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a2 + 48));
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end