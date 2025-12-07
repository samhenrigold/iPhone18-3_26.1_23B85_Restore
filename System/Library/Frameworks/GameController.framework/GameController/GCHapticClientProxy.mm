@interface GCHapticClientProxy
@end

@implementation GCHapticClientProxy

void __60___GCHapticClientProxy__initWithConnection_server_clientID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 invalidate];
}

void __71___GCHapticClientProxy_InvalidationObservable__addInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 invalidationHandlers];
    v5 = [v4 mutableCopy];

    v6 = _Block_copy(*(a1 + 32));
    [v5 removeObject:v6];

    [v3 setInvalidationHandlers:v5];
    objc_sync_exit(v3);

    WeakRetained = v7;
  }
}

void __62___GCHapticClientProxy_HapticServer__queryCapabilities_reply___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEqualToString:@"SupportsAudioPlayback"] || objc_msgSend(v3, "isEqualToString:", @"SupportsAdvancedPatternPlayers"))
  {
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"HapticContinuousTimeLimit"])
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
    [v4 setObject:v5 forKey:v3];
LABEL_8:

    goto LABEL_9;
  }

  v6 = [v3 isEqualToString:@"UsingInternalHaptics"];
  if (v6)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v8 setObject:v5 forKey:v3];
    goto LABEL_8;
  }

  if (*(a1 + 40))
  {
    if ([v3 isEqualToString:@"HapticTransientDefaultIntensity"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticTransientDefaultSharpness") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticContinuousDefaultIntensity") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticContinuousDefaultSharpness"))
    {
      v10 = &unk_1F4E8F570;
LABEL_17:
      v6 = [*(a1 + 32) setObject:v10 forKey:v3];
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"HapticTransientEventIDs"])
    {
      v11 = *(a1 + 48);
      v12 = &unk_1F4E8F4F8;
      v13 = &unk_1F4E8F4E0;
      goto LABEL_24;
    }

    if ([v3 isEqualToString:@"HapticContinuousSustainedEventIDs"])
    {
      v11 = *(a1 + 48);
      v12 = &unk_1F4E8F528;
      v13 = &unk_1F4E8F510;
      goto LABEL_24;
    }

    v6 = [v3 isEqualToString:@"HapticContinuousNonsustainedEventIDs"];
    if (v6)
    {
      v11 = *(a1 + 48);
      v12 = &unk_1F4E8F558;
      v13 = &unk_1F4E8F540;
LABEL_24:
      if (v11)
      {
        v10 = v13;
      }

      else
      {
        v10 = v12;
      }

      goto LABEL_17;
    }
  }

LABEL_9:
  isInternalBuild = gc_isInternalBuild(v6, v7);
  if (isInternalBuild)
  {
    v14 = getGCHapticsLogger(isInternalBuild);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v16 = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_INFO, "Set %@ to %@", &v16, 0x16u);
    }
  }
}

uint64_t __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild(a1, a2))
  {
    __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke_cold_1(a1);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 224);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 teardown];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 224) removeAllObjects];
}

uint64_t __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild(a1, a2))
  {
    __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke_cold_1(a1);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(a1 + 32) + 224);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 setRetainedByClient:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 224) removeAllObjects];
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke(void *a1, uint64_t a2)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild(a1, a2))
  {
    __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_1(a1);
  }

  v3 = a1 + 4;
  v4 = a1[6];
  if (v4 < [*(a1[4] + 224) count])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a1[7] object:a1[4] file:@"GCHapticClientProxy.mm" lineNumber:566 description:@"Client attempting to request fewer channels than already reserved"];
  }

  v5 = a1[6];
  v6 = [*(a1[4] + 224) count];
  v7 = +[_GCHapticServerManager sharedInstance];
  v29 = [v7 __onqueue_reserveChannels:v5 - v6 forClient:a1[4]];

  if (v29)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v29;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = *v35;
      do
      {
        v11 = 0;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          ++*(*v3 + 168);
          v13 = *(*v3 + 224);
          v14 = [v12 identifier];
          [v13 setObject:v12 forKey:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = *(*v3 + 224);
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = *v31;
      do
      {
        v19 = 0;
        do
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*v3 + 224) objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v19)];
          v21 = [v20 identifier];
          [v15 addObject:v21];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    isInternalBuild = gc_isInternalBuild(v22, v23);
    if (isInternalBuild)
    {
      getGCHapticsLogger(isInternalBuild);
      objc_claimAutoreleasedReturnValue();
      __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_2();
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v25 = a1[5];
    v26 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Client not registred";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v27 = [v26 errorWithDomain:@"GameControllerHaptics" code:0 userInfo:v15];
    (*(v25 + 16))(v25, 0, v27);
  }
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke(void *a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_1(a1);
  }

  v3 = *(a1[4] + 224);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    [v5 setRetainedByClient:0];
    v6 = *(a1[4] + 224);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v6 removeObjectForKey:v7];
    v8 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setValue:@"Attempting to remove channel that client does not have" forKey:*MEMORY[0x1E696A578]];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Game Controller Haptics" code:-4804 userInfo:v7];
  }

  isInternalBuild = gc_isInternalBuild(v9, v10);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_2();
  }

  (*(a1[5] + 16))();
}

void __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCHapticsLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCHapticsLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCHapticsLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCHapticsLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_4();
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*v1 + 176);
    v4 = 134218242;
    v5 = v3;
    OUTLINED_FUNCTION_10_9();
    _os_log_debug_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEBUG, "HapticClient %lu - removeChannels - channels=%@", &v4, 0x16u);
  }
}

@end