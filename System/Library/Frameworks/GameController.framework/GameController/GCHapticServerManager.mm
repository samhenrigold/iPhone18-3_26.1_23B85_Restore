@interface GCHapticServerManager
@end

@implementation GCHapticServerManager

void __40___GCHapticServerManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_GCHapticServerManager);
  v1 = +[_GCHapticServerManager sharedInstance]::hapticServerManager;
  +[_GCHapticServerManager sharedInstance]::hapticServerManager = v0;
}

void __30___GCHapticServerManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[12];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30___GCHapticServerManager_init__block_invoke_2;
    v7[3] = &unk_1E841A0F0;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __30___GCHapticServerManager_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild(a1, a2))
  {
    __30___GCHapticServerManager_init__block_invoke_2_cold_1(a1);
  }

  v16 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v3 = [v16 intValue];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(*(a1 + 40) + 88);
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    v6 = *MEMORY[0x1E698CFF8];
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v7)];
        v9 = [v8 bundleIdentifier];
        v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          if (v3 == 2)
          {
            isInternalBuild = gc_isInternalBuild(v12, v13);
            if (isInternalBuild)
            {
              getGCHapticsLogger(isInternalBuild);
              objc_claimAutoreleasedReturnValue();
              __30___GCHapticServerManager_init__block_invoke_2_cold_2();
            }

            [v8 setMute:1 forReason:3];
            [v8 notifyClientOnStopWithReason:2 error:0];
          }

          else if (v3 == 8)
          {
            v14 = gc_isInternalBuild(v12, v13);
            if (v14)
            {
              getGCHapticsLogger(v14);
              objc_claimAutoreleasedReturnValue();
              __30___GCHapticServerManager_init__block_invoke_2_cold_3();
            }

            [v8 setMute:0 forReason:3];
          }

          [v8 setApplicationState:v3];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5 = v3;
  if (WeakRetained && v3)
  {
    isInternalBuild = gc_isInternalBuild(v3, v4);
    if (isInternalBuild)
    {
      v7 = getGCHapticsLogger(isInternalBuild);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = WeakRetained;
        v10 = 2048;
        v11 = [v5 clientID];
        _os_log_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_DEFAULT, "%@ has lost its connection to haptic client %lu.", &v8, 0x16u);
      }
    }

    [WeakRetained removeHapticClient:v5];
  }
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];
    [v6 setBundleIdentifier:v7];

    v8 = [MEMORY[0x1E695DF70] array];
    v9 = WeakRetained[12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2;
    v11[3] = &unk_1E841A0F0;
    v12 = WeakRetained;
    v13 = v8;
    v10 = v8;
    dispatch_async(v9, v11);
  }
}

uint64_t __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 88) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v5)];
        v7 = [v6 bundleIdentifier];
        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [v6 bundleIdentifier];
          LOBYTE(v8) = [v8 containsObject:v9];

          if ((v8 & 1) == 0)
          {
            v10 = *(a1 + 40);
            v11 = [v6 bundleIdentifier];
            [v10 addObject:v11];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  if (gc_isInternalBuild(v12, v13))
  {
    __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2_cold_1(a1);
  }

  return [*(*(a1 + 32) + 72) updateInterestedBundleIDs:*(a1 + 40)];
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [v3 addInvalidationHandler:*(a1 + 40)];
    v6 = WeakRetained[7];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v6 setObject:v5 forKey:v7];

    v8 = WeakRetained[11];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v8 setObject:v4 forKey:v9];

    isInternalBuild = gc_isInternalBuild(v10, v11);
    if (isInternalBuild)
    {
      v13 = getGCHapticsLogger(isInternalBuild);
      __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15_cold_1(v13);
    }
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) identifier];
  isInternalBuild = gc_isInternalBuild(v3, v4);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_2();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else if (!v3)
  {
    goto LABEL_12;
  }

  v6 = [*(*(a1 + 32) + 48) objectForKey:v3];
  [v6 unregisterHapticClient:*(a1 + 40)];
  v7 = [v6 hasClients];
  if ((v7 & 1) == 0)
  {
    v9 = gc_isInternalBuild(v7, v8);
    if (v9)
    {
      getGCHapticsLogger(v9);
      objc_claimAutoreleasedReturnValue();
      __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_3();
    }

    v10 = [*(*(a1 + 32) + 48) removeObjectForKey:v3];
    v12 = gc_isInternalBuild(v10, v11);
    if (v12)
    {
      getGCHapticsLogger(v12);
      objc_claimAutoreleasedReturnValue();
      __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_4();
    }

    [v6 stopAllHaptics];
  }

LABEL_12:
  [*(a1 + 40) teardownAndReleaseChannels];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
  if (v13)
  {
    v14 = *(*(a1 + 32) + 56);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
    [v14 removeObjectForKey:v15];

    v16 = *(*(a1 + 32) + 88);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
    [v16 removeObjectForKey:v17];
  }

  v18 = objc_opt_new();
  v20 = *(a1 + 32);
  v19 = (a1 + 32);
  v21 = *(v20 + 64);
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __45___GCHapticServerManager_removeHapticClient___block_invoke_17;
  v29 = &unk_1E841A1B8;
  v30 = v19[1];
  v22 = v18;
  v31 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:&v26];
  v23 = [*(*v19 + 8) removeObjectsForKeys:{v22, v26, v27, v28, v29}];
  v25 = gc_isInternalBuild(v23, v24);
  if (v25)
  {
    getGCHapticsLogger(v25);
    objc_claimAutoreleasedReturnValue();
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_5();
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a3 + 48) == *(a1 + 32))
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = [*(a1 + 32) object];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(*(a1 + 40) + 48);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = *v16;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v16 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        v6 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v5];
        v7 = [v6[1] identifier];
        v8 = [v14 identifier];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);

          goto LABEL_11;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    isInternalBuild = gc_isInternalBuild(v10, v11);
    if (isInternalBuild)
    {
      getGCHapticsLogger(isInternalBuild);
      objc_claimAutoreleasedReturnValue();
      __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_cold_1();
    }

    [*(*(a1 + 40) + 48) removeObjectForKey:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_23(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 88) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v8 + 1) + 8 * v5)];
        v7 = [v6 identifier];
        if ([v7 isEqual:*(*(*(a1 + 40) + 8) + 40)])
        {
          [v6 notifyClientOnStopWithReason:3 error:0];
          [v6 invalidateDueToControllerDisconnect];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) isActiveAtTime:mach_absolute_time() * 0.0000000416666667];
  if ((v3 & 1) == 0)
  {
    if (gc_isInternalBuild(v3, v4))
    {
      __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke_cold_1(a1 + 32);
    }

    v5 = [*v2 hapticLogicalDevice];

    if (v5)
    {
      v6 = [*v2 hapticLogicalDevice];
      [v6[4] removeObject:*v2];
    }

    v7 = *(a1 + 32);
    v8 = *(*(a1 + 40) + 64);
    v9 = [v7 identifier];
    [v8 removeObjectForKey:v9];
  }
}

void __38___GCHapticServerManager_enterRunloop__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) readClientDataForStartTime:*(a1 + 48) endTime:*(a1 + 56)];
  v4 = [*(a1 + 32) playersHaveImpendingCommandsForStartTime:*(a1 + 48) endTime:*(a1 + 56)];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ([*(a1 + 32) activeEvents] | v4) ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5 & 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 28) = [*(*(a1 + 32) + 88) count] != 0;
  }

  objc_autoreleasePoolPop(v2);
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processScheduledCommandsForStartTime:*(a1 + 40) endTime:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processActiveEventsForStartTime:*(a1 + 40) endTime:*(a1 + 48)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(*(a1 + 32) + 88) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v3 - v4;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
        v11 = v10;
        if (v10[8] == 1)
        {
          [v10 addActiveTime:v7];
          v11[8] = 0;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) identifyCompletedClients];

  objc_autoreleasePoolPop(v2);
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = getGCHapticsLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_10_4(&dword_1D2CD5000, v5, v6, "Application backgrounded, muting %@");
  }
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_10_4(&dword_1D2CD5000, v5, v6, "Application foregrounded, unmuting %@");
  }
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = getGCHapticsLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x16u);
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCHapticsLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0x16u);
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0xCu);
  }
}

void __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke_cold_1(uint64_t a1)
{
  v1 = getGCHapticsLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }
}

@end