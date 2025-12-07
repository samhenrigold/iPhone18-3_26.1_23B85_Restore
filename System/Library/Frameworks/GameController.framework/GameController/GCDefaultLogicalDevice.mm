@interface GCDefaultLogicalDevice
@end

@implementation GCDefaultLogicalDevice

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_184(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 7, a2);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v6[9] objectEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setStatuses:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_214(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 18, a2);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v6[19] objectEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setBattery:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = [WeakRetained[30] tryHandleButtonPress];
      if (v5)
      {
        v6 = _gc_log_logical_device(v5);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
LABEL_28:

          goto LABEL_29;
        }

        v7 = [v4 identifier];
        *buf = 138412290;
        v36 = v7;
        v8 = "[%@] Handled by consumer.";
        v9 = v6;
        v10 = 12;
LABEL_6:
        _os_log_impl(&dword_1D2CD5000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_27:

        goto LABEL_28;
      }
    }

    v11 = [v4[31] stringForKey:@"homeButtonLongPressAction"];
    v6 = v11;
    if (!a2)
    {
      v14 = [getGPUserExperienceProxyClass() proxy];
      v7 = v14;
      if (v6 && (v14 = [v6 isEqualToString:@"$GamesApp"], !v14))
      {
        v15 = _gc_log_logical_device(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v4 identifier];
          *buf = 138412290;
          v36 = v23;
          _os_log_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEFAULT, "[%@] Try open game overlay.", buf, 0xCu);
        }

        v17 = 1;
      }

      else
      {
        v15 = _gc_log_logical_device(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 identifier];
          *buf = 138412290;
          v36 = v16;
          _os_log_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEFAULT, "[%@] Try open game overlay or app.", buf, 0xCu);
        }

        v17 = 3;
      }

      v24 = [MEMORY[0x1E695DF00] date];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239;
      v32[3] = &unk_1E841A600;
      v33 = v24;
      v34 = v6;
      v25 = v24;
      [v7 launchGameOverlayWithOptions:v17 reply:v32];

      goto LABEL_27;
    }

    if (!v11 || (v11 = [v11 isEqualToString:@"$GamesApp"], v11))
    {
      isInternalBuild = gc_isInternalBuild(v11, v12);
      if (isInternalBuild)
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_5(isInternalBuild);
      }

      v7 = [getGPUserExperienceProxyClass() proxy];
      [v7 launchGamesApp];
      goto LABEL_27;
    }

    v18 = [v6 isEqualToString:@"$AppLibrary"];
    if (v18)
    {
      v20 = gc_isInternalBuild(v18, v19);
      if (v20)
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3(v20);
      }

      v21 = GCLookupService();
      v7 = v21;
      if (v21)
      {
        [v21 togglePlatformGamesLibrary];
        goto LABEL_27;
      }

      v31 = gc_isInternalBuild(0, v22);
      if (!v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v26 = [v6 length];
      v28 = gc_isInternalBuild(v26, v27);
      if (!v26)
      {
        if (!v28)
        {
          goto LABEL_28;
        }

        v7 = getGCLogger(v28);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v8 = "No action.";
        v9 = v7;
        v10 = 2;
        goto LABEL_6;
      }

      if (v28)
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_1(v6);
      }

      v29 = GCLookupService();
      v7 = v29;
      if (v29)
      {
        [v29 launchApplicationWithBundleIdentifier:v6];
        goto LABEL_27;
      }

      v31 = gc_isInternalBuild(0, v30);
      if (!v31)
      {
        goto LABEL_27;
      }
    }

    __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2(v31);
    goto LABEL_27;
  }

LABEL_29:
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (v6 <= 2.0)
  {
    isInternalBuild = gc_isInternalBuild(v7, v8);
    if (a2)
    {
      if (!isInternalBuild)
      {
        return;
      }

      v10 = getGCLogger(isInternalBuild);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v27 = 0;
      v11 = "Handled by game policy.";
      v12 = &v27;
      goto LABEL_6;
    }

    if (isInternalBuild)
    {
      __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_1(isInternalBuild);
    }

    v14 = *(a1 + 40);
    v13 = (a1 + 40);
    v15 = [v14 isEqualToString:@"$AppLibrary"];
    if (v15)
    {
      v17 = gc_isInternalBuild(v15, v16);
      if (v17)
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3(v17);
      }

      v18 = GCLookupService();
      v10 = v18;
      if (v18)
      {
        [v18 togglePlatformGamesLibrary];
        goto LABEL_27;
      }

      v24 = gc_isInternalBuild(0, v19);
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = [*v13 length];
      if (!v20)
      {
        v25 = gc_isInternalBuild(0, v21);
        if (!v25)
        {
          return;
        }

        v10 = getGCLogger(v25);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v28 = 0;
        v11 = "No action.";
        v12 = &v28;
LABEL_6:
        _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
LABEL_27:

        return;
      }

      if (!*v13)
      {
        return;
      }

      if (gc_isInternalBuild(v20, v21))
      {
        __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_2(v13);
      }

      v22 = GCLookupService();
      v10 = v22;
      if (v22)
      {
        [v22 launchApplicationWithBundleIdentifier:*v13];
        goto LABEL_27;
      }

      v24 = gc_isInternalBuild(0, v23);
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2(v24);
    goto LABEL_27;
  }

  v26 = gc_isInternalBuild(v7, v8);
  if (v26)
  {
    v10 = getGCLogger(v26);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v29 = 0;
    v11 = "Game policy request timed out.";
    v12 = &v29;
    goto LABEL_6;
  }
}

void __38___GCDefaultLogicalDevice__addClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeClient:v2];
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_1_17(&dword_1D2CD5000, v3, v4, "No game intent launcher service", v5, v6, v7, v8, v9);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v3, v4, v5, v6, v7);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_228_cold_5(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v3, v4, v5, v6, v7);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_5(v3, v4, v5, v6, v7);
  }
}

void __72___GCDefaultLogicalDevice_initWithPhysicalDevice_configuration_manager___block_invoke_239_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
  }
}

@end