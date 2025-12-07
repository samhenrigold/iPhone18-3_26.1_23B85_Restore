@interface CMContinuityCaptureMSNExceptionMonitor
+ (id)sharedMonitor;
+ (void)initialize;
- (id)_init;
- (void)decrementExceptionCountForEntity:(int64_t)entity;
- (void)incrementExceptionCountForEntity:(int64_t)entity;
- (void)reset;
@end

@implementation CMContinuityCaptureMSNExceptionMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedMonitor
{
  if (sharedMonitor_sOnceToken != -1)
  {
    +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sMonitor;

  return v3;
}

uint64_t __55__CMContinuityCaptureMSNExceptionMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sMonitor = [[CMContinuityCaptureMSNExceptionMonitor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CMContinuityCaptureMSNExceptionMonitor;
  v2 = [(CMContinuityCaptureMSNExceptionMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("msn-exception-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entityExceptions = v2->_entityExceptions;
    v2->_entityExceptions = v5;
  }

  return v2;
}

- (void)incrementExceptionCountForEntity:(int64_t)entity
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureMSNExceptionMonitor_incrementExceptionCountForEntity___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = entity;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureMSNExceptionMonitor_incrementExceptionCountForEntity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    LOBYTE(v3) = [v3 containsObject:?];

    if (v3)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v6;
      v25 = v6;
      v22 = v6;
      v23 = v6;
      v20 = v6;
      v21 = v6;
      v18 = v6;
      v19 = v6;
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v7 = v2[2];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [v7 addObject:?];

      if (dword_27ECB4D80)
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v24 = v10;
        v25 = v10;
        v22 = v10;
        v23 = v10;
        v20 = v10;
        v21 = v10;
        v18 = v10;
        v19 = v10;
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([v2[2] count] == 1)
      {
        if (dword_27ECB4D80)
        {
          v27 = 0;
          v26 = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v24 = v12;
          v25 = v12;
          v22 = v12;
          v23 = v12;
          v20 = v12;
          v21 = v12;
          v18 = v12;
          v19 = v12;
          v13 = v27;
          v14 = v26;
          if (os_log_type_enabled(v11, v26))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = 136315138;
            v17 = "[CMContinuityCaptureMSNExceptionMonitor incrementExceptionCountForEntity:]_block_invoke";
            _os_log_send_and_compose_impl(v15, 0, &v18, 128, &dword_242545000, v11, v14, "<<<< CMContinuityCaptureMSNExceptionMonitor >>>> %s: Beginning MSN exception", &v16);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MSNMonitorBeginException();
      }
    }
  }
}

- (void)decrementExceptionCountForEntity:(int64_t)entity
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureMSNExceptionMonitor_decrementExceptionCountForEntity___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = entity;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureMSNExceptionMonitor_decrementExceptionCountForEntity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    LODWORD(v3) = [v3 containsObject:?];

    if (v3)
    {
      v5 = v2[2];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      [v5 removeObject:?];

      if (dword_27ECB4D80)
      {
        v27 = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v24 = v8;
        v25 = v8;
        v22 = v8;
        v23 = v8;
        v20 = v8;
        v21 = v8;
        v18 = v8;
        v19 = v8;
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (![v2[2] count])
      {
        if (dword_27ECB4D80)
        {
          v27 = 0;
          v26 = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v24 = v12;
          v25 = v12;
          v22 = v12;
          v23 = v12;
          v20 = v12;
          v21 = v12;
          v18 = v12;
          v19 = v12;
          v13 = v27;
          v14 = v26;
          if (os_log_type_enabled(v11, v26))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v16 = 136315138;
            v17 = "[CMContinuityCaptureMSNExceptionMonitor decrementExceptionCountForEntity:]_block_invoke";
            _os_log_send_and_compose_impl(v15, 0, &v18, 128, &dword_242545000, v11, v14, "<<<< CMContinuityCaptureMSNExceptionMonitor >>>> %s: Ending MSN exception", &v16);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MSNMonitorEndException();
      }
    }

    else if (dword_27ECB4D80)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v10;
      v25 = v10;
      v22 = v10;
      v23 = v10;
      v20 = v10;
      v21 = v10;
      v18 = v10;
      v19 = v10;
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)reset
{
  if (dword_27ECB4D80)
  {
    v17 = 0;
    v16 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v4;
    v15 = v4;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    *location = v4;
    v9 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CMContinuityCaptureMSNExceptionMonitor_reset__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v7, location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(location);
}

void __47__CMContinuityCaptureMSNExceptionMonitor_reset__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] removeAllObjects];
    WeakRetained = v2;
  }
}

@end