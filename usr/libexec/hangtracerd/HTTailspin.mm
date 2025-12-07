@interface HTTailspin
+ (BOOL)hasAppExceededGeneratedLogsCountForDuration:(double)duration procName:(id)name isFirstPartyApp:(BOOL)app;
+ (BOOL)hasExceededDailyFenceLogLimit;
+ (BOOL)hasExceededDailyLimit:(double)limit isFirstPartyApp:(BOOL)app;
+ (BOOL)moveAndTrackTailspinToSpoolDirectory:(id)directory error:(id *)error;
+ (BOOL)saveSentryTailspin:(id)tailspin infoDict:(id)dict startTime:(unint64_t)time endTime:(unint64_t)endTime error:(id *)error;
+ (void)decrementPendingTailspinBlocks;
+ (void)incrementAppGeneratedLogsCountForDuration:(double)duration procName:(id)name isFirstPartyApp:(BOOL)app;
+ (void)incrementDailyFenceLogGenerationCount;
+ (void)incrementDailyLogGenerationCountForDuration:(double)duration isFirstPartyApp:(BOOL)app;
+ (void)incrementPendingTailspinBlocks;
+ (void)initialize;
+ (void)notifyHTTailSpinResult:(BOOL)result failReason:(int64_t)reason hangSubType:(int64_t)type htBugType:(int64_t)bugType;
+ (void)refreshAppGeneratedLogsCount;
+ (void)refreshPerPeriodSentryLogCount;
+ (void)resetAppActivationTailspinCounts;
+ (void)resetDailyActivationTailspinCounts;
+ (void)resetDailyGeneratedLogsCounts;
+ (void)resetDailySentryTailspinCounts;
+ (void)resetLogCountsForDailyRollover;
+ (void)resetLogCountsForEPL;
+ (void)resetPerAppCounts;
+ (void)resetPerPeriodSentryTailspinCounts;
+ (void)saveTailspinForAllPendingHangs;
+ (void)saveTailspinForForceQuit:(id)quit completionBlock:(id)block;
+ (void)saveTailspinWithFileName:(id)name directoryPath:(id)path infoDictArray:(id)array startTime:(unint64_t)time endTime:(unint64_t)endTime processName:(id)processName pid:(int)pid requestType:(int64_t)self0 includeOSSignposts:(BOOL)self1 completionQueue:(id)self2 completionHandler:(id)self3;
@end

@implementation HTTailspin

+ (void)initialize
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = qword_100067DA8;
  qword_100067DA8 = v2;

  qword_100067DB0 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

+ (void)refreshAppGeneratedLogsCount
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_10002BAA4;
  v7 = sub_10002BAB4;
  v8 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002BABC;
  v2[3] = &unk_1000569B0;
  v2[4] = &v3;
  [qword_100067DA8 enumerateKeysAndObjectsUsingBlock:v2];
  if (v4[5])
  {
    [qword_100067DA8 removeObjectsForKeys:?];
  }

  _Block_object_dispose(&v3, 8);
}

+ (void)refreshPerPeriodSentryLogCount
{
  if (dword_100067D9C >= 1)
  {
    --dword_100067D9C;
    v2 = sub_100003824(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3[0] = 67109376;
      v3[1] = dword_100067D9C + 1;
      v4 = 1024;
      v5 = dword_100067D9C;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-period Sentry Generated Logs count decreased %u -> %u", v3, 0xEu);
    }
  }
}

+ (void)resetLogCountsForEPL
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated log counts will be reset for EPL", v3, 2u);
  }

  +[HTTailspin resetLogCountsForDailyRollover];
  +[HTTailspin resetDailySentryTailspinCounts];
  +[HTTailspin resetPerAppCounts];
  +[HTTailspin resetPerPeriodSentryTailspinCounts];
}

+ (void)resetLogCountsForDailyRollover
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Generated log counts will be reset ", v3, 2u);
  }

  +[HTTailspin resetDailyGeneratedLogsCounts];
  +[HTTailspin resetDailyActivationTailspinCounts];
  +[HTTailspin resetAppActivationTailspinCounts];
}

+ (void)resetDailyGeneratedLogsCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v11 = 67109376;
    v12 = dword_100067D80;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Hang Micro Hang Logs Daily Generated count reset from %i to %i", &v11, 0xEu);
  }

  v4 = sub_100003824(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 67109376;
    v12 = dword_100067D84;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Hang Short Logs Daily Generated count reset from %i to %i", &v11, 0xEu);
  }

  v6 = sub_100003824(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 67109376;
    v12 = dword_100067D88;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Hang Long Logs Daily Generated count reset from %i to %i", &v11, 0xEu);
  }

  v8 = sub_100003824(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 67109376;
    v12 = dword_100067D8C;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Hang Third Party Logs Daily Generated count reset from %i to %i", &v11, 0xEu);
  }

  v10 = sub_100003824(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 67109376;
    v12 = dword_100067D90;
    v13 = 1024;
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fence Hang Logs Daily Generated count reset from %i to %i", &v11, 0xEu);
  }

  dword_100067D80 = 0;
  dword_100067D84 = 0;
  dword_100067D88 = 0;
  dword_100067D8C = 0;
  dword_100067D90 = 0;
}

+ (void)resetAppActivationTailspinCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "App activation tailspin count reset", v5, 2u);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_100067DB0;
  qword_100067DB0 = v3;
}

+ (void)resetDailyActivationTailspinCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D94;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launch Logs Daily Generated count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D94 = 0;
}

+ (void)resetDailySentryTailspinCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D98;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sentry Tailspin count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D98 = 0;
}

+ (void)resetPerPeriodSentryTailspinCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D9C;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-period Sentry Tailspin count reset from %i to %i", v3, 0xEu);
  }

  dword_100067D9C = 0;
}

+ (void)resetPerAppCounts
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Per-app activation and generated tailspin count reset", v3, 2u);
  }

  [qword_100067DA8 removeAllObjects];
  [qword_100067DB0 removeAllObjects];
}

+ (BOOL)hasAppExceededGeneratedLogsCountForDuration:(double)duration procName:(id)name isFirstPartyApp:(BOOL)app
{
  nameCopy = name;
  v8 = +[HTPrefs sharedPrefs];
  runloopLongHangDurationThresholdMSec = [v8 runloopLongHangDurationThresholdMSec];

  if (runloopLongHangDurationThresholdMSec <= duration && app)
  {
    v10 = 0;
  }

  else
  {
    v11 = [qword_100067DA8 objectForKeyedSubscript:nameCopy];
    v12 = v11;
    if (v11)
    {
      unsignedIntValue = [v11 unsignedIntValue];
      v14 = +[HTPrefs sharedPrefs];
      v10 = unsignedIntValue >= [v14 runLoopHangPerPeriodLogLimit];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)hasExceededDailyLimit:(double)limit isFirstPartyApp:(BOOL)app
{
  if (app)
  {
    v5 = +[HTPrefs sharedPrefs];
    runloopLongHangDurationThresholdMSec = [v5 runloopLongHangDurationThresholdMSec];

    if (runloopLongHangDurationThresholdMSec <= limit)
    {
      v20 = dword_100067D88;
      v21 = +[HTPrefs sharedPrefs];
      runLoopLongHangDailyLogLimit = [v21 runLoopLongHangDailyLogLimit];

      if (v20 >= runLoopLongHangDailyLogLimit)
      {
        v13 = sub_100003824(v23);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = +[HTPrefs sharedPrefs];
          v29 = 67109120;
          runLoopLongHangDailyLogLimit2 = [v14 runLoopLongHangDailyLogLimit];
          v15 = "Device has hit the Daily Generated Long Log limit of %u. Not saving a report!";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = +[HTPrefs sharedPrefs];
      runloopHangDurationThresholdMSec = [v7 runloopHangDurationThresholdMSec];

      if (runloopHangDurationThresholdMSec <= limit)
      {
        v24 = dword_100067D84;
        v25 = +[HTPrefs sharedPrefs];
        runLoopHangDailyLogLimit = [v25 runLoopHangDailyLogLimit];

        if (v24 >= runLoopHangDailyLogLimit)
        {
          v13 = sub_100003824(v27);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = +[HTPrefs sharedPrefs];
            v29 = 67109120;
            runLoopLongHangDailyLogLimit2 = [v14 runLoopHangDailyLogLimit];
            v15 = "Device has hit the Daily Generated Short Log limit of %u. Not saving a report!";
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v9 = dword_100067D80;
        v10 = +[HTPrefs sharedPrefs];
        runLoopMicroHangDailyLogLimit = [v10 runLoopMicroHangDailyLogLimit];

        if (v9 >= runLoopMicroHangDailyLogLimit)
        {
          v13 = sub_100003824(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = +[HTPrefs sharedPrefs];
            v29 = 67109120;
            runLoopLongHangDailyLogLimit2 = [v14 runLoopMicroHangDailyLogLimit];
            v15 = "Device has hit the Daily Generated Micro Log limit of %u. Not saving a report!";
LABEL_17:
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v29, 8u);

            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  v16 = dword_100067D8C;
  v17 = +[HTPrefs sharedPrefs];
  runloopHangThirdPartyDailyLogLimit = [v17 runloopHangThirdPartyDailyLogLimit];

  if (v16 < runloopHangThirdPartyDailyLogLimit)
  {
    return 0;
  }

  v13 = sub_100003824(v19);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = +[HTPrefs sharedPrefs];
    v29 = 67109120;
    runLoopLongHangDailyLogLimit2 = [v14 runloopHangThirdPartyDailyLogLimit];
    v15 = "Device has hit the Daily Generated Third Party Log limit of %u. Not saving a report!";
    goto LABEL_17;
  }

LABEL_18:

  return 1;
}

+ (BOOL)hasExceededDailyFenceLogLimit
{
  v2 = dword_100067D90;
  v3 = +[HTPrefs sharedPrefs];
  fenceHangDailyLogLimit = [v3 fenceHangDailyLogLimit];

  if (v2 >= fenceHangDailyLogLimit)
  {
    v6 = sub_100003824(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[HTPrefs sharedPrefs];
      v9[0] = 67109120;
      v9[1] = [v7 fenceHangDailyLogLimit];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device has hit the Daily Generated Fence Log limit of %u. Not saving a report!", v9, 8u);
    }
  }

  return v2 >= fenceHangDailyLogLimit;
}

+ (void)incrementAppGeneratedLogsCountForDuration:(double)duration procName:(id)name isFirstPartyApp:(BOOL)app
{
  appCopy = app;
  nameCopy = name;
  v8 = +[HTPrefs sharedPrefs];
  runloopLongHangDurationThresholdMSec = [v8 runloopLongHangDurationThresholdMSec];

  if (runloopLongHangDurationThresholdMSec > duration || !appCopy)
  {
    v12 = [qword_100067DA8 objectForKeyedSubscript:nameCopy];
    v14 = v12;
    if (v12)
    {
      unsignedIntValue = [v12 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    v16 = +[HTPrefs sharedPrefs];
    runLoopHangPerPeriodLogLimit = [v16 runLoopHangPerPeriodLogLimit];

    if (unsignedIntValue >= runLoopHangPerPeriodLogLimit)
    {
      v20 = sub_100003824(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = 138412802;
        v22 = nameCopy;
        v23 = 1024;
        v24 = unsignedIntValue;
        v25 = 1024;
        v26 = unsignedIntValue;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ Generated Log count: %u -> %u", &v21, 0x18u);
      }
    }

    else
    {
      v19 = sub_100003824(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = 138412802;
        v22 = nameCopy;
        v23 = 1024;
        v24 = unsignedIntValue;
        v25 = 1024;
        v26 = unsignedIntValue + 1;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ Generated Log count: %u -> %u", &v21, 0x18u);
      }

      v20 = [NSNumber numberWithUnsignedInt:unsignedIntValue + 1];
      [qword_100067DA8 setObject:v20 forKeyedSubscript:nameCopy];
    }
  }

  else
  {
    v14 = sub_100003824(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ Generated Log count: Long Hang does not count towards per-app generated log count", &v21, 0xCu);
    }
  }
}

+ (void)incrementDailyLogGenerationCountForDuration:(double)duration isFirstPartyApp:(BOOL)app
{
  if (app)
  {
    v5 = +[HTPrefs sharedPrefs];
    runloopLongHangDurationThresholdMSec = [v5 runloopLongHangDurationThresholdMSec];

    if (runloopLongHangDurationThresholdMSec <= duration)
    {
      ++dword_100067D88;
      v11 = sub_100003824(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 67109376;
        v14 = dword_100067D88 - 1;
        v15 = 1024;
        v16 = dword_100067D88;
        v12 = "Daily Generated Long Log count: %i -> %i";
        goto LABEL_12;
      }
    }

    else
    {
      v8 = +[HTPrefs sharedPrefs];
      runloopHangDurationThresholdMSec = [v8 runloopHangDurationThresholdMSec];

      if (runloopHangDurationThresholdMSec <= duration)
      {
        ++dword_100067D84;
        v11 = sub_100003824(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 67109376;
          v14 = dword_100067D84 - 1;
          v15 = 1024;
          v16 = dword_100067D84;
          v12 = "Daily Generated Short Log count: %i -> %i";
          goto LABEL_12;
        }
      }

      else
      {
        ++dword_100067D80;
        v11 = sub_100003824(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 67109376;
          v14 = dword_100067D80 - 1;
          v15 = 1024;
          v16 = dword_100067D80;
          v12 = "Daily Generated Micro Hang Log count: %i -> %i";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v12, &v13, 0xEu);
        }
      }
    }
  }

  else
  {
    ++dword_100067D8C;
    v11 = sub_100003824(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 67109376;
      v14 = dword_100067D8C - 1;
      v15 = 1024;
      v16 = dword_100067D8C;
      v12 = "Daily Generated Third Party Log count: %i -> %i";
      goto LABEL_12;
    }
  }
}

+ (void)incrementDailyFenceLogGenerationCount
{
  ++dword_100067D90;
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109376;
    v3[1] = dword_100067D90 - 1;
    v4 = 1024;
    v5 = dword_100067D90;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Daily Generated Fence Hang Log count: %i -> %i", v3, 0xEu);
  }
}

+ (void)incrementPendingTailspinBlocks
{
  ++dword_100067DA0;
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100034900();
  }
}

+ (void)decrementPendingTailspinBlocks
{
  if (dword_100067DA0)
  {
    --dword_100067DA0;
    v2 = sub_100003824(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100034984();
    }
  }

  else
  {
    v2 = sub_100003824(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100034A08(v2);
    }
  }
}

+ (BOOL)moveAndTrackTailspinToSpoolDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  lastPathComponent = [directoryCopy lastPathComponent];
  v7 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/spool", lastPathComponent];
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 moveItemAtPath:directoryCopy toPath:v7 error:error];

  v11 = sub_100003824(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = directoryCopy;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully moved tailspin from %@ to spool directory path: %@", buf, 0x16u);
    }

    +[HTHangreporterKickstartTelemetry incrementSuccessfulTailspinSaves];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100034A8C();
    }
  }

  return v9;
}

+ (void)notifyHTTailSpinResult:(BOOL)result failReason:(int64_t)reason hangSubType:(int64_t)type htBugType:(int64_t)bugType
{
  resultCopy = result;
  v9 = +[HTPrefs sharedPrefs];
  shouldEmitTelemetry = [v9 shouldEmitTelemetry];

  if (shouldEmitTelemetry)
  {
    v11 = +[HTPrefs sharedPrefs];
    enablementPrefix = [v11 enablementPrefix];

    if (!enablementPrefix)
    {
      v13 = &stru_100057080;
      enablementPrefix = v13;
    }

    v14 = sub_100003824(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [NSNumber numberWithBool:resultCopy];
      v17 = sub_10001ADDC(reason);
      v18 = sub_1000043DC(type);
      *buf = 138413314;
      v20 = @"EnablementType";
      v21 = 2112;
      v22 = enablementPrefix;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "com.apple.hangtracer.hang_capture_tailspinV3 %@: %@, capture_success: %@, failure_reason: %@, subtype: %@\n", buf, 0x34u);
    }

    v15 = enablementPrefix;
    AnalyticsSendEventLazy();
  }
}

+ (BOOL)saveSentryTailspin:(id)tailspin infoDict:(id)dict startTime:(unint64_t)time endTime:(unint64_t)endTime error:(id *)error
{
  dictCopy = dict;
  v11 = off_1000676F0;
  tailspinCopy = tailspin;
  v13 = [dictCopy objectForKeyedSubscript:v11];
  v47 = [v13 isEqualToString:off_1000676F8];
  v14 = qword_100067D58;
  v15 = +[NSDate date];
  v16 = [v14 stringFromDate:v15];
  v17 = [NSString stringWithFormat:@"%@-%@.%@", tailspinCopy, v16, @"tailspin"];

  v18 = [NSString stringWithFormat:@"%s", "/var/root/Library/Caches/hangtracerd/tmp"];
  v19 = [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", v17];
  uTF8String = [v19 UTF8String];
  v20 = +[HTPrefs sharedPrefs];
  htTailspinEnabled = [v20 htTailspinEnabled];

  if ((htTailspinEnabled & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v36 = @"Tailspin is not enabled";
    v37 = 1;
LABEL_20:
    sub_10001990C(v37, v36);
    *error = v38 = 0;
    goto LABEL_22;
  }

  if (!sub_10002A60C(v22, v23))
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v36 = @"Tailspin is not present";
    v37 = 2;
    goto LABEL_20;
  }

  endTimeCopy = endTime;
  v24 = dword_100067D98;
  v25 = +[HTPrefs sharedPrefs];
  signpostMonitoringDailyLogLimit = [v25 signpostMonitoringDailyLogLimit];

  if (v24 >= signpostMonitoringDailyLogLimit)
  {
    if (error)
    {
      v36 = @"Sentry has hit its daily tailspin limit";
LABEL_19:
      v37 = 4;
      goto LABEL_20;
    }

LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v27 = dword_100067D9C;
  v28 = +[HTPrefs sharedPrefs];
  signpostMonitoringPerPeriodLogLimit = [v28 signpostMonitoringPerPeriodLogLimit];

  if (v27 >= signpostMonitoringPerPeriodLogLimit)
  {
    if (error)
    {
      v36 = @"Sentry has hit its per-period tailspin limit";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v31 = sub_100003824(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = +[HTPrefs sharedPrefs];
    shouldCollectOSSignposts = [v32 shouldCollectOSSignposts];
    v34 = @"NO";
    if (shouldCollectOSSignposts)
    {
      v34 = @"YES";
    }

    *buf = 138412290;
    v58 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Collecting OS Signposts: %@", buf, 0xCu);
  }

  if (v47)
  {
    v35 = [dictCopy objectForKeyedSubscript:off_1000676D0];
    intValue = [v35 intValue];
  }

  else
  {
    intValue = 0;
  }

  v40 = objc_alloc_init(NSMutableArray);
  [v40 addObject:dictCopy];
  v41 = sub_100029534(0x7D0uLL);
  if (v41 >= time)
  {
    v41 = 0;
  }

  v51 = time - v41;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10002D784;
  v52[3] = &unk_100056A00;
  v53 = @"Sentry";
  v54 = v19;
  v56 = uTF8String;
  v55 = dictCopy;
  v42 = objc_retainBlock(v52);
  v43 = +[HTPrefs sharedPrefs];
  LOBYTE(v45) = [v43 shouldCollectOSSignposts];
  LODWORD(v44) = intValue;
  [HTTailspin saveTailspinWithFileName:v17 directoryPath:v18 infoDictArray:v40 startTime:v51 endTime:endTimeCopy processName:@"Sentry" pid:v44 requestType:3 includeOSSignposts:v45 completionQueue:qword_100067D60 completionHandler:v42];

  v38 = 1;
LABEL_22:

  return v38;
}

+ (void)saveTailspinForForceQuit:(id)quit completionBlock:(id)block
{
  quitCopy = quit;
  blockCopy = block;
  absoluteTime = [quitCopy absoluteTime];
  processName = [quitCopy processName];
  v7 = qword_100067D58;
  calendarTime = [quitCopy calendarTime];
  v9 = [v7 stringFromDate:calendarTime];
  v10 = [NSString stringWithFormat:@"ForceQuit-%@-%@.%@", processName, v9, @"tailspin"];

  v26[0] = @"Reason";
  processName2 = [quitCopy processName];
  v12 = [NSString stringWithFormat:@"ForceQuit-%@", processName2];
  v27[0] = v12;
  v26[1] = @"ProcessPath";
  executablePath = [quitCopy executablePath];
  v27[1] = executablePath;
  v26[2] = @"PID";
  v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [quitCopy pid]);
  v27[2] = v14;
  v26[3] = @"NetworkState";
  v15 = +[HTNetworkInfo networkStateForTailSpin];
  v16 = v15;
  if (!v15)
  {
    v16 = +[NSNull null];
  }

  v27[3] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
  v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

  if (!v15)
  {
  }

  v19 = objc_alloc_init(NSMutableArray);
  [v19 addObject:v18];
  if (sub_10002957C(60.0) >= absoluteTime)
  {
    v20 = 0;
  }

  else
  {
    v20 = (absoluteTime - sub_10002957C(60.0));
  }

  processName3 = [quitCopy processName];
  LOBYTE(v23) = 1;
  LODWORD(v22) = [quitCopy pid];
  [HTTailspin saveTailspinWithFileName:v10 directoryPath:@"/var/root/Library/Caches/hangtracerd/tmp" infoDictArray:v19 startTime:v20 endTime:absoluteTime processName:processName3 pid:v22 requestType:4 includeOSSignposts:v23 completionQueue:qword_100067D60 completionHandler:blockCopy];
}

+ (void)saveTailspinForAllPendingHangs
{
  v2 = +[HTHangInfo numberOfHangs];
  v3 = sub_100003824(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = +[HTHangInfo numberOfHangs];
      v6 = +[HTHangInfo allHangs];
      *buf = 134218242;
      v46 = v5;
      v47 = 2114;
      v48 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Collecting tailspin for a sequence of %lu hang(s): %{public}@\n", buf, 0x16u);
    }

    v7 = +[HTHangInfo firstHang];
    serviceName = [v7 serviceName];
    processName = [v7 processName];
    v10 = qword_100067D58;
    v11 = +[NSDate date];
    v12 = [v10 stringFromDate:v11];
    v3 = [NSString stringWithFormat:@"%@-%@-%@.%@", serviceName, processName, v12, @"tailspin"];

    processName2 = [v7 processName];
    v34 = [v7 pid];
    serviceName2 = [v7 serviceName];
    v33 = sub_10001AEA0(serviceName2);

    v15 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = +[HTHangInfo allHangs];
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          infoDict = [*(*(&v40 + 1) + 8 * i) infoDict];
          [v15 addObject:infoDict];
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    v22 = +[HTHangInfo hangSequenceStartTime];
    v23 = sub_100029534(0x7D0uLL);
    if (v22 <= v23)
    {
      v23 = 0;
    }

    v24 = v22 - v23;
    v25 = +[HTHangInfo hangSequenceEndTime];
    v26 = [NSString stringWithFormat:@"%s", "/var/root/Library/Caches/hangtracerd/tmp"];
    [NSString stringWithFormat:@"%s/%@", "/var/root/Library/Caches/hangtracerd/tmp", v3];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002E1DC;
    v35[3] = &unk_100056A00;
    v37 = v36 = processName2;
    v38 = v7;
    uTF8String = [v37 UTF8String];
    v27 = v7;
    v28 = v37;
    v29 = processName2;
    v30 = objc_retainBlock(v35);
    LOBYTE(v32) = 1;
    LODWORD(v31) = v34;
    [HTTailspin saveTailspinWithFileName:v3 directoryPath:v26 infoDictArray:v15 startTime:v24 endTime:v25 processName:v29 pid:v31 requestType:v33 includeOSSignposts:v32 completionQueue:qword_100067D60 completionHandler:v30];
    +[HTHangInfo cleanupAllHangs];
  }

  else if (v4)
  {
    *buf = 136315138;
    v46 = "+[HTTailspin saveTailspinForAllPendingHangs]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: No hangs found, not collecting tailspin\n", buf, 0xCu);
  }
}

+ (void)saveTailspinWithFileName:(id)name directoryPath:(id)path infoDictArray:(id)array startTime:(unint64_t)time endTime:(unint64_t)endTime processName:(id)processName pid:(int)pid requestType:(int64_t)self0 includeOSSignposts:(BOOL)self1 completionQueue:(id)self2 completionHandler:(id)self3
{
  nameCopy = name;
  pathCopy = path;
  arrayCopy = array;
  processNameCopy = processName;
  queueCopy = queue;
  handlerCopy = handler;
  sub_100003738(@"Tailspin Request");
  v78 = nameCopy;
  v64 = nameCopy;
  v20 = pathCopy;
  v21 = [NSString stringWithFormat:@"%@/%@", pathCopy, v64];
  v22 = sub_100003824(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Attempting to save tailspin at %@", buf, 0xCu);
  }

  v23 = [v21 cStringUsingEncoding:4];
  v24 = open_dprotected_np(v23, 514, 4, 0, 420);
  v25 = handlerCopy;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10002EC2C;
  *&buf[24] = &unk_100056A78;
  v90 = v24;
  v88 = v25;
  typeCopy = type;
  v26 = objc_retainBlock(buf);

  if (dword_100067DA0 >= 50)
  {
    v28 = sub_100003824(v27);
    v29 = arrayCopy;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_100034F48(v28);
    }

    (*(v26 + 2))(v26, 15);
    v30 = queueCopy;
    v31 = processNameCopy;
LABEL_15:
    v35 = v78;
    goto LABEL_45;
  }

  v29 = arrayCopy;
  if (v24 < 0)
  {
    v36 = sub_100003824(v27);
    v31 = processNameCopy;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100034E94();
    }

    (*(v26 + 2))(v26, 10);
    v30 = queueCopy;
    goto LABEL_15;
  }

  v71 = v24;
  v85 = 0;
  v32 = [NSJSONSerialization dataWithJSONObject:arrayCopy options:0 error:&v85];
  v33 = v85;
  v72 = v33;
  v73 = v32;
  if (v32)
  {
    v31 = processNameCopy;
    v70 = [[NSString alloc] initWithData:v32 encoding:4];
    if (v70)
    {
      v69 = processNameCopy;
      v34 = +[HTPrefs sharedPrefs];
      v35 = v78;
      if ([v34 isInternal])
      {
        shouldUploadToDiagPipe = 0;
      }

      else
      {
        v41 = +[HTPrefs sharedPrefs];
        shouldUploadToDiagPipe = [v41 shouldUploadToDiagPipe];
      }

      v43 = sub_100003824(v42);
      v67 = v26;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = +[HTPrefs sharedPrefs];
        v45 = v25;
        v46 = [v44 isInternal] ^ 1;
        v47 = +[HTPrefs sharedPrefs];
        shouldUploadToDiagPipe2 = [v47 shouldUploadToDiagPipe];
        *buf = 138544130;
        *&buf[4] = v69;
        *&buf[12] = 1024;
        *&buf[14] = shouldUploadToDiagPipe;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        v25 = v45;
        *&buf[24] = 1024;
        *&buf[26] = shouldUploadToDiagPipe2;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%{public}@: Tailspin filepaths will be scrubbed: %{BOOL}d (Customer build: %{BOOL}d, DiagnosticPipeline upload enabled: %{BOOL}d)", buf, 0x1Eu);

        v26 = v67;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v49 = arrayCopy;
      v50 = [v49 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v50)
      {
        v51 = v50;
        v65 = v20;
        v52 = *v82;
        while (2)
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v82 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v81 + 1) + 8 * i);
            v55 = [v54 objectForKeyedSubscript:@"isFirstPartyApp"];
            bOOLValue = [v55 BOOLValue];

            v57 = [v54 objectForKeyedSubscript:@"IsThirdPartyDevSupportModeHang"];
            bOOLValue2 = [v57 BOOLValue];

            if ((bOOLValue & 1) != 0 || !bOOLValue2)
            {
              v60 = sub_100003824(v59);
              v31 = v69;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                sub_100034DAC();
              }

              v66 = 1;
              v29 = arrayCopy;
              v35 = v78;
              v20 = v65;
              goto LABEL_38;
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v81 objects:v86 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }

        v66 = 0;
        v29 = arrayCopy;
        v35 = v78;
        v20 = v65;
        v31 = v69;
LABEL_38:
        v26 = v67;
      }

      else
      {
        v66 = 0;
        v31 = v69;
      }

      v62 = sub_100003824(v61);
      v40 = v70;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 1024;
        *&buf[14] = v71;
        *&buf[18] = 2114;
        *&buf[20] = v70;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Will request tailspin at: %{public}@, fd: %i with reasonString:%{public}@", buf, 0x1Cu);
      }

      +[HTTailspin incrementPendingTailspinBlocks];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_10002EBE4;
      v79[3] = &unk_100056A28;
      v80 = v26;
      v63 = objc_retainBlock(v79);
      v30 = queueCopy;
      sub_10002A64C(v71, time, endTime, v70, pid, signposts, v66, shouldUploadToDiagPipe, queueCopy, v63);

      v38 = v72;
    }

    else
    {
      v39 = sub_100003824(0);
      v38 = v72;
      v35 = v78;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100034E20();
      }

      unlink(v23);
      (*(v26 + 2))(v26, 8);
      v30 = queueCopy;
      v40 = 0;
    }
  }

  else
  {
    v37 = sub_100003824(v33);
    v38 = v72;
    v31 = processNameCopy;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = processNameCopy;
      *&buf[12] = 2114;
      *&buf[14] = arrayCopy;
      *&buf[22] = 2114;
      *&buf[24] = v72;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@: Unable to serialize Info Dict into JSON: %{public}@ - %{public}@\n", buf, 0x20u);
    }

    unlink(v23);
    (*(v26 + 2))(v26, 7);
    v30 = queueCopy;
    v35 = v78;
  }

LABEL_45:
}

@end