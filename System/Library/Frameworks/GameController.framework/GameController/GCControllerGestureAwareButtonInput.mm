@interface GCControllerGestureAwareButtonInput
@end

@implementation GCControllerGestureAwareButtonInput

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    *(v3 + 8) = v5;

    v6 = *(a1 + 56);
    [*(a1 + 32) deadzone];
    *(v3 + 16) = v6 > v7;
    if (([*(a1 + 32) isDoublePressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 20) = 1;
    }

    if (([*(a1 + 32) isSinglePressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 21) = 1;
    }

    if (([*(a1 + 32) isLongPressGestureRecognizerEnabled] & 1) == 0)
    {
      *(v3 + 19) = 1;
    }

    v8 = [*(a1 + 32) isDoublePressGestureRecognizerEnabled];
    if (v8)
    {
      [*(a1 + 32) __onqueue_executeDoublePressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild(v8, v9))
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_1(v3 + 16);
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }

    v10 = [*(a1 + 32) isSinglePressGestureRecognizerEnabled];
    if (v10)
    {
      [*(a1 + 32) __onqueue_executeSinglePressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild(v10, v11))
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_2(v3 + 16);
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }

    v12 = [*(a1 + 32) isLongPressGestureRecognizerEnabled];
    if (v12)
    {
      [*(a1 + 32) __onqueue_executeLongPressRecognizerForEvent:v3 queue:*(a1 + 40)];
    }

    else
    {
      if (gc_isInternalBuild(v12, v13))
      {
        __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_3(v3 + 16);
      }

      [*(a1 + 32) __onqueue_forwardEvent:v3 queue:*(a1 + 40)];
    }
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  *(*(a1 + 32) + 20) = 1;
  if (gc_isInternalBuild(a1, a2))
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_cold_1(v3);
  }

  v4 = *v3;
  if ((*(*v3 + 17) & 1) == 0 && v4[18] == 1 && v4[19] == 1)
  {
    v4[17] = 1;
    if (*(*(a1 + 40) + 224))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112;
      block[3] = &unk_1E8418C28;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [*(a1 + 40) __onqueue_forwardEvent:? queue:?];
  }
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 216) + 16))();
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 17) & 1) == 0)
  {
    isInternalBuild = gc_isInternalBuild(a1, a2);
    if (isInternalBuild)
    {
      __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_cold_1(isInternalBuild);
    }

    *(*(a1 + 32) + 17) = 1;
    if (*(*(a1 + 40) + 208))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114;
      block[3] = &unk_1E8418C28;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 208) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_115(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 208) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117_cold_1(a1);
  }

  return [*(a1 + 40) __onqueue_forwardEvent:*(a1 + 32) queue:*(a1 + 48)];
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_cold_1(a1);
  }

  return (*(*(*(a1 + 32) + 224) + 16))();
}

uint64_t __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118(uint64_t a1, uint64_t a2)
{
  if (gc_isInternalBuild(a1, a2))
  {
    __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118_cold_1(a1);
  }

  return [*(a1 + 40) __onqueue_forwardEvent:*(a1 + 32) queue:*(a1 + 48)];
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void __68___GCControllerGestureAwareButtonInput_registerSetValueEvent_queue___block_invoke_cold_3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_112_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Double recognizer failed, triggering single press gesture handler for %@", v5, v6, v7, v8);
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeDoublePressRecognizerForEvent_queue___block_invoke_113_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Triggering multi press gesture handler for %@", v5, v6, v7, v8);
  }
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_114_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Triggering long press gesture handler for %@", v5, v6, v7, v8);
  }
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_116_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Long press recognizer failed, triggering single press gesture handler for %@", v5, v6, v7, v8);
  }
}

void __91___GCControllerGestureAwareButtonInput___onqueue_executeLongPressRecognizerForEvent_queue___block_invoke_117_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_19(&dword_1D2CD5000, v3, v4, "Directly triggering single press gesture handler for %@", v5, v6, v7, v8);
  }
}

void __93___GCControllerGestureAwareButtonInput___onqueue_executeSinglePressRecognizerForEvent_queue___block_invoke_118_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_2_12();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

@end