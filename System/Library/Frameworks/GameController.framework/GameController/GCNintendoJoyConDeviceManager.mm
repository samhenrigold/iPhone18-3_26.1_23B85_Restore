@interface GCNintendoJoyConDeviceManager
@end

@implementation GCNintendoJoyConDeviceManager

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = [*(a1 + 32) fusionDevice];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 leftDevice];
      v6 = *(a1 + 32);
      if (v5 == v6)
      {
        v25 = *(*(a1 + 40) + 56);
        v1 = [v4 rightDevice];
        v26 = [v25 member:v1];
        if (v26)
        {

LABEL_30:
          if (gc_isInternalBuild(v27, v28))
          {
            __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_1(v4);
          }

          v5 = [v4 configuration];
          if ([v5 isTransient])
          {
            v32 = [*(a1 + 40) deviceRegistry];
            v33 = [v32 deviceConfigurationRegistry];
            v34 = [v5 identifier];
            [v33 removeConfigurationWithIdentifier:v34];
          }

          else
          {
            v32 = [v5 mutableCopy];
            [v32 setPriority:0];
            v33 = [*(a1 + 40) deviceRegistry];
            v34 = [v33 deviceConfigurationRegistry];
            [v34 updateConfiguration:v32];
          }

          v35 = [*(a1 + 40) deviceRegistry];
          v36 = [v35 deviceConfigurationRegistry];
          [v36 refreshActiveConfigurationsWithCompletion:0];

LABEL_38:
          goto LABEL_39;
        }
      }

      v7 = [v4 rightDevice];
      v8 = v7;
      if (v7 == *(a1 + 32))
      {
        v29 = *(*(a1 + 40) + 56);
        v30 = [v4 leftDevice];
        v31 = [v29 member:v30];

        if (v5 == v6)
        {
        }

        if (v31)
        {
          goto LABEL_30;
        }

LABEL_24:
        [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
LABEL_39:

        return;
      }

      if (v5 == v6)
      {
      }
    }

    else
    {
      v5 = [*(*(a1 + 40) + 56) anyObject];
      if (v5 && ([*(a1 + 32) type] == 1 && objc_msgSend(v5, "type") == 2 || objc_msgSend(*(a1 + 32), "type") == 2 && objc_msgSend(v5, "type") == 1))
      {
        v11 = [*(a1 + 32) type];
        v12 = v5;
        if (v11 == 1)
        {
          v12 = *(a1 + 32);
        }

        v13 = v12;
        v14 = [*(a1 + 32) type];
        v15 = v5;
        if (v14 == 2)
        {
          v15 = *(a1 + 32);
        }

        v16 = v15;
        if (gc_isInternalBuild(v16, v17))
        {
          __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_2();
        }

        v18 = [_GCNintendoFusedJoyConDevice identifierForFusedJoyConDeviceWithLeftDevice:v13 rightDevice:v16];
        v19 = [*(a1 + 40) deviceRegistry];
        v20 = [v19 deviceConfigurationRegistry];
        v21 = [v20 configurationWithIdentifier:v18];

        if (v21)
        {
          v22 = [v21 mutableCopy];
          [v22 setPriority:20];
          v23 = [*(a1 + 40) deviceRegistry];
          v24 = [v23 deviceConfigurationRegistry];
          [v24 updateConfiguration:v22];
        }

        else
        {
          [*(a1 + 40) _onqueue_registerFusionConfigurationWithLeftDevice:v13 rightDevice:v16];
        }

        v37 = [*(a1 + 40) deviceRegistry];
        v38 = [v37 deviceConfigurationRegistry];
        [v38 refreshActiveConfigurationsWithCompletion:0];

        goto LABEL_38;
      }
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 56);

  [v10 removeObject:v9];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 32);
  v4 = [[_GCNintendoJoyConDevicePending alloc] initWithHIDService:*(a1 + 32) manager:*(a1 + 40)];
  if (gc_isInternalBuild(v4, v5))
  {
    __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_1();
  }

  v6 = [*(*v2 + 4) objectForKey:*v3];

  if (v6)
  {
    __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_2(a1, a1 + 40, (a1 + 32));
  }

  [*(*v2 + 4) setObject:v4 forKey:*v3];
  objc_initWeak(&location, *v2);
  v7 = [(_GCNintendoJoyConDevicePending *)v4 device];
  v8 = *(*v2 + 1);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158;
  v9[3] = &unk_1E8419B70;
  objc_copyWeak(&v11, &location);
  v10 = *v3;
  [v7 observeSuccessOnQueue:v8 withBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (gc_isInternalBuild(WeakRetained, v5))
    {
      __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158_cold_1();
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    v7 = v6[5];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_159;
    v13 = &unk_1E8419B48;
    v8 = v3;
    v14 = v8;
    v15 = &v16;
    [v7 enumerateKeysAndObjectsWithOptions:0 usingBlock:&v10];
    if (v17[5])
    {
      [v6 _onqueue_relinquishHIDService:{v10, v11, v12, v13}];
    }

    _Block_object_dispose(&v16, 8);
    [v6[5] setObject:v8 forKey:*(a1 + 32)];
    [v6[4] removeObjectForKey:*(a1 + 32)];
    [v6 _onqueue_registerDefaultConfigurationsForDevice:v8];
    v9 = [v6 deviceRegistry];
    [v9 deviceManager:v6 deviceDidConnect:v8];
  }
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_159(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  isInternalBuild = gc_isInternalBuild(v2, v3);
  if (v2)
  {
    if (isInternalBuild)
    {
      __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1();
    }

    [v2 setDriverConnection:*(a1 + 48)];
  }

  else
  {
    if (isInternalBuild)
    {
      __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2();
    }

    [*(a1 + 48) invalidate];
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v4)
  {
    v5 = objc_opt_respondsToSelector();
    v6 = v5;
    isInternalBuild = gc_isInternalBuild(v5, v7);
    if (v6)
    {
      if (isInternalBuild)
      {
        __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2();
      }

      [v4 setFilterConnection:*(a1 + 48)];
    }

    else
    {
      if (isInternalBuild)
      {
        __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_1();
      }

      [*(a1 + 48) invalidate];
    }
  }

  v9 = [*(*v2 + 32) objectForKey:*v3];
  v11 = v9;
  if (v9)
  {
    if (gc_isInternalBuild(v9, v10))
    {
      __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3();
    }

    [v11 setFilterConnection:*(a1 + 48)];
  }

  else if (!v4)
  {
    __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_4(a1, v2, v2 + 1);
  }
}

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __61___GCNintendoJoyConDeviceManager_device_fusionGestureActive___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(v4 + 48) object:*v3 file:*a3 lineNumber:? description:?];
}

void __50___GCNintendoJoyConDeviceManager_claimHIDService___block_invoke_158_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "%@: Passing driver connection to device %@.", v5, v6, v7, v8);
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptDriverConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *v1;
    v5 = *v0;
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_ERROR, "%@: No device for %@", &v6, 0x16u);
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "Passing filter connection %@ to device %@.", v5, v6, v7, v8);
  }
}

void __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_6(&dword_1D2CD5000, v3, v4, "%@: Passing filter connection to device %@.", v5, v6, v7, v8);
  }
}

uint64_t __71___GCNintendoJoyConDeviceManager_acceptFilterConnection_forHIDService___block_invoke_cold_4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(v4 + 56) object:*v3 file:@"_GCNintendoJoyConDeviceManager.m" lineNumber:456 description:{@"No device for %@", *a3}];

  return [*(v4 + 48) invalidate];
}

@end