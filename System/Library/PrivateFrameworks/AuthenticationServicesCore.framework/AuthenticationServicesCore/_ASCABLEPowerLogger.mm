@interface _ASCABLEPowerLogger
- (_ASCABLEPowerLogger)init;
- (void)dealloc;
- (void)logAuthenticationFinishedEventIfNeeded;
- (void)logAuthenticationStartedEventIfNeeded;
@end

@implementation _ASCABLEPowerLogger

- (_ASCABLEPowerLogger)init
{
  v6.receiver = self;
  v6.super_class = _ASCABLEPowerLogger;
  v2 = [(_ASCABLEPowerLogger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(_ASCABLEPowerLogger *)self logAuthenticationFinishedEventIfNeeded];
  v3.receiver = self;
  v3.super_class = _ASCABLEPowerLogger;
  [(_ASCABLEPowerLogger *)&v3 dealloc];
}

- (void)logAuthenticationStartedEventIfNeeded
{
  v10[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60___ASCABLEPowerLogger_logAuthenticationStartedEventIfNeeded__block_invoke;
  v8[3] = &unk_1E815F9D0;
  v8[4] = self;
  [v3 setHandler:v8];
  if (!self->_didSendStartedEvent)
  {
    v4 = PLShouldLogRegisteredEvent();
    if (v4)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAuthorization(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_INFO, "Sending caBLE authentication started PowerLog event", v7, 2u);
      }

      v9 = @"AuthenticationDidStart";
      v10[0] = MEMORY[0x1E695E118];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      PLLogRegisteredEvent();
      self->_didSendStartedEvent = 1;
    }
  }
}

- (void)logAuthenticationFinishedEventIfNeeded
{
  v10[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___ASCABLEPowerLogger_logAuthenticationFinishedEventIfNeeded__block_invoke;
  v8[3] = &unk_1E815F9D0;
  v8[4] = self;
  [v3 setHandler:v8];
  if (self->_didSendStartedEvent && !self->_didSendFinishedEvent)
  {
    v4 = PLShouldLogRegisteredEvent();
    if (v4)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAuthorization(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_INFO, "Sending caBLE authentication finished PowerLog event", v7, 2u);
      }

      v9 = @"AuthenticationDidStart";
      v10[0] = MEMORY[0x1E695E110];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      PLLogRegisteredEvent();
      self->_didSendFinishedEvent = 1;
    }
  }
}

@end