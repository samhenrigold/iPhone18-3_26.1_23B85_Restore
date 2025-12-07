void sub_1000015A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 _queue_submitEvent:?];
  }

  else
  {
    v3 = sub_1000118BC(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100017DB8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

id sub_100001AEC(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136446466;
    v7 = "[DRAnalytics _queue_submitEvent:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: SUBMIT: Submitting CoreAnalytics event: %{public}@", &v6, 0x16u);
  }

  v4 = [*(a1 + 32) eventPayload];

  return v4;
}

void sub_100001DC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_100001DE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v15 = a1;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  v20 = [NSString stringWithFormat:@"[%s:%d][%s] %@", a8, a9, a7, v16];
  v21 = sub_1000118BC(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v26 = &stru_100035AE0;
    *buf = 136448002;
    v29 = "DRCreateErrorWithInfo";
    v30 = 2082;
    if (v17)
    {
      v26 = v17;
    }

    v31 = a8;
    v32 = 1024;
    v33 = a9;
    v34 = 2082;
    v35 = a7;
    v36 = 2114;
    v37 = v15;
    v38 = 2048;
    v39 = a2;
    v40 = 2114;
    v41 = v16;
    v42 = 2114;
    v43 = v26;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s: Error [%{public}s:%d][%{public}s]: %{public}@ - %ld - %{public}@ %{public}@\n", buf, 0x4Eu);
  }

  if (v18)
  {
    v22 = [v18 mutableCopy];
  }

  else
  {
    v22 = [NSMutableDictionary dictionaryWithCapacity:3];
  }

  v23 = v22;
  [v22 setObject:v20 forKey:NSDebugDescriptionErrorKey];
  [v23 setObject:v19 forKey:@"StaticString"];

  if (v17)
  {
    [v23 setObject:v17 forKey:NSUnderlyingErrorKey];
  }

  v24 = [NSError errorWithDomain:v15 code:a2 userInfo:v23];

  return v24;
}

BOOL sub_100002068()
{
  size = 0;
  v0 = sysctlbyname("hw.osenvironment", 0, &size, 0, 0);
  if (v0 == -1)
  {
    v10 = sub_1000118BC(v0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100018254(v10);
    }
  }

  else
  {
    v1 = malloc_type_malloc(size, 0x5C398F0AuLL);
    if (v1)
    {
      v2 = v1;
      bzero(v1, size);
      v3 = sysctlbyname("hw.osenvironment", v2, &size, 0, 0);
      v4 = v3;
      v5 = sub_1000118BC(v3);
      v6 = v5;
      v7 = v4 == -1;
      v8 = v4 != -1;
      if (v7)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100018114(v6);
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "DREIsRunningInDeviceRecoveryEnvironment";
          v15 = 2082;
          v16 = v2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in OS environment: %{public}s", buf, 0x16u);
        }

        v9 = strncmp(v2, "device-recovery", 0xFuLL);
        if (v9)
        {
          v8 = 0;
LABEL_18:
          free(v2);
          return v8;
        }

        v6 = sub_1000118BC(v9);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v14 = "DREIsRunningInDeviceRecoveryEnvironment";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Running in DeviceRecoveryEnvironment\n", buf, 0xCu);
        }
      }

      goto LABEL_18;
    }

    v10 = sub_1000118BC(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000181D0(v10);
    }
  }

  return 0;
}

BOOL sub_100002288()
{
  result = sub_100002068();
  if (result)
  {
    return ((sub_1000022B4() - 3) & 0xFFFFFFFD) == 0;
  }

  return result;
}

id sub_1000022B4()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryReasonEnum];

  return v1;
}

id sub_1000022F4()
{
  v0 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v1 = [v0 DREEntryDescription];

  return v1;
}

id sub_100002348(uint64_t a1)
{
  v2 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v3 = [v2 DREStringFromEntryReason:a1];

  return v3;
}

id sub_1000023A4()
{
  v0 = sub_1000022B4();

  return sub_100002348(v0);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1000118BC(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136446722;
    *&v10[4] = "main";
    v11 = 2082;
    v12 = "Oct 11 2025";
    v13 = 2082;
    v14 = "01:51:07";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Daemon devicerecoveryd started (built at %{public}s %{public}s)", v10, 0x20u);
  }

  v2 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  v3 = objc_alloc_init(DeviceRecoveryService);
  if (!v3)
  {
    sub_100018614(v10);
LABEL_10:
    v6 = *v10;
    goto LABEL_13;
  }

  v4 = [DeviceRecoveryOverrideService alloc];
  v5 = [(DeviceRecoveryService *)v3 serviceQueue];
  v6 = [(DeviceRecoveryOverrideService *)v4 initWithQueue:v5];

  if (!v6)
  {
    sub_10001853C(v10);
    goto LABEL_10;
  }

  [(DeviceRecoveryService *)v3 setOverrideService:v6];
  v7 = [(DeviceRecoveryService *)v3 startService];
  if (v7)
  {
    sub_1000182FC(v7);
  }

  else
  {
    v8 = [(DeviceRecoveryOverrideService *)v6 startService];
    if (!v8)
    {
      dispatch_main();
    }

    sub_10001841C(v8);
  }

LABEL_13:

  objc_autoreleasePoolPop(v0);
  return 0xFFFFFFFFLL;
}

BOOL sub_1000025E8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100002B74(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136446466;
    v5 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v4, 0x16u);
  }
}

void sub_100002C30(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136446466;
    v5 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v4, 0x16u);
  }
}

void sub_1000033AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_1000033D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void sub_1000033F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000118BC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString alloc];
    v6 = [NSString stringWithUTF8String:a1];
    v7 = [v5 initWithFormat:v6 arguments:a2];
    v8 = 136446466;
    v9 = "dr_libpartition_logger";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@", &v8, 0x16u);
  }
}

void sub_1000034FC(uint64_t a1, int a2)
{
  v4 = sub_1000118BC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "dr_libpartition_execution_logger";
    v7 = 1040;
    v8 = a2;
    v9 = 2082;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}.*s\n", &v5, 0x1Cu);
  }
}

uint64_t sub_1000035CC(const char **a1, void (*a2)(_BYTE *, ssize_t, uint64_t), uint64_t a3)
{
  v21 = 0;
  *v23 = -1;
  v6 = pipe(v23);
  if (v6)
  {
    v7 = sub_1000118BC(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100018EF8();
    }

    return 0xFFFFFFFFLL;
  }

  v20 = 0;
  posix_spawn_file_actions_init(&v20);
  posix_spawn_file_actions_adddup2(&v20, v23[1], 1);
  posix_spawn_file_actions_addclose(&v20, v23[0]);
  v9 = posix_spawn(&v21, *a1, &v20, 0, a1, 0);
  if (v9)
  {
    v8 = v9;
    v10 = sub_1000118BC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100018F90(a1, v8);
    }

    close(v23[0]);
    goto LABEL_9;
  }

  v12 = v23[0];
  close(v23[1]);
  v23[1] = -1;
  v13 = read(v12, v22, 0x400uLL);
  if (v13 >= 1)
  {
    for (i = v13; i > 0; i = read(v12, v22, 0x400uLL))
    {
      if (a2)
      {
        a2(v22, i, a3);
      }
    }
  }

  v19 = 0;
  v15 = waitpid(v21, &v19, 0);
  if (v15 == -1)
  {
    v16 = __error();
    v8 = *v16;
    v17 = sub_1000118BC(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100019144();
    }

    goto LABEL_9;
  }

  if ((v19 & 0x7F) == 0x7F)
  {
    v18 = sub_1000118BC(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100019024();
    }
  }

  else
  {
    if ((v19 & 0x7F) == 0)
    {
      v8 = BYTE1(v19);
      goto LABEL_9;
    }

    v18 = sub_1000118BC(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000190B4();
    }
  }

  v8 = 0xFFFFFFFFLL;
LABEL_9:
  posix_spawn_file_actions_destroy(&v20);
  if (v23[1] != -1)
  {
    close(v23[1]);
  }

  return v8;
}

void sub_100003A8C(id a1, NSError *a2)
{
  v2 = [(NSError *)a2 localizedDescription];
  NSLog(@"OSASubmissionClient error: %@", v2);
}

void sub_100003AD8(uint64_t a1)
{
  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment])
  {
    v2 = [*(a1 + 32) mountSystemDataVolume];
    set_partition_logging_function(sub_1000033F0);
    set_partition_execution_function(sub_1000035CC);
    set_partition_execution_logging_function(sub_1000034FC);
    v3 = [@"/var/MobileSoftwareUpdate" UTF8String];
    updated = mount_update_partition_if_exists(v3, v4, v5, v6, v7, v8, v9, v10);
    if (updated)
    {
      v12 = sub_1000118BC(updated);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000194C0();
      }
    }

    else
    {
      [*(a1 + 32) setUpdateVolumeMountPath:@"/var/MobileSoftwareUpdate"];
    }

    v14 = [*(a1 + 32) systemDataVolumeMountPath];

    if (v14)
    {
      v15 = +[MCProfileConnection sharedConnection];
      v16 = [*(a1 + 32) systemDataVolumeMountPath];
      [*(a1 + 32) setUnlockScreenType:{objc_msgSend(v15, "unlockScreenTypeForSharedDataVolume:OutSimplePasscodeType:", v16, *(a1 + 32) + 52)}];

      v18 = sub_1000118BC(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) unlockScreenType];
        v20 = [*(a1 + 32) simplePasscodeType];
        *buf = 136446722;
        v35 = "[DeviceRecoveryService init]_block_invoke";
        v36 = 1024;
        *v37 = v19;
        *&v37[4] = 1024;
        *&v37[6] = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: unlockScreenType = %d, simplePasscodeType = %d", buf, 0x18u);
      }
    }

    v32 = @"DeviceHandle";
    v33 = &off_100037A50;
    [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v21 = [*(a1 + 32) setIsPasscodeSet:MKBGetDeviceLockState() != 3];
    v22 = sub_1000118BC(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 32) isPasscodeSet];
      v24 = "is not";
      if (v23)
      {
        v24 = "is";
      }

      *buf = 136446466;
      v35 = "[DeviceRecoveryService init]_block_invoke";
      v36 = 2080;
      *v37 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: passcode %s set", buf, 0x16u);
    }

    v25 = MSUCopyEnvInfoForNeRD();
    v26 = v25;
    if (v25)
    {
      v27 = [v25 objectForKeyedSubscript:@"BootedOSLanguage"];
      [*(a1 + 32) setMainOSLanguageCode:v27];
    }

    v28 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.enteredDeviceRecovery"];
    v29 = [NSNumber numberWithUnsignedInt:sub_1000022B4()];
    objc_msgSend_setEventPayloadEntry_value_(v28);

    v30 = sub_1000022F4();
    if (v30)
    {
      objc_msgSend_setEventPayloadEntry_value_(v28);
    }

    [*(*(a1 + 32) + 16) addEvent:v28];
  }

  else
  {
    v13 = +[MCProfileConnection sharedConnection];
    [*(a1 + 32) setUnlockScreenType:{objc_msgSend(v13, "unlockScreenType")}];

    v31 = +[MCProfileConnection sharedConnection];
    [v31 unlockScreenTypeWithOutSimplePasscodeType:*(a1 + 32) + 52];
  }
}

void sub_100003EF4(id a1)
{
  v1 = +[DeviceRecoveryEnvironmentWorker sharedWorker];
  [v1 CreateCookieAndCleanup];
}

void sub_1000045C8(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136446466;
    v7 = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v6, 0x16u);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v4 clientConnectionInterrupted:WeakRetained];
}

void sub_1000046A4(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 136446466;
    v9 = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v8, 0x16u);
  }

  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v4 clientConnectionInvalidated:WeakRetained];

  v6 = [*(a1 + 40) controlClientConnection];
  v7 = objc_loadWeakRetained((a1 + 48));

  if (v6 == v7)
  {
    [*(a1 + 40) setControlClientConnection:0];
  }
}

void sub_100004CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004CF8(uint64_t a1)
{
  v2 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.PostRecovery"];
  objc_msgSend_setEventPayloadEntry_value_(v2);
  [*(*(a1 + 32) + 16) addEvent:v2];
  [*(*(a1 + 32) + 16) submitAllEvents];
}

uint64_t sub_100004D88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained shouldDownloadBrain];

  if (!v3)
  {
    v16 = sub_1000118BC(v4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Will use builtin recovery brain", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = [v5 recoveryBrainAsset];

  if (!v6)
  {
    v8 = sub_1000118BC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Will attempt to download external brain", buf, 0xCu);
    }

    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = [v9 downloadRecoveryBrain];

    if (!v10 || (v12 = objc_loadWeakRetained((a1 + 56)), [v12 recoveryBrainAsset], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v12, v14))
    {
      v15 = sub_1000118BC(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100019EE0();
      }
    }

    else
    {
      v15 = sub_1000118BC(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v36 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
      }
    }
  }

  v17 = objc_loadWeakRetained((a1 + 56));
  v18 = [v17 recoveryBrainAsset];
  v19 = v18 == 0;

  if (!v19)
  {
    v21 = sub_1000118BC(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v36 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to personalize and graft downloaded DeviceRecoveryBrain", buf, 0xCu);
    }

    v22 = objc_loadWeakRetained((a1 + 56));
    v23 = [v22 personalizeAndGraftRecoveryBrain];

    v25 = sub_1000118BC(v24);
    v16 = v25;
    if (v23)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v36 = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
      }

      v16 = objc_loadWeakRetained((a1 + 56));
      [v16 setDownloadedBrainIsAvailable:1];
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100019F60();
    }

LABEL_23:
  }

  v26 = objc_loadWeakRetained((a1 + 56));
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000051A4;
  v29[3] = &unk_100034C98;
  v28 = *(a1 + 40);
  v27 = v28;
  v31 = v28;
  objc_copyWeak(&v32, (a1 + 56));
  v33 = *(a1 + 64);
  v30 = *(a1 + 32);
  v34 = *(a1 + 65);
  [v26 configureBrain:v29];

  objc_destroyWeak(&v32);
}

void sub_1000051A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000054B8;
  v26[3] = &unk_100034BF8;
  v16 = *(a1 + 40);
  v4 = v16;
  v27 = v16;
  v5 = objc_retainBlock(v26);
  v6 = v5;
  if (v3)
  {
    v7 = sub_1000118BC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019FE0();
    }

    v8 = v3;
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [WeakRetained brainConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100005548;
  v24[3] = &unk_100034C20;
  v11 = v6;
  v25 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v24];

  if (v12)
  {
    if (*(a1 + 64) == 1)
    {
      v13 = [*(a1 + 32) objectForKeyedSubscript:@"OSRecoveryState"];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000055BC;
      v19[3] = &unk_100034C70;
      v14 = &v22;
      v22 = v11;
      v23 = *(a1 + 65);
      v20 = v12;
      v21 = *(a1 + 32);
      [v20 recoverDeviceFromBootedOS:v13 userUnlocked:0 completion:v19];

      v15 = v20;
    }

    else
    {
      if (*(a1 + 65) != 1)
      {
LABEL_12:

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }

      v15 = [*(a1 + 32) objectForKeyedSubscript:@"OSRecoveryState"];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100005714;
      v17[3] = &unk_100034C48;
      v14 = &v18;
      v18 = v11;
      [v12 recoverDeviceFromBootedOS:v15 userUnlocked:1 completion:v17];
    }

    goto LABEL_12;
  }

  if (sub_10001A05C())
  {
    goto LABEL_13;
  }

  v8 = v28;
LABEL_5:
  (v6)[2](v6, v8);
LABEL_14:
}

void sub_1000054B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000118BC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001A1A0();
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }
}

void sub_100005548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001A21C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000055BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_1000118BC(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001A298();
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

  if (*(a1 + 56) != 1)
  {
    v9 = *(*(a1 + 48) + 16);
LABEL_8:
    v9();
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) objectForKeyedSubscript:@"OSRecoveryState"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005704;
  v12[3] = &unk_100034C48;
  v13 = *(a1 + 48);
  [v10 recoverDeviceFromBootedOS:v11 userUnlocked:1 completion:v12];

LABEL_9:
}

void sub_10000612C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006188(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryService connectToRecoveryBrain]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Brain connection interrupted", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained brainConnectionInterrupted];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBrainConnection:0];
}

void sub_100006260(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryService connectToRecoveryBrain]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Brain connection invalidated", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained brainConnectionInvalidated];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setBrainConnection:0];
}

void sub_1000063D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001AB9C();
  }
}

void sub_100006D0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setTestModeEnabled:1];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) attributeDict];
  (*(v8 + 16))(v8, v7, v6, v9);
}

void sub_1000072F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) attributeDict];
    (*(v1 + 16))(v1, 0, 0, v2);
  }
}

void sub_10000736C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001AC18();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000073E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[DeviceRecoveryService resetRecovery:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: brain reset complete: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100007938(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001B1DC();
  }

  v5 = [NSString stringWithFormat:@"Error talking to DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to DeviceRecoveryBrain", v3, "[DeviceRecoveryService configureBrain:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x4B1u);

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) attributeDict];
  (*(v7 + 16))(v7, v6, 0, v8);
}

void sub_100007A38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[DeviceRecoveryService configureBrain:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: brain config completion: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) attributeDict];
  (*(v8 + 16))(v8, v5, v6, v9);
}

void sub_100008050(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001B8C8();
  }
}

void sub_100008484(uint64_t a1)
{
  [*(*(a1 + 32) + 24) submitDRETelemetryAndDiagnostics:1];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100009180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001C3E0();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Authenticating user" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: user auth complete / data volumes mounted", buf, 0xCu);
    }

    [*(a1 + 32) setUserAuthenticated:1];
    [*(a1 + 32) setDataVolumeMounted:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [*(a1 + 32) serviceQueue];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100009390;
    v17 = &unk_100034AC0;
    v18 = *(a1 + 32);
    v19 = v5;
    dispatch_async(v11, &v14);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) attributeDict];
  (*(v12 + 16))(v12, v5, v6, v13);
}

void sub_100009390(uint64_t a1)
{
  v2 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.userAuthenticated"];
  if (([*(a1 + 32) userAuthenticated] & 1) == 0)
  {
    objc_msgSend_setEventPayloadEntry_value_(v2);
  }

  v3 = objc_msgSend_setEventPayloadEntry_value_(v2);
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) userApprovedDiagnosticsSubmission];
    v6 = @"has not";
    if (v5)
    {
      v6 = @"has";
    }

    *buf = 136446466;
    v12 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: User %{public}@ opted in to sharing diagnostics", buf, 0x16u);
  }

  if ([*(a1 + 32) userApprovedDiagnosticsSubmission])
  {
    v7 = +[OSASystemConfiguration sharedInstance];
    [v7 setDREOptIn:1];
  }

  v8 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.dataVolumeMounted"];
  if ([*(a1 + 32) dataVolumeMounted])
  {
    v9 = [*(a1 + 32) osaQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009610;
    block[3] = &unk_100034AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    objc_msgSend_setEventPayloadEntry_value_(v8);
  }

  objc_msgSend_setEventPayloadEntry_value_(v8);
  [*(*(a1 + 32) + 16) addEvent:v2];
  [*(*(a1 + 32) + 16) addEvent:v8];
}

uint64_t sub_10000961C(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryService userAuthenticated:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated user auth processing complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100009AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001C984();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Checking network availability" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[DeviceRecoveryService reportNetworkAvailability:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: network available", buf, 0xCu);
    }

    [*(a1 + 32) setNetworkAvailable:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [*(a1 + 32) serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009C94;
    block[3] = &unk_100034AE8;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }

  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) attributeDict];
  (*(v12 + 16))(v12, v5, v6, v13);
}

void sub_100009C94(uint64_t a1)
{
  [*(*(a1 + 32) + 16) submitAllEvents];
  v2 = [*(a1 + 32) osaQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D30;
  block[3] = &unk_100034AE8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t sub_100009D40(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryService reportNetworkAvailability:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated network availability report complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10000A2FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001D144();
    }

    v9 = *(a1 + 32);
    v10 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Loading DeviceRecovery brain" withDescription:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      v18 = "[DeviceRecoveryService loadRecoveryBrain:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: recovery brain loaded", &v17, 0xCu);
    }

    [*(a1 + 32) setRecoveryBrainLoaded:1];
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v11 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.brainLoad"];
    if ([*(a1 + 32) recoveryBrainLoaded])
    {
      objc_msgSend_setEventPayloadEntry_value_(v11);
      if ([*(a1 + 32) downloadedBrainIsAvailable])
      {
        v12 = [*(a1 + 32) recoveryBrainAsset];
        v13 = [v12 attributes];
        v14 = [v13 objectForKeyedSubscript:@"Build"];

        objc_msgSend_setEventPayloadEntry_value_(v11);
        objc_msgSend_setEventPayloadEntry_value_(v11);
      }

      else
      {
        objc_msgSend_setEventPayloadEntry_value_(v11);
        objc_msgSend_setEventPayloadEntry_value_(v11);
      }
    }

    else
    {
      objc_msgSend_setEventPayloadEntry_value_(v11);
      objc_msgSend_setEventPayloadEntry_value_(v11);
      objc_msgSend_setEventPayloadEntry_value_(v11);
    }

    [*(*(a1 + 32) + 16) addEvent:v11];
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) attributeDict];
  (*(v15 + 16))(v15, v5, v6, v16);
}

void sub_10000ABB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001DD00();
    }

    v9 = *(a1 + 32);
    v8 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Scanning for repairable issues" withDescription:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v32 = "[DeviceRecoveryService scanForIssues:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: issue scan complete", buf, 0xCu);
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v10 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.issueScan"];
    if (![*(a1 + 32) issuesScanComplete])
    {
      objc_msgSend_setEventPayloadEntry_value_(v10);
    }

    objc_msgSend_setEventPayloadEntry_value_(v10);
    v11 = [*(a1 + 32) repairableIssuesFound];
    if (v6 && v11)
    {
      v12 = objc_opt_new();
      v13 = [v6 objectForKeyedSubscript:@"RepairableIssues"];
      v14 = v13;
      if (v13)
      {
        v24 = v10;
        v25 = v5;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v26 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [v19 objectForKeyedSubscript:@"RepairableIssueDescription"];
                v21 = v20;
                if (v20)
                {
                  [v12 appendFormat:@" | %@", v20];
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v16);
        }

        if ([v12 length] >= 4)
        {
          [v12 deleteCharactersInRange:{objc_msgSend(v12, "length") - 3, 3}];
        }

        v10 = v24;
        objc_msgSend_setEventPayloadEntry_value_(v24);
        v5 = v25;
      }

      else
      {
        objc_msgSend_setEventPayloadEntry_value_(v10);
      }

      [*(*(a1 + 32) + 16) addEvent:v10];
    }
  }

  v22 = *(a1 + 40);
  v23 = [*(a1 + 32) attributeDict];
  (*(v22 + 16))(v22, v5, v6, v23);
}

void sub_10000AF58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001DD7C();
  }

  v5 = [NSString stringWithFormat:@"Error talking to the DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to the DeviceRecoveryBrain", v3, "[DeviceRecoveryService scanForIssues:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x7D5u);

  (*(*(a1 + 32) + 16))();
}

void sub_10000B040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000118BC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001DDF8();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000B148;
    v9[3] = &unk_100034E70;
    v12 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    [v6 checkFreeSpace:v9];
  }
}

void sub_10000B148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_1000118BC(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001DE74();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B25C;
    v10[3] = &unk_100034E48;
    v9 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    v11 = v6;
    v12 = *(a1 + 48);
    [v9 scanForIssues:v10];
  }
}

void sub_10000B25C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = sub_1000118BC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001DEF0();
    }

    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) mergeResults:a3 withResults:*(a1 + 40)];
    [*(a1 + 32) setIssuesScanComplete:1];
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:@"RepairableIssues"];
      v10 = [v9 count];

      if (v10)
      {
        [*(a1 + 32) setRepairableIssuesFound:1];
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000BA28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000118BC(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001ECA4();
    }

    v9 = *(a1 + 32);
    v8 = [v5 description];
    [v9 generateAndSubmitRecoveryLog:@"Recovering device" withDescription:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = "[DeviceRecoveryService recoverDevice:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: device recovery complete", &v13, 0xCu);
  }

  if ([*(a1 + 32) isRunningInDeviceRecoveryEnvironment] && (objc_msgSend(*(a1 + 32), "testModeEnabled") & 1) == 0)
  {
    v10 = [[DRAnalyticsEvent alloc] initWithEventName:@"com.apple.DeviceRecovery.recoverDevice"];
    if (![*(a1 + 32) recoveryComplete])
    {
      objc_msgSend_setEventPayloadEntry_value_(v10);
    }

    objc_msgSend_setEventPayloadEntry_value_(v10);
    [*(*(a1 + 32) + 16) addEvent:v10];
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) attributeDict];
  (*(v11 + 16))(v11, v5, v6, v12);
}

void sub_10000BC2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10001ED20();
  }

  v5 = [NSString stringWithFormat:@"Error talking to the DeviceRecoveryBrain"];
  v6 = sub_100002034(@"DeviceRecoveryError", 1, v5, @"Error talking to the DeviceRecoveryBrain", v3, "[DeviceRecoveryService recoverDevice:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x87Cu);

  (*(*(a1 + 32) + 16))();
}

void sub_10000BD14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000118BC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001EDA4();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000BE1C;
    v9[3] = &unk_100034E70;
    v12 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    [v6 reclaimFreeSpace:v9];
  }
}

void sub_10000BE1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_1000118BC(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001EE20();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000BF20;
    v11[3] = &unk_100034DD0;
    v9 = a1[4];
    v10 = a1[6];
    v11[4] = a1[5];
    v12 = v10;
    [v9 recoverDevice:v11];
  }
}

void sub_10000BF20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_1000118BC(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001EE9C();
    }
  }

  else
  {
    [*(a1 + 32) setRecoveryComplete:1];
    v9 = [*(a1 + 32) processRecoveryResults:v7];

    v7 = v9;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000C06C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, 0);
  }

  return result;
}

void sub_10000D7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id obj, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_10000D8B4(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000D930(id a1, MAProgressNotification *a2)
{
  v2 = a2;
  v3 = [(MAProgressNotification *)v2 totalWritten];
  v4 = 0.0;
  if (v3 >= 1)
  {
    v3 = [(MAProgressNotification *)v2 totalExpected];
    if (v3 >= 1)
    {
      v5 = [(MAProgressNotification *)v2 totalWritten];
      v3 = [(MAProgressNotification *)v2 totalExpected];
      v4 = (v5 / v3);
    }
  }

  v6 = sub_1000118BC(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ([(MAProgressNotification *)v2 isStalled])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [(MAProgressNotification *)v2 taskDescription];
    v9 = 136446978;
    v10 = "[DeviceRecoveryService downloadRecoveryBrain]_block_invoke";
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Progress: %f stalled: %{public}@ taskID: %{public}@", &v9, 0x2Au);
  }
}

void sub_10000DA88(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000E374(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 32;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000E3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString alloc];
  v5 = [v3 date];
  v6 = [v3 process];
  v7 = [v3 logType];
  if (v7 <= 1)
  {
    if (!v7)
    {
      v8 = @"Default";
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v8 = @"Info";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v8 = @"Debug";
        goto LABEL_13;
      case 16:
        v8 = @"Error";
        goto LABEL_13;
      case 17:
        v8 = @"Fault";
        goto LABEL_13;
    }
  }

  v8 = @"Unexpected";
LABEL_13:
  v9 = [v3 composedMessage];

  v10 = [v4 initWithFormat:@"%@ (%@) [%@]: %@", v5, v6, v8, v9];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v10];
}

void sub_10000E550(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 != 5)
  {
    v7 = sub_1000118BC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001F440();
    }
  }

  v8 = sub_1000022F4();
  v29[0] = *(*(a1[7] + 8) + 40);
  v28[0] = @"LogLines";
  v28[1] = @"EntryReason";
  v9 = [NSNumber numberWithUnsignedInt:sub_1000022B4()];
  v10 = v9;
  v11 = @"null description";
  if (v8)
  {
    v11 = v8;
  }

  v29[1] = v9;
  v29[2] = v11;
  v28[2] = @"EntryDescription";
  v28[3] = @"FailedOperation";
  v12 = @"null operation";
  v13 = a1[5];
  if (a1[4])
  {
    v12 = a1[4];
  }

  v28[4] = @"FailureDescription";
  v14 = @"null failure description";
  if (v13)
  {
    v14 = v13;
  }

  v29[3] = v12;
  v29[4] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];

  v27 = 0;
  v16 = [NSJSONSerialization dataWithJSONObject:v15 options:1 error:&v27];
  v17 = v27;
  v18 = v17;
  if (v16)
  {
    v19 = *(a1[8] + 8);
    obj = *(v19 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000E81C;
    v24[3] = &unk_100034F78;
    v25 = v16;
    v20 = [OSALog createForSubmission:@"244" metadata:0 options:0 error:&obj writing:v24];
    objc_storeStrong((v19 + 40), obj);
    if (!v20)
    {
      v22 = sub_1000118BC(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001F4C4();
      }
    }

    v23 = v25;
  }

  else
  {
    v23 = sub_1000118BC(v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10001F550();
    }
  }

  dispatch_group_leave(*(a1[6] + 72));
}

void sub_10000EB70(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_10000EC74(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

BOOL sub_10000ECA0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000ECB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v4;
  *(a3 + 12) = 2114;
  *(a3 + 14) = result;
  *(a3 + 22) = 2114;
  *(a3 + 24) = v3;
  return result;
}

BOOL sub_10000ED34(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_10000ED4C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_10000EDB8()
{
  v0 = __chkstk_darwin();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v4 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", v0];
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
    v4 = [NSString stringWithFormat:@"%@ (pid %d)", v3, v0];
  }

  return v4;
}

__CFString *sub_10000EED4(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"DEFAULT";

        break;
      case 0x21:
        v2 = @"USER_INTERACTIVE";

        break;
      case 0x19:
        v2 = @"USER_INITIATED";

        break;
      default:
LABEL_20:
        v2 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"UTILITY";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"BACKGROUND";
  }

  else
  {
    v2 = @"UNSPECIFIED";
  }

  return v2;
}

uint64_t sub_10000F1E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000F1FC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSDictionary dictionaryWithDictionary:*(*(a1 + 32) + 16)];

  return _objc_release_x1();
}

__CFString *sub_10000F87C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = [v4 unsignedCharValue];
      v7 = @"None";
      if (v6 == 2)
      {
        v7 = @"Production";
      }

      v8 = @"Builtin";
      goto LABEL_6;
    }

    sub_10001FFB0(isKindOfClass);
LABEL_54:
    v9 = @"<unknown>";
    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    if ((v10 & 1) == 0)
    {
      sub_10001FEF0(v10);
      goto LABEL_54;
    }

    v11 = v4;
LABEL_15:
    v9 = v11;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    if ((v13 & 1) == 0)
    {
      sub_10001FE30(v13);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if ((v14 & 1) == 0)
    {
      sub_10001FD70(v14);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if ((v15 & 1) == 0)
    {
      sub_10001FCB0(v15);
      goto LABEL_54;
    }

    goto LABEL_27;
  }

  if (![v3 isEqualToString:@"IssuesScanResult"])
  {
    if (![v3 isEqualToString:@"RecoveryResult"])
    {
      if ([v3 isEqualToString:@"FreeSpaceThreshold"])
      {
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();
        if ((v19 & 1) == 0)
        {
          sub_10001FA70(v19);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Free space Threshold: %@", v4];
      }

      else if ([v3 isEqualToString:@"SystemDataPath"])
      {
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        if ((v20 & 1) == 0)
        {
          sub_10001F9B0(v20);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"System Data Path: %@", v4];
      }

      else if ([v3 isEqualToString:@"UserDataPath"])
      {
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();
        if ((v21 & 1) == 0)
        {
          sub_10001F8F0(v21);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"User Data Path: %@", v4];
      }

      else
      {
        v22 = [v3 isEqualToString:@"UpdateVolumePath"];
        if (!v22)
        {
          v24 = sub_1000118BC(v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10001F7A4(v3, v24);
          }

          goto LABEL_54;
        }

        objc_opt_class();
        v23 = objc_opt_isKindOfClass();
        if ((v23 & 1) == 0)
        {
          sub_10001F830(v23);
          goto LABEL_54;
        }

        [NSString stringWithFormat:@"Update Volume Path: %@", v4];
      }
      v11 = ;
      goto LABEL_15;
    }

    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    if ((v18 & 1) == 0)
    {
      sub_10001FB30(v18);
      goto LABEL_54;
    }

LABEL_27:
    v6 = [v4 unsignedCharValue];
    v7 = @"None";
    v8 = @"Force Failure";
LABEL_6:
    if (v6 == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if ((v16 & 1) == 0)
  {
    sub_10001FBF0(v16);
    goto LABEL_54;
  }

  v17 = [v4 unsignedCharValue] - 1;
  if (v17 >= 3)
  {
    v9 = @"None";
  }

  else
  {
    v9 = *(&off_100035108 + v17);
  }

LABEL_16:

  return v9;
}

id sub_10000FC9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"BrainType"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 3)
      {
LABEL_4:
        v5 = 0;
        goto LABEL_12;
      }

      sub_1000210B8();
    }

    else
    {
      sub_100020F90();
    }

    goto LABEL_43;
  }

  if (([v3 isEqualToString:@"BrainBundlePath"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"UserDataPath") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SystemDataPath") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"UpdateVolumePath"))
  {
    v6 = [NSString stringWithFormat:@"%@ is not a NSString(%s)", v3, object_getClassName(v4)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
    }

    else
    {
      sub_100020E70();
      v5 = v9;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"UserAuthResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_100020D4C();
    }

    else
    {
      sub_100020C24();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"NetworkAvailableResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_100020B00();
    }

    else
    {
      sub_1000209D8();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"BrainLoadResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 2)
      {
        goto LABEL_4;
      }

      sub_1000208B4();
    }

    else
    {
      sub_10002078C();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"IssuesScanResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 4)
      {
        goto LABEL_4;
      }

      sub_10002063C();
    }

    else
    {
      sub_100020514();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"RecoveryResult"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 unsignedCharValue] < 5)
      {
        goto LABEL_4;
      }

      sub_1000203E8();
    }

    else
    {
      sub_1000202C0();
    }

    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"FreeSpaceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    sub_100020198();
    goto LABEL_43;
  }

  if ([v3 isEqualToString:@"AlwaysShowWiFiPicker"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    sub_100020070();
LABEL_43:
    v5 = v9;
    goto LABEL_12;
  }

  v8 = [NSString stringWithFormat:@"Unknown override name: %@", v3];
  v5 = sub_100002034(@"DeviceRecoveryError", 13, v8, @"Unknown override name: %@", 0, "DRValidateOverride", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m", 0xE1u);

LABEL_12:

  return v5;
}

id sub_1000100D0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 2)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100010124(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 1)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100010178(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 3)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000101CC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 unsignedCharValue] <= 4)
  {
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100010264(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_100010284(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

id sub_1000102E0(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (v6)
  {
    v7 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
    v9 = IOObjectRelease(v7);
    v10 = sub_1000118BC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "DRECopyIORegEntryWithError";
      v18 = 2082;
      v19 = a1;
      v20 = 2114;
      v21 = CFProperty;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: ioreg property: '%{public}s' = %{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v13 = sub_1000118BC(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000211DC();
    }

    v14 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
    v11 = sub_100002034(@"DeviceRecoveryError", 16, v14, @"unable to fetch io-reg entry for %s", 0, "DRECopyIORegEntryWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x16u);

    CFProperty = 0;
    if (a3 && v11)
    {
      v15 = v11;
      CFProperty = 0;
      *a3 = v11;
    }
  }

  return CFProperty;
}

id sub_1000104D0(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = IORegistryEntryFromPath(kIOMainPortDefault, a1);
  if (!v6)
  {
    sub_1000213C4(a1, &v14);
    CFProperty = 0;
LABEL_16:
    v9 = v14;
    goto LABEL_8;
  }

  v7 = v6;
  CFProperty = IORegistryEntryCreateCFProperty(v6, v5, kCFAllocatorDefault, 0);
  IOObjectRelease(v7);
  if (!CFProperty)
  {
    sub_100021290(v5, &v14);
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFProperty = CFProperty;
    v9 = 0;
    v10 = CFProperty;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[NSString alloc] initWithData:CFProperty encoding:4];
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [NSString stringWithFormat:@"unable to coerce io-reg property to a string"];
  v9 = sub_100002034(@"DeviceRecoveryError", 16, v11, @"unable to coerce io-reg property to a string", 0, "DRECopyIORegAsStringWithError", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryHelpers.m", 0x3Du);

LABEL_8:
  v10 = 0;
  if (a3 && v9)
  {
    v12 = v9;
    v10 = 0;
    *a3 = v9;
  }

LABEL_11:

  return v10;
}

void sub_100010690(void *a1)
{
  property = a1;
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v1)
  {
    v2 = v1;
    IORegistryEntrySetCFProperty(v1, @"IONVRAM-DELETE-PROPERTY", property);
    IOObjectRelease(v2);
  }
}

uint64_t sub_100010708(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100010818();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000118BC(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "DRESetNVRAMProperty";
      v12 = 2114;
      v13 = v3;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting NVRAM var: %{public}@ = %{public}@", &v10, 0x20u);
    }

    v8 = IORegistryEntrySetCFProperty(v6, v3, v4);
  }

  else
  {
    v8 = 3758097097;
  }

  return v8;
}

uint64_t sub_100010818()
{
  result = atomic_load(dword_10003A2C8);
  if (!result)
  {
    result = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (result)
    {
      v1 = 0;
      atomic_compare_exchange_strong(dword_10003A2C8, &v1, result);
      if (v1)
      {
        IOObjectRelease(result);
        return v1;
      }
    }
  }

  return result;
}

id sub_10001087C(void *a1)
{
  v1 = a1;
  v2 = sub_100010818();
  v3 = v2;
  v4 = sub_1000118BC(v2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "DREGetNVRAMVar";
      v10 = 2114;
      v11 = v1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting NVRAM var: %{public}@", &v8, 0x16u);
    }

    v6 = IORegistryEntryCreateCFProperty(v3, v1, 0, 0);
  }

  else
  {
    sub_1000214F8(v4);
    v6 = 0;
  }

  return v6;
}

void sub_1000109F0(id a1)
{
  qword_10003A2D0 = objc_alloc_init(DeviceRecoveryEnvironmentWorker);

  _objc_release_x1();
}

id sub_100010B78(uint64_t a1)
{
  [*(a1 + 32) populateDREReason];
  v2 = *(a1 + 32);

  return [v2 setupPopulateDREDescription];
}

void sub_100011048(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/run/com.apple.DumpPanic.finishedThisBoot"];

  v4 = *(a1 + 32);
  if ((v3 & 1) != 0 || (v5 = *(v4 + 8), v5 >= 15))
  {
    dispatch_source_cancel(*(v4 + 24));
    v6 = *(a1 + 32);
    v7 = [NSDictionary dictionaryWithContentsOfFile:@"/var/db/com.apple.DumpPanic.panicLogPathBreadcrumb"];
    [v6 populateDREDescription:v7];

    v4 = *(a1 + 32);
    LOBYTE(v5) = *(v4 + 8);
  }

  *(v4 + 8) = v5 + 1;
}

uint64_t sub_100011564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011678(uint64_t a1)
{
  v2 = sub_100010688("IODeviceTree:/options", @"device-recovery-boot-reason");
  if (v2)
  {
    v6[0] = @"entryReason";
    v3 = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
    v6[1] = @"entryDescription";
    v7[0] = v3;
    v7[1] = *(*(a1 + 32) + 32);
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

    if ([v4 writeToFile:@"/var/db/com.apple.DeviceRecovery.entryInfo" atomically:1])
    {
      sub_100010690(@"device-recovery-boot-reason");
    }
  }

  if (*(*(a1 + 32) + 12) == 3)
  {
    v5 = sub_100010688("IODeviceTree:/options", @"boot-command");
    if ([v5 isEqualToString:@"device-recovery"])
    {
      sub_100010690(@"boot-command");
    }
  }
}

id sub_1000118BC(uint64_t a1)
{
  if (qword_10003A2E0 != -1)
  {
    sub_10002204C();
  }

  v2 = off_10003A288;

  return v2;
}

void sub_100011900(id a1)
{
  v1 = sub_1000023CC();
  off_10003A288 = os_log_create("com.apple.DeviceRecovery", v1);

  _objc_release_x1();
}

id sub_100011944(uint64_t a1)
{
  if (qword_10003A2E8 != -1)
  {
    sub_100022060();
  }

  v2 = off_10003A290;

  return v2;
}

void sub_100011988(id a1)
{
  v1 = sub_1000023CC();
  off_10003A290 = os_log_create("com.apple.DeviceRecovery.signposts", v1);

  _objc_release_x1();
}

void sub_100011B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011BB0(id a1)
{
  v1 = sub_1000118BC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection interrupted", &v2, 0xCu);
  }
}

void sub_100011C58(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection invalidated", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

void sub_100011EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011EC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011EDC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022404();
  }
}

void sub_1000121B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000121E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000228A8();
  }
}

void sub_100012A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012A4C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022A84();
  }
}

void sub_100012B48(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100022C78();
  }
}

void sub_100012BC0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

void sub_100012BE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL sub_100012BFC@<W0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_100012C38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_10003A2F0)
  {
    return off_10003A2F0(result, &a9);
  }

  return result;
}

uint64_t create_update_partition_folder_hierarchy(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100012C38("%s: Creating folder hierarchy for update partition", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    for (i = 0; i != 9; i += 3)
    {
      *__str = *&(&UPDATE_DIR_LIST)[i];
      v52 = (&UPDATE_DIR_LIST)[i + 2];
      sub_100012E44(__str, a1);
    }

    sub_100012C38("Creating hardware folder hierarchy\n", v10, v11, v12, v13, v14, v15, v16, v46);
    bzero(__str, 0x400uLL);
    sub_100012C38("Creating root folder", v17, v18, v19, v20, v21, v22, v23, v47);
    v49 = HARDWARE_DIR_LIST;
    v50 = off_10003A2A8[0];
    if (sub_100012E44(&v49, a1))
    {
      sub_100012C38("Successfully created root Hardware folder. Proceeding to create the rest of the folder hierarchy", v24, v25, v26, v27, v28, v29, v30, v48);
      snprintf(__str, 0x3FFuLL, "%s/%s", a1, HARDWARE_DIR_LIST);
      v49 = *&off_10003A2B0;
      v50 = off_10003A2C0;
      if (sub_100012E44(&v49, __str))
      {
        sub_100012C38("Successfully created %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10003A2B0);
      }

      else
      {
        sub_100012C38("Failed to create %s under %s with permissions 0%o for user %s", v31, v32, v33, v34, v35, v36, v37, off_10003A2B0);
      }
    }

    else
    {
      sub_100012C38("Failed to create root hardware folder %s under %s", v24, v25, v26, v27, v28, v29, v30, HARDWARE_DIR_LIST);
    }

    sub_100012C38("%s: Done creating folder hierarchy for update partition", v38, v39, v40, v41, v42, v43, v44, "create_update_partition_folder_hierarchy");
    return 0;
  }

  else
  {
    sub_100012C38("%s: Invalid mount point passed", a2, a3, a4, a5, a6, a7, a8, "create_update_partition_folder_hierarchy");
    return 1;
  }
}

uint64_t sub_100012E44(uint64_t a1, const char *a2)
{
  v46 = 0;
  asprintf(&v46, "%s/%s", a2, *a1);
  if (v46)
  {
    if (mkdir(v46, *(a1 + 8)) && *__error() != 17)
    {
      v20 = v46;
      __error();
      sub_100012C38("failed to mkdir %s with errno=%d", v21, v22, v23, v24, v25, v26, v27, v20);
    }

    else
    {
      if (chmod(v46, *(a1 + 8)))
      {
        v11 = v46;
        __error();
        sub_100012C38("Failed to chmod %s 0%o with errno=%d", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      *__error() = 0;
      v28 = getpwnam(*(a1 + 16));
      if (v28)
      {
        if (!chown(v46, v28->pw_uid, v28->pw_gid))
        {
LABEL_14:
          free(v46);
          return v19;
        }

        v29 = v46;
        __error();
        sub_100012C38("failed to chown %s %d:%d with errno=%d", v30, v31, v32, v33, v34, v35, v36, v29);
      }

      else
      {
        v37 = *(a1 + 16);
        __error();
        sub_100012C38("failed to getpwnam for %s with errno=%d", v38, v39, v40, v41, v42, v43, v44, v37);
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  sub_100012C38("failed to allocate path string for %s/%s", v4, v5, v6, v7, v8, v9, v10, a2);
  return 0;
}

uint64_t init_update_partition_with_reserve_and_reformat(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a1;
  if (a3)
  {
    a1 = sub_100013288(a2);
  }

  if (!partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v18 = "media probe failed probe the media";
    goto LABEL_35;
  }

  if (byte_10003A328)
  {
    if (!v8)
    {
      sub_100012C38("not deleting existing update filesystem", v11, v12, v13, v14, v15, v16, v17, v82);
      goto LABEL_14;
    }

    if (delete_apfs_partition(5u, 0, v12, v13, v14, v15, v16, v17))
    {
      v18 = "failed to delete update filesystem";
LABEL_35:
      sub_100012C38(v18, v11, v12, v13, v14, v15, v16, v17, v82);
      return 1;
    }

    sub_100012C38("delete update filesystem succeeded", v11, v12, v13, v14, v15, v16, v17, v82);
  }

  v19 = format_partition(&byte_10003A308, "Update", 0, 0, 0);
  if (v19)
  {
    v18 = "formatting update partition failed";
    goto LABEL_35;
  }

  if (!partition_probe_media(v19, v11, v12, v13, v14, v15, v16, v17))
  {
    v18 = "media probe failed to find update partition";
    goto LABEL_35;
  }

LABEL_14:
  bzero(&v86, 0x878uLL);
  if (statfs(a2, &v86))
  {
    sub_100012C38("statfs-ing %s failed - creating new mount point", v20, v21, v22, v23, v24, v25, v26, a2);
    mkdir(a2, 0x1C0u);
  }

  v27 = realpath_DARWIN_EXTSN(a2, 0);
  if (!v27)
  {
    v67 = __error();
    strerror(*v67);
    sub_100012C38("Could not realpath(3) path %s: %s", v68, v69, v70, v71, v72, v73, v74, a2);
    return 1;
  }

  v28 = v27;
  v29 = strcmp(v86.f_mntonname, v27);
  free(v28);
  if (v29 && sub_10001415C(&byte_10003A328, a2))
  {
    v18 = "mounting update partition filesystem failed";
    goto LABEL_35;
  }

  if (create_update_partition_folder_hierarchy(a2, v11, v12, v13, v14, v15, v16, v17))
  {
    sub_100012C38("Failed to create folder hierarchy on update volume", v30, v31, v32, v33, v34, v35, v36, v82);
  }

  bzero(v85, 0x400uLL);
  __strlcat_chk();
  __strlcat_chk();
  if (v10)
  {
    sub_100012C38("creating %lld MB reserve file at %s", v37, v38, v39, v40, v41, v42, v43, v10 >> 20);
    result = sub_100014250(v10, v85);
    if (result == 28)
    {
      v84 = 3;
      if (fsctl(a2, 0x80044101uLL, &v84, 0))
      {
        v52 = __error();
        strerror(*v52);
        sub_100012C38("first preallocation attempt failed, and full sync of volume %s failed: %s", v53, v54, v55, v56, v57, v58, v59, a2);
      }

      else
      {
        sub_100012C38("first preallocation attempt failed, but full sync of volume %s was successful", v45, v46, v47, v48, v49, v50, v51, a2);
      }

      sub_100012C38("re-trying reserve file creation", v60, v61, v62, v63, v64, v65, v66, v83);
      result = sub_100014250(v10, v85);
    }

    if (result)
    {
      v82 = v10;
      v18 = "reserving %llu bytes failed with errno=%d";
      goto LABEL_35;
    }
  }

  else
  {
    if (!unlink(v85))
    {
      sub_100012C38("existing reserved file deleted", v75, v76, v77, v78, v79, v80, v81, v82);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100013288(const char *a1)
{
  bzero(&v48, 0x878uLL);
  if (statfs(a1, &v48))
  {
    v2 = __error();
    strerror(*v2);
    sub_100012C38("statfs %s failed: %s", v3, v4, v5, v6, v7, v8, v9, a1);
    return 1;
  }

  v11 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v11)
  {
    __error();
    v12 = __error();
    strerror(*v12);
    sub_100012C38("realpath %s failed: %d %s", v13, v14, v15, v16, v17, v18, v19, a1);
  }

  if (!strcmp(v48.f_mntonname, v11))
  {
    v27 = unmount(v11, 0x80000);
    if (v27)
    {
      v10 = v27;
      if (*__error() != 1)
      {
        goto LABEL_18;
      }

      *&v45 = "/sbin/umount";
      *(&v45 + 1) = "-f";
      v46 = v11;
      v47 = 0;
      if (!off_10003A300)
      {
        v10 = 0xFFFFFFFFLL;
LABEL_18:
        __error();
        v37 = __error();
        strerror(*v37);
        sub_100012C38("error unmounting '%s': %d %s", v38, v39, v40, v41, v42, v43, v44, a1);
        v45 = off_1000354A8;
        if (off_10003A300)
        {
          off_10003A300(&v45, sub_100017818, 0);
        }

        goto LABEL_14;
      }

      v35 = off_10003A300(&v45, sub_100017818, 0);
      if (v35)
      {
        v10 = v35;
        goto LABEL_18;
      }
    }

    sub_100012C38("file system at %s successfully unmounted", v28, v29, v30, v31, v32, v33, v34, a1);
    goto LABEL_13;
  }

  sub_100012C38("no file system mounted at %s", v20, v21, v22, v23, v24, v25, v26, a1);
LABEL_13:
  v10 = 0;
LABEL_14:
  if (v11)
  {
    free(v11);
  }

  return v10;
}

uint64_t partition_probe_media(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = 0;
  p_info = &OBJC_METACLASS___DRAnalyticsEvent.info;
  v11 = &OBJC_METACLASS___DRAnalyticsEvent.info;
  do
  {
    iterator = 0;
    cf = 0;
    byte_10003A468 = 0;
    *(p_info + 776) = 0;
    *(v11 + 936) = 0;
    byte_10003A3E8 = 0;
    byte_10003A408 = 0;
    byte_10003A3C8 = 0;
    byte_10003A328 = 0;
    byte_10003A428 = 0;
    byte_10003A348 = 0;
    byte_10003A448 = 0;
    byte_10003A388 = 0;
    byte_10003A368 = 0;
    byte_10003A488 = 0;
    if (!sub_10001523C(&byte_10003A468, a2, a3, a4, a5, a6, a7, a8))
    {
      sub_100012C38("Unable to find storage device node for service named: %s", v12, v13, v14, v15, v16, v17, v18, "EmbeddedDeviceTypeRoot");
      v37 = 0;
      v28 = 0;
      goto LABEL_7;
    }

    sub_100012C38("entering %s.", v12, v13, v14, v15, v16, v17, v18, "_partition_probe_media_should_retry");
    v19 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_10003A46D);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
    v28 = MatchingService;
    if (!MatchingService)
    {
      sub_100012C38("unable to find service for %s", v21, v22, v23, v24, v25, v26, v27, byte_10003A46D);
      v38 = 0;
LABEL_9:
      v37 = 1;
      goto LABEL_100;
    }

    IOServiceWaitQuiet(MatchingService, 0);
    v29 = IORegistryEntryCreateIterator(v28, "IOService", 1u, &iterator);
    if (v29)
    {
      sub_100012C38("unable to create child iterator: 0c%.8x", v30, v31, v32, v33, v34, v35, v36, v29);
      v37 = 0;
LABEL_7:
      v38 = 0;
      goto LABEL_100;
    }

    v38 = IOIteratorNext(iterator);
    if (!v38)
    {
      goto LABEL_9;
    }

    v118 = 0;
    v39 = 0;
    while (!IOObjectConformsTo(v38, "IOMedia"))
    {
LABEL_76:
      IOObjectRelease(v38);
LABEL_77:
      v38 = IOIteratorNext(iterator);
      v37 = 1;
      if (!v38)
      {
        goto LABEL_99;
      }
    }

    memset(name, 0, sizeof(name));
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    IORegistryEntryGetName(v38, name);
    CFProperties = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
    if (CFProperties)
    {
      sub_100012C38("unable to get properies for media registry entry: 0x%.8x", v41, v42, v43, v44, v45, v46, v47, CFProperties);
      goto LABEL_98;
    }

    if (v39 || (Value = CFDictionaryGetValue(cf, @"BSD Name")) != 0 && CFEqual(Value, @"disk0s1s1"))
    {
      v48 = 0;
      v39 = 1;
    }

    else
    {
      v39 = 0;
      v48 = 1;
    }

    v50 = CFDictionaryGetValue(cf, @"Content Hint");
    if (v50)
    {
      v58 = v50;
      if (CFEqual(v50, @"7C3457EF-0000-11AA-AA11-00306543ECAC") || CFEqual(v58, @"52637672-7900-11AA-AA11-00306543ECAC") || CFEqual(v58, @"69646961-6700-11AA-AA11-00306543ECAC") || CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        v83 = CFDictionaryGetValue(cf, @"BSD Name");
        if (!v83)
        {
          v116 = "APFS Container object with no bsd name";
          goto LABEL_117;
        }

        *buffer = 0u;
        v122 = 0u;
        CFStringGetCString(v83, buffer, 32, 0x8000100u);
        v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
        if (CFEqual(v58, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
        {
          v91 = &byte_10003A448;
          if (!strstr(name, "RecoveryOSContainer"))
          {
            if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
            {
              v91 = &byte_10003A308;
            }

            else
            {
              v91 = &byte_10003A488;
            }
          }

          snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
          sub_100012C38("APFS Container '%s' %s\n", v92, v93, v94, v95, v96, v97, v98, name);
          goto LABEL_88;
        }

        v99 = CFEqual(v58, @"EF57347C-0000-11AA-AA11-00306543ECAC");
        v91 = v118;
        if (v99 == 1)
        {
          if (v118 && *v118)
          {
            sub_100012C38("Found synthesized APFS container. Using %s instead of %s\n", v100, v101, v102, v103, v104, v105, v106, buffer);
            snprintf(v118, 0x20uLL, "%s%s", "/dev/", buffer);
            goto LABEL_90;
          }

          sub_100012C38("found synthesized container without original device node\n", v100, v101, v102, v103, v104, v105, v106, v117);
        }

        if (v118)
        {
LABEL_88:
          v118 = v91;
          if (!*v91)
          {
            snprintf(v91, 0x20uLL, "%s%s", "/dev/", buffer);
            sub_100012C38("APFS Container '%s' %s\n", v108, v109, v110, v111, v112, v113, v114, name);
          }

          goto LABEL_91;
        }

LABEL_90:
        v118 = 0;
LABEL_91:
        IOObjectRelease(v38);
        CFRelease(cf);
        cf = 0;
        goto LABEL_77;
      }
    }

    v59 = *name == 1953724755 && *&name[3] == 7169396;
    if (v59 || strstr(name, "OS"))
    {
      v39 = 1;
      v60 = "found system volume not at disk0s1s1: %s\n";
      v61 = &byte_10003A3A8;
      if (v48)
      {
        goto LABEL_32;
      }
    }

    else if (*name ^ 0x61746144 | name[4])
    {
      if (*name ^ 0x72657355 | name[4])
      {
        if (*name == 0x646E616265736142 && *&name[6] == 0x6174614420646ELL)
        {
          v61 = &byte_10003A3C8;
        }

        else if (*name == 1633972309 && *&name[3] == 6648929)
        {
          v61 = &byte_10003A328;
        }

        else
        {
          if (byte_10003A3A8)
          {
            v82 = 0;
          }

          else
          {
            v82 = v39;
          }

          if (v82)
          {
            v60 = "looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n";
LABEL_32:
            sub_100012C38(v60, v51, v52, v53, v54, v55, v56, v57, name);
            v61 = &byte_10003A3A8;
          }

          else if (*name == 0x68637461726353)
          {
            v61 = &byte_10003A428;
          }

          else if (*name ^ 0x54524178 | name[4])
          {
            if (*name ^ 0x797265766F636552 | name[8])
            {
              if (*name != 0x746F6F62657250)
              {
                sub_100012C38("unexpected partition '%s' - skipping", v51, v52, v53, v54, v55, v56, v57, name);
                v61 = 0;
                v62 = 1;
                goto LABEL_35;
              }

              v61 = &byte_10003A368;
            }

            else
            {
              v61 = &byte_10003A388;
            }
          }

          else
          {
            v61 = &byte_10003A348;
          }
        }
      }

      else
      {
        v61 = &byte_10003A408;
      }
    }

    else
    {
      v61 = &byte_10003A3E8;
    }

    if (*v61)
    {
      sub_100012C38("encountered second '%s' partition; original was '%s'", v51, v52, v53, v54, v55, v56, v57, name);
      goto LABEL_97;
    }

    v62 = 0;
LABEL_35:
    while (1)
    {
      v63 = CFDictionaryGetValue(cf, @"Leaf");
      if (v63)
      {
        if (CFBooleanGetValue(v63) == 1)
        {
          break;
        }
      }

      IOObjectRelease(v38);
      CFRelease(cf);
      cf = 0;
      v64 = IOIteratorNext(iterator);
      if (!v64)
      {
LABEL_96:
        sub_100012C38("ran out of registry entries without finding a leaf media object", v65, v66, v67, v68, v69, v70, v71, v117);
        v38 = 0;
        goto LABEL_97;
      }

      v38 = v64;
      while (!IOObjectConformsTo(v38, "IOMedia"))
      {
        IOObjectRelease(v38);
        v38 = IOIteratorNext(iterator);
        if (!v38)
        {
          goto LABEL_96;
        }
      }

      v72 = IORegistryEntryCreateCFProperties(v38, &cf, kCFAllocatorDefault, 0);
      if (v72)
      {
        sub_100012C38("unable to get properies for media registry entry: 0x%.8x", v73, v74, v75, v76, v77, v78, v79, v72);
        goto LABEL_97;
      }
    }

    if (v62)
    {
LABEL_75:
      v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
      goto LABEL_76;
    }

    v107 = CFDictionaryGetValue(cf, @"BSD Name");
    if (v107)
    {
      *buffer = 0u;
      v122 = 0u;
      CFStringGetCString(v107, buffer, 32, 0x8000100u);
      snprintf(v61, 0x20uLL, "%s%s", "/dev/", buffer);
      goto LABEL_75;
    }

    v116 = "leaf media object with no bsd name";
LABEL_117:
    sub_100012C38(v116, v84, v85, v86, v87, v88, v89, v90, v117);
LABEL_97:
    v11 = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
LABEL_98:
    v37 = 0;
LABEL_99:
    p_info = (&OBJC_METACLASS___DRAnalyticsEvent + 32);
LABEL_100:
    if (iterator && !IOIteratorIsValid(iterator))
    {
      v9 = 1;
      v37 = 0;
    }

    if (v38)
    {
      IOObjectRelease(v38);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }

    if (v28)
    {
      IOObjectRelease(v28);
    }

    if (v37)
    {
      return 1;
    }

    result = 0;
    if (!v9)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 3);
  return result;
}

uint64_t delete_apfs_partition(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_partition");
  if (!partition_probe_media(v10, v11, v12, v13, v14, v15, v16, v17))
  {
    sub_100012C38("%s : partition_probe_media() failed for partition at index %u, mountpoint %s\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  if (a2)
  {
    sub_100013288(a2);
  }

  if (a1 >= 8)
  {
    sub_100012C38("%s : Deleting partition at slice %d is not allowed as path is NULL\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 1;
  }

  v25 = off_1000354B8[a1];
  if (*v25)
  {
    if (APFSVolumeDelete())
    {
      sub_100012C38("%s : failed to delete partition at slice %d\n", v26, v27, v28, v29, v30, v31, v32, "delete_apfs_partition");
      return 1;
    }

    v34 = sub_100012C38("%s : delete partition succeeded at slice %d %s\n", v26, v27, v28, v29, v30, v31, v32, "delete_apfs_partition");
    if (!partition_probe_media(v34, v35, v36, v37, v38, v39, v40, v41))
    {
      sub_100012C38("%s : partition_probe_media() failed for checking for partition at slice %d\n", v42, v43, v44, v45, v46, v47, v48, "delete_apfs_partition");
      return 1;
    }

    if (*v25)
    {
      sub_100012C38("%s : partition_probe_media() found partition at slice %d after it was deleted\n", v42, v43, v44, v45, v46, v47, v48, "delete_apfs_partition");
      return 1;
    }

    return 0;
  }

  else
  {
    sub_100012C38("%s : partition at slice %d does not exist, ignoring this delete call\n", v18, v19, v20, v21, v22, v23, v24, "delete_apfs_partition");
    return 2;
  }
}

uint64_t format_partition(const char *a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  *__str = 0;
  v32 = "/sbin/newfs_apfs";
  if (!strcmp(__s1, "System"))
  {
    v16 = 115;
  }

  else if (!strcmp(__s1, "Data"))
  {
    v16 = 100;
  }

  else if (!strcmp(__s1, "User"))
  {
    v16 = 117;
  }

  else if (!strcmp(__s1, "Preboot"))
  {
    v16 = 98;
  }

  else if (!strcmp(__s1, "Baseband Data"))
  {
    v16 = 97;
  }

  else if (!strcmp(__s1, "Logs"))
  {
    v16 = 105;
  }

  else if (!strcmp(__s1, "xART"))
  {
    v16 = 120;
  }

  else if (!strcmp(__s1, "Scratch"))
  {
    v16 = 110;
  }

  else if (!strcmp(__s1, "Hardware"))
  {
    v16 = 104;
  }

  else if (!strcmp(__s1, "Update"))
  {
    v16 = 112;
  }

  else
  {
    if (strcmp(__s1, "Recovery"))
    {
      v15 = 1;
      goto LABEL_25;
    }

    v16 = 114;
  }

  *&v33 = "-o";
  snprintf(__str, 8uLL, "role=%c", v16);
  *(&v33 + 1) = __str;
  v15 = 3;
LABEL_25:
  (&v32)[v15] = "-A";
  (&v32)[v15 + 1] = "-v";
  v17 = v15 + 3;
  (&v32)[v15 + 2] = __s1;
  if (a5 == 1)
  {
    (&v32)[v17] = "-P";
    v17 = v15 | 4;
  }

  (&v32)[v17] = a1;
  (&v32)[v17 + 1] = 0;
  v18 = "/sbin/newfs_apfs";
  v19 = 1;
  do
  {
    sub_100012C38("%s ", v8, v9, v10, v11, v12, v13, v14, v18);
    v18 = (&v32)[v19++];
  }

  while (v18);
  sub_100012C38("\n", v8, v9, v10, v11, v12, v13, v14, v30);
  if (!off_10003A300)
  {
    v27 = 0xFFFFFFFFLL;
    v28 = "/sbin/newfs_apfs";
    goto LABEL_33;
  }

  v27 = off_10003A300(&v32, sub_100017818, 0);
  if (v27)
  {
    v28 = v32;
LABEL_33:
    sub_100012C38("%s returned %d", v20, v21, v22, v23, v24, v25, v26, v28);
  }

  return v27;
}

uint64_t sub_10001415C(uint64_t a1, char *a2)
{
  v12[0] = "/sbin/mount";
  v12[1] = "-t";
  v12[2] = "apfs";
  v12[3] = "-o";
  v12[4] = "nobrowse";
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = 0;
  mkdir(a2, 0x1C0u);
  if (off_10003A300)
  {
    v10 = off_10003A300(v12, sub_100017818, 0);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  sub_100012C38("mounting %s at %s failed: %d", v3, v4, v5, v6, v7, v8, v9, a1);
  return v10;
}

uint64_t sub_100014250(uint64_t a1, char *a2)
{
  v46 = 0;
  unlink(a2);
  v4 = open(a2, 2562, 384);
  if (v4 == -1)
  {
    v43 = *__error();
    sub_100012C38("Could not open %s with error %d", v21, v22, v23, v24, v25, v26, v27, a2);
    return v43;
  }

  else
  {
    v5 = v4;
    v45[0] = 0x30000000CLL;
    v45[1] = 0;
    v45[2] = a1;
    if (fcntl(v4, 42, v45) == -1)
    {
      v20 = *__error();
      sub_100012C38("preallocation of %llu bytes failed: %d", v28, v29, v30, v31, v32, v33, v34, a1);
    }

    else if (v46 >= a1)
    {
      if (ftruncate(v5, a1) == -1)
      {
        v44 = *__error();
        sub_100012C38("failed to write to %s file to establish the size (%d).", v35, v36, v37, v38, v39, v40, v41, a2);
        v20 = v44;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_100012C38("failed to allocate all %llu bytes for %s. only allocatedf %llu bytes", v6, v7, v8, v9, v10, v11, v12, a1);
      if (unlink(a2) == -1)
      {
        __error();
        sub_100012C38("failed to unlink %s: %d", v13, v14, v15, v16, v17, v18, v19, a2);
      }

      v20 = 28;
    }

    close(v5);
  }

  return v20;
}

uint64_t create_xart_partition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A348)
    {
      return 1;
    }

    v17 = format_partition(&byte_10003A308, "xART", 0, 0, 0);
    if (v17)
    {
      v18 = v17;
      v16 = "Creating xART partition failed with error: %d";
    }

    else if (partition_probe_media(v17, v8, v9, v10, v11, v12, v13, v14))
    {
      if (byte_10003A348)
      {
        return 1;
      }

      v16 = "Couldn't find xART volume after xART creation.";
    }

    else
    {
      v16 = "partition_probe_media after xART creation failed.";
    }
  }

  else
  {
    v16 = "partition_probe_media before xART creation failed.";
  }

  sub_100012C38(v16, v8, v9, v10, v11, v12, v13, v14, v18);
  return 0;
}

uint64_t create_preboot_partition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A368)
    {
      return 1;
    }

    v17 = format_partition(&byte_10003A308, "Preboot", 0, 0, 0);
    if (v17)
    {
      v18 = v17;
      v16 = "Creating preboot partition failed with error: %d";
    }

    else if (partition_probe_media(v17, v8, v9, v10, v11, v12, v13, v14))
    {
      if (byte_10003A368)
      {
        return 1;
      }

      v16 = "Couldn't find preboot volume after preboot creation.";
    }

    else
    {
      v16 = "partition_probe_media after preboot creation failed.";
    }
  }

  else
  {
    v16 = "partition_probe_media before preboot creation failed.";
  }

  sub_100012C38(v16, v8, v9, v10, v11, v12, v13, v14, v18);
  return 0;
}

const char *mount_recovery_boot(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_recovery_boot");
  if (partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    if (!byte_10003A388)
    {
      sub_100012C38("%s: no device node found for recovery volume\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
    }

    bzero(&v54, 0x878uLL);
    if (!statfs(a1, &v54) && !strcmp(v54.f_mntonname, a1) && !strcmp(v54.f_mntfromname, &byte_10003A388))
    {
      sub_100012C38("%s: Recovery device already mounted at %s\n", v24, v25, v26, v27, v28, v29, v30, "mount_recovery_boot");
      return a1;
    }

    if (!statfs("/", &v54) && !strcmp(v54.f_mntfromname, &byte_10003A388))
    {
      sub_100012C38("%s: Recovery device already mounted at %s\n", v31, v32, v33, v34, v35, v36, v37, "mount_recovery_boot");
      return "/";
    }

    v53[0] = 0;
    v53[1] = &byte_10003A388;
    if (!mount("apfs", a1, 0x20000000, v53))
    {
      sub_100012C38("%s: Successfully mounted recovery boot at %s", v38, v39, v40, v41, v42, v43, v44, "mount_recovery_boot");
      return a1;
    }

    __error();
    sub_100012C38("%s: Recovery boot failed to mount at %s: %d, errno %d\n", v45, v46, v47, v48, v49, v50, v51, "mount_recovery_boot");
  }

  else
  {
    sub_100012C38("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_recovery_boot");
  }

  return 0;
}

uint64_t mount_update_partition_if_exists(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "mount_update_partition_if_exists");
  if (!partition_probe_media(v9, v10, v11, v12, v13, v14, v15, v16))
  {
    sub_100012C38("%s : partition_probe_media() failed.\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  if (!byte_10003A328)
  {
    sub_100012C38("%s : no device node found for update partition\n", v17, v18, v19, v20, v21, v22, v23, "mount_update_partition_if_exists");
    return 0xFFFFFFFFLL;
  }

  v62 = 0;
  v24 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v24)
  {
    __error();
    sub_100012C38("Failed to realpath(%s). errno=%d", v37, v38, v39, v40, v41, v42, v43, a1);
    return 0xFFFFFFFFLL;
  }

  v25 = v24;
  v26 = getmntinfo_r_np(&v62, 2);
  if (v26 < 1)
  {
    sub_100012C38("Failed to get mount info for all mounted file systems", v27, v28, v29, v30, v31, v32, v33, v61);
    v44 = *__error();
  }

  else
  {
    v34 = v62;
    v35 = v26;
    v36 = 1112;
    while (strcmp(v34 + v36, &byte_10003A328))
    {
      v36 += 2168;
      if (!--v35)
      {
        goto LABEL_16;
      }
    }

    if (!strcmp(v34 + v36 - 1024, v25))
    {
      sub_100012C38("Update partition is already mounted\n", v45, v46, v47, v48, v49, v50, v51, v61);
      v44 = 0;
      goto LABEL_19;
    }

    sub_100012C38("unmounting %s at %s", v45, v46, v47, v48, v49, v50, v51, v34 + v36);
    sub_100013288(v62 + v36 - 1024);
LABEL_16:
    v44 = sub_10001415C(&byte_10003A328, v25);
    v59 = "Failed to mount";
    if (!v44)
    {
      v59 = "Successfully mounted";
    }

    sub_100012C38("%s update partition at %s", v52, v53, v54, v55, v56, v57, v58, v59);
  }

LABEL_19:
  if (v62)
  {
    free(v62);
  }

  free(v25);
  return v44;
}

uint64_t lookup_partition_index_by_name(char *__s1)
{
  v2 = 0;
  for (i = &off_100035338; strcmp(__s1, *i); i += 4)
  {
    if (++v2 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t lookup_partition_index_by_device_node(char *__s1)
{
  v2 = 0;
  for (i = &off_100035328; !*i || strcmp(__s1, *i); i += 4)
  {
    if (++v2 == 8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t enumerate_apfs_snapshots(const char *a1, uint64_t a2)
{
  v3 = open(a1, 0x100000);
  if ((v3 & 0x80000000) != 0)
  {
    v18 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v19, v20, v21, v22, v23, v24, v25, "enumerate_apfs_snapshots");
  }

  else
  {
    v4 = v3;
    v27.reserved = 0;
    *&v27.volattr = 0;
    *&v27.fileattr = 0;
    bzero(v28, 0x400uLL);
    v27.bitmapcount = 5;
    v27.commonattr = -1610612735;
    v5 = fs_snapshot_list(v4, &v27, v28, 0x400uLL, 0);
    if (v5 < 0)
    {
      sub_100012C38("%s : fs_snapshot_list failed with error %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      v18 = 1;
    }

    else
    {
      if (v5)
      {
        v13 = v5 + 1;
        v14 = v28;
        while (1)
        {
          v15 = (v14 + 6);
          v16 = v14[1];
          if ((v16 & 0x20000000) != 0)
          {
            v18 = *v15;
            sub_100012C38("%s : Error in reading attributes for directory entry %d", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
            goto LABEL_16;
          }

          v17 = *v14;
          if ((v16 & 1) != 0 && ((*(a2 + 16))(a2, v4, v15 + *v15) & 1) == 0)
          {
            break;
          }

          v14 = (v14 + v17);
          if (--v13 <= 1)
          {
            goto LABEL_15;
          }
        }

        sub_100012C38("%s : caller cancelled on snapshot %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

      else
      {
        sub_100012C38("%s : No snapshots to enumerate on %s", v6, v7, v8, v9, v10, v11, v12, "enumerate_apfs_snapshots");
      }

LABEL_15:
      v18 = 0;
    }

LABEL_16:
    close(v4);
  }

  return v18;
}

BOOL sub_100014B28(id a1, int a2, const char *a3)
{
  if (fs_snapshot_delete(a2, a3, 0))
  {
    __error();
    sub_100012C38("%s : Unable to delete snapshot %s: %d\n", v10, v11, v12, v13, v14, v15, v16, "delete_all_mobilebackup_snapshots_block_invoke");
  }

  else
  {
    sub_100012C38("%s : Successfully deleted snapshot %s\n", v3, v4, v5, v6, v7, v8, v9, "delete_all_mobilebackup_snapshots_block_invoke");
  }

  return 1;
}

BOOL is_mountpoint_apfs(const char *a1)
{
  bzero(&v11, 0x878uLL);
  partition_probe_media(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1 && !statfs(a1, &v11) && (*v11.f_fstypename ^ 0x73667061 | v11.f_fstypename[4]) == 0;
}

uint64_t partition_raw_device_for_block_device(const char *a1, char *a2, size_t a3)
{
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v23))
  {
    v13 = __error();
    v14 = *v13;
    strerror(*v13);
    sub_100012C38("unable to stat block device %s: %s\n", v15, v16, v17, v18, v19, v20, v21, a1);
  }

  else if ((v23.st_mode & 0xF000) == 0x6000)
  {
    *buf = 0u;
    v25 = 0u;
    devname_r(v23.st_rdev, 0x2000u, buf, 32);
    snprintf(a2, a3, "%s%s", "/dev/", buf);
    return 0;
  }

  else
  {
    sub_100012C38("%s is not a block device\n", v6, v7, v8, v9, v10, v11, v12, a1);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t reserve_space_for_overprovisioning(uint64_t a1)
{
  bzero(v136, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  *v134 = 0u;
  v135 = 0u;
  memset(v133, 0, sizeof(v133));
  v132 = 0;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  memset(&v128, 0, sizeof(v128));
  v126 = 0;
  v127 = 0;
  if (!stat(v136, &v128))
  {
    v17 = "space already reserved for overprovisioning\n";
LABEL_7:
    sub_100012C38(v17, v1, v2, v3, v4, v5, v6, v7, v120);
    return 0;
  }

  if (!sub_10001523C(v133, v1, v2, v3, v4, v5, v6, v7))
  {
    v120 = "EmbeddedDeviceTypeRoot";
    v17 = "Unable to find storage device node for service named: %s";
    goto LABEL_7;
  }

  v8 = partition_raw_device_for_block_device(v133, v134, 0x20uLL);
  if (!v8)
  {
    v19 = open(v134, 0);
    if (v19 == -1)
    {
      v16 = *__error();
      v121 = *__error();
      sub_100012C38("unable to open device: %d\n", v47, v48, v49, v50, v51, v52, v53, v121);
      return v16;
    }

    v20 = v19;
    if (ioctl(v19, 0x40046418uLL, &v132) == -1)
    {
      v16 = *__error();
      v122 = *__error();
      sub_100012C38("unable to get DKIOCGETBLOCKSIZE: %d\n", v54, v55, v56, v57, v58, v59, v60, v122);
    }

    else if (ioctl(v20, 0x40086419uLL, &v131) == -1)
    {
      v16 = *__error();
      v123 = *__error();
      sub_100012C38("unable to get DKIOCGETBLOCKCOUNT: %d\n", v61, v62, v63, v64, v65, v66, v67, v123);
    }

    else
    {
      v28 = v131 * v132;
      sub_100012C38("device_size = %llu (%lld GB)\n", v21, v22, v23, v24, v25, v26, v27, v28);
      if (v28 <= 0x1900000063)
      {
        v36 = v28 / 100;
      }

      else
      {
        v36 = 0x40000000;
      }

      sub_100012C38("file_size = %llu (%lld GB)\n", v29, v30, v31, v32, v33, v34, v35, v36);
      v37 = open_dprotected_np(v136, 2562, 4, 0, 384, v36 / 0x40000000);
      if (v37 == -1)
      {
        v16 = *__error();
        __error();
        sub_100012C38("Could not open %s with error %d\n", v68, v69, v70, v71, v72, v73, v74, v136);
      }

      else
      {
        v38 = v37;
        v129 = 0x30000000EuLL;
        *&v130 = v36;
        if (fcntl(v37, 42, &v129) == -1)
        {
          if (*__error() == 28)
          {
            LODWORD(v129) = 10;
            if (fcntl(v38, 42, &v129) == -1)
            {
              if (*__error() == 28)
              {
                LODWORD(v129) = 8;
                if (fcntl(v38, 42, &v129) == -1)
                {
                  v16 = *__error();
                  __error();
                  sub_100012C38("preallocation of %llu bytes failed with error: %d (Allocated %llu bytes)\n", v76, v77, v78, v79, v80, v81, v82, v36);
                  goto LABEL_35;
                }
              }

              else if (*__error())
              {
                v125 = *__error();
                sub_100012C38("fcntl(2) failed trying to allocate contiguous space with error: %d", v113, v114, v115, v116, v117, v118, v119, v125);
                goto LABEL_34;
              }
            }
          }

          else if (*__error())
          {
            v124 = *__error();
            sub_100012C38("fcntl(2) failed trying to allocate contiguous space all at once with error: %d", v91, v92, v93, v94, v95, v96, v97, v124);
            goto LABEL_34;
          }
        }

        v39 = ftruncate(v38, v36);
        if (v39)
        {
          v16 = v39;
          __error();
          sub_100012C38("failed to write to %s file to establish the size (%d).\n", v40, v41, v42, v43, v44, v45, v46, v136);
LABEL_35:
          close(v20);
          v75 = v38;
          goto LABEL_36;
        }

        v83 = fcntl(v38, 51, 0);
        if (v83)
        {
          v16 = v83;
          __error();
          sub_100012C38("failed to fullsync %s file with %d.\n", v84, v85, v86, v87, v88, v89, v90, v136);
          goto LABEL_35;
        }

        v126 = 0;
        v127 = v36;
        if (fcntl(v38, 100, &v126) != -1)
        {
LABEL_34:
          v16 = 0;
          goto LABEL_35;
        }

        v16 = *__error();
        v98 = __error();
        sub_100012C38("F_TRIM_ACTIVE_FILE failed with: %d \n", v99, v100, v101, v102, v103, v104, v105, *v98);
        close(v38);
        if (unlink(v136))
        {
          __error();
          sub_100012C38("failed to unlink %s: %d \n", v106, v107, v108, v109, v110, v111, v112, v136);
        }
      }
    }

    v75 = v20;
LABEL_36:
    close(v75);
    return v16;
  }

  v16 = v8;
  sub_100012C38("unable to determine character device for %s\n", v9, v10, v11, v12, v13, v14, v15, v133);
  return v16;
}

uint64_t sub_10001523C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100012C38("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "_partition_wait_for_device");
  if (!a1)
  {
    v41 = "path argument is NULL";
    goto LABEL_16;
  }

  v16 = CFStringCreateWithCString(kCFAllocatorDefault, "EmbeddedDeviceTypeRoot", 0x8000100u);
  if (!v16)
  {
LABEL_15:
    v41 = "failed to allocate device lookup dict";
LABEL_16:
    sub_100012C38(v41, v9, v10, v11, v12, v13, v14, v15, v111);
    return 0;
  }

  v17 = v16;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v19 = v17;
LABEL_14:
    CFRelease(v19);
    goto LABEL_15;
  }

  v19 = Mutable;
  CFDictionaryAddValue(Mutable, v17, kCFBooleanTrue);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v20)
  {
    CFRelease(v17);
    goto LABEL_14;
  }

  v21 = v20;
  CFDictionaryAddValue(v20, @"IOPropertyMatch", v19);
  CFRelease(v17);
  CFRelease(v19);
  v22 = 0;
  while (1)
  {
    CFRetain(v21);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
    if (MatchingService)
    {
      break;
    }

    if (30 - v22 >= 3)
    {
      v24 = 3;
    }

    else
    {
      v24 = 30 - v22;
    }

    v25 = CFCopyDescription(v21);
    CStringPtr = CFStringGetCStringPtr(v25, 0);
    sub_100012C38("waiting for matching IOKit service: %s\n", v27, v28, v29, v30, v31, v32, v33, CStringPtr);
    sleep(v24);
    v22 += v24;
    CFRelease(v25);
    if (v22 >= 0x1E)
    {
      CFRelease(v21);
      sub_100012C38("failed to lookup IO service for %s", v34, v35, v36, v37, v38, v39, v40, "EmbeddedDeviceTypeRoot");
      return 0;
    }
  }

  v44 = MatchingService;
  CFRelease(v21);
  IOObjectRetain(v44);
  v45 = v44;
  do
  {
    iterator = 0;
    if (IORegistryEntryGetChildIterator(v45, "IOService", &iterator))
    {
      v100 = "Could not create child iterator";
      goto LABEL_45;
    }

    v53 = IOIteratorNext(iterator);
    v54 = 0;
    if (!v53)
    {
      v55 = iterator;
LABEL_44:
      IOObjectRelease(v55);
      v111 = v54;
      v100 = "Found %d child nodes (expected 1)";
LABEL_45:
      sub_100012C38(v100, v46, v47, v48, v49, v50, v51, v52, v111);
      v42 = 0;
      v55 = v45;
      goto LABEL_52;
    }

    v55 = 0;
    do
    {
      if (v55)
      {
        IOObjectRelease(v53);
      }

      else
      {
        v55 = v53;
      }

      v53 = IOIteratorNext(iterator);
      v54 = (v54 + 1);
    }

    while (v53);
    IOObjectRelease(iterator);
    if (v54 != 1)
    {
      goto LABEL_44;
    }

    IOObjectRelease(v45);
    v45 = v55;
  }

  while (!IOObjectConformsTo(v55, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(v55, @"Whole", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100012C38("Did not find Whole property on IOMedia class", v57, v58, v59, v60, v61, v62, v63, v111);
    goto LABEL_51;
  }

  v64 = CFProperty;
  v65 = CFGetTypeID(CFProperty);
  if (v65 != CFBooleanGetTypeID())
  {
    v101 = "Expected Whole to be BOOLean";
LABEL_50:
    sub_100012C38(v101, v66, v67, v68, v69, v70, v71, v72, v111);
    CFRelease(v64);
LABEL_51:
    v42 = 0;
    goto LABEL_52;
  }

  if (!CFBooleanGetValue(v64))
  {
    v101 = "Expected Whole=true";
    goto LABEL_50;
  }

  CFRelease(v64);
  v73 = IORegistryEntryCreateCFProperty(v55, @"BSD Name", kCFAllocatorDefault, 0);
  if (!v73)
  {
    sub_100012C38("no BSD device name for service %s", v74, v75, v76, v77, v78, v79, v80, "EmbeddedDeviceTypeRoot");
    goto LABEL_51;
  }

  v81 = v73;
  v82 = CFGetTypeID(v73);
  if (v82 == CFStringGetTypeID())
  {
    strcpy(a1, "/dev/");
    v90 = strlen(a1);
    if (CFStringGetCString(v81, &a1[v90], 32 - v90, 0x8000100u))
    {
      sub_100012C38("Using device path %s for %s\n", v91, v92, v93, v94, v95, v96, v97, a1);
      v98 = -10;
      while (1)
      {
        if (!access(a1, 0))
        {
          v42 = 1;
          goto LABEL_61;
        }

        if (*__error() != 2)
        {
          break;
        }

        sleep(3u);
        if (__CFADD__(v98++, 1))
        {
          goto LABEL_58;
        }
      }

      v103 = __error();
      strerror(*v103);
      sub_100012C38("stat error while waiting for device '%s': %s\n", v104, v105, v106, v107, v108, v109, v110, a1);
LABEL_58:
      v111 = "EmbeddedDeviceTypeRoot";
      v102 = "timeout waiting for %s";
    }

    else
    {
      v102 = "failed to create C string from BSD name";
    }

    sub_100012C38(v102, v91, v92, v93, v94, v95, v96, v97, v111);
  }

  else
  {
    sub_100012C38("returnbed BSD device name for service %s is wrong type", v83, v84, v85, v86, v87, v88, v89, "EmbeddedDeviceTypeRoot");
  }

  v42 = 0;
LABEL_61:
  CFRelease(v81);
LABEL_52:
  IOObjectRelease(v55);
  IOObjectRelease(v44);
  return v42;
}

uint64_t get_bsd_device_for_mountpoint()
{
  v0 = __chkstk_darwin();
  if (!v0)
  {
    v14 = "Can't find device for NULL mountpoint";
LABEL_10:
    sub_100012C38(v14, v1, v2, v3, v4, v5, v6, v7, v17);
    return 1;
  }

  v8 = v2;
  v9 = v1;
  v10 = v0;
  bzero(&v19, 0x54B0uLL);
  bzero(v18, 0x400uLL);
  v11 = getfsstat(&v19, 21680, 0);
  if (v11 == -1)
  {
    v14 = "Failed to get list of all mounted file systems";
    goto LABEL_10;
  }

  if (v11 < 1)
  {
    return 1;
  }

  v12 = v11;
  for (i = v19.f_mntfromname; strcmp(v10, i - 1024); i += 2168)
  {
    if (!--v12)
    {
      return 1;
    }
  }

  v16 = basename_r(i, v18);
  if (!v16)
  {
    v14 = "Mapped mount to device but failed to basename string!";
    goto LABEL_10;
  }

  strlcpy(v9, v16, v8);
  return 0;
}

uint64_t delete_directory_contents(const char *a1)
{
  value = 0;
  v2 = removefile_state_alloc();
  removefile_state_set(v2, 1u, sub_100015A18);
  removefile_state_set(v2, 2u, &value);
  removefile_state_set(v2, 3u, sub_100015A20);
  removefile_state_set(v2, 4u, &value);
  sub_100012C38("Deleting contents of %s...", v3, v4, v5, v6, v7, v8, v9, a1);
  if (removefile(a1, v2, 3u))
  {
    if (!value)
    {
      value = *__error();
    }
  }

  else
  {
    strcpy(path, ".XXXXXXXX");
    v17 = open(a1, 1048832);
    if (v17 == -1)
    {
      v21 = *__error();
    }

    else
    {
      v18 = v17;
      v19 = mkstempsat_np(v17, path, 8);
      if (v19 == -1)
      {
        v21 = *__error();
      }

      else
      {
        v20 = v19;
        if (unlinkat(v18, path, 0) || fcopyfile(v20, v18, 0, 5u))
        {
          v21 = *__error();
        }

        else
        {
          v21 = 0;
        }

        close(v20);
      }

      close(v18);
    }

    value = v21;
    if (v21)
    {
      strerror(v21);
      sub_100012C38("Could not reset metadata on %s: %s", v22, v23, v24, v25, v26, v27, v28, a1);
    }

    else
    {
      value = 0;
    }
  }

  sub_100012C38("Deleting contents of %s %s (result: %d).", v10, v11, v12, v13, v14, v15, v16, a1);
  removefile_state_free(v2);
  return value;
}

uint64_t sub_100015A20(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *__error();
  *a3 = v5;
  strerror(v5);
  sub_100012C38("Could not removefile(3) path %s: %s", v6, v7, v8, v9, v10, v11, v12, a2);
  return 2;
}

uint64_t mount_apfs_system_readwrite_with_revert(char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!byte_10003A3A8)
  {
    sub_100012C38("system volume device node not found", v10, v11, v12, v13, v14, v15, v16, v101);
    return 2;
  }

  v102 = 0;
  v17 = getmntinfo_r_np(&v102, 2);
  if (v17 < 1)
  {
    sub_100012C38("Failed to get mount info for all mounted file systems", v18, v19, v20, v21, v22, v23, v24, v101);
    return *__error();
  }

  v25 = v102;
  v26 = v17;
  v27 = 1112;
  while (strcmp(v25 + v27, &byte_10003A3A8))
  {
    v27 += 2168;
    if (!--v26)
    {
      goto LABEL_10;
    }
  }

  sub_100012C38("unmounting %s at %s", v28, v29, v30, v31, v32, v33, v34, v25 + v27);
  sub_100013288(v102 + v27 - 1024);
  v25 = v102;
LABEL_10:
  free(v25);
  v36 = sub_10001415C(&byte_10003A3A8, a1);
  if (v36)
  {
    v35 = v36;
    sub_100012C38("system volume device node %s could not be mounted read/write at %s", v37, v38, v39, v40, v41, v42, v43, &byte_10003A3A8);
    return v35;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v45, v46, v47, v48, v49, v50, v51, v101);
    return 45;
  }

  if (!a2)
  {
LABEL_29:
    sub_100012C38("mounting system volume read/write at %s succeeded.", v45, v46, v47, v48, v49, v50, v51, a1);
    return 0;
  }

  v52 = open(a1, 0x100000);
  v53 = v52;
  if (v52 < 0)
  {
    v35 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v69, v70, v71, v72, v73, v74, v75, "mount_apfs_system_readwrite_with_revert");
    if (v53 == -1)
    {
      return v35;
    }

    goto LABEL_23;
  }

  if (fs_snapshot_revert(v52, a2, 0))
  {
    v61 = __error();
    v35 = *v61;
    strerror(*v61);
    sub_100012C38("revert snapshot operation failed: %d %s", v62, v63, v64, v65, v66, v67, v68, v35);
    goto LABEL_23;
  }

  sub_100012C38("reverting system volume to snapshot %s succeeded. remounting...", v54, v55, v56, v57, v58, v59, v60, a2);
  if (!close(v53))
  {
    v92 = sub_100013288(a1);
    if (v92)
    {
      v35 = v92;
      sub_100012C38("system volume device node %s could not be unmounted from %s", v93, v94, v95, v96, v97, v98, v99, &byte_10003A3A8);
      return v35;
    }

    v100 = sub_10001415C(&byte_10003A3A8, a1);
    if (v100)
    {
      v35 = v100;
      sub_100012C38("system volume device node %s could not be re-mounted read/write at %s", v45, v46, v47, v48, v49, v50, v51, &byte_10003A3A8);
      return v35;
    }

    goto LABEL_29;
  }

  v76 = __error();
  v35 = *v76;
  strerror(*v76);
  sub_100012C38("%s: Unable to close directory: %d %s\n", v77, v78, v79, v80, v81, v82, v83, "mount_apfs_system_readwrite_with_revert");
LABEL_23:
  if (close(v53))
  {
    __error();
    v84 = __error();
    strerror(*v84);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v85, v86, v87, v88, v89, v90, v91, "mount_apfs_system_readwrite_with_revert");
  }

  return v35;
}

uint64_t create_apfs_system_snapshot(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "create_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v51);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: createSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "create_apfs_system_snapshot");
    return 22;
  }

  v17 = open(a1, 0x100000);
  v18 = v17;
  if (v17 < 0)
  {
    v27 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v35, v36, v37, v38, v39, v40, v41, "create_apfs_system_snapshot");
    if (v18 == -1)
    {
      return v27;
    }
  }

  else if (fs_snapshot_create(v17, a2, 0))
  {
    v26 = __error();
    v27 = *v26;
    strerror(*v26);
    sub_100012C38("create snapshot operation failed: %d %s", v28, v29, v30, v31, v32, v33, v34, v27);
  }

  else
  {
    sub_100012C38("creating system volume snapshot %s succeeded.", v19, v20, v21, v22, v23, v24, v25, a2);
    v27 = 0;
  }

  if (close(v18))
  {
    __error();
    v42 = __error();
    strerror(*v42);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v43, v44, v45, v46, v47, v48, v49, "create_apfs_system_snapshot");
  }

  return v27;
}

uint64_t delete_apfs_system_snapshot(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "delete_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v51);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: deleteSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "delete_apfs_system_snapshot");
    return 22;
  }

  v17 = open(a1, 0x100000);
  v18 = v17;
  if (v17 < 0)
  {
    v27 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v35, v36, v37, v38, v39, v40, v41, "delete_apfs_system_snapshot");
    if (v18 == -1)
    {
      return v27;
    }
  }

  else if (fs_snapshot_delete(v17, a2, 0))
  {
    v26 = __error();
    v27 = *v26;
    strerror(*v26);
    sub_100012C38("delete snapshot operation failed: %d %s", v28, v29, v30, v31, v32, v33, v34, v27);
  }

  else
  {
    sub_100012C38("deleting system volume snapshot %s succeeded.", v19, v20, v21, v22, v23, v24, v25, a2);
    v27 = 0;
  }

  if (close(v18))
  {
    __error();
    v42 = __error();
    strerror(*v42);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v43, v44, v45, v46, v47, v48, v49, "delete_apfs_system_snapshot");
  }

  return v27;
}

uint64_t rename_apfs_system_snapshot(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "rename_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v11, v12, v13, v14, v15, v16, v17, v52);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: oldName is required", v11, v12, v13, v14, v15, v16, v17, "rename_apfs_system_snapshot");
    return 22;
  }

  if (!a3)
  {
    sub_100012C38("%s: newName is required", v11, v12, v13, v14, v15, v16, v17, "rename_apfs_system_snapshot");
    return 22;
  }

  v18 = open(a1, 0x100000);
  v19 = v18;
  if (v18 < 0)
  {
    v28 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v37, v38, v39, v40, v41, v42, v43, "rename_apfs_system_snapshot");
    if (v19 == -1)
    {
      return v28;
    }
  }

  else if (fs_snapshot_rename(v18, a2, a3, 0))
  {
    v27 = __error();
    v28 = *v27;
    strerror(*v27);
    sub_100012C38("rename snapshot operation failed: %d %s", v29, v30, v31, v32, v33, v34, v35, v28);
  }

  else
  {
    sub_100012C38("renaming system volume snapshot %s to %s succeeded.", v20, v21, v22, v23, v24, v25, v26, a2);
    v28 = 0;
  }

  if (close(v19))
  {
    __error();
    v44 = __error();
    strerror(*v44);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v45, v46, v47, v48, v49, v50, v51, "rename_apfs_system_snapshot");
  }

  return v28;
}

uint64_t root_from_apfs_system_snapshot(const char *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "root_from_apfs_system_snapshot");
    return 22;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v10, v11, v12, v13, v14, v15, v16, v43);
    return 45;
  }

  if (!a2)
  {
    sub_100012C38("%s: rootSnapshot is required", v10, v11, v12, v13, v14, v15, v16, "root_from_apfs_system_snapshot");
    return 22;
  }

  LOBYTE(v44) = 0;
  APFSShouldSealSystemVolume();
  v17 = open(a1, 0x100000);
  if (v17 < 0)
  {
    v19 = *__error();
    sub_100012C38("%s : Unable to open %s: %d", v28, v29, v30, v31, v32, v33, v34, "root_from_apfs_system_snapshot");
    if (v17 == -1)
    {
      return v19;
    }
  }

  else if (fs_snapshot_root())
  {
    v18 = __error();
    v19 = *v18;
    strerror(*v18);
    sub_100012C38("root from snapshot operation failed: %d %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
  }

  else
  {
    v19 = 0;
  }

  if (close(v17))
  {
    __error();
    v35 = __error();
    strerror(*v35);
    sub_100012C38("%s: Unable to close directory: %d %s\n", v36, v37, v38, v39, v40, v41, v42, "root_from_apfs_system_snapshot");
  }

  return v19;
}

char *copy_rooted_snapshot_name()
{
  v17 = 0;
  if (!is_mountpoint_apfs("/"))
  {
    v7 = "media is not apfs managed: unsupported operation";
    goto LABEL_5;
  }

  bzero(&v20, 0x878uLL);
  if (statfs("/", &v20))
  {
    v7 = "statfs of root failed";
LABEL_5:
    sub_100012C38(v7, v0, v1, v2, v3, v4, v5, v6, v16);
    return 0;
  }

  v9 = strlen(v20.f_mntfromname);
  v10 = strlen(&byte_10003A3A8);
  if (v9 <= v10 + 1 || (v11 = v9 + ~v10, v20.f_mntfromname[v11] != 64) || strcmp(&v20.f_mntfromname[v9 - v10], &byte_10003A3A8) || (asprintf(&v17, "%.*s", v11, v20.f_mntfromname), (result = v17) == 0))
  {
    if (strnstr(v20.f_mntfromname, "/dev/", 5uLL) == v20.f_mntfromname)
    {
      f_mntfromname = &v20.f_mntfromname[5];
    }

    else
    {
      f_mntfromname = v20.f_mntfromname;
    }

    v13 = IOBSDNameMatching(kIOMasterPortDefault, 0, f_mntfromname);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
    v15 = MatchingService;
    if (MatchingService)
    {
      if (IOObjectConformsTo(MatchingService, "AppleAPFSSnapshot"))
      {
        memset(v19, 0, sizeof(v19));
        memset(v18, 0, sizeof(v18));
        if (!fsctl("/", 0xC1204A43uLL, v18, 0))
        {
          if (LOBYTE(v19[0]))
          {
            v17 = strdup(v19);
          }
        }
      }
    }

    IOObjectRelease(v15);
    return v17;
  }

  return result;
}

char *copy_root_snapshot_name_from_dt()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    sub_100012C38("uanble to find chosen node", v1, v2, v3, v4, v5, v6, v7, v30);
    return 0;
  }

  v8 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"root-snapshot-name", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    sub_100012C38("unable to look up root-snapshot-name on chosen node", v10, v11, v12, v13, v14, v15, v16, v30);
    IOObjectRelease(v8);
    return 0;
  }

  v17 = CFProperty;
  v18 = CFGetTypeID(CFProperty);
  if (v18 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v28 = strndup(BytePtr, Length);
  }

  else
  {
    sub_100012C38("device tree root-snapshot-name type mismatch", v19, v20, v21, v22, v23, v24, v25, v30);
    v28 = 0;
  }

  IOObjectRelease(v8);
  CFRelease(v17);
  return v28;
}

uint64_t create_apfs_container(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (byte_10003A308)
    {
      v16 = "/sbin/newfs_apfs";
      v22[0] = "/sbin/newfs_apfs";
      v22[1] = "-C";
      v17 = &byte_10003A448;
      v23 = 0u;
      v24 = 0u;
      if (!v8)
      {
        v17 = &byte_10003A308;
      }

      v25 = 0uLL;
      v26 = 0uLL;
      v22[2] = v17;
      v22[3] = 0;
      v18 = 1;
      do
      {
        sub_100012C38("%s ", v9, v10, v11, v12, v13, v14, v15, v16);
        v16 = v22[v18++];
      }

      while (v16);
      if (off_10003A300)
      {
        result = off_10003A300(v22, sub_100017818, 0);
        if (!result)
        {
          return result;
        }

        v20 = v22[0];
      }

      else
      {
        v20 = "/sbin/newfs_apfs";
      }

      sub_100012C38("%s returned %d", v9, v10, v11, v12, v13, v14, v15, v20);
      return 8;
    }

    else
    {
      sub_100012C38("media is apfs not formatted.", v9, v10, v11, v12, v13, v14, v15, v21);
      return 19;
    }
  }

  else
  {
    sub_100012C38("media isn't apfs formatted.", v9, v10, v11, v12, v13, v14, v15, v21);
    return 2;
  }
}

uint64_t delete_recovery_os_partitions(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = a1;
  v95 = a1;
  v96 = 0;
  valuePtr = 0;
  v94 = 0;
  v92 = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "delete_recovery_os_partitions");
  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"Shared Writer", kCFBooleanTrue);
    v12 = Mutable;
  }

  else
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = v12;
  }

  CFDictionaryAddValue(v12, @"Writable", kCFBooleanTrue);
  if (!byte_10003A468)
  {
    sub_100012C38("No storage device found exiting without failure.", v13, v14, v15, v16, v17, v18, v19, v88);
    return 0;
  }

  v20 = MKMediaCreateWithPath();
  CFRelease(Mutable);
  v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = MKCFReadMedia();
  CFRelease(v22);
  if (!v23)
  {
    sub_100012C38("no media in mediaref found \n", v24, v25, v26, v27, v28, v29, v30, v88);
    v21 = 0;
    HIDWORD(v96) = -1;
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(v23, @"Schemes");
  if (!Value)
  {
    v69 = "Couldn't find Schemes in existing media struct.\n";
LABEL_34:
    sub_100012C38(v69, v32, v33, v34, v35, v36, v37, v38, v88);
    v21 = 0;
    HIDWORD(v96) = -1;
    goto LABEL_35;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  if (!ValueAtIndex)
  {
    v69 = "Couldn't find any scheme in schemes struct.\n";
    goto LABEL_34;
  }

  if (!CFDictionaryGetValue(ValueAtIndex, @"Sections"))
  {
    v69 = "Couldn't find Sections in the scheme struct.\n";
    goto LABEL_34;
  }

  v40 = CFArrayDictionarySearchWithIndexOptions();
  if (!v40)
  {
    v69 = "Couldn't ID/MAP section in the sections struct.\n";
    goto LABEL_34;
  }

  v41 = CFDictionaryGetValue(v40, @"Partitions");
  if (!v41)
  {
    v69 = "Couldn't Partitions in the section struct.\n";
    goto LABEL_34;
  }

  v42 = v41;
  Count = CFArrayGetCount(v41);
  if (Count < 1)
  {
    goto LABEL_39;
  }

  v51 = Count;
  v52 = 0;
  v90 = 0;
  theDict = 0;
  v53 = 0;
  v89 = Count;
  do
  {
    v54 = CFArrayGetValueAtIndex(v42, v52);
    if (!v54)
    {
      v68 = "Couldn't partition in the Partitions array.\n";
      goto LABEL_41;
    }

    v55 = CFDictionaryGetValue(v54, @"Name");
    if (v55)
    {
      v56 = v55;
      if (CFStringCompare(v55, @"Container", 0))
      {
        if (CFStringCompare(v56, @"RecoveryOSContainer", 0) == kCFCompareEqualTo)
        {
          v57 = CFArrayGetValueAtIndex(v42, v52);
          v58 = CFDictionaryGetValue(v57, @"Size");
          CFNumberGetValue(v58, kCFNumberSInt64Type, &valuePtr);
          v92 = 0;
          v59 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v92);
          v60 = v57;
          v53 = v57;
          v51 = v89;
          CFDictionaryReplaceValue(v60, @"Size", v59);
          CFDictionaryReplaceValue(v53, @"Offset", v59);
          CFRelease(v59);
          sub_100012C38("Deleting the recovery OS partition/container/volume.\n", v61, v62, v63, v64, v65, v66, v67, v88);
          LODWORD(v90) = v52;
        }
      }

      else
      {
        theDict = CFArrayGetValueAtIndex(v42, v52);
        HIDWORD(v90) = v52;
      }
    }

    ++v52;
  }

  while (v51 != v52);
  if (theDict && v53)
  {
    if (v90 && v90 != HIDWORD(v90) + 1)
    {
      v68 = "Recovery OS partition doesn't adjacent to the main OS partition, this isn't supported by the recovery OS update process .\n";
LABEL_41:
      sub_100012C38(v68, v44, v45, v46, v47, v48, v49, v50, v88);
      v21 = 0;
      HIDWORD(v96) = -1;
      goto LABEL_35;
    }

    if (v51 >= 3)
    {
      v71 = CFDictionaryGetValue(theDict, @"Size");
      CFNumberGetValue(v71, kCFNumberSInt64Type, &v94);
      v10 = v95;
      if (!v95 || v94 > valuePtr + v94)
      {
        v95 = valuePtr + v94;
        v10 = valuePtr + v94;
      }
    }

    v72 = MKCFUpdateMedia();
    HIDWORD(v96) = v72;
    if (v72)
    {
      sub_100012C38("MKCFUpdateMedia failed to remove recovery os partition: %d\n", v73, v74, v75, v76, v77, v78, v79, v72);
    }

    else
    {
      sub_100012C38("New main OS partiton block count is %llu.\n", v73, v74, v75, v76, v77, v78, v79, v10);
      v80 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v95);
      CFDictionaryReplaceValue(theDict, @"Size", v80);
      HIDWORD(v96) = MKCFWriteMedia();
      CFRelease(v80);
      if (!HIDWORD(v96))
      {
        *a3 = v95 << 9;
        v21 = 1;
        goto LABEL_35;
      }

      sub_100012C38("MKCFWriteMedia failed to update main os partition size: %d\n", v81, v82, v83, v84, v85, v86, v87, HIDWORD(v96));
    }
  }

  else
  {
LABEL_39:
    sub_100012C38("Couldn't find both main partition and recovery OS partition , continuing without deletion of recovery os partition.\n", v44, v45, v46, v47, v48, v49, v50, v88);
  }

  v21 = 0;
LABEL_35:
  MKCFDisposeMedia();
LABEL_36:
  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t create_recovery_os_partition(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v99 = a1;
  v100 = 0;
  valuePtr = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "create_recovery_os_partition");
  if (v9)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"Shared Writer", kCFBooleanTrue);
    v12 = Mutable;
  }

  else
  {
    v12 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = v12;
  }

  CFDictionaryAddValue(v12, @"Writable", kCFBooleanTrue);
  if (!byte_10003A468)
  {
    sub_100012C38("No storage device found exiting without failure.", v13, v14, v15, v16, v17, v18, v19, v94);
    return 0;
  }

  v20 = MKMediaCreateWithPath();
  CFRelease(Mutable);
  v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = MKCFReadMedia();
  CFRelease(v22);
  if (v23)
  {
    Value = CFDictionaryGetValue(v23, @"Schemes");
    if (Value)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (ValueAtIndex)
      {
        CFDictionaryGetValue(ValueAtIndex, @"Sections");
        v41 = CFArrayDictionarySearchWithIndexOptions();
        if (v41)
        {
          v42 = CFDictionaryGetValue(v41, @"Partitions");
          if (v42)
          {
            v43 = v42;
            Count = CFArrayGetCount(v42);
            if (Count < 1)
            {
LABEL_41:
              v78 = "Couldn't find both main OS partition , continuing without deletion of recovery os partition.\n";
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v95 = 0;
              theDict = 0;
              v53 = -1;
              do
              {
                v54 = CFArrayGetValueAtIndex(v43, v52);
                if (!v54)
                {
                  v78 = "Couldn't partition in the Partitions array.\n";
                  goto LABEL_44;
                }

                v55 = v43;
                v56 = CFDictionaryGetValue(v54, @"Name");
                if (v56)
                {
                  v57 = v56;
                  if (CFStringCompare(v56, @"Container", 0))
                  {
                    v58 = CFStringCompare(v57, @"RecoveryOSContainer", 0);
                    v43 = v55;
                    if (v58 == kCFCompareEqualTo)
                    {
                      sub_100012C38("Found an existing recovery OS partition, no need to create again (non cretical).\n", v44, v45, v46, v47, v48, v49, v50, v94);
                      v31 = 0;
LABEL_7:
                      v21 = 0;
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v43 = v55;
                    theDict = CFArrayGetValueAtIndex(v55, v52);
                    v95 = v52;
                  }
                }

                ++v52;
                v51 += &_mh_execute_header;
                ++v53;
              }

              while (Count != v52);
              if (!theDict)
              {
                goto LABEL_41;
              }

              if (v53 == v95)
              {
                v59 = CFDictionaryGetValue(theDict, @"Size");
                CFNumberGetValue(v59, kCFNumberSInt64Type, &valuePtr);
                v67 = v99;
                if (v99 - 1 >= (valuePtr - a2))
                {
                  v99 = valuePtr - a2;
                  v67 = valuePtr - a2;
                }

                sub_100012C38("New main OS partiton block count is %llu.\n", v60, v61, v62, v63, v64, v65, v66, v67);
                v68 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v99);
                CFDictionaryReplaceValue(theDict, @"Size", v68);
                v31 = MKCFBuildPartition();
                if (HIDWORD(v100))
                {
                  sub_100012C38("MKCFBuildPartition recovery OS failed: %d\n", v69, v70, v71, v72, v73, v74, v75, HIDWORD(v100));
                  goto LABEL_7;
                }

                CFArrayInsertValueAtIndex(v43, v51 >> 32, v31);
                sub_100012C38("New recovery OS partiton block count is %llu.\n", v79, v80, v81, v82, v83, v84, v85, a2);
                v86 = MKCFWriteMedia();
                HIDWORD(v100) = v86;
                if (v86)
                {
                  sub_100012C38("MKCFWriteMedia failed: %d\n", v87, v88, v89, v90, v91, v92, v93, v86);
                  goto LABEL_7;
                }

                HIDWORD(v100) = 0;
                *a4 = v99 << 9;
                v21 = 1;
                goto LABEL_35;
              }

              v78 = "Can't create recovery OS partition becuase the main OS partition isn't the last in the partition table (can't resize other partitions).\n";
            }

LABEL_44:
            sub_100012C38(v78, v44, v45, v46, v47, v48, v49, v50, v94);
            v31 = 0;
            v21 = 0;
            HIDWORD(v100) = -1;
LABEL_35:
            MKCFDisposeMedia();
            goto LABEL_36;
          }

          v76 = "Couldn't Partitions in the section struct.\n";
        }

        else
        {
          v76 = "Couldn't ID/MAP section in the sections struct.\n";
        }
      }

      else
      {
        v76 = "Couldn't find any scheme in schemes struct.\n";
      }
    }

    else
    {
      v76 = "Couldn't find Schemes in existing media struct.\n";
    }

    sub_100012C38(v76, v33, v34, v35, v36, v37, v38, v39, v94);
    v21 = 0;
    v31 = 0;
    HIDWORD(v100) = -1;
    goto LABEL_35;
  }

  sub_100012C38("no media in mediaref found \n", v24, v25, v26, v27, v28, v29, v30, v94);
  v21 = 0;
  v31 = 0;
  HIDWORD(v100) = -1;
LABEL_36:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v21;
}

uint64_t create_recovery_os_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10003A448)
  {

    return format_partition(&byte_10003A448, "Recovery", 0, 0, 0);
  }

  else
  {
    sub_100012C38("No recovery OS container found.\n", a2, a3, a4, a5, a6, a7, a8, v8);
    return 6;
  }
}

uint64_t delete_recovery_os_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!partition_probe_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v23 = "Failed to probe device media.\n";
LABEL_7:
    sub_100012C38(v23, v8, v9, v10, v11, v12, v13, v14, v25);
    return 0;
  }

  if (!byte_10003A388)
  {
    v23 = "No recovery OS volume found.\n";
    goto LABEL_7;
  }

  sub_100012C38("Deleting recovery OS volume %s \n", v8, v9, v10, v11, v12, v13, v14, &byte_10003A388);
  v22 = APFSVolumeDelete();
  if (v22)
  {
    sub_100012C38("Failed deleting recovery OS volume %s , got %d.\n", v15, v16, v17, v18, v19, v20, v21, &byte_10003A388);
  }

  return v22;
}

uint64_t get_os_partitions_size(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  v62 = 0;
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_os_partitions_size");
  if (!byte_10003A468)
  {
    v18 = "No storage device found exiting without failure.";
LABEL_6:
    sub_100012C38(v18, v10, v11, v12, v13, v14, v15, v16, v58);
    return 0;
  }

  if (!a1)
  {
    v18 = "main_os_partition_size can't be NULL.";
    goto LABEL_6;
  }

  v17 = MKMediaCreateWithPath();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v21 = MKCFReadMedia();
  CFRelease(Mutable);
  if (!v21)
  {
    sub_100012C38("no media in mediaref found \n", v22, v23, v24, v25, v26, v27, v28, v58);
    v19 = 0;
    HIDWORD(v62) = -1;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(v21, @"Schemes");
  if (Value)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      CFDictionaryGetValue(ValueAtIndex, @"Sections");
      v38 = CFArrayDictionarySearchWithIndexOptions();
      if (v38)
      {
        v39 = CFDictionaryGetValue(v38, @"Partitions");
        if (v39)
        {
          v40 = v39;
          Count = CFArrayGetCount(v39);
          if (Count >= 1)
          {
            v42 = Count;
            v43 = 0;
            v59 = 0;
            theDict = 0;
            do
            {
              v44 = CFArrayGetValueAtIndex(v40, v43);
              if (!v44)
              {
                v56 = "Couldn't partition in the Partitions array.\n";
                goto LABEL_30;
              }

              v45 = CFDictionaryGetValue(v44, @"Name");
              if (v45)
              {
                v46 = v45;
                if (CFStringCompare(v45, @"Container", 0))
                {
                  if (CFStringCompare(v46, @"RecoveryOSContainer", 0) == kCFCompareEqualTo)
                  {
                    v59 = CFArrayGetValueAtIndex(v40, v43);
                  }
                }

                else
                {
                  theDict = CFArrayGetValueAtIndex(v40, v43);
                }
              }

              ++v43;
            }

            while (v42 != v43);
            if (!theDict)
            {
              goto LABEL_35;
            }

            v47 = CFDictionaryGetValue(theDict, @"Size");
            CFNumberGetValue(v47, kCFNumberSInt64Type, &valuePtr);
            *a1 = valuePtr << 9;
            if (v59)
            {
              if (a2)
              {
                v55 = CFDictionaryGetValue(v59, @"Size");
                CFNumberGetValue(v55, kCFNumberSInt64Type, &valuePtr);
                *a2 = valuePtr << 9;
              }
            }

            else
            {
              sub_100012C38("Couldn't find recovery OS partition.\n", v48, v49, v50, v51, v52, v53, v54, v58);
            }

            v19 = 1;
            goto LABEL_31;
          }

LABEL_35:
          v56 = "Couldn't find main OS partition.\n";
        }

        else
        {
          v56 = "Couldn't Partitions in the section struct.\n";
        }
      }

      else
      {
        v56 = "Couldn't ID/MAP section in the sections struct.\n";
      }
    }

    else
    {
      v56 = "Couldn't find any scheme in schemes struct.\n";
    }
  }

  else
  {
    v56 = "Couldn't find Schemes in existing media struct.\n";
  }

LABEL_30:
  sub_100012C38(v56, v30, v31, v32, v33, v34, v35, v36, v58);
  v19 = 0;
  HIDWORD(v62) = -1;
LABEL_31:
  MKCFDisposeMedia();
LABEL_32:
  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

uint64_t get_main_container_space_info(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100012C38("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "get_main_container_space_info");
  if (byte_10003A308)
  {
    SpaceInfo = APFSContainerGetSpaceInfo();
    if (SpaceInfo)
    {
      sub_100012C38("APFSContainerGetSpaceInfo failed with result:%d", v21, v22, v23, v24, v25, v26, v27, SpaceInfo);
    }
  }

  else
  {
    sub_100012C38("No container device found, can't retrieve space info", v13, v14, v15, v16, v17, v18, v19, v52);
  }

  if (byte_10003A3A8)
  {
    v28 = APFSVolumeGetSpaceInfo();
    if (v28)
    {
      sub_100012C38("APFSVolumeGetSpaceInfo for system volume failed with result:%d", v29, v30, v31, v32, v33, v34, v35, v28);
    }
  }

  else
  {
    sub_100012C38("No system device found, can't retrieve space info", v21, v22, v23, v24, v25, v26, v27, v52);
  }

  if (byte_10003A3E8)
  {
    v36 = APFSVolumeGetSpaceInfo();
    if (v36)
    {
      sub_100012C38("APFSVolumeGetSpaceInfo for data volume failed with result:%d", v37, v38, v39, v40, v41, v42, v43, v36);
    }
  }

  else
  {
    sub_100012C38("No data device found, can't retrieve space info", v29, v30, v31, v32, v33, v34, v35, v52);
  }

  if (!byte_10003A368)
  {
    result = sub_100012C38("No preboot device found, can't retrieve space info", v37, v38, v39, v40, v41, v42, v43, v52);
LABEL_17:
    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  result = APFSVolumeGetSpaceInfo();
  if (result)
  {
    result = sub_100012C38("APFSVolumeGetSpaceInfo for preboot volume failed with result:%d", v45, v46, v47, v48, v49, v50, v51, result);
    goto LABEL_17;
  }

  if (a1)
  {
LABEL_18:
    *a1 = 0;
  }

LABEL_19:
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100017818()
{
  if (off_10003A2F8)
  {
    return off_10003A2F8();
  }

  return result;
}

CFStringRef tickethelper_copy_hash_hex_string(const __CFData *a1, CFErrorRef *a2)
{
  memset(v10, 0, sizeof(v10));
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if ((Length & 0x7FFFFFC0) == 0)
  {
    v6 = 0;
    if (Length)
    {
      do
      {
        v7 = *BytePtr++;
        *(v10 + v6) = a0123456789abcd[v7 >> 4];
        *(v10 + (v6 + 1)) = a0123456789abcd[v7 & 0xF];
        v6 += 2;
      }

      while (2 * Length != v6);
      v6 = v6;
    }

    *(v10 + v6) = 0;
  }

  v8 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  if (!v8)
  {
    *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 1, 0);
  }

  return v8;
}

CFTypeRef tickethelper_copy_root_hash(CFErrorRef *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v10 = v2;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *buffer = 0u;
    v25 = 0u;
    sub_100012C38("looking up boot manifest hash", v3, v4, v5, v6, v7, v8, v9, v23);
    CFProperty = IORegistryEntryCreateCFProperty(v10, @"boot-manifest-hash", kCFAllocatorDefault, 0);
    v12 = CFProperty;
    if (CFProperty)
    {
      v13 = CFGetTypeID(CFProperty);
      if (v13 != CFDataGetTypeID())
      {
        v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v12);
        if (CFStringGetCString(v14, buffer, 128, 0x8000100u))
        {
          sub_100012C38("device tree ticket-hash type mismatch: %s", v15, v16, v17, v18, v19, v20, v21, buffer);
        }

        *a1 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 3, 0);
        CFRelease(v14);
      }
    }

    else
    {
      *a1 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 2, 0);
    }

    IOObjectRelease(v10);
  }

  else
  {
    v12 = 0;
    *a1 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainMach, -536870911, 0);
  }

  return v12;
}

CFDataRef tickethelper_copy_hash_data(const void *a1, CFErrorRef *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDataGetTypeID())
  {
    v32 = kCFAllocatorDefault;
    v33 = @"TickethelperErrorDomain";
    v34 = 5;
LABEL_13:
    v31 = 0;
    *a2 = CFErrorCreate(v32, v33, v34, 0);
    return v31;
  }

  v5 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (!v5)
  {
    v32 = kCFAllocatorDefault;
    v33 = kCFErrorDomainMach;
    v34 = -536870911;
    goto LABEL_13;
  }

  v6 = v5;
  v52 = 0u;
  v53 = 0u;
  *md = 0u;
  *buffer = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  CFProperty = IORegistryEntryCreateCFProperty(v5, @"crypto-hash-method", kCFAllocatorDefault, 0);
  v15 = CFProperty;
  if (CFProperty)
  {
    if (*CFDataGetBytePtr(CFProperty) != 828467315)
    {
      if (*CFDataGetBytePtr(v15) != 0x3438332D32616873)
      {
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"img4CryptoHashMethodData not recognized: %@", v15);
        if (CFStringGetCString(v23, buffer, 128, 0x8000100u))
        {
          sub_100012C38("%s\n", v24, v25, v26, v27, v28, v29, v30, buffer);
        }

        *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 4, 0);
        if (v23)
        {
          CFRelease(v23);
        }

        IOObjectRelease(v6);
        v31 = 0;
LABEL_20:
        CFRelease(v15);
        return v31;
      }

      sub_100012C38("crypto-hash-method found. Using SHA2-384\n", v16, v17, v18, v19, v20, v21, v22, v42);
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      CC_SHA384(BytePtr, Length, md);
      v38 = 48;
      goto LABEL_17;
    }

    v35 = "crypto-hash-method found. Using SHA1\n";
  }

  else
  {
    v35 = "crypto-hash-method not found, defaulting to SHA1\n";
  }

  sub_100012C38(v35, v8, v9, v10, v11, v12, v13, v14, v42);
  v36 = CFDataGetBytePtr(a1);
  v37 = CFDataGetLength(a1);
  CC_SHA1(v36, v37, md);
  v38 = 20;
LABEL_17:
  v31 = CFDataCreate(kCFAllocatorDefault, md, v38);
  if (!v31)
  {
    *a2 = CFErrorCreate(kCFAllocatorDefault, @"TickethelperErrorDomain", 1, 0);
  }

  IOObjectRelease(v6);
  if (v15)
  {
    goto LABEL_20;
  }

  return v31;
}

void sub_100017DB8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics addEvent:]_block_invoke";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: SET_EVENT: Nil event passed to setEvent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017E30(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics _queue_addEvent:]";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: ADD_EVENT: Event without UUID passed to addEvent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017EA8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics _queue_addEvent:]";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: ADD_EVENT: Nil event passed to addEvent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017F20(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics _queue_submitEvent:]";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: SUBMIT_EVENT: Unable to register send null CoreAnalytics event", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100017F98(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics _queue_removeEvent:]";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: REMOVE_EVENT: Event without UUID passed to removeEvent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018010(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DRAnalytics _queue_removeEvent:]";
  sub_100001DC4(&_mh_execute_header, a1, a3, "%{public}s: REMOVE_EVENT: Nil event passed to removeEvent", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100018088(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[DRAnalytics _queue_removeEvent:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do.", &v2, 0x16u);
}

void sub_100018114(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5 = 136446722;
  v6 = "DREIsRunningInDeviceRecoveryEnvironment";
  v7 = 1024;
  v8 = v2;
  v9 = 2082;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: Unable to determine OS environment: %d:(%{public}s)\n", &v5, 0x1Cu);
}

void sub_1000181D0(os_log_t log)
{
  v1 = 136446210;
  v2 = "DREIsRunningInDeviceRecoveryEnvironment";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Failed to allocate buffer to read OSEnvironment value. Assuming running in normal mode", &v1, 0xCu);
}

void sub_100018254(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136446466;
  v5 = "DREIsRunningInDeviceRecoveryEnvironment";
  v6 = 2082;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: Failed to determine size of buffer to read OSEnvironment value(%{public}s). Assuming running in normal mode", &v4, 0x16u);
}

void sub_1000182FC(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    sub_1000025B8();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
  }
}

void sub_10001841C(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    sub_1000025B8();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x16u);
  }
}

void sub_10001853C(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  *a1 = v1;
}

void sub_100018614(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_100002600();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  *a1 = v1;
}

void sub_1000186EC()
{
  v2[0] = 136447490;
  sub_1000025D0();
  sub_1000033CC();
  v3 = "";
  sub_100003398();
  v4 = 49;
  sub_1000033D8(&_mh_execute_header, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

void sub_100018794(uint64_t *a1)
{
  v2 = sub_1000118BC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5 = 136447490;
    v6 = "[DeviceRecoveryOverrideService startService]";
    v7 = 2082;
    v8 = "[DeviceRecoveryOverrideService startService]";
    v9 = 2082;
    v10 = "listener != nil";
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m";
    v15 = 1026;
    v16 = 81;
    sub_1000033D8(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v5);
  }

  v4 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryOverrideService"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create NSXPCListener for service: %@", 0, "[DeviceRecoveryOverrideService startService]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m", 0x51u);
}

void sub_100018900(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v7 = 136447490;
    v8 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v9 = 2082;
    v10 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v11 = 2082;
    v12 = "[recoveryOverrideEntitlement isKindOfClass:[NSNumber class]]";
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryOverrideService.m";
    v17 = 1026;
    v18 = 115;
    sub_1000033D8(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v7);
  }

  v4 = sub_1000118BC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136446722;
    v8 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
    v9 = 2114;
    v10 = @"com.apple.DeviceRecovery.Override";
    v11 = 2114;
    v12 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client is not an NSNumber: %{public}@", &v7, 0x20u);
  }
}

void sub_100018A84(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }
}

void sub_100018B4C()
{
  v2[0] = 136447490;
  sub_1000025D0();
  sub_1000033CC();
  v3 = "";
  sub_100003398();
  v4 = 114;
  sub_1000033D8(&_mh_execute_header, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

void sub_100018BF4(os_log_t log)
{
  v1 = 136446466;
  v2 = "[DeviceRecoveryOverrideService listener:shouldAcceptNewConnection:]";
  v3 = 2114;
  v4 = @"com.apple.DeviceRecovery.Override";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: override client is missing entitlement: '%{public}@'", &v1, 0x16u);
}

void sub_100018C8C(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }
}

void sub_100018D54(NSObject **a1, _BYTE *a2)
{
  v4 = sub_1000118BC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v7 = "";
    sub_100003398();
    v8 = 101;
    sub_1000033D8(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6);
  }

  *a2 = 0;
  *a1 = v4;
}

void sub_100018E38(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }
}

void sub_100018EF8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100018F90(int a1, int __errnum)
{
  strerror(__errnum);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100019024()
{
  sub_10000ECD4();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000190B4()
{
  sub_10000ECD4();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100019144()
{
  v0 = __error();
  strerror(*v0);
  sub_10000EC44();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000191DC(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_10000ECA0(v3))
  {
    *v17 = 136447490;
    *&v17[4] = "[DeviceRecoveryService init]";
    *&v17[12] = 2082;
    *&v17[14] = "[DeviceRecoveryService init]";
    *&v17[22] = 2082;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2082;
    *&v18[12] = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m";
    *&v18[20] = 1026;
    *&v18[22] = 399;
    sub_10000EB70(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, *v17, *&v17[8], *&v17[16], "result == 0", *v18, *&v18[8], *&v18[16], *&v18[24]);
  }

  v11 = sub_1000118BC(v10);
  if (sub_1000025E8(v11))
  {
    sub_10000258C();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x12u);
  }
}

void sub_100019320(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }
}

void sub_1000193F0(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }
}

void sub_100019548(uint64_t *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    v6[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v6[13] + 2) = 482;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6);
  }

  v4 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryService"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create NSXPCListener for service: %@", 0, "[DeviceRecoveryService startService]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x1E2u);
}

void sub_100019688(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1000118BC(a1);
  if (sub_10000ED4C(v7))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17, v18, v19, v20, v21, v22);
  }

  *a2 = [NSString stringWithFormat:@"Failed to create mount point for system data volume: %@", a1];
  v8 = sub_10000ED84();
  *a3 = sub_100002034(v8, v9, v10, v11, v12, v13, v14, 0x209u);
}

void sub_1000197BC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1000118BC(a1);
  if (sub_10000ED4C(v7))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17, v18, v19, v20, v21, v22);
  }

  *a2 = [NSString stringWithFormat:@"Failed to mount system data volume: %@", a1];
  v8 = sub_10000ED84();
  *a3 = sub_100002034(v8, v9, v10, v11, v12, v13, v14, 0x20Cu);
}

void sub_1000198F0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

void sub_1000199BC()
{
  sub_10000EC14();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_100019A80()
{
  sub_10000ED78();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v11 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, v11);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_100019B54()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100019BEC()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

uint64_t sub_100019C84()
{
  sub_10000ECEC();
  v2 = v1;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v7[13] + 2) = 620;
    sub_1000033D8(&_mh_execute_header, v2, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  v3 = [NSString stringWithFormat:@"no state file: %@", @"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];
  *v0 = v3;
  v4 = sub_100002034(@"DeviceRecoveryError", 1, v3, @"no state file: %@", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x26Cu);
  return sub_10000EC08(v4);
}

uint64_t sub_100019DBC()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v13 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v7, v8, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v9, v10, v11, v12, v13);
  }

  v4 = [NSString stringWithFormat:@"OS Recovery Phase not supported in DRE"];
  *v0 = v4;
  v5 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"OS Recovery Phase not supported in DRE", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x269u);
  return sub_10000EC08(v5);
}

void sub_100019FE0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

BOOL sub_10001A05C()
{
  sub_10000ED78();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v21 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17, v18, v19, v20, v21);
  }

  v5 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC2C();
  v13 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0x2CAu);
  *v1 = v13;

  return v13 == 0;
}

void sub_10001A1A0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A21C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A298()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A314()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001A3C0(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v7 = sub_1000118BC(a1);
  if (sub_10000ED4C(v7))
  {
    v9[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v10 = "";
    sub_100003398();
    v11 = 780;
    sub_1000033D8(&_mh_execute_header, v3, v8, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v9);
  }

  *a3 = a1;
  *a2 = v3;
}

void sub_10001A4A0()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001A54C()
{
  sub_10000ECEC();
  [v0 processIdentifier];
  v1 = sub_10000EDB8();
  sub_10000EB10();
  sub_10000EB90();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10001A5F8()
{
  sub_10000ED78();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v11 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, v11);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_10001A6C8()
{
  sub_10000ED78();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v11 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, v11);
  }

  *v1 = 0;
  *v0 = v2;
}

void sub_10001A798(uint64_t *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000258C();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x3Au);
  }

  v4 = [NSString stringWithFormat:@"Unable to create brain service interface"];
  *a1 = sub_100002034(@"DeviceRecoveryError", 1, v4, @"Unable to create brain service interface", 0, "[DeviceRecoveryService connectToRecoveryBrain]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x3A0u);
}

void sub_10001A8C4()
{
  sub_10000ECEC();
  v4 = v3;
  v5 = sub_1000118BC(v3);
  if (sub_10000ED4C(v5))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v8, v9, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v10, v11, v12, v13, v14, v15);
  }

  v6 = [v4 brainServiceName];
  *v1 = v6;
  v7 = [NSString stringWithFormat:@"Unable to create brain service connection: %@", v6];
  *v0 = sub_100002034(@"DeviceRecoveryError", 3, v7, @"Unable to create brain service connection: %@", 0, "[DeviceRecoveryService connectToRecoveryBrain]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x39Bu);
}

void sub_10001AA0C(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AAD4(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AB9C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001AC18()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001AC94(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

void sub_10001AD5C(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001AE24(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

uint64_t sub_10001AEEC()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"unable to get brain service object"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x4B5u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001B000()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"trying to talk to brain without a connection"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x4AAu);
  return sub_10000EC08(v11);
}

void sub_10001B114(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B1DC()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001B258()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B304()
{
  sub_10000EB10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10001B38C()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B438()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001B4B8()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B564()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001B5E4()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B690()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001B73C()
{
  sub_10000EC14();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B800(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001B8C8()
{
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001B95C()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

uint64_t sub_10001BA08()
{
  sub_10000ECEC();
  v2 = v1;
  v3 = sub_1000118BC(v1);
  if (sub_10000ED4C(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, v20, v21);
  }

  v4 = [NSString stringWithFormat:@"DRESetNVRAMProperty() call failed: %d", v2];
  sub_10000EC20(v4);
  v5 = sub_10000ED98();
  v12 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0x52Bu);
  return sub_10000EC08(v12);
}

uint64_t sub_10001BB24()
{
  sub_10000ECEC();
  v2 = v1;
  v3 = sub_1000118BC(v1);
  if (sub_10000ED4C(v3))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_10000EC74(&_mh_execute_header, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, v20, v21);
  }

  v4 = [NSString stringWithFormat:@"reboot3() call failed: %d", v2];
  sub_10000EC20(v4);
  v5 = sub_10000ED98();
  v12 = sub_100002034(v5, v6, v7, v8, v9, v10, v11, 0x542u);
  return sub_10000EC08(v12);
}

uint64_t sub_10001BC40()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no current connection/client"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x51Du);
  return sub_10000EC08(v11);
}

void sub_10001BD5C(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1000118BC(a1);
  if (sub_10000ECA0(v5))
  {
    v8[0] = 136447490;
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    *(&v8[13] + 2) = 1390;
    sub_1000033D8(&_mh_execute_header, v2, v7, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v8);
  }

  v6 = [NSString stringWithFormat:@"failed to set NVRAM in IORegistry: %d", a1];
  *a2 = sub_100002034(@"DeviceRecoveryError", 1, v6, @"failed to set NVRAM in IORegistry: %d", 0, "[DeviceRecoveryService disableRecoveryAutoBoot:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x56Eu);
}

uint64_t sub_10001BE98()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v3);
  v4 = sub_10000EBC8();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x5B7u);
  return sub_10000EC08(v11);
}

void sub_10001BFAC()
{
  sub_1000025D0();
  sub_1000033CC();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_10001C058(void *a1)
{
  [a1 doubleValue];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

uint64_t sub_10001C0F0()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"data volume already mounted"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x5B1u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001C204()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"user already authenticated"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x5B0u);
  return sub_10000EC08(v11);
}

void sub_10001C318(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001C3E0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_10001C45C()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x6C8u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001C578()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x6C9u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001C694()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v3);
  v4 = sub_10000EBC8();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x6D0u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001C7A8()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"network already reported as available"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x6CAu);
  return sub_10000EC08(v11);
}

void sub_10001C8BC(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

void sub_10001C984()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_10001CA00()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x718u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001CB1C()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x719u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001CC38()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x71Au);
  return sub_10000EC08(v11);
}

uint64_t sub_10001CD54()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v3);
  v4 = sub_10000EBC8();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x721u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001CF68()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"recovery brain already loaded"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x71Bu);
  return sub_10000EC08(v11);
}

void sub_10001D07C(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001D144()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

id sub_10001D1C0(void *a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v7[0] = 136447490;
    sub_10000ED1C();
    v8 = "[issues1 isKindOfClass:[NSArray class]]";
    v9 = v4;
    v10 = "";
    sub_10000ED64();
    v11 = 1907;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  return a1;
}

void sub_10001D2A4()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v12 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB70(&_mh_execute_header, v6, v7, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v8, v9, v10, v11, v12);
  }

  v5 = v1;
}

uint64_t sub_10001D378()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C3u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001D494()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C4u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001D5B0()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C5u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001D6CC()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"recovery brain not loaded"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C6u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001D7E8()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v3);
  v4 = sub_10000EBC8();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7CEu);
  return sub_10000EC08(v11);
}

uint64_t sub_10001D8FC()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7D9u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001DA10()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"issues scan already complete"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C8u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001DB24()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no connection to recovery brain"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x7C7u);
  return sub_10000EC08(v11);
}

void sub_10001DC38(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000EB90();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

void sub_10001DD00()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DD7C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DDF8()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DE74()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DEF0()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001DF6C()
{
  sub_10000EDAC();
  object_getClassName(v0);
  sub_10000EB4C();
  sub_10000EC60();
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

id sub_10001E000(void *a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v7[0] = 136447490;
    sub_10000ED1C();
    v8 = "processedResults != nil";
    v9 = v4;
    v10 = "";
    sub_10000ED64();
    v11 = 2105;
    sub_1000033D8(&_mh_execute_header, v1, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  return a1;
}

uint64_t sub_10001E0E4()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"user not authenticated"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x868u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E200()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"data volume not mounted"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x869u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E31C()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"network not reported as available"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Au);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E438()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"recovery brain not loaded"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Bu);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E554()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"issues scan not complete"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Cu);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E670()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no recoverable issues found"];
  sub_10000EC20(v3);
  sub_10000EC2C();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Du);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E78C()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"Operation not allowed - another client is in control of recovery"];
  sub_10000EC20(v3);
  v4 = sub_10000EBC8();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x875u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E8A0()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no connection from daemon to brain"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x880u);
  return sub_10000EC08(v11);
}

uint64_t sub_10001E9B4()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"recovery already"];
  sub_10000EC20(v3);
  v4 = sub_10000EBA0();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Fu);
  return sub_10000EC08(v11);
}

uint64_t sub_10001EAC8()
{
  sub_10000EC14();
  v2 = sub_1000118BC(v1);
  if (sub_10000ECA0(v2))
  {
    v19 = 136447490;
    sub_10000EAFC();
    sub_10000EB3C();
    sub_10000EAE4();
    sub_10000EB70(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19);
  }

  v3 = [NSString stringWithFormat:@"no connection to recovery brain"];
  sub_10000EC20(v3);
  v4 = sub_10000EBB4();
  v11 = sub_100002034(v4, v5, v6, v7, v8, v9, v10, 0x86Eu);
  return sub_10000EC08(v11);
}

void sub_10001EBDC(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_10000258C();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }

  sub_10000EC94();
}

void sub_10001ECA4()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001ED20()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EDA4()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EE20()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EE9C()
{
  sub_10000EB10();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001EF18()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F09C()
{
  sub_10000ECF8();
  *v1 = 136446722;
  sub_10000ECB8(v2, v3, v1);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to download DeviceRecoveryBrain catalog: %{public}@ : %{public}@", v4, 0x20u);
}

void sub_10001F0F8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "[DeviceRecoveryService downloadRecoveryBrain]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to query for DeviceRecoveryBrain: (%{public}@)", buf, 0x16u);
}

void sub_10001F1E4()
{
  sub_10000ECF8();
  *v1 = 136446722;
  sub_10000ECB8(v2, v3, v1);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: [DownloadRecoveryBrain]: Failed to download DeviceRecoveryBrain asset: %{public}@ : %{public}@", v4, 0x20u);
}

void sub_10001F340()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001F3C0()
{
  sub_10000EB10();
  sub_10000ED10();
  sub_10000EBDC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001F440()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F550()
{
  sub_10000EC38();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001F5D4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 136446722;
  v8 = "[DRAnalyticsEvent setEventPayloadEntry:value:]";
  v9 = 2114;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}s: Event payload data %{public}@ is unsupported type %{public}@. Supported Types: NSString, NSNumber, NSData, NSDate, NSError", &v7, 0x20u);
}

void sub_10001F69C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[DRAnalyticsEvent _queue_setEventPayloadEntry:value:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Tried to set payload entry with missing key or value", &v1, 0xCu);
}

void sub_10001F720(os_log_t log)
{
  v1 = 136446210;
  v2 = "[DRAnalyticsEvent _queue_setEventPayloadEntryToNull:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Tried to set null payload entry with missing key", &v1, 0xCu);
}

void sub_10001F7A4(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "DROverrideDescription";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unknown override name: %{public}@", &v2, 0x16u);
}

void sub_10001F830(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001F8F0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001F9B0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FA70(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FB30(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FBF0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FCB0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FD70(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FE30(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FEF0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_10001FFB0(uint64_t a1)
{
  v2 = sub_1000118BC(a1);
  if (sub_10000ED34(v2))
  {
    v9 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_1000033AC(&_mh_execute_header, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }
}

void sub_100020070()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xDFu);
}

void sub_100020198()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xDDu);
}

void sub_1000202C0()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xD1u);
}

void sub_1000203E8()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    v15[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v15[13] + 2) = 216;
    sub_100010284(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"RecoveryResult override has an invalid value: %d (must be between %d and %d)", v1, 0, 4];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xD8u);
}

void sub_100020514()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xC7u);
}

void sub_10002063C()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v15 = 136447490;
    v16 = "DRValidateOverride";
    v17 = 2082;
    v18 = "DRValidateOverride";
    v19 = 2082;
    v20 = "((issuesScanResultVal == DROverrideIssuesScanResultNoOverride) || (issuesScanResultVal == DROverrideIssuesScanResultForceFailure) || (issuesScanResultVal == DROverrideIssuesScanResultNoResults) || (issuesScanResultVal == DROverrideIssuesScanResultRequireUserApproval))";
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Common/DeviceRecoveryOverrides.m";
    v25 = 1026;
    v26 = 205;
    sub_100010284(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v15);
  }

  sub_1000102CC();
  v7 = [v6 stringWithFormat:@"IssuesScanResult override has an invalid value: %d (must be %d, %d, %d or %d)"];
  v8 = sub_100010220();
  *v0 = sub_100002034(v8, v9, v10, v11, v12, v13, v14, 0xCDu);
}

void sub_10002078C()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xBFu);
}

void sub_1000208B4()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v15[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v15[13] + 2) = 195;
    sub_100010284(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  sub_1000102BC();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xC3u);
}

void sub_1000209D8()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xB7u);
}

void sub_100020B00()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v15[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v15[13] + 2) = 187;
    sub_100010284(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  sub_1000102BC();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xBBu);
}

void sub_100020C24()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xAFu);
}

void sub_100020D4C()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v15[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v15[13] + 2) = 179;
    sub_100010284(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  sub_1000102BC();
  v5 = [v4 stringWithFormat:@"UserAuthResult override has an invalid value: %d (must be %d or %d)"];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xB3u);
}

void sub_100020E70()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"%@", v1];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xABu);
}

void sub_100020F90()
{
  sub_10000EC14();
  v4 = sub_1000118BC(v3);
  if (sub_10000ECA0(v4))
  {
    sub_10000EB5C();
    sub_10000EBEC();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v21);
  }

  ClassName = object_getClassName(v1);
  v5 = [sub_1000102B0() stringWithFormat:ClassName];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xA0u);
}

void sub_1000210B8()
{
  sub_10000EC14();
  v3 = sub_1000118BC(v2);
  if (sub_10000ECA0(v3))
  {
    v15[0] = 136447490;
    sub_100010250();
    sub_1000102A0();
    sub_100010238();
    *(&v15[13] + 2) = 165;
    sub_100010284(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  sub_1000102CC();
  v5 = [v4 stringWithFormat:@"BrainType override has an invalid value: %d (must be %d, %d or %d)"];
  v6 = sub_100010220();
  *v0 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0xA5u);
}

void sub_1000211DC()
{
  v2[0] = 136447490;
  sub_1000025D0();
  v3 = "node != IO_OBJECT_NULL";
  v4 = v0;
  v5 = "";
  sub_100003398();
  v6 = 22;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2, 0x3Au);
}

void sub_100021290(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000118BC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB5C();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch property for key: %@", a1];
  v6 = sub_100010994();
  *a2 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0x35u);
}

void sub_1000213C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000118BC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB5C();
    sub_10000EB24();
    sub_100010264(&_mh_execute_header, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15, v16, v17, v18, v19, v20);
  }

  v5 = [NSString stringWithFormat:@"unable to fetch io-reg entry for %s", a1];
  v6 = sub_100010994();
  *a2 = sub_100002034(v6, v7, v8, v9, v10, v11, v12, 0x2Fu);
}

void sub_1000214F8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    v4 = "nvramService != IO_OBJECT_NULL";
    v5 = v2;
    v6 = "";
    sub_100003398();
    v7 = 122;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, 0x3Au);
  }
}

void sub_1000215E0(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    v11 = [a1 description];
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v12, v13, v14, v15, v16, 0x20u);
  }
}

void sub_10002171C(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    object_getClassName(a1);
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x20u);
  }
}

void sub_100021850(void *a1)
{
  v6 = [a1 DREStringFromEntryReason:0];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_100021918(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    [a1 length];
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x20u);
  }
}

void sub_100021A44()
{
  sub_1000025D0();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_100021AF4(void *a1)
{
  object_getClassName(a1);
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100021B8C()
{
  sub_1000025D0();
  sub_100003398();
  sub_10000EBFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

void sub_100021C3C(void *a1)
{
  [a1 unsignedIntValue];
  sub_10000EB90();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021CD4(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    sub_10000259C();
    sub_1000118B0();
    sub_10001188C();
    sub_10000258C();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x3Au);
  }

  v5 = sub_1000118BC(v4);
  if (sub_1000025E8(v5))
  {
    sub_1000118A0();
    sub_10000258C();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  *a1 = v1;
}

void sub_100021E98(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000118B0();
    sub_10001188C();
    sub_10000EB90();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  v3 = sub_1000118BC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000EB90();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
  }
}

void sub_100022074(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    v10 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, v10);
  }
}

void sub_100022140(void *a1)
{
  v3 = sub_1000118BC(a1);
  if (sub_1000025E8(v3))
  {
    *v12 = 136447490;
    *&v12[4] = "[DeviceRecoveryOverrideClient init]";
    *&v12[12] = 2082;
    *&v12[14] = "[DeviceRecoveryOverrideClient init]";
    *&v12[22] = 2082;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2082;
    *&v13[12] = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecovery_Framework/DeviceRecoveryOverrideClient.m";
    *&v13[20] = 1026;
    *&v13[22] = 46;
    sub_100012BC0(&_mh_execute_header, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, *v12, *&v12[16], "self.serviceConnection != nil", *v13, *&v13[16]);
  }

  v11 = sub_1000118BC(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v12 = 136446466;
    *&v12[4] = "[DeviceRecoveryOverrideClient init]";
    *&v12[12] = 2114;
    *&v12[14] = @"com.apple.DeviceRecoveryOverrideService";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s: Couldn't connect to service: %{public}@", v12, 0x16u);
  }
}

void sub_10002229C()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  sub_10000EC94();
}

void sub_100022350()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  sub_10000EC94();
}

void sub_100022404()
{
  v6 = 136446466;
  sub_10000EB10();
  sub_100012BE0(&_mh_execute_header, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100022478(NSObject *a1)
{
  if (sub_100012BFC(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v4 = "";
    sub_100003398();
    v5 = 121;
    sub_1000033D8(&_mh_execute_header, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

void sub_100022534()
{
  v3[0] = 136446722;
  sub_10000EB10();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error setting override: %{public}@ -> %{public}@", v3, 0x20u);
}

void sub_1000225C0(NSObject *a1)
{
  if (sub_100012BFC(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v4 = "";
    sub_100003398();
    v5 = 116;
    sub_1000033D8(&_mh_execute_header, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

void sub_10002267C()
{
  v6 = 136446466;
  sub_10000EB10();
  sub_100012BE0(&_mh_execute_header, v0, v1, "%{public}s: Error removing override: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000226F0(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v8 = "";
    sub_100003398();
    v9 = 110;
    sub_1000033D8(&_mh_execute_header, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_1000227CC(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    v8 = "";
    sub_100003398();
    v9 = 105;
    sub_1000033D8(&_mh_execute_header, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

void sub_1000228A8()
{
  v6 = 136446466;
  sub_10000EB10();
  sub_100012BE0(&_mh_execute_header, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

void sub_10002291C()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  sub_10000EC94();
}

void sub_1000229D0()
{
  sub_10000EC14();
  if (sub_100012BFC(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  sub_10000EC94();
}

void sub_100022A84()
{
  v6 = 136446466;
  sub_10000EB10();
  sub_100012BE0(&_mh_execute_header, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100022AF8(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    v8 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }

  sub_10000EC94();
}

void sub_100022BB8(uint64_t a1)
{
  v1 = sub_1000118BC(a1);
  if (sub_1000025E8(v1))
  {
    v8 = 136447490;
    sub_1000025D0();
    sub_1000033CC();
    sub_100003398();
    sub_100012BC0(&_mh_execute_header, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }

  sub_10000EC94();
}

void sub_100022C78()
{
  v6 = 136446466;
  sub_10000EB10();
  sub_100012BE0(&_mh_execute_header, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

char *copy_tagged_apfs_system_snapshot_name(const void *a1, CFErrorRef *a2)
{
  bzero(buffer, 0x100uLL);
  if (a1)
  {
    v4 = tickethelper_copy_hash_data(a1, a2);
    if (!v4)
    {
      sub_100012C38("%s: could not copy hash from data", v5, v6, v7, v8, v9, v10, v11, "copy_tagged_apfs_system_snapshot_name");
      return 0;
    }
  }

  else
  {
    v4 = tickethelper_copy_root_hash(a2);
    if (!v4)
    {
      sub_100012C38("%s: could not copy root ticket hash from device tree", v12, v13, v14, v15, v16, v17, v18, "copy_tagged_apfs_system_snapshot_name");
      return 0;
    }
  }

  v19 = v4;
  v20 = tickethelper_copy_hash_hex_string(v4, a2);
  CFRelease(v19);
  if (!v20)
  {
    return 0;
  }

  v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", "com.apple.os.update-", v20);
  if (!v21)
  {
    sub_100012C38("%s: could not create snapshot name from ap ticket", v22, v23, v24, v25, v26, v27, v28, "copy_tagged_apfs_system_snapshot_name");
    if (a2)
    {
      *a2 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 12, 0);
    }

    CFRelease(v20);
    return 0;
  }

  v29 = v21;
  if (CFStringGetCString(v21, buffer, 256, 0x8000100u))
  {
    v37 = strdup(buffer);
  }

  else
  {
    sub_100012C38("%s: could not convert snapshot name to c string", v30, v31, v32, v33, v34, v35, v36, "copy_tagged_apfs_system_snapshot_name");
    v37 = 0;
    if (a2)
    {
      *a2 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, 34, 0);
    }
  }

  CFRelease(v20);
  CFRelease(v29);
  return v37;
}

BOOL create_tagged_apfs_system_snapshot(const char *a1, const void *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_100012C38("%s: mountPath is required", a2, a3, a4, a5, a6, a7, a8, "create_tagged_apfs_system_snapshot");
    if (a3)
    {
      v18 = kCFAllocatorDefault;
      v19 = kCFErrorDomainPOSIX;
      v20 = 22;
      goto LABEL_7;
    }

    return 0;
  }

  if (!is_mountpoint_apfs(a1))
  {
    sub_100012C38("media is not apfs managed: unsupported operation", v11, v12, v13, v14, v15, v16, v17, v55);
    if (a3)
    {
      v18 = kCFAllocatorDefault;
      v19 = kCFErrorDomainPOSIX;
      v20 = 45;
LABEL_7:
      v21 = 0;
      *a3 = CFErrorCreate(v18, v19, v20, 0);
      return v21;
    }

    return 0;
  }

  v22 = copy_tagged_apfs_system_snapshot_name(a2, a3);
  if (!v22)
  {
    return 0;
  }

  v29 = v22;
  v30 = delete_apfs_system_snapshot(a1, v22, v23, v24, v25, v26, v27, v28);
  if (v30 != 2)
  {
    if (v30)
    {
      strerror(v30);
      sub_100012C38("%s: unexpected error %d deleting snapshot %s: %s", v39, v40, v41, v42, v43, v44, v45, "create_tagged_apfs_system_snapshot");
    }

    else
    {
      sub_100012C38("%s: existing snapshot %s was deleted", v31, v32, v33, v34, v35, v36, v37, "create_tagged_apfs_system_snapshot");
    }
  }

  apfs_system_snapshot = create_apfs_system_snapshot(a1, v29, v32, v33, v34, v35, v36, v37);
  v21 = apfs_system_snapshot == 0;
  if (apfs_system_snapshot)
  {
    v54 = apfs_system_snapshot;
    sub_100012C38("%s: tagging system volume snapshot %s failed", v47, v48, v49, v50, v51, v52, v53, "create_tagged_apfs_system_snapshot");
    if (a3)
    {
      *a3 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, v54, 0);
    }
  }

  free(v29);
  return v21;
}