@interface GCGenericDeviceManager
@end

@implementation GCGenericDeviceManager

void __43___GCGenericDeviceManager_claimHIDService___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  v3 = (a1 + 32);
  v4 = [[_GCGenericPhysicalDevicePending alloc] initWithHIDService:*(a1 + 32) manager:*(a1 + 40)];
  v5 = _gc_log_generic_device(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *v2;
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1D2C3B000, v5, OS_LOG_TYPE_INFO, "%@: Adding %@", buf, 0x16u);
  }

  v7 = [*(*v2 + 6) objectForKey:*v3];
  v8 = v7 == 0;

  if (!v8)
  {
    __43___GCGenericDeviceManager_claimHIDService___block_invoke_cold_1(a1, (a1 + 40), (a1 + 32));
  }

  [*(*v2 + 6) setObject:v4 forKey:*v3];
  objc_initWeak(buf, *v2);
  v9 = [(_GCGenericPhysicalDevicePending *)v4 device];
  v10 = *(*v2 + 1);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43___GCGenericDeviceManager_claimHIDService___block_invoke_28;
  v11[3] = &unk_1E8413DF0;
  objc_copyWeak(&v13, buf);
  v12 = *v3;
  [v9 observeSuccessOnQueue:v10 withBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __43___GCGenericDeviceManager_claimHIDService___block_invoke_28(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _gc_log_generic_device(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_INFO, "%@: Prepared %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    v7 = v5[7];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __43___GCGenericDeviceManager_claimHIDService___block_invoke_29;
    v14 = &unk_1E8413DC8;
    v8 = v3;
    v15 = v8;
    v16 = buf;
    [v7 enumerateKeysAndObjectsWithOptions:0 usingBlock:&v11];
    v9 = *(*&buf[8] + 40);
    if (v9)
    {
      [(_GCGenericDeviceManager *)v5 _onqueue_relinquishHIDService:v9];
    }

    _Block_object_dispose(buf, 8);
    [v5[7] setObject:v8 forKey:{*(a1 + 32), v11, v12, v13, v14}];
    [v5[6] removeObjectForKey:*(a1 + 32)];
    [v5 _onqueue_registerDefaultConfigurationForDevice:v8];
    v10 = [v5 deviceRegistry];
    [v10 deviceManager:v5 deviceDidConnect:v8];
  }
}

void __43___GCGenericDeviceManager_claimHIDService___block_invoke_29(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 identifier];
  v11 = [v9 identifier];

  LODWORD(v9) = [v10 isEqual:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  v3 = _gc_log_generic_device(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1();
    }

    [v2 setDriverConnection:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2();
    }

    [*(a1 + 48) invalidate];
  }
}

void __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  if (v4)
  {
    v5 = objc_opt_respondsToSelector();
    v6 = v5;
    v7 = _gc_log_generic_device(v5);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_1();
      }

      [v4 setFilterConnection:*(a1 + 48)];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_1D2C3B000, v8, OS_LOG_TYPE_INFO, "Dropping incoming filter connection %@ because %@ does not support it.", &v13, 0x16u);
      }

      [*(a1 + 48) invalidate];
    }
  }

  v10 = [*(*v2 + 48) objectForKey:*v3];
  v11 = v10;
  if (v10)
  {
    v12 = _gc_log_generic_device(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2();
    }

    [v11 setFilterConnection:*(a1 + 48)];
  }

  else if (!v4)
  {
    __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3(a1, v2, v2 + 1);
  }
}

void __43___GCGenericDeviceManager_claimHIDService___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*a2 file:*a3 lineNumber:? description:?];
}

void __64___GCGenericDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_1D2C3B000, v1, OS_LOG_TYPE_ERROR, "%@: No device for %@", v2, 0x16u);
}

uint64_t __64___GCGenericDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"_GCGenericDeviceManager.m" lineNumber:304 description:{@"No device for %@", *a3}];

  return [*(a1 + 48) invalidate];
}

@end