@interface LSSResampler
- (LSSProviderDelegate)delegate;
- (LSSResampler)initWithProvider:(id)provider inUpdateInterval:(double)interval outUpdateInterval:(double)updateInterval delegate:(id)delegate;
- (void)_fire;
- (void)invalidate;
- (void)provider:(id)provider updatedLight:(id)light;
- (void)updateLightDirection:(id)direction;
@end

@implementation LSSResampler

- (void)_fire
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v7 = LSSMediaTime();
    bzero(__src, 0xD0uLL);
    [(LSSSampleBuffer *)*(self + 24) intervalContaining:v7];
    if (*&__src[12])
    {
      memset(v11, 0, sizeof(v11));
      memcpy(v10, __src, sizeof(v10));
      LSSLightDirectionFromTimeInInterval(v10, v11, v7);
      if (!DWORD1(v11[5]) && *&__src[12] == 1 && (*(self + 32) & 1) == 0)
      {
        if (qword_280D2F4B0 != -1)
        {
          dispatch_once(&qword_280D2F4B0, &__block_literal_global);
        }

        v8 = _MergedGlobals;
        if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_255E8B000, v8, OS_LOG_TYPE_DEFAULT, "pause", v10, 2u);
        }

        dispatch_suspend(*(self + 16));
        *(self + 32) = 1;
      }

      WeakRetained = objc_loadWeakRetained((self + 40));
      memcpy(v10, v11, 0x60uLL);
      [WeakRetained provider:self updatedLight:v10];
    }
  }
}

- (LSSResampler)initWithProvider:(id)provider inUpdateInterval:(double)interval outUpdateInterval:(double)updateInterval delegate:(id)delegate
{
  v25 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = LSSResampler;
  v13 = [(LSSResampler *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_inUpdateInterval = interval;
    v14->_outUpdateInterval = updateInterval;
    v14->_paused = 1;
    objc_storeStrong(&v14->_provider, provider);
    [providerCopy setDelegate:v14];
    if (v14->_outUpdateInterval <= 0.0)
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
    }

    if (qword_280D2F4B0 == -1)
    {
      v15 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        v16 = objc_alloc_init(LSSSampleBuffer);
        buffer = v14->_buffer;
        v14->_buffer = v16;

        v14->_additionalShiftToAccountForVariance = 0.01;
        timer = v14->_timer;
        v14->_timer = 0;

        goto LABEL_7;
      }
    }

    else
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
      v15 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *buf = 134218240;
    intervalCopy = interval;
    v23 = 2048;
    updateIntervalCopy = updateInterval;
    _os_log_impl(&dword_255E8B000, v15, OS_LOG_TYPE_DEFAULT, "inUpdateInterval: %f outUpdateInterval: %f", buf, 0x16u);
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (void)updateLightDirection:(id)direction
{
  var0 = direction.var0;
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(LSSProvider *)self->_provider queue:*&direction.var0];
  dispatch_assert_queue_V2(v5);

  inUpdateInterval = self->_inUpdateInterval;
  if (inUpdateInterval <= 0.0)
  {
    [LSSResampler updateLightDirection:];
  }

  if (inUpdateInterval > self->_outUpdateInterval)
  {
    **&var0 = LSSMediaTime() + self->_additionalShiftToAccountForVariance + self->_inUpdateInterval;
  }

  buffer = self->_buffer;
  v8 = *(*&var0 + 48);
  v21 = *(*&var0 + 32);
  v22 = v8;
  v9 = *(*&var0 + 80);
  v23 = *(*&var0 + 64);
  v24 = v9;
  v10 = *(*&var0 + 16);
  *buf = **&var0;
  v20 = v10;
  [(LSSSampleBuffer *)buffer append:buf];
  if (self->_paused)
  {
    if (qword_280D2F4B0 == -1)
    {
      v11 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        timer = self->_timer;
        if (!timer)
        {
          queue = [(LSSProvider *)self->_provider queue];
          v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
          v15 = self->_timer;
          self->_timer = v14;

          objc_initWeak(buf, self);
          dispatch_source_set_timer(self->_timer, 0, (self->_outUpdateInterval * 1000000000.0), 0x989680uLL);
          v16 = self->_timer;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __37__LSSResampler_updateLightDirection___block_invoke;
          handler[3] = &unk_279812700;
          objc_copyWeak(&v18, buf);
          dispatch_source_set_event_handler(v16, handler);
          objc_destroyWeak(&v18);
          objc_destroyWeak(buf);
          timer = self->_timer;
        }

        dispatch_resume(timer);
        self->_paused = 0;
        return;
      }
    }

    else
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
      v11 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "resume", buf, 2u);
    goto LABEL_8;
  }
}

- (void)provider:(id)provider updatedLight:(id)light
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(*&light.var0 + 48);
  v7[2] = *(*&light.var0 + 32);
  v7[3] = v4;
  v5 = *(*&light.var0 + 80);
  v7[4] = *(*&light.var0 + 64);
  v7[5] = v5;
  v6 = *(*&light.var0 + 16);
  v7[0] = **&light.var0;
  v7[1] = v6;
  [(LSSResampler *)self updateLightDirection:v7];
}

- (void)invalidate
{
  timer = self->_timer;
  if (timer)
  {
    if (self->_paused)
    {
      dispatch_resume(timer);
      timer = self->_timer;
    }

    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  provider = self->_provider;

  [(LSSProvider *)provider invalidate];
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__LSSResampler_updateLightDirection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(LSSResampler *)WeakRetained _fire:v1];
}

@end