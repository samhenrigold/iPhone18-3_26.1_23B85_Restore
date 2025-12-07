@interface ANEDeviceController
@end

@implementation ANEDeviceController

void __34___ANEDeviceController_initialize__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.ane.devicecontroller", v2);
  v1 = gANEControllerQueue;
  gANEControllerQueue = v0;
}

void __29___ANEDeviceController_start__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[_ANEVirtualClient sharedConnection];

  if (v2)
  {
    [*(a1 + 32) setDevice:0];
    v3 = +[_ANELog common];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 40));
      objc_claimAutoreleasedReturnValue();
      __29___ANEDeviceController_start__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setUsecount:{objc_msgSend(*(a1 + 32), "usecount") + 1}];
    v4 = +[_ANELog common];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      v15 = [*(a1 + 32) usecount];
      v16 = [*(a1 + 32) device];
      v17 = [*(a1 + 32) isPrivileged];
      *buf = 138413058;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_debug_impl(&dword_1AD246000, v4, OS_LOG_TYPE_DEBUG, "%@: self.usecount=%lld : self.device=%p : self.isPrivileged=%d", buf, 0x26u);
    }

    if ([*(a1 + 32) usecount] == 1)
    {
      memset(buf, 0, sizeof(buf));
      if ([*(a1 + 32) isPrivileged])
      {
        v5 = 0;
        v6 = 2;
        *buf = 2;
      }

      else
      {
        *buf = 1;
        v5 = [*(a1 + 32) programHandle];
        v6 = 1;
      }

      *&buf[8] = v5;
      *&buf[16] = 10000;
      *&buf[24] = 10000;
      v7 = +[_ANELog common];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v18 = NSStringFromSelector(*(a1 + 40));
        *v20 = 138412802;
        v21 = v18;
        v22 = 1024;
        v23 = v6;
        v24 = 2048;
        v25 = v5;
        _os_log_debug_impl(&dword_1AD246000, v7, OS_LOG_TYPE_DEBUG, "%@: Calling ANEDeviceOpen( deviceUsageType=%u : programHandle=%llu)", v20, 0x1Cu);
      }

      v19 = 0;
      v8 = *(a1 + 32);
      os_unfair_lock_lock_with_options();
      v9 = dylib_handle;
      if (dylib_handle)
      {
        goto LABEL_30;
      }

      dylib_handle = dlopen("/System/Library/PrivateFrameworks/ANEServices.framework/ANEServices", 4);
      v10 = dylib_handle == 0;
      v11 = dlerror();
      if (v10)
      {
        printf("dlopen error: %s\n", v11);
      }

      v9 = dylib_handle;
      if (dylib_handle)
      {
LABEL_30:
        if (!factory_function_deviceOpen)
        {
          factory_function_deviceOpen = dlsym(v9, "ANEServicesDeviceOpen");
          v12 = dlerror();
          if (v12)
          {
            printf("dlsym err: %s\n", v12);
          }
        }

        os_unfair_lock_unlock(&_sync_lock);
        if (factory_function_deviceOpen && !(factory_function_deviceOpen)(&v19, buf, v8, fDeviceCallback) && v19)
        {
          [*(a1 + 32) setDevice:?];
          return;
        }
      }

      else
      {
        os_unfair_lock_unlock(&_sync_lock);
      }

      v13 = +[_ANELog common];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 40));
        objc_claimAutoreleasedReturnValue();
        __29___ANEDeviceController_start__block_invoke_cold_2();
      }

      [*(a1 + 32) setDevice:0];
    }
  }
}

void __28___ANEDeviceController_stop__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setUsecount:{objc_msgSend(*(a1 + 32), "usecount") - 1}];
  v2 = +[_ANELog common];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [*(a1 + 32) usecount];
    v8 = [*(a1 + 32) device];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    _os_log_debug_impl(&dword_1AD246000, v2, OS_LOG_TYPE_DEBUG, "%@: self.usecount=%lld : self.device=%p", buf, 0x20u);
  }

  if (![*(a1 + 32) usecount] && objc_msgSend(*(a1 + 32), "device"))
  {
    v3 = [*(a1 + 32) device];
    if (!v3 || !*v3 || (*(*v3 + 8))())
    {
      v4 = +[_ANELog common];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 40));
        objc_claimAutoreleasedReturnValue();
        __28___ANEDeviceController_stop__block_invoke_cold_1();
      }
    }

    [*(a1 + 32) setDevice:0];
    v5 = +[_ANELog common];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = [*(a1 + 32) usecount];
      v11 = [*(a1 + 32) device];
      *buf = 138412802;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_debug_impl(&dword_1AD246000, v5, OS_LOG_TYPE_DEBUG, "%@: ANEDeviceClose() self.usecount=%lld : self.device=%p", buf, 0x20u);
    }
  }
}

uint64_t __50___ANEDeviceController_sharedPrivilegedConnection__block_invoke()
{
  +[_ANEDeviceController sharedPrivilegedConnection]::conn = [[_ANEDeviceController alloc] initWithProgramHandle:0 priviledged:1];

  return MEMORY[0x1EEE66BB8]();
}

void __29___ANEDeviceController_start__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%@: ANEDeviceController not instantiated in VM", v4, 0xCu);
}

void __29___ANEDeviceController_start__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: ANEDeviceOpen() failed : ret=%u :", v4, 0x12u);
}

void __28___ANEDeviceController_stop__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.778e-34);
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: ANEDeviceClose() failed : ret=%u :", v4, 0x12u);
}

@end