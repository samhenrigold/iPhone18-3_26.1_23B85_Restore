@interface STYSignpostStreamingStatistics
- (STYSignpostStreamingStatistics)init;
- (void)_emitTelemetryLockedEndTime:(uint64_t)time;
- (void)_resetLocked;
- (void)addSignpost:(id)signpost;
- (void)dealloc;
- (void)emitTelemetry;
@end

@implementation STYSignpostStreamingStatistics

- (STYSignpostStreamingStatistics)init
{
  v22.receiver = self;
  v22.super_class = STYSignpostStreamingStatistics;
  v2 = [(STYSignpostStreamingStatistics *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.sentry.signpostsMonitor.SignpostStreamingStatistics", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2->_queue);
    periodicTimer = v2->_periodicTimer;
    v2->_periodicTimer = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_periodicTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__STYSignpostStreamingStatistics_init__block_invoke;
    handler[3] = &unk_279B9B550;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_activate(v2->_periodicTimer);
    v10 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, v2->_queue);
    sigtermSource = v2->_sigtermSource;
    v2->_sigtermSource = v10;

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__0;
    v17[4] = __Block_byref_object_dispose__0;
    v18 = os_transaction_create();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__STYSignpostStreamingStatistics_init__block_invoke_61;
    v15[3] = &unk_279B9B578;
    objc_copyWeak(&v16, &location);
    v15[4] = v17;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v15);
    dispatch_source_set_event_handler(v2->_sigtermSource, v12);
    dispatch_activate(v2->_sigtermSource);
    [(STYSignpostStreamingStatistics *)v2 _resetLocked];
    v13 = v2;

    objc_destroyWeak(&v16);
    _Block_object_dispose(v17, 8);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__STYSignpostStreamingStatistics_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = mach_absolute_time();
  [(STYSignpostStreamingStatistics *)WeakRetained _emitTelemetryLockedEndTime:v1];
}

- (void)dealloc
{
  dispatch_source_cancel(self->_periodicTimer);
  dispatch_source_cancel(self->_sigtermSource);
  v3.receiver = self;
  v3.super_class = STYSignpostStreamingStatistics;
  [(STYSignpostStreamingStatistics *)&v3 dealloc];
}

- (void)addSignpost:(id)signpost
{
  signpostCopy = signpost;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__STYSignpostStreamingStatistics_addSignpost___block_invoke;
  v7[3] = &unk_279B9B4C0;
  v7[4] = self;
  v8 = signpostCopy;
  v6 = signpostCopy;
  dispatch_async(queue, v7);
}

void __46__STYSignpostStreamingStatistics_addSignpost___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) subsystem];
  v16 = [v2 objectForKeyedSubscript:v3];

  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) subsystem];
    [v4 setObject:v16 forKeyedSubscript:v5];
  }

  v6 = [*(a1 + 40) category];
  v7 = [v16 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [*(a1 + 40) category];
    [v16 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 40) name];
  v11 = [v7 objectForKeyedSubscript:v10];
  v12 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v11, "unsignedLongLongValue") + 1}];
  v13 = [*(a1 + 40) name];
  [v7 setObject:v12 forKeyedSubscript:v13];

  ++*(*(a1 + 32) + 48);
  v14 = *(a1 + 32);
  if (*(v14 + 48) >= 0xF4240uLL)
  {
    v15 = mach_absolute_time();
    [(STYSignpostStreamingStatistics *)v14 _emitTelemetryLockedEndTime:v15];
  }
}

- (void)emitTelemetry
{
  v3 = mach_absolute_time();
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__STYSignpostStreamingStatistics_emitTelemetry__block_invoke;
  v5[3] = &unk_279B9B5A0;
  v5[4] = self;
  v5[5] = v3;
  dispatch_async(queue, v5);
}

- (void)_emitTelemetryLockedEndTime:(uint64_t)time
{
  v79 = *MEMORY[0x277D85DE8];
  if (time)
  {
    timeCopy = time;
    if (_MergedGlobals != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_557);
    }

    v4 = __udivti3() / 1000000000.0;
    if (*(timeCopy + 48) || v4 >= 60.0)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = *(timeCopy + 16);
      v49 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      v7 = 0;
      v8 = 0;
      if (v49)
      {
        v52 = 0;
        v57 = 0;
        v11 = 0;
        v47 = *v71;
        v12 = v4;
        v48 = timeCopy;
        do
        {
          v13 = 0;
          do
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v51 = v8;
            v50 = v13;
            v54 = *(*(&v70 + 1) + 8 * v13);
            v55 = v7;
            v14 = [*(timeCopy + 16) objectForKeyedSubscript:?];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v58 = v14;
            v56 = [v14 countByEnumeratingWithState:&v66 objects:v77 count:16];
            if (v56)
            {
              v53 = *v67;
              do
              {
                v15 = 0;
                do
                {
                  if (*v67 != v53)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v60 = v15;
                  v61 = v11;
                  v59 = *(*(&v66 + 1) + 8 * v15);
                  v16 = [v58 objectForKeyedSubscript:?];
                  v62 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v17 = [v16 countByEnumeratingWithState:&v62 objects:v76 count:16];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = 0;
                    v20 = 0;
                    v21 = 0;
                    v22 = *v63;
                    do
                    {
                      for (i = 0; i != v18; ++i)
                      {
                        if (*v63 != v22)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v24 = *(*(&v62 + 1) + 8 * i);
                        v25 = [v16 objectForKeyedSubscript:v24];
                        unsignedLongLongValue = [v25 unsignedLongLongValue];

                        if (v20 < unsignedLongLongValue)
                        {
                          v26 = v24;

                          v19 = v26;
                          v20 = unsignedLongLongValue;
                        }

                        v21 += unsignedLongLongValue;
                      }

                      v18 = [v16 countByEnumeratingWithState:&v62 objects:v76 count:16];
                    }

                    while (v18);
                  }

                  else
                  {
                    v19 = 0;
                    v20 = 0;
                    v21 = 0;
                  }

                  v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v54, v59];
                  v28 = v27;
                  if (v57 < v21)
                  {
                    unsignedLongLongValue = v27;

                    v29 = v19;
                    v55 = v29;
                    v51 = v20;
                    v52 = unsignedLongLongValue;
                    v57 = v21;
                  }

                  v12 = v4;
                  v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:7];
                  [v30 setObject:v28 forKeyedSubscript:@"sc"];
                  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  [MEMORY[0x277CCABB0] numberWithDouble:v21 / v4];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  [v30 setObject:v19 forKeyedSubscript:@"largest_signpost"];
                  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_9() setObject:? forKeyedSubscript:?];

                  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v20 / v4];
                  [v30 setObject:v31 forKeyedSubscript:@"largest_signpost_rate"];

                  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
                  [v30 setObject:v32 forKeyedSubscript:@"duration"];

                  v33 = +[STYFrameworkHelper sharedHelper];
                  unsignedLongLongValue = [v33 logHandle];

                  if (os_log_type_enabled(unsignedLongLongValue, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v75 = v30;
                    _os_log_impl(&dword_2656CE000, unsignedLongLongValue, OS_LOG_TYPE_INFO, "Emitting com.apple.Sentry.SignpostStreaming.SubsystemCategory telemetry %@", buf, 0xCu);
                  }

                  v11 = v21 + v61;

                  AnalyticsSendEvent();
                  v15 = v60 + 1;
                }

                while (v60 + 1 != v56);
                v56 = [v58 countByEnumeratingWithState:&v66 objects:v77 count:16];
              }

              while (v56);
            }

            v13 = v50 + 1;
            timeCopy = v48;
            v7 = v55;
            v8 = v51;
          }

          while (v50 + 1 != v49);
          v49 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v49);
        v9 = v52;
        v10 = v57;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v4;
      }

      v34 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:9];
      [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
      v36 = v35 = v11;
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v37 = [MEMORY[0x277CCABB0] numberWithDouble:v35 / v4];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v38 = v9;
      [v34 setObject:v9 forKeyedSubscript:@"largest_sc"];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v40 = [MEMORY[0x277CCABB0] numberWithDouble:v10 / v4];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      [v34 setObject:v7 forKeyedSubscript:@"largest_signpost"];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v8 / v4];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      [OUTLINED_FUNCTION_6() setObject:? forKeyedSubscript:?];

      v44 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v44 logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v34;
        _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_INFO, "Emitting com.apple.Sentry.SignpostStreaming telemetry %@", buf, 0xCu);
      }

      AnalyticsSendEvent();
      [(STYSignpostStreamingStatistics *)timeCopy _resetLocked];

      logHandle2 = v38;
    }

    else
    {
      v5 = +[STYFrameworkHelper sharedHelper];
      logHandle2 = [v5 logHandle];

      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2656CE000, logHandle2, OS_LOG_TYPE_DEBUG, "No signposts, and only monitoring for less than a minute, not emitting telemetry", buf, 2u);
      }
    }
  }
}

void __38__STYSignpostStreamingStatistics_init__block_invoke_61(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = mach_absolute_time();
  [(STYSignpostStreamingStatistics *)WeakRetained _emitTelemetryLockedEndTime:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)_resetLocked
{
  if (self)
  {
    self[5] = mach_absolute_time();
    self[6] = 0;
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = self[2];
    self[2] = v2;

    dispatch_time(0, 21600000000000);
    v4 = OUTLINED_FUNCTION_6();

    dispatch_source_set_timer(v4, v5, v6, v7);
  }
}

@end