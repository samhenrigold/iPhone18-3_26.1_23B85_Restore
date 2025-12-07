@interface EnablePowerMonitoring
@end

@implementation EnablePowerMonitoring

void ___EnablePowerMonitoring_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!sPowerMonitoringTimers)
  {
    v2 = +[PCLog timer];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_25E3EF000, v2, OS_LOG_TYPE_DEFAULT, "PCSimpleTimer - enabling power monitoring", &v9, 2u);
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = sPowerMonitoringTimers;
    sPowerMonitoringTimers = v3;

    if (!sPMConnection)
    {
      sPMConnection = IORegisterForSystemPower(0, &sPMPort, _powerChangedHandler, sPMNotifier);
      if (sPMConnection)
      {
        v5 = dispatch_queue_create("PCSimpleTimer-IOPowerManagement", 0);
        IONotificationPortSetDispatchQueue(sPMPort, v5);
      }
    }
  }

  [sPowerMonitoringTimers addObject:*(a1 + 32)];
  v6 = +[PCLog timer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [sPowerMonitoringTimers count];
    v9 = 138543618;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Enabling power monitoring for %{public}@ - %lu timers", &v9, 0x16u);
  }
}

@end