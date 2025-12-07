@interface NRLaunchEventMonitor
+ (id)copySharedMonitor;
- (NRLaunchEventMonitor)init;
- (uint64_t)processSCDUpdate:(uint64_t)update;
- (void)cancel;
- (void)processCWFEvent:(int)event forced:;
- (void)setLaunchFlags:(uint64_t)flags;
- (void)start;
- (void)triggerLaunchIfNeeded;
@end

@implementation NRLaunchEventMonitor

- (void)cancel
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NRLaunchEventMonitor_cancel__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__NRLaunchEventMonitor_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 9))
    {
      return;
    }

    *(v1 + 9) = 1;
  }

  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d cancelled launch event monitor", ", "[NRLaunchEventMonitor cancel]_block_invoke"", 282);
  }
}

- (void)start
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__NRLaunchEventMonitor_start__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__NRLaunchEventMonitor_start__block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 8) & 1) == 0)
  {
    if (nrSupportsPHSProxyClient_onceToken != -1)
    {
      dispatch_once(&nrSupportsPHSProxyClient_onceToken, &__block_literal_global_523);
    }

    if (nrSupportsPHSProxyClient_supported)
    {
      out_token = -1;
      objc_initWeak(&location, v1);
      v3 = *(v1 + 24);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__NRLaunchEventMonitor_startInner__block_invoke;
      handler[3] = &unk_27996ADE0;
      objc_copyWeak(&v34, &location);
      v4 = notify_register_dispatch("com.apple.private.restrict-post.networkrelay.launch", &out_token, v3, handler);

      if (v4)
      {
        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        v5 = nrCopyLogObj_sNRLogObj_8;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v12 = v5;
          v13 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

          if (!v13)
          {
            objc_destroyWeak(&v34);
            objc_destroyWeak(&location);
            return;
          }
        }

        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        v10 = nrCopyLogObj_sNRLogObj_8;
        _NRLogWithArgs(v10, 17, "notify_register_dispatch(%u) failed", v4);
        goto LABEL_37;
      }

      *(v1 + 12) = out_token;
      v6 = objc_alloc_init(MEMORY[0x277D02B18]);
      v7 = *(v1 + 32);
      *(v1 + 32) = v6;

      v8 = *(v1 + 32);
      [v8 activate];

      v9 = *(v1 + 32);
      v32 = 0;
      [v9 startMonitoringEventType:30 error:&v32];
      v10 = v32;

      if (v10)
      {
        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        v11 = nrCopyLogObj_sNRLogObj_8;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v24 = v11;
          v25 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

          if (!v25)
          {
LABEL_37:

            objc_destroyWeak(&v34);
            objc_destroyWeak(&location);
            return;
          }
        }

        if (nrCopyLogObj_onceToken_7 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
        }

        v26 = nrCopyLogObj_sNRLogObj_8;
        _NRLogWithArgs(v26, 17, "startMonitoringEventType(%@) failed", v10);

        goto LABEL_37;
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __34__NRLaunchEventMonitor_startInner__block_invoke_2;
      v30[3] = &unk_27996AE08;
      objc_copyWeak(&v31, &location);
      v14 = *(v1 + 32);
      [v14 setEventHandler:v30];

      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = v1;
      *(v1 + 48) = SCDynamicStoreCreate(0, @"NRLaunchEventMonitor", scDynamicStoreCallout, &context);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"ir0", *MEMORY[0x277CE16A0]);
      v16 = *(v1 + 56);
      *(v1 + 56) = NetworkInterfaceEntity;

      v17 = *(v1 + 56);
      v37[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

      SCDynamicStoreSetNotificationKeys(*(v1 + 48), v18, 0);
      v19 = *(v1 + 48);
      v20 = *(v1 + 24);
      SCDynamicStoreSetDispatchQueue(v19, v20);

      v21 = *(v1 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__NRLaunchEventMonitor_startInner__block_invoke_3;
      block[3] = &unk_27996B248;
      block[4] = v1;
      v28 = v18;
      v22 = v18;
      dispatch_async(v21, block);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      v23 = *(a1 + 32);
      if (v23)
      {
        *(v23 + 8) = 1;
      }

      if (nrCopyLogObj_onceToken_7 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d started launch event monitor");
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_7 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d PHS proxy client not supported");
      }
    }
  }
}

void __34__NRLaunchEventMonitor_startInner__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(WeakRetained + 9) & 1) == 0 && *(WeakRetained + 3) == a2)
  {
    v4 = WeakRetained;
    [(NRLaunchEventMonitor *)WeakRetained triggerLaunchIfNeeded];
    WeakRetained = v4;
  }
}

void __34__NRLaunchEventMonitor_startInner__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[9] & 1) == 0)
  {
    v4 = WeakRetained;
    [(NRLaunchEventMonitor *)WeakRetained processCWFEvent:v5 forced:0];
    WeakRetained = v4;
  }
}

uint64_t __34__NRLaunchEventMonitor_startInner__block_invoke_3(uint64_t a1)
{
  [(NRLaunchEventMonitor *)*(a1 + 32) processCWFEvent:1 forced:?];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a1 + 40);

    return [(NRLaunchEventMonitor *)result processSCDUpdate:v3];
  }

  return result;
}

- (void)processCWFEvent:(int)event forced:
{
  v5 = a2;
  v6 = v5;
  if (self && ([v5 type] == 30 || event))
  {
    v7 = *(self + 16) + 1;
    *(self + 16) = v7;
    v8 = dispatch_time(0, 2000000000);
    v9 = *(self + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__NRLaunchEventMonitor_processCWFEvent_forced___block_invoke;
    v10[3] = &unk_27996AE30;
    v10[4] = self;
    v11 = v7;
    dispatch_after(v8, v9, v10);
  }
}

- (uint64_t)processSCDUpdate:(uint64_t)update
{
  v3 = a2;
  v4 = v3;
  if ((*(update + 9) & 1) == 0)
  {
    v11 = v3;
    v5 = SCDynamicStoreCopyMultiple(*(update + 48), v3, 0);
    if ([v11 containsObject:*(update + 56)])
    {
      v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*(update + 56)];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CE17A0]];
        bOOLValue = [v8 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      if (bOOLValue == (*(update + 40) & 1))
      {
      }

      else
      {
        [(NRLaunchEventMonitor *)update setLaunchFlags:?];

        [(NRLaunchEventMonitor *)update triggerLaunchIfNeeded];
      }
    }

    v4 = v11;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)setLaunchFlags:(uint64_t)flags
{
  if (flags && *(flags + 40) != a2)
  {
    *(flags + 40) = a2;
    if (nrCopyLogObj_onceToken_7 != -1)
    {
      flagsCopy = flags;
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
      flags = flagsCopy;
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || (v2 = flags, v3 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT), flags = v2, v3))
    {
      v4 = *(flags + 40);
      v5 = MEMORY[0x277CBEB18];
      v6 = nrCopyLogObj_sNRLogObj_8;
      v7 = objc_alloc_init(v5);
      v8 = v7;
      if (v4)
      {
        [v7 addObject:@"PHSClientActiveWithIR"];
      }

      if ((v4 & 2) != 0)
      {
        [v8 addObject:@"PHSClientActiveWithSoftAP"];
      }

      if ([v8 count])
      {
        v9 = [v8 componentsJoinedByString:{@", "}];
      }

      else
      {
        v9 = &stru_286D23DB8;
      }

      v11 = v9;

      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d updated launch flags: [%@]", ", "[NRLaunchEventMonitor setLaunchFlags:]"", 112, v11);
    }
  }
}

- (void)triggerLaunchIfNeeded
{
  if (self && *(self + 40))
  {
    if (nrCopyLogObj_onceToken_7 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(self + 40);
      v3 = MEMORY[0x277CBEB18];
      v4 = nrCopyLogObj_sNRLogObj_8;
      v5 = objc_alloc_init(v3);
      v6 = v5;
      if (v2)
      {
        [v5 addObject:@"PHSClientActiveWithIR"];
      }

      if ((v2 & 2) != 0)
      {
        [v6 addObject:@"PHSClientActiveWithSoftAP"];
      }

      if ([v6 count])
      {
        v7 = [v6 componentsJoinedByString:{@", "}];
      }

      else
      {
        v7 = &stru_286D23DB8;
      }

      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d issuing launch notify w/ flags: %@", ", "[NRLaunchEventMonitor triggerLaunchIfNeeded]"", 91, v7);
    }

    if ((*(self + 40) & 3) != 0)
    {

      notify_post("com.apple.networkrelay.launch.phs");
    }
  }
}

void __47__NRLaunchEventMonitor_processCWFEvent_forced___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 9))
    {
      return;
    }

    if (*(a1 + 40) == *(v2 + 16))
    {
      v3 = *(v2 + 32);
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 40))
  {
    v3 = 0;
LABEL_5:
    v4 = [v3 currentKnownNetworkProfile];
    v5 = *(a1 + 32);
    v10 = v4;
    if (v5)
    {
      v6 = *(v5 + 40);
      if (![v4 isPersonalHotspot] || (v6 & 2) != 0)
      {
        if ((v6 & 2) != 0 && ([v10 isPersonalHotspot] & 1) == 0)
        {
          if (nrCopyLogObj_onceToken_7 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
          {
            v8 = nrCopyLogObj_22();
            _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Left PHS network", ", "[NRLaunchEventMonitor processCWFEvent:forced:]_block_invoke"", 218);
          }

          v9 = *(a1 + 32);
          if (v9)
          {
            [(NRLaunchEventMonitor *)v9 setLaunchFlags:?];
          }
        }

        goto LABEL_25;
      }
    }

    else if (![v4 isPersonalHotspot])
    {
LABEL_25:

      return;
    }

    if (nrCopyLogObj_onceToken_7 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 0, "%s%.30s:%-4d Joined PHS network", ", "[NRLaunchEventMonitor processCWFEvent:forced:]_block_invoke"", 214);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      [(NRLaunchEventMonitor *)v7 setLaunchFlags:?];
      v7 = *(a1 + 32);
    }

    [(NRLaunchEventMonitor *)v7 triggerLaunchIfNeeded];
    goto LABEL_25;
  }

  if (nrCopyLogObj_onceToken_7 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_7, &__block_literal_global_48);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_8, OS_LOG_TYPE_DEBUG))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_8, 2, "%s%.30s:%-4d Ignoring stale profile changed event", ", "[NRLaunchEventMonitor processCWFEvent:forced:]_block_invoke"", 208);
  }
}

- (NRLaunchEventMonitor)init
{
  v17 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NRLaunchEventMonitor;
  v2 = [(NRLaunchEventMonitor *)&v16 init];
  if (!v2)
  {
    v5 = nrCopyLogObj_22();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v8 = nrCopyLogObj_22();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRLaunchEventMonitor init]"", 101);

LABEL_9:
    v9 = _os_log_pack_size();
    v11 = &v15 - ((MEMORY[0x28223BE20](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v9, *v12, &dword_25B98C000, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRLaunchEventMonitor init]";
    v14 = nrCopyLogObj_22();
    _NRLogAbortWithPack(v14, v11);
  }

  v3 = v2;
  if (NRLaunchEventMonitorCopyQueue_onceToken != -1)
  {
    dispatch_once(&NRLaunchEventMonitorCopyQueue_onceToken, &__block_literal_global_64);
  }

  objc_storeStrong(&v3->_queue, NRLaunchEventMonitorCopyQueue_queue);
  return v3;
}

+ (id)copySharedMonitor
{
  if (copySharedMonitor_onceToken != -1)
  {
    dispatch_once(&copySharedMonitor_onceToken, &__block_literal_global_29);
  }

  v3 = copySharedMonitor_monitor;

  return v3;
}

uint64_t __41__NRLaunchEventMonitor_copySharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(NRLaunchEventMonitor);
  v1 = copySharedMonitor_monitor;
  copySharedMonitor_monitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end