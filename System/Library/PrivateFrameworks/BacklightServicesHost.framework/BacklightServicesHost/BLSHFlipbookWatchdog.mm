@interface BLSHFlipbookWatchdog
- (BLSHFlipbookWatchdog)initWithOSInterfaceProvider:(id)provider;
- (void)_globalQueue_initializeDCPStats;
- (void)_globalQueue_refreshDCPStats:(BOOL)stats;
- (void)_mainQueue_alertFor1hzFlipbookFrameMiss:(int64_t)miss;
- (void)dealloc;
- (void)enableAlertsUsingDefaults;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
@end

@implementation BLSHFlipbookWatchdog

- (BLSHFlipbookWatchdog)initWithOSInterfaceProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = BLSHFlipbookWatchdog;
  v6 = [(BLSHFlipbookWatchdog *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_osInterfaceProvider, provider);
    systemSleepMonitor = [(BLSHOSInterfaceProviding *)v7->_osInterfaceProvider systemSleepMonitor];
    sleepMonitor = v7->_sleepMonitor;
    v7->_sleepMonitor = systemSleepMonitor;

    [(BLSHSystemSleepMonitoring *)v7->_sleepMonitor addObserver:v7];
    [(BLSHFlipbookWatchdog *)v7 enableAlertsUsingDefaults];
    v10 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__BLSHFlipbookWatchdog_initWithOSInterfaceProvider___block_invoke;
    block[3] = &unk_27841E650;
    v13 = v7;
    dispatch_async(v10, block);
  }

  return v7;
}

- (void)dealloc
{
  ioReportSubscription = self->_ioReportSubscription;
  if (ioReportSubscription)
  {
    CFRelease(ioReportSubscription);
  }

  ioReportSubscribedChannels = self->_ioReportSubscribedChannels;
  if (ioReportSubscribedChannels)
  {
    CFRelease(ioReportSubscribedChannels);
  }

  v5.receiver = self;
  v5.super_class = BLSHFlipbookWatchdog;
  [(BLSHFlipbookWatchdog *)&v5 dealloc];
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BLSHFlipbookWatchdog_systemSleepMonitorDidWakeFromSleep___block_invoke;
  block[3] = &unk_27841E650;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)enableAlertsUsingDefaults
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v5 = @"blsh_1hz_flipbook_watchdog_enabled";
  v6[0] = MEMORY[0x277CBEC28];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 registerDefaults:v4];

  self->_alertsEnabled = [v3 BOOLForKey:@"blsh_1hz_flipbook_watchdog_enabled"];
}

- (void)_mainQueue_alertFor1hzFlipbookFrameMiss:(int64_t)miss
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = bls_flipbook_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(BLSHFlipbookWatchdog *)self _mainQueue_alertFor1hzFlipbookFrameMiss:miss, v5];
  }

  v8 = @"missedFrames";
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastKnown_aodStatsFlipbookMiss];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  AnalyticsSendEvent();

  if (self->_alertsEnabled)
  {
    _BLSHShowFlipbook1hzMissAlert(self->_lastKnown_aodStatsFlipbookMiss);
  }
}

- (void)_globalQueue_initializeDCPStats
{
  v3 = IOReportCopyChannelsInGroup();
  if (v3)
  {
    self->_ioReportSubscription = IOReportCreateSubscription();
  }

  if (!self->_ioReportSubscription || !self->_ioReportSubscribedChannels)
  {
    v4 = bls_flipbook_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHFlipbookWatchdog _globalQueue_initializeDCPStats];
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  [(BLSHFlipbookWatchdog *)self _globalQueue_refreshDCPStats:1];
}

- (void)_globalQueue_refreshDCPStats:(BOOL)stats
{
  if (self->_ioReportSubscription && self->_ioReportSubscribedChannels)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    Samples = IOReportCreateSamples();
    IOReportIterate();
    lastKnown_aodStatsFlipbookMiss = self->_lastKnown_aodStatsFlipbookMiss;
    v6 = v8[3];
    self->_lastKnown_aodStatsFlipbookMiss = v6;
    if (v6 > lastKnown_aodStatsFlipbookMiss)
    {
      BSDispatchMain();
    }

    CFRelease(Samples);
    _Block_object_dispose(&v7, 8);
  }
}

uint64_t __53__BLSHFlipbookWatchdog__globalQueue_refreshDCPStats___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = IOReportChannelGetChannelName();
  if ([v3 isEqualToString:@"1hz_frame_miss_"])
  {
    v4 = 0;
    *(*(*(a1 + 32) + 8) + 24) = IOReportSimpleGetIntegerValue();
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

- (void)_mainQueue_alertFor1hzFlipbookFrameMiss:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "1hz Flipbook frame miss detected from DCP stats. New miss count = %lld, delta = %lld", &v4, 0x16u);
}

@end