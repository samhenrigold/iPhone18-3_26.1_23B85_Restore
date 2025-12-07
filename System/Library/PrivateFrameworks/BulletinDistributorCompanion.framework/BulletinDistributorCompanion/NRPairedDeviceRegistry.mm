@interface NRPairedDeviceRegistry
@end

@implementation NRPairedDeviceRegistry

void __75__NRPairedDeviceRegistry_BoundedWait__blt_boundedWaitForActivePairedDevice__block_invoke()
{
  v0 = dispatch_semaphore_create(0);
  v1 = dispatch_queue_create("BLTBoundedWaitForActivePairedDevice", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__NRPairedDeviceRegistry_BoundedWait__blt_boundedWaitForActivePairedDevice__block_invoke_2;
  block[3] = &unk_278D31428;
  v2 = v0;
  v8 = v2;
  dispatch_async(v1, block);
  v3 = dispatch_time(0, 120000000000);
  v4 = dispatch_semaphore_wait(v2, v3);
  if (v4)
  {
    v5 = blt_general_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_FAULT, "Timed out calling [NRPairedDeviceRegistry waitForActivePairedDevice].", v6, 2u);
    }
  }
}

void __75__NRPairedDeviceRegistry_BoundedWait__blt_boundedWaitForActivePairedDevice__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 waitForActivePairedDevice];

  os_unfair_lock_lock(&blt_boundedWaitForActivePairedDevice_deviceLock);
  v4 = blt_boundedWaitForActivePairedDevice_device;
  blt_boundedWaitForActivePairedDevice_device = v3;
  v5 = v3;

  os_unfair_lock_unlock(&blt_boundedWaitForActivePairedDevice_deviceLock);
  dispatch_semaphore_signal(*(a1 + 32));
}

@end