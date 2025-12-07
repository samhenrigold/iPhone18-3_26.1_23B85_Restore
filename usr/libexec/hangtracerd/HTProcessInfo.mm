@interface HTProcessInfo
+ (BOOL)isAnyThirdPartyDeveloperProcessForeground;
+ (BOOL)shouldSaveFenceHangLogs;
+ (id)displayStateArray;
+ (id)processForPid:(int)pid;
+ (id)recentAppsDict;
+ (id)startWatchingPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d;
+ (unint64_t)getEarliestPendingHangStartTime:(unint64_t)time;
+ (void)addDisplayStateChangeEvent:(DisplayStateChangeEvent)event;
+ (void)checkForHUDTimeouts:(unint64_t)timeouts;
+ (void)checkForHangTimeouts:(unint64_t)timeouts;
+ (void)initialize;
+ (void)recordFenceHang:(id)hang startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceId:(unint64_t)id saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1;
+ (void)stopWatchingAllPids;
+ (void)stopWatchingPid:(int)pid;
- (BOOL)checkShouldSaveHangLogs;
- (BOOL)isDeveloperApp;
- (BOOL)isInForeground;
- (BOOL)isThirdPartyDevSupportModeHang;
- (BOOL)shouldDisplayNonFenceHangToHUD;
- (BOOL)startTimeWithinMS:(unint64_t)s ofCurrentTime:(unint64_t)time;
- (HTProcessInfo)initWithPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d;
- (id)checkEventsForTimeouts:(unint64_t)timeouts withType:(int64_t)type;
- (id)getApplicationByBundleId:(id)id;
- (unint64_t)getHangStartTime:(unint64_t)time;
- (void)checkEventsForHUDUpdate:(unint64_t)update;
- (void)dealloc;
- (void)recordHang:(id)hang threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1 recentStateInfo:(id)self2;
@end

@implementation HTProcessInfo

- (BOOL)isThirdPartyDevSupportModeHang
{
  v3 = +[HTPrefs sharedPrefs];
  if ([v3 thirdPartyDevHangHUDEnabled])
  {
    isDeveloperApp = [(HTProcessInfo *)self isDeveloperApp];
  }

  else
  {
    isDeveloperApp = 0;
  }

  return isDeveloperApp;
}

- (BOOL)checkShouldSaveHangLogs
{
  if (self->shouldDisableProcess)
  {
    LOBYTE(hangtracerDaemonEnabled) = 0;
  }

  else
  {
    v4 = +[HTPrefs sharedPrefs];
    isInternal = [v4 isInternal];

    if (isInternal)
    {
      LOBYTE(hangtracerDaemonEnabled) = 1;
    }

    else
    {
      v6 = +[HTPrefs sharedPrefs];
      v13 = 0;
      v7 = [v6 getHighestPrioritySettingValue:@"HangTracerEnabled" matchingSelector:"BOOLValue" contextPrefixOut:&v13];
      v8 = v13;

      if (v7)
      {
        if ([v8 isEqualToString:@"HTThirdPartyDevSupport"] && !-[HTProcessInfo isDeveloperApp](self, "isDeveloperApp"))
        {
          LOBYTE(hangtracerDaemonEnabled) = 0;
        }

        else
        {
          LOBYTE(hangtracerDaemonEnabled) = [v7 BOOLValue];
        }
      }

      else
      {
        v9 = +[HTPrefs sharedPrefs];
        hangtracerDaemonEnabled = [v9 hangtracerDaemonEnabled];

        v11 = sub_100003824(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v15 = hangtracerDaemonEnabled;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No overriden settings found to be enabling or disabling hangtracing. Using default of %{BOOL}d.", buf, 8u);
        }
      }
    }
  }

  return hangtracerDaemonEnabled;
}

+ (void)initialize
{
  qword_100067AA0 = objc_alloc_init(NSMutableArray);

  _objc_release_x1();
}

+ (void)addDisplayStateChangeEvent:(DisplayStateChangeEvent)event
{
  v3 = dword_100067B48;
  *(&unk_100067AA8 + dword_100067B48) = event;
  dword_100067B48 = (v3 + 1) % 0xAu;
}

+ (void)checkForHangTimeouts:(unint64_t)timeouts
{
  os_unfair_lock_lock(&stru_100067B4C);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) checkEventsForTimeouts:timeouts withType:{2, v14}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);
  if (v10)
  {
    v12 = sub_100003824(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      serviceName = [v10 serviceName];
      *buf = 138412290;
      v19 = serviceName;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Hang for service name %@ timed out, recording", buf, 0xCu);
    }

    [v10 recordHang];
  }
}

- (unint64_t)getHangStartTime:(unint64_t)time
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return -1;
  }

  v6 = 0;
  v7 = -1;
  v8 = 380;
  do
  {
    if (!atomic_load((shmem_region + v8 - 348)) && (*(&shmem_region->var0 + v8) & 1) == 0)
    {
      v10 = *(shmem_region + v8 - 372);
      if (time > v10 && sub_1000024F8(time - v10) > 250.0)
      {
        v11 = sub_10001AB1C(self->pid);
        if (v10 >= v7)
        {
          v12 = v7;
        }

        else
        {
          v12 = v10;
        }

        if (!v11)
        {
          v7 = v12;
        }
      }
    }

    ++v6;
    shmem_region = self->shmem_region;
    v8 += 584;
  }

  while (v6 < shmem_region->var1);
  return v7;
}

+ (unint64_t)getEarliestPendingHangStartTime:(unint64_t)time
{
  os_unfair_lock_lock(&stru_100067B4C);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    v9 = -1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 getHangStartTime:time];
        if (v12 < v9)
        {
          v13 = v12;
          v14 = v11[3];
          v15 = sub_1000024F8(time - v12);
          v16 = [NSString stringWithFormat:@"detected pending hang in %@, duration %.2f ms", v14, *&v15, v21];

          v7 = v16;
          v9 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v9 = -1;
  }

  os_unfair_lock_unlock(&stru_100067B4C);
  if (v7)
  {
    v18 = sub_100003824(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "getEarliestPendingHangStartTime: %@", buf, 0xCu);
    }
  }

  if (v9 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  return v19;
}

+ (void)checkForHUDTimeouts:(unint64_t)timeouts
{
  os_unfair_lock_lock(&stru_100067B4C);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) checkEventsForHUDUpdate:{timeouts, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (void)stopWatchingPid:(int)pid
{
  os_unfair_lock_lock(&stru_100067B4C);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(*(&v9 + 1) + 8 * i) + 56) == pid)
        {
          [qword_100067AA0 removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (void)stopWatchingAllPids
{
  os_unfair_lock_lock(&stru_100067B4C);
  [qword_100067AA0 removeAllObjects];

  os_unfair_lock_unlock(&stru_100067B4C);
}

+ (id)processForPid:(int)pid
{
  os_unfair_lock_lock(&stru_100067B4C);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = qword_100067AA0;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9[14] == pid)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&stru_100067B4C);

  return v10;
}

+ (id)startWatchingPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d
{
  v9 = *&pid;
  v10 = [HTProcessInfo processForPid:?];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100003824(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WARNING: %{public}@ was already being watched.", &v16, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v14 = [[HTProcessInfo alloc] initWithPid:v9 sharedMem:mem length:length bundleID:d];
    if (v14)
    {
      os_unfair_lock_lock(&stru_100067B4C);
      [qword_100067AA0 addObject:v14];
      os_unfair_lock_unlock(&stru_100067B4C);
    }

    v11 = v14;
    v13 = v11;
  }

  return v13;
}

+ (BOOL)shouldSaveFenceHangLogs
{
  v2 = +[HTPrefs sharedPrefs];
  isInternal = [v2 isInternal];

  if (isInternal)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    os_unfair_lock_lock(&stru_100067B4C);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = qword_100067AA0;
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 isInForeground] && (v8[72] & 1) != 0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_14;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    os_unfair_lock_unlock(&stru_100067B4C);
  }

  return v4;
}

+ (BOOL)isAnyThirdPartyDeveloperProcessForeground
{
  os_unfair_lock_lock(&stru_100067B4C);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = qword_100067AA0;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isInForeground] && (objc_msgSend(v6, "isDeveloperApp") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  os_unfair_lock_unlock(&stru_100067B4C);
  return v3;
}

- (BOOL)isInForeground
{
  uTF8String = [(NSString *)self->processBundleID UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = [(NSString *)self->processBundleID lengthOfBytesUsingEncoding:4];
    shmem_region = self->shmem_region;
    var1 = shmem_region->var1;
    if (var1)
    {
      v8 = v5;
      while (!shmem_region->var2[0].var12[255])
      {
        v5 = strncmp(v4, shmem_region->var2[0].var12, v8);
        if (!v5)
        {
          v10 = atomic_load(&shmem_region->var2[0].var3);
          LODWORD(uTF8String) = v10 == 0;
          return uTF8String;
        }

        shmem_region = (shmem_region + 584);
        if (!--var1)
        {
          goto LABEL_11;
        }
      }

      shmem_region->var2[0].var12[255] = 0;
      v9 = sub_100003824(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000332CC();
      }
    }

LABEL_11:
    LOBYTE(uTF8String) = 0;
  }

  return uTF8String;
}

- (HTProcessInfo)initWithPid:(int)pid sharedMem:(void *)mem length:(unint64_t)length bundleID:(const char *)d
{
  v11 = sub_10000450C();
  v12 = v11;
  if (!v11)
  {
    v14 = sub_100003824(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(lengthCopy) = pid;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to identify process name of pid %d", buf, 8u);
    }

    goto LABEL_25;
  }

  if (length >> 7 <= 0x2C)
  {
    v13 = sub_100003824(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      lengthCopy = length;
      v42 = 2048;
      v43 = 5760;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Shared memory region smaller than expected: %zu < %zu", buf, 0x16u);
    }

LABEL_24:

    munmap(mem, length);
LABEL_25:
    selfCopy = 0;
    goto LABEL_26;
  }

  if (*mem != 7)
  {
    v13 = sub_100003824(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100033334(mem, v13);
    }

    goto LABEL_24;
  }

  v39.receiver = self;
  v39.super_class = HTProcessInfo;
  v15 = [(HTProcessInfo *)&v39 init];
  v16 = v15;
  if (v15)
  {
    v15->pid = pid;
    v15->shmem_length = length;
    v15->shmem_region = mem;
    objc_storeStrong(&v15->processPath, v12);
    lastPathComponent = [(NSString *)v16->processPath lastPathComponent];
    v18 = lastPathComponent;
    if (lastPathComponent)
    {
      v19 = lastPathComponent;
    }

    else
    {
      v19 = @"[Unknown]";
    }

    objc_storeStrong(&v16->processName, v19);

    v20 = [NSString stringWithUTF8String:d];
    processBundleID = v16->processBundleID;
    v16->processBundleID = v20;

    v22 = [(NSString *)v16->processBundleID rangeOfString:@"com.apple." options:1];
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v16->isFirstPartyApp = v25;
    if (v24)
    {
      v28 = sub_100004620(v16->processBundleID);
    }

    else
    {
      v28 = 0;
    }

    v16->shouldDisableProcess = v28;
    v16->shouldSaveHangLogs = [(HTProcessInfo *)v16 checkShouldSaveHangLogs];
    v29 = dispatch_source_create(&_dispatch_source_type_proc, pid, 0x80000000uLL, qword_100067D60);
    appExitSource = v16->appExitSource;
    v16->appExitSource = v29;

    v31 = v16->appExitSource;
    if (v31)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10001C244;
      v37[3] = &unk_100055C40;
      pidCopy = pid;
      v37[4] = v16;
      dispatch_source_set_event_handler(v31, v37);
      dispatch_resume(v16->appExitSource);
    }

    else
    {
      v33 = sub_100003824(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000333B0(pid, v33);
      }
    }

    v34 = sub_100003824(v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      processPath = v16->processPath;
      pid = v16->pid;
      *buf = 138543618;
      lengthCopy = processPath;
      v42 = 1024;
      LODWORD(v43) = pid;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "New proc: %{public}@(%u)", buf, 0x12u);
    }
  }

  self = v16;
  selfCopy = self;
LABEL_26:

  return selfCopy;
}

- (id)checkEventsForTimeouts:(unint64_t)timeouts withType:(int64_t)type
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    goto LABEL_15;
  }

  v8 = 0;
  timeoutsCopy = timeouts;
  v10 = 424;
  while (1)
  {
    if (!atomic_load((shmem_region + v10 - 392)))
    {
      v12 = *(shmem_region + v10 - 416);
      if (v12 != -1 && v12 > timeouts)
      {
        goto LABEL_15;
      }

      v14 = sub_1000024F8((timeoutsCopy - v12));
      v15 = v14;
      if (type == 2)
      {
        v16 = +[HTPrefs sharedPrefs];
        runloopHangTimeoutDurationMSec = [v16 runloopHangTimeoutDurationMSec];

        if (v15 <= runloopHangTimeoutDurationMSec)
        {
          goto LABEL_14;
        }
      }

      else if (type != 8 || v14 <= 250.0)
      {
        goto LABEL_14;
      }

      v18 = sub_10002AA48(v12, timeouts, self->shmem_region->var3, 0);
      if ((v18 & 1) == 0)
      {
        break;
      }
    }

LABEL_14:
    ++v8;
    shmem_region = self->shmem_region;
    v10 += 584;
    if (v8 >= shmem_region->var1)
    {
      goto LABEL_15;
    }
  }

  v21 = shmem_region + v10;
  *(shmem_region + v10 - 416) = -1;
  if (*(shmem_region + v10 - 45))
  {
    *(v21 - 45) = 0;
    v22 = sub_100003824(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1000332CC();
    }

    goto LABEL_25;
  }

  v23 = v21 - 364;
  v24 = v21 - 301;
  if (!*v24)
  {
    if (*(shmem_region + v10 - 44))
    {
      *(shmem_region + v10 - 44) = 0;
      v25 = sub_100003824(v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = sub_1000043DC(type);
        processBundleID = self->processBundleID;
        *buf = 138543874;
        v66 = v26;
        v67 = 2114;
        v68 = processBundleID;
        v69 = 2048;
        v70 = v12;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Hang %{public}@ detected for bundleid %{public}@ for already reported user switched away hang, startTime %llu", buf, 0x20u);
      }

      goto LABEL_15;
    }

    if (sub_10001AB1C(self->pid))
    {
      v28 = strncmp(shmem_region + v10 - 300, "com.apple.HangTracer.HangTracerTests.testbundleid", 0x100uLL);
      v29 = v28;
      v30 = sub_100003824(v28);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          sub_100033490(type);
        }

        AnalyticsSendEventLazy();
        v32 = sub_1000043DC(type);
        v33 = self->processBundleID;
        v34 = sub_10001A92C(v32);
        sub_10001A9B4(v32, v33, v12, timeouts, v34);

        goto LABEL_15;
      }

      if (v31)
      {
        sub_100033544(type);
      }
    }

    if (type == 2)
    {
      v35 = shmem_region + v10;
      v36 = (shmem_region + v10 - 376);
      v37 = kdebug_trace();
      v38 = self->processBundleID;
      v39 = sub_10001A92C(v37);
      sub_10001A9B4(@"Timed Out Runloop Hang", v38, v12, timeouts, v39);

      v40 = AnalyticsSendEventLazy();
      v41 = sub_100003824(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000336B0();
      }

      v42 = [HTTimeoutHangInfo alloc];
      v43 = [NSString stringWithUTF8String:v23];
      v44 = *v36;
      v45 = *(v35 - 388) != 0;
      isThirdPartyDevSupportModeHang = [(HTProcessInfo *)self isThirdPartyDevSupportModeHang];
      v47 = sub_100027494(v35);
      LOBYTE(v64) = 0;
      LOBYTE(v63) = isThirdPartyDevSupportModeHang;
      v19 = [(HTTimeoutHangInfo *)v42 initWithServiceName:v43 threadID:v44 startTime:v12 endTime:timeouts saveTailspin:v45 subType:2 userActionData:0 isThirdPartyDevSupportModeHang:v63 processInfo:self captureMicroHang:v64 recentStateInfo:v47];

LABEL_54:
      goto LABEL_16;
    }

    v48 = sub_1000043DC(8uLL);
    v49 = self->processBundleID;
    v50 = sub_10001A92C(v48);
    sub_10001A9B4(v48, v49, v12, timeouts, v50);

    v51 = shmem_region + v10 - 386;
    v52 = *v51;
    if (!*v51)
    {
      goto LABEL_48;
    }

    v48 = +[HTPrefs sharedPrefs];
    if (v15 > [v48 runloopHangDurationThresholdMSec])
    {

LABEL_51:
      v56 = sub_100003824(v53);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1000335D0(&self->processBundleID, self);
      }

      v57 = [HTTimeoutHangInfo alloc];
      v43 = [NSString stringWithUTF8String:v23];
      v58 = shmem_region + v10;
      v59 = *(shmem_region + v10 - 376);
      v60 = *(shmem_region + v10 - 388) != 0;
      isThirdPartyDevSupportModeHang2 = [(HTProcessInfo *)self isThirdPartyDevSupportModeHang];
      v62 = sub_100027494(v58);
      LOBYTE(v64) = 0;
      LOBYTE(v63) = isThirdPartyDevSupportModeHang2;
      v19 = [(HTTimeoutHangInfo *)v57 initWithServiceName:v43 threadID:v59 startTime:v12 endTime:timeouts saveTailspin:v60 subType:8 userActionData:0 isThirdPartyDevSupportModeHang:v63 processInfo:self captureMicroHang:v64 recentStateInfo:v62];

      goto LABEL_54;
    }

    if (*v51)
    {
    }

    else
    {
LABEL_48:
      v54 = +[HTPrefs sharedPrefs];
      runloopHangThirdPartyDurationThresholdMSec = [v54 runloopHangThirdPartyDurationThresholdMSec];

      if (v52)
      {
      }

      if (v15 > runloopHangThirdPartyDurationThresholdMSec)
      {
        goto LABEL_51;
      }
    }

    AnalyticsSendEventLazy();
    goto LABEL_15;
  }

  *v24 = 0;
  v22 = sub_100003824(v18);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    sub_100033428();
  }

LABEL_25:

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)checkEventsForHUDUpdate:(unint64_t)update
{
  if (![(HTProcessInfo *)self shouldDisplayNonFenceHangToHUD])
  {
    return;
  }

  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return;
  }

  v6 = 0;
  for (i = 379; ; i += 584)
  {
    v8 = shmem_region + i;
    v13 = 0.0;
    v9 = sub_10001AFD4(update, shmem_region + i - 371, &v13);
    if (v9)
    {
      break;
    }

LABEL_7:
    ++v6;
    shmem_region = self->shmem_region;
    if (v6 >= shmem_region->var1)
    {
      return;
    }
  }

  v11 = *v8;
  v10 = (v8 - 255);
  if (!v11)
  {
    sub_1000251D8(v10, update, *(shmem_region + i - 371), 0x7FFFFFFFFFFFFFFFLL, 0, 0, v13);
    goto LABEL_7;
  }

  *(&shmem_region->var0 + i) = 0;
  v12 = sub_100003824(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1000332CC();
  }
}

+ (id)displayStateArray
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  v4 = dword_100067B48;
  v5 = 10;
  do
  {
    v6 = &unk_100067AA8 + 16 * v4;
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 2);
      v9 = sub_100003824(v2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v14 = v7;
        v15 = 1024;
        v16 = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "timestamp: %llu, status: %d", buf, 0x12u);
      }

      v10 = [NSNumber numberWithUnsignedLongLong:v7];
      [v3 addObject:v10];

      v11 = [NSNumber numberWithInt:v8];
      [v3 addObject:v11];
    }

    v4 = (v4 + 1) % 0xA;
    --v5;
  }

  while (v5);

  return v3;
}

+ (id)recentAppsDict
{
  v2 = sub_100003824(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100033778(v2);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = mach_absolute_time();
  os_unfair_lock_lock(&stru_100067B4C);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = qword_100067AA0;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 startTimeWithinMS:10000 ofCurrentTime:v4])
        {
          v11 = *(v10 + 32);
          v12 = [NSString stringWithFormat:@"%i", *(v10 + 56)];
          [v3 setObject:v11 forKeyedSubscript:v12];

          v14 = sub_100003824(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(v10 + 56);
            v16 = *(v10 + 32);
            *buf = 67109378;
            v23 = v15;
            v24 = 2112;
            v25 = v16;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Found Recent App: pid=%i path=%@", buf, 0x12u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&stru_100067B4C);

  return v3;
}

- (BOOL)startTimeWithinMS:(unint64_t)s ofCurrentTime:(unint64_t)time
{
  shmem_region = self->shmem_region;
  if (!shmem_region->var1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  sCopy = s;
  v10 = 380;
  do
  {
    v11 = *(shmem_region + v10 - 372);
    if (time < v11 && (*(&shmem_region->var0 + v10) & 1) == 0 && sub_1000024F8(time - v11) < sCopy)
    {
      v8 = 1;
    }

    ++v7;
    shmem_region = self->shmem_region;
    v10 += 584;
  }

  while (v7 < shmem_region->var1);
  return v8;
}

- (void)recordHang:(id)hang threadID:(unint64_t)d startTime:(unint64_t)time endTime:(unint64_t)endTime saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype userActionData:(id)data isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1 recentStateInfo:(id)self2
{
  tailspinCopy = tailspin;
  hangCopy = hang;
  dataCopy = data;
  infoCopy = info;
  v18 = sub_1000024F8(endTime - time);
  isFirstPartyApp = self->isFirstPartyApp;
  if (isFirstPartyApp)
  {
    v12 = +[HTPrefs sharedPrefs];
    if (v18 > [v12 runloopHangDurationThresholdMSec])
    {
      v20 = 1;
LABEL_7:

      goto LABEL_8;
    }

    if (self->isFirstPartyApp)
    {
      v20 = 0;
      goto LABEL_7;
    }
  }

  v21 = +[HTPrefs sharedPrefs];
  v20 = v18 > [v21 runloopHangThirdPartyDurationThresholdMSec];

  if (isFirstPartyApp)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (subtype == 9 || !v20 && !microHang)
  {
    v46 = +[HTHangInfo allHangs];
    v47 = [v46 count];

    v49 = infoCopy;
    if (v47)
    {
      +[HTHangInfo getHangWaitTimeout];
      if (v50 <= 0.0)
      {
        v48 = +[HTTailspin saveTailspinForAllPendingHangs];
      }

      else
      {
        sub_10000EB44(@"Record Hang", v50);
      }
    }

    v51 = sub_100003824(v48);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      processName = self->processName;
      v53 = sub_1000043DC(subtype);
      v54 = +[HTPrefs sharedPrefs];
      *buf = 138544386;
      endTimeCopy = processName;
      v81 = 2048;
      v82 = v18 / 1000.0;
      v83 = 2114;
      v84 = hangCopy;
      v85 = 2114;
      v86 = v53;
      v87 = 2048;
      v88 = [v54 runloopHangDurationThresholdMSec] / 1000.0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@: Hang detected %.2fs (%{public}@, %{public}@) duration < capture threshold %.2fs after accounting for assertion overlaps, not capturing tailspin for it", buf, 0x34u);
    }

    v55 = dataCopy;
  }

  else
  {
    v23 = sub_100003824(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->processName;
      v25 = sub_1000043DC(subtype);
      v26 = +[HTPrefs sharedPrefs];
      *buf = 138544386;
      endTimeCopy = v24;
      v81 = 2048;
      v82 = v18 / 1000.0;
      v83 = 2114;
      v84 = hangCopy;
      v85 = 2114;
      v86 = v25;
      v87 = 2048;
      v88 = [v26 runloopHangDurationThresholdMSec] / 1000.0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Hang detected %.2fs (%{public}@, %{public}@) duration > capture threshold %.2fs after accounting for assertion overlaps", buf, 0x34u);
    }

    if (subtype == 10)
    {
      v28 = sub_100003824(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_1000043DC(0xAuLL);
        *buf = 134218242;
        endTimeCopy = endTime;
        v81 = 2114;
        v82 = *&v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "hang endTime  %llu for hangsubType %{public}@", buf, 0x16u);
      }
    }

    AnalyticsSendEventLazy();
    if (subtype != 8)
    {
      v30 = sub_1000043DC(subtype);
      processBundleID = self->processBundleID;
      v32 = sub_10001A8A4(v30);
      sub_10001A9B4(v30, processBundleID, time, endTime, v32);
    }

    shouldDisplayNonFenceHangToHUD = [(HTProcessInfo *)self shouldDisplayNonFenceHangToHUD];
    if (tailspinCopy)
    {
      v34 = +[HTPrefs sharedPrefs];
      htTailspinEnabled = [v34 htTailspinEnabled];

      if (htTailspinEnabled)
      {
        if (self->shouldSaveHangLogs)
        {
          v38 = sub_10002A60C(v36, v37);
          if (v38)
          {
            v39 = [HTTailspin hasAppExceededGeneratedLogsCountForDuration:self->processName procName:self->isFirstPartyApp isFirstPartyApp:v18];
            if (v39)
            {
              v40 = sub_100003824(v39);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = self->processName;
                v42 = +[HTPrefs sharedPrefs];
                runLoopHangPerPeriodLogLimit = [v42 runLoopHangPerPeriodLogLimit];
                *buf = 138543618;
                endTimeCopy = v41;
                v81 = 1024;
                LODWORD(v82) = runLoopHangPerPeriodLogLimit;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ hit its Generated Log limit of %u for this reporting period. Not saving a report!", buf, 0x12u);
              }

              v44 = 0;
              v45 = 2;
            }

            else
            {
              v62 = [HTTailspin hasExceededDailyLimit:self->isFirstPartyApp isFirstPartyApp:v18];
              if (v62)
              {
                v45 = 1;
              }

              else
              {
                v45 = 11;
              }

              v44 = v62 ^ 1;
            }
          }

          else
          {
            v60 = sub_100003824(v38);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = self->processName;
              *buf = 138543362;
              endTimeCopy = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: Tried to save tailspin, but tailspin support is not present on this device!", buf, 0xCu);
            }

            v44 = 0;
            v45 = 3;
          }
        }

        else
        {
          v58 = sub_100003824(v36);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = self->processName;
            *buf = 138543362;
            endTimeCopy = v59;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Tried to save tailspin, but shouldSaveHangLogs said NO", buf, 0xCu);
          }

          v44 = 0;
          v45 = 4;
        }
      }

      else
      {
        v56 = sub_100003824(v36);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = self->processName;
          *buf = 138543362;
          endTimeCopy = v57;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: HangTracer tailspin support is disabled, not saving a report!", buf, 0xCu);
        }

        v44 = 0;
        v45 = 5;
      }
    }

    else
    {
      v44 = 0;
      v45 = 11;
    }

    v63 = shouldDisplayNonFenceHangToHUD ^ 1;
    if (subtype == 10)
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0)
    {
      uTF8String = [(NSString *)self->processBundleID UTF8String];
      v65 = mach_absolute_time();
      sub_1000251D8(uTF8String, v65, time, endTime, v44, subtype == 2, v18);
    }

    if (v44)
    {
      v66 = [NSString stringWithFormat:@"%@-%@: timeout %.0fms", hangCopy, self->processName, *&v18];
      v67 = [HTHangInfo alloc];
      pid = self->pid;
      v69 = self->isFirstPartyApp;
      v70 = self->processName;
      processPath = self->processPath;
      v49 = infoCopy;
      v55 = dataCopy;
      BYTE2(v74) = shouldDisplayNonFenceHangToHUD;
      BYTE1(v74) = modeHang;
      LOBYTE(v74) = v69;
      v72 = [HTHangInfo initWithPid:v67 threadID:"initWithPid:threadID:startTime:endTime:reportedTime:blownFenceID:hangSubtype:isFirstPartyApp:isThirdPartyDevSupportModeHang:displayedInHUD:serviceName:reason:processName:processPath:userActionData:recentStateInfo:" startTime:pid endTime:d reportedTime:time blownFenceID:endTime hangSubtype:endTime isFirstPartyApp:0 isThirdPartyDevSupportModeHang:subtype displayedInHUD:v74 serviceName:hangCopy reason:v66 processName:v70 processPath:processPath userActionData:dataCopy recentStateInfo:infoCopy];
      [HTHangInfo addHang:v72];
      +[HTHangInfo getHangWaitTimeout];
      if (v73 <= 0.0)
      {
        +[HTTailspin saveTailspinForAllPendingHangs];
      }

      else
      {
        sub_10000EB44(@"Record Hang", v73);
      }
    }

    else
    {
      [HTTailspin notifyHTTailSpinResult:0 failReason:v45 hangSubType:subtype htBugType:sub_10001AE00(self->isFirstPartyApp, modeHang, v18)];
      v49 = infoCopy;
      v55 = dataCopy;
    }
  }
}

+ (void)recordFenceHang:(id)hang startTime:(unint64_t)time endTime:(unint64_t)endTime reportedTime:(unint64_t)reportedTime blownFenceId:(unint64_t)id saveTailspin:(BOOL)tailspin subtype:(int64_t)subtype isThirdPartyDevSupportModeHang:(BOOL)self0 captureMicroHang:(BOOL)self1
{
  hangCopy = hang;
  v16 = sub_1000024F8(endTime - time);
  v17 = +[HTPrefs sharedPrefs];
  runloopHangDurationThresholdMSec = [v17 runloopHangDurationThresholdMSec];

  if (subtype != 9 && (v16 > runloopHangDurationThresholdMSec || microHang))
  {
    v24 = sub_100003824(v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v40 = v16 / 1000.0;
      v41 = 2114;
      v42 = hangCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fence-hang: Hang detected %.2fs (%{public}@) > capture threshold", buf, 0x16u);
    }

    v25 = +[HTPrefs sharedPrefs];
    shouldDisplayFenceHangToHUD = [v25 shouldDisplayFenceHangToHUD];

    if (shouldDisplayFenceHangToHUD)
    {
      v27 = sub_1000024F8(endTime - time - 24000000);
      v28 = mach_absolute_time();
      sub_1000251D8("Fence Hang", v28, time + 12000000, endTime - 12000000, 1, subtype == 2, v27);
    }

    v29 = +[HTPrefs sharedPrefs];
    htTailspinEnabled = [v29 htTailspinEnabled];

    if (htTailspinEnabled)
    {
      v31 = +[HTProcessInfo shouldSaveFenceHangLogs];
      if (v31)
      {
        if (sub_10002A60C(v31, v32))
        {
          if (!+[HTTailspin hasExceededDailyFenceLogLimit])
          {
            v35 = [NSString stringWithFormat:@"%@-%@: timeout %.0fms", hangCopy, @"AppTBD", *&v16];
            BYTE2(v38) = shouldDisplayFenceHangToHUD;
            BYTE1(v38) = modeHang;
            LOBYTE(v38) = 0;
            v36 = [HTHangInfo initWithPid:"initWithPid:threadID:startTime:endTime:reportedTime:blownFenceID:hangSubtype:isFirstPartyApp:isThirdPartyDevSupportModeHang:displayedInHUD:serviceName:reason:processName:processPath:userActionData:recentStateInfo:" threadID:0 startTime:0 endTime:time reportedTime:endTime blownFenceID:reportedTime hangSubtype:id isFirstPartyApp:subtype isThirdPartyDevSupportModeHang:v38 displayedInHUD:hangCopy serviceName:v35 reason:@"AppTBD" processName:&stru_100057080 processPath:0 userActionData:0 recentStateInfo:?];
            [HTHangInfo addHang:v36];
            +[HTHangInfo getHangWaitTimeout];
            if (v37 <= 0.0)
            {
              +[HTTailspin saveTailspinForAllPendingHangs];
            }

            else
            {
              sub_10000EB44(@"Record Fence Hang", v37);
            }

            goto LABEL_24;
          }

          v33 = 1;
        }

        else
        {
          v33 = 3;
        }
      }

      else
      {
        v33 = 14;
      }
    }

    else
    {
      v33 = 5;
    }

    [HTTailspin notifyHTTailSpinResult:0 failReason:v33 hangSubType:subtype htBugType:0];
    goto LABEL_24;
  }

  v20 = +[HTHangInfo allHangs];
  v21 = [v20 count];

  if (v21)
  {
    +[HTHangInfo getHangWaitTimeout];
    if (v23 <= 0.0)
    {
      v22 = +[HTTailspin saveTailspinForAllPendingHangs];
    }

    else
    {
      sub_10000EB44(@"Record Fence Hang", v23);
    }
  }

  v34 = sub_100003824(v22);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v40 = v16 / 1000.0;
    v41 = 2114;
    v42 = hangCopy;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Fence-hang: Hang detected %.2fs (%{public}@), duration < capture threshold after accounting for assertion overlaps, not capturing tailspin for it", buf, 0x16u);
  }

LABEL_24:
}

- (void)dealloc
{
  v3 = sub_100003824(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000337BC(self, v3);
  }

  shmem_region = self->shmem_region;
  if (shmem_region)
  {
    munmap(shmem_region, self->shmem_length);
    self->shmem_region = 0;
  }

  appExitSource = self->appExitSource;
  if (appExitSource)
  {
    dispatch_source_cancel(appExitSource);
  }

  v6.receiver = self;
  v6.super_class = HTProcessInfo;
  [(HTProcessInfo *)&v6 dealloc];
}

- (id)getApplicationByBundleId:(id)id
{
  appInfo = self->appInfo;
  if (!appInfo)
  {
    v5 = sub_100003824(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100033838(self, v5);
    }

    v6 = [LSApplicationRecord alloc];
    processBundleID = self->processBundleID;
    v15 = 0;
    v8 = [v6 initWithBundleIdentifier:processBundleID allowPlaceholder:0 error:&v15];
    v9 = v15;
    v10 = self->appInfo;
    self->appInfo = v8;

    if (v9)
    {
      v12 = sub_100003824(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000338B4(&self->processBundleID, v9, v12);
      }

      v13 = self->appInfo;
      self->appInfo = 0;
    }

    appInfo = self->appInfo;
  }

  return appInfo;
}

- (BOOL)isDeveloperApp
{
  if (self->isFirstPartyApp)
  {
    return 0;
  }

  v4 = +[HTPrefs sharedPrefs];
  thirdPartyIncludeNonDevelopmentApps = [v4 thirdPartyIncludeNonDevelopmentApps];

  if (thirdPartyIncludeNonDevelopmentApps)
  {
    return 1;
  }

  v6 = [(HTProcessInfo *)self getApplicationByBundleId:self->processBundleID];
  isProfileValidated = [v6 isProfileValidated];

  return isProfileValidated;
}

- (BOOL)shouldDisplayNonFenceHangToHUD
{
  v3 = +[HTPrefs sharedPrefs];
  if ([v3 isInternal])
  {
    v4 = +[HTPrefs sharedPrefs];
    hudEnabled = [v4 hudEnabled];

    if (hudEnabled)
    {
      return !self->shouldDisableProcess;
    }
  }

  else
  {
  }

  v7 = +[HTPrefs sharedPrefs];
  thirdPartyDevHangHUDEnabled = [v7 thirdPartyDevHangHUDEnabled];

  return thirdPartyDevHangHUDEnabled && [(HTProcessInfo *)self isDeveloperApp];
}

@end