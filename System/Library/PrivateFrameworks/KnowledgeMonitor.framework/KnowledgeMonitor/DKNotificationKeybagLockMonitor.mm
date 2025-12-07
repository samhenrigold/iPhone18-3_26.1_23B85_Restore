@interface DKNotificationKeybagLockMonitor
@end

@implementation DKNotificationKeybagLockMonitor

uint64_t __39___DKNotificationKeybagLockMonitor_log__block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKNotificationKeybagLockMonitor");
  v1 = log_log_0;
  log_log_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id __41___DKNotificationKeybagLockMonitor_start__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = _DKNotificationKeybagLockMonitor;
  result = objc_msgSendSuper2(&v3, sel__instantMonitorNeedsActivation);
  if (result)
  {
    return [*(a1 + 32) _activate];
  }

  return result;
}

void __45___DKNotificationKeybagLockMonitor__activate__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v2, OS_LOG_TYPE_DEFAULT, "Checking current state of Device.KeybagLocked stream", buf, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:0];
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 KeybagLocked];
  v7 = [v6 publisherWithOptions:v3];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45___DKNotificationKeybagLockMonitor__activate__block_invoke_2;
  v18[3] = &unk_27856F2D8;
  v18[5] = buf;
  v18[6] = &v25;
  v18[4] = *(a1 + 32);
  v8 = [v7 sinkWithCompletion:&__block_literal_global_23 receiveInput:v18];
  Current = CFAbsoluteTimeGetCurrent();
  v10 = [MEMORY[0x277CCAC38] processInfo];
  [v10 systemUptime];
  v12 = Current - v11;

  v13 = *(v20 + 5);
  if (!v13 || ([v13 starting] & 1) == 0 && v26[3] < v12)
  {
    v14 = objc_alloc(MEMORY[0x277CF10E8]);
    v15 = [v14 initWithStarting:MEMORY[0x277CBEC38]];
    [*(a1 + 32) _updateWithKeybagLocked:v15 timestamp:v12];
    v16 = *(v20 + 5);
    *(v20 + 5) = v15;
    v17 = v15;

    v26[3] = v12;
  }

  if ([*(v20 + 5) isEqual:*(a1 + 40)])
  {
    objc_storeStrong((*(a1 + 32) + 176), *(v20 + 5));
    *(*(a1 + 32) + 168) = v26[3];
  }

  else
  {
    [*(a1 + 32) _updateWithKeybagLocked:*(a1 + 40) timestamp:*(a1 + 48)];
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v25, 8);
}

void __45___DKNotificationKeybagLockMonitor__activate__block_invoke_2(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v3 timestamp];
  *(*(a1[6] + 8) + 24) = v7;
  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 eventBody];
    [v3 timestamp];
    v11 = 138543618;
    v12 = v9;
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_DEFAULT, "Loaded last Device.KeybagLocked event %{public}@ at %f", &v11, 0x16u);
  }
}

id __40___DKNotificationKeybagLockMonitor_stop__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = _DKNotificationKeybagLockMonitor;
  result = objc_msgSendSuper2(&v3, sel__instantMonitorNeedsDeactivation);
  if (result)
  {
    return [*(a1 + 32) _deactivate];
  }

  return result;
}

void __47___DKNotificationKeybagLockMonitor__deactivate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = 0;

  *(*(a1 + 32) + 168) = 0;
}

double *__73___DKNotificationKeybagLockMonitor__enqueueKeybagLockedUpdate_timestamp___block_invoke(double *result)
{
  v1 = *(result + 4);
  if (*(v1 + 168) <= result[6])
  {
    v2 = result;
    result = [*(v1 + 176) isEqual:*(result + 5)];
    if ((result & 1) == 0)
    {
      v3 = *(v2 + 4);
      v4 = *(v2 + 5);
      v5 = v2[6];

      return [v3 _updateWithKeybagLocked:v4 timestamp:v5];
    }
  }

  return result;
}

@end