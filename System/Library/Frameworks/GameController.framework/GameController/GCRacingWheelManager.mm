@interface GCRacingWheelManager
@end

@implementation GCRacingWheelManager

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2;
  aBlock[3] = &unk_1E841AC98;
  aBlock[4] = *(a1 + 32);
  v16 = a2;
  v2 = _Block_copy(aBlock);
  v24[0] = @"VendorID";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923VID];
  v25[0] = v3;
  v24[1] = @"ProductID";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923PID_HIDpp];
  v24[2] = @"PrimaryUsage";
  v25[1] = v4;
  v25[2] = &unk_1F4E8E480;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v2[2](v2, v5);

  v22[0] = @"VendorID";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923VID];
  v23[0] = v6;
  v22[1] = @"ProductID";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923PID_Classic];
  v22[2] = @"PrimaryUsage";
  v23[1] = v7;
  v23[2] = &unk_1F4E8E480;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v2[2](v2, v8);

  v20[0] = @"VendorID";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG920VID];
  v21[0] = v9;
  v20[1] = @"ProductID";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG920PID];
  v20[2] = @"PrimaryUsage";
  v21[1] = v10;
  v21[2] = &unk_1F4E8E480;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v2[2](v2, v11);

  v18[0] = @"VendorID";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG29VID];
  v19[0] = v12;
  v18[1] = @"ProductID";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG29PID];
  v19[1] = v13;
  v19[2] = &unk_1F4E8E498;
  v18[2] = @"PrimaryUsagePage";
  v18[3] = @"PrimaryUsage";
  v19[3] = &unk_1F4E8E480;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v2[2](v2, v14);

  v15 = [MEMORY[0x1E695DFB0] null];
  [v16 succeedWithResult:v15];
}

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = IOServiceMatching("IOHIDDevice");
  [v4 addEntriesFromDictionary:v5];

  notification = 0;
  v6 = [*(*(a1 + 32) + 16) port];
  v7 = v4;
  v8 = IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", v7, DeviceMatched, *(a1 + 32), &notification);
  if (v8)
  {
    if (gc_isInternalBuild(v8, v9))
    {
      __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    CFSetAddValue(*(*(a1 + 32) + 24), notification);
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_92;
    v12[3] = &unk_1E841AC70;
    v12[4] = v10;
    v13 = notification;
    dispatch_async(v11, v12);
    IOObjectRelease(notification);
  }
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2;
  v10[3] = &unk_1E8418CA0;
  v11 = v3;
  v12 = v4;
  v10[4] = v4;
  v6 = *(v4 + 8);
  v7 = v3;
  [v5 addCancellationHandler:v10 onQueue:v6];
  CFSetRemoveAllValues(*(*(a1 + 32) + 32));
  CFSetRemoveAllValues(*(*(a1 + 32) + 24));
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(*(a1 + 48) + 40) allValues];
  v4 = [v2 setWithArray:v3];

  if (gc_isInternalBuild(v5, v6))
  {
    __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2_cold_1(v4);
  }

  [*(a1 + 48) willChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v4];
  [*(a1 + 48) willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  v7 = *(a1 + 48);
  objc_sync_enter(v7);
  [*(*(a1 + 48) + 40) removeAllObjects];
  objc_sync_exit(v7);

  [*(a1 + 48) didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  [*(a1 + 48) didChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v4];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x1E695DFB0] null];
  [v8 succeedWithResult:v9];
}

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_8_6(v2))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9) = 138412290;
    *(&v9 + 4) = a1;
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Remove all remaining Racing Wheel Devices: %@", v5, v6, v7, v8, v9, DWORD2(v9));
  }
}

@end