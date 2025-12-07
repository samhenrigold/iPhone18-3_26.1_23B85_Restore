@interface SBAlwaysOnCoverGestureRecognizer
- (SBAlwaysOnCoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_gestureBeganWithEvent:(__IOHIDEvent *)event;
- (void)_setState:(int64_t)state;
- (void)dealloc;
- (void)processHIDEvent:(__IOHIDEvent *)event;
@end

@implementation SBAlwaysOnCoverGestureRecognizer

- (SBAlwaysOnCoverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = SBAlwaysOnCoverGestureRecognizer;
  v7 = [(SBAlwaysOnCoverGestureRecognizer *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_maximumCoverDuration = 10.0;
    v8->_minimumScreenCoverage = 0.0;
    v8->_action = actionCopy;
    v8->_state = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = SBAlwaysOnCoverGestureRecognizer;
  [(SBAlwaysOnCoverGestureRecognizer *)&v3 dealloc];
}

- (void)processHIDEvent:(__IOHIDEvent *)event
{
  v16 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() != 1 || IOHIDEventGetIntegerValue() != 65280 || IOHIDEventGetIntegerValue() != 89)
  {
    return;
  }

  Phase = IOHIDEventGetPhase();
  v6 = Phase;
  if (Phase)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v8 = 1.0;
    if (IntegerValue >= 4)
    {
      IntegerValue = IOHIDEventGetDataValue();
      v8 = *IntegerValue;
    }

    minimumScreenCoverage = self->_minimumScreenCoverage;
    v10 = SBLogCoverGesture(IntegerValue);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8 >= minimumScreenCoverage)
    {
      if (v11)
      {
        v14 = 134217984;
        v15 = v8;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Cover gesture began with coverage %f", &v14, 0xCu);
      }

      Phase = [(SBAlwaysOnCoverGestureRecognizer *)self _gestureBeganWithEvent:event];
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
        v14 = 134217984;
        v15 = v8;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Cover gesture rejected. Coverage %f below threshold.", &v14, 0xCu);
      }

      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_6:
    if ((v6 & 8) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  if ((Phase & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  v12 = SBLogCoverGesture(Phase);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Cover gesture ended.", &v14, 2u);
  }

  Phase = [(SBAlwaysOnCoverGestureRecognizer *)self _gestureEndedWithEvent:event];
  if ((v6 & 8) != 0)
  {
LABEL_21:
    v13 = SBLogCoverGesture(Phase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Cover gesture canceled.", &v14, 2u);
    }

    [(SBAlwaysOnCoverGestureRecognizer *)self _gestureCanceledWithEvent:event];
  }
}

- (void)_gestureBeganWithEvent:(__IOHIDEvent *)event
{
  IOHIDEventGetTimeStampOfType();
  mach_continuous_time();
  v4 = BSTimeDifferenceFromMachTimeToMachTime();
  v6 = self->_maximumCoverDuration - v5;
  if (v6 <= 0.0)
  {
    v15 = SBLogCoverGesture(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Cover gesture failed because event too old.", v16, 2u);
    }

    selfCopy2 = self;
    v14 = 3;
  }

  else
  {
    [(BSContinuousMachTimer *)self->_timer invalidate];
    v7 = objc_alloc(MEMORY[0x277CF0BD8]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 initWithIdentifier:v9];
    timer = self->_timer;
    self->_timer = v10;

    v12 = self->_timer;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SBAlwaysOnCoverGestureRecognizer__gestureBeganWithEvent___block_invoke;
    v17[3] = &unk_2783AC430;
    v17[4] = self;
    [(BSContinuousMachTimer *)v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v17 queue:v6 handler:0.1];
    selfCopy2 = self;
    v14 = 1;
  }

  [(SBAlwaysOnCoverGestureRecognizer *)selfCopy2 _setState:v14];
}

uint64_t __59__SBAlwaysOnCoverGestureRecognizer__gestureBeganWithEvent___block_invoke(uint64_t a1)
{
  v2 = SBLogCoverGesture(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Cover gesture timed out.", v4, 2u);
  }

  return [*(a1 + 32) _setState:3];
}

- (void)_setState:(int64_t)state
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    if (state == 3)
    {
      [(BSContinuousMachTimer *)self->_timer invalidate];
      timer = self->_timer;
      self->_timer = 0;
    }

    else if (state == 2)
    {
      [(BSContinuousMachTimer *)self->_timer invalidate];
      v4 = self->_timer;
      self->_timer = 0;

      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      if (self->_action)
      {
        action = self->_action;
      }

      else
      {
        action = 0;
      }

      WeakRetained = objc_loadWeakRetained(&self->_target);
      v10[0] = *MEMORY[0x277CBE738];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [currentRunLoop performSelector:action target:WeakRetained argument:self order:0 modes:v9];
    }

    if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      self->_state = 0;
    }
  }
}

@end