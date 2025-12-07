@interface UpdateCurrentSessionFromLikelyDestinations
@end

@implementation UpdateCurrentSessionFromLikelyDestinations

void __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    v6 = *(a1 + 48);
    CFRetain(*(a1 + 32));
    v4 = v6;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __routingSessionManager_startSessionIfNecessary_block_invoke;
  v7[3] = &__block_descriptor_56_e56_v32__0i8____CFDictionary__12__ARPPredictionContext_20C28l;
  v7[4] = v2;
  v8 = v4;
  if (v2)
  {
    CFRetain(v2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __routingSessionManager_findTopAvailablePredictedDestination_block_invoke;
  v10[3] = &unk_1E7AECE30;
  v10[4] = v7;
  v10[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __routingSessionManager_findTopAvailablePredictedDestination_block_invoke_198;
  v9[3] = &unk_1E7AECE58;
  v9[4] = v7;
  v9[5] = v2;
  routingSessionManager_discoverRoutes(v10, v9, v3);
  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke(uint64_t a1)
{
  v35[16] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v33);
  v3 = v34;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFAbsoluteTimeGetCurrent();
  routingSessionManager_getConfiguration(&v31);
  v6 = CFDateCreate(v4, v5 - v32);
  isVideoOnScreen = routingSessionManager_isVideoOnScreen(*(a1 + 32));
  FigSimpleMutexLock();
  v8 = *(*(a1 + 40) + 48);
  v28 = v6;
  if (v8)
  {
    v9 = 0;
    while (CFArrayGetCount(v8) > v9)
    {
      CFArrayGetValueAtIndex(*(*(a1 + 40) + 48), v9);
      LOBYTE(v35[0]) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (LOBYTE(v35[0]))
      {
        v10 = 0;
        goto LABEL_8;
      }

      ++v9;
      v8 = *(*(a1 + 40) + 48);
      if (!v8)
      {
        break;
      }
    }
  }

  v10 = 1;
LABEL_8:
  v35[0] = 0;
  v11 = OUTLINED_FUNCTION_20_1();
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v13 = OUTLINED_FUNCTION_20_1();
  Float32 = FigCFNumberCreateFloat32();
  CFDictionarySetValue(v13, @"RouteName", @"Fake route name");
  CFDictionarySetValue(v13, @"RouteUID", @"Fake route ID");
  CFDictionarySetValue(v13, @"AudioRouteName", @"AirTunes");
  CFDictionarySetValue(v13, @"AudioRouteSubType", @"AppleTV");
  v15 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(v13, @"RouteSupportsAirPlayVideo", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v13, @"RouteSupportsAirPlayScreen", v15);
  CFArrayAppendValue(Mutable, v13);
  if (Mutable)
  {
    CFDictionarySetValue(v11, @"routingSessionDestination_RouteDescriptors", Mutable);
  }

  CFDictionarySetValue(v11, @"routingSessionDestination_Probability", Float32);
  CFDictionarySetValue(v11, @"routingSessionDestination_ProvidesExternalVideoPlayback", v15);
  if ((v10 & 1) == 0)
  {
    CFDictionarySetValue(v11, @"routingSessionDestination_FromForcedPrediction", v15);
  }

  v16 = FigRoutingSessionCreate(v4, 1, v11, v35);
  if (!v16 && v35[0])
  {
    v17 = CFRetain(v35[0]);
    if (!Float32)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  if (Float32)
  {
LABEL_15:
    CFRelease(Float32);
  }

LABEL_16:
  if (v35[0])
  {
    CFRelease(v35[0]);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    FakePredictionContext = 0;
    v20 = v28;
  }

  else
  {
    FakePredictionContext = routingSessionManager_createFakePredictionContext();
    shouldUpdateCurrentSession = routingSessionManager_shouldUpdateCurrentSession(*(*(a1 + 40) + 24), *(*(a1 + 40) + 72), *(*(a1 + 40) + 88), *(*(a1 + 40) + 96), v17, FakePredictionContext, 1, 0, 0, isVideoOnScreen);
    FigSimpleMutexUnlock();
    if (shouldUpdateCurrentSession)
    {
      v24 = Current + v3;
      v25 = *(a1 + 32);
      v20 = v28;
      if (v25)
      {
        CFRetain(v25);
        v26 = *(a1 + 32);
      }

      else
      {
        v26 = 0;
      }

      v27 = CFAbsoluteTimeGetCurrent();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __routingSessionManager_UpdateCurrentSessionFromLikelyDestinations_block_invoke_2;
      v29[3] = &__block_descriptor_64_e42_v24__0__NSArray_8__ARPPredictionContext_16l;
      v29[4] = *(a1 + 32);
      *&v29[5] = v24;
      v30 = *(a1 + 48);
      routingSessionManager_waitForRecentPredictions(v26, v28, v29, v24 - v27);
    }

    else
    {
      v20 = v28;
      if (dword_1EB75DF00)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_0_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = *(a1 + 48);
      if (v22)
      {
        v22(*(a1 + 56), 0);
      }
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    CFRelease(v23);
  }
}

@end