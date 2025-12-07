@interface PLABMClient
+ (id)sharedABMClient;
- (PLABMClient)init;
- (id).cxx_construct;
- (id)addDeviceConfigWith:(id)with andConfigExtension:(id)extension;
- (id)addMavDeviceConfig;
- (id)addMavDeviceConfigDebug;
- (id)getBasebandBootState;
- (id)getBasebandTimeAndLatency;
- (id)getLTESleepManagerStats;
- (id)removeDeviceConfig;
- (void)getBasebandBootState;
- (void)regBBWakeListener;
- (void)regBootStateListener;
- (void)regMetricListener;
- (void)regTriggerListener;
- (void)removeDeviceConfig;
- (void)sendBootStateChangInfoToLoggerUsing:(id)using;
- (void)sendMetricToLoggerUsing:(id)using;
- (void)sendTriggerToLoggerUsing:(id)using;
- (void)sendWakeInfoToLoggerUsing:(id)using;
- (void)startListening;
- (void)triggerPeriodicMetrics:(int)metrics andprofileId:(int)id;
@end

@implementation PLABMClient

void __32__PLABMClient_regMetricListener__block_invoke_68(uint64_t a1, uint64_t a2)
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regMetricListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendMetricToLoggerUsing:v3];
}

void __40__PLABMClient_getBasebandTimeAndLatency__block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v14 = v5;
  if (*a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB8]];
    v8 = [v14 objectForKeyedSubscript:v7];

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBE0]];
    v10 = [v14 objectForKeyedSubscript:v9];

    v11 = [v8 unsignedIntegerValue];
    *(*(*(a1 + 32) + 8) + 24) = [v10 unsignedIntegerValue] / 1000000.0 + v11;
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSince1970];
    *(*(*(a1 + 40) + 8) + 24) = v13;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)getBasebandTimeAndLatency
{
  date = [MEMORY[0x1E695DF00] date];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  cntrl = self->abmPLClnt.__cntrl_;
  v13 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandTime();
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v6 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v4, v6))
  {
    dispatch_release(v4);
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v21[3]];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v17[3]];
    [v9 timeIntervalSinceDate:date];
    v11 = v10;
    dispatch_release(v4);
    v7 = [[TimeAndLatencyAbm alloc] initWithTime:v8 andLatency:v11];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

+ (id)sharedABMClient
{
  if (+[PLABMClient sharedABMClient]::once != -1)
  {
    +[PLABMClient sharedABMClient];
  }

  v3 = +[PLABMClient sharedABMClient]::_sharedABMClient;

  return v3;
}

void __30__PLABMClient_sharedABMClient__block_invoke()
{
  if (!+[PLABMClient sharedABMClient]::_sharedABMClient)
  {
    v0 = objc_opt_new();
    +[PLABMClient sharedABMClient]::_sharedABMClient = v0;

    MEMORY[0x1EEE66BB8](v0);
  }
}

- (PLABMClient)init
{
  v11.receiver = self;
  v11.super_class = PLABMClient;
  v2 = [(PLABMClient *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(17, 0);
    *(v2 + 1) = dispatch_queue_create_with_target_V2("com.apple.powerlog.abm", v3, global_queue);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Powerlog");
    abm::client::CreateManager();
    v5 = v10;
    v10 = 0uLL;
    v6 = *(v2 + 3);
    *(v2 + 1) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  return v2;
}

- (id)addDeviceConfigWith:(id)with andConfigExtension:(id)extension
{
  v46 = *MEMORY[0x1E69E9840];
  withCopy = with;
  extensionCopy = extension;
  v42 = -534716414;
  v44 = 0;
  __p = 0uLL;
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:withCopy ofType:extensionCopy];

  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  v10 = PLLogABMClient(void)::__logObj;
  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [(PLABMClient *)v11 addDeviceConfigWith:buf andConfigExtension:v10];
  }

  if (v9)
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9];
    v13 = v12;
    v14 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    if (![v12 length] || MEMORY[0x1DA71B8B0](v14) == MEMORY[0x1E69E9ED0])
    {
      goto LABEL_59;
    }

    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    v17 = MEMORY[0x1E69E9E80];
    if (v15)
    {
      v41 = v15;
    }

    else
    {
      v16 = xpc_null_create();
      v41 = v16;
      if (!v16)
      {
        v19 = xpc_null_create();
        v16 = 0;
        goto LABEL_26;
      }
    }

    if (MEMORY[0x1DA71B8B0](v16) == v17)
    {
      xpc_retain(v16);
      goto LABEL_27;
    }

    v19 = xpc_null_create();
LABEL_26:
    v41 = v19;
LABEL_27:
    xpc_release(v16);
    if (MEMORY[0x1DA71B8B0](v41) != v17)
    {
LABEL_58:
      xpc_release(v41);
LABEL_59:
      v24 = MEMORY[0x1E696AEC0];
      if (v42)
      {
        TelephonyXPC::Result::describe(&v42);
        if (v28 >= 0)
        {
          v25 = v27;
        }

        else
        {
          v25 = v27[0];
        }
      }

      else
      {
        TelephonyXPC::Result::toString(0, v27);
        if (v28 >= 0)
        {
          v25 = v27;
        }

        else
        {
          v25 = v27[0];
        }
      }

      v18 = [v24 stringWithUTF8String:v25];
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      xpc_release(v14);

      goto LABEL_69;
    }

    v39 = xpc_int64_create(1);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    v20 = *MEMORY[0x1E698BC00];
    v31 = &v41;
    *&v32 = v20;
    xpc::dict::object_proxy::operator=(&v31, &v39, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v39);
    v39 = 0;
    v37 = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      v37 = xpc_null_create();
    }

    v21 = *MEMORY[0x1E698BB58];
    v31 = &v41;
    *&v32 = v21;
    xpc::dict::object_proxy::operator=(&v31, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    xpc_release(v37);
    v37 = 0;
    v35 = xpc_int64_create(0);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    v22 = *MEMORY[0x1E698BB90];
    v31 = &v41;
    *&v32 = v22;
    xpc::dict::object_proxy::operator=(&v31, &v35, &v36);
    xpc_release(v36);
    v36 = 0;
    xpc_release(v35);
    v35 = 0;
    v34 = xpc_null_create();
    cntrl = self->abmPLClnt.__cntrl_;
    ptr = self->abmPLClnt.__ptr_;
    v30 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v27, *MEMORY[0x1E698BBC0]);
    abm::client::PerformCommand();
    v42 = v31;
    if (SHIBYTE(v44) < 0)
    {
      operator delete(__p);
    }

    __p = v32;
    v44 = v33;
    HIBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (!v42)
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      goto LABEL_58;
    }

    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      TelephonyXPC::Result::describe(&v42);
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_51:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    +[PLDefaults debugEnabled];
    goto LABEL_58;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  +[PLDefaults debugEnabled];
  v18 = @"ConfigNotFound";
LABEL_69:

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  return v18;
}

- (void)regBootStateListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BBE8]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __35__PLABMClient_regBootStateListener__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __35__PLABMClient_regBootStateListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendBootStateChangInfoToLoggerUsing:v3];
}

- (void)regTriggerListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BB70]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __33__PLABMClient_regTriggerListener__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __33__PLABMClient_regTriggerListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendTriggerToLoggerUsing:v3];
}

- (void)regMetricListener
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[PLPlatform isBasebandDale])
  {
    std::string::basic_string[abi:ne200100]<0>(v11, *MEMORY[0x1E698BC00]);
    v13 = 1;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(&v8, &v13, &v14, 1uLL);
    updated = abm::client::CreateOrUpdateEventFilter();
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    cntrl = self->abmPLClnt.__cntrl_;
    v7 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, *MEMORY[0x1E698BB60]);
    abm::client::RegisterEventHandler();
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    xpc_release(updated);
  }

  else
  {
    v5 = self->abmPLClnt.__cntrl_;
    v6 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, *MEMORY[0x1E698BB60]);
    abm::client::RegisterEventHandler();
    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __32__PLABMClient_regMetricListener__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regMetricListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendMetricToLoggerUsing:v3];
}

- (void)regBBWakeListener
{
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *MEMORY[0x1E698BBC8]);
  abm::client::RegisterEventHandler();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __32__PLABMClient_regBBWakeListener__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    __32__PLABMClient_regBBWakeListener__block_invoke_cold_2();
  }

  [*(a1 + 32) sendWakeInfoToLoggerUsing:v3];
}

- (void)startListening
{
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient startListening];
  }

  cntrl = self->abmPLClnt.__cntrl_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = self->abmPLClnt.__cntrl_;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (id)removeDeviceConfig
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = -534716414;
  v26 = 0;
  v25 = 0uLL;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  v5 = MEMORY[0x1E69E9E80];
  if (v3)
  {
    v23 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v23 = v4;
    if (!v4)
    {
      v6 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1DA71B8B0](v4) == v5)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v23 = v6;
LABEL_9:
  xpc_release(v4);
  if (MEMORY[0x1DA71B8B0](v23) != v5)
  {
    goto LABEL_10;
  }

  v21 = xpc_int64_create(1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v9 = *MEMORY[0x1E698BC00];
  v17 = &v23;
  *&v18 = v9;
  xpc::dict::object_proxy::operator=(&v17, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  v20 = xpc_null_create();
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v16 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E698BBD0]);
  abm::client::PerformCommand();
  v24 = v17;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  v25 = v18;
  v26 = v19;
  HIBYTE(v19) = 0;
  LOBYTE(v18) = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v24)
  {
    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      TelephonyXPC::Result::describe(&v24);
      [PLABMClient removeDeviceConfig];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_32:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient removeDeviceConfig];
    }

    goto LABEL_10;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient removeDeviceConfig];
  }

LABEL_10:
  v7 = MEMORY[0x1E696AEC0];
  if (v24)
  {
    TelephonyXPC::Result::describe(&v24);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }
  }

  else
  {
    TelephonyXPC::Result::toString(0, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }
  }

  v11 = [v7 stringWithUTF8String:v8];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25);
  }

  return v11;
}

- (void)triggerPeriodicMetrics:(int)metrics andprofileId:(int)id
{
  v45 = *MEMORY[0x1E69E9840];
  v40 = -534716414;
  v42 = 0;
  v41 = 0uLL;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  v9 = MEMORY[0x1E69E9E80];
  if (v7)
  {
    v39 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v39 = v8;
    if (!v8)
    {
      v10 = xpc_null_create();
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1DA71B8B0](v8) == v9)
  {
    xpc_retain(v8);
    goto LABEL_9;
  }

  v10 = xpc_null_create();
LABEL_8:
  v39 = v10;
LABEL_9:
  xpc_release(v8);
  if (MEMORY[0x1DA71B8B0](v39) != v9)
  {
    goto LABEL_49;
  }

  v37 = xpc_int64_create(1);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  v11 = *MEMORY[0x1E698BC00];
  v23 = &v39;
  *&v24 = v11;
  xpc::dict::object_proxy::operator=(&v23, &v37, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v37);
  v37 = 0;
  v35 = xpc_int64_create(0);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v12 = *MEMORY[0x1E698BB88];
  v23 = &v39;
  *&v24 = v12;
  xpc::dict::object_proxy::operator=(&v23, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
  v33 = xpc_int64_create(0);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v13 = *MEMORY[0x1E698BB98];
  v23 = &v39;
  *&v24 = v13;
  xpc::dict::object_proxy::operator=(&v23, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  v31 = xpc_int64_create(metrics);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v14 = *MEMORY[0x1E698BB80];
  v23 = &v39;
  *&v24 = v14;
  xpc::dict::object_proxy::operator=(&v23, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  v29 = xpc_int64_create(id);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v15 = *MEMORY[0x1E698BB78];
  v23 = &v39;
  *&v24 = v15;
  xpc::dict::object_proxy::operator=(&v23, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  v27 = xpc_int64_create(0);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v16 = *MEMORY[0x1E698BB68];
  v23 = &v39;
  *&v24 = v16;
  xpc::dict::object_proxy::operator=(&v23, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  v17 = PLLogABMClient(void)::__logObj;
  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [(PLABMClient *)metrics triggerPeriodicMetrics:id andprofileId:v17];
  }

  v26 = xpc_null_create();
  cntrl = self->abmPLClnt.__cntrl_;
  ptr = self->abmPLClnt.__ptr_;
  v22 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, *MEMORY[0x1E698BBA8]);
  abm::client::PerformCommand();
  v19 = v23;
  v40 = v23;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v41 = v24;
  v42 = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  if (v44 < 0)
  {
    operator delete(*buf);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v19)
  {
    if (+[PLPlatform internalBuild])
    {
      if (PLLogABMClient(void)::onceToken != -1)
      {
        [PLABMClient addDeviceConfigWith:andConfigExtension:];
      }

      v20 = PLLogABMClient(void)::__logObj;
      if (!os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      TelephonyXPC::Result::describe(&v40);
      [(PLABMClient *)&v23 triggerPeriodicMetrics:buf andprofileId:metrics, v20];
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

LABEL_42:
    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient triggerPeriodicMetrics:andprofileId:];
    }

    +[PLDefaults debugEnabled];
    goto LABEL_49;
  }

  if (PLLogABMClient(void)::onceToken != -1)
  {
    [PLABMClient addDeviceConfigWith:andConfigExtension:];
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient triggerPeriodicMetrics:andprofileId:];
  }

LABEL_49:
  xpc_release(v39);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }
}

- (void)sendTriggerToLoggerUsing:(id)using
{
  usingCopy = using;
  v5 = objc_opt_new();
  v6 = [usingCopy objectForKeyedSubscript:@"kKeyTriggerID"];
  [v5 setObject:v6 forKeyedSubscript:@"triggerId"];

  v7 = [usingCopy objectForKeyedSubscript:@"kKeyTriggerRef"];
  [v5 setObject:v7 forKeyedSubscript:@"triggerRef"];

  v8 = [usingCopy objectForKeyedSubscript:@"kKeyTriggerType"];
  [v5 setObject:v8 forKeyedSubscript:@"triggerType"];

  v9 = [usingCopy objectForKeyedSubscript:@"kKeyTriggerTime"];
  [v5 setObject:v9 forKeyedSubscript:@"triggerTime"];

  v10 = [usingCopy objectForKeyedSubscript:@"kKeyAppID"];
  [v5 setObject:v10 forKeyedSubscript:@"appId"];

  delegate = [(PLABMClient *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(PLABMClient *)self delegate];
    [delegate2 triggerMessage:v5];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendTriggerToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendMetricToLoggerUsing:(id)using
{
  usingCopy = using;
  v5 = objc_opt_new();
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
  {
    [PLABMClient sendMetricToLoggerUsing:];
  }

  v6 = [usingCopy objectForKeyedSubscript:@"kKeyMetricID"];
  [v5 setObject:v6 forKeyedSubscript:@"metricId"];

  v7 = [usingCopy objectForKeyedSubscript:@"kKeyPayload"];
  [v5 setObject:v7 forKeyedSubscript:@"metricPayload"];

  v8 = [usingCopy objectForKeyedSubscript:@"kKeyTriggerRef"];
  [v5 setObject:v8 forKeyedSubscript:@"metricTriggerRef"];

  v9 = [usingCopy objectForKeyedSubscript:@"kKeyProfileID"];
  [v5 setObject:v9 forKeyedSubscript:@"metricProfileId"];

  v10 = [usingCopy objectForKeyedSubscript:@"kKeyAppID"];
  [v5 setObject:v10 forKeyedSubscript:@"appId"];

  delegate = [(PLABMClient *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(PLABMClient *)self delegate];
    [delegate2 metricMessage:v5];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendMetricToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendWakeInfoToLoggerUsing:(id)using
{
  v4 = [using copy];
  if (v4 && ([(PLABMClient *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    delegate = [(PLABMClient *)self delegate];
    [delegate wakeMessage:v4];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendWakeInfoToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (void)sendBootStateChangInfoToLoggerUsing:(id)using
{
  v4 = [using copy];
  if (v4 && ([(PLABMClient *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    delegate = [(PLABMClient *)self delegate];
    [delegate bootStateChange:v4];
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      PLLogABMClient();
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient sendBootStateChangInfoToLoggerUsing:];
    }

    +[PLDefaults debugEnabled];
  }
}

- (id)getLTESleepManagerStats
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB0]];
  [v3 setObject:&unk_1F5406030 forKey:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBD8]];
  [v3 setObject:&unk_1F5406030 forKey:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF0]];
  [v3 setObject:&unk_1F5406030 forKey:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF8]];
  [v3 setObject:&unk_1F5406030 forKey:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBA0]];
  [v3 setObject:&unk_1F5406030 forKey:v8];

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  cntrl = self->abmPLClnt.__cntrl_;
  v14 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v3;
  abm::client::GetBasebandLTEStatistics();
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v9, v12);
  dispatch_release(v9);

  return v11;
}

void __38__PLABMClient_getLTESleepManagerStats__block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v32 = v5;
  if (*a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x1E698BBB0];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBB0]];
    v10 = [v32 objectForKeyedSubscript:v9];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    [v7 setObject:v10 forKey:v11];

    v12 = *(a1 + 32);
    v13 = *MEMORY[0x1E698BBD8];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBD8]];
    v15 = [v32 objectForKeyedSubscript:v14];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    [v12 setObject:v15 forKey:v16];

    v17 = *(a1 + 32);
    v18 = *MEMORY[0x1E698BBF0];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF0]];
    v20 = [v32 objectForKeyedSubscript:v19];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    [v17 setObject:v20 forKey:v21];

    v22 = *(a1 + 32);
    v23 = *MEMORY[0x1E698BBF8];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBF8]];
    v25 = [v32 objectForKeyedSubscript:v24];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23];
    [v22 setObject:v25 forKey:v26];

    v27 = *(a1 + 32);
    v28 = *MEMORY[0x1E698BBA0];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E698BBA0]];
    v30 = [v32 objectForKeyedSubscript:v29];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
    [v27 setObject:v30 forKey:v31];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)getBasebandBootState
{
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  cntrl = self->abmPLClnt.__cntrl_;
  block[5] = self->abmPLClnt.__ptr_;
  v18 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandBootState();
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v3 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLABMClient_getBasebandBootState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v3;
  if ([PLABMClient getBasebandBootState]::defaultOnce != -1)
  {
    dispatch_once(&[PLABMClient getBasebandBootState]::defaultOnce, block);
  }

  if ([PLABMClient getBasebandBootState]::classDebugEnabled == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    TelephonyXPC::Result::describe(&v19);
    defaultCStringEncoding = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v7 = [v4 stringWithCString:p_p encoding:defaultCStringEncoding];
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient getBasebandBootState];
    }
  }

  if (v19)
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_ERROR))
    {
      [PLABMClient getBasebandBootState];
    }

    v8 = @"ABM Client: Server is not running.";
  }

  else
  {
    if (PLLogABMClient(void)::onceToken != -1)
    {
      [PLABMClient addDeviceConfigWith:andConfigExtension:];
    }

    if (os_log_type_enabled(PLLogABMClient(void)::__logObj, OS_LOG_TYPE_DEBUG))
    {
      [PLABMClient getBasebandBootState];
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = SHIBYTE(v23);
    v11 = v22[0];
    defaultCStringEncoding2 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    if (v10 >= 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v11;
    }

    v8 = [v9 stringWithCString:v13 encoding:defaultCStringEncoding2];
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
  }

  return v8;
}

BOOL __35__PLABMClient_getBasebandBootState__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  [PLABMClient getBasebandBootState]::classDebugEnabled = result;
  return result;
}

- (id)addMavDeviceConfig
{
  if (+[PLDefaults fullMode])
  {
    v3 = @"Cellular_Power_Log_full_300s";
  }

  else
  {
    v3 = @"Cellular_Power_Log_lite_300s";
  }

  v4 = [(PLABMClient *)self addDeviceConfigWith:v3 andConfigExtension:@"config"];

  return v4;
}

- (id)addMavDeviceConfigDebug
{
  if (+[PLDefaults fullMode])
  {
    v3 = @"Cellular_Power_Log_full_30s";
  }

  else
  {
    v3 = @"Cellular_Power_Log_lite_30s";
  }

  v4 = [(PLABMClient *)self addDeviceConfigWith:v3 andConfigExtension:@"config"];

  return v4;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)addDeviceConfigWith:(os_log_t)log andConfigExtension:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Bundle for this PLABMClient class: %@", buf, 0xCu);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.6()
{
  OUTLINED_FUNCTION_3_2();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v1;
  }

  *v2 = 136315138;
  *(v2 + 4) = v8;
  _os_log_error_impl(&dword_1D8611000, v3, OS_LOG_TYPE_ERROR, "[DEBUG PLABMClient]: Failed to add config. Error Description: %s", v4, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.8()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.10()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addDeviceConfigWith:andConfigExtension:.cold.12()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__PLABMClient_regBootStateListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __33__PLABMClient_regTriggerListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __32__PLABMClient_regMetricListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __32__PLABMClient_regBBWakeListener__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeDeviceConfig
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)triggerPeriodicMetrics:(os_log_t)log andprofileId:.cold.2(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "ABM Client: triggerPeriodicMetrics with trigger id %d profile:%d", v3, 0xEu);
}

- (void)triggerPeriodicMetrics:(int)a3 andprofileId:(os_log_t)log .cold.4(char *a1, uint8_t *buf, int a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = v5;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "[DEBUG PLABMClient]: ABM Client: Failed Query Command %d. Error Description: %s", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

- (void)sendTriggerToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMetricToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendMetricToLoggerUsing:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendWakeInfoToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendBootStateChangInfoToLoggerUsing:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getBasebandBootState
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end