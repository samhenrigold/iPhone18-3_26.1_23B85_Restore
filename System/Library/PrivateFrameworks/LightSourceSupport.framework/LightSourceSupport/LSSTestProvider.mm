@interface LSSTestProvider
- (LSSProviderDelegate)delegate;
- (LSSTestProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (void)_updateAngle:(double)angle forTime:;
- (void)_updateRealtime:(double)realtime forTime:;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LSSTestProvider

- (LSSTestProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  if (!LSSHasInternalUI(delegateCopy, v9))
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v18.receiver = self;
  v18.super_class = LSSTestProvider;
  v10 = [(LSSTestProvider *)&v18 init];
  if (v10)
  {
    if (qword_280D2F630 == -1)
    {
      v11 = _MergedGlobals_17;
      if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        objc_storeStrong(&v10->_queue, queue);
        objc_storeWeak(&v10->_delegate, delegateCopy);
        v12 = +[LSSSettings currentSettings];
        v10->_expectRealtimeUpdates = [(LSSSettings *)v12 BOOLForKey:?];
        defaults = [(LSSSettings *)v12 defaults];
        [defaults addObserver:v10 forKeyPath:@"test_realtime" options:1 context:0];

        defaults2 = [(LSSSettings *)v12 defaults];
        [defaults2 addObserver:v10 forKeyPath:@"test_lightAngle" options:5 context:0];

        goto LABEL_7;
      }
    }

    else
    {
      [LSSTestProvider initWithQueue:delegate:];
      v11 = _MergedGlobals_17;
      if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *v17 = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "starting", v17, 2u);
    goto LABEL_6;
  }

LABEL_7:
  self = v10;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (void)invalidate
{
  v5 = +[LSSSettings currentSettings];
  if ([(LSSSettings *)v5 dynamic])
  {
    defaults = [(LSSSettings *)v5 defaults];
    [defaults removeObserver:self forKeyPath:@"test_realtime"];

    defaults2 = [(LSSSettings *)v5 defaults];
    [defaults2 removeObserver:self forKeyPath:@"test_lightAngle"];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  v10 = LSSMediaTime();
  if ([pathCopy isEqualToString:@"test_lightAngle"])
  {
    v11 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (qword_280D2F630 == -1)
      {
        v15 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      else
      {
        [LSSTestProvider observeValueForKeyPath:ofObject:change:context:];
        v15 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      [LSSTestProvider observeValueForKeyPath:v15 ofObject:? change:? context:?];
      goto LABEL_15;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279812AB0;
    block[4] = self;
    v21 = v11;
    v22 = v10;
    v11 = v11;
    dispatch_async(queue, block);
    v13 = v21;
LABEL_9:

LABEL_15:
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:@"test_realtime"])
  {
    v11 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (qword_280D2F630 == -1)
      {
        v16 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      else
      {
        [LSSTestProvider observeValueForKeyPath:ofObject:change:context:];
        v16 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      [LSSTestProvider observeValueForKeyPath:v16 ofObject:? change:? context:?];
      goto LABEL_15;
    }

    v14 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v17[3] = &unk_279812AB0;
    v17[4] = self;
    v18 = v11;
    v19 = v10;
    v11 = v11;
    dispatch_async(v14, v17);
    v13 = v18;
    goto LABEL_9;
  }

LABEL_16:
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAngle:(double)angle forTime:
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F630 != -1)
    {
      dispatch_once(&qword_280D2F630, &__block_literal_global_17);
    }

    v6 = _MergedGlobals_17;
    if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEBUG))
    {
      *__dst = 0;
      _os_log_debug_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEBUG, "angle", __dst, 2u);
    }

    *(self + 80) = 0;
    *(self + 88) = 0;
    *(self + 96) = xmmword_255E9C9F0;
    v8 = __sincos_stret(a2 * 3.14159265 / 180.0);
    *&v7 = v8.__cosval;
    *(self + 32) = angle;
    *(&v7 + 1) = *&v8.__sinval;
    *(self + 48) = v7;
    *(self + 64) = 0u;
    *(self + 112) = 1065353216;
    if (*(self + 16) == 1)
    {
      if (*(self + 128))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *(self + 116) = v9;
    memcpy(__dst, (self + 32), 0x60uLL);
    WeakRetained = objc_loadWeakRetained((self + 136));
    OUTLINED_FUNCTION_0_8(WeakRetained, v11, v12, v13, v14, v15, v16, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11]);
    [v6 provider:self updatedLight:v18];

    *(self + 16) = 1;
  }
}

- (void)_updateRealtime:(double)realtime forTime:
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (qword_280D2F630 != -1)
    {
      dispatch_once(&qword_280D2F630, &__block_literal_global_17);
    }

    v6 = _MergedGlobals_17;
    if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "expect realtime: %d", buf, 8u);
    }

    if (*(self + 128) != a2)
    {
      *(self + 128) = a2;
      if ((a2 & 1) == 0)
      {
        if (qword_280D2F630 != -1)
        {
          dispatch_once(&qword_280D2F630, &__block_literal_global_17);
        }

        v7 = _MergedGlobals_17;
        if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_255E8B000, v7, OS_LOG_TYPE_DEFAULT, "need to pause", buf, 2u);
        }

        *(self + 32) = realtime;
        *(self + 116) = 0;
        memcpy(buf, (self + 32), 0x60uLL);
        WeakRetained = objc_loadWeakRetained((self + 136));
        OUTLINED_FUNCTION_0_8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11]);
        [v7 provider:self updatedLight:v16];
      }
    }
  }
}

void __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) doubleValue];
  v4 = *(a1 + 48);

  [(LSSTestProvider *)v2 _updateAngle:v3 forTime:v4];
}

void __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) BOOLValue];
  v4 = *(a1 + 48);

  [(LSSTestProvider *)v2 _updateRealtime:v3 forTime:v4];
}

@end