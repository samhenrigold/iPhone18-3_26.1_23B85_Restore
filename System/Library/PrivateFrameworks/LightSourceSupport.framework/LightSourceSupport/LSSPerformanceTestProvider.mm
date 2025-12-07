@interface LSSPerformanceTestProvider
- (LSSPerformanceTestProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (LSSProviderDelegate)delegate;
- (void)invalidate;
@end

@implementation LSSPerformanceTestProvider

- (LSSPerformanceTestProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  if (!LSSHasInternalUI(delegateCopy, v9))
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v25.receiver = self;
  v25.super_class = LSSPerformanceTestProvider;
  v10 = [(LSSPerformanceTestProvider *)&v25 init];
  if (v10)
  {
    if (qword_280D2F560 == -1)
    {
      v11 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        objc_storeStrong(v10 + 1, queue);
        v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v10 + 1));
        v13 = *(v10 + 2);
        *(v10 + 2) = v12;

        objc_storeWeak(v10 + 3, delegateCopy);
        v14 = LSSMediaTime();
        objc_initWeak(buf, v10);
        v15 = +[LSSSettings currentSettings];
        v16 = [(LSSSettings *)v15 doubleForKey:?];

        v17 = +[LSSSettings currentSettings];
        v18 = [(LSSSettings *)v17 doubleForKey:?];

        dispatch_source_set_timer(*(v10 + 2), 0, (v16 * 1000000000.0), 0x5F5E100uLL);
        v19 = *(v10 + 2);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke;
        handler[3] = &unk_279812870;
        objc_copyWeak(v23, buf);
        v23[1] = *&v14;
        v23[2] = *&v18;
        dispatch_source_set_event_handler(v19, handler);
        dispatch_activate(*(v10 + 2));
        objc_destroyWeak(v23);
        objc_destroyWeak(buf);
        goto LABEL_7;
      }
    }

    else
    {
      [LSSPerformanceTestProvider initWithQueue:delegate:];
      v11 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "init", buf, 2u);
    goto LABEL_6;
  }

LABEL_7:
  self = v10;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

void __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (qword_280D2F560 == -1)
  {
    v2 = _MergedGlobals_8;
    if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

LABEL_7:
    __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke_cold_2(v2);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke_cold_1();
  v2 = _MergedGlobals_8;
  if (os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

LABEL_3:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
LABEL_4:
    v4 = LSSMediaTime();
    v6 = __sincos_stret((v4 - *(a1 + 40)) * *(a1 + 48));
    *&v5 = v6.__cosval;
    *(&v5 + 1) = *&v6.__sinval;
    v8 = v5;
    v7 = [WeakRetained delegate];
    *v9 = v4;
    v9[1] = 0;
    v10 = v8;
    v11 = 0u;
    v12 = 0;
    v13 = 0;
    v14 = xmmword_255E9C9F0;
    v15 = 0x23F800000;
    v16 = 0;
    [v7 provider:WeakRetained updatedLight:v9];
  }

LABEL_5:
}

- (void)invalidate
{
  dispatch_source_cancel(self->_timer);
  timer = self->_timer;
  self->_timer = 0;
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end