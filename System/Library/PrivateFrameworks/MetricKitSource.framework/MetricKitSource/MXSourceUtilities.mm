@interface MXSourceUtilities
+ (BOOL)anyClientsAvailable;
+ (BOOL)isAppAnalyticsEnabled;
+ (BOOL)isMetricKitClient:(id)client;
+ (BOOL)isMetricKitClient:(id)client forUser:(unsigned int)user;
+ (id)getSignpostDataforPid:(int)pid forClient:(id)client andEventTimestamp:(id)timestamp;
+ (id)regionFormat;
@end

@implementation MXSourceUtilities

+ (id)regionFormat
{
  if (regionFormat_onceToken != -1)
  {
    +[MXSourceUtilities regionFormat];
  }

  v3 = regionFormat_regionFormat;

  return v3;
}

void __33__MXSourceUtilities_regionFormat__block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  if (v0)
  {
    v2 = v0;
    v1 = [v0 objectForKey:*MEMORY[0x277CBE690]];
    if (v1)
    {
      objc_storeStrong(&regionFormat_regionFormat, v1);
    }

    v0 = v2;
  }
}

+ (BOOL)isMetricKitClient:(id)client
{
  clientCopy = client;
  v15 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:clientCopy error:&v15];
  v5 = v15;
  v6 = v5;
  if (v5)
  {
    containingBundleRecord = _MXSourceUtilitiesLog(v5);
    if (os_log_type_enabled(containingBundleRecord, OS_LOG_TYPE_ERROR))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v8 = _MXSourceUtilitiesLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    containingBundleRecord = [v4 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];

    clientCopy = bundleIdentifier;
  }

LABEL_9:
  v10 = CFPreferencesCopyValue(@"MXClientDataRetrieved", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:clientCopy];
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isMetricKitClient:(id)client forUser:(unsigned int)user
{
  clientCopy = client;
  v16 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:clientCopy error:&v16];
  v6 = v16;
  v7 = v6;
  if (v6)
  {
    containingBundleRecord = _MXSourceUtilitiesLog(v6);
    if (os_log_type_enabled(containingBundleRecord, OS_LOG_TYPE_ERROR))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    bundleIdentifier = clientCopy;
  }

  else
  {
    bundleIdentifier = clientCopy;
    if (!v5)
    {
      goto LABEL_10;
    }

    v10 = _MXSourceUtilitiesLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[MXSourceUtilities isMetricKitClient:];
    }

    containingBundleRecord = [v5 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

LABEL_10:
  v11 = CFPreferencesCopyValue(@"MXClientDataRetrieved", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:bundleIdentifier];
    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)isAppAnalyticsEnabled
{
  if (isAppAnalyticsEnabled_onceToken != -1)
  {
    +[MXSourceUtilities isAppAnalyticsEnabled];
  }

  return isAppAnalyticsEnabled_appAnalyticsEnabled;
}

uint64_t __42__MXSourceUtilities_isAppAnalyticsEnabled__block_invoke()
{
  result = AppAnalyticsEnabled();
  isAppAnalyticsEnabled_appAnalyticsEnabled = result;
  return result;
}

+ (BOOL)anyClientsAvailable
{
  v2 = CFPreferencesCopyValue(@"MXClientsAvailable", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF010]);
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)getSignpostDataforPid:(int)pid forClient:(id)client andEventTimestamp:(id)timestamp
{
  v6 = *&pid;
  v46 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  timestampCopy = timestamp;
  v8 = timestampCopy;
  if (v6)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    array = [MEMORY[0x277CBEB18] array];
    v9 = objc_alloc_init(MEMORY[0x277D55040]);
    v10 = objc_alloc_init(MEMORY[0x277D55038]);
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v10 addPIDNumber:v11];

    [v9 addSubsystem:@"com.apple.metrickit.log" category:0];
    v12 = objc_alloc_init(MEMORY[0x277D55030]);
    [v12 setSubsystemCategoryFilter:v9];
    [v12 setPidFilter:v10];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke;
    v35[3] = &unk_2798C8A30;
    v13 = clientCopy;
    v36 = v13;
    v37 = &v38;
    [v12 setEmitEventProcessingBlock:v35];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37;
    v32[3] = &unk_2798C8A58;
    v33 = v13;
    v34 = &v38;
    [v12 setIntervalCompletionProcessingBlock:v32];
    v14 = v8;
    v15 = [v14 dateByAddingTimeInterval:-5.0];
    v16 = objc_alloc_init(MEMORY[0x277CCA968]);
    v17 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v16 setLocale:v17];
    [v16 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v16 stringFromDate:v15];
      v21 = [v16 stringFromDate:v14];
      [MXSourceUtilities getSignpostDataforPid:v20 forClient:v21 andEventTimestamp:buf];
    }

    v31 = 0;
    v22 = [v12 processLogArchiveWithPath:0 startDate:v15 endDate:v14 errorOut:&v31];
    v23 = v31;
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSourceUtilities getSignpostDataforPid:forClient:andEventTimestamp:];
      }
    }

    else
    {
      v27 = _MXSourceUtilitiesLog(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [v24 description];
        [MXSourceUtilities getSignpostDataforPid:v28 forClient:v44 andEventTimestamp:v27];
      }
    }

    if ([v39[5] count])
    {
      v26 = v39[5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSourceUtilities getSignpostDataforPid:forClient:andEventTimestamp:];
      }

      v26 = 0;
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v25 = _MXSourceUtilitiesLog(timestampCopy);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MXSourceUtilities getSignpostDataforPid:v25 forClient:? andEventTimestamp:?];
    }

    v26 = 0;
  }

  return v26;
}

uint64_t __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 processImagePath];
  v5 = [v4 stringByDeletingLastPathComponent];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  v7 = [v6 bundleIdentifier];
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_1();
    }

    v16 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count] < 0x64)
  {
    v8 = objc_alloc(MEMORY[0x277CD7A38]);
    v9 = [v3 subsystem];
    v10 = [v3 category];
    v11 = [v3 name];
    v12 = [v3 beginDate];
    LOBYTE(v15) = 0;
    v13 = [v8 initWithSubSystem:v9 category:v10 name:v11 beginTimeStamp:v12 endTimeStamp:0 duration:0 isInterval:v15];

    if (v13)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_2();
  }

  return 1;
}

id __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_29(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"clientOfInterest";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endEvent];
  v5 = [v4 processImagePath];
  v6 = [v5 stringByDeletingLastPathComponent];

  v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
  v8 = [v7 bundleIdentifier];
  if (([v8 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37_cold_1();
    }

    v26 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count] < 0x64)
  {
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v9 = objc_alloc(MEMORY[0x277CD7A38]);
    v10 = [v3 subsystem];
    v11 = [v3 category];
    v12 = [v3 name];
    v13 = [v3 beginDate];
    v14 = [v3 endDate];
    v15 = objc_alloc(MEMORY[0x277CCAB10]);
    [v3 durationMs];
    v17 = v16;
    v18 = [MEMORY[0x277CCADD0] milliseconds];
    v19 = [v15 initWithDoubleValue:v18 unit:v17];
    LOBYTE(v22) = 1;
    v20 = [v9 initWithSubSystem:v10 category:v11 name:v12 beginTimeStamp:v13 endTimeStamp:v14 duration:v19 isInterval:v22];

    if (v20)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v20];
    }

    v7 = v24;
    v6 = v25;
    v8 = v23;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_2();
  }

  return 1;
}

id __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_38(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"clientOfInterest";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (void)isMetricKitClient:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = [OUTLINED_FUNCTION_5(v0 v1)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

+ (void)isMetricKitClient:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v2 = [OUTLINED_FUNCTION_5(v0 v1)];
  v3 = [v2 bundleIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

+ (void)getSignpostDataforPid:(void *)a1 forClient:(void *)a2 andEventTimestamp:(uint8_t *)buf .cold.1(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_258D9F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Reading signposts with Start Timestamp : %@ and End Timestamp %@", buf, 0x16u);
}

+ (void)getSignpostDataforPid:(void *)a1 forClient:(uint8_t *)buf andEventTimestamp:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_258D9F000, log, OS_LOG_TYPE_ERROR, "MXSignpost Readback failed to start with error %@", buf, 0xCu);
}

void __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __71__MXSourceUtilities_getSignpostDataforPid_forClient_andEventTimestamp___block_invoke_37_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end