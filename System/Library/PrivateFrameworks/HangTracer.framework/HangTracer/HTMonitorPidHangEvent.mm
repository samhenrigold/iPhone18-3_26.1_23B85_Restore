@interface HTMonitorPidHangEvent
+ ($703747D08A2AF5480855600529176AF0)getSharedPageFromPid:(int)pid;
+ (void)_updateRunningBoardProcessMonitor;
+ (void)checkHangForPid:(int)pid;
+ (void)removePidFromProcessMonitoring:(int)monitoring;
+ (void)setupRunningBoardProcessMonitorForPid:(int)pid;
- (id)initHTMonitorPidHangEvent:(id *)event shmem_size:(unint64_t)shmem_size;
- (void)dealloc;
@end

@implementation HTMonitorPidHangEvent

- (id)initHTMonitorPidHangEvent:(id *)event shmem_size:(unint64_t)shmem_size
{
  v7.receiver = self;
  v7.super_class = HTMonitorPidHangEvent;
  result = [(HTMonitorPidHangEvent *)&v7 init];
  if (result)
  {
    *(result + 1) = event;
    *(result + 2) = shmem_size;
  }

  return result;
}

- (void)dealloc
{
  munmap(self->_shmem_region, self->_shmem_size);
  self->_shmem_region = 0;
  self->_shmem_size = 0;
  v3.receiver = self;
  v3.super_class = HTMonitorPidHangEvent;
  [(HTMonitorPidHangEvent *)&v3 dealloc];
}

+ (void)checkHangForPid:(int)pid
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HTMonitorPidHangEvent_checkHangForPid___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  pidCopy = pid;
  dispatch_async(_htMonitorConnectionQueue, block);
}

void __41__HTMonitorPidHangEvent_checkHangForPid___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = pidHangEventDict;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v6 = shared_ht_log_handle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = pidHangEventDict;
    _os_log_impl(&dword_1C8286000, v6, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid pidHangEventDict  %@", buf, 0xCu);
  }

  if (v4)
  {
    v8 = *(v4[1] + 4);
    v9 = shared_ht_log_handle(v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = *(v4[1] + 4);
      *buf = 67109120;
      LODWORD(v27) = v11;
      v12 = "HangTracerMonitor:checkHangForPid number of hang Events =  %d";
      v13 = v9;
      v14 = 8;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_13;
      }

      *buf = 0;
      v12 = "HangTracerMonitor:checkHangForPid number of hang Events is 0";
      v13 = v9;
      v14 = 2;
    }

    _os_log_impl(&dword_1C8286000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
LABEL_13:

    v17 = mach_absolute_time();
    v18 = v4[1];
    if (*(v18 + 4))
    {
      v19 = v17;
      v20 = 0;
      v21 = 32;
      do
      {
        v22 = (v18 + v21);
        v23 = (v22 - 6);
        LODWORD(v22) = atomic_load(v22);
        if (v22)
        {
          v24 = shared_ht_log_handle(v17);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = *(a1 + 32);
            *buf = 67109120;
            LODWORD(v27) = v25;
            _os_log_impl(&dword_1C8286000, v24, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid hang event suspend count is not 0 for pid=%u ", buf, 8u);
          }
        }

        else
        {
          HTCheckForHangForHTMonitor(v23, v4[1] + 4680, v19);
        }

        HTForegroundTrackingEnd(v23, v19, 3);
        ++v20;
        v18 = v4[1];
        v21 += 584;
      }

      while (v20 < *(v18 + 4));
    }

    goto LABEL_21;
  }

  v15 = shared_ht_log_handle(v7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 67109120;
    LODWORD(v27) = v16;
    _os_log_impl(&dword_1C8286000, v15, OS_LOG_TYPE_DEFAULT, "HangTracerMonitor:checkHangForPid(pid=%u) is not present in pidHangEventDict ", buf, 8u);
  }

LABEL_21:
}

+ (void)_updateRunningBoardProcessMonitor
{
  if (*monitor)
  {
    [monitor updateConfiguration:&__block_literal_global_7];
  }
}

void __58__HTMonitorPidHangEvent__updateRunningBoardProcessMonitor__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = processIdentifiers;
  v4 = a2;
  v5 = [v2 predicateMatchingIdentifiers:v3];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 setPredicates:v6];
}

+ (void)removePidFromProcessMonitoring:(int)monitoring
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = processIdentifiers;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 pid] == monitoring)
        {
          [processIdentifiers removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
}

+ (void)setupRunningBoardProcessMonitorForPid:(int)pid
{
  v3 = [MEMORY[0x1E69C75E0] identifierWithPid:*&pid];
  v4 = processIdentifiers;
  v9 = v3;
  if (!processIdentifiers)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = processIdentifiers;
    processIdentifiers = v5;

    v3 = v9;
    v4 = processIdentifiers;
  }

  [v4 addObject:v3];
  if (*monitor)
  {
    +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
  }

  else
  {
    v7 = [MEMORY[0x1E69C75F8] monitorWithConfiguration:&__block_literal_global_13];
    v8 = *monitor;
    *monitor = v7;
  }
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = processIdentifiers;
  v4 = a2;
  v5 = [v2 predicateMatchingIdentifiers:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x1E69C7630] descriptor];
  [v7 setValues:64];
  [v4 setStateDescriptor:v7];
  [v4 setServiceClass:33];
  [v4 setUpdateHandler:&__block_literal_global_17];
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = _htMonitorConnectionQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3;
  v10[3] = &unk_1E8302E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v2 = pidHangEventDict;
  v43 = (a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "pid")}];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v7 = v4[1];
    if (*(v7 + 4))
    {
      v8 = 0;
      v9 = 379;
      *&v6 = 67110146;
      v42 = v6;
      v44 = v4;
      v46 = v1;
      do
      {
        v10 = [*(v1 + 40) previousState];
        [v10 cpuRole];

        v11 = [*(v1 + 40) state];
        v12 = [v11 cpuRole];

        v13 = [*(v1 + 32) bundle];
        v14 = [v13 identifier];

        if (v14)
        {
          v16 = [*v43 bundle];
          v17 = [v16 identifier];
        }

        else
        {
          v19 = shared_ht_log_handle(v15);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C8286000, v19, OS_LOG_TYPE_INFO, "RB Notification contained a nil bundle identifier, defaulting to event bundle id.", buf, 2u);
          }

          v21 = (v7 + v9);
          if (*(v7 + v9))
          {
            *v21 = 0;
            v35 = (v21 - 255);
            v34 = shared_ht_log_handle(v20);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_1(v35, v34, v36, v37, v38, v39, v40, v41);
            }

            goto LABEL_18;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithCString:v7 + v9 - 255 encoding:1];
          v17 = v18;
        }

        v22 = shared_ht_log_handle(v18);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(v46 + 32) pid];
          NSStringFromRBSRole();
          v45 = v17;
          v25 = v24 = v12;
          v26 = NSStringFromRBSRole();
          v27 = [*(v46 + 40) state];
          v28 = [v27 lastStateChangeTimestamp];
          *buf = v42;
          v48 = v23;
          v49 = 2114;
          v50 = v45;
          v51 = 2114;
          v52 = v25;
          v53 = 2114;
          v54 = v26;
          v55 = 2112;
          v56 = v28;
          _os_log_impl(&dword_1C8286000, v22, OS_LOG_TYPE_DEFAULT, "Received RB Notification for CPU Role change of process(%d) '%{public}@'. Changed from %{public}@ to %{public}@ at %@", buf, 0x30u);

          v12 = v24;
          v17 = v45;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v30 = mach_absolute_time();
        v1 = v46;
        v31 = [*(v46 + 40) state];
        v32 = [v31 lastStateChangeTimestamp];
        v33 = HTGetMachAbsoluteTimeFromNSDate(v32, v30, Current);

        addNewCPURoleToHangEvent(v7 + v9 - 371, v33, v12);
        ++v8;
        v4 = v44;
        v7 = v44[1];
        v9 += 584;
      }

      while (v8 < *(v7 + 4));
    }
  }

  else
  {
    v34 = shared_ht_log_handle(v5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_2(v43, v34);
    }

LABEL_18:
  }
}

+ ($703747D08A2AF5480855600529176AF0)getSharedPageFromPid:(int)pid
{
  v3 = *&pid;
  label = dispatch_queue_get_label(0);
  v5 = strlen(htMonitorConnectionQueueLabel);
  v6 = strncmp(label, htMonitorConnectionQueueLabel, v5);
  if (v6)
  {
    v7 = shared_ht_log_handle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(HTMonitorPidHangEvent *)label getSharedPageFromPid:v7, v8, v9, v10, v11, v12, v13];
    }

    return 0;
  }

  else
  {
    dispatch_assert_queue_V2(_htMonitorConnectionQueue);
    v15 = pidHangEventDict;
    v16 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (v17)
    {
      shmem_region = [v17 shmem_region];
      if ([v17 shmem_size])
      {
        v18 = shmem_region == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        shmem_region = 0;
      }
    }

    else
    {
      shmem_region = 0;
    }
  }

  return shmem_region;
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "event->bundleID has been corrupted, final char in array is not \\0. bundleID: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_2(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [*a1 pid];
  v5 = [*a1 bundle];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2114;
  v8 = v5;
  _os_log_error_impl(&dword_1C8286000, a2, OS_LOG_TYPE_ERROR, "There is no HTMonitorPidHangEvent for process with pid %d and bundleInfo %{public}@", v6, 0x12u);
}

+ (void)getSharedPageFromPid:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "HTMonitor shared page accessed on the incorrect queue: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end