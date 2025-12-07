@interface IMDCKRampManager
+ (id)sharedInstance;
- (IMDCKRampManager)init;
- (id)_rampUpRecordID;
- (void)_fetchLatestRampStateFromCK:(id)k;
- (void)_performRampCheckWithRetryAfter:(double)after recordFetchedCompletionBlock:(id)block;
- (void)_persistRampFetchServerError:(BOOL)error;
- (void)_scheduleOperation:(id)operation;
- (void)_writeRampStatePromoted:(BOOL)promoted hadServerError:(BOOL)error;
- (void)cachedRampState:(id)state;
- (void)dealloc;
- (void)fetchLatestRampStateFromCK:(id)k;
@end

@implementation IMDCKRampManager

+ (id)sharedInstance
{
  if (qword_281421180 != -1)
  {
    sub_22B7D68C0();
  }

  v3 = qword_281421000;

  return v3;
}

- (IMDCKRampManager)init
{
  v6.receiver = self;
  v6.super_class = IMDCKRampManager;
  v2 = [(IMDCKRampManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.private.Messages.IMDCKRampManager", 0);
    ckQueue = v2->_ckQueue;
    v2->_ckQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  retryTimer = [(IMDCKRampManager *)self retryTimer];

  if (retryTimer)
  {
    retryTimer2 = [(IMDCKRampManager *)self retryTimer];
    [retryTimer2 invalidate];

    [(IMDCKRampManager *)self setRetryTimer:0];
  }

  v5.receiver = self;
  v5.super_class = IMDCKRampManager;
  [(IMDCKRampManager *)&v5 dealloc];
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (id)_rampUpRecordID
{
  v2 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"metadata_zone"];
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  zoneID = [v2 zoneID];
  v5 = [v3 initWithRecordName:@"metadata_rampstate_v3" zoneID:zoneID];

  return v5;
}

- (void)_fetchLatestRampStateFromCK:(id)k
{
  v27 = *MEMORY[0x277D85DE8];
  kCopy = k;
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setAllowsCellularAccess:1];
  [v5 setQualityOfService:17];
  v6 = objc_alloc(MEMORY[0x277CBC3E0]);
  _rampUpRecordID = [(IMDCKRampManager *)self _rampUpRecordID];
  v8 = IMSingleObjectArray();
  v9 = [v6 initWithRecordIDs:v8];

  [v9 setDesiredKeys:&unk_283F4EF30];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      operationID = [v9 operationID];
      desiredKeys = [v9 desiredKeys];
      *buf = 138412546;
      v24 = operationID;
      v25 = 2112;
      v26 = desiredKeys;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Starting ramp operation %@ Desired keys %@", buf, 0x16u);
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v13 setName:@"Sync.fetch.RampState"];
  [v9 setGroup:v13];
  [v9 setConfiguration:v5];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_22B61F37C;
  v20 = &unk_278703830;
  selfCopy = self;
  v14 = kCopy;
  v22 = v14;
  [v9 setFetchRecordsCompletionBlock:&v17];
  [v9 setPerRecordCompletionBlock:{&unk_283F1A6E8, v17, v18, v19, v20, selfCopy}];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      operationID2 = [v9 operationID];
      *buf = 138412290;
      v24 = operationID2;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Attempting to fetch ramp state from CloudKit with operation %@", buf, 0xCu);
    }
  }

  [(IMDCKRampManager *)self _scheduleOperation:v9];
}

- (void)_writeRampStatePromoted:(BOOL)promoted hadServerError:(BOOL)error
{
  errorCopy = error;
  promotedCopy = promoted;
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:promotedCopy];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D19BB8]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D19BC0]];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (promotedCopy)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (errorCopy)
      {
        v10 = @"YES";
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Writing cachedRampState featurePromoted(%@) fetchHadServerError(%@)", &v12, 0x16u);
    }
  }

  IMSetDomainValueForKey();
}

- (void)_persistRampFetchServerError:(BOOL)error
{
  errorCopy = error;
  v6 = IMGetCachedDomainValueForKey();
  v4 = [v6 mutableCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D19BC0]];

  IMSetDomainValueForKey();
}

- (void)_performRampCheckWithRetryAfter:(double)after recordFetchedCompletionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  retryTimer = [(IMDCKRampManager *)self retryTimer];
  isValid = [retryTimer isValid];

  v9 = IMOSLoggingEnabled();
  if (isValid)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        retryTimer2 = [(IMDCKRampManager *)self retryTimer];
        fireDate = [retryTimer2 fireDate];
        *buf = 138412290;
        afterCopy = *&fireDate;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Not setting up new retryAfter, last one is firing at %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        afterCopy = after;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "scheduling new timer with retryAfter %f", buf, 0xCu);
      }
    }

    v14 = MEMORY[0x277CBEBB8];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_22B61FC90;
    v20 = &unk_278706710;
    selfCopy = self;
    v22 = blockCopy;
    v15 = [v14 timerWithTimeInterval:0 repeats:&v17 block:after];
    [(IMDCKRampManager *)self setRetryTimer:v15, v17, v18, v19, v20, selfCopy];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:v15 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)fetchLatestRampStateFromCK:(id)k
{
  kCopy = k;
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  v7 = IMOSLoggingEnabled();
  if (isUnderFirstDataProtectionLock)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Not Requesting ramp state. Is under first unlock.", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B61FFA4;
    block[3] = &unk_2787028D8;
    v9 = &v16;
    v16 = kCopy;
    v10 = kCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v7)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Request to fetch ramp state", buf, 2u);
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B61FFC4;
    v13[3] = &unk_278706788;
    v9 = &v14;
    v13[4] = self;
    v14 = kCopy;
    v12 = kCopy;
    [(IMDCKRampManager *)self cachedRampState:v13];
  }
}

- (void)cachedRampState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RampStateOverride", *MEMORY[0x277D19A08], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = IMGetCachedDomainValueForKey();
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D19BB8]];
    bOOLValue = [v7 BOOLValue];

    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D19BC0]];
    bOOLValue2 = [v9 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (bOOLValue)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        if (bOOLValue2)
        {
          v12 = @"YES";
        }

        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "cachedRampState featurePromoted(%@) fetchHadServerError(%@)", buf, 0x16u);
      }
    }

    if (stateCopy)
    {
      stateCopy[2](stateCopy, bOOLValue, bOOLValue2);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Defaults override, returning YES", buf, 2u);
      }
    }

    if (stateCopy)
    {
      stateCopy[2](stateCopy, 1, 0);
    }
  }
}

@end