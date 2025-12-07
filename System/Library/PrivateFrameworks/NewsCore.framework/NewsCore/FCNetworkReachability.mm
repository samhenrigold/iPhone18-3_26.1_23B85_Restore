@interface FCNetworkReachability
+ (id)sharedNetworkReachability;
- (BOOL)isCloudKitReachable;
- (BOOL)isNetworkOnlyReachableViaCellular;
- (FCNetworkReachability)init;
- (int64_t)_cellularRadioAccessTechnology;
- (int64_t)_cellularRadioAccessTechnologyFromString:(id)string;
- (int64_t)offlineReason;
- (int64_t)reachabilityStatus;
- (void)_accessRestrictionsChanged;
- (void)_reachabilityChanged:(id)changed;
- (void)_updateReachability;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation FCNetworkReachability

- (FCNetworkReachability)init
{
  v7.receiver = self;
  v7.super_class = FCNetworkReachability;
  v2 = [(FCNetworkReachability *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_isCloudKitAccessAllowed = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__reachabilityChanged_ name:*MEMORY[0x1E69B6940] object:0];

    [(FCNetworkReachability *)v2 _updateReachability];
  }

  return v2;
}

- (void)_updateReachability
{
  v18 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69B6900] = [MEMORY[0x1E69B6900] sharedInstance];
  currentReachabilityStatus = [mEMORY[0x1E69B6900] currentReachabilityStatus];

  [(FCNetworkReachability *)self setIsNetworkReachableViaWiFi:currentReachabilityStatus & 1];
  [(FCNetworkReachability *)self setIsNetworkReachableViaCellular:(currentReachabilityStatus >> 1) & 1];
  [(FCNetworkReachability *)self setIsNetworkReachableViaOther:(currentReachabilityStatus >> 2) & 1];
  isNetworkReachableViaOther = [(FCNetworkReachability *)self isNetworkReachableViaWiFi]|| [(FCNetworkReachability *)self isNetworkReachableViaCellular]|| [(FCNetworkReachability *)self isNetworkReachableViaOther];
  [(FCNetworkReachability *)self setIsNetworkReachable:isNetworkReachableViaOther];
  [(FCNetworkReachability *)self setIsNetworkUsageExpensive:(currentReachabilityStatus >> 3) & 1];
  [(FCNetworkReachability *)self setIsLowDataModeEnabled:(currentReachabilityStatus >> 4) & 1];
  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfAppVersion]|| [(FCNetworkReachability *)self accessRestrictedBecauseOfCountry]|| [(FCNetworkReachability *)self accessRestrictedBecauseOfOSVersion])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(FCNetworkReachability *)self accessRestrictedBecauseOfDeviceAbandoned]^ 1;
  }

  [(FCNetworkReachability *)self setIsCloudKitAccessAllowed:v6];
  [(FCNetworkReachability *)self setCellularRadioAccessTechnology:[(FCNetworkReachability *)self _cellularRadioAccessTechnology]];
  v7 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9[0] = 67110144;
    v9[1] = [(FCNetworkReachability *)self isNetworkReachable];
    v10 = 1024;
    isNetworkReachableViaWiFi = [(FCNetworkReachability *)self isNetworkReachableViaWiFi];
    v12 = 1024;
    isNetworkReachableViaCellular = [(FCNetworkReachability *)self isNetworkReachableViaCellular];
    v14 = 1024;
    isNetworkReachableViaOther2 = [(FCNetworkReachability *)self isNetworkReachableViaOther];
    v16 = 1024;
    isCloudKitAccessAllowed = [(FCNetworkReachability *)self isCloudKitAccessAllowed];
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Reachability Changed. Network Reachable: %d, via Wi-Fi: %d, via Cellular: %d, via Other: %d, CloudKit Access Allowed: %d", v9, 0x20u);
  }
}

+ (id)sharedNetworkReachability
{
  if (_MergedGlobals_210 != -1)
  {
    dispatch_once(&_MergedGlobals_210, &__block_literal_global_169);
  }

  v3 = qword_1EDB279B8;

  return v3;
}

uint64_t __50__FCNetworkReachability_sharedNetworkReachability__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1EDB279B8;
  qword_1EDB279B8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)_cellularRadioAccessTechnology
{
  v3 = objc_alloc(MEMORY[0x1E69650A0]);
  v4 = [v3 initWithQueue:MEMORY[0x1E69E96A0]];
  v17 = 0;
  v5 = [v4 getCurrentDataServiceDescriptorSync:&v17];
  v6 = v17;
  v7 = v6;
  if (v5)
  {
    v14 = v6;
    v8 = [v4 getCurrentRat:v5 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = [(FCNetworkReachability *)self _cellularRadioAccessTechnologyFromString:v8];
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke_23;
      v12[3] = &unk_1E7C3F068;
      v9 = v9;
      v13 = v9;
      __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke_23(v12);

      v10 = 0;
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke;
    v15[3] = &unk_1E7C3F068;
    v9 = v6;
    v16 = v9;
    __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke(v15);
    v10 = 0;
    v8 = v16;
  }

  return v10;
}

uint64_t __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke_23(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Could not query RAT: %@", &v5, 0xCu);
  }

  return 0;
}

- (void)_accessRestrictionsChanged
{
  v22 = *MEMORY[0x1E69E9840];
  isCloudKitAccessAllowed = [(FCNetworkReachability *)self isCloudKitAccessAllowed];
  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfAppVersion]|| [(FCNetworkReachability *)self accessRestrictedBecauseOfCountry]|| [(FCNetworkReachability *)self accessRestrictedBecauseOfOSVersion])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(FCNetworkReachability *)self accessRestrictedBecauseOfDeviceAbandoned]^ 1;
  }

  [(FCNetworkReachability *)self setIsCloudKitAccessAllowed:v4];
  if (isCloudKitAccessAllowed != [(FCNetworkReachability *)self isCloudKitAccessAllowed])
  {
    v5 = FCReachabilityLog;
    if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      *buf = 67109120;
      isCloudKitAccessAllowed2 = [(FCNetworkReachability *)self isCloudKitAccessAllowed];
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Access restrictions changed. CloudKit access allowed: %d", buf, 8u);
    }

    observers = [(FCNetworkReachability *)self observers];
    v8 = [observers copy];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 networkReachabilityDidChange:{self, v15}];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (int64_t)offlineReason
{
  if (![(FCNetworkReachability *)self isNetworkReachable])
  {
    return 1;
  }

  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfCountry])
  {
    return 3;
  }

  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfAppVersion])
  {
    return 4;
  }

  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfOSVersion])
  {
    return 5;
  }

  if ([(FCNetworkReachability *)self accessRestrictedBecauseOfDeviceAbandoned])
  {
    return 6;
  }

  return 0;
}

- (BOOL)isCloudKitReachable
{
  isNetworkReachable = [(FCNetworkReachability *)self isNetworkReachable];
  if (isNetworkReachable)
  {

    LOBYTE(isNetworkReachable) = [(FCNetworkReachability *)self isCloudKitAccessAllowed];
  }

  return isNetworkReachable;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69B6940] object:0];

  v4.receiver = self;
  v4.super_class = FCNetworkReachability;
  [(FCNetworkReachability *)&v4 dealloc];
}

- (BOOL)isNetworkOnlyReachableViaCellular
{
  isNetworkReachableViaCellular = [(FCNetworkReachability *)self isNetworkReachableViaCellular];
  if (isNetworkReachableViaCellular)
  {
    LOBYTE(isNetworkReachableViaCellular) = ![(FCNetworkReachability *)self isNetworkReachableViaWiFi];
  }

  return isNetworkReachableViaCellular;
}

- (void)_reachabilityChanged:(id)changed
{
  v45 = *MEMORY[0x1E69E9840];
  isNetworkReachable = [(FCNetworkReachability *)self isNetworkReachable];
  isNetworkReachableViaWiFi = [(FCNetworkReachability *)self isNetworkReachableViaWiFi];
  isCloudKitAccessAllowed = [(FCNetworkReachability *)self isCloudKitAccessAllowed];
  isNetworkUsageExpensive = [(FCNetworkReachability *)self isNetworkUsageExpensive];
  isLowDataModeEnabled = [(FCNetworkReachability *)self isLowDataModeEnabled];
  [(FCNetworkReachability *)self _updateReachability];
  observers = [(FCNetworkReachability *)self observers];
  v10 = [observers copy];

  if (isNetworkReachable != [(FCNetworkReachability *)self isNetworkReachable]|| isCloudKitAccessAllowed != [(FCNetworkReachability *)self isCloudKitAccessAllowed]|| isNetworkUsageExpensive != [(FCNetworkReachability *)self isNetworkUsageExpensive]|| isLowDataModeEnabled != [(FCNetworkReachability *)self isLowDataModeEnabled])
  {
    v29 = isNetworkReachableViaWiFi;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v38 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 networkReachabilityDidChange:self];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    isNetworkReachableViaWiFi = v29;
  }

  if (isNetworkReachableViaWiFi != [(FCNetworkReachability *)self isNetworkReachableViaWiFi])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v22 wifiReachabilityDidChange:self];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v19);
    }
  }

  if (isNetworkReachable != [(FCNetworkReachability *)self isNetworkReachable])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v10;
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v30 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v28 networkReachabilityConnectivityDidChange:self];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v25);
    }
  }
}

- (int64_t)reachabilityStatus
{
  v2 = +[FCNetworkReachability sharedNetworkReachability];
  if ([v2 isNetworkReachable])
  {
    if ([v2 isNetworkReachableViaCellular])
    {
      v3 = 3;
    }

    else if ([v2 isNetworkReachableViaWiFi])
    {
      v3 = 2;
    }

    else if ([v2 isNetworkReachableViaOther])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__FCNetworkReachability_addObserver___block_invoke_2;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = observerCopy;
    FCPerformBlockOnMainThread(v6);
  }
}

void __37__FCNetworkReachability_addObserver___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__FCNetworkReachability_removeObserver___block_invoke_2;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = observerCopy;
    FCPerformBlockOnMainThread(v6);
  }
}

void __40__FCNetworkReachability_removeObserver___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is not an observer", *(a1 + 40)];
    *buf = 136315906;
    v7 = "[FCNetworkReachability removeObserver:]_block_invoke_2";
    v8 = 2080;
    v9 = "FCNetworkReachability.m";
    v10 = 1024;
    v11 = 225;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [*(a1 + 32) observers];
  [v4 removeObject:*(a1 + 40)];
}

uint64_t __55__FCNetworkReachability__cellularRadioAccessTechnology__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCReachabilityLog;
  if (os_log_type_enabled(FCReachabilityLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Could not get current data service descriptor: %@", &v5, 0xCu);
  }

  return 0;
}

- (int64_t)_cellularRadioAccessTechnologyFromString:(id)string
{
  v16 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    goto LABEL_30;
  }

  if (([stringCopy isEqualToString:*MEMORY[0x1E6964F20]] & 1) == 0)
  {
    if ([v4 isEqualToString:*MEMORY[0x1E6964F18]])
    {
      v5 = 2;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F50]])
    {
      v5 = 3;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F28]])
    {
      v5 = 4;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F30]])
    {
      v5 = 5;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964EF8]])
    {
      v5 = 6;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F00]])
    {
      v5 = 7;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F08]])
    {
      v5 = 8;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F10]])
    {
      v5 = 9;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F58]])
    {
      v5 = 10;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F38]])
    {
      v5 = 11;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F48]])
    {
      v5 = 12;
      goto LABEL_31;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E6964F40]])
    {
      v5 = 13;
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
      v8 = 136315906;
      v9 = "[FCNetworkReachability _cellularRadioAccessTechnologyFromString:]";
      v10 = 2080;
      v11 = "FCNetworkReachability.m";
      v12 = 1024;
      v13 = 380;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
    }

LABEL_30:
    v5 = 0;
    goto LABEL_31;
  }

  v5 = 1;
LABEL_31:

  return v5;
}

@end