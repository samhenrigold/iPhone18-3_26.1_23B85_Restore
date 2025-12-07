uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(1, 0, 0, 0, a5, a6, 0, a8);
}

void WiFiCloudSyncEngineLoggerLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:&a9];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %s: %@", a2, a3, v12];
  LogCallbackFunction = WiFiCloudSyncEngineGetLogCallbackFunction(a1);
  if (LogCallbackFunction)
  {
    LogCallbackFunction(v13);
  }

  else
  {
    NSLog(&cfstr_NoClientLogger.isa, "Oct 22 2025", "21:20:44", v13);
  }
}

void *WiFiCloudSyncEngineCreate(uint64_t a1)
{
  if (!__wiFiCloudEngineTypeID)
  {
    pthread_once(&__wiFiCloudEngineTypeInit, __WiFiCloudSyncEngineRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v2 = Instance;
    Instance[16] = 0u;
    Instance[17] = 0u;
    Instance[14] = 0u;
    Instance[15] = 0u;
    Instance[12] = 0u;
    Instance[13] = 0u;
    Instance[10] = 0u;
    Instance[11] = 0u;
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v2[18] = Mutable;
    if (!Mutable || (v5 = CFArrayCreateMutable(v3, 0, MEMORY[0x277CBF128]), (v2[30] = v5) == 0) || (v6 = [[WiFiCloudSyncEngineCore alloc] initWithEncryptedKVS:0], (v2[5] = v6) == 0) || (v7 = [[WiFiCloudSyncEngineCore alloc] initWithEncryptedKVS:1], (v2[6] = v7) == 0) || (v8 = dispatch_queue_create("com.apple.wifi.wcse.serialQ.circleChanges", 0), (v2[27] = v8) == 0) || (v9 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, v8), (v2[28] = v9) == 0) || (v10 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v11 = dispatch_queue_create("com.apple.wifi.wcse.kvs_events", v10), (v2[34] = v11) == 0) || (v12 = dispatch_semaphore_create(4), (v2[35] = v12) == 0))
    {
      CFRelease(v2);
      return 0;
    }
  }

  else
  {
    WiFiCloudSyncEngineCreate_cold_1();
    return v14;
  }

  return v2;
}

void WiFiCloudSyncEngineScheduleWithQueue(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "WiFiCloudSyncEngineScheduleWithQueue";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 735;
      LODWORD(v4) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Scheduled WiFiCloudSyncEngine on the client queue", &v7, v4, v5);
    }

    __WiFiCloudSyncEngineSetupKeychainChangedNotification(a1);
    v3 = *(a1 + 224);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __WiFiCloudSyncEngineScheduleWithQueue_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_resume(*(a1 + 224));
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(a1);
  }

  else
  {
    WiFiCloudSyncEngineScheduleWithQueue_cold_1();
  }
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  if (!a1)
  {
    return __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_3();
  }

  if (!*(a1 + 16) || !*(a1 + 24))
  {
    if (!*(a1 + 32))
    {
      return __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_2();
    }

    goto LABEL_12;
  }

  v2 = *(a1 + 200);
  if (v2)
  {
LABEL_8:
    if (!*(a1 + 208))
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v2, 0);
      *(a1 + 208) = RunLoopSource;
      if (!RunLoopSource)
      {
        return __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_1();
      }
    }

LABEL_12:
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      notify_port = 136315650;
      v8 = "__WiFiCloudSyncEngineSetupKeychainChangedNotification";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 978;
      LODWORD(v5) = 28;
      return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)set...but not started", &notify_port, v5, LODWORD(context.version));
    }

    return result;
  }

  notify_port = 0;
  result = notify_register_mach_port(kKeychainChangedNotificationName, &notify_port, 0, (a1 + 192));
  if (!result)
  {
    result = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], notify_port, __WiFiCloudSyncEngineKeychainChangedNotificationCallback, &context, 0);
    *(a1 + 200) = result;
    if (result)
    {
      v2 = result;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineScheduleWithQueue_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    data = dispatch_source_get_data(*(*(a1 + 32) + 224));
    v5 = 136315906;
    v6 = "WiFiCloudSyncEngineScheduleWithQueue_block_invoke";
    v7 = 2080;
    v8 = "WiFiCloudSyncEngine.m";
    v9 = 1024;
    v10 = 741;
    v11 = 2048;
    v12 = data;
    v4 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Processing %lu circle changed notifications", &v5, v4);
  }

  [*(*(a1 + 32) + 40) queryKeychainSyncState];
  return [*(*(a1 + 32) + 48) queryKeychainSyncState];
}

void __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = a1;
  if (!a1)
  {
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_3();
    return;
  }

  if (*(a1 + 16) && *(a1 + 24))
  {
    v2 = *(a1 + 176);
    if (!v2)
    {
      notify_port = 0;
      if (notify_register_mach_port(*MEMORY[0x277CDBDA0], &notify_port, 0, (a1 + 168)))
      {
        return;
      }

      v3 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], notify_port, __WiFiCloudSyncEngineKeychainSyncStateChanged, &context, 0);
      *(a1 + 176) = v3;
      if (!v3)
      {
        return;
      }

      v2 = v3;
    }

    RunLoopSource = *(a1 + 184);
    if (!RunLoopSource)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v2, 0);
      *(a1 + 184) = RunLoopSource;
      if (!RunLoopSource)
      {
        __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_1();
        return;
      }
    }

    CFRunLoopAddSource(*(a1 + 16), RunLoopSource, *(a1 + 24));
  }

  else if (!*(a1 + 32))
  {
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_2();
    return;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *MEMORY[0x277CDBDA0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ____WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_block_invoke;
    handler[3] = &__block_descriptor_40_e8_v12__0i8l;
    handler[4] = a1;
    notify_register_dispatch(v6, (a1 + 168), v5, handler);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    notify_port = 136315650;
    v12 = "__WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification";
    v13 = 2080;
    v14 = "WiFiCloudSyncEngine.m";
    v15 = 1024;
    v16 = 939;
    LODWORD(v7) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)set...", &notify_port, v7, v8);
  }

  WiFiCloudSyncEngineCheckKeychainSyncState(a1);
}

uint64_t WiFiCloudSyncEngineUnScheduleWithQueue(uint64_t result, const void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return WiFiCloudSyncEngineUnScheduleWithQueue_cold_1();
  }

  if (a2)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = CFEqual(result, a2);
      if (result)
      {
        WiFiCloudSyncEngineStopEngine(v2);
        v3 = *(v2 + 168);
        if (v3)
        {
          notify_cancel(v3);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v5 = 136315650;
          v6 = "WiFiCloudSyncEngineUnScheduleWithQueue";
          v7 = 2080;
          v8 = "WiFiCloudSyncEngine.m";
          v9 = 1024;
          v10 = 772;
          v4 = 28;
          return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Un-scheduled WiFiCloudSyncEngine on the client queue", &v5, v4);
        }
      }
    }
  }

  return result;
}

void WiFiCloudSyncEngineStopEngine(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 56);
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v3)
      {
        v7 = 136315650;
        v8 = "WiFiCloudSyncEngineStopEngine";
        v9 = 2080;
        v10 = "WiFiCloudSyncEngine.m";
        v11 = 1024;
        v12 = 1374;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)...", &v7, 28);
      }

      *(a1 + 56) = 0;
      [*(a1 + 40) enableIcloudSyncing:0 ForBundleId:0];
      [*(a1 + 48) enableIcloudSyncing:0 ForBundleId:0];
      v4 = *(a1 + 144);
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v5)
        {
          v7 = 136315650;
          v8 = "__WiFiCloudSyncEngineFlushWaitingForPasswordList";
          v9 = 2080;
          v10 = "WiFiCloudSyncEngine.m";
          v11 = 1024;
          v12 = 2802;
          LODWORD(v6) = 28;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)stop keychain changed notifications and empty the waiting list", &v7, v6);
        }

        __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
        CFArrayRemoveAllValues(*(a1 + 144));
      }

      else
      {
        WiFiCloudSyncEngineStopEngine_cold_1(v5);
      }
    }

    else if (v3)
    {
      v7 = 136315650;
      v8 = "WiFiCloudSyncEngineStopEngine";
      v9 = 2080;
      v10 = "WiFiCloudSyncEngine.m";
      v11 = 1024;
      v12 = 1370;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)was not running...", &v7, 28);
    }
  }

  else
  {
    WiFiCloudSyncEngineStopEngine_cold_2();
  }
}

void WiFiCloudSyncEngineScheduleWithRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "WiFiCloudSyncEngineScheduleWithRunLoop";
      v10 = 2080;
      v11 = "WiFiCloudSyncEngine.m";
      v12 = 1024;
      v13 = 789;
      LODWORD(v5) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Scheduled WiFiCloudSyncEngine on the client runLoop", &v8, v5, v6);
    }

    __WiFiCloudSyncEngineSetupKeychainChangedNotification(a1);
    v4 = *(a1 + 224);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(a1 + 224));
    __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification(a1);
  }

  else
  {
    WiFiCloudSyncEngineScheduleWithRunLoop_cold_1();
  }
}

uint64_t __WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    data = dispatch_source_get_data(*(*(a1 + 32) + 224));
    v5 = 136315906;
    v6 = "WiFiCloudSyncEngineScheduleWithRunLoop_block_invoke";
    v7 = 2080;
    v8 = "WiFiCloudSyncEngine.m";
    v9 = 1024;
    v10 = 795;
    v11 = 2048;
    v12 = data;
    v4 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Processing %lu circle changed notifications", &v5, v4);
  }

  [*(*(a1 + 32) + 40) queryKeychainSyncState];
  return [*(*(a1 + 32) + 48) queryKeychainSyncState];
}

uint64_t WiFiCloudSyncEngineUnScheduleWithRunLoop(uint64_t result, void *cf2, const __CFString *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return WiFiCloudSyncEngineUnScheduleWithRunLoop_cold_1();
  }

  if (cf2)
  {
    v4 = result;
    result = *(result + 16);
    if (result)
    {
      if (a3)
      {
        if (*(v4 + 24))
        {
          result = CFEqual(result, cf2);
          if (result)
          {
            result = CFEqual(*(v4 + 24), a3);
            if (result)
            {
              WiFiCloudSyncEngineStopEngine(v4);
              CFRunLoopRemoveSource(cf2, *(v4 + 184), a3);
              result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (result)
              {
                v7 = 136315650;
                v8 = "WiFiCloudSyncEngineUnScheduleWithRunLoop";
                v9 = 2080;
                v10 = "WiFiCloudSyncEngine.m";
                v11 = 1024;
                v12 = 824;
                v6 = 28;
                return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Un-scheduled WiFiCloudSyncEngine on the client runLoop", &v7, v6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_10();
  }

  if (!a2)
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_9();
  }

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!a4)
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_8(v8);
  }

  if (v8)
  {
    v9 = *a2;
    v16 = "WiFiCloudSyncEngineRegisterCallbacks";
    v17 = 2080;
    v15 = 136316162;
    v18 = "WiFiCloudSyncEngine.m";
    v19 = 1024;
    v20 = 839;
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = a4;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)WiFiCloudSyncEngineCallbacks version - %ld, bundle id - %@", &v15, 48);
  }

  if (!a2[5])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_7();
  }

  if (!a2[1])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_6();
  }

  if (!a2[3])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_5();
  }

  if (!a2[6])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_4();
  }

  if (!a2[2])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_3();
  }

  if (!a2[7])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_2();
  }

  if (!a2[4])
  {
    return WiFiCloudSyncEngineRegisterCallbacks_cold_1();
  }

  *(a1 + 136) = a3;
  *(a1 + 64) = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(a1 + 128) = a2[8];
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  *(a1 + 80) = v10;

  *(a1 + 160) = [a4 copy];
  [*(a1 + 40) registerCallback:__WiFiCloudSyncEngineCloudEventCallback context:a1];
  [*(a1 + 48) registerCallback:__WiFiCloudSyncEngineCloudEventCallback context:a1];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v15 = 136315650;
    v16 = "WiFiCloudSyncEngineRegisterCallbacks";
    v17 = 2080;
    v18 = "WiFiCloudSyncEngine.m";
    v19 = 1024;
    v20 = 858;
    LODWORD(v14) = 28;
    return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)done !!!", &v15, v14);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_10();
  }

  if (!a2)
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_9();
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!a4)
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_8(v10);
  }

  if (v10)
  {
    v11 = *a2;
    v18 = "WiFiCloudSyncEngineRegisterCallbacksWithQueue";
    v19 = 2080;
    v17 = 136316162;
    v20 = "WiFiCloudSyncEngine.m";
    v21 = 1024;
    v22 = 873;
    v23 = 2048;
    v24 = v11;
    v25 = 2112;
    v26 = a4;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)WiFiCloudSyncEngineCallbacks version - %ld, bundle id - %@", &v17, 48);
  }

  if (!a2[5])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_7();
  }

  if (!a2[1])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_6();
  }

  if (!a2[3])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_5();
  }

  if (!a2[6])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_4();
  }

  if (!a2[2])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_3();
  }

  if (!a2[7])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_2();
  }

  if (!a2[4])
  {
    return WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_1();
  }

  *(a1 + 136) = a3;
  *(a1 + 64) = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  *(a1 + 128) = a2[8];
  *(a1 + 96) = v13;
  *(a1 + 112) = v14;
  *(a1 + 80) = v12;

  *(a1 + 160) = [a4 copy];
  [*(a1 + 40) registerCallback:__WiFiCloudSyncEngineCloudEventCallback queue:a5 context:a1];
  [*(a1 + 48) registerCallback:__WiFiCloudSyncEngineCloudEventCallback queue:a5 context:a1];
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v17 = 136315650;
    v18 = "WiFiCloudSyncEngineRegisterCallbacksWithQueue";
    v19 = 2080;
    v20 = "WiFiCloudSyncEngine.m";
    v21 = 1024;
    v22 = 892;
    LODWORD(v16) = 28;
    return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)done !!!", &v17, v16);
  }

  return result;
}

void WiFiCloudSyncEngineCheckKeychainSyncState(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v2)
    {
      v3 = 136315650;
      v4 = "WiFiCloudSyncEngineCheckKeychainSyncState";
      v5 = 2080;
      v6 = "WiFiCloudSyncEngine.m";
      v7 = 1024;
      v8 = 1029;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)dispatch KeychainSyncState query", &v3, 28);
    }

    dispatch_source_merge_data(*(a1 + 224), 1uLL);
  }

  else
  {
    WiFiCloudSyncEngineCheckKeychainSyncState_cold_1(v2);
  }
}

uint64_t __WiFiCloudSyncEngineIsNetworkSyncableFromCloud(void *a1, void *a2)
{
  if (![a1 isKVSEncrypted])
  {
    if (a2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [a2 objectForKey:@"minVersion"];
        if (v6 && [v6 integerValue] >= 3)
        {
          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_2();
        }

        else
        {
          v7 = [a2 objectForKey:@"NOT_SYNCABLE"];
          if (v7 && [v7 BOOLValue])
          {
            __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_3();
          }

          else
          {
            v8 = [a2 objectForKey:@"IS_NETWORK_EAP"];
            if (v8 && [v8 BOOLValue])
            {
              __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_4();
            }

            else
            {
              v9 = [a2 objectForKey:@"IS_NETWORK_CUSTOMIZED"];
              if (v9 && [v9 BOOLValue])
              {
                __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_5();
              }

              else
              {
                v10 = [a2 objectForKey:@"IS_NETWORK_CONFIGURED"];
                if (v10 && [v10 BOOLValue])
                {
                  __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_6();
                }

                else
                {
                  v11 = [a2 objectForKey:@"AP_MODE"];
                  if (v11 && [v11 intValue] != 2)
                  {
                    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_7();
                  }

                  else
                  {
                    v12 = [a2 objectForKey:@"IS_NETWORK_EXPIRABLE"];
                    if (v12 && [v12 BOOLValue])
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_8();
                    }

                    else
                    {
                      v13 = [a2 objectForKey:@"enabled"];
                      if (v13 && ([v13 BOOLValue] & 1) == 0)
                      {
                        __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_9();
                      }

                      else
                      {
                        v14 = [a2 objectForKey:@"IS_NETWORK_CARPLAY_ONLY"];
                        if (v14 && [v14 BOOLValue])
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_10();
                        }

                        else if (__WiFiCloudSyncEngineIsNetworkHidden(a1, a2))
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_13();
                        }

                        else if (__WiFiCloudSyncEngineGetNetworkSecurity(a1, a2))
                        {
                          v15 = [a2 objectForKey:@"IS_NETWORK_CAPTIVE"];
                          if (v15 && ![v15 BOOLValue])
                          {
                            return 1;
                          }

                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_11();
                        }

                        else
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_12();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_1();
      }
    }

    else
    {
      __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_14();
    }

    return v16;
  }

  if (!a2)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_17();
    return v16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_15();
    return v16;
  }

  v4 = [a2 objectForKey:@"minVersion"];
  if (v4 && [v4 integerValue] >= 3)
  {
    __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_16();
    return v16;
  }

  return __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(a1, a2);
}

void *__WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 104))
  {
    __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback_cold_1();
    return v50;
  }

  v6 = objc_autoreleasePoolPush();
  if (![a2 isKVSEncrypted])
  {
    v15 = (*(a1 + 104))(a3, *(a1 + 136));
    goto LABEL_41;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"SSID", @"SSID_STR"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"BSSID", @"BSSID"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isPSK", "BOOLValue"}];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isEAP", "BOOLValue"}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWEP", "BOOLValue"}];
  v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA", "BOOLValue"}];
  v12 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA2", "BOOLValue"}];
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isWPA3", "BOOLValue"}];
  if (!v9)
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"IS_NETWORK_EAP"];
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((v12 & v13) == 1)
    {
      v45 = @"IE_KEY_RSN_VERSION";
      v46 = @"IE_KEY_RSN_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E3750;
      v16 = &unk_2882E3930;
      v47 = @"IE_KEY_RSN_UCIPHERS";
      v48 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E3948;
LABEL_10:
      v52 = v16;
      v53 = v17;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v50;
      v20 = &v45;
LABEL_20:
      v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:4];
      v22 = @"RSN_IE";
      goto LABEL_21;
    }

    if (v13)
    {
      v45 = @"IE_KEY_RSN_VERSION";
      v46 = @"IE_KEY_RSN_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E3750;
      v47 = @"IE_KEY_RSN_UCIPHERS";
      v48 = @"IE_KEY_RSN_AUTHSELS";
      v52 = &unk_2882E3960;
      v53 = &unk_2882E3978;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v45 count:4];
      v22 = @"WPA3_RSN_IE";
LABEL_21:
      [v7 setObject:v21 forKeyedSubscript:v22];
      goto LABEL_22;
    }

    if ((v11 & v12) == 1)
    {
      v45 = @"IE_KEY_WPA_VERSION";
      v46 = @"IE_KEY_WPA_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E37B0;
      v47 = @"IE_KEY_WPA_UCIPHERS";
      v48 = @"IE_KEY_WPA_AUTHSELS";
      v52 = &unk_2882E3990;
      v53 = &unk_2882E39A8;
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v50, &v45, 4), @"WPA_IE"}];
      v37 = @"IE_KEY_RSN_VERSION";
      v38 = @"IE_KEY_RSN_MCIPHER";
      v41 = &unk_2882E3738;
      v42 = &unk_2882E3750;
      v39 = @"IE_KEY_RSN_UCIPHERS";
      v40 = @"IE_KEY_RSN_AUTHSELS";
      v43 = &unk_2882E39C0;
      v44 = &unk_2882E39D8;
      goto LABEL_19;
    }

    if (v12)
    {
      v45 = @"IE_KEY_RSN_VERSION";
      v46 = @"IE_KEY_RSN_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E3750;
      v16 = &unk_2882E39F0;
      v47 = @"IE_KEY_RSN_UCIPHERS";
      v48 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E3A08;
      goto LABEL_10;
    }

    if (v11)
    {
      v45 = @"IE_KEY_WPA_VERSION";
      v46 = @"IE_KEY_WPA_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E37B0;
      v35 = &unk_2882E3A20;
      v47 = @"IE_KEY_WPA_UCIPHERS";
      v48 = @"IE_KEY_WPA_AUTHSELS";
      v36 = &unk_2882E3A38;
      goto LABEL_53;
    }

LABEL_54:
    if (!v10)
    {
      goto LABEL_22;
    }

    v21 = MEMORY[0x277CBEC38];
    v22 = @"WEP";
    goto LABEL_21;
  }

  v14 = MEMORY[0x277CBEC38];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IS_NETWORK_EAP"];
  if ((v12 & v13) != 1)
  {
    if (v13)
    {
      v45 = @"IE_KEY_RSN_VERSION";
      v46 = @"IE_KEY_RSN_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E3750;
      v47 = @"IE_KEY_RSN_UCIPHERS";
      v48 = @"IE_KEY_RSN_AUTHSELS";
      v52 = &unk_2882E3840;
      v53 = &unk_2882E3858;
      v49 = @"IE_KEY_RSN_CAPS";
      v37 = @"MFP_CAPABLE";
      v38 = @"MFP_REQUIRED";
      v41 = v14;
      v42 = v14;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v37 count:2];
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v50, &v45, 5), @"WPA3_RSN_IE"}];
      goto LABEL_22;
    }

    if ((v11 & v12) == 1)
    {
      v45 = @"IE_KEY_WPA_VERSION";
      v46 = @"IE_KEY_WPA_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E37B0;
      v47 = @"IE_KEY_WPA_UCIPHERS";
      v48 = @"IE_KEY_WPA_AUTHSELS";
      v52 = &unk_2882E3870;
      v53 = &unk_2882E3888;
      [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v50, &v45, 4), @"WPA_IE"}];
      v37 = @"IE_KEY_RSN_VERSION";
      v38 = @"IE_KEY_RSN_MCIPHER";
      v41 = &unk_2882E3738;
      v42 = &unk_2882E37B0;
      v39 = @"IE_KEY_RSN_UCIPHERS";
      v40 = @"IE_KEY_RSN_AUTHSELS";
      v43 = &unk_2882E38A0;
      v44 = &unk_2882E38B8;
LABEL_19:
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v41;
      v20 = &v37;
      goto LABEL_20;
    }

    if (v12)
    {
      v45 = @"IE_KEY_RSN_VERSION";
      v46 = @"IE_KEY_RSN_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E3750;
      v16 = &unk_2882E38D0;
      v47 = @"IE_KEY_RSN_UCIPHERS";
      v48 = @"IE_KEY_RSN_AUTHSELS";
      v17 = &unk_2882E38E8;
      goto LABEL_10;
    }

    if (v11)
    {
      v45 = @"IE_KEY_WPA_VERSION";
      v46 = @"IE_KEY_WPA_MCIPHER";
      v50 = &unk_2882E3738;
      v51 = &unk_2882E37B0;
      v35 = &unk_2882E3900;
      v47 = @"IE_KEY_WPA_UCIPHERS";
      v48 = @"IE_KEY_WPA_AUTHSELS";
      v36 = &unk_2882E3918;
LABEL_53:
      v52 = v35;
      v53 = v36;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v45 count:4];
      v22 = @"WPA_IE";
      goto LABEL_21;
    }

    goto LABEL_54;
  }

  v45 = @"IE_KEY_RSN_VERSION";
  v46 = @"IE_KEY_RSN_MCIPHER";
  v50 = &unk_2882E3738;
  v51 = &unk_2882E3750;
  v47 = @"IE_KEY_RSN_UCIPHERS";
  v48 = @"IE_KEY_RSN_AUTHSELS";
  v52 = &unk_2882E3810;
  v53 = &unk_2882E3828;
  v49 = @"IE_KEY_RSN_CAPS";
  v37 = @"MFP_CAPABLE";
  v38 = @"MFP_REQUIRED";
  v41 = v14;
  v42 = v14;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v37 count:2];
  [v7 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v50, &v45, 5), @"RSN_IE"}];
LABEL_22:
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isHidden", @"UserDirected"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isCaptive", @"IS_NETWORK_CAPTIVE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isWhitelistedCaptive", @"IS_NETWORK_WHITELISTING_CAPTIVE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isExpirable", @"IS_NETWORK_EXPIRABLE"}];
  v23 = [objc_msgSend(a3 objectForKeyedSubscript:{@"isCustom", "BOOLValue"}];
  v24 = MEMORY[0x277CBEC28];
  v25 = MEMORY[0x277CBEC38];
  if (v23)
  {
    v26 = MEMORY[0x277CBEC38];
  }

  else
  {
    v26 = MEMORY[0x277CBEC28];
  }

  [v7 setObject:v26 forKeyedSubscript:@"IS_NETWORK_CUSTOMIZED"];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isProfileBased", "BOOLValue"}])
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  [v7 setObject:v27 forKeyedSubscript:@"IS_NETWORK_CONFIGURED"];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isAppBased", @"IS_NETWORK_APPBASED"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isCarPlayOnly", @"IS_NETWORK_CARPLAY_ONLY"}];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isIBSS", "BOOLValue"}])
  {
    v28 = &unk_2882E3738;
  }

  else
  {
    v28 = &unk_2882E37B0;
  }

  [v7 setObject:v28 forKeyedSubscript:@"AP_MODE"];
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"isAutoJoinDisabled", "BOOLValue"}])
  {
    v29 = v24;
  }

  else
  {
    v29 = v25;
  }

  [v7 setObject:v29 forKeyedSubscript:@"enabled"];
  v30 = [a3 objectForKeyedSubscript:@"lowDataMode"];
  if (v30)
  {
    if ([v30 BOOLValue])
    {
      v31 = &unk_2882E3738;
    }

    else
    {
      v31 = &unk_2882E37B0;
    }
  }

  else
  {
    v31 = &unk_2882E37E0;
  }

  [v7 setObject:v31 forKeyedSubscript:@"LOW_DATA_MODE"];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"addedAt", @"AddedAt"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedByUserAt", @"UserJoinedAt"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedBySystemAtWeek", @"lastJoinedBySystemAtWeek"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"preferredOrderTimestamp", @"UserPreferredTimestamp"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"minVersion", @"minVersion"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"NOT_SYNCABLE", @"NOT_SYNCABLE"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPrivacyProxyEnabled", @"IS_PRIVACY_PROXY_ENABLED"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isMoving", @"IS_MOVING"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"isPublic", @"IS_PUBLIC"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"was6GHzOnlyAtWeek", @"was6GHzOnlyAtWeek"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"seamlessSSIDList", @"seamlessSSIDList"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"privateMacPref", @"privateMacPref"}];
  [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"prvateMacPrefTimestamp", @"prvateMacPrefTimestamp"}];
  v32 = [v7 copy];
  if (!v32)
  {
    v33 = 0;
    goto LABEL_42;
  }

  v15 = (*(a1 + 104))(v32, *(a1 + 136));
LABEL_41:
  v33 = v15;
LABEL_42:
  objc_autoreleasePoolPop(v6);
  return v33;
}

void WiFiCloudSyncEngineStartEngine(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 56);
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v3)
      {
        v10 = 136315650;
        v11 = "WiFiCloudSyncEngineStartEngine";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngine.m";
        v14 = 1024;
        v15 = 1300;
        LODWORD(v7) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)already running...", &v10, v7, v8);
      }
    }

    else
    {
      if (v3)
      {
        v10 = 136315650;
        v11 = "WiFiCloudSyncEngineStartEngine";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngine.m";
        v14 = 1024;
        v15 = 1303;
        LODWORD(v7) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)....", &v10, v7, v8);
      }

      [*(a1 + 40) enableIcloudSyncing:1 ForBundleId:*(a1 + 160)];
      [*(a1 + 48) enableIcloudSyncing:1 ForBundleId:*(a1 + 160)];
      *(a1 + 56) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = "WiFiCloudSyncEngineStartEngine";
        v12 = 2080;
        v13 = "WiFiCloudSyncEngine.m";
        v14 = 1024;
        v15 = 1311;
        LODWORD(v7) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)merge networks from icloud and plist...", &v10, v7, v8);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiCloudSyncEngineStartEngine_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v5 = *(a1 + 32);
      if (v5)
      {
        dispatch_async(v5, v4);
      }

      else
      {
        v6 = *(a1 + 16);
        if (v6)
        {
          CFRunLoopPerformBlock(v6, *(a1 + 24), v4);
          CFRunLoopWakeUp(*(a1 + 16));
        }
      }

      _Block_release(v4);
    }
  }

  else
  {
    WiFiCloudSyncEngineStartEngine_cold_1();
  }
}

uint64_t __WiFiCloudSyncEngineStartEngine_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(*(v2 + 40) "keyValueStore")];
  v4 = [objc_msgSend(*(v2 + 48) "keyValueStore")];
  v30 = a1;
  v31 = v2;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v47 = 136315650;
      v48 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
      v49 = 2080;
      v50 = "WiFiCloudSyncEngine.m";
      v51 = 1024;
      v52 = 528;
      LODWORD(v28) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Already migrated from legacy non-encrypted KVS to encrypted KVS, skipping migration", &v47, v28, v29);
    }
  }

  else
  {
    [objc_msgSend(*(v2 + 48) "keyValueStore")];
    v5 = [*(v2 + 48) keyValueStore];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"enable_network_sync"];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [v3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:&v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = @"WiFiCloudSyncEngineNonSSIDKeyPrefix_";
    v33 = *v36;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 length];
        v14 = [(__CFString *)v9 length];
        if (!v4 && v13 < v14)
        {
          v15 = [v3 objectForKeyedSubscript:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [__WiFiCloudSyncEngineTranslateFromLegacyFormat(v15) mutableCopy];
            if (v16)
            {
              v17 = v16;
              v18 = v9;
              v19 = v6;
              v20 = v3;
              __WiFiCloudSyncEngineAddVersionsToCloudNetwork(v16);
              v21 = [v17 objectForKeyedSubscript:@"SSID"];
              if (v21)
              {
                v22 = v21;
                v23 = [*(v31 + 48) keyValueStore];
                [v23 setObject:v17 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v22)}];
                v3 = v20;
                v6 = v19;
                v9 = v18;
                v4 = 0;
                v8 = v32;
              }

              else
              {
                v6 = v19;
                v9 = v18;
                v4 = 0;
                v8 = v32;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v39 = 136315906;
                  v40 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
                  v41 = 2080;
                  v42 = "WiFiCloudSyncEngine.m";
                  v43 = 1024;
                  v44 = 554;
                  v45 = 2112;
                  v46 = v15;
                  LODWORD(v28) = 38;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)FAILED to migrate network entry to encrypted KVS (missing SSID), %@", &v39, v28);
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v39 = 136315906;
              v40 = "__WiFiCloudSyncEngineMigrateToEncryptedKVS";
              v41 = 2080;
              v42 = "WiFiCloudSyncEngine.m";
              v43 = 1024;
              v44 = 559;
              v45 = 2112;
              v46 = v15;
              LODWORD(v28) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)FAILED to migrate network entry to encrypted KVS, %@", &v39, v28);
            }
          }
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:&v47 count:16];
    }

    while (v8);
  }

  [objc_msgSend(*(v31 + 48) "keyValueStore")];
  v24 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v25 = *(v30 + 32);
  if (v24)
  {
    [*(v25 + 40) clearKVS];
    return [*(*(v30 + 32) + 48) clearKVS];
  }

  else
  {
    v27 = *(v25 + 48);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_2;
    v34[3] = &unk_279EBBB50;
    v34[4] = v27;
    v34[5] = v25;
    return [v27 pruneKVSStoreAndReply:v34];
  }
}

void __WiFiCloudSyncEngineStartEngine_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[4];
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_3;
    block[3] = &unk_279EBBAB8;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = v2[2];
    if (v4)
    {
      v5 = v2[3];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __WiFiCloudSyncEngineStartEngine_block_invoke_4;
      v6[3] = &unk_279EBBAB8;
      v6[4] = *(a1 + 32);
      CFRunLoopPerformBlock(v4, v5, v6);
      CFRunLoopWakeUp(*(*(a1 + 40) + 16));
    }
  }
}

void *WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS(void *a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_6();
  }

  if (!a2)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_5();
  }

  if (!a1[14])
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_4();
  }

  v6 = a1[15];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_3(v7);
  }

  if (v7)
  {
    *v55 = 136315906;
    *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
    v56 = 2080;
    v57 = "WiFiCloudSyncEngine.m";
    v58 = 1024;
    v59 = 1504;
    v60 = 2112;
    v61 = [a3 allKeys];
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)KVS networks: %@", v55, 38);
    v6 = a1[15];
  }

  v8 = v6(a1[17]);
  v53 = a3;
  v49 = a1;
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (Count)
    {
      if (v11)
      {
        *v55 = 136315906;
        *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
        v56 = 2080;
        v57 = "WiFiCloudSyncEngine.m";
        v58 = 1024;
        v59 = 1515;
        v60 = 2048;
        v61 = Count;
        LODWORD(v47) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)%ld networks in plist", v55, v47, v48, a1);
      }

      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          if (ValueAtIndex)
          {
            CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, a2, ValueAtIndex);
            if (CloudFromNetworkFormatCallback)
            {
              v17 = CloudFromNetworkFormatCallback;
              [v12 insertObject:CloudFromNetworkFormatCallback atIndex:i];
            }
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke;
      block[3] = &unk_279EBBB78;
      block[8] = v9;
      block[9] = a1;
      v52 = v12;
      block[4] = v12;
      block[5] = a2;
      a3 = v53;
      block[6] = v53;
      block[7] = Count;
      dispatch_async(global_queue, block);
      goto LABEL_18;
    }

    WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_1(v11);
  }

  else
  {
    WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_2();
  }

  v52 = *v55;
LABEL_18:
  v19 = [a3 count];
  v20 = [a3 allKeys];
  if (v19)
  {
    v21 = 0;
    v50 = v19;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v20 objectAtIndex:v21];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 136316162;
        *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
        v56 = 2080;
        v57 = "WiFiCloudSyncEngine.m";
        v58 = 1024;
        v59 = 1637;
        v60 = 2048;
        v61 = v21;
        v62 = 2112;
        v63 = v23;
        LODWORD(v47) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)kvs item #%lu - <%@>", v55, v47);
      }

      if (![a2 isKVSEncrypted])
      {
        break;
      }

      if ([v23 hasPrefix:@"network."])
      {
        v24 = [a3 objectForKey:v23];
        if (v24)
        {
          v25 = v24;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = [v25 objectForKeyedSubscript:@"SSID"];
            v26 = [v25 objectForKeyedSubscript:@"removedAt"];
            v27 = [v25 objectForKeyedSubscript:@"addedAt"];
            v28 = __WiFiCloudSyncEngineIsCloudNetworkOnDevice(a2, v25, v52);
            if (v28)
            {
              v29 = [v28 objectForKeyedSubscript:@"addedAt"];
              [v26 timeIntervalSinceReferenceDate];
              v31 = v30;
              [v29 timeIntervalSinceReferenceDate];
              if (v31 > v32)
              {
                a3 = v53;
                v19 = v50;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v55 = 136315906;
                  *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v56 = 2080;
                  v57 = "WiFiCloudSyncEngine.m";
                  v58 = 1024;
                  v59 = 1657;
                  v60 = 2112;
                  v61 = v51;
                  LODWORD(v47) = 38;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)CLOUD --> LOCAL: <%@> more recently removed on cloud KVS, remove from local KVS", v55, v47);
                }

                WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList(v49, a2, v25);
                goto LABEL_42;
              }

              [v29 timeIntervalSinceReferenceDate];
              v34 = v33;
              [v27 timeIntervalSinceReferenceDate];
              v36 = v35;
              v37 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              v19 = v50;
              if (v34 >= v36)
              {
                a3 = v53;
                if (v37)
                {
                  *v55 = 136315906;
                  *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v56 = 2080;
                  v57 = "WiFiCloudSyncEngine.m";
                  v58 = 1024;
                  v59 = 1662;
                  v60 = 2112;
                  v61 = v51;
                  LODWORD(v47) = 38;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)CLOUD --> LOCAL: <%@> more recently added on local KVS, defer", v55, v47);
                }

                goto LABEL_42;
              }

              a3 = v53;
              if (v37)
              {
                *v55 = 136315906;
                *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                v56 = 2080;
                v57 = "WiFiCloudSyncEngine.m";
                v58 = 1024;
                v59 = 1666;
                v60 = 2112;
                v61 = v51;
                LODWORD(v47) = 38;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)CLOUD --> LOCAL: <%@> more recently added on cloud KVS, update local KVS", v55, v47);
              }
            }

            else
            {
              [v26 timeIntervalSinceReferenceDate];
              v42 = v41;
              [v27 timeIntervalSinceReferenceDate];
              v44 = v43;
              v45 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v42 > v44)
              {
                v19 = v50;
                if (v45)
                {
                  *v55 = 136315906;
                  *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                  v56 = 2080;
                  v57 = "WiFiCloudSyncEngine.m";
                  v58 = 1024;
                  v59 = 1675;
                  v60 = 2112;
                  v61 = v51;
                  LODWORD(v47) = 38;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)CLOUD --> LOCAL: <%@> is removed on cloud KVS, ignore", v55, v47);
                }

                goto LABEL_42;
              }

              v19 = v50;
              if (v45)
              {
                *v55 = 136315906;
                *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
                v56 = 2080;
                v57 = "WiFiCloudSyncEngine.m";
                v58 = 1024;
                v59 = 1679;
                v60 = 2112;
                v61 = v51;
                LODWORD(v47) = 38;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)CLOUD --> LOCAL: <%@> does not exist on local KVS, add to local KVS", v55, v47);
              }
            }

LABEL_51:
            WiFiCloudSyncEngineAddNetworkToKnownNetworksList(v49, a2, v25);
            goto LABEL_42;
          }
        }

        [a2 removeFromKVStore:v23];
      }

LABEL_42:
      objc_autoreleasePoolPop(v22);
      if (v19 == ++v21)
      {
        goto LABEL_52;
      }
    }

    if (!v23)
    {
      goto LABEL_42;
    }

    v38 = [v23 length];
    v39 = v38 >= [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length];
    a3 = v53;
    if (v39)
    {
      goto LABEL_42;
    }

    v40 = [v53 objectForKey:v23];
    if (!v40)
    {
      goto LABEL_42;
    }

    v25 = v40;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    if (__WiFiCloudSyncEngineIsCloudNetworkOnDevice(a2, v25, v52))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 136315906;
        *&v55[4] = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS";
        v56 = 2080;
        v57 = "WiFiCloudSyncEngine.m";
        v58 = 1024;
        v59 = 1699;
        v60 = 2112;
        v61 = v23;
        LODWORD(v47) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@> exists on the device", v55, v47);
      }

      goto LABEL_42;
    }

    goto LABEL_51;
  }

LABEL_52:
  result = [v20 indexOfObject:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return [a2 removeFromKVStore:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_cleaningKVS"];
  }

  return result;
}

id __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 112))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = (*(a1 + 112))(a3, *(a1 + 136));
    if ([a2 isKVSEncrypted])
    {
      v8 = __WiFiCloudSyncEngineTranslateFromLegacyFormat(v7);

      v7 = v8;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback_cold_1();
    return v10;
  }

  return v7;
}

void __WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) < 1)
  {
    goto LABEL_38;
  }

  v28 = 0;
  v2 = 0;
  v3 = @"SSID_STR";
  v4 = @"SSID";
  v5 = MEMORY[0x277D86220];
  while (v2 < [*(a1 + 32) count])
  {
    v6 = objc_autoreleasePoolPush();
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v2);
    v8 = [*(a1 + 32) objectAtIndex:v2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315650;
        v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
        v31 = 2080;
        v32 = "WiFiCloudSyncEngine.m";
        v33 = 1024;
        v34 = 1557;
        LODWORD(v27) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)invalid cloud formatted known network", &v29, v27);
      }

      goto LABEL_31;
    }

    if ([*(a1 + 40) isKVSEncrypted])
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = [v8 objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = v10;
      if ([*(a1 + 40) isKVSEncrypted])
      {
        v12 = [v8 objectForKeyedSubscript:@"addedAt"];
        v13 = [*(a1 + 48) objectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v11)}];
        if (v13)
        {
          v14 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v4;
            v16 = v3;
            v17 = [v14 objectForKeyedSubscript:@"removedAt"];
            v18 = [v14 objectForKeyedSubscript:@"addedAt"];
            [v17 timeIntervalSinceReferenceDate];
            v20 = v19;
            [v12 timeIntervalSinceReferenceDate];
            if (v20 <= v21)
            {
              [v18 timeIntervalSinceReferenceDate];
              v23 = v22;
              [v12 timeIntervalSinceReferenceDate];
              v25 = v24;
              v5 = MEMORY[0x277D86220];
              v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              v3 = v16;
              if (v23 < v25)
              {
                if (v26)
                {
                  v29 = 136315906;
                  v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
                  v31 = 2080;
                  v32 = "WiFiCloudSyncEngine.m";
                  v33 = 1024;
                  v34 = 1587;
                  v35 = 2112;
                  v36 = v11;
                  LODWORD(v27) = 38;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)LOCAL --> CLOUD: <%@> more recently added on local device, update cloud KVS", &v29, v27);
                }

                __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(*(a1 + 72), *(a1 + 40), ValueAtIndex, 0);
                v28 = 1;
              }

              else if (v26)
              {
                v29 = 136315906;
                v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
                v31 = 2080;
                v32 = "WiFiCloudSyncEngine.m";
                v33 = 1024;
                v34 = 1583;
                v35 = 2112;
                v36 = v11;
                LODWORD(v27) = 38;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)LOCAL --> CLOUD: <%@> more recently added on cloud KVS, defer", &v29, v27);
              }
            }

            else
            {
              v5 = MEMORY[0x277D86220];
              v3 = v16;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v29 = 136315906;
                v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
                v31 = 2080;
                v32 = "WiFiCloudSyncEngine.m";
                v33 = 1024;
                v34 = 1579;
                v35 = 2112;
                v36 = v11;
                LODWORD(v27) = 38;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)LOCAL --> CLOUD: <%@> more recently removed on cloud KVS, defer", &v29, v27);
              }
            }

            v4 = v15;
            goto LABEL_31;
          }
        }

        v5 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136315906;
          v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
          v31 = 2080;
          v32 = "WiFiCloudSyncEngine.m";
          v33 = 1024;
          v34 = 1594;
          v35 = 2112;
          v36 = v11;
          LODWORD(v27) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)LOCAL --> CLOUD: <%@> does not exist on cloud KVS, add to cloud KVS", &v29, v27);
        }
      }

      else
      {
        if ([*(a1 + 48) objectForKey:v11])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              v29 = 136315906;
              v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
              v31 = 2080;
              v32 = "WiFiCloudSyncEngine.m";
              v33 = 1024;
              v34 = 1604;
              v35 = 2112;
              v36 = v11;
              LODWORD(v27) = 38;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@> exists on icloud", &v29, v27);
            }

            goto LABEL_31;
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136315906;
          v30 = "WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_block_invoke";
          v31 = 2080;
          v32 = "WiFiCloudSyncEngine.m";
          v33 = 1024;
          v34 = 1608;
          v35 = 2112;
          v36 = v11;
          LODWORD(v27) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, v5, 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@> does not exist on icloud, add it", &v29, v27);
        }
      }

      __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(*(a1 + 72), *(a1 + 40), ValueAtIndex, 0);
      v28 = 1;
    }

LABEL_31:
    objc_autoreleasePoolPop(v6);
    if (++v2 >= *(a1 + 56))
    {
      break;
    }
  }

  if (v28)
  {
    [*(a1 + 40) synchronizeKVS];
  }

LABEL_38:
  CFRelease(*(a1 + 64));
}

void *__WiFiCloudSyncEngineIsCloudNetworkOnDevice(void *a1, void *a2, void *a3)
{
  if (!a3)
  {
    __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_2();
    return v16;
  }

  v6 = [a3 count];
  if (!v6)
  {
    __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_1();
    return v16;
  }

  v7 = v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = [a3 objectAtIndex:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 isKVSEncrypted] ? @"SSID" : @"SSID_STR";
      v12 = [a2 objectForKeyedSubscript:v11];
      v13 = [a1 isKVSEncrypted] ? @"SSID" : @"SSID_STR";
      if ([v12 isEqualToString:{objc_msgSend(v10, "objectForKeyedSubscript:", v13)}])
      {
        NetworkSecurity = __WiFiCloudSyncEngineGetNetworkSecurity(a1, a2);
        if (NetworkSecurity == __WiFiCloudSyncEngineGetNetworkSecurity(a1, v10))
        {
          break;
        }
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v10;
}

void WiFiCloudSyncEngineAddNetworkToCloud(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    if (a1)
    {
      if (*(a1 + 56))
      {
        v3 = *(a1 + 48);

        __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(a1, v3, cf, 1);
      }

      else
      {
        WiFiCloudSyncEngineAddNetworkToCloud_cold_1();
      }
    }

    else
    {
      WiFiCloudSyncEngineAddNetworkToCloud_cold_2();
    }
  }

  else
  {
    WiFiCloudSyncEngineAddNetworkToCloud_cold_3();
  }
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud(uint64_t a1, CFTypeRef cf)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_7();
    return;
  }

  v4 = CFRetain(cf);
  if (a1)
  {
    if (*(a1 + 56))
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        if (*(a1 + 112))
        {
          CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, *(a1 + 48), cf);
          if (CloudFromNetworkFormatCallback)
          {
            v7 = CloudFromNetworkFormatCallback;
            if ([v5 isKVSEncrypted])
            {
              v8 = @"SSID";
            }

            else
            {
              v8 = @"SSID_STR";
            }

            v9 = [v7 objectForKeyedSubscript:v8];
            v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
            if (v9)
            {
              if (v10)
              {
                *v17 = 136315906;
                *&v17[4] = "WiFiCloudSyncEngineRemoveNetworkFromCloud";
                v18 = 2080;
                v19 = "WiFiCloudSyncEngine.m";
                v20 = 1024;
                v21 = 2115;
                v22 = 2112;
                v23 = v9;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)<%@>", v17, 38);
              }

              if ([v5 isKVSEncrypted])
              {
                v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"network.", v9];
                v12 = [objc_msgSend(v5 "keyValueStore")];
                if (v12)
                {
                  v13 = v12;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v14 = [v13 mutableCopy];
                    [v14 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKeyedSubscript:{"date"), @"removedAt"}];
                    v15 = v11;
                    v16 = v14;
                    [v5 addToKVStore:objc_msgSend(MEMORY[0x277CBEAC0] synchronize:{"dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), 1}];
                  }
                }
              }

              else
              {
                [v5 removeFromKVStore:v9];
              }

              goto LABEL_18;
            }

            WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_1(v10, v7, v17);
          }

          else
          {
            WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_2();
          }
        }

        else
        {
          WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_3();
        }
      }

      else
      {
        WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_4();
      }
    }

    else
    {
      WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_5();
    }
  }

  else
  {
    WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_6();
  }

  v7 = *v17;
LABEL_18:

  if (v4)
  {
    CFRelease(v4);
  }
}

void *WiFiCloudSyncEngineMergeKnownNetworksToCloud(uint64_t a1)
{
  if (!a1)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_3();
  }

  if (!*(a1 + 56))
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_2();
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_1();
  }

  v3 = [objc_msgSend(*(a1 + 48) "keyValueStore")];

  return WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS(a1, v2, v3);
}

uint64_t WiFiCloudSyncEngineGetLogCallbackFunction(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineIsRunning()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CDBD50]);
  [v1 setContext:*MEMORY[0x277CDBD90]];
  v2 = [objc_alloc(MEMORY[0x277CDBD48]) initWithContextData:v1];
  if (v2)
  {
    v8 = 0;
    v3 = [v2 fetchUserControllableViewsSyncingEnabled:&v8];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = "WiFiCloudSyncEngineIsRunning";
      v11 = 2080;
      v12 = "WiFiCloudSyncEngine.m";
      v13 = 1024;
      v14 = 2897;
      v15 = 1024;
      v16 = v3;
      v17 = 2112;
      v18 = v8;
      v6 = 44;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)[OTClique fetchUserControllableViewsSyncingEnabled:] returned %d, error=%@", &v9, v6);
    }
  }

  else
  {
    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "WiFiCloudSyncEngineIsRunning";
      v11 = 2080;
      v12 = "WiFiCloudSyncEngine.m";
      v13 = 1024;
      v14 = 2901;
      LODWORD(v5) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)FAILED to initialize OTClique, cannot query sync status", &v9, v5, v7);
      v3 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  return v3;
}

uint64_t WiFiCloudSyncEngineCopyCompleteKVS(uint64_t a1, int a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = 40;
  }

  v3 = [objc_msgSend(*(a1 + v2) "keyValueStore")];

  return [v3 copy];
}

uint64_t __WiFiCloudSyncEngineRegister()
{
  result = _CFRuntimeRegisterClass();
  __wiFiCloudEngineTypeID = result;
  return result;
}

void __WiFiCloudSyncEngineRelease(uint64_t a1)
{
  if (a1)
  {
    WiFiCloudSyncEngineStopEngine(a1);
    v2 = *(a1 + 176);
    if (v2)
    {
      CFMachPortInvalidate(v2);
      v3 = *(a1 + 176);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 176) = 0;
      }
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 184) = 0;
    }

    v5 = *(a1 + 216);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 224);
    if (v6)
    {
      dispatch_source_cancel(v6);
      dispatch_release(*(a1 + 224));
    }

    v7 = *(a1 + 248);
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
      v8 = *(a1 + 248);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 248) = 0;
      }
    }

    v9 = *(a1 + 256);
    if (v9)
    {
      dispatch_release(v9);
      *(a1 + 256) = 0;
    }

    v10 = *(a1 + 200);
    if (v10)
    {
      CFMachPortInvalidate(v10);
      v11 = *(a1 + 200);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 200) = 0;
      }
    }

    v12 = *(a1 + 208);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 208) = 0;
    }

    v13 = *(a1 + 240);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 240) = 0;
    }

    v14 = *(a1 + 144);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 144) = 0;
    }

    v15 = *(a1 + 272);
    if (v15)
    {
      dispatch_release(v15);
    }

    v16 = *(a1 + 280);
    if (v16)
    {
      dispatch_release(v16);
    }

    *(a1 + 160) = 0;
    v17 = *(a1 + 48);
  }

  else
  {
    __WiFiCloudSyncEngineRelease_cold_1();
  }
}

void __WiFiCloudSyncEngineKeychainSyncStateChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v5)
    {
      v6 = 136315650;
      v7 = "__WiFiCloudSyncEngineKeychainSyncStateChanged";
      v8 = 2080;
      v9 = "WiFiCloudSyncEngine.m";
      v10 = 1024;
      v11 = 993;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)check keychain view membership", &v6, 28);
    }

    WiFiCloudSyncEngineCheckKeychainSyncState(a4);
  }

  else
  {
    __WiFiCloudSyncEngineKeychainSyncStateChanged_cold_1(v5);
  }
}

void __WiFiCloudSyncEngineKeychainChangedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v5)
    {
      v6 = 136315650;
      v7 = "__WiFiCloudSyncEngineKeychainChangedNotificationCallback";
      v8 = 2080;
      v9 = "WiFiCloudSyncEngine.m";
      v10 = 1024;
      v11 = 1010;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)check waiting list", &v6, 28);
    }

    *(a4 + 232) = 1;
    __WiFiCloudSyncEngineCheckWaitingForPasswordList(a4, *(a4 + 48));
  }

  else
  {
    __WiFiCloudSyncEngineKeychainChangedNotificationCallback_cold_1(v5);
  }
}

void __WiFiCloudSyncEngineCheckWaitingForPasswordList(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if (!a1)
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_7();
    return;
  }

  v5 = *(a1 + 144);
  if (!v5)
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_6();
    return;
  }

  if (!*(a1 + 240))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_5();
    return;
  }

  if (!*(a1 + 104))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_4();
    return;
  }

  if (!*(a1 + 72))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_3();
    return;
  }

  v6 = Current;
  if (*(a1 + 16) && *(a1 + 24) && *(a1 + 248))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_1(*(a1 + 248));
    return;
  }

  if (*(a1 + 32) && *(a1 + 256))
  {
    __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_2();
    return;
  }

  Count = CFArrayGetCount(v5);
  if (Count)
  {
    v8 = Count;
    if (*(a1 + 152) < Count)
    {
      v9 = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 152);
        v43 = 136316162;
        v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
        v45 = 2080;
        v46 = "WiFiCloudSyncEngine.m";
        v47 = 1024;
        v48 = 2614;
        v49 = 2048;
        *v50 = v8;
        *&v50[8] = 2048;
        *&v50[10] = v10;
        LODWORD(v33) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)%ld networks waiting for password sync, currently at %ld", &v43, v33, handler, v35, v36);
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), *(a1 + 152));
      NetworkFromCloudFormatCallback = __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(a1, a2, ValueAtIndex);
      if (NetworkFromCloudFormatCallback)
      {
        v13 = CFDateCreate(*MEMORY[0x277CBECE8], v6);
        if (v13)
        {
          v14 = v13;
          if (CFArrayGetCount(*(a1 + 240)) == 5)
          {
            CFArrayRemoveValueAtIndex(*(a1 + 240), 0);
          }

          CFArrayAppendValue(*(a1 + 240), v14);
          CFRelease(v14);
        }

        v15 = (*(a1 + 88))(NetworkFromCloudFormatCallback, *(a1 + 136));
        v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v16)
          {
            v17 = *(a1 + 152);
            v43 = 136315906;
            v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v45 = 2080;
            v46 = "WiFiCloudSyncEngine.m";
            v47 = 1024;
            v48 = 2644;
            v49 = 2048;
            *v50 = v17;
            LODWORD(v33) = 38;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Password is now available for network at idx %ld", &v43, v33, handler, v35);
          }

          (*(a1 + 72))(NetworkFromCloudFormatCallback, *(a1 + 136));
          CFArrayRemoveValueAtIndex(*(a1 + 144), *(a1 + 152));
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v43 = 136315650;
            v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v45 = 2080;
            v46 = "WiFiCloudSyncEngine.m";
            v47 = 1024;
            v48 = 2651;
            LODWORD(v33) = 28;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)removed network from waiting for password sync list", &v43, v33, handler);
          }
        }

        else
        {
          if (v16)
          {
            v20 = *(a1 + 152);
            v43 = 136315906;
            v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
            v45 = 2080;
            v46 = "WiFiCloudSyncEngine.m";
            v47 = 1024;
            v48 = 2639;
            v49 = 2048;
            *v50 = v20;
            LODWORD(v33) = 38;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)Password is still not available for network at idx %ld", &v43, v33, handler, v35);
          }

          ++*(a1 + 152);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136315906;
          v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
          v45 = 2080;
          v46 = "WiFiCloudSyncEngine.m";
          v47 = 1024;
          v48 = 2620;
          v49 = 2112;
          *v50 = ValueAtIndex;
          LODWORD(v33) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)FAILED to create local representation for cloud format %@, removed network from waiting for password sync list", &v43, v33);
        }

        CFArrayRemoveValueAtIndex(*(a1 + 144), *(a1 + 152));
      }

      objc_autoreleasePoolPop(v9);
LABEL_41:
      v21 = objc_autoreleasePoolPush();
      if (CFArrayGetCount(*(a1 + 240)) == 5 && CFArrayGetValueAtIndex(*(a1 + 240), 0) && (v22 = MEMORY[0x2743E1110](), v6 > v22) && v6 - v22 <= 10.0)
      {
        v23 = v22 - v6 + 12.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v43 = 136316418;
          v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
          v45 = 2080;
          v46 = "WiFiCloudSyncEngine.m";
          v47 = 1024;
          v48 = 2694;
          v49 = 1024;
          *v50 = 5;
          *&v50[4] = 2048;
          *&v50[6] = 0x4024000000000000;
          *&v50[14] = 2048;
          *&v50[16] = v23;
          LODWORD(v33) = 54;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)max 'waiting for password' attempts reached (%d per %.1fs), next attempt scheduled for %.1fs from now", &v43, v33, handler, v35, *&v36, *&v37);
        }

        if (*(a1 + 16) && *(a1 + 24))
        {
          v24 = *MEMORY[0x277CBECE8];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_51;
          block[3] = &unk_279EBBBC0;
          block[4] = a2;
          block[5] = a1;
          v25 = CFRunLoopTimerCreateWithHandler(v24, v6 + v23, 0.0, 0, 0, block);
          *(a1 + 248) = v25;
          CFRunLoopAddTimer(*(a1 + 16), v25, *(a1 + 24));
        }

        v26 = *(a1 + 32);
        if (v26)
        {
          v27 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v26);
          *(a1 + 256) = v27;
          handler = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2_53;
          v37 = &unk_279EBBB50;
          v38 = a2;
          v39 = a1;
          dispatch_source_set_event_handler(v27, &handler);
          v28 = *(a1 + 256);
          v29 = dispatch_time(0, (v23 * 1000000000.0));
          dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
          *(a1 + 264) = v6 + v23;
          dispatch_activate(*(a1 + 256));
        }
      }

      else
      {
        v30 = *(a1 + 16);
        if (v30)
        {
          v31 = *(a1 + 24);
          if (v31)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke;
            v42[3] = &unk_279EBBB50;
            v42[4] = a2;
            v42[5] = a1;
            CFRunLoopPerformBlock(v30, v31, v42);
            CFRunLoopWakeUp(*(a1 + 16));
          }
        }

        v32 = *(a1 + 32);
        if (v32)
        {
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = ____WiFiCloudSyncEngineCheckWaitingForPasswordList_block_invoke_2;
          v41[3] = &unk_279EBBB50;
          v41[4] = a2;
          v41[5] = a1;
          dispatch_async(v32, v41);
        }
      }

      objc_autoreleasePoolPop(v21);
      if (NetworkFromCloudFormatCallback)
      {
        CFRelease(NetworkFromCloudFormatCallback);
      }

      return;
    }

    v18 = *(a1 + 232);
    v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        v43 = 136315906;
        v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
        v45 = 2080;
        v46 = "WiFiCloudSyncEngine.m";
        v47 = 1024;
        v48 = 2600;
        v49 = 2048;
        *v50 = v8;
        LODWORD(v33) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)there are %ld networks waiting for password sync, and we received a cloud keychain update while processing list, process again", &v43, v33, handler, v35);
      }

      NetworkFromCloudFormatCallback = 0;
      *(a1 + 152) = 0;
      *(a1 + 232) = 0;
      goto LABEL_41;
    }

    if (v19)
    {
      v43 = 136315906;
      v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
      v45 = 2080;
      v46 = "WiFiCloudSyncEngine.m";
      v47 = 1024;
      v48 = 2607;
      v49 = 2048;
      *v50 = v8;
      LODWORD(v33) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)there are %ld networks waiting for password sync, and they're unavailable", &v43, v33, handler, v35);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315650;
      v44 = "__WiFiCloudSyncEngineCheckWaitingForPasswordList";
      v45 = 2080;
      v46 = "WiFiCloudSyncEngine.m";
      v47 = 1024;
      v48 = 2589;
      LODWORD(v33) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)there are no networks waiting for password sync, so stop the keychain changed notifications", &v43, v33, handler);
    }

    __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
  }
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_4();
  }

  v2 = *(a1 + 16);
  if (v2 && (v3 = *(a1 + 24)) != 0)
  {
    v4 = *(a1 + 208);
    if (!v4)
    {
      return __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_1();
    }

    CFRunLoopRemoveSource(v2, v4, v3);
  }

  else if (!*(a1 + 32))
  {
    return __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_3();
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 192);
    if (!v5)
    {
      return __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_2();
    }

    notify_cancel(v5);
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v8 = 136315650;
    v9 = "__WiFiCloudSyncEngineStopKeychainChangedNotifications";
    v10 = 2080;
    v11 = "WiFiCloudSyncEngine.m";
    v12 = 1024;
    v13 = 1084;
    v7 = 28;
    return _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_273EB5000, MEMORY[0x277D86220], 0, "[WIFICLOUDSYNC] %s (%s:%u)stopped...", &v8, v7);
  }

  return result;
}

void __WiFiCloudSyncEngineProcessCloudChangeEvent(NSObject **a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v6 = [a3 count];
    CFRetain(a1);
    dispatch_semaphore_wait(a1[35], 0xFFFFFFFFFFFFFFFFLL);
    v7 = a1[34];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ____WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke;
    v8[3] = &unk_279EBBBE8;
    v8[4] = a3;
    v8[5] = a2;
    v8[6] = v6;
    v8[7] = a1;
    dispatch_async(v7, v8);
  }

  else
  {
    __WiFiCloudSyncEngineProcessCloudChangeEvent_cold_1();
  }
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_2();
  }

  if (!a2)
  {
    return __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_1();
  }

  return [a2 readStoreValueForKey:?];
}

id __WiFiCloudSyncEngineTranslateFromLegacyFormat(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"SSID_STR", @"SSID"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"BSSID", @"BSSID"}];
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"WEP", "BOOLValue"}];
  v4 = MEMORY[0x277CBEC38];
  if (v3)
  {
    v5 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = 0;
  }

  [v2 setObject:v5 forKeyedSubscript:@"isWEP"];
  if ([a1 objectForKeyedSubscript:@"WPA_IE"])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [v2 setObject:v6 forKeyedSubscript:@"isWPA"];
  if ([a1 objectForKeyedSubscript:@"RSN_IE"])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  [v2 setObject:v7 forKeyedSubscript:@"isWPA2"];
  if ([a1 objectForKeyedSubscript:@"WPA3_RSN_IE"])
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  [v2 setObject:v8 forKeyedSubscript:@"isWPA3"];
  if (([objc_msgSend(v2 objectForKeyedSubscript:{@"isWEP", "BOOLValue"}] & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA"), "BOOLValue") & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA2"), "BOOLValue") & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "objectForKeyedSubscript:", @"isWPA3"), "BOOLValue") & 1) == 0)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isOpen"];
  }

  if (([objc_msgSend(v2 objectForKeyedSubscript:{@"isOpen", "BOOLValue"}] & 1) == 0)
  {
    if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_EAP", "BOOLValue"}])
    {
      v9 = @"isEAP";
    }

    else
    {
      v9 = @"isPSK";
    }

    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v9];
  }

  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserDirected", @"isHidden"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_NETWORK_CAPTIVE", @"isCaptive"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_NETWORK_WHITELISTING_CAPTIVE", @"isWhitelistedCaptive"}];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_EXPIRABLE", "BOOLValue"}])
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  [v2 setObject:v10 forKeyedSubscript:@"isExpirable"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CUSTOMIZED", "BOOLValue"}])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  [v2 setObject:v11 forKeyedSubscript:@"isCustom"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CONFIGURED", "BOOLValue"}])
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  [v2 setObject:v12 forKeyedSubscript:@"isProfileBased"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_APPBASED", "BOOLValue"}])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  [v2 setObject:v13 forKeyedSubscript:@"isAppBased"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"IS_NETWORK_CARPLAY_ONLY", "BOOLValue"}])
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  [v2 setObject:v14 forKeyedSubscript:@"isCarPlayOnly"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"AP_MODE", "intValue"}] == 1)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  [v2 setObject:v15 forKeyedSubscript:@"isIBSS"];
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"enabled", "BOOLValue"}])
  {
    v16 = 0;
  }

  else
  {
    v16 = v4;
  }

  [v2 setObject:v16 forKeyedSubscript:@"isAutoJoinDisabled"];
  v17 = [a1 objectForKeyedSubscript:@"LOW_DATA_MODE"];
  if (v17)
  {
    v18 = v17;
    if ([v17 integerValue] == 1)
    {
      v19 = MEMORY[0x277CBEC38];
    }

    else
    {
      if ([v18 integerValue] != 2)
      {
        goto LABEL_50;
      }

      v19 = MEMORY[0x277CBEC28];
    }

    [v2 setObject:v19 forKeyedSubscript:@"lowDataMode"];
  }

LABEL_50:
  v20 = [a1 objectForKeyedSubscript:@"AddedAt"];
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEAA8] date];
  }

  [v2 setObject:v20 forKeyedSubscript:@"addedAt"];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserJoinedAt", @"lastJoinedByUserAt"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"lastJoinedBySystemAtWeek", @"lastJoinedBySystemAtWeek"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"UserPreferredTimestamp", @"preferredOrderTimestamp"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"minVersion", @"minVersion"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"NOT_SYNCABLE", @"NOT_SYNCABLE"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_PRIVACY_PROXY_ENABLED", @"isPrivacyProxyEnabled"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_MOVING", @"isMoving"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"IS_PUBLIC", @"isPublic"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"was6GHzOnlyAtWeek", @"was6GHzOnlyAtWeek"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"seamlessSSIDList", @"seamlessSSIDList"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"privateMacPref", @"privateMacPref"}];
  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"prvateMacPrefTimestamp", @"prvateMacPrefTimestamp"}];
  v21 = [v2 copy];

  return v21;
}

void *__WiFiCloudSyncEngineAddVersionsToCloudNetwork(void *a1)
{
  if (!a1)
  {
    return __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_2();
  }

  result = [a1 objectForKeyedSubscript:@"addedByVersion"];
  if (!result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v4 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductBuildVersion", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductVersion", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{@"ProductName", "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v7 = *MEMORY[0x277CD28A0];
    v8 = IOServiceMatching("IOPlatformExpertDevice");
    MatchingService = IOServiceGetMatchingService(v7, v8);
    if (MatchingService)
    {
      __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_1(MatchingService, &v13);
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_msgSend(objc_msgSend(v10 stringByReplacingOccurrencesOfString:@" " withString:{&stru_2882E33B8), "stringByReplacingOccurrencesOfString:withString:", @".", @"_", "lowercaseString"}];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@.%ld", v6, v5, v4, v11, 2];

    return [a1 setObject:v12 forKeyedSubscript:@"addedByVersion"];
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(void *a1, void *a2)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [a2 objectForKey:@"NOT_SYNCABLE"];
      if (v4 && [v4 BOOLValue])
      {
        __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_2();
        return v16;
      }

      else
      {
        v5 = [a2 objectForKey:@"isEAP"];
        if (v5 && [v5 BOOLValue])
        {
          __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_3();
          return v17;
        }

        else
        {
          v6 = [a2 objectForKey:@"isCustom"];
          if (v6 && [v6 BOOLValue])
          {
            __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_4();
            return v18;
          }

          else
          {
            v7 = [a2 objectForKey:@"isProfileBased"];
            if (v7 && [v7 BOOLValue])
            {
              __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_5();
              return v19;
            }

            else
            {
              v8 = [a2 objectForKey:@"isIBSS"];
              if (v8 && [v8 BOOLValue])
              {
                __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_6();
                return v20;
              }

              else
              {
                v9 = [a2 objectForKey:@"isExpirable"];
                if (v9 && [v9 BOOLValue])
                {
                  __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_7();
                  return v21;
                }

                else
                {
                  v10 = [a2 objectForKey:@"isAutoJoinDisabled"];
                  if (v10 && [v10 BOOLValue])
                  {
                    __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_8();
                    return v22;
                  }

                  else
                  {
                    v11 = [a2 objectForKey:@"isCarPlayOnly"];
                    if (v11 && [v11 BOOLValue])
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_9();
                      return v23;
                    }

                    else if (__WiFiCloudSyncEngineIsNetworkHidden(a1, a2))
                    {
                      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_12();
                      return v26;
                    }

                    else
                    {
                      v12 = [a2 objectForKey:@"isOpen"];
                      if (v12 && [v12 BOOLValue])
                      {
                        __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_10();
                        return v24;
                      }

                      else
                      {
                        v13 = [a2 objectForKey:@"isCaptive"];
                        if (!v13 || [v13 BOOLValue])
                        {
                          __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_11();
                          return v25;
                        }

                        else
                        {
                          return 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_1();
      return v15;
    }
  }

  else
  {
    __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_13();
    return v27;
  }
}

unint64_t __WiFiCloudSyncEngineIsNetworkHidden(void *a1, void *a2)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 isKVSEncrypted])
      {
        v4 = @"isHidden";
      }

      else
      {
        v4 = @"UserDirected";
      }

      v5 = [a2 objectForKey:v4];
      if (v5)
      {

        return [v5 BOOLValue];
      }

      else
      {
        __WiFiCloudSyncEngineIsNetworkHidden_cold_2();
        return v8;
      }
    }

    else
    {
      __WiFiCloudSyncEngineIsNetworkHidden_cold_1();
      return v7;
    }
  }

  else
  {
    __WiFiCloudSyncEngineIsNetworkHidden_cold_3();
    return v9;
  }
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void __WiFiCloudSyncEngineCloudEventCallback(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (a2 && a3)
  {
    OUTLINED_FUNCTION_22();
    if ([v6 isKVSEncrypted])
    {
      v7 = [objc_msgSend(v3 objectForKey:{@"reason", "intValue"}];
      v8 = [v3 objectForKey:@"changedKeys"];
      switch(v7)
      {
        case 0:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        case 1:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_13:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_6();
            v16 = OUTLINED_FUNCTION_2_0();
            _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v21, 0, v22);
          }

LABEL_14:
          __WiFiCloudSyncEngineProcessCloudChangeEvent(a3, v4, v8);
          return;
        case 2:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          return;
        case 3:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

LABEL_10:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_6();
          break;
        default:
          return;
      }

      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
LABEL_11:
    v9 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 0, v15);
  }
}

void WiFiCloudSyncEngineAddNetworkToKnownNetworksList(uint64_t a1, uint64_t a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

LABEL_35:
    LODWORD(handler) = 136315650;
    *(&handler + 4) = "WiFiCloudSyncEngineAddNetworkToKnownNetworksList";
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4();
LABEL_36:
    v51 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v51, v52, v53, v54, v55, v56, 0, v57);
    return;
  }

  OUTLINED_FUNCTION_22();
  if (!__WiFiCloudSyncEngineIsNetworkSyncableFromCloud(v6, a3))
  {
    return;
  }

  NetworkSecurity = __WiFiCloudSyncEngineGetNetworkSecurity(v3, a3);
  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!NetworkSecurity)
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v8)
  {
    LODWORD(handler) = 136315650;
    *(&handler + 4) = "WiFiCloudSyncEngineAddNetworkToKnownNetworksList";
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4();
    v9 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, v14, 0, v15);
  }

  v16 = *(v4 + 144);
  if (v16)
  {
    Count = CFArrayGetCount(v16);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(handler) = 136315906;
      *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
      OUTLINED_FUNCTION_5();
      LODWORD(v67) = 2752;
      WORD2(v67) = 2048;
      *(&v67 + 6) = Count;
      OUTLINED_FUNCTION_8();
      v18 = OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl(v18, v19, v20, v21, v22, v23, 0, v24);
    }

    if ([v3 isKVSEncrypted])
    {
      v25 = @"SSID";
    }

    else
    {
      v25 = @"SSID_STR";
    }

    v26 = [a3 objectForKeyedSubscript:v25];
    if (v26)
    {
      v27 = v26;
      if (Count >= 1)
      {
        v28 = 0;
        do
        {
          v29 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 144), v28);
          if ([v3 isKVSEncrypted])
          {
            v31 = @"SSID";
          }

          else
          {
            v31 = @"SSID_STR";
          }

          v32 = [ValueAtIndex objectForKeyedSubscript:v31];
          if (v32 && ![v32 compare:v27])
          {
            CFArrayRemoveValueAtIndex(*(v4 + 144), v28);
          }

          else
          {
            ++v28;
          }

          Count = CFArrayGetCount(*(v4 + 144));
          objc_autoreleasePoolPop(v29);
        }

        while (v28 < Count);
      }

      CFArrayAppendValue(*(v4 + 144), a3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(handler) = 136315906;
        *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
        OUTLINED_FUNCTION_5();
        LODWORD(v67) = 2778;
        WORD2(v67) = 2112;
        *(&v67 + 6) = v27;
        OUTLINED_FUNCTION_8();
        v33 = OUTLINED_FUNCTION_2_0();
        _os_log_send_and_compose_impl(v33, v34, v35, v36, v37, v38, 0, v39);
      }

      if (Count)
      {
        goto LABEL_42;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(handler) = 136315650;
        *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4();
        v40 = OUTLINED_FUNCTION_2_0();
        _os_log_send_and_compose_impl(v40, v41, v42, v43, v44, v45, 0, v46);
      }

      v47 = *(v4 + 16);
      if (v47 && (v48 = *(v4 + 24)) != 0)
      {
        v49 = *(v4 + 208);
        if (v49)
        {
          CFRunLoopAddSource(v47, v49, v48);
          v50 = *(v4 + 32);
          if (!v50)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v50 = *(v4 + 32);
        if (v50)
        {
LABEL_38:
          *&handler = MEMORY[0x277D85DD0];
          *(&handler + 1) = 3221225472;
          v66 = ____WiFiCloudSyncEngineStartKeychainChangedNotifications_block_invoke;
          *&v67 = &__block_descriptor_40_e8_v12__0i8l;
          *(&v67 + 1) = v4;
          notify_register_dispatch(kKeychainChangedNotificationName, (v4 + 192), v50, &handler);
LABEL_39:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_42:
            __WiFiCloudSyncEngineCheckWaitingForPasswordList(v4, v3);
            return;
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_0();
LABEL_41:
          v58 = OUTLINED_FUNCTION_2_0();
          _os_log_send_and_compose_impl(v58, v59, v60, v61, v62, v63, 0, v64);
          goto LABEL_42;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }
      }

      LODWORD(handler) = 136315650;
      *(&handler + 4) = "__WiFiCloudSyncEngineStartKeychainChangedNotifications";
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_4();
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
LABEL_49:
    LODWORD(handler) = 136315650;
    *(&handler + 4) = "__WiFiCloudSyncEngineAddToWaitingForPasswordList";
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4();
    goto LABEL_36;
  }
}

uint64_t __WiFiCloudSyncEngineGetNetworkSecurity(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_22();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

LABEL_22:
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v10 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, 0, v16);
    return 0;
  }

  if (![v3 isKVSEncrypted])
  {
    v9 = [v2 objectForKey:@"WEP"];
    if (!v9 || ([v9 BOOLValue] & 1) == 0)
    {
      if (![v2 objectForKey:@"WPA3_RSN_IE"])
      {
        if (![v2 objectForKey:@"RSN_IE"])
        {
          return 2 * ([v2 objectForKey:@"WPA_IE"] != 0);
        }

        return 3;
      }

      return 4;
    }

    return 1;
  }

  v4 = [v2 objectForKey:@"isWEP"];
  if (v4 && ([v4 BOOLValue] & 1) != 0)
  {
    return 1;
  }

  v5 = [v2 objectForKey:@"isWPA3"];
  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    return 4;
  }

  v6 = [v2 objectForKey:@"isWPA2"];
  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    return 3;
  }

  v7 = [v2 objectForKey:@"isWPA"];
  if (!v7 || ([v7 BOOLValue] & 1) == 0)
  {
    return 0;
  }

  return 2;
}

void WiFiCloudSyncEngineRemoveNetworkFromKnownNetworksList(uint64_t a1, void *a2, void *a3)
{
  if (a1 && a3)
  {
    if (*(a1 + 104))
    {
      if (*(a1 + 80))
      {
        if (![a2 isKVSEncrypted] || __WiFiCloudSyncEngineIsNetworkSyncableFromCloud(a2, a3))
        {
          NetworkFromCloudFormatCallback = __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback(a1, a2, a3);
          if (NetworkFromCloudFormatCallback)
          {
            v7 = NetworkFromCloudFormatCallback;
            (*(a1 + 80))(NetworkFromCloudFormatCallback, *(a1 + 136));
            v8 = *(a1 + 144);
            if (v8)
            {
              Count = CFArrayGetCount(v8);
              v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (Count)
              {
                if (v10)
                {
                  OUTLINED_FUNCTION_17();
                  OUTLINED_FUNCTION_21();
                  OUTLINED_FUNCTION_8();
                  v11 = OUTLINED_FUNCTION_2_0();
                  _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, 0, v17);
                }

                if ([a2 isKVSEncrypted])
                {
                  v18 = @"SSID";
                }

                else
                {
                  v18 = @"SSID_STR";
                }

                v19 = [a3 objectForKeyedSubscript:v18];
                if (Count >= 1)
                {
                  v20 = v19;
                  v21 = 0;
                  v22 = MEMORY[0x277D86220];
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), v21);
                    if ([a2 isKVSEncrypted])
                    {
                      v24 = @"SSID";
                    }

                    else
                    {
                      v24 = @"SSID_STR";
                    }

                    v25 = [ValueAtIndex objectForKeyedSubscript:v24];
                    if (v25 && ![v25 compare:v20])
                    {
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        OUTLINED_FUNCTION_17();
                        OUTLINED_FUNCTION_21();
                        OUTLINED_FUNCTION_8();
                        v26 = OUTLINED_FUNCTION_2_0();
                        _os_log_send_and_compose_impl(v26, v27, v28, v29, &dword_273EB5000, v22, 0, "[WIFICLOUDSYNC] %s (%s:%u)Remove <%@> from passwords waiting list");
                      }

                      CFArrayRemoveValueAtIndex(*(a1 + 144), v21);
                    }

                    else
                    {
                      ++v21;
                    }
                  }

                  while (v21 < CFArrayGetCount(*(a1 + 144)));
                }

                if (!CFArrayGetCount(*(a1 + 144)))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_17();
                    OUTLINED_FUNCTION_21();
                    OUTLINED_FUNCTION_4();
                    v30 = OUTLINED_FUNCTION_2_0();
                    _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, v35, 0, v36);
                  }

                  __WiFiCloudSyncEngineStopKeychainChangedNotifications(a1);
                }

                goto LABEL_31;
              }

              if (v10)
              {
                goto LABEL_44;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
LABEL_44:
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_4();
              v44 = OUTLINED_FUNCTION_2_0();
              _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v49, 0, v50);
            }

LABEL_31:
            CFRelease(v7);
            return;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_40:
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_4();
            v37 = OUTLINED_FUNCTION_2_0();
            _os_log_send_and_compose_impl(v37, v38, v39, v40, v41, v42, 0, v43);
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_40;
  }
}

void WiFiCloudSyncEnginePruneNetworksInCloud(uint64_t a1, void *a2, void *a3)
{
  v106 = *MEMORY[0x277D85DE8];
  if (a2 && ([a2 isKVSEncrypted] & 1) == 0)
  {
    v98 = a2;
    v5 = [a3 count];
    v6 = [a3 allKeys];
    if (v5)
    {
      v8 = v6;
      v9 = 0;
      *&v7 = 136315650;
      v96 = v7;
      do
      {
        v10 = [v8 objectAtIndex:{v9, v94}];
        if (OUTLINED_FUNCTION_23())
        {
          v100[0] = 136316162;
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_15();
          v101 = 1438;
          v102 = 2048;
          v103 = v9;
          v104 = 2112;
          v105 = v10;
          LODWORD(v95) = 48;
          v94 = v100;
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_14();
          _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, v17, "[WIFICLOUDSYNC] %s (%s:%u)kvs item #%lu - <%@>");
        }

        if (v10)
        {
          v18 = [v10 length];
          if (v18 < [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length])
          {
            v19 = [a3 objectForKey:v10];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && !__WiFiCloudSyncEngineGetNetworkSecurity(v98, v19))
            {
              if (v19)
              {
                if (a1)
                {
                  if (*(a1 + 56))
                  {
                    if ([v98 isKVSEncrypted])
                    {
                      v20 = @"SSID";
                    }

                    else
                    {
                      v20 = @"SSID_STR";
                    }

                    v21 = [v19 objectForKeyedSubscript:{v20, v94}];
                    v22 = OUTLINED_FUNCTION_23();
                    if (v21)
                    {
                      if (v22)
                      {
                        v100[0] = 136315906;
                        OUTLINED_FUNCTION_16();
                        OUTLINED_FUNCTION_15();
                        v101 = 1404;
                        v102 = 2112;
                        v103 = v21;
                        LODWORD(v95) = 38;
                        v94 = v100;
                        OUTLINED_FUNCTION_2_0();
                        OUTLINED_FUNCTION_14();
                        _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, v35, v36, "[WIFICLOUDSYNC] %s (%s:%u)<%@>");
                      }

                      if ([v98 isKVSEncrypted])
                      {
                        v94 = @"network.";
                        v95 = v21;
                        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@"];
                        v38 = v98;
                      }

                      else
                      {
                        v38 = v98;
                        v37 = v21;
                      }

                      [v38 removeFromKVStore:v37];
                    }

                    else if (v22)
                    {
                      OUTLINED_FUNCTION_24(v22, v23, v24, v25, v26, v27, v28, v29, v94, v95, v96);
                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_15();
                      v101 = 1403;
                      OUTLINED_FUNCTION_11();
                      OUTLINED_FUNCTION_2_0();
                      OUTLINED_FUNCTION_14();
                      _os_log_send_and_compose_impl(v84, v85, v86, v87, v88, v89, v90, "[WIFICLOUDSYNC] %s (%s:%u)null ssidStr", v100);
                    }
                  }

                  else
                  {
                    v69 = OUTLINED_FUNCTION_23();
                    if (v69)
                    {
                      OUTLINED_FUNCTION_24(v69, v70, v71, v72, v73, v74, v75, v76, v94, v95, v96);
                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_15();
                      v101 = 1397;
                      OUTLINED_FUNCTION_11();
                      OUTLINED_FUNCTION_2_0();
                      OUTLINED_FUNCTION_14();
                      _os_log_send_and_compose_impl(v77, v78, v79, v80, v81, v82, v83, "[WIFICLOUDSYNC] %s (%s:%u)wifi icloud syncing is disabled", v100);
                    }
                  }
                }

                else
                {
                  v54 = OUTLINED_FUNCTION_23();
                  if (v54)
                  {
                    OUTLINED_FUNCTION_24(v54, v55, v56, v57, v58, v59, v60, v61, v94, v95, v96);
                    OUTLINED_FUNCTION_16();
                    OUTLINED_FUNCTION_15();
                    v101 = 1395;
                    OUTLINED_FUNCTION_11();
                    OUTLINED_FUNCTION_2_0();
                    OUTLINED_FUNCTION_14();
                    _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, v68, "[WIFICLOUDSYNC] %s (%s:%u)null syncEngine", v100);
                  }
                }
              }

              else
              {
                v39 = OUTLINED_FUNCTION_23();
                if (v39)
                {
                  OUTLINED_FUNCTION_24(v39, v40, v41, v42, v43, v44, v45, v46, v94, v95, v96);
                  OUTLINED_FUNCTION_16();
                  OUTLINED_FUNCTION_15();
                  v101 = 1393;
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_2_0();
                  OUTLINED_FUNCTION_14();
                  _os_log_send_and_compose_impl(v47, v48, v49, v50, v51, v52, v53, "[WIFICLOUDSYNC] %s (%s:%u)null cloudNetwork", v100);
                }
              }
            }
          }
        }

        ++v9;
      }

      while (v5 != v9);
    }

    v91 = [MEMORY[0x277CCABB0] numberWithInteger:{2, v94}];
    v92 = [objc_msgSend(a3 objectForKeyedSubscript:{@"WiFiCloudSyncEngineNonSSIDKeyPrefix_NonNetworkContainer", "mutableCopy"}];
    if (!v92)
    {
      v92 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v92 setObject:v91 forKeyedSubscript:@"WiFiCloudSyncEngineNonSSIDKeyPrefix_KVSVersion"];
    [v92 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UserDirected"];
    [objc_msgSend(v98 "keyValueStore")];
    [objc_msgSend(v98 "keyValueStore")];
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __WiFiCloudSyncEnginePruneNetworksInCloud_block_invoke;
    block[3] = &unk_279EBBAB8;
    block[4] = v98;
    dispatch_async(global_queue, block);
  }
}

void __WiFiCloudSyncEngineAddNetworkToCloudAndPurge(uint64_t a1, void *a2, CFTypeRef cf, int a4)
{
  if (!cf)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v45 = OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v50, 0, v51);
    }

    v31 = 0;
    v8 = 0;
    goto LABEL_76;
  }

  v8 = CFRetain(cf);
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 56))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 112))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!*(a1 + 96))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  CloudFromNetworkFormatCallback = __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback(a1, a2, v8);
  if (!CloudFromNetworkFormatCallback)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_74:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v52 = OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl(v52, v53, v54, v55, v56, v57, 0, v58);
    }

LABEL_75:
    v31 = 0;
LABEL_76:
    v44 = 0;
    v10 = 0;
    goto LABEL_57;
  }

  v10 = CloudFromNetworkFormatCallback;
  if ([a2 isKVSEncrypted])
  {
    v11 = @"SSID";
  }

  else
  {
    v11 = @"SSID_STR";
  }

  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  if (v13)
  {
    LODWORD(v80) = 136315906;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_6();
    v14 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v19, 0, v20);
  }

  if (([a2 isKVSEncrypted] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v10 objectForKey:@"NOT_SYNCABLE"];
      if (v21 && [v21 BOOLValue])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v22 = [v10 objectForKey:@"IS_NETWORK_EAP"];
        if (v22)
        {
          if ([v22 BOOLValue])
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }
          }

          else
          {
            v23 = [v10 objectForKey:@"IS_NETWORK_CUSTOMIZED"];
            if (v23)
            {
              if ([v23 BOOLValue])
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }
              }

              else
              {
                v24 = [v10 objectForKey:@"IS_NETWORK_CONFIGURED"];
                if (v24)
                {
                  if ([v24 BOOLValue])
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    v25 = [v10 objectForKey:@"AP_MODE"];
                    if (v25 && [v25 intValue] != 2)
                    {
                      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_118;
                      }
                    }

                    else
                    {
                      v26 = [v10 objectForKey:@"IS_NETWORK_EXPIRABLE"];
                      if (v26 && [v26 BOOLValue])
                      {
                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        v27 = [v10 objectForKey:@"enabled"];
                        if (v27 && ([v27 BOOLValue] & 1) == 0)
                        {
                          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_118;
                          }
                        }

                        else
                        {
                          v28 = [v10 objectForKey:@"IS_NETWORK_CARPLAY_ONLY"];
                          if (v28 && [v28 BOOLValue])
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (__WiFiCloudSyncEngineIsNetworkHidden(a2, v10))
                          {
                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (__WiFiCloudSyncEngineGetNetworkSecurity(a2, v10))
                          {
                            v29 = [v10 objectForKey:@"IS_NETWORK_CAPTIVE"];
                            if (v29 && ![v29 BOOLValue])
                            {
                              goto LABEL_38;
                            }

                            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_118;
                            }
                          }

                          else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_118;
                          }
                        }
                      }
                    }
                  }
                }

                else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_118;
                }
              }
            }

            else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_118;
            }
          }
        }

        else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }
      }
    }

    else if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_118;
    }

LABEL_116:
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    goto LABEL_117;
  }

  if (!__WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted(a2, v10))
  {
    goto LABEL_118;
  }

LABEL_38:
  v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  if (!v30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_0();
LABEL_117:
      v73 = OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, v78, 0, v79);
    }

LABEL_118:
    v31 = 0;
    goto LABEL_119;
  }

  v31 = v30;
  [v30 addEntriesFromDictionary:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([a2 isKVSEncrypted] & 1) == 0)
    {
      if (![v31 objectForKey:@"AP_MODE"])
      {
        [v31 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 2), @"AP_MODE"}];
      }

      if (![v31 objectForKey:@"UserDirected"])
      {
        [v31 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"UserDirected"}];
      }

      if (![v31 objectForKey:@"enabled"])
      {
        [v31 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"enabled"}];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v80) = 136315650;
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_0();
    v59 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v59, v60, v61, v62, v63, v64, 0, v65);
  }

  if (!__WiFiCloudSyncEngineGetNetworkSecurity(a2, v31))
  {
LABEL_52:
    __WiFiCloudSyncEngineAddVersionsToCloudNetwork(v31);
    v41 = [a2 isKVSEncrypted];
    v42 = objc_alloc(MEMORY[0x277CBEAC0]);
    if (v41)
    {
      v43 = [v42 initWithObjectsAndKeys:{v31, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"network.", v12), 0, v80}];
    }

    else
    {
      v43 = [v42 initWithObjectsAndKeys:{v31, v12, 0, v80}];
    }

    v44 = v43;
    if (v43)
    {
      [a2 addToKVStore:v43 synchronize:a4 != 0];
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_119;
    }

    goto LABEL_88;
  }

  v32 = (*(a1 + 88))(cf, *(a1 + 136));
  v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v33)
    {
      LODWORD(v80) = 136315650;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_0();
      v34 = OUTLINED_FUNCTION_2_0();
      _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, v39, 0, v40);
    }

    (*(a1 + 96))(v8, 1, *(a1 + 136));
    goto LABEL_52;
  }

  if (v33)
  {
LABEL_88:
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_0();
    v66 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v66, v67, v68, v69, v70, v71, 0, v72);
  }

LABEL_119:
  v44 = 0;
LABEL_57:

  if (v8)
  {
    CFRelease(v8);
  }
}

void WiFiCloudSyncEngineCreate_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

uint64_t WiFiCloudSyncEngineScheduleWithQueue_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainChangedNotification_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineSetupKeychainSyncStateChangeNotification_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineUnScheduleWithQueue_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineStopEngine_cold_1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineStopEngine_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineScheduleWithRunLoop_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineUnScheduleWithRunLoop_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_5()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_6()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_7()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_8(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_9()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacks_cold_10()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_5()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_6()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_7()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_8(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_9()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRegisterCallbacksWithQueue_cold_10()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineCheckKeychainSyncState_cold_1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_2()
{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v0 integerValue];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    v1 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_6()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_8()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_9()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_10()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_11()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_12()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_13()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_14()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_15()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_16()
{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    [v0 integerValue];
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    v1 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableFromCloud_cold_17()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineCreateNetworkFromCloudFormatCallback_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

uint64_t WiFiCloudSyncEngineStartEngine_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

void WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_1(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  OUTLINED_FUNCTION_19();
}

void WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_3(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_5()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloudWithKVS_cold_6()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

void __WiFiCloudSyncEngineCreateCloudFromNetworkFormatCallback_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void __WiFiCloudSyncEngineIsCloudNetworkOnDevice_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineAddNetworkToCloud_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_1(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v5 = OUTLINED_FUNCTION_2_0();
    result = _os_log_send_and_compose_impl(v5, v6, v7, v8, v9, v10, 0, v11);
  }

  *a3 = a2;
  return result;
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

void WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_6()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_19();
}

uint64_t WiFiCloudSyncEngineRemoveNetworkFromCloud_cold_7()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t WiFiCloudSyncEngineMergeKnownNetworksToCloud_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineRelease_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineKeychainSyncStateChanged_cold_1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineKeychainChangedNotificationCallback_cold_1(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_1(__CFRunLoopTimer *a1)
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    CFRunLoopTimerGetNextFireDate(a1);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    v3 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v3, v4, v5, v6, v7, v8, 0, v9);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_6();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_5()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_6()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineCheckWaitingForPasswordList_cold_7()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_3()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineStopKeychainChangedNotifications_cold_4()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudChangeEvent_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_1()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

uint64_t __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_1(io_registry_entry_t a1, void *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"model", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [v6 initWithFormat:@"%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", CFDataGetBytePtr(v5), 4)];
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;

  return IOObjectRelease(a1);
}

uint64_t __WiFiCloudSyncEngineAddVersionsToCloudNetwork_cold_2()
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v1 = OUTLINED_FUNCTION_2_0();
    return _os_log_send_and_compose_impl(v1, v2, v3, v4, v5, v6, 0, v7);
  }

  return result;
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_5()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_6()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_8()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_9()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_10()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_11()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_12()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkSyncableToCloudEncrypted_cold_13()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void __WiFiCloudSyncEngineIsNetworkHidden_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    v0 = OUTLINED_FUNCTION_2_0();
    _os_log_send_and_compose_impl(v0, v1, v2, v3, v4, v5, 0, v6);
  }

  OUTLINED_FUNCTION_13();
}