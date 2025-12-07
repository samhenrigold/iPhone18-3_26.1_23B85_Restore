@interface BLSHUserIdleProvider
- (BLSHUserIdleProvider)init;
- (BLSHUserIdleProvidingDelegate)delegate;
- (void)_invalidate;
- (void)_pause;
- (void)_reset;
- (void)_resume;
- (void)_setIdleTimeout:(double)timeout shouldReset:(BOOL)reset;
- (void)_setShouldNotifyOfUnidle:(BOOL)unidle;
@end

@implementation BLSHUserIdleProvider

- (BLSHUserIdleProvider)init
{
  v17.receiver = self;
  v17.super_class = BLSHUserIdleProvider;
  v2 = [(BLSHUserIdleProvider *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldNotifyOfUnidleChanged = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attentionLostTimeoutDictionary = v3->_attentionLostTimeoutDictionary;
    v3->_attentionLostTimeoutDictionary = v4;

    v6 = objc_alloc_init(MEMORY[0x277CEF760]);
    attentionAwarenessClient = v3->_attentionAwarenessClient;
    v3->_attentionAwarenessClient = v6;

    v8 = objc_alloc_init(MEMORY[0x277CEF768]);
    attentionAwarenessConfiguration = v3->_attentionAwarenessConfiguration;
    v3->_attentionAwarenessConfiguration = v8;

    [(AWAttentionAwarenessConfiguration *)v3->_attentionAwarenessConfiguration setIdentifier:@"com.apple.Carousel.BacklightServices.UserIdleProvider"];
    [(AWAttentionAwarenessConfiguration *)v3->_attentionAwarenessConfiguration setEventMask:4095];
    objc_initWeak(&location, v3);
    v10 = v3->_attentionAwarenessClient;
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __28__BLSHUserIdleProvider_init__block_invoke;
    v14[3] = &unk_2784207B8;
    objc_copyWeak(&v15, &location);
    [(AWAttentionAwarenessClient *)v10 setEventHandlerWithQueue:v11 block:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__BLSHUserIdleProvider_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  if ([v3 eventMask])
  {
    v7 = [v3 associatedObject];
    if ([v7 isEqualToString:@"zeroTimeout"])
    {
      v8 = bls_backlight_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __28__BLSHUserIdleProvider_init__block_invoke_cold_1(v8);
      }
    }

    else if ([v7 isEqualToString:@"idleTimeout"])
    {
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEFAULT, "BLSHUserIdleProvider received user idle", buf, 2u);
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 idleProviderDidIdle:WeakRetained];
      }
    }
  }

  else if ([WeakRetained shouldNotifyOfUnidle])
  {
    v6 = bls_backlight_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "BLSHUserIdleProvider received user unidle", v10, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 idleProviderDidUnidle:WeakRetained];
    }
  }
}

- (void)_setIdleTimeout:(double)timeout shouldReset:(BOOL)reset
{
  resetCopy = reset;
  v32 = *MEMORY[0x277D85DE8];
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    idleTimeout = self->_idleTimeout;
    shouldNotifyOfUnidleChanged = self->_shouldNotifyOfUnidleChanged;
    *buf = 134218752;
    timeoutCopy2 = timeout;
    v26 = 2048;
    v27 = idleTimeout;
    v28 = 1024;
    v29 = resetCopy;
    v30 = 1024;
    v31 = shouldNotifyOfUnidleChanged;
    _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "BLSHUserIdleProvider _setIdleTimeout %lf currentTimeout %lf shouldReset=%{BOOL}u _shouldNotifyOfUnidleChanged=%{BOOL}u", buf, 0x22u);
  }

  if (vabdd_f64(timeout, self->_idleTimeout) > 2.22044605e-16 || self->_shouldNotifyOfUnidleChanged)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      timeoutCopy2 = timeout;
      v26 = 1024;
      LODWORD(v27) = resetCopy;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEFAULT, "BLSHUserIdleProvider updating timeout %lf shouldReset=%{BOOL}u", buf, 0x12u);
    }

    self->_shouldNotifyOfUnidleChanged = 0;
    self->_idleTimeout = timeout;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__BLSHUserIdleProvider__setIdleTimeout_shouldReset___block_invoke;
    v22[3] = &unk_278420808;
    v11 = v9;
    v23 = v11;
    [(NSMutableDictionary *)attentionLostTimeoutDictionary enumerateKeysAndObjectsUsingBlock:v22];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    [v11 setObject:@"idleTimeout" forKey:v12];

    attentionAwarenessConfiguration = self->_attentionAwarenessConfiguration;
    v14 = [v11 copy];
    [(AWAttentionAwarenessConfiguration *)attentionAwarenessConfiguration setAttentionLostTimeoutDictionary:v14];

    attentionAwarenessClient = self->_attentionAwarenessClient;
    v16 = self->_attentionAwarenessConfiguration;
    v21 = 0;
    [(AWAttentionAwarenessClient *)attentionAwarenessClient setConfiguration:v16 shouldReset:resetCopy error:&v21];
    v17 = v21;
    if (v17)
    {
      v18 = bls_backlight_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [BLSHUserIdleProvider _setIdleTimeout:shouldReset:];
      }
    }
  }

  else if (resetCopy)
  {
    [(BLSHUserIdleProvider *)self _reset];
  }
}

void __52__BLSHUserIdleProvider__setIdleTimeout_shouldReset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 isEqualToString:@"idleTimeout"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (void)_setShouldNotifyOfUnidle:(BOOL)unidle
{
  if (self->_shouldNotifyOfUnidle != unidle)
  {
    self->_shouldNotifyOfUnidleChanged = 1;
    self->_shouldNotifyOfUnidle = unidle;
    attentionLostTimeoutDictionary = self->_attentionLostTimeoutDictionary;
    if (unidle)
    {

      [(NSMutableDictionary *)attentionLostTimeoutDictionary setObject:@"zeroTimeout" forKey:&unk_28338DF18];
    }

    else
    {
      [(NSMutableDictionary *)attentionLostTimeoutDictionary removeAllObjects];
      v5 = self->_attentionLostTimeoutDictionary;
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_idleTimeout];
      [(NSMutableDictionary *)v5 setObject:@"idleTimeout" forKey:v6];
    }
  }
}

- (void)_pause
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v5 = 0;
  [(AWAttentionAwarenessClient *)attentionAwarenessClient suspendWithError:&v5];
  v3 = v5;
  if (v3)
  {
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHUserIdleProvider _pause];
    }
  }
}

- (void)_resume
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v5 = 0;
  [(AWAttentionAwarenessClient *)attentionAwarenessClient resumeWithError:&v5];
  v3 = v5;
  if (v3)
  {
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHUserIdleProvider _resume];
    }
  }
}

- (void)_reset
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  attentionAwarenessConfiguration = self->_attentionAwarenessConfiguration;
  v6 = 0;
  [(AWAttentionAwarenessClient *)attentionAwarenessClient setConfiguration:attentionAwarenessConfiguration shouldReset:1 error:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BLSHUserIdleProvider _reset];
    }
  }
}

- (void)_invalidate
{
  attentionAwarenessClient = self->_attentionAwarenessClient;
  v8 = 0;
  [(AWAttentionAwarenessClient *)attentionAwarenessClient invalidateWithError:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BLSHUserIdleProvider _invalidate];
    }
  }

  v6 = self->_attentionAwarenessClient;
  self->_attentionAwarenessClient = 0;

  attentionAwarenessConfiguration = self->_attentionAwarenessConfiguration;
  self->_attentionAwarenessConfiguration = 0;

  objc_storeWeak(&self->_delegate, 0);
}

- (BLSHUserIdleProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end