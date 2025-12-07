@interface HKSleepHealthStore(HDSPSleep)
- (id)hdsp_persistSessions:()HDSPSleep;
- (uint64_t)hdsp_startSession;
- (uint64_t)hdsp_stopSession;
@end

@implementation HKSleepHealthStore(HDSPSleep)

- (uint64_t)hdsp_startSession
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting session", &v5, 0xCu);
  }

  return [self startSleepTrackingSession];
}

- (uint64_t)hdsp_stopSession
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopping session", &v5, 0xCu);
  }

  return [self stopSleepTrackingSession];
}

- (id)hdsp_persistSessions:()HDSPSleep
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  scheduler = [self scheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke;
  v12[3] = &unk_279C7C050;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [scheduler performBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end