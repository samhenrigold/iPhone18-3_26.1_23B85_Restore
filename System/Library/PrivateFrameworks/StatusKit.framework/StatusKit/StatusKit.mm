id _StatusKitAgentMainLog(uint64_t a1)
{
  if (_StatusKitAgentMainLog_onceToken != -1)
  {
    _StatusKitAgentMainLog_cold_1();
  }

  v2 = _StatusKitAgentMainLog__logger;

  return v2;
}

void _HandleSignal(int a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___HandleSignal_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  dispatch_async(&_dispatch_main_q, block);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = _set_user_dir_suffix();
  if ((v3 & 1) == 0)
  {
    v15 = _StatusKitAgentMainLog(v3);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      main_cold_1(v15);
    }

    exit(1);
  }

  _InitSandbox();
  v4 = objc_autoreleasePoolPush();
  v5 = NSTemporaryDirectory();
  if (_SetupSignalHandler_onceToken != -1)
  {
    main_cold_2();
  }

  v6 = _StatusKitAgentMainLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "StatusKitAgent launched", v16, 2u);
  }

  NSLog(@"Hello, World!");
  v7 = objc_autoreleasePoolPush();
  v8 = +[SKAStatusServer sharedInstance];
  if (_os_feature_enabled_impl())
  {
    v9 = [[SKALocalStatusServerObjC alloc] initWithIDSDeviceProvider:v8];
    v10 = gLocalStatusServer;
    gLocalStatusServer = v9;
  }

  else
  {
    NSLog(@"LocalStatusKit not enabled");
  }

  objc_autoreleasePoolPop(v7);
  objc_autoreleasePoolPop(v4);
  if (v8 | gLocalStatusServer)
  {
    v11 = +[NSRunLoop currentRunLoop];
    [v11 run];
  }

  v12 = objc_opt_self();
  v13 = gLocalStatusServer;
  gLocalStatusServer = 0;

  return 0;
}

void main_cold_1(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Failed to set user dir suffix: %{darwin.errno}d", v3, 8u);
}

void main_cold_3(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = _StatusKitAgentMainLog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "StatusKitAgent exception caught on main thread: %@", &v3, 0xCu);
  }

  objc_end_catch();
}