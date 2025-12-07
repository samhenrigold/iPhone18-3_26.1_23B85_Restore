@interface EntitlementABCIssue
- (BOOL)shouldBeReportedNow;
- (EntitlementABCIssue)initWithClient:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter;
- (id)context;
- (id)tag;
- (unint64_t)abcReason;
- (void)handleABCResult:(int)result;
- (void)report;
- (void)reportIfNeeded;
@end

@implementation EntitlementABCIssue

- (EntitlementABCIssue)initWithClient:(id)client processName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter
{
  clientCopy = client;
  nameCopy = name;
  dCopy = d;
  platformCopy = platform;
  reporterCopy = reporter;
  v20.receiver = self;
  v20.super_class = EntitlementABCIssue;
  v17 = [(EntitlementABCIssue *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(EntitlementABCIssue *)v17 setClientName:clientCopy];
    [(EntitlementABCIssue *)v18 setProcessName:nameCopy];
    [(EntitlementABCIssue *)v18 setClientUUID:dCopy];
    [(EntitlementABCIssue *)v18 setPlatform:platformCopy];
    [(EntitlementABCIssue *)v18 setReporter:reporterCopy];
  }

  return v18;
}

- (id)tag
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (unint64_t)abcReason
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (id)context
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (BOOL)shouldBeReportedNow
{
  nextAction = [(EntitlementABCIssue *)self nextAction];

  if (!nextAction)
  {
    return 0;
  }

  nextAction2 = [(EntitlementABCIssue *)self nextAction];
  [nextAction2 timeIntervalSinceNow];
  v6 = v5 < 0.0;

  return v6;
}

- (void)handleABCResult:(int)result
{
  v3 = *&result;
  v31 = *MEMORY[0x277D85DE8];
  reporter = [(EntitlementABCIssue *)self reporter];
  objc_sync_enter(reporter);
  v6 = [(EntitlementABCIssue *)self isFinalResult:v3];
  v7 = MEMORY[0x277D86220];
  if (!v6)
  {
    v13 = __osLog;
    if (!__osLog)
    {
      v13 = MEMORY[0x277D86220];
    }

    v14 = v13;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(EntitlementABCIssue *)self tag];
      v27 = 138412546;
      v28 = v15;
      v29 = 1024;
      v30 = v3;
      _os_log_impl(&dword_223E00000, v14, OS_LOG_TYPE_ERROR, "Entitlement issue %@ encountered temporary error %d while being reported.\n", &v27, 0x12u);
    }

    if (*MEMORY[0x277D6B030] == v3)
    {
      v16 = __osLog;
      if (!__osLog)
      {
        v16 = v7;
      }

      v17 = v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [(EntitlementABCIssue *)self tag];
        v27 = 138412290;
        v28 = v18;
        _os_log_impl(&dword_223E00000, v17, OS_LOG_TYPE_INFO, "Entitlement issue %@ rescheduled for next day\n", &v27, 0xCu);
      }

      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
      [(EntitlementABCIssue *)self setNextAction:v19];

      reporter2 = [(EntitlementABCIssue *)self reporter];
      [reporter2 rescheduleTimer];
    }

    else
    {
      if (*MEMORY[0x277D6B050] != v3)
      {
        goto LABEL_27;
      }

      v23 = __osLog;
      if (!__osLog)
      {
        v23 = v7;
      }

      v24 = v23;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [(EntitlementABCIssue *)self tag];
        v27 = 138412290;
        v28 = v25;
        _os_log_impl(&dword_223E00000, v24, OS_LOG_TYPE_INFO, "Entitlement issue %@ rescheduled for next hour\n", &v27, 0xCu);
      }

      v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
      [(EntitlementABCIssue *)self setNextAction:v26];

      reporter2 = [(EntitlementABCIssue *)self reporter];
      [reporter2 rescheduleTimer];
    }

    goto LABEL_27;
  }

  v8 = *MEMORY[0x277D6B070];
  v9 = __osLog;
  if (!__osLog)
  {
    v9 = MEMORY[0x277D86220];
  }

  v10 = v9;
  v11 = v10;
  if (v8 == v3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [(EntitlementABCIssue *)self tag];
      v27 = 138412290;
      v28 = v12;
      _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_INFO, "Entitlement issue %@ successfully reported\n", &v27, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v21 = [(EntitlementABCIssue *)self tag];
    v27 = 138412546;
    v28 = v21;
    v29 = 1024;
    v30 = v3;
    _os_log_impl(&dword_223E00000, v11, OS_LOG_TYPE_ERROR, "Entitlement issue %@ will not be reported due to error code %d\n", &v27, 0x12u);
  }

  [(EntitlementABCIssue *)self setNextAction:0];
  reporter3 = [(EntitlementABCIssue *)self reporter];
  [reporter3 rescheduleTimer];

  [(EntitlementABCIssue *)self setReporter:0];
LABEL_27:
  objc_sync_exit(reporter);
}

- (void)report
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(EntitlementABCIssue *)self reportCounter]< 0x1F4)
  {
    [(EntitlementABCIssue *)self setReportCounter:[(EntitlementABCIssue *)self reportCounter]+ 1];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random_uniform(0x258u) + 600)];
    [(EntitlementABCIssue *)self setNextAction:v6];

    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(EntitlementABCIssue *)self tag];
      nextAction = [(EntitlementABCIssue *)self nextAction];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = nextAction;
      _os_log_impl(&dword_223E00000, v8, OS_LOG_TYPE_INFO, "Entitlement issue %@ will be reported, nextAction=%@\n", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    reporter = [(EntitlementABCIssue *)self reporter];
    biometricABC = [reporter biometricABC];
    abcReason = [(EntitlementABCIssue *)self abcReason];
    context = [(EntitlementABCIssue *)self context];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __29__EntitlementABCIssue_report__block_invoke;
    v15[3] = &unk_2784FA5C8;
    objc_copyWeak(&v16, buf);
    [biometricABC sendAutoBugCaptureEvent:abcReason withContext:context replyBlock:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (__osLog)
    {
      v3 = __osLog;
    }

    else
    {
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(EntitlementABCIssue *)self tag];
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_223E00000, v4, OS_LOG_TYPE_ERROR, "Giving up Entitlement issue %@ reporting due to maximum attempts limit\n", buf, 0xCu);
    }

    [(EntitlementABCIssue *)self setNextAction:0];
    [(EntitlementABCIssue *)self setReporter:0];
  }
}

void __29__EntitlementABCIssue_report__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleABCResult:a2];
}

- (void)reportIfNeeded
{
  if ([(EntitlementABCIssue *)self shouldBeReportedNow])
  {

    [(EntitlementABCIssue *)self report];
  }
}

@end