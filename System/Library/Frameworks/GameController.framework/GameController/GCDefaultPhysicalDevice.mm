@interface GCDefaultPhysicalDevice
@end

@implementation GCDefaultPhysicalDevice

void __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_3;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB32B8 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 25, a2);
      [*(a1 + 32) refreshHomeButtonConfiguration];
    }

    else
    {
      __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_3_cold_1();
    }
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB3198 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (!v6)
    {
      isInternalBuild = gc_isInternalBuild(WeakRetained, v9);
      if (!isInternalBuild)
      {
        goto LABEL_8;
      }

      v13 = a1;
      v11 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);
        *buf = 138412802;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEFAULT, "%@ failed to connect to 'Light Service' on connection %@: %@", buf, 0x20u);
      }

      goto LABEL_6;
    }

    objc_storeStrong(WeakRetained + 21, a2);
    if (v10[5] && v10[21])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_244;
      block[3] = &unk_1E8418C28;
      v17 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v11 = v17;
LABEL_6:
    }
  }

LABEL_8:
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_245(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_247;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB31F8 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_247(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (!v6)
    {
      isInternalBuild = gc_isInternalBuild(WeakRetained, v9);
      if (!isInternalBuild)
      {
        goto LABEL_8;
      }

      v13 = a1;
      v11 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);
        *buf = 138412802;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEFAULT, "%@ failed to connect to 'Adaptive Triggers Service' on connection %@: %@", buf, 0x20u);
      }

      goto LABEL_6;
    }

    objc_storeStrong(WeakRetained + 20, a2);
    if (v10[6] && v10[20])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_248;
      block[3] = &unk_1E8418C28;
      v17 = v10;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v11 = v17;
LABEL_6:
    }
  }

LABEL_8:
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_249(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_251;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB3258 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_251(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 22, a2);
    }

    else if (gc_isInternalBuild(WeakRetained, v9))
    {
      __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_251_cold_1();
    }
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_252(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_254;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB3078 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_254(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 23, a2);
      if (v10[12] && v10[23])
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_255;
        block[3] = &unk_1E8418C28;
        v12 = v10;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      [v10 createPowerSource];
    }

    else if (gc_isInternalBuild(WeakRetained, v9))
    {
      __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_254_cold_1();
    }
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_256(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_258;
  v6[3] = &unk_1E8419CB0;
  objc_copyWeak(&v8, (a1 + 48));
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 connectToDeviceService:&unk_1F4EB30D8 withClient:v3 reply:v6];

  objc_destroyWeak(&v8);
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_258(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      objc_storeStrong(WeakRetained + 24, a2);
    }

    else if (gc_isInternalBuild(WeakRetained, v9))
    {
      __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_258_cold_1();
    }
  }
}

void __75___GCDefaultPhysicalDevice_Motion__setDeviceMotionServiceConnectedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[8] + 16))();
    WeakRetained = v2;
  }
}

void __73___GCDefaultPhysicalDevice_Light__setDeviceLightServiceConnectedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[5] + 16))();
    WeakRetained = v2;
  }
}

void __40___GCDefaultPhysicalDevice_Light__light__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __95___GCDefaultPhysicalDevice_AdaptiveTriggers__setDeviceAdaptiveTriggersServiceConnectedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[6] + 16))();
    WeakRetained = v2;
  }
}

void __61___GCDefaultPhysicalDevice_AdaptiveTriggers__triggerStatuses__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __158___GCDefaultPhysicalDevice_AdaptiveTriggersClient__updateAdaptiveTriggerStatusWithLeftMode_leftStatus_leftArmPosition_rightMode_rightStatus_rightArmPosition___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:*(a1 + 40) armPosition:*(a1 + 41) mode:*(a1 + 42)];
    v8[0] = v3;
    v4 = [[GCDeviceAdaptiveTriggersStatusPayload alloc] initFeedbackWithStatus:*(a1 + 43) armPosition:*(a1 + 44) mode:*(a1 + 45)];
    v8[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

    if (gc_isInternalBuild(v6, v7))
    {
      __158___GCDefaultPhysicalDevice_AdaptiveTriggersClient__updateAdaptiveTriggerStatusWithLeftMode_leftStatus_leftArmPosition_rightMode_rightStatus_rightArmPosition___block_invoke_cold_1(v5);
    }

    (*(WeakRetained[7] + 16))();
  }
}

void __77___GCDefaultPhysicalDevice_Battery__setDeviceBatteryServiceConnectedHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[12] + 16))();
    WeakRetained = v2;
  }
}

void __44___GCDefaultPhysicalDevice_Battery__battery__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [_GCDefaultPhysicalDevice _updatePowerSourceWithBatteryLevel:a2 charging:?];
    [(_GCDefaultPhysicalDevice *)v6 _displayBatteryAlertIfNeededForBatteryLevel:a2 charging:v3];
    WeakRetained = v6;
  }
}

void __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke_496(uint64_t a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (gc_isInternalBuild(state, v4))
  {
    __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke_496_cold_1(&state64);
  }

  if (state64)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _displayBatteryAlertForBatteryLevel:state64];
  }
}

void __68___GCDefaultPhysicalDevice_BatteryClient__updateBattery_isCharging___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[GCDeviceBattery alloc] initWithLevel:*(a1 + 40) isCharging:*(a1 + 41)];
    if (gc_isInternalBuild(v3, v4))
    {
      __68___GCDefaultPhysicalDevice_BatteryClient__updateBattery_isCharging___block_invoke_cold_1(v3);
    }

    (*(WeakRetained[13] + 16))();
  }
}

void __67___GCDefaultPhysicalDevice_GameIntentClient__handleButton_gesture___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = _gc_log_physical_device(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3[26] registryID];
      v7 = 134218240;
      v8 = [v6 unsignedLongLongValue];
      v9 = 1024;
      v10 = v4 == 2;
      _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "[%#010llx] Perform gameIntentGesture(long: %{BOOL}d)", &v7, 0x12u);
    }

    (*(v3[15] + 2))();
  }
}

void __48___GCDefaultPhysicalDevice_setFilterConnection___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_4();
  isInternalBuild = gc_isInternalBuild(v1, v2);
  if (isInternalBuild)
  {
    v4 = getGCLogger(isInternalBuild);
    if (OUTLINED_FUNCTION_4_5(v4))
    {
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6_8(v5, v6, v7, v8, v9);
    }
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_251_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6_8(v3, v4, v5, v6, v7);
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_2_254_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6_8(v3, v4, v5, v6, v7);
  }
}

void __48___GCDefaultPhysicalDevice_setDriverConnection___block_invoke_3_258_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = getGCLogger(v1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6_8(v3, v4, v5, v6, v7);
  }
}

void __158___GCDefaultPhysicalDevice_AdaptiveTriggersClient__updateAdaptiveTriggerStatusWithLeftMode_leftStatus_leftArmPosition_rightMode_rightStatus_rightArmPosition___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __54___GCDefaultPhysicalDevice_Battery__createPowerSource__block_invoke_496_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __68___GCDefaultPhysicalDevice_BatteryClient__updateBattery_isCharging___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end