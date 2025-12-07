@interface STYGeneralSignpostMonitorHelper
- (STYGeneralSignpostMonitorHelper)init;
- (void)handleEmit:(id)emit;
- (void)handleInterval:(id)interval;
- (void)perfProblemDetected:(id)detected tailspinFilenamePrefix:(id)prefix;
- (void)perfProblemDetectedOnMac:(id)mac;
@end

@implementation STYGeneralSignpostMonitorHelper

- (STYGeneralSignpostMonitorHelper)init
{
  v10.receiver = self;
  v10.super_class = STYGeneralSignpostMonitorHelper;
  v2 = [(STYSignpostsMonitorHelper *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D55040]);
    allowList = v2->_allowList;
    v2->_allowList = v3;

    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.SpringBoard" category:@"TailspinSignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.camera.signposts" category:@"TelemetrySignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.SpringBoard" category:@"TelemetrySignposts"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.UIKit" category:@"ShareSheet"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.signpost_emitter" category:@"emitter_category"];
    [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.mobileactivationd" category:@"analytics"];
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Sentry.Framework"];
    if ([v5 BOOLForKey:@"shouldDisableEPLAppLaunchMonitoring"])
    {
      v6 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v6 logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "App launch monitoring and watchdog termination monitoring via EPL is disabled", v9, 2u);
      }
    }

    else
    {
      [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
      [(SignpostSupportSubsystemCategoryAllowlist *)v2->_allowList addSubsystem:@"com.apple.FrontBoard" category:@"Watchdog"];
    }
  }

  return v2;
}

- (void)perfProblemDetectedOnMac:(id)mac
{
  v27[3] = *MEMORY[0x277D85DE8];
  macCopy = mac;
  v4 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v4 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:macCopy];
  }

  issueCategory = [macCopy issueCategory];
  scenario = [macCopy scenario];
  v8 = [scenario kpi];

  if (v8 == -1000)
  {
    v26[0] = @"observedLatency_in_ms";
    v9 = MEMORY[0x277CCABB0];
    [macCopy observedLatencyInMs];
    v10 = [v9 numberWithFloat:?];
    v27[0] = v10;
    v26[1] = @"threshold_in_ms";
    v11 = MEMORY[0x277CCABB0];
    [macCopy targetLatencyInMs];
    v12 = [v11 numberWithFloat:?];
    v27[1] = v12;
    v26[2] = @"scenarioID";
    scenario2 = [macCopy scenario];
    scenarioID = [scenario2 scenarioID];
    v27[2] = scenarioID;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  }

  else
  {
    v24[0] = @"observedFramerate_fps";
    v16 = MEMORY[0x277CCABB0];
    [macCopy observedFps];
    v10 = [v16 numberWithFloat:?];
    v25[0] = v10;
    v24[1] = @"threshold_fps";
    v17 = MEMORY[0x277CCABB0];
    [macCopy targetFps];
    v12 = [v17 numberWithFloat:?];
    v25[1] = v12;
    v24[2] = @"scenarioID";
    scenario2 = [macCopy scenario];
    scenarioID = [scenario2 scenarioID];
    v25[2] = scenarioID;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  }

  v23 = 0;
  v18 = DRTailspinRequest();
  v19 = v23;
  v20 = +[STYFrameworkHelper sharedHelper];
  logHandle2 = [v20 logHandle];

  v22 = os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    if (v22)
    {
      [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:macCopy];
    }
  }

  else if (v22)
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetectedOnMac:];
  }
}

- (void)perfProblemDetected:(id)detected tailspinFilenamePrefix:(id)prefix
{
  v42 = *MEMORY[0x277D85DE8];
  detectedCopy = detected;
  prefixCopy = prefix;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(detectedCopy, "hash")}];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v9 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v10 = prefixCopy;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(detectedCopy, "scenarioStartTime")}];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(detectedCopy, "scenarioEndTime")}];
  v13 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v13 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper perfProblemDetected:detectedCopy tailspinFilenamePrefix:?];
  }

  v15 = +[STYFrameworkHelper sharedHelper];
  logHandle2 = [v15 logHandle];

  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
  {
    scenario = [detectedCopy scenario];
    scenarioID = [scenario scenarioID];
    *buf = 138413570;
    v31 = scenarioID;
    v32 = 2112;
    v33 = v10;
    v34 = 2048;
    unsignedLongLongValue = [v11 unsignedLongLongValue];
    v36 = 2048;
    unsignedLongLongValue2 = [v12 unsignedLongLongValue];
    v38 = 1024;
    intValue = [v7 intValue];
    v40 = 2112;
    v41 = kSTYEplReportType;
    _os_log_debug_impl(&dword_2656CE000, logHandle2, OS_LOG_TYPE_DEBUG, "[Signpost: %@] Request details area as follows:\n\t Filename prefix : %@\n\t interval begin timestamp : %llu\n\t interval end timestamp : %llu\n\t Request identifier %d\n\t Report Type : %@", buf, 0x3Au);
  }

  v28[0] = kSTYScenarioReportRefKey;
  v28[1] = kSTYTailspinFilenameKey;
  v29[0] = v7;
  v29[1] = v10;
  v28[2] = kSTYScenarioStartTimeKey;
  v28[3] = kSTYScenarioEndTimeKey;
  v29[2] = v11;
  v29[3] = v12;
  v28[4] = kSTYScenarioReportKey;
  v28[5] = kSTYReportTypeKey;
  v29[4] = detectedCopy;
  v29[5] = kSTYEplReportType;
  v28[6] = kSTYReasonKey;
  v29[6] = @"EPL Request";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];
  [outstandingTailspinSaveRequests setObject:detectedCopy forKey:v7];
  [perfIssueDetectionTimeLogs setObject:date forKey:v7];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, kSTYPerfProblemDetectedNotification, 0, v17, 1u);
  v19 = dispatch_time(0, 900000000000);
  v20 = htInteractionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke;
  block[3] = &unk_279B9B4C0;
  v26 = v7;
  v27 = detectedCopy;
  v21 = detectedCopy;
  v22 = v7;
  dispatch_after(v19, v20, block);
}

void __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [outstandingTailspinSaveRequests objectForKey:*(a1 + 32)];

  if (v2)
  {
    v3 = +[STYFrameworkHelper sharedHelper];
    v4 = [v3 logHandle];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke_cold_1();
    }

    [outstandingTailspinSaveRequests removeObjectForKey:*v1];
  }
}

- (void)handleInterval:(id)interval
{
  v35 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  endEvent = [intervalCopy endEvent];
  v6 = eventEndToNow(endEvent);

  v7 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v7 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [STYGeneralSignpostMonitorHelper handleInterval:];
  }

  if (v6 <= 5000.0)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__0;
    v31[4] = __Block_byref_object_dispose__0;
    v11 = intervalCopy;
    v32 = v11;
    v30 = 0;
    v12 = [STYScenarioReport reportFromSignpostInterval:v11 error:&v30];
    v13 = v30;
    v14 = v13;
    if (v12)
    {
      subsystem = [v11 subsystem];
      v16 = [subsystem isEqualToString:@"com.apple.app_launch_measurement"];

      if (v16)
      {
        if ([(STYGeneralSignpostMonitorHelper *)self avoidGeneratingTailspinsForAppLaunches])
        {
          v17 = +[STYFrameworkHelper sharedHelper];
          logHandle2 = [v17 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            scenario = [v12 scenario];
            scenarioID = [scenario scenarioID];
            *buf = 138412290;
            v34 = scenarioID;
            _os_log_impl(&dword_2656CE000, logHandle2, OS_LOG_TYPE_DEFAULT, "[Signpost: %@] Deferring app launch tailspin to special app launch monitoring ", buf, 0xCu);
          }

LABEL_27:

          goto LABEL_28;
        }

        if ([(STYGeneralSignpostMonitorHelper *)self seedUserMode]|| +[STYDeviceInfo isAppleInternal])
        {
          v22 = arc4random_uniform(0x64u);
          LODWORD(v23) = 2139095039;
          if (v22 < 20)
          {
            *&v23 = 0.0;
          }

          [v12 setTargetLatencyInMs:v23];
        }
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke;
      v29[3] = &unk_279B9B7E8;
      v29[4] = self;
      v29[5] = v31;
      v24 = MEMORY[0x26675BCB0](v29);
      v25 = +[STYPerformanceChecker sharedPerfChecker];
      [v25 checkPerformanceOfScenarioReport:v12 completionHandler:v24];

LABEL_28:
      _Block_object_dispose(v31, 8);

      goto LABEL_29;
    }

    if (v13)
    {
      if ([v13 code] == -2007 || objc_msgSend(v14, "code") == -2002)
      {
        v21 = +[STYFrameworkHelper sharedHelper];
        logHandle2 = [v21 logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
        {
          [v14 description];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      else if ([v14 code] == -2000)
      {
        v27 = +[STYFrameworkHelper sharedHelper];
        logHandle2 = [v27 logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
        {
          +[STYUserScenarioCache sharedCache];
          [objc_claimAutoreleasedReturnValue() scenarioIdForSignpostInterval:v11];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }

      else
      {
        v28 = +[STYFrameworkHelper sharedHelper];
        logHandle2 = [v28 logHandle];

        if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
        {
          [v14 description];
          objc_claimAutoreleasedReturnValue();
          [STYGeneralSignpostMonitorHelper handleInterval:];
        }
      }
    }

    else
    {
      v26 = +[STYFrameworkHelper sharedHelper];
      logHandle2 = [v26 logHandle];

      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
      {
        [STYGeneralSignpostMonitorHelper handleInterval:];
      }
    }

    goto LABEL_27;
  }

  v9 = +[STYFrameworkHelper sharedHelper];
  logHandle3 = [v9 logHandle];

  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
  {
    [STYGeneralSignpostMonitorHelper handleInterval:];
  }

LABEL_29:
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10 = +[STYFrameworkHelper sharedHelper];
    v11 = [v10 logHandle];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 scenario];
      v13 = [v12 scenarioID];
      [v9 observedLatencyInMs];
      v15 = v14;
      [v9 targetLatencyInMs];
      *buf = 138412802;
      v61 = v13;
      v62 = 2048;
      v63 = v15;
      v64 = 2048;
      v65 = v16;
      _os_log_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEFAULT, "[Signpost: %@] Observed latency of %.0f ms was below threshold of %.0f ms", buf, 0x20u);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v17 = +[STYFrameworkHelper sharedHelper];
    v11 = [v17 logHandle];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 localizedDescription];
      *buf = 138412290;
      v61 = v18;
      _os_log_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEFAULT, "Perf check failed. Description: %@ ", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v19 = [v8 scenario];
  v20 = [v19 kpi];

  v21 = +[STYFrameworkHelper sharedHelper];
  v22 = [v21 logHandle];

  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v20 == -1000)
  {
    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = [v9 scenario];
    v25 = [v24 scenarioID];
    [v9 observedLatencyInMs];
    v27 = v26;
    [v9 targetLatencyInMs];
    *buf = 138412802;
    v61 = v25;
    v62 = 2048;
    v63 = v27;
    v64 = 2048;
    v65 = v28;
    v29 = "[Signpost: %@]  observed latency of %.0f ms was above threshold of %.0f ms";
    v30 = v22;
    v31 = 32;
  }

  else
  {
    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = [v9 scenario];
    v25 = [v24 scenarioID];
    [v9 observedFps];
    *buf = 138412546;
    v61 = v25;
    v62 = 2048;
    v63 = v32;
    v29 = " %@'s observed framerate of %.0f was below threshold. Initiating diagnostic collection";
    v30 = v22;
    v31 = 22;
  }

  _os_log_impl(&dword_2656CE000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);

LABEL_15:
  v33 = dateOfLastTailspinRequest;
  v34 = [MEMORY[0x277CBEAA8] date];
  v35 = v34;
  v36 = dateOfLastTailspinRequest;
  if (!v33)
  {
    dateOfLastTailspinRequest = v34;

    v44 = htInteractionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_390;
    block[3] = &unk_279B9B7C0;
    v45 = *(a1 + 32);
    v59 = *(a1 + 40);
    block[4] = v45;
    v58 = v9;
    dispatch_async(v44, block);
    v43 = v58;
    goto LABEL_19;
  }

  [v34 timeIntervalSinceDate:dateOfLastTailspinRequest];
  v38 = v37;

  if (v38 > 60.0)
  {
    v39 = htInteractionQueue;
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_2;
    v53 = &unk_279B9B7C0;
    v40 = *(a1 + 32);
    v56 = *(a1 + 40);
    v54 = v40;
    v55 = v9;
    dispatch_async(v39, &v50);
    v41 = [MEMORY[0x277CBEAA8] date];
    v42 = dateOfLastTailspinRequest;
    dateOfLastTailspinRequest = v41;

    v43 = v55;
LABEL_19:

    goto LABEL_8;
  }

  v46 = +[STYFrameworkHelper sharedHelper];
  v47 = [v46 logHandle];

  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_cold_1(a1);
  }

  v48 = *(*(a1 + 40) + 8);
  v49 = *(v48 + 40);
  *(v48 + 40) = 0;

LABEL_8:
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_390(uint64_t a1)
{
  v4 = TailspinFilenamePrefixForInterval(*(*(*(a1 + 48) + 8) + 40));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) perfProblemDetected:*(a1 + 40) tailspinFilenamePrefix:v4];
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_2(uint64_t a1)
{
  v4 = TailspinFilenamePrefixForInterval(*(*(*(a1 + 48) + 8) + 40));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) perfProblemDetected:*(a1 + 40) tailspinFilenamePrefix:v4];
}

- (void)handleEmit:(id)emit
{
  v19 = 0;
  v4 = [STYScenarioReport reportFromSignpostEvent:emit error:&v19];
  v5 = v19;
  if (v4)
  {
    if (dateOfLastTailspinRequest && ([MEMORY[0x277CBEAA8] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", dateOfLastTailspinRequest), v8 = v7, v6, v8 <= 60.0))
    {
      v17 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v17 logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [STYGeneralSignpostMonitorHelper handleEmit:v4];
      }
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      v10 = dateOfLastTailspinRequest;
      dateOfLastTailspinRequest = date;

      scenario = [v4 scenario];
      appName = [scenario appName];

      if (appName)
      {
        scenario2 = [v4 scenario];
        appName2 = [scenario2 appName];
        logHandle = [@"Sentry_LaunchWatchdog_" stringByAppendingString:appName2];
      }

      else
      {
        logHandle = @"Sentry_LaunchWatchdog_";
      }

      [(STYGeneralSignpostMonitorHelper *)self perfProblemDetected:v4 tailspinFilenamePrefix:logHandle];
    }
  }

  else
  {
    v16 = +[STYFrameworkHelper sharedHelper];
    logHandle = [v16 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Signpost Event is not whitelisted", v18, 2u);
    }
  }
}

- (void)perfProblemDetectedOnMac:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)perfProblemDetectedOnMac:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)perfProblemDetectedOnMac:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)perfProblemDetected:(void *)a1 tailspinFilenamePrefix:.cold.1(void *a1)
{
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __78__STYGeneralSignpostMonitorHelper_perfProblemDetected_tailspinFilenamePrefix___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [*(v1 + 40) scenario];
  v3 = [v2 scenarioID];
  [*v0 intValue];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)handleInterval:.cold.1()
{
  +[STYUserScenarioCache sharedCache];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_13();
  v2 = [v1 scenarioIdForSignpostInterval:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)handleInterval:.cold.2()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_2656CE000, v3, v4, "%@", v5);
}

- (void)handleInterval:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_2656CE000, v4, v5, "[Signpost: %@] Signpost interval is not whitelisted", v6);
}

- (void)handleInterval:.cold.4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(v1, v2, 5.7779e-34);
  _os_log_error_impl(&dword_2656CE000, v3, OS_LOG_TYPE_ERROR, "%@", v4, 0xCu);
}

- (void)handleInterval:.cold.6()
{
  +[STYUserScenarioCache sharedCache];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_13();
  v2 = [v1 scenarioIdForSignpostInterval:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __50__STYGeneralSignpostMonitorHelper_handleInterval___block_invoke_cold_1(uint64_t a1)
{
  v2 = +[STYUserScenarioCache sharedCache];
  v3 = [v2 scenarioIdForSignpostInterval:*(*(*(a1 + 40) + 8) + 40)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)handleEmit:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 scenario];
  v2 = [v1 scenarioID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end