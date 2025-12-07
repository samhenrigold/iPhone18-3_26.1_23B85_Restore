@interface ATTrackingEnforcementManager
+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code;
+ (void)_refreshEnforcementStatusInBackground;
@end

@implementation ATTrackingEnforcementManager

+ (void)_refreshEnforcementStatusInBackground
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.AppTrackingTransparency.EnforcementService"];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2849AEBE0];
  [v3 setRemoteObjectInterface:v4];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke;
  v24[3] = &unk_278A06FB0;
  selfCopy = self;
  v5 = v3;
  v25 = v5;
  v6 = MEMORY[0x2383B6A10](v24);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_2;
  v21[3] = &unk_278A06FD8;
  selfCopy2 = self;
  v7 = v6;
  v22 = v7;
  [v5 setInterruptionHandler:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_4;
  v18[3] = &unk_278A06FD8;
  selfCopy3 = self;
  v8 = v7;
  v19 = v8;
  [v5 setInvalidationHandler:v18];
  [v5 resume];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_5;
  v15[3] = &unk_278A07000;
  v16 = v8;
  selfCopy4 = self;
  v9 = v8;
  v10 = [v5 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_7;
  v12[3] = &unk_278A07028;
  v13 = v5;
  selfCopy5 = self;
  v11 = v5;
  [v10 appTrackingEnforcement:v12];
}

uint64_t __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  objc_sync_enter(v2);
  _shouldEnforceTrackingInProgress = 0;
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

uint64_t __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Connection was interrupted.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v2);
}

uint64_t __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Connection was invalidated.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v2);
}

uint64_t __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_5(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_5_cold_1(a1, a2);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_7(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = objc_opt_class();
    v15 = 1024;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v8 = v14;
    _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Background refresh completed. enforced: %d, reason: %ld", &v13, 0x1Cu);
  }

  v9 = *(a1 + 40);
  objc_sync_enter(v9);
  _lastEnforcement = a2;
  _lastReasonCode = a3;
  _isDefaultReturned = a4;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = _lastBagLookup;
  _lastBagLookup = v10;

  _shouldEnforceTrackingInProgress = 0;
  objc_sync_exit(v9);

  return [*(a1 + 32) invalidate];
}

+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *code = _lastReasonCode;
  v5 = _lastEnforcement;
  if (!_lastBagLookup || (!_isDefaultReturned ? (v6 = 7200.0) : (v6 = 300.0), [MEMORY[0x277CBEAA8] date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", _lastBagLookup), v9 = v8, v7, v9 > v6))
  {
    if ((_shouldEnforceTrackingInProgress & 1) == 0)
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v12 = v15;
        _os_log_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@] Cache is stale. Triggering background refresh.", &v14, 0xCu);
      }

      _shouldEnforceTrackingInProgress = 1;
      [selfCopy _refreshEnforcementStatusInBackground];
    }
  }

  objc_sync_exit(selfCopy);

  return v5;
}

void __69__ATTrackingEnforcementManager__refreshEnforcementStatusInBackground__block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v3;
  v5 = [v2 localizedDescription];

  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_236A7E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%@] Background refresh failed with error: %@", &v6, 0x16u);
}

@end