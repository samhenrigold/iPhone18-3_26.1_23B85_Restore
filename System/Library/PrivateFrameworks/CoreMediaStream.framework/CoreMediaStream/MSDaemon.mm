@interface MSDaemon
- (BOOL)isBusy;
- (MSDaemon)init;
- (void)_didChangeIdleBusyState:(BOOL)state;
- (void)_hysteresisTimerDidFire:(id)fire;
- (void)releaseBusy;
- (void)releaseUIBusy;
- (void)retainBusy;
- (void)retainUIBusy;
@end

@implementation MSDaemon

- (void)_hysteresisTimerDidFire:(id)fire
{
  v7 = *MEMORY[0x277D85DE8];
  hysteresisTimer = [(MSDaemon *)self hysteresisTimer];
  [hysteresisTimer invalidate];

  [(MSDaemon *)self setHysteresisTimer:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Hysteresis-stabilized idled.", &v5, 0xCu);
  }

  [(MSDaemon *)self setStabilizedIsBusy:0];
  [(MSDaemon *)self stabilizedDidIdle];
}

- (void)_didChangeIdleBusyState:(BOOL)state
{
  stateCopy = state;
  v12 = *MEMORY[0x277D85DE8];
  hysteresisTimer = [(MSDaemon *)self hysteresisTimer];
  v6 = hysteresisTimer;
  if (stateCopy)
  {
    [hysteresisTimer invalidate];

    [(MSDaemon *)self setHysteresisTimer:0];
    if (![(MSDaemon *)self stabilizedIsBusy])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Hysteresis-stabilized unidled.", buf, 0xCu);
      }

      [(MSDaemon *)self setStabilizedIsBusy:1];
      [(MSDaemon *)self stabilizedDidUnidle];
    }
  }

  else
  {

    if (v6)
    {
      hysteresisTimer2 = [(MSDaemon *)self hysteresisTimer];
      hysteresisTimer3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [hysteresisTimer2 setFireDate:hysteresisTimer3];
    }

    else
    {
      v8 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__hysteresisTimerDidFire_ selector:0 userInfo:0 repeats:1.0];
      [(MSDaemon *)self setHysteresisTimer:v8];

      hysteresisTimer2 = [MEMORY[0x277CBEB88] currentRunLoop];
      hysteresisTimer3 = [(MSDaemon *)self hysteresisTimer];
      [hysteresisTimer2 addTimer:hysteresisTimer3 forMode:*MEMORY[0x277CBE738]];
    }
  }
}

- (void)releaseUIBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MSDaemon_releaseUIBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __25__MSDaemon_releaseUIBusy__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__MSDaemon_releaseUIBusy__block_invoke_2;
  v10[3] = &unk_278E92180;
  v10[4] = *(a1 + 32);
  v10[5] = &v15;
  v10[6] = v13;
  v10[7] = v11;
  dispatch_sync(v2, v10);

  if (*(v16 + 6))
  {
    v3 = *(a1 + 32);
    if (!v3[4] && !v3[3])
    {
      [v3 didIdle];
    }
  }

  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = *(v7 + 12);
    LODWORD(v7) = *(v7 + 16);
    *buf = 138543874;
    v20 = v6;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v7;
    v9 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Releasing UI busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
}

void *__25__MSDaemon_releaseUIBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 16))--;
  *(*(result[6] + 8) + 24) = *(result[4] + 16);
  *(*(result[7] + 8) + 24) = *(result[4] + 12);
  return result;
}

- (void)retainUIBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__MSDaemon_retainUIBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __24__MSDaemon_retainUIBusy__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __24__MSDaemon_retainUIBusy__block_invoke_2;
  v9[3] = &unk_278E92180;
  v9[4] = *(a1 + 32);
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  dispatch_sync(v2, v9);

  if (!*(v19 + 6) && *(v15 + 6) && !*(v11 + 6))
  {
    [*(a1 + 32) didUnidle];
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = *(v6 + 12);
    LODWORD(v6) = *(v6 + 16);
    *buf = 138543874;
    v23 = v5;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v6;
    v8 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Retaining UI busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void *__24__MSDaemon_retainUIBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 16))++;
  *(*(result[6] + 8) + 24) = *(result[4] + 16);
  *(*(result[7] + 8) + 24) = *(result[4] + 12);
  return result;
}

- (BOOL)isBusy
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  idleCountQueue = [(MSDaemon *)self idleCountQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__MSDaemon_isBusy__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(idleCountQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)releaseBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__MSDaemon_releaseBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __23__MSDaemon_releaseBusy__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__MSDaemon_releaseBusy__block_invoke_2;
  v9[3] = &unk_278E92180;
  v9[4] = *(a1 + 32);
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  dispatch_sync(v2, v9);

  if (*(v19 + 6))
  {
    if (!*(v15 + 6))
    {
      [*(a1 + 32) releasePowerAssertion];
      if (!*(v11 + 6))
      {
        [*(a1 + 32) didIdle];
      }
    }
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = *(v6 + 12);
    LODWORD(v6) = *(v6 + 16);
    *buf = 138543874;
    v23 = v5;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v6;
    v8 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Releasing busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void *__23__MSDaemon_releaseBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 12))--;
  *(*(result[6] + 8) + 24) = *(result[4] + 12);
  *(*(result[7] + 8) + 24) = *(result[4] + 16);
  return result;
}

- (void)retainBusy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__MSDaemon_retainBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __22__MSDaemon_retainBusy__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [*(a1 + 32) idleCountQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __22__MSDaemon_retainBusy__block_invoke_2;
  v9[3] = &unk_278E92180;
  v9[4] = *(a1 + 32);
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  dispatch_sync(v2, v9);

  if (!*(v19 + 6))
  {
    if (*(v15 + 6))
    {
      [*(a1 + 32) retainPowerAssertion];
      if (!*(v11 + 6))
      {
        [*(a1 + 32) didUnidle];
      }
    }
  }

  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = *(v6 + 12);
    LODWORD(v6) = *(v6 + 16);
    *buf = 138543874;
    v23 = v5;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v6;
    v8 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ Retaining busy count. Now busy = %d, UI busy = %d", buf, 0x18u);
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void *__22__MSDaemon_retainBusy__block_invoke_2(void *result)
{
  *(*(result[5] + 8) + 24) = (*(result[4] + 12))++;
  *(*(result[6] + 8) + 24) = *(result[4] + 12);
  *(*(result[7] + 8) + 24) = *(result[4] + 16);
  return result;
}

- (MSDaemon)init
{
  v6.receiver = self;
  v6.super_class = MSDaemon;
  v2 = [(MSDaemon *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MSDaemon idle count queue", 0);
    idleCountQueue = v2->_idleCountQueue;
    v2->_idleCountQueue = v3;
  }

  return v2;
}

@end