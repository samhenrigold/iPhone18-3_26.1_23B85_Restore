@interface BMBlockMonitoring
+ (id)computePersistencePath:(int64_t *)path error:(id *)error;
+ (id)monitorForTestingWithBootArgs:(id)args;
+ (id)sanitizedSignature:(id)signature maxLength:(int64_t)length;
+ (id)sharedManager;
+ (void)readEntitlement:(__CFString *)entitlement withBlock:(id)block;
- (BOOL)_test_getPresentAlert;
- (BOOL)isProcessBeingDebugged;
- (char)initForTesting:(void *)testing bootArgs:;
- (id)_test_getAlertPath;
- (id)_test_getOSVersion;
- (id)_test_getPanicReason;
- (id)_test_getSignaturePath;
- (id)alertPath;
- (id)signaturePath;
- (uint64_t)cleanup;
- (uint64_t)parseBootArgInt:(void *)int where:;
- (unsigned)_test_getDebuggerState;
- (unsigned)_test_getPanicDeny;
- (unsigned)_test_getResultType;
- (void)_test_allowPanic:(BOOL)panic;
- (void)_test_resetVariables;
- (void)_test_setActionDoneCallback:(id)callback;
- (void)_test_setDebuggerState:(unsigned __int8)state;
- (void)_test_setEnabled:(BOOL)enabled;
- (void)_test_setExecutionDuration:(unint64_t)duration;
- (void)_test_setLogFlushSleep:(unsigned int)sleep;
- (void)_test_setOSVersion:(id)version;
- (void)_test_setPanicPacing:(int64_t)pacing;
- (void)_test_setPanicSleep:(unsigned int)sleep;
- (void)_test_setPostPersistenceSleep:(unsigned int)sleep;
- (void)_test_setPresentAlert:(BOOL)alert;
- (void)dealloc;
- (void)executeBlockWithSignature:(const char *)signature timeout:(unint64_t)timeout options:(int)options diagnosticCollectionBlock:(id)block block:(id)a7;
- (void)logFault:(uint64_t)fault thread_id:(uint64_t)thread_id reason:;
- (void)logPanicDeny:(uint64_t)deny thread_id:(uint64_t)thread_id reason:(int)reason demoted:;
- (void)lookForDeviceReadiness;
- (void)showBootArgsAlertWithCheckingFirst:(uint64_t)first;
- (void)takeActionIfRelevant:(uint64_t)relevant thread_id:(NSObject *)thread_id timeout:(unsigned int)timeout options:(_BYTE *)options recovered:(void *)recovered diagnosticCollectionBlock:;
@end

@implementation BMBlockMonitoring

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BMBlockMonitoring sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __34__BMBlockMonitoring_sharedManager__block_invoke()
{
  sharedManager_sharedManager = [[BMBlockMonitoring alloc] initForTesting:0 bootArgs:?];

  return MEMORY[0x2821F96F8]();
}

- (char)initForTesting:(void *)testing bootArgs:
{
  v77 = *MEMORY[0x277D85DE8];
  testingCopy = testing;
  if (!self)
  {
    v11 = 0;
    goto LABEL_60;
  }

  v69.receiver = self;
  v69.super_class = BMBlockMonitoring;
  v7 = objc_msgSendSuper2(&v69, sel_init);
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_60;
  }

  *(v7 + 8) = a2;
  if (a2)
  {
    objc_storeStrong(v7 + 19, testing);
  }

  *(v8 + 9) = xmmword_241BB4590;
  v9 = os_log_create("com.apple.blockmonitoring", "BMBlockMonitoring");
  v10 = v8[11];
  v8[11] = v9;

  *(v8 + 40) = 1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke;
  v62[3] = &unk_278D0FD38;
  v64 = &v65;
  v11 = v8;
  v63 = v11;
  [BMBlockMonitoring readEntitlement:@"com.apple.security.exception.sysctl.read-only" withBlock:v62];
  if ((v66[3] & 1) == 0)
  {
    if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
    {
      [BMBlockMonitoring initForTesting:bootArgs:];
    }

    goto LABEL_14;
  }

  if (v8[5])
  {
    *v70 = 0;
    if ([(BMBlockMonitoring *)v11 parseBootArgInt:v70 where:?])
    {
      if (*v70)
      {
        *(v11 + 7) = *v70;
        v12 = v8[11];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v11 + 7);
          *buf = 134217984;
          *&buf[4] = v13;
          _os_log_impl(&dword_241BAE000, v12, OS_LOG_TYPE_DEFAULT, "Detected boot-arg flags 0x%llx", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
        {
          [BMBlockMonitoring initForTesting:bootArgs:];
        }

        *(v8 + 40) = 0;
        atomic_store(0, v11 + 42);
      }
    }

    else
    {
      *(v11 + 7) = 0;
    }

    if ((v8[5] & 1) != 0 && (os_variant_has_internal_diagnostics() & 1) == 0)
    {
      v30 = *(v11 + 7);
      v31 = v8[11];
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if ((v30 & 0x80) == 0)
      {
        if (v32)
        {
          *buf = 0;
          _os_log_impl(&dword_241BAE000, v31, OS_LOG_TYPE_DEFAULT, "Disabling feature - customer machine", buf, 2u);
        }

LABEL_14:
        *(v8 + 40) = 0;
        goto LABEL_15;
      }

      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_241BAE000, v31, OS_LOG_TYPE_DEFAULT, "Allowing customer machine via boot-arg", buf, 2u);
      }
    }
  }

LABEL_15:
  if (*(v8 + 40) == 1 && MGGetBoolAnswer())
  {
    v14 = v8[11];
    if ((v11[57] & 2) != 0)
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241BAE000, v14, OS_LOG_TYPE_DEFAULT, "Allowing virtual device via boot-arg", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:bootArgs:];
      }

      *(v8 + 40) = 0;
    }
  }

  if (*(v8 + 40) != 1)
  {
    goto LABEL_53;
  }

  *buf = 0;
  if (![(BMBlockMonitoring *)v11 parseBootArgInt:buf where:?]|| (buf[1] & 4) == 0)
  {
    v15 = v8[11];
    if (v11[57])
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *v70 = 0;
        _os_log_impl(&dword_241BAE000, v15, OS_LOG_TYPE_DEFAULT, "Allowing panics without core dumps via boot-arg", v70, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:bootArgs:];
      }

      v11[41] = 1;
      if (([(BMBlockMonitoring *)v11 parseBootArgInt:0 where:?]& 1) == 0)
      {
        atomic_store(1u, v11 + 42);
        *(v11 + 6) = *buf;
      }
    }
  }

  if ((v8[5] & 1) == 0)
  {
    goto LABEL_53;
  }

  *buf = 0;
  v16 = [(BMBlockMonitoring *)v11 parseBootArgInt:buf where:?];
  if (*buf == -1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = v8[11];
    if ((v11[57] & 4) != 0)
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *v70 = 0;
        _os_log_impl(&dword_241BAE000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring watchdog disablement via boot-arg", v70, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:bootArgs:];
      }

      *(v8 + 40) = 0;
      atomic_store(0, v11 + 42);
    }
  }

  if (v8[5])
  {
    v19 = objc_autoreleasePoolPush();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (([bundleIdentifier isEqualToString:@"com.apple.springboard"] & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.backboardd") & 1) == 0 && (v8[1] & 1) == 0)
    {
      v22 = v8[11];
      if ((v11[57] & 8) != 0)
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241BAE000, v22, OS_LOG_TYPE_DEFAULT, "Allowing BlockMonitoring in any process via boot-arg", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
        {
          [BMBlockMonitoring initForTesting:bootArgs:];
        }

        *(v8 + 40) = 0;
        atomic_store(0, v11 + 42);
      }
    }

    objc_autoreleasePoolPop(v19);
    v33 = *(v8 + 40);
    buf[0] = 0;
    if (v33)
    {
      *v70 = 20;
      if (sysctlbyname("kern.osversion", buf, v70, 0, 0) < 0)
      {
        v36 = *(v11 + 7);
        v37 = v8[11];
        v38 = v37;
        if ((v36 & 8) != 0)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *__error();
            *v73 = 67109120;
            v74 = v40;
            _os_log_impl(&dword_241BAE000, v38, OS_LOG_TYPE_DEFAULT, "Ignoring failure to gather os version: %{errno}d - ignoring via boot-arg", v73, 8u);
          }
        }

        else
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v39 = __error();
            [(BMBlockMonitoring *)v39 initForTesting:v73 bootArgs:v38];
          }

          *(v8 + 40) = 0;
          atomic_store(0, v11 + 42);
        }
      }

      else
      {
        v76 = 0;
        v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:buf encoding:4];
        v35 = *(v11 + 8);
        *(v11 + 8) = v34;
      }

      if (v8[5])
      {
        v60 = 0;
        v61 = -1;
        v41 = [BMBlockMonitoring computePersistencePath:&v61 error:&v60];
        v42 = v60;
        if (v41)
        {
          objc_storeStrong(v11 + 3, v41);
          *(v11 + 4) = v61;
        }

        else
        {
          if (v61 != -1)
          {
            sandbox_extension_release();
          }

          v43 = v8[11];
          if ((v11[56] & 0x40) != 0)
          {
            if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
            {
              *v70 = 138412290;
              *&v70[4] = v42;
              _os_log_impl(&dword_241BAE000, v43, OS_LOG_TYPE_DEFAULT, "Container not found: %@ - ignoring via boot-arg", v70, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
            {
              [BMBlockMonitoring initForTesting:bootArgs:];
            }

            *(v8 + 40) = 0;
            atomic_store(0, v11 + 42);
          }
        }

        if (v8[5])
        {
          v44 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
          v45 = dispatch_queue_create("com.apple.blockmonitoring.BMBlockMonitoring", v44);
          v46 = *(v11 + 2);
          *(v11 + 2) = v45;

          v47 = *(v11 + 2);
          if (!v47)
          {
            _os_assert_log();
            _os_crash();
            [BMBlockMonitoring initForTesting:bootArgs:];
          }

          if (v8[5])
          {
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_39;
            v58[3] = &unk_278D0FD60;
            v48 = v11;
            v59 = v48;
            [BMBlockMonitoring readEntitlement:@"com.apple.private.allow-ext_paniclog" withBlock:v58];
            if (v48[96] == 1)
            {
              v49 = v8[11];
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *v70 = 0;
                _os_log_impl(&dword_241BAE000, v49, OS_LOG_TYPE_DEFAULT, "Process is properly entitled for panic with data", v70, 2u);
              }

              getpid();
              v48[96] = sandbox_check() == 0;
            }

            v50 = v8[11];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              if (v48[96])
              {
                v51 = " ";
              }

              else
              {
                v51 = " not ";
              }

              *v70 = 136315138;
              *&v70[4] = v51;
              _os_log_impl(&dword_241BAE000, v50, OS_LOG_TYPE_DEFAULT, "BM will%sbe using panic_with_data", v70, 0xCu);
            }

            if (v8[5])
            {
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46;
              v56[3] = &unk_278D0FD60;
              v52 = v48;
              v57 = v52;
              [BMBlockMonitoring readEntitlement:@"com.apple.private.logging.flush-buffers" withBlock:v56];

              v53 = *(v8 + 40);
              atomic_store(0, v52 + 25);
              if (v53)
              {
                [(BMBlockMonitoring *)v52 lookForDeviceReadiness];
              }

              goto LABEL_55;
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_53:
    buf[0] = 0;
  }

  atomic_store(0, v11 + 25);
LABEL_55:
  v23 = atomic_load(v11 + 42);
  if (v23)
  {
    v24 = *(v11 + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_47;
    block[3] = &unk_278D0FD88;
    v55 = v11;
    dispatch_async(v24, block);
  }

  v25 = v8[11];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v8 + 40);
    v27 = v11[41];
    v28 = atomic_load(v11 + 42);
    *v70 = 67109632;
    *&v70[4] = v26;
    *&v70[8] = 1024;
    *&v70[10] = v27;
    v71 = 1024;
    v72 = v28 & 1;
    _os_log_impl(&dword_241BAE000, v25, OS_LOG_TYPE_DEFAULT, "BM state: %d (%d) - %d", v70, 0x14u);
  }

  _Block_object_dispose(&v65, 8);
LABEL_60:

  return v11;
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke(uint64_t a1, void *cf, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(&dword_241BAE000, v5, OS_LOG_TYPE_DEFAULT, "Failed gathering entitlement for boot-args reading: %@", &v8, 0xCu);
    }
  }

  else if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFArrayGetTypeID())
    {
      *(*(*(a1 + 40) + 8) + 24) = [cf containsObject:@"kern.bootargs"];
    }
  }
}

- (uint64_t)parseBootArgInt:(void *)int where:
{
  v5 = a2;
  if (self)
  {
    if (*(self + 8) == 1 && (v6 = *(self + 152)) != 0 && ([v6 objectForKey:v5], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      if (int)
      {
        v8 = [*(self + 152) objectForKey:v5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [BMBlockMonitoring parseBootArgInt:where:];
        }

        *int = [v8 longLongValue];
      }

      v9 = 1;
    }

    else
    {
      [v5 UTF8String];
      v9 = os_parse_boot_arg_int();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_39(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(&dword_241BAE000, v5, OS_LOG_TYPE_DEFAULT, "Failed gathering entitlement for panic_with_data: %@", &v8, 0xCu);
    }
  }

  else if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFBooleanGetTypeID())
    {
      *(*(a1 + 32) + 96) = CFBooleanGetValue(cf) != 0;
    }
  }
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_ERROR))
    {
      __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_1();
    }
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CFBooleanGetTypeID()) && CFBooleanGetValue(cf))
  {
    *(*(a1 + 32) + 105) = 1;
    if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_DEBUG))
    {
      __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_2();
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_ERROR))
  {
    __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_3();
  }
}

- (void)lookForDeviceReadiness
{
  v7 = *self;
  uTF8String = [v7 UTF8String];
  v9 = *a2;
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_54;
  a3[3] = &unk_278D0FDB0;
  a3[4] = a4;
  notify_register_dispatch(uTF8String, &lookForDeviceReadiness_buddyToken, v9, a3);
}

void __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke(uint64_t a1, int token)
{
  v9 = *MEMORY[0x277D85DE8];
  notify_cancel(token);
  v3 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 1u, memory_order_relaxed);
  v4 = *(*(a1 + 32) + 88);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "Device has been unlocked";
    v7 = 1024;
    v8 = v3 | 1;
    _os_log_impl(&dword_241BAE000, v4, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", &v5, 0x12u);
  }
}

void __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_54(uint64_t a1, int token)
{
  v9 = *MEMORY[0x277D85DE8];
  notify_cancel(token);
  v3 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 2u, memory_order_relaxed);
  v4 = *(*(a1 + 32) + 88);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "Device has completed setup";
    v7 = 1024;
    v8 = v3 | 2;
    _os_log_impl(&dword_241BAE000, v4, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", &v5, 0x12u);
  }
}

uint64_t __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_56(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot())
  {
    v2 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 1u, memory_order_relaxed);
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Device has been once unlocked";
      *&buf[12] = 1024;
      *&buf[14] = v2 | 1;
      _os_log_impl(&dword_241BAE000, v3, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", buf, 0x12u);
    }

    if (lookForDeviceReadiness_firstUnlockToken != -1)
    {
      notify_cancel(lookForDeviceReadiness_firstUnlockToken);
    }
  }

  result = SetupAssistantLibraryCore(0);
  if (result)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v5 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    v14 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
      v16 = &unk_278D0FE80;
      v17 = &v11;
      v6 = SetupAssistantLibrary();
      v7 = dlsym(v6, "BYSetupAssistantNeedsToRun");
      *(v17[1] + 24) = v7;
      getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(v17[1] + 24);
      v5 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v5)
    {
      [BMBlockMonitoring lookForDeviceReadiness];
      __break(1u);
    }

    result = v5(v8);
    if ((result & 1) == 0)
    {
      v9 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 2u, memory_order_relaxed);
      v10 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Device does not require setup";
        *&buf[12] = 1024;
        *&buf[14] = v9 | 2;
        _os_log_impl(&dword_241BAE000, v10, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", buf, 0x12u);
      }

      result = lookForDeviceReadiness_buddyToken;
      if (lookForDeviceReadiness_buddyToken != -1)
      {
        return notify_cancel(lookForDeviceReadiness_buddyToken);
      }
    }
  }

  return result;
}

intptr_t __104__BMBlockMonitoring_takeActionIfRelevant_thread_id_timeout_options_recovered_diagnosticCollectionBlock___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  OSLogFlushBuffers();
  sync();
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && *(v2 + 144))
  {
    v3 = *(v2 + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 144);
      v9 = 138413058;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_241BAE000, v3, OS_LOG_TYPE_INFO, "%@ (%u:%llu) sleeping for log flush recovery testing for %us", &v9, 0x22u);
    }

    sleep(*(*(a1 + 32) + 144));
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

- (void)executeBlockWithSignature:(const char *)signature timeout:(unint64_t)timeout options:(int)options diagnosticCollectionBlock:(id)block block:(id)a7
{
  blockCopy = block;
  v13 = a7;
  if (!signature)
  {
    [BMBlockMonitoring parseBootArgInt:where:];
  }

  v14 = v13;
  if (!v13)
  {
    [BMBlockMonitoring parseBootArgInt:where:];
  }

  queue = self->_queue;
  if (queue && self->_enabled && self->_deviceState == 3 && (options || !self->_coreDumpsDisabled || self->_presentAlert))
  {
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v17 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * timeout / 0xA);
    v18 = strdup(signature);
    v29 = 0;
    v19 = pthread_self();
    pthread_threadid_np(v19, &v29);
    v20 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    atomic_store(0, v20);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke;
    handler[3] = &unk_278D0FE00;
    handler[4] = self;
    v24 = v18;
    v25 = v29;
    timeoutCopy = timeout;
    v27 = v20;
    optionsCopy = options;
    v23 = blockCopy;
    dispatch_source_set_event_handler(v16, handler);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke_2;
    v21[3] = &__block_descriptor_48_e5_v8__0l;
    v21[4] = v18;
    v21[5] = v20;
    dispatch_source_set_cancel_handler(v16, v21);
    dispatch_activate(v16);
    v14[2](v14);
    *v20 = 1;
    dispatch_source_cancel(v16);
  }

  else
  {
    v13[2](v13);
  }
}

void __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke_2(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

+ (id)monitorForTestingWithBootArgs:(id)args
{
  argsCopy = args;
  v4 = [[BMBlockMonitoring alloc] initForTesting:argsCopy bootArgs:?];

  return v4;
}

- (void)_test_resetVariables
{
  if (self->_testing)
  {
    self->_test_panicDeny = 0;
    test_panicReason = self->_test_panicReason;
    self->_test_panicReason = 0;

    self->_test_resultType = 0;
    self->_test_alertShown = 0;
    test_actionDoneCallback = self->_test_actionDoneCallback;
    self->_test_actionDoneCallback = 0;
  }
}

- (void)_test_setExecutionDuration:(unint64_t)duration
{
  if (self->_testing)
  {
    self->_executionDuration = duration;
  }
}

- (void)_test_setPanicPacing:(int64_t)pacing
{
  if (self->_testing)
  {
    self->_panicPacing = pacing;
  }
}

- (void)_test_setOSVersion:(id)version
{
  versionCopy = version;
  if (self->_testing)
  {
    v6 = versionCopy;
    objc_storeStrong(&self->_osVersion, version);
    versionCopy = v6;
  }
}

- (void)_test_allowPanic:(BOOL)panic
{
  if (self->_testing)
  {
    self->_test_allowPanic = panic;
  }
}

- (void)_test_setEnabled:(BOOL)enabled
{
  if (self->_testing)
  {
    self->_enabled = enabled;
  }
}

- (void)_test_setPresentAlert:(BOOL)alert
{
  if (self->_testing)
  {
    atomic_store(alert, &self->_presentAlert);
  }
}

- (void)_test_setPanicSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_panicSleep = sleep;
  }
}

- (void)_test_setLogFlushSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_logFlushSleep = sleep;
  }
}

- (void)_test_setPostPersistenceSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_postPersistenceSleep = sleep;
  }
}

- (void)_test_setDebuggerState:(unsigned __int8)state
{
  if (self->_testing)
  {
    self->_test_debuggerState = state;
  }
}

- (id)_test_getSignaturePath
{
  if (self->_testing)
  {
    signaturePath = [(BMBlockMonitoring *)self signaturePath];
  }

  else
  {
    signaturePath = 0;
  }

  return signaturePath;
}

- (id)_test_getAlertPath
{
  if (self->_testing)
  {
    alertPath = [(BMBlockMonitoring *)self alertPath];
  }

  else
  {
    alertPath = 0;
  }

  return alertPath;
}

- (id)_test_getPanicReason
{
  if (self->_testing)
  {
    v3 = self->_test_panicReason;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)_test_getPanicDeny
{
  if (self->_testing)
  {
    return self->_test_panicDeny;
  }

  else
  {
    return 0;
  }
}

- (unsigned)_test_getResultType
{
  if (self->_testing)
  {
    return self->_test_resultType;
  }

  else
  {
    return 0;
  }
}

- (id)_test_getOSVersion
{
  if (self->_testing)
  {
    v3 = self->_osVersion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_test_getPresentAlert
{
  if (self->_testing)
  {
    v2 = atomic_load(&self->_presentAlert);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (unsigned)_test_getDebuggerState
{
  if (self->_testing)
  {
    return self->_test_debuggerState;
  }

  else
  {
    return 0;
  }
}

- (void)_test_setActionDoneCallback:(id)callback
{
  self->_test_actionDoneCallback = MEMORY[0x245CF9470](callback, a2);

  MEMORY[0x2821F96F8]();
}

+ (id)computePersistencePath:(int64_t *)path error:(id *)error
{
  *path = -1;
  if (container_query_create())
  {
    container_query_set_class();
    v6 = xpc_string_create("group.com.apple.BlockMonitoring");
    container_query_set_group_identifiers();

    container_query_operation_set_flags();
    container_query_set_persona_unique_string();
    if (!container_query_get_single_result())
    {
      if (error)
      {
        container_query_get_last_error();
        v10 = container_error_copy_unlocalized_description();
        if (!v10)
        {
          v9 = 0;
          *error = @"Unable to get sandbox result, and unable to get error string";
          goto LABEL_16;
        }

        v11 = v10;
        *error = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
        free(v11);
      }

      v9 = 0;
LABEL_16:
      container_query_free();
      goto LABEL_17;
    }

    v7 = container_copy_sandbox_token();
    if (v7)
    {
      v8 = sandbox_extension_consume();
      if (v8 < 0)
      {
        if (error)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get sandbox extension: %d (handle: %lld)", *__error(), v8];
          *error = v9 = 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v8 = -1;
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:container_get_path() encoding:4];
    *path = v8;
LABEL_15:
    free(v7);
    goto LABEL_16;
  }

  v9 = 0;
  if (error)
  {
    *error = @"Unable to create sandbox container query";
  }

LABEL_17:

  return v9;
}

+ (void)readEntitlement:(__CFString *)entitlement withBlock:(id)block
{
  blockCopy = block;
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    error = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, entitlement, &error);
    blockCopy[2](blockCopy, v8, error);
    if (error)
    {
      CFRelease(error);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    CFRelease(v7);
  }

  else
  {
    blockCopy[2](blockCopy, 0, 0);
  }
}

+ (id)sanitizedSignature:(id)signature maxLength:(int64_t)length
{
  v5 = [signature stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  if (sanitizedSignature_maxLength__onceToken != -1)
  {
    +[BMBlockMonitoring(Testing) sanitizedSignature:maxLength:];
  }

  v6 = [v5 componentsSeparatedByCharactersInSet:sanitizedSignature_maxLength__removedCharacters];
  v7 = [v6 componentsJoinedByString:&stru_2853CE600];

  if (length <= 0)
  {
    v10 = v7;
  }

  else
  {
    v8 = [v7 length];
    if (v8 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v8;
    }

    v10 = [v7 substringToIndex:lengthCopy];
  }

  v11 = v10;

  return v11;
}

void __59__BMBlockMonitoring_Testing__sanitizedSignature_maxLength___block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [v2 addCharactersInString:@"_"];
  v0 = [v2 invertedSet];
  v1 = sanitizedSignature_maxLength__removedCharacters;
  sanitizedSignature_maxLength__removedCharacters = v0;
}

- (BOOL)isProcessBeingDebugged
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = getpid();
  if (proc_pidinfo(v3, 13, 0, v6, 64) && (v7 & 2) != 0)
  {
    return self->_test_debuggerState == 0 || !self->_testing || self->_test_debuggerState == 2;
  }

  else
  {
    return self->_test_debuggerState == 2 && self->_testing;
  }
}

- (void)showBootArgsAlertWithCheckingFirst:(uint64_t)first
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (first)
  {
    v4 = objc_autoreleasePoolPush();
    alertPath = [(BMBlockMonitoring *)first alertPath];
    v6 = alertPath;
    if (!a2 || !access([alertPath fileSystemRepresentation], 0))
    {
      if (*(first + 8))
      {
        *(first + 137) = 1;
      }

      else
      {
        error = 0;
        v7 = *MEMORY[0x277CBF198];
        v16[0] = *MEMORY[0x277CBF188];
        v16[1] = v7;
        v17[0] = @"Missing boot-arg";
        v17[1] = @"Your device encountered an unexpectedly long stall that requires a core dump to diagnose. Please add bit 0x400 to the debug boot-arg to enable core dumps, then reboot your device and reproduce your latest actions. A core dump will be gathered automatically at the right time. Do you want to open Livability app to update the boot-arg?";
        v8 = *MEMORY[0x277CBF1C0];
        v16[2] = *MEMORY[0x277CBF1E8];
        v16[3] = v8;
        v17[2] = @"Update";
        v17[3] = @"Dismiss";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
        v10 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 2uLL, &error, v9);
        responseFlags = 0;
        CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags);
        if (!responseFlags)
        {
          0x400 = [MEMORY[0x277CCACA8] stringWithFormat:@"livability://boot-args/set?debug=0x%llx", *(first + 48) | 0x400];
          v12 = [MEMORY[0x277CBEBC0] URLWithString:0x400];
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          [defaultWorkspace openURL:v12 withOptions:0];
        }

        CFRelease(v10);
      }

      unlink([v6 fileSystemRepresentation]);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)dealloc
{
  if (self && self->_sandboxHandle != -1)
  {
    sandbox_extension_release();
    self->_sandboxHandle = -1;
  }

  v3.receiver = self;
  v3.super_class = BMBlockMonitoring;
  [(BMBlockMonitoring *)&v3 dealloc];
}

- (uint64_t)cleanup
{
  if (result)
  {
    v2 = result;
    result = *(result + 32);
    if (result != -1)
    {
      result = sandbox_extension_release();
      *(v2 + 32) = -1;
    }
  }

  return result;
}

- (id)signaturePath
{
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = +[BMBlockMonitoring signatureFileName];
      v1 = [v1 stringByAppendingPathComponent:v2];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)alertPath
{
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = +[BMBlockMonitoring alertFileName];
      v1 = [v1 stringByAppendingPathComponent:v2];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)logPanicDeny:(uint64_t)deny thread_id:(uint64_t)thread_id reason:(int)reason demoted:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (self)
  {
    OUTLINED_FUNCTION_21();
    if (v10)
    {
      if ((reason & 1) == 0)
      {
        *(self + 120) = thread_id;
        v11 = *(self + 128);
        if (v11)
        {
          (*(v11 + 16))(v11, v9, deny, thread_id, 0);
        }
      }
    }

    v12 = *(self + 88);
    if (os_signpost_enabled(v12))
    {
      v13 = [BMBlockMonitoring sanitizedSignature:v9 maxLength:255];

      if (os_signpost_enabled(*(self + 88)))
      {
        v21 = 138543874;
        v22 = v13;
        v23 = 1026;
        thread_idCopy = thread_id;
        v25 = 1026;
        reasonCopy = reason;
        OUTLINED_FUNCTION_14();
        _os_signpost_emit_with_name_impl(v14, v15, v16, v17, v18, v19, v20, 0x18u);
      }

      v9 = v13;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_241BAE000, v12, OS_LOG_TYPE_ERROR, "signposts not enabled", &v21, 2u);
    }
  }
}

- (void)logFault:(uint64_t)fault thread_id:(uint64_t)thread_id reason:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    v8 = *(self + 104);
    v9 = *(self + 88);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v20 = 136315138;
      thread_idCopy = thread_id;
      _os_log_fault_impl(&dword_241BAE000, v9, OS_LOG_TYPE_FAULT, "%s", &v20, 0xCu);
    }

    *(self + 104) = 1;
    if (*(self + 8) == 1)
    {
      *(self + 121) = 3;
      *(self + 160) = (v8 & 1) == 0;
      v10 = *(self + 128);
      if (v10)
      {
        (*(v10 + 16))(v10, v7, fault, 0, 3);
      }
    }

    v11 = *(self + 88);
    if (os_signpost_enabled(v11))
    {
      v12 = [BMBlockMonitoring sanitizedSignature:v7 maxLength:255];

      if (os_signpost_enabled(*(self + 88)))
      {
        v20 = 138543618;
        thread_idCopy = v12;
        v22 = 1026;
        v23 = (v8 & 1) == 0;
        OUTLINED_FUNCTION_14();
        _os_signpost_emit_with_name_impl(v13, v14, v15, v16, v17, v18, v19, 0x12u);
      }

      v7 = v12;
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_241BAE000, v11, OS_LOG_TYPE_ERROR, "signposts not enabled", &v20, 2u);
    }
  }
}

- (void)takeActionIfRelevant:(uint64_t)relevant thread_id:(NSObject *)thread_id timeout:(unsigned int)timeout options:(_BYTE *)options recovered:(void *)recovered diagnosticCollectionBlock:
{
  v328[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  recoveredCopy = recovered;
  if (!self)
  {
    goto LABEL_53;
  }

  if ([self isProcessBeingDebugged])
  {
    if ((*(self + 56) & 2) == 0)
    {
      v62 = OUTLINED_FUNCTION_6();
      v65 = 11;
LABEL_89:
      [(BMBlockMonitoring *)v62 logPanicDeny:v63 thread_id:v64 reason:v65 demoted:0];
      goto LABEL_53;
    }

    v15 = *(self + 88);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *__str = 0;
      _os_log_debug_impl(&dword_241BAE000, v15, OS_LOG_TYPE_DEBUG, "Allowing reporting process being debugged via boot-arg", __str, 2u);
    }
  }

  v16 = &loc_241BB4000;
  if (timeout <= 1 && *(self + 41) == 1)
  {
    v17 = 1;
    atomic_compare_exchange_strong_explicit((self + 42), &v17, 0, memory_order_relaxed, memory_order_relaxed);
    if (v17 != 1)
    {
      if (timeout)
      {
        goto LABEL_11;
      }

LABEL_88:
      v62 = OUTLINED_FUNCTION_6();
      v65 = 7;
      goto LABEL_89;
    }

    relevantCopy = relevant;
    v99 = *(self + 88);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16();
      _os_log_error_impl(v100, v101, v102, v103, v104, 0xCu);
    }

    v105 = objc_autoreleasePoolPush();
    alertPath = [(BMBlockMonitoring *)self alertPath];
    v107 = open([alertPath fileSystemRepresentation], 770, 384);
    if ((v107 & 0x80000000) == 0)
    {
      v108 = v107;
      fcntl(v107, 51);
      close(v108);
    }

    [(BMBlockMonitoring *)self showBootArgsAlertWithCheckingFirst:?];

    objc_autoreleasePoolPop(v105);
    relevant = relevantCopy;
    if (!timeout)
    {
      goto LABEL_88;
    }
  }

LABEL_11:
  v18 = getpid();
  v19 = *(self + 88);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    *&v323[6] = relevant;
    v324 = v41;
    thread_idCopy = thread_id;
    _os_log_error_impl(&dword_241BAE000, v19, OS_LOG_TYPE_ERROR, "%@ (%u:%llu) timed out after %llu seconds", __str, 0x26u);
  }

  OUTLINED_FUNCTION_21();
  if (v20 && *(self + 140))
  {
    thread_id = *(self + 88);
    if (os_log_type_enabled(thread_id, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17();
      *&v323[6] = relevant;
      v324 = v21;
      LODWORD(thread_idCopy) = v22;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v23, v24, OS_LOG_TYPE_INFO, v25, v26, 0x22u);
    }

    sleep(*(self + 140));
  }

  v27 = 0x277CCA000uLL;
  if (timeout != 2)
  {
    if (*(self + 41) == 1)
    {
      thread_id = *(self + 88);
      if (os_log_type_enabled(thread_id, OS_LOG_TYPE_INFO))
      {
        *__str = 0;
        OUTLINED_FUNCTION_12();
        _os_log_impl(v42, v43, OS_LOG_TYPE_INFO, v44, v45, 2u);
      }

      v46 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v46 logPanicDeny:v47 thread_id:v48 reason:7 demoted:1];
      goto LABEL_20;
    }

    v66 = objc_autoreleasePoolPush();
    signaturePath = [(BMBlockMonitoring *)self signaturePath];
    v67 = open([signaturePath fileSystemRepresentation], 770, 384);
    context = v66;
    if (v67 < 0)
    {
      v109 = *(self + 56);
      v110 = OUTLINED_FUNCTION_19();
      if ((v109 & 0x40) != 0)
      {
        v111 = signaturePath;
        if (!v110)
        {
LABEL_97:

          objc_autoreleasePoolPop(context);
          goto LABEL_202;
        }

        v112 = v66;
        __error();
        *__str = 138412546;
        v321 = signaturePath;
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_12();
        v117 = 18;
LABEL_110:
        _os_log_error_impl(v113, v114, OS_LOG_TYPE_ERROR, v115, v116, v117);

        goto LABEL_97;
      }

      v121 = signaturePath;
      if (v110)
      {
        v122 = v66;
        __error();
        *__str = 138412546;
        v321 = signaturePath;
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_16();
        _os_log_error_impl(v123, v124, v125, v126, v127, 0x12u);
      }

      v128 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v128 logPanicDeny:v129 thread_id:v130 reason:10 demoted:0];
    }

    else
    {
      HIDWORD(v303) = v67;
      v68 = malloc_type_calloc(1uLL, 0x1FA0uLL, 0xB740846AuLL);
      if (v68)
      {
        v69 = v68;
        v70 = read(SHIDWORD(v303), v68, 0x1FA0uLL);
        relevantCopy2 = relevant;
        v299 = v69;
        if (v70 < 1)
        {
          OUTLINED_FUNCTION_15();
          v27 = 0x277CCA000;
        }

        else
        {
          v66 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v69 length:v70];
          v71 = [MEMORY[0x277CCAC58] propertyListWithData:v66 options:0 format:0 error:0];
          v293 = v71;
          v296 = v66;
          if (v71)
          {
            v72 = v71;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v74 = v72;
            v27 = 0x277CCA000uLL;
            if (isKindOfClass)
            {
              v291 = v74;
              v289 = [v291 objectForKeyedSubscript:@"last_panic"];
              if (v289 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v75 = v289;
                [v75 timeIntervalSinceNow];
                if (v76 <= -*(self + 80))
                {
                  v66 = 0;
                  v16 = v75;
                  v142 = 1;
                }

                else
                {
                  v77 = *(self + 56);
                  v301 = (v77 >> 3) & 1;
                  v78 = *(self + 88);
                  if ((v77 & 8) != 0)
                  {
                    v288 = v78;
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                    {
                      *__str = 138412290;
                      v16 = v75;
                      v321 = v75;
                      v79 = v288;
                      _os_log_debug_impl(&dword_241BAE000, v288, OS_LOG_TYPE_DEBUG, "last panic was within 24 hours at: %@ - ignoring via boot-arg", __str, 0xCu);
                      v66 = 0;
                    }

                    else
                    {
                      v66 = 0;
                      v16 = v75;
                      v79 = v288;
                    }
                  }

                  else
                  {
                    v66 = 1;
                    v143 = v78;
                    v144 = os_log_type_enabled(v78, OS_LOG_TYPE_INFO);
                    v145 = v75;
                    v79 = v143;
                    v16 = v145;
                    if (v144)
                    {
                      OUTLINED_FUNCTION_7();
                      v322 = 2112;
                      *v323 = v16;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v146, v147, OS_LOG_TYPE_INFO, v148, v149, 0x16u);
                    }
                  }

                  v142 = v301;
                }

                LODWORD(v16) = v142;
              }

              else
              {
                v66 = 0;
                LODWORD(v16) = 1;
              }

              v150 = [v291 objectForKeyedSubscript:@"last_build"];
              v151 = 1;
              v287 = v150;
              if (*(self + 64) && v150)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v302 = v287;
                  v151 = [v302 isEqualToString:*(self + 64)];
                }

                else
                {
                  v151 = 1;
                }
              }

              v152 = [v291 objectForKeyedSubscript:@"triggered_signatures"];
              v300 = 0;
              if ((v16 & v151) == 1 && v152)
              {
                v16 = v152;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v286 = v16;
                  v300 = v16;
                  if ([v300 containsObject:v13])
                  {
                    v153 = *(self + 56);
                    v16 = (v153 >> 2) & 1;
                    v154 = *(self + 88);
                    log = v154;
                    if ((v153 & 4) != 0)
                    {
                      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
                      {
                        OUTLINED_FUNCTION_7();
                        v322 = 2112;
                        *v323 = v155;
                        _os_log_debug_impl(&dword_241BAE000, log, OS_LOG_TYPE_DEBUG, "%@ has already panic on %@ - ignoring via boot-arg", __str, 0x16u);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
                      {
                        OUTLINED_FUNCTION_7();
                        v322 = 2112;
                        *v323 = v156;
                        _os_log_impl(&dword_241BAE000, log, OS_LOG_TYPE_INFO, "%@ cannot panic, it has already panic on %@", __str, 0x16u);
                      }

                      v66 = 2;
                    }
                  }

                  else
                  {
                    LODWORD(v16) = 1;
                  }

                  v152 = v286;
                }

                else
                {
                  v300 = 0;
                  v152 = v16;
                  LODWORD(v16) = 1;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_15();
            }
          }

          else
          {
            OUTLINED_FUNCTION_15();
            v27 = 0x277CCA000;
          }
        }

        if (*options)
        {
          if ((*(self + 56) & 0x10) == 0)
          {
            if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_0();
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_20(v157, v158, v159, v160, v161);
            }

            LOBYTE(v16) = 0;
            v66 = 3;
            goto LABEL_194;
          }

          v162 = *(self + 88);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v252, v253, v254, v255, v256, 0x1Cu);
          }
        }

        v163 = v16 ^ 1;
        if (!recoveredCopy)
        {
          v163 = 1;
        }

        if (v163)
        {
          goto LABEL_155;
        }

        v164 = *(self + 88);
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          getpid();
          OUTLINED_FUNCTION_2();
          *v323 = v245;
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_18(v246, v247, v248, v249, v250);
        }

        recoveredCopy[2](recoveredCopy);
        if ((*options & 1) == 0)
        {
LABEL_155:
          if (!v16)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if ((*(self + 56) & 0x20) == 0)
          {
            if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_0();
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_20(v165, v166, v167, v168, v169);
            }

            LOBYTE(v16) = 0;
            v66 = 4;
            goto LABEL_194;
          }

          v170 = *(self + 88);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v257, v258, v259, v260, v261, 0x1Cu);
          }
        }

        if ((timeout & 3) != 0)
        {
          v171 = *(self + 88);
          v172 = v300;
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
          {
            getpid();
            OUTLINED_FUNCTION_2();
            *v323 = v173;
            OUTLINED_FUNCTION_1();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v174, v175, v176, v177, v178, 0x1Cu);
          }
        }

        else
        {
          if (*(self + 105))
          {
            v179 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v180 = dispatch_queue_attr_make_with_overcommit();

            v181 = dispatch_queue_attr_make_with_qos_class(v180, QOS_CLASS_USER_INTERACTIVE, 0);

            v297 = v181;
            v182 = dispatch_queue_create("com.apple.BlockMonitoring.FlushLogsQueue", v181);
            v183 = dispatch_semaphore_create(0);
            v184 = *(self + 88);
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
            {
              getpid();
              OUTLINED_FUNCTION_2();
              *v323 = v262;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_13(&dword_241BAE000, v263, v264, "%@ (%u:%llu) flushing logs", v265, v266, v267, v268, v282, v283, v284, log, v286, v287, v289, v291, v293, v297, v299, v300, v303, relevantCopy2, signaturePath, context, v308, block, v310, v311, v312, selfCopy, v314, v315, v316, v317, buf, *v319, *&v319[8], *&v319[16]);
            }

            block = MEMORY[0x277D85DD0];
            v310 = 3221225472;
            v311 = __104__BMBlockMonitoring_takeActionIfRelevant_thread_id_timeout_options_recovered_diagnosticCollectionBlock___block_invoke;
            v312 = &unk_278D0FDD8;
            selfCopy = self;
            LODWORD(v317) = v18;
            v290 = v13;
            v314 = v290;
            v316 = relevantCopy2;
            v185 = v183;
            v315 = v185;
            dispatch_async(v182, &block);
            v186 = dispatch_time(0, 1000000000);
            v292 = v185;
            v187 = dispatch_semaphore_wait(v185, v186);
            v188 = *(self + 88);
            v189 = v188;
            if (v187)
            {
              if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
              {
                getpid();
                OUTLINED_FUNCTION_5();
                *v323 = v190;
                OUTLINED_FUNCTION_1();
                OUTLINED_FUNCTION_18(&dword_241BAE000, v189, v191, "%@ (%u:%llu) timed out waiting for log flushing", __str);
              }
            }

            else if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
            {
              getpid();
              OUTLINED_FUNCTION_5();
              *v323 = v275;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_13(&dword_241BAE000, v276, v277, "%@ (%u:%llu) flushed logs", v278, v279, v280, v281, v282, v283, v284, log, v286, v287, v290, v292, v293, v297, v299, v300, v303, relevantCopy2, signaturePath, context, v308, block, v310, v311, v312, selfCopy, v314, v315, v316, v317, buf, *v319, *&v319[8], *&v319[16]);
            }

            v295 = v182;

            if (*options)
            {
              v234 = *(self + 56);
              v235 = (v234 >> 12) & 1;
              v236 = *(self + 88);
              v237 = v236;
              if ((v234 & 0x1000) != 0)
              {
                if (os_log_type_enabled(v236, OS_LOG_TYPE_DEBUG))
                {
                  OUTLINED_FUNCTION_5();
                  *v323 = v18;
                  OUTLINED_FUNCTION_1();
                  OUTLINED_FUNCTION_13(&dword_241BAE000, v238, v239, "%@ (%u:%llu) recovered during log flush - ignoring via boot-arg", v240, v241, v242, v243, v282, v283, v284, log, v286, v287, v290, v292, v295, v297, v299, v300, v303, relevantCopy2, signaturePath, context, v308, block, v310, v311, v312, selfCopy, v314, v315, v316, v317, buf, *v319, *&v319[8], *&v319[16]);
                }
              }

              else
              {
                if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
                {
                  OUTLINED_FUNCTION_5();
                  *v323 = v18;
                  OUTLINED_FUNCTION_1();
                  OUTLINED_FUNCTION_20(&dword_241BAE000, v237, v251, "%@ (%u:%llu) recovered during log flush - skipping panic", __str);
                }

                v66 = 5;
              }

              v244 = v297;
            }

            else
            {
              LOBYTE(v235) = 1;
              v244 = v297;
            }

            v172 = v300;
            if ((v235 & 1) == 0)
            {
              LOBYTE(v16) = 0;
              v215 = v299;
              goto LABEL_195;
            }

LABEL_172:
            if (v172)
            {
              v192 = [v172 arrayByAddingObject:v13];
            }

            else
            {
              v328[0] = v13;
              v192 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:1];
            }

            v326[0] = @"last_panic";
            v193 = [MEMORY[0x277CBEAA8] now];
            v194 = v193;
            v195 = *(self + 64);
            if (!v195)
            {
              v195 = @"???";
            }

            v327[0] = v193;
            v327[1] = v195;
            v326[1] = @"last_build";
            v326[2] = @"triggered_signatures";
            v300 = v192;
            v327[2] = v192;
            v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v327 forKeys:v326 count:3];

            v308 = 0;
            v294 = v196;
            v197 = [MEMORY[0x277CCAC58] dataWithPropertyList:v196 format:200 options:0 error:&v308];
            v298 = v308;
            if (v197)
            {
              if ((ftruncate(SHIDWORD(v303), 0) & 0x80000000) == 0)
              {
                v198 = pwrite(SHIDWORD(v303), [v197 bytes], objc_msgSend(v197, "length"), 0);
                if (v198 == [v197 length] && fcntl(SHIDWORD(v303), 51) != -1)
                {
                  LOBYTE(v16) = 1;
LABEL_193:

LABEL_194:
                  v215 = v299;
                  v172 = v300;
LABEL_195:
                  free(v215);
                  close(SHIDWORD(v303));
                  OUTLINED_FUNCTION_21();
                  if (v20 && *(self + 148))
                  {
                    v216 = *(self + 88);
                    if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
                    {
                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_17();
                      *&v323[6] = relevantCopy2;
                      v324 = v217;
                      LODWORD(thread_idCopy) = v218;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v219, v220, OS_LOG_TYPE_INFO, v221, v222, 0x22u);
                    }

                    sleep(*(self + 148));
                  }

                  objc_autoreleasePoolPop(context);
                  relevant = relevantCopy2;
                  if ((v16 & 1) == 0)
                  {
                    goto LABEL_82;
                  }

LABEL_202:
                  if (*options)
                  {
                    v223 = *(self + 56);
                    v224 = *(self + 88);
                    v225 = v224;
                    if ((v223 & 0x2000) == 0)
                    {
                      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                      {
                        OUTLINED_FUNCTION_2();
                        *v323 = v18;
                        OUTLINED_FUNCTION_3();
                        OUTLINED_FUNCTION_25();
                        _os_log_impl(v226, v227, OS_LOG_TYPE_DEFAULT, v228, v229, 0x1Cu);
                      }

                      v66 = 6;
                      goto LABEL_82;
                    }

                    if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
                    {
                      OUTLINED_FUNCTION_0();
                      *&v323[6] = relevant;
                      OUTLINED_FUNCTION_25();
                      _os_log_debug_impl(v230, v231, OS_LOG_TYPE_DEBUG, v232, v233, 0x1Cu);
                    }
                  }

                  v28 = 0;
                  goto LABEL_31;
                }
              }

              v199 = *(self + 56);
              v200 = *(self + 88);
              v201 = v200;
              if ((v199 & 0x40) == 0)
              {
                if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
                {
                  __error();
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_9();
                  v206 = 18;
LABEL_225:
                  _os_log_error_impl(v202, v203, OS_LOG_TYPE_ERROR, v204, v205, v206);
                  goto LABEL_187;
                }

                goto LABEL_187;
              }

              if (os_log_type_enabled(v200, OS_LOG_TYPE_DEBUG))
              {
                __error();
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_11();
                OUTLINED_FUNCTION_8();
                v214 = 18;
LABEL_227:
                _os_log_debug_impl(v209, v210, v211, v212, v213, v214);
              }
            }

            else
            {
              v207 = *(self + 56);
              v208 = *(self + 88);
              v201 = v208;
              if ((v207 & 0x40) == 0)
              {
                if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
                {
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_26();
                  OUTLINED_FUNCTION_9();
                  v206 = 22;
                  goto LABEL_225;
                }

LABEL_187:
                LOBYTE(v16) = 0;
                v66 = 8;
LABEL_192:

                goto LABEL_193;
              }

              if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
              {
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_26();
                OUTLINED_FUNCTION_8();
                v214 = 22;
                goto LABEL_227;
              }
            }

            LOBYTE(v16) = 1;
            goto LABEL_192;
          }

          v171 = *(self + 88);
          v172 = v300;
          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            getpid();
            OUTLINED_FUNCTION_2();
            *v323 = v269;
            OUTLINED_FUNCTION_1();
            OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_18(v270, v271, v272, v273, v274);
          }
        }

        goto LABEL_172;
      }

      v119 = *(self + 56);
      v120 = OUTLINED_FUNCTION_19();
      if ((v119 & 0x40) != 0)
      {
        v111 = signaturePath;
        if (!v120)
        {
          goto LABEL_97;
        }

        v112 = v66;
        v141 = *__error();
        *__str = 67109120;
        LODWORD(v321) = v141;
        OUTLINED_FUNCTION_12();
        v117 = 8;
        goto LABEL_110;
      }

      if (v120)
      {
        v131 = v66;
        v132 = *__error();
        *__str = 67109120;
        LODWORD(v321) = v132;
        OUTLINED_FUNCTION_16();
        _os_log_error_impl(v133, v134, v135, v136, v137, 8u);
      }

      v138 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v138 logPanicDeny:v139 thread_id:v140 reason:9 demoted:0];
      close(SHIDWORD(v303));
      v121 = signaturePath;
    }

    objc_autoreleasePoolPop(v66);
    goto LABEL_53;
  }

LABEL_20:
  if ((*options & 1) == 0)
  {
    goto LABEL_23;
  }

  thread_id = *(self + 88);
  if ((*(self + 56) & 0x10) == 0)
  {
    if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2();
      *v323 = v18;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20(v80, v81, v82, v83, v84);
    }

    v66 = 3;
LABEL_82:
    v62 = OUTLINED_FUNCTION_6();
    v65 = v66;
    goto LABEL_89;
  }

  if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0();
    *&v323[6] = relevant;
    OUTLINED_FUNCTION_12();
    _os_log_debug_impl(v86, v87, OS_LOG_TYPE_DEBUG, v88, v89, 0x1Cu);
    if (recoveredCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_23:
  if (recoveredCopy)
  {
LABEL_24:
    if (OUTLINED_FUNCTION_19())
    {
      thread_idCopy2 = thread_id;
      getpid();
      OUTLINED_FUNCTION_2();
      *v323 = v56;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_18(v57, v58, v59, v60, v61);
    }

    recoveredCopy[2](recoveredCopy);
    if ((*options & 1) == 0)
    {
      goto LABEL_30;
    }

    if ((*(self + 56) & 0x20) != 0)
    {
      if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0();
        *&v323[6] = relevant;
        OUTLINED_FUNCTION_25();
        _os_log_debug_impl(v95, v96, OS_LOG_TYPE_DEBUG, v97, v98, 0x1Cu);
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2();
      *v323 = v18;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_20(v90, v91, v92, v93, v94);
    }

    v66 = 4;
    goto LABEL_82;
  }

LABEL_30:
  v28 = 1;
LABEL_31:
  snprintf(__str, 0x400uLL, "BMBlockMonitoring: %s (%u:%llu)", [v13 UTF8String], v18, relevant);
  if ((v28 & 1) == 0)
  {
    v29 = *(self + 88);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23();
      *&v319[6] = v18;
      *&v319[10] = 2048;
      *&v319[12] = relevant;
      OUTLINED_FUNCTION_18(&dword_241BAE000, v29, v85, "%@ (%u:%llu) is going to panic device", &buf);
    }
  }

  OUTLINED_FUNCTION_21();
  if (!v20 || *(self + 136) == 1)
  {
    if ((v28 & 1) == 0)
    {
      if ((*(self + 56) & 1) == 0)
      {
        if (*(self + 96) != 1)
        {
LABEL_52:
          MEMORY[0x245CF9630](3072, __str);
          goto LABEL_53;
        }

        v30 = panic_with_data(0, 0, 0, 1u, __str);
        v31 = *(self + 88);
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        if (v30 < 0)
        {
          if (v32)
          {
            v118 = *__error();
            LODWORD(buf) = 67109120;
            HIDWORD(buf) = v118;
            v33 = "panic_with_data() failed with: %d";
            v34 = v31;
            v35 = 8;
            goto LABEL_94;
          }
        }

        else if (v32)
        {
          LOWORD(buf) = 0;
          v33 = "panic_with_data() unexpectedly returned";
          v34 = v31;
          v35 = 2;
LABEL_94:
          _os_log_error_impl(&dword_241BAE000, v34, OS_LOG_TYPE_ERROR, v33, &buf, v35);
        }

        goto LABEL_52;
      }

      v49 = *(self + 88);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_23();
        *&v319[6] = v18;
        *&v319[10] = 2048;
        *&v319[12] = relevant;
        OUTLINED_FUNCTION_18(&dword_241BAE000, v49, v50, "%@ (%u:%llu) would trigger a panic - boot-arg prevents panic, so faulting instead", &buf);
      }
    }

LABEL_61:
    v51 = OUTLINED_FUNCTION_6();
    [(BMBlockMonitoring *)v51 logFault:v52 thread_id:v53 reason:v54];
    goto LABEL_53;
  }

  v36 = [*(v27 + 3240) stringWithCString:__str encoding:4];
  v37 = [v36 copy];
  v38 = *(self + 112);
  *(self + 112) = v37;

  if (v28)
  {
    goto LABEL_61;
  }

  if (*(self + 96))
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  *(self + 121) = v39;
  v40 = *(self + 128);
  if (v40)
  {
    (*(v40 + 16))(v40, v13, relevant, 0, v39);
  }

LABEL_53:
}

void __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(a1 + 48)];
  [(BMBlockMonitoring *)v2 takeActionIfRelevant:v3 thread_id:*(a1 + 56) timeout:*(a1 + 64) options:*(a1 + 80) recovered:*(a1 + 72) diagnosticCollectionBlock:*(a1 + 40)];
}

- (void)initForTesting:bootArgs:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:bootArgs:.cold.2()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:bootArgs:.cold.3()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:bootArgs:.cold.6()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initForTesting:(os_log_t)log bootArgs:.cold.7(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_241BAE000, log, OS_LOG_TYPE_ERROR, "Disabling feature - os version not gathered: %{errno}d", buf, 8u);
}

- (void)initForTesting:bootArgs:.cold.8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)parseBootArgInt:where:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_1()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_3()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end