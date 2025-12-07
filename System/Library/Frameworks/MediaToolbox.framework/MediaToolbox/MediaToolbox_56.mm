uint64_t fbapo_setAudioSessionID(uint64_t a1, uint64_t a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 56))
  {
    return 0;
  }

  result = fbapo_amIActiveEndpointStreamClient(a1);
  if (result)
  {
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E69624F8];

      return v6(CMBaseObject, v7, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fbapo_audioEngineIsResumed(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  FigEndpointStreamAudioEngineGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, @"isResumed", *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_4;
  }

  Value = CFBooleanGetValue(BOOLean);
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_4:
    CFRelease(v5);
  }

  return Value;
}

void fbapo_endpointStreamInterruptionCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v13 = Mutable;
    v14 = CFEqual(a3, *MEMORY[0x1E6962520]);
    if (v14 || CFEqual(a3, *MEMORY[0x1E6962528]))
    {
      if (dword_1EAF17590)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v14)
      {
        if (*(DerivedStorage + 64))
        {
          CFDictionaryAddValue(v13, @"NotifyOthers", *MEMORY[0x1E695E4D0]);
          v16 = *(DerivedStorage + 64);
          if (v16)
          {
            v17 = *(CMBaseObjectGetVTable() + 16);
            if (v17)
            {
              v18 = *(v17 + 88);
              if (v18)
              {
                v18(v16, v13);
              }
            }
          }
        }
      }
    }

    CFRelease(v13);
  }

  else
  {
    fbapo_endpointStreamInterruptionCallback_cold_1(0, v6, v7, v8, v9, v10, v11, v12, v19, v20, SHIDWORD(v20), v21);
  }
}

uint64_t fbapo_endpointStreamALACStreamingSupportChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    *(DerivedStorage + 265) = 1;
  }

  if (dword_1EAF17590)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

void fbapo_postNotificationInternal(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  CFRetain(a1);
  v7 = *(DerivedStorage + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapo_postNotificationInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_153_0;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

BOOL fbapo_doesEndpointStreamSupportMixedSampleRates(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v3 = v2 && !v2(CMBaseObject, *MEMORY[0x1E69625B0], *MEMORY[0x1E695E480], &cf) && FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t fbapo_channelLayoutTagHash(int a1)
{
  if (a1 == 12845066)
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 12779530)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 12713992)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 12648464)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 12582924)
  {
    v5 = 128;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 12713991)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (a1 == 8388616)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 8126470)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  if (a1 == 6619138)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 6553601)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (a1 <= 8126469)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= 12582923)
  {
    return v11;
  }

  else
  {
    return v6;
  }
}

void __fbapo_postNotificationInternal_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];

  fbapo_releaseAsync(v3);
}

void fbapo_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbapo_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_154_0;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

uint64_t fbapo_audioEngineBufferingPriorityChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  block[29] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a5, @"bufferingPriority");
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = *(DerivedStorage + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapo_audioEngineBufferingPriorityChangedCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_159;
  block[4] = DerivedStorage;
  block[5] = v8;
  dispatch_async(v9, block);
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

uint64_t fbapo_audioEngineFormatInfoChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    if (!dword_1EAF17590 || (os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v7 = *(DerivedStorage + 64)) != 0))
    {
      v9 = *(CMBaseObjectGetVTable() + 16);
      if (v9)
      {
        v10 = *(v9 + 56);
        if (v10)
        {
          v10(v7, *MEMORY[0x1E69AFEB0], a5);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void __fbapo_audioEngineBufferingPriorityChangedCallback_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v2 = @"urgent";
  }

  else if (FigCFEqual())
  {
    v2 = @"default";
  }

  else
  {
    if (!FigCFEqual())
    {
      goto LABEL_8;
    }

    v2 = @"relaxed";
  }

  *(*(a1 + 32) + 232) = v2;
LABEL_8:
  FigSimpleMutexUnlock();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t fbapo_getCachedValue(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 160), @"AudioMode");
  if (!Value)
  {
    return 4294954513;
  }

  v7 = Value;
  if (CFGetTypeID(Value) != a2)
  {
    return 4294954513;
  }

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t fbapo_doesSupportsReceiverSideSoundCheck(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E69625B8], *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t fbapo_setAndCacheFigAudioSession(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    return 4294948075;
  }

  v7 = DerivedStorage;
  v8 = *(CMBaseObjectGetVTable() + 16);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = v9(a2, @"FAS_SourceSessionID", *MEMORY[0x1E695E480], &cf);
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v11 = fbapo_setAudioSessionID(a1, cf);
        v12 = v11;
        if (a3 && !v11)
        {
          CMBaseObjectGetDerivedStorage();
          FigCFDictionarySetValue();
          v13 = *(v7 + 64);
          *(v7 + 64) = a2;
          CFRetain(a2);
          if (v13)
          {
            CFRelease(v13);
          }

          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 4294948071;
    }
  }

  else
  {
    v12 = 4294948075;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigEndpointStreamAudioEngineSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAudioEngineGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

double fbapo_setAndCacheAudioProcessingTap(uint64_t a1, uint64_t a2, int a3)
{
  v14[24] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 56) || !fbapo_amIActiveEndpointStreamClient(a1))
  {
    if (!a3)
    {
      return result;
    }

    UInt64 = 0;
LABEL_4:
    CMBaseObjectGetDerivedStorage();
    FigCFDictionarySetValue();
    goto LABEL_5;
  }

  if (!MTAudioProcessingTapIsProxyTap(a2))
  {
    if (a2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    UInt64 = 0;
    goto LABEL_20;
  }

  if (MTProxyAudioProcessingTapGetObjectID(a2, v14))
  {
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return result;
  }

  UInt64 = FigCFNumberCreateUInt64();
  if (UInt64)
  {
    v8 = v14[0] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
LABEL_20:
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11(CMBaseObject, *MEMORY[0x1E6962548], UInt64);
    if (!a3 || v12)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  fbapo_setAndCacheAudioProcessingTap_cold_1();
LABEL_5:
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  return result;
}

uint64_t fbapo_setRateAndAnchorTime(const void *a1, char a2, CMTime *a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    MutableCopy = 0;
    v18 = 0;
    a8 = 4294954511;
  }

  else
  {
    if (a9 != 0.0)
    {
      v17 = fig_log_handle();
      if (a1 + 1 >= 2)
      {
        v27 = v17;
        if (os_signpost_enabled(v17))
        {
          time = *a3;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 134218496;
          *(&time.value + 4) = a1;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = a9;
          HIWORD(time.epoch) = 2048;
          v37 = Seconds;
          _os_signpost_emit_with_name_impl(&dword_1962D5000, v27, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f", &time, 0x20u);
        }
      }
    }

    v18 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A00400FDB3E6BuLL);
    if (v18)
    {
      if (a1)
      {
        v19 = CFRetain(a1);
      }

      else
      {
        v19 = 0;
      }

      *v18 = v19;
      v18[8] = a2;
      *(v18 + 2) = a9;
      v20 = *&a3->value;
      *(v18 + 5) = a3->epoch;
      *(v18 + 24) = v20;
      v21 = *a4;
      *(v18 + 8) = *(a4 + 2);
      *(v18 + 3) = v21;
      *(v18 + 10) = a6;
      *(v18 + 11) = a7;
      if (a5)
      {
        v22 = CFRetain(a5);
      }

      else
      {
        v22 = 0;
      }

      *(v18 + 9) = v22;
      if (!a8)
      {
        MutableCopy = 0;
        goto LABEL_18;
      }

      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        FigCFDictionaryGetValue();
        v24 = FigCFDictionaryCreateMutableCopy();
        if (v24)
        {
          a8 = v24;
          FigCFDictionarySetValue();
          *(v18 + 12) = CFRetain(MutableCopy);
LABEL_18:
          v25 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexCheckIsLockedOnThisThread();
          if (dword_1EAF17590)
          {
            v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (a1)
          {
            dispatch_async_f(*(v25 + 16), v18, fbapo_setRateAndAnchorTimeDispatch);
          }

          if (a8)
          {
            CFRelease(a8);
            a8 = 0;
          }

          goto LABEL_26;
        }
      }

      a8 = 4294951816;
    }

    else
    {
      MutableCopy = 0;
      a8 = 4294949975;
    }
  }

  free(v18);
  if (a9 != 0.0)
  {
    v30 = fig_log_handle();
    if (a1 + 1 >= 2)
    {
      v31 = v30;
      if (os_signpost_enabled(v30))
      {
        time = *a3;
        v32 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = a1;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = a9;
        HIWORD(time.epoch) = 2048;
        v37 = v32;
        v38 = 2048;
        v39 = a8;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v31, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }
  }

LABEL_26:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  FigSimpleMutexUnlock();
  return a8;
}

uint64_t fbapo_setConnectionActive(const void *a1, int a2, int a3, const void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v14 = 4294954511;
LABEL_13:
    FigSimpleMutexUnlock();
    return v14;
  }

  v9 = *(DerivedStorage + 192);
  if (a2 == 1 && v9 == 1 || !a2 && !v9)
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = 0;
    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  if (!Mutable)
  {
    v14 = 4294949975;
    goto LABEL_13;
  }

  v12 = Mutable;
  FigCFDictionarySetValue();
  fbapo_postNotificationInternal(a1, @"GoActive", v12);
  if (a2)
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(DerivedStorage + 264))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v16 = *(DerivedStorage + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __fbapo_setConnectionActive_block_invoke;
      block[3] = &__block_descriptor_tmp_186_0;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = a4;
      dispatch_async(v16, block);
    }

    *(DerivedStorage + 192) = 1;
  }

  else
  {
    if (dword_1EAF17590)
    {
      v22 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fbapo_resetInternal(a1);
    v17 = *(DerivedStorage + 72);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18)
    {
      v18(v17, 0, 0, 0);
    }

    *(DerivedStorage + 80) = 0;
    *(DerivedStorage + 192) = 0;
    if (a3)
    {
      fbapo_postNotificationInternal(a1, @"PrerollLost", 0);
    }

    *(DerivedStorage + 268) = 0;
  }

  FigSimpleMutexUnlock();
  CFRelease(v12);
  return 0;
}

uint64_t fbapo_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 56);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v5 = 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v6 || (result = v6(v5, a2, a3), result))
  {
    if (*a3)
    {
      CFRelease(*a3);
    }

    return FigEndpointStreamAudioFormatDescriptionCreate();
  }

  return result;
}

uint64_t fbapo_doesSupportPassthroughOfFormatDescription(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (!a3)
  {
    fbapo_doesSupportPassthroughOfFormatDescription_cold_1(&v21);
    LOBYTE(v16) = 0;
    result = v21;
    goto LABEL_29;
  }

  v6 = DerivedStorage;
  theString = 0;
  v7 = *(CMBaseObjectGetDerivedStorage() + 64);
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9(v7, *MEMORY[0x1E69AFF80], *MEMORY[0x1E695E480], &theString);
  v11 = theString;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = theString == 0;
  }

  if (!v12)
  {
    if (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual() || CFStringHasPrefix(theString, @"com.apple.cmta"))
    {
      v13 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v13 = 1;
LABEL_17:
    v11 = theString;
    if (!theString)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = 1;
  if (theString)
  {
LABEL_18:
    CFRelease(v11);
  }

LABEL_19:
  if (v13)
  {
LABEL_26:
    LOBYTE(v16) = 0;
    goto LABEL_27;
  }

  v14 = *(v6 + 56);
  FigEndpointStreamAirPlayGetClassID();
  IsMemberOfClass = CMBaseObjectIsMemberOfClass();
  LOBYTE(v16) = 0;
  if (!IsMemberOfClass)
  {
    result = 0;
    goto LABEL_29;
  }

  result = 0;
  if (v14)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 24) + 32);
    if (v16)
    {
      v18 = v16(v14, a2, &v19);
      result = 0;
      if (v18)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        LOBYTE(v16) = v19;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
  }

LABEL_29:
  *a3 = v16;
  return result;
}

uint64_t fbapo_clientRequestActiveConfigurationDidBecomeInvalid(const void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fbapo_postNotificationInternal(a1, @"ActiveConfigurationDidBecomeInvalid", 0);
  *(DerivedStorage + 81) = 1;
  return 0;
}

void __fbapo_setRateAndAnchorTimeDispatch_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16) != 0.0)
  {
    v3 = fig_log_handle();
    v2 = *(a1 + 32);
    v4 = *v2;
    if ((*v2 + 1) >= 2)
    {
      v9 = v3;
      if (os_signpost_enabled(v3))
      {
        v10 = *(v2 + 16);
        time = *(v2 + 24);
        Seconds = CMTimeGetSeconds(&time);
        v12 = *(a1 + 40);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v4;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v10;
        HIWORD(time.epoch) = 2048;
        v16 = Seconds;
        v17 = 2048;
        v18 = v12;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v9, OS_SIGNPOST_INTERVAL_END, v4, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
        v2 = *(a1 + 32);
      }
    }
  }

  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  v7 = *(a1 + 40);
  v8 = *(v2 + 16);
  time = *(v2 + 24);
  v13 = *(v2 + 48);
  v14 = *(v2 + 64);
  v6(v5, v7, &time, &v13, 0, v8);
  fbapo_setRateAndAnchorTimeDispatchContextDestroy(*(a1 + 32));
}

void fbapo_applyCachedPropertiesForBecomeActiveIterator(const void *a1, __CFString *a2, uint64_t a3)
{
  if (CFEqual(a1, @"AudioMode"))
  {

    fbapo_setAndCacheAudioMode(a3, a2, 0);
  }

  else if (CFEqual(a1, @"FigAudioSession"))
  {
    if (*MEMORY[0x1E695E738] == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    fbapo_setAndCacheFigAudioSession(a3, v6, 0);
  }

  else if (CFEqual(a1, @"AudioProcessingTap"))
  {
    if (*MEMORY[0x1E695E738] == a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    fbapo_setAndCacheAudioProcessingTap(a3, v7, 0);
  }
}

void fbapo_setRateAndAnchorTimeCallback(uint64_t a1, int a2, CMTime *a3, CMTime *a4, const void *a5, uint64_t *a6, Float64 a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v54 = **&MEMORY[0x1E6960C70];
  v53 = v54;
  v52 = v54;
  v8 = *a6;
  if (*a6)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    lhs = *(a6 + 10);
    rhs = *(a6 + 7);
    CMTimeSubtract(&v54, &lhs, &rhs);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, HostTimeClock);
    rhs = *(a6 + 10);
    CMTimeSubtract(&v53, &lhs, &rhs);
    v15 = CMClockGetHostTimeClock();
    CMClockGetTime(&lhs, v15);
    rhs = *(a6 + 7);
    CMTimeSubtract(&v52, &lhs, &rhs);
    if (*(DerivedStorage + 252))
    {
      rhs = v52;
      v51 = *(DerivedStorage + 240);
      CMTimeAdd(&lhs, &rhs, &v51);
      v52 = lhs;
    }

    if (dword_1EAF17590)
    {
      v40 = v8;
      v16 = a1;
      v39 = a2;
      LODWORD(v51.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v51.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v19 = value;
      }

      else
      {
        v19 = value & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = CMBaseObjectGetDerivedStorage() + 208;
        lhs = *a3;
        Seconds = CMTimeGetSeconds(&lhs);
        lhs = *a4;
        v22 = CMTimeGetSeconds(&lhs);
        LODWORD(rhs.value) = 136316930;
        *(&rhs.value + 4) = "fbapo_setRateAndAnchorTimeCallback";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = v40;
        HIWORD(rhs.epoch) = 2082;
        v56 = v20;
        v57 = 2048;
        *v58 = v16;
        *&v58[8] = 2048;
        *&v58[10] = a7;
        *&v58[18] = 2048;
        *&v58[20] = Seconds;
        *&v58[28] = 2048;
        *&v58[30] = v22;
        *&v58[38] = 2048;
        *&v58[40] = a6;
        _os_log_send_and_compose_impl(v19, 0, &lhs, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s audioEngine %p rate %1.2f scaledSampleTime %1.3f hostTime %1.3f refcon %p", &rhs, 82);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a2 = v39;
      v8 = v40;
      if (dword_1EAF17590)
      {
        LODWORD(v51.value) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v24 = v51.value;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          v26 = CMBaseObjectGetDerivedStorage() + 208;
          lhs = *a4;
          v27 = CMTimeGetSeconds(&lhs);
          lhs = *(DerivedStorage + 240);
          v28 = CMTimeGetSeconds(&lhs);
          lhs = v54;
          v29 = CMTimeGetSeconds(&lhs);
          lhs = v53;
          v30 = CMTimeGetSeconds(&lhs);
          lhs = v52;
          v31 = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136317442;
          *(&rhs.value + 4) = "fbapo_setRateAndAnchorTimeCallback";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v40;
          HIWORD(rhs.epoch) = 2082;
          v56 = v26;
          v57 = 1024;
          *v58 = v39;
          *&v58[4] = 2048;
          *&v58[6] = a7;
          *&v58[14] = 2048;
          *&v58[16] = v27;
          *&v58[24] = 2048;
          *&v58[26] = v28;
          *&v58[34] = 2048;
          *&v58[36] = v29;
          *&v58[44] = 2048;
          *&v58[46] = v30;
          v59 = 2048;
          v60 = v31;
          LODWORD(v38) = 98;
          _os_log_send_and_compose_impl(v25, 0, &lhs, 128, &dword_1962D5000, v23, 0, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s BAOStartupTimes: err %d. rate %1.2f hostTime %1.3f prerollDuration %1.3f becomeActiveDuration %1.3f setrateDuration %1.3f totalDuration %1.3f", &rhs, v38);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (!a2)
    {
      FigSimpleMutexLock();
      if (!*DerivedStorage)
      {
        memset(&v51, 0, sizeof(v51));
        v32 = CMClockGetHostTimeClock();
        v33 = *(DerivedStorage + 144);
        lhs = *a4;
        CMSyncConvertTime(&v51, &lhs, v32, v33);
        if (dword_1EAF17590)
        {
          *type = 0;
          v49 = OS_LOG_TYPE_DEFAULT;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v35 = *(DerivedStorage + 152);
        lhs = *a3;
        rhs = v51;
        CMTimebaseSetRateAndAnchorTime(v35, a7, &lhs, &rhs);
      }

      FigSimpleMutexUnlock();
    }

    v36 = a5;
    if (a5)
    {
      v36 = CFRetain(a5);
    }

    v37 = *(DerivedStorage + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbapo_setRateAndAnchorTimeCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_185_0;
    v44 = *&a3->value;
    epoch = a3->epoch;
    v46 = a2;
    block[4] = DerivedStorage;
    *&block[5] = a7;
    block[6] = v8;
    block[7] = a6;
    v47 = *&a4->value;
    v48 = a4->epoch;
    block[8] = v36;
    dispatch_async(v37, block);
  }

  else
  {
    fbapo_setRateAndAnchorTimeCallback_cold_1();
  }
}

void __fbapo_setRateAndAnchorTimeInternal_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 0.0)
  {
    v2 = fig_log_handle();
    v3 = *(a1 + 40);
    if (v3 + 1 >= 2)
    {
      v8 = v2;
      if (os_signpost_enabled(v2))
      {
        v9 = *(a1 + 32);
        time = *(a1 + 64);
        Seconds = CMTimeGetSeconds(&time);
        v11 = *(a1 + 88);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v3;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v9;
        HIWORD(time.epoch) = 2048;
        v15 = Seconds;
        v16 = 2048;
        v17 = v11;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v8, OS_SIGNPOST_INTERVAL_END, v3, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }
  }

  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 32);
  time = *(a1 + 64);
  v12 = *(a1 + 92);
  v13 = *(a1 + 108);
  v5(v4, v6, &time, &v12, 0, v7);
  fbapo_releaseAsync(*(a1 + 40));
}

void __fbapo_setRateAndAnchorTimeCallback_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = **&MEMORY[0x1E6960C70];
  v22 = *(a1 + 72);
  v2 = *(a1 + 96);
  if (v2 > -17581)
  {
    v3 = 0;
    if (v2 != -17580 && v2)
    {
LABEL_9:
      v3 = *(a1 + 96);
      goto LABEL_18;
    }

    if (!v2)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 32);
      if (!*v4 && (*(a1 + 40) != 0.0 || (*(v4 + 96) & 1) != 0))
      {
        if (dword_1EAF17590)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v4 = *(a1 + 32);
        }

        v6 = *(a1 + 72);
        *(v4 + 100) = *(a1 + 88);
        *(v4 + 84) = v6;
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    if (v2 != -17582)
    {
      if (v2 == -17581)
      {
        v3 = 4294949973;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v3 = 4294949971;
  }

LABEL_18:
  v7 = *(a1 + 56);
  if (*(v7 + 40))
  {
    v8 = *(v7 + 8);
    if (v8 != 0.0)
    {
      time = v22;
      CMTimeMultiplyByFloat64(&v22, &time, v8);
      v7 = *(a1 + 56);
    }

    if (*(v7 + 28))
    {
      *&time.value = *(v7 + 16);
      v10 = *(v7 + 32);
    }

    else
    {
      v9 = *(a1 + 32);
      *&time.value = *(v9 + 112);
      v10 = *(v9 + 128);
    }

    time.epoch = v10;
    rhs = v22;
    CMTimeAdd(&v23, &time, &rhs);
    if (*(a1 + 40) != 0.0)
    {
      v11 = fig_log_handle();
      v12 = *(a1 + 48);
      if (v12 + 1 >= 2)
      {
        v19 = v11;
        if (os_signpost_enabled(v11))
        {
          v20 = *(a1 + 40);
          time = *(a1 + 72);
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(time.value) = 134218752;
          *(&time.value + 4) = v12;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v20;
          HIWORD(time.epoch) = 2048;
          v26 = Seconds;
          v27 = 2048;
          v28 = v3;
          _os_signpost_emit_with_name_impl(&dword_1962D5000, v19, OS_SIGNPOST_INTERVAL_END, v12, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
        }
      }
    }

    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v16 = *(v14 + 40);
    v15 = *(v14 + 48);
    v17 = *(a1 + 40);
    time = v23;
    rhs = *(a1 + 100);
    v16(v15, v3, &time, &rhs, v13, v17);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    CFRelease(v18);
  }

  fbapo_releaseAsync(**(a1 + 56));
  **(a1 + 56) = 0;
  free(*(a1 + 56));
}

__n128 fbapo_resetInternal(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 192) = -999;
  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 240) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 256) = *(v3 + 16);
  *(DerivedStorage + 268) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_42(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, __int16 a20, char a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_30_20(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_31_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_32_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_33_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_36_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32)
{
  *(v32 - 256) = a31;
  *(v32 - 240) = a32;

  return CMTimeGetSeconds((v32 - 256));
}

void OUTLINED_FUNCTION_37_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, v6, a5, a6, (v8 - 256), 0xCu);
}

uint64_t OUTLINED_FUNCTION_38_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_50_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_52_17(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_type_t type, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigCaptionRendererLegibleOutputCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *a5 = 0;
      FigCaptionRendererOutputGetClassID();
      CMDerivedObjectCreate();
      FigCaptionRendererLegibleOutputCreate_cold_1(&v6);
    }

    else
    {
      FigCaptionRendererLegibleOutputCreate_cold_2(&v6);
    }
  }

  else
  {
    FigCaptionRendererLegibleOutputCreate_cold_3(&v6);
  }

  return v6;
}

__CFString *FigCaptionRendererLegibleOutput_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererLegibleOutput %p>", a1);
  return Mutable;
}

uint64_t fcrLegibleOutputSetNeedsDisplayInRect(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    (*(DerivedStorage + 88))(*DerivedStorage, *(DerivedStorage + 72));
  }

  return 0;
}

uint64_t fcrLegibleOutputSetBounds(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = a4;
  *(DerivedStorage + 24) = a5;
  *(DerivedStorage + 32) = a6;
  (*(DerivedStorage + 80))(*(DerivedStorage + 72), a2, a3, a4, a5, a6);
  return 0;
}

uint64_t fcrLegibleOutputSetVideoBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[5] = a2;
  DerivedStorage[6] = a3;
  DerivedStorage[7] = a4;
  DerivedStorage[8] = a5;
  return 0;
}

uint64_t styleSegment_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionStyleSegmentID = result;
  return result;
}

uint64_t FigCaptionStyleSegmentCopyText(uint64_t a1, __CFString **a2)
{
  if (!a1)
  {
    FigCaptionStyleSegmentCopyText_cold_1(&v9);
    return v9;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      v4 = 0;
      goto LABEL_4;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v4 = v8(v7);
      if (!v4)
      {
        *(a1 + 16) = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v4 = &stru_1F0B1AFB8;
    }

    v4 = CFRetain(v4);
    *(a1 + 16) = v4;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v4 = CFRetain(v4);
LABEL_4:
  v5 = 0;
  *a2 = v4;
  return v5;
}

uint64_t FigCaptionStyleSegmentCopyCaptionData(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCaptionStyleSegmentCopyCaptionData_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigCaptionStyleSegmentCopyCaptionData_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCaptionStyleSegmentCopyAttributes(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    FigCaptionStyleSegmentCopyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t fcstylesegmenter_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionStyleSegmentGeneratorID = result;
  return result;
}

uint64_t FigCaptionStyleSegmentGeneratorPerform(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    FigCaptionStyleSegmentGeneratorPerform_cold_3(start);
    return *start;
  }

  v1 = a1;
  v2 = *(a1 + 64);
  theArray.start.value = 0;
  v47 = *MEMORY[0x1E6961268];
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    Mutable = 0;
    value_low = 4294954514;
    goto LABEL_21;
  }

  v6 = v5(CMBaseObject, v47, v3, &theArray);
  if (v6)
  {
    value_low = v6;
LABEL_20:
    Mutable = 0;
    goto LABEL_21;
  }

  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(v2);
    }

    else
    {
      v9 = &stru_1F0B1AFB8;
    }

    Length = CFStringGetLength(v9);
    Count = CFArrayGetCount(theArray.start.value);
    if (!Count)
    {
LABEL_17:
      v59.length = CFArrayGetCount(Mutable);
      v59.location = 0;
      CFArraySortValues(Mutable, v59, MEMORY[0x1E695D7A0], 0);
      value_low = 0;
      goto LABEL_21;
    }

    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray.start.value, v14);
      *start = 0;
      *&start[8] = 0;
      if (Length)
      {
        break;
      }

LABEL_16:
      if (++v14 == v13)
      {
        goto LABEL_17;
      }
    }

    v16 = ValueAtIndex;
    v17 = 0;
    while (1)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v18)
      {
        value_low = 4294954514;
        goto LABEL_19;
      }

      v19 = v18(v2, v17, v16, v3, 0, start);
      if (v19)
      {
        break;
      }

      v17 = *&start[8] + *start;
      FigCFArrayAppendCFIndex();
      if (v17 == Length)
      {
        goto LABEL_16;
      }
    }

    value_low = v19;
LABEL_19:
    CFRelease(Mutable);
    goto LABEL_20;
  }

  FigCaptionStyleSegmentGeneratorPerform_cold_1(start);
  value_low = *start;
LABEL_21:
  if (theArray.start.value)
  {
    CFRelease(theArray.start.value);
  }

  if (value_low)
  {
LABEL_77:
    if (!Mutable)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v20 = CFArrayGetCount(Mutable);
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = 0;
      v24 = *MEMORY[0x1E69614E0];
      v48 = v1;
      v49 = v20;
      v50 = Mutable;
      while (1)
      {
        v52 = 0;
        FigCFArrayGetCFIndexAtIndex();
        if (v52 != v23)
        {
          break;
        }

LABEL_67:
        if (++v22 == v21)
        {
          value_low = 0;
          goto LABEL_77;
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v25 = FigCaptionDataCopySubrange();
      if (v25)
      {
        goto LABEL_83;
      }

      v26 = cf;
      *start = *(v1 + 16);
      *&theArray.start.value = *(v1 + 40);
      theArray.start.epoch = *(v1 + 56);
      CMTimeRangeFromTimeToTime(&v51, start, &theArray.start);
      *start = 0;
      v27 = FigCaptionDataGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v29 = v28(v27, v47, v3, start);
        if (v29)
        {
          value_low = v29;
          v31 = 0;
        }

        else
        {
          v30 = CFArrayGetCount(*start);
          v31 = CFArrayCreateMutable(v3, v30, MEMORY[0x1E695E9C0]);
          if (v31)
          {
            v32 = CFArrayGetCount(*start);
            if (v32)
            {
              v33 = v32;
              for (i = 0; i != v33; ++i)
              {
                v35 = CFArrayGetValueAtIndex(*start, i);
                if (!CFEqual(v35, v24))
                {
                  CFArrayAppendValue(v31, v35);
                }
              }
            }

            value_low = 0;
          }

          else
          {
            FigCaptionStyleSegmentGeneratorPerform_cold_2(&theArray);
            value_low = LODWORD(theArray.start.value);
          }
        }
      }

      else
      {
        v31 = 0;
        value_low = 4294954514;
      }

      if (*start)
      {
        CFRelease(*start);
      }

      if (value_low)
      {
        goto LABEL_63;
      }

      theArray = v51;
      v58[0] = 0;
      v36 = v3;
      v37 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v56 = v37;
      v57 = 0;
      *&start[8] = theArray;
      *start = v26;
      v60.length = CFArrayGetCount(v31);
      v60.location = 0;
      CFArrayApplyFunction(v31, v60, fcstylesegmenter_buildTimeToAttributesMap, start);
      if (!v57)
      {
        v38 = CFDictionaryGetCount(v37);
        if (v38 >= 1)
        {
          v39 = v38;
          if (v38 >> 61)
          {
            v40 = 0;
          }

          else
          {
            v40 = malloc_type_malloc(8 * v38, 0x6004044C4A2DFuLL);
          }

          CFDictionaryGetKeysAndValues(v37, v40, 0);
          qsort_r(v40, v39, 8uLL, 0, fcstylesegmenter_compareCFNumber);
          v41 = figCaptionStyleSegmentCreate(v58);
          if (v41)
          {
            value_low = v41;
          }

          else
          {
            v42 = 0;
            v43 = v58[0];
            do
            {
              Value = CFDictionaryGetValue(v37, v40[v42]);
              if (!v42)
              {
                CFDictionaryApplyFunction(Value, fcstylesegmenter_addAttribute, v43);
              }

              ++v42;
            }

            while (v39 != v42);
            value_low = figCaptionStyleSegmentSetCaptionData(v43, v26);
            if (!value_low)
            {
              v58[0] = 0;
LABEL_55:
              if (v37)
              {
                CFRelease(v37);
              }

              free(v40);
              if (v58[0])
              {
                CFRelease(v58[0]);
              }

              v3 = v36;
              if (value_low)
              {
                v1 = v48;
                if (!v43)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v1 = v48;
                if (!v43)
                {
                  value_low = fcstylesegmenter_setCaptionData(v48, v26);
                  goto LABEL_63;
                }

                CFArrayAppendValue(v48[9], v43);
              }

              CFRelease(v43);
LABEL_63:
              if (v31)
              {
                CFRelease(v31);
              }

              Mutable = v50;
              if (value_low)
              {
                goto LABEL_77;
              }

              v23 = v52;
              v21 = v49;
              goto LABEL_67;
            }
          }

          v43 = 0;
          goto LABEL_55;
        }
      }

      v43 = 0;
      v40 = 0;
      value_low = 0;
      goto LABEL_55;
    }

    *&theArray.start.value = *(v1 + 16);
    theArray.start.epoch = *(v1 + 32);
    *&v51.start.value = *(v1 + 40);
    v46 = *(v1 + 64);
    v51.start.epoch = *(v1 + 56);
    CMTimeRangeFromTimeToTime(start, &theArray.start, &v51.start);
    v25 = fcstylesegmenter_setCaptionData(v1, v46);
LABEL_83:
    value_low = v25;
    if (!Mutable)
    {
      goto LABEL_79;
    }
  }

  CFRelease(Mutable);
LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t FigCaptionStyleSegmentGeneratorCreate(uint64_t a1, const void *a2, __int128 *a3, uint64_t *a4)
{
  if (!a4)
  {
    FigCaptionStyleSegmentGeneratorCreate_cold_2(&v17);
    return LODWORD(v17.start.value);
  }

  if (!a2)
  {
    FigCaptionStyleSegmentGeneratorCreate_cold_1(&v17);
    return LODWORD(v17.start.value);
  }

  v7 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionStyleSegmentGeneratorGetTypeID_sRegisterFigCaptionStyleSegmentGeneratorOnce, fcstylesegmenter_Register);
  Instance = _CFRuntimeCreateInstance();
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v10 = Mutable;
    *(Instance + 64) = CFRetain(a2);
    CMTimeMake(&v17.start, 0, 1000);
    epoch = v17.start.epoch;
    *(Instance + 16) = *&v17.start.value;
    *(Instance + 32) = epoch;
    CMTimeMake(&v17.start, 10000, 1000);
    *(Instance + 40) = *&v17.start.value;
    *(Instance + 56) = v17.start.epoch;
    v12 = *a3;
    *(Instance + 32) = *(a3 + 2);
    *(Instance + 16) = v12;
    v13 = a3[1];
    *&v17.start.value = *a3;
    *&v17.start.epoch = v13;
    *&v17.duration.timescale = a3[2];
    CMTimeRangeGetEnd(&v18, &v17);
    v14 = 0;
    *(Instance + 40) = v18;
    *(Instance + 72) = v10;
    *a4 = Instance;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17.start.value, v17.start.timescale, LODWORD(v17.start.epoch));
    v14 = v16;
    if (Instance)
    {
      CFRelease(Instance);
    }
  }

  return v14;
}

void *styleSegment_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void styleSegment_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

CFStringRef styleSegment_CopyFormattingDesc(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    Length = 0;
    goto LABEL_8;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    v2 = &stru_1F0B1AFB8;
    goto LABEL_6;
  }

  Length = v3(v2);
  v2 = Length;
  if (Length)
  {
LABEL_6:
    Length = CFStringGetLength(v2);
  }

LABEL_8:
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigCaptionStyleSegment %p]  CaptionData: %p text:<%@> length:%ld\nattributes = %p", a1, *(a1 + 24), v5, Length, *(a1 + 32));
}

double fcstylesegmenter_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fcstylesegmenter_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *fcstylesegmenter_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigCaptionStyleSegmentGenerator(%p) captionData:%p segments:%p]", a1, *(a1 + 64), *(a1 + 72));
  return Mutable;
}

uint64_t figCaptionStyleSegmentCreate(uint64_t *a1)
{
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionStyleSegmentGetTypeID_sRegisterFigCaptionStyleSegmentOnce, styleSegment_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      result = 0;
      v4[4] = v6;
      *a1 = v4;
    }

    else
    {
      figCaptionStyleSegmentCreate_cold_1(v4, &v8);
      return v8;
    }
  }

  else
  {
    figCaptionStyleSegmentCreate_cold_2(&v9);
    return v9;
  }

  return result;
}

void fcstylesegmenter_addAttribute(void *key, void *value, void *cf)
{
  if (!cf)
  {
    fcstylesegmenter_addAttribute_cold_1();
    return;
  }

  Mutable = cf[4];
  if (Mutable)
  {
    if (!value)
    {

      CFDictionaryRemoveValue(Mutable, key);
      return;
    }
  }

  else
  {
    if (!value)
    {
      return;
    }

    v7 = CFGetAllocator(cf);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    cf[4] = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

uint64_t figCaptionStyleSegmentSetCaptionData(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    figCaptionStyleSegmentSetCaptionData_cold_1(&v4);
    return v4;
  }
}

uint64_t figTTMLTreeRegisterFigTTMLTree()
{
  result = _CFRuntimeRegisterClass();
  sFigTTMLTreeID = result;
  return result;
}

uint64_t FigTTMLTreeCopyFeatureAndExtensionSet(uint64_t a1, unsigned int a2, CFMutableSetRef *a3)
{
  HeadNode = FigTTMLRootGetHeadNode(*(a1 + 16));
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v9[1] = Mutable;
  v9[0] = a2;
  if (a3)
  {
    v7 = FigTTMLTreeWalkFromNode(HeadNode, 0, figTTMLTreeBuildFeatureAndExtensionSet, v9);
    if (!v7)
    {
      *a3 = Mutable;
      return v7;
    }
  }

  else
  {
    FigTTMLTreeCopyFeatureAndExtensionSet_cold_1(&v10);
    v7 = v10;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t FigTTMLTreeCopySliceTimeRangeArray(uint64_t a1, __CFArray **a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFArrayCreateMutable(v5, 0, v6);
  v32 = **&MEMORY[0x1E6960C70];
  if (!a2)
  {
    FigTTMLTreeCopySliceTimeRangeArray_cold_1(&lhs);
    value_low = LODWORD(lhs.start.value);
    goto LABEL_20;
  }

  v9 = FigTTMLTreeWalkFromNode(*(a1 + 16), 0, figTTMLTreeAppendSliceTimeToArray, Mutable);
  if (v9)
  {
    value_low = v9;
    goto LABEL_20;
  }

  v26 = a2;
  theArray = v8;
  v36.length = CFArrayGetCount(Mutable);
  v36.location = 0;
  CFArraySortValues(Mutable, v36, figTTMLTreeCompareSliceTime, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
LABEL_13:
    value_low = 0;
    *v26 = theArray;
    goto LABEL_14;
  }

  v11 = Count;
  v12 = 0;
  v13 = MEMORY[0x1E6960CC0];
  while (1)
  {
    memset(&v31, 0, sizeof(v31));
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v12);
    CMTimeMakeFromDictionary(&v31, ValueAtIndex);
    lhs.start = v31;
    rhs = v32;
    CMTimeSubtract(&duration, &lhs.start, &rhs);
    rhs = v32;
    CMTimeRangeMake(&lhs, &rhs, &duration);
    value = lhs.start.value;
    flags = lhs.start.flags;
    timescale = lhs.start.timescale;
    if ((lhs.start.flags & 1) == 0)
    {
      goto LABEL_12;
    }

    v16 = lhs.duration.flags;
    if ((lhs.duration.flags & 1) == 0)
    {
      goto LABEL_12;
    }

    if (lhs.duration.epoch)
    {
      goto LABEL_12;
    }

    v17 = lhs.duration.value;
    if (lhs.duration.value < 0)
    {
      goto LABEL_12;
    }

    epoch = lhs.start.epoch;
    v19 = lhs.duration.timescale;
    lhs.start.value = lhs.duration.value;
    lhs.start.timescale = lhs.duration.timescale;
    lhs.start.flags = lhs.duration.flags;
    lhs.start.epoch = 0;
    duration = *v13;
    if (!CMTimeCompare(&lhs.start, &duration))
    {
      goto LABEL_12;
    }

    lhs.start.value = value;
    lhs.start.timescale = timescale;
    lhs.start.flags = flags;
    lhs.start.epoch = epoch;
    lhs.duration.value = v17;
    lhs.duration.timescale = v19;
    lhs.duration.flags = v16;
    lhs.duration.epoch = 0;
    v20 = CMTimeRangeCopyAsDictionary(&lhs, v5);
    if (!v20)
    {
      break;
    }

    v21 = v20;
    CFArrayAppendValue(theArray, v20);
    CFRelease(v21);
LABEL_12:
    v32 = v31;
    if (v11 == ++v12)
    {
      goto LABEL_13;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v2, v26);
  value_low = v24;
  v8 = theArray;
LABEL_20:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_14:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

uint64_t figTTMLTreeCompareSliceTime(const __CFDictionary *a1, const __CFDictionary *a2)
{
  memset(&v7, 0, sizeof(v7));
  CMTimeMakeFromDictionary(&v7, a1);
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeFromDictionary(&v6, a2);
  time1 = v7;
  v4 = v6;
  return CMTimeCompare(&time1, &v4);
}

const void *FigTTMLTreeGetNodeByID(void *a1, void *key)
{
  v3 = a1 + 3;
  v4 = a1[3];
  if (!v4)
  {
    v7 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      if (FigTTMLTreeGetNodeByID_cold_1(a1, Mutable, v3))
      {
        goto LABEL_2;
      }
    }

    else
    {
      FigTTMLTreeGetNodeByID_cold_2(0, v9, v10, v11, v12, v13, v14, v15, v16, v17, SHIDWORD(v17), v18);
    }

    return 0;
  }

LABEL_2:

  return CFDictionaryGetValue(v4, key);
}

uint64_t figTTMLTreeBuildIDToNodeDictionary(const void *a1, __CFDictionary *a2)
{
  XMLID = FigTTMLNodeGetXMLID(a1);
  if (XMLID)
  {
    CFDictionaryAddValue(a2, XMLID, a1);
  }

  return 0;
}

void *figTTMLTree_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figTTMLTree_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

uint64_t fctg_registerFigCaptionTimelineGenerator()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTimelineGeneratorID = result;
  return result;
}

uint64_t FigCaptionTimelineGeneratorCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      MEMORY[0x19A8D3660](&FigCaptionTimelineGeneratorGetTypeID_sRegisterFigCaptionTimelineGeneratorOnce, fctg_registerFigCaptionTimelineGenerator);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v8 = Instance;
        result = 0;
        *(v8 + 24) = a2;
        *(v8 + 32) = a3;
        *a4 = v8;
      }

      else
      {
        FigCaptionTimelineGeneratorCreate_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      FigCaptionTimelineGeneratorCreate_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    FigCaptionTimelineGeneratorCreate_cold_3(&v12);
    return v12;
  }

  return result;
}

CMTime *fctg_getAttachmentTime@<X0>(const void *a1@<X0>, const __CFString *a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = **&MEMORY[0x1E6960CC0];
  result = CMGetAttachment(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v6 == result)
    {

      return CMTimeMakeFromDictionary(a3, v5);
    }
  }

  return result;
}

void fctg_freeBuddingCaption(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[17];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t FigCaptionTimelineGeneratorFinish(uint64_t a1)
{
  if (a1)
  {
    FigCaptionTimelineGeneratorFinish_cold_1(a1);
    return 0;
  }

  else
  {
    FigCaptionTimelineGeneratorFinish_cold_2(&v2);
    return v2;
  }
}

__n128 fctg_Init(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  v2 = CFGetAllocator(a1);
  *(a1 + 16) = CFArrayCreateMutable(v2, 0, 0);
  v3 = MEMORY[0x1E6960CC0];
  result = *MEMORY[0x1E6960CC0];
  *(a1 + 40) = *MEMORY[0x1E6960CC0];
  *(a1 + 56) = *(v3 + 16);
  return result;
}

void fctg_Finalize(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      fctg_freeBuddingCaption(ValueAtIndex);
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 16) = 0;
  }
}

__n128 OUTLINED_FUNCTION_0_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a31, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29, __int128 a30, __n128 a32)
{
  *(v32 - 128) = a29;
  *(v32 - 112) = a30;
  result = a32;
  *(v32 - 96) = a32;
  return result;
}

__n128 OUTLINED_FUNCTION_1_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = v65[19];
  v65[24] = result;
  *(v66 - 176) = a65;
  return result;
}

CMTime *OUTLINED_FUNCTION_5_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CMTimeRange *range, CMTime *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a22)
{
  v24 = *(v22 - 112);
  rangea = *(v22 - 128);
  range_16 = v24;
  range_32 = *(v22 - 96);

  return CMTimeRangeGetEnd(&a22, &rangea);
}

__n128 OUTLINED_FUNCTION_6_80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, __int128 a38)
{
  v39 = v38[8];
  v38[1] = v38[7];
  v38[2] = v39;
  return a38;
}

CMTime *OUTLINED_FUNCTION_9_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CMTime *lhs, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t lhsa)
{

  return CMTimeAdd((v29 - 240), &lhsa, (v29 - 128));
}

__n128 OUTLINED_FUNCTION_11_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26, uint64_t a27)
{
  result = a26;
  v27[24] = a26;
  *(v28 - 176) = a27;
  return result;
}

__n128 OUTLINED_FUNCTION_12_46()
{
  v1 = *(v0 + 208);
  *(v0 + 336) = *(v0 + 192);
  *(v0 + 352) = v1;
  result = *(v0 + 224);
  *(v0 + 368) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_13_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = v65[17];
  v65[24] = result;
  *(v66 - 176) = a65;
  return result;
}

__n128 OUTLINED_FUNCTION_15_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, uint64_t a21)
{
  result = a20;
  *(v21 + 24) = a20;
  *(v21 + 40) = a21;
  return result;
}

CMTime *OUTLINED_FUNCTION_17_32@<X0>(uint64_t a1@<X8>, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *lhs, uint64_t a7, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a12, &lhsa, &rhsa);
}

const void *OUTLINED_FUNCTION_18_32()
{
  v3 = *(v0 + 16);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t FigCaptionRendererLayoutContextCreate(uint64_t *a1)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererLayoutContextLocalGetTypeID_sRegisterFigCaptionRendererLayoutContextOnce, RegisterFigCaptionRendererLayoutContextClass);
  Instance = _CFRuntimeCreateInstance();
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Instance[3] = Mutable;
  if (Mutable)
  {
    result = 0;
    *a1 = Instance;
  }

  else
  {
    FigCaptionRendererLayoutContextCreate_cold_1(Instance, &v6);
    return v6;
  }

  return result;
}

uint64_t FigCaptionRendererLayoutContextSetSubtitleSample(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    *(a1 + 16) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    FigCaptionRendererLayoutContextSetSubtitleSample_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCaptionRendererLayoutContextGetSubtitleSample(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }

    else
    {
      FigCaptionRendererLayoutContextGetSubtitleSample_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigCaptionRendererLayoutContextGetSubtitleSample_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCaptionRendererLayoutContextSetMapping(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    CFDictionarySetValue(*(a1 + 24), a2, a3);
    return 0;
  }

  else
  {
    FigCaptionRendererLayoutContextSetMapping_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCaptionRendererLayoutContextGetMapping(uint64_t a1, const void *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    result = 0;
    *a3 = Value;
  }

  else
  {
    FigCaptionRendererLayoutContextGetMapping_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t RegisterFigCaptionRendererLayoutContextClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererLayoutContextID = result;
  return result;
}

uint64_t FigCaptionRendererLayoutContextInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FigCaptionRendererLayoutContext_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *FigCaptionRendererLayoutContextCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererLayoutContext %p>", a1);
  return Mutable;
}

uint64_t RegisterFigCrossTalkerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCrossTalkerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCrossTalkerGetClassID_sRegisterFigCrossTalkerBaseTypeOnce, RegisterFigCrossTalkerBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCrossTalkerCreate(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    FigCrossTalkerCreate_cold_1(v9);
    return v9[0];
  }

  MEMORY[0x19A8D3660](&FigCrossTalkerGetClassID_sRegisterFigCrossTalkerBaseTypeOnce, RegisterFigCrossTalkerBaseType);
  v3 = CMDerivedObjectCreate();
  v4 = 0;
  if (!v3)
  {
    MEMORY[0] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (MEMORY[0])
    {
      v3 = 0;
      MEMORY[8] = dispatch_queue_create("com.apple.coremedia.crosstalker", 0);
      *a2 = 0;
      return v3;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v8, v9[1]);
    v3 = v6;
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

void fct_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *fct_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<CrossTalker: %p %@>", a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t fct_CopyProperty(uint64_t DerivedStorage, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = DerivedStorage;
  if (DerivedStorage)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  context[0] = 0;
  context[1] = v6;
  context[2] = a2;
  cf = 0;
  if (!a2)
  {
    fct_CopyProperty_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    fct_CopyProperty_cold_1(&v10);
    return v10;
  }

  dispatch_sync_f(*(DerivedStorage + 8), context, fct_CopyProperty_f);
  if (LODWORD(context[0]))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  else
  {
    result = 0;
    *a4 = cf;
  }

  return result;
}

uint64_t fct_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    DerivedStorage = 0;
  }

  context[0] = 0;
  context[1] = a1;
  context[2] = a2;
  context[3] = a3;
  if (!a2)
  {
    fct_SetProperty_cold_2(&v10);
    return v10;
  }

  if (!a3)
  {
LABEL_8:
    dispatch_sync_f(*(DerivedStorage + 8), context, fct_SetProperty_f);
    return LODWORD(context[0]);
  }

  if (CFEqual(a2, @"HDRVideoPlaybackActive"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      goto LABEL_8;
    }

    fct_SetProperty_cold_1(&v10);
    return v10;
  }

  return 4294954512;
}

CFTypeRef fct_CopyProperty_f(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetValueIfPresent(*DerivedStorage, *(a1 + 16), (a1 + 24));
  if (result)
  {
    result = *(a1 + 24);
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {
    *a1 = -12784;
  }

  return result;
}

void fct_SetProperty_f(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*DerivedStorage, *(a1 + 16));
  v4 = *DerivedStorage;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    CFDictionarySetValue(v4, v5, v6);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v4, v5);
    if (!Value)
    {
      return;
    }
  }

  v7 = *(a1 + 24);

  CFEqual(Value, v7);
}

uint64_t FigSymptomsManagerGetBandwidthPredictionFromLastUpdate(void *a1, _DWORD *a2)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 4294949656;
}

uint64_t initsymptom_create(uint64_t a1)
{
  if (SymptomReporterLibrary_sOnce != -1)
  {
    initsymptom_create_cold_1();
  }

  v2 = dlsym(SymptomReporterLibrary_sLib, "symptom_create");
  softLinksymptom_create[0] = v2;

  return (v2)(a1);
}

void *__SymptomReporterLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SymptomReporter.framework/SymptomReporter", 2);
  SymptomReporterLibrary_sLib = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_152()
{

  return symptom_set_additional_qualifier();
}

uint64_t OUTLINED_FUNCTION_1_136@<X0>(const uuid_t uu@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return uuid_is_null(uu);
}

uint64_t figCSSTokenizerRegisterFigCSSTokenizer()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenizerID = result;
  return result;
}

uint64_t FigCSSTokenizerCreateWithTextContainer(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      MEMORY[0x19A8D3660](&FigCSSTokenizerGetTypeID_sRegisterFigCSSTokenizerOnce, figCSSTokenizerRegisterFigCSSTokenizer);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v6 + 40) = -1;
        *(v6 + 56) = 0;
        *(v6 + 28) = 0;
        *(v6 + 64) = 0;
        Length = FigTextContainerGetLength(a2, (v6 + 48));
        if (Length)
        {
          CFRelease(v6);
        }

        else
        {
          *a3 = v6;
        }
      }

      else
      {
        FigCSSTokenizerCreateWithTextContainer_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      FigCSSTokenizerCreateWithTextContainer_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigCSSTokenizerCreateWithTextContainer_cold_3(&v11);
    return v11;
  }

  return Length;
}

double figCSSTokenizer_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSTokenizer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t _figCSSTokenizer_consume_next_input_code_point(uint64_t a1, _DWORD *a2)
{
  v3.location = *(a1 + 40);
  if (!*(a1 + 56) || v3.location < 0)
  {
    *(a1 + 40) = ++v3.location;
  }

  v4 = 0;
  *(a1 + 56) = 0;
  if (v3.location < *(a1 + 48))
  {
    buffer = 0;
    v3.length = &buffer;
    if (FigTextContainerGetCharacterAtIndex(*(a1 + 16), v3))
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = buffer;
      }

      return 1;
    }
  }

  return v4;
}

uint64_t _figCSSTokenizer_consume_a_string_token(uint64_t a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  v23 = 65533;
  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  if (Mutable)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      while (1)
      {
        v9 = *(a1 + 40);
        v10 = _figCSSTokenizer_consume_next_input_code_point(a1, &v23);
        if (!v10 && v9 < v8)
        {
          v17 = *(a1 + 48);
          if (!v17 || *(a1 + 40) >= v17)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v9 >= v8)
        {
          goto LABEL_23;
        }

        if (!v10)
        {
          goto LABEL_24;
        }

        if (v23 == a2)
        {
          goto LABEL_23;
        }

        if (v23 == 10)
        {
          *(a1 + 56) = 1;
          v18 = CFGetAllocator(a1);
          v14 = FigCSSSimpleTokenCreate(v18, 4, &cf);
          if (!v14)
          {
            goto LABEL_24;
          }

          goto LABEL_32;
        }

        if (v23 != 92)
        {
          break;
        }

        *chars = 0;
        _figCSSTokenizer_PeekAheadBuffer(a1, 1, &v22, 4uLL, chars);
        v11 = *(a1 + 48);
        if (!v11 || *(a1 + 40) >= v11 || *chars < 1)
        {
          goto LABEL_17;
        }

        if (v22 != 10)
        {
          if (v23 != 92 || *(a1 + 72) == 10)
          {
            goto LABEL_17;
          }

          v20 = 0;
          v19 = 0;
          _figCSSTokenizer_consume_an_escaped_code_point(a1, &v20);
          v19 = v20;
          v12 = &v19;
          goto LABEL_16;
        }

        _figCSSTokenizer_consume_next_input_code_point(a1, 0);
LABEL_17:
        v8 = *(a1 + 48);
        if (!v8)
        {
          goto LABEL_22;
        }
      }

      chars[0] = v23;
      v12 = chars;
LABEL_16:
      CFStringAppendCharacters(Mutable, v12, 1);
      goto LABEL_17;
    }

LABEL_22:
    _figCSSTokenizer_consume_next_input_code_point(a1, &v23);
LABEL_23:
    v13 = CFGetAllocator(a1);
    v14 = FigCSSStringValueTokenCreate(v13, 3, Mutable, &cf);
    if (!v14)
    {
LABEL_24:
      v15 = 0;
      *a3 = cf;
      cf = 0;
      goto LABEL_25;
    }

LABEL_32:
    v15 = v14;
  }

  else
  {
    _figCSSTokenizer_consume_a_string_token_cold_1(chars);
    v15 = *chars;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_25:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

BOOL _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(unsigned int a1, unsigned int a2, int a3)
{
  if (a1 != 45)
  {
    if (a1 < 0x41 || a1 > 0x5A)
    {
      v9 = a1 > 0x7A || a1 < 0x61;
      v10 = v9 && a1 < 0x80;
      if (v10 && a1 != 95)
      {
        return a1 == 92 && a2 != 10;
      }
    }

    return 1;
  }

  if (a2 >= 0x41 && a2 <= 0x5A)
  {
    return 1;
  }

  v4 = a2 > 0x7A || a2 < 0x61;
  v5 = v4 && a2 < 0x80;
  if (!v5 || a2 == 95)
  {
    return 1;
  }

  result = 0;
  if (a2 == 92 && a3 != 10)
  {
    return 1;
  }

  return result;
}

uint64_t _figCSSTokenizer_consume_a_name(uint64_t a1, __CFString **a2)
{
  v17 = 65533;
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    _figCSSTokenizer_consume_a_name_cold_1(&v18);
    return v18;
  }

  v6 = Mutable;
  if (!_figCSSTokenizer_consume_next_input_code_point(a1, &v17))
  {
    goto LABEL_28;
  }

  while (1)
  {
    chars = 0;
    _figCSSTokenizer_PeekAheadBuffer(a1, 3, (a1 + 72), 0xCuLL, (a1 + 64));
    v7 = v17;
    if (v17 >= 0x41 && v17 <= 0x5A)
    {
      goto LABEL_27;
    }

    v9 = v17 > 0x7A || v17 < 0x61;
    v10 = v9 && v17 < 0x80;
    if (!v10 || v17 == 95)
    {
      goto LABEL_27;
    }

    v12 = v17 > 0x39 || v17 < 0x30;
    if (!v12 || v17 == 45)
    {
      goto LABEL_27;
    }

    if (v17 != 92 || *(a1 + 72) == 10)
    {
      break;
    }

    v15 = 0;
    _figCSSTokenizer_consume_an_escaped_code_point(a1, &v15);
    v7 = v15;
LABEL_27:
    chars = v7;
    CFStringAppendCharacters(v6, &chars, 1);
    if (!_figCSSTokenizer_consume_next_input_code_point(a1, &v17))
    {
      goto LABEL_28;
    }
  }

  *(a1 + 56) = 1;
LABEL_28:
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t _figCSSTokenizer_consume_a_numeric_token(const void *a1, CFTypeRef *a2)
{
  v3 = a1;
  v92 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v76 = 0;
  *&v80[2] = 65533;
  v85 = xmmword_196E78A98;
  v86 = unk_196E78AA8;
  v87 = xmmword_196E78AB8;
  v81 = xmmword_196E78A58;
  v82 = unk_196E78A68;
  v83 = xmmword_196E78A78;
  v84 = unk_196E78A88;
  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (!Mutable)
  {
    _figCSSTokenizer_consume_a_numeric_token_cold_1();
    v58 = 0.0;
    v42 = 1;
    goto LABEL_106;
  }

  v77 = 0;
  _figCSSTokenizer_PeekAheadBuffer(v3, 3, (v3 + 72), 0xCuLL, (v3 + 64));
  if (*(v3 + 64) >= 1 && ((v6 = *(v3 + 72), v6 == 43) || v6 == 45))
  {
    v72 = 1;
    v81.length = 1;
    _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
    chars = *&v80[2];
    CFStringAppendCharacters(Mutable, &chars, 1);
    range = 1;
  }

  else
  {
    v72 = 0;
    range = 0;
  }

  v7 = 0;
  if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
  {
    v7 = 0;
    do
    {
      if (v88 < 0x30 || v88 > 0x39)
      {
        break;
      }

      ++v7;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      chars = *&v80[2];
      CFStringAppendCharacters(Mutable, &chars, 1);
      if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
      {
        break;
      }
    }

    while (v77 > 0);
    *(&v82 + 1) = v7;
  }

  v9 = 0;
  v10 = 0;
  if (!_figCSSTokenizer_PeekAheadBuffer(v3, 2, &v88, 8uLL, &v77) && v77 >= 2)
  {
    if (v88 == 46)
    {
      v9 = 0;
      v10 = 0;
      if (v89 >= 0x30 && v89 <= 0x39)
      {
        v10 = 1;
        *(&v83 + 1) = 1;
        _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
        chars = *&v80[2];
        _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
        v79 = *&v80[2];
        CFStringAppendCharacters(Mutable, &chars, 2);
        if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
        {
          v10 = 1;
          do
          {
            if (v88 < 0x30 || v88 > 0x39)
            {
              break;
            }

            ++v10;
            _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
            chars = *&v80[2];
            CFStringAppendCharacters(Mutable, &chars, 1);
            if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
            {
              break;
            }
          }

          while (v77 > 0);
        }

        *(&v84 + 1) = v10;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }
  }

  v12 = 0;
  v74 = a2;
  if (_figCSSTokenizer_PeekAheadBuffer(v3, 3, &v88, 0xCuLL, &v77) || v77 < 1)
  {
    goto LABEL_64;
  }

  if (v88 != 69 && v88 != 101)
  {
    goto LABEL_65;
  }

  if (v77 >= 3)
  {
    v14 = v89;
    if ((v89 == 43 || v89 == 45) && v90 >= 0x30 && v90 <= 0x39)
    {
      v15 = v80;
      v16 = 1;
      *(&v85 + 1) = 1;
      v86.length = 1;
      *(&v87 + 1) = 1;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      chars = *&v80[2];
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      v79 = *&v80[2];
      v17 = 3;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v77 == 2)
  {
    v14 = v89;
LABEL_50:
    v12 = 0;
    if (v14 >= 0x30)
    {
      v16 = 0;
      if (v14 > 0x39)
      {
        goto LABEL_66;
      }

      v15 = &v79;
      *(&v85 + 1) = 1;
      *(&v87 + 1) = 1;
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      v16 = 0;
      chars = *&v80[2];
      v17 = 2;
LABEL_53:
      _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
      *v15 = *&v80[2];
      CFStringAppendCharacters(Mutable, &chars, v17);
      v12 = 1;
      v9 = 1;
      if (!_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77) && v77 >= 1)
      {
        v12 = 1;
        do
        {
          if (v88 < 0x30 || v88 > 0x39)
          {
            break;
          }

          ++v12;
          _figCSSTokenizer_consume_next_input_code_point(v3, &v80[2]);
          chars = *&v80[2];
          CFStringAppendCharacters(Mutable, &chars, 1);
          if (_figCSSTokenizer_PeekAheadBuffer(v3, 1, &v88, 4uLL, &v77))
          {
            break;
          }
        }

        while (v77 > 0);
        *(&v87 + 1) = v12;
        v9 = 1;
      }

      goto LABEL_66;
    }

LABEL_64:
    v16 = 0;
    goto LABEL_66;
  }

LABEL_65:
  v12 = 0;
  v16 = 0;
LABEL_66:
  v70 = v16;
  v19 = Mutable;
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = *(&v81.length + v20);
    if (v22)
    {
      *(&v81.location + v20) = v21;
      v21 += v22;
    }

    v20 += 16;
  }

  while (v20 != 112);
  v69 = v12;
  v71 = v9;
  cf = v3;
  if (*(v3 + 25))
  {
    v23 = v7 <= 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v24 = *MEMORY[0x1E695E480];
    v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"repr: %@", Mutable);
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = 0;
    p_length = &v81.length;
    do
    {
      v28 = *(p_length - 1);
      if ((v28 & 0x8000000000000000) == 0)
      {
        v29 = *p_length;
        v30 = CFStringCreateWithSubstring(v24, v19, *(p_length - 1));
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = &stru_1F0B1AFB8;
        }

        v33 = CFStringCreateWithFormat(v24, 0, @"[%d] {%ld, %ld} : %@", v26, v28, v29, v32);
        if (v33)
        {
          CFRelease(v33);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }

      ++v26;
      p_length += 2;
    }

    while (v26 != 7);
  }

  v34 = 1.0;
  Mutable = v19;
  a2 = v74;
  if (v72)
  {
    v93.location = v81.location;
    v93.length = range;
    CFStringGetCharacters(v19, v93, buffer);
    if (buffer[0] == 45)
    {
      v34 = -1.0;
    }

    else
    {
      v34 = 1.0;
    }
  }

  v35 = 0.0;
  v36 = 0.0;
  v3 = cf;
  if (v7 >= 1)
  {
    v37 = v82;
    v38 = CFGetAllocator(cf);
    v94.location = v37;
    v94.length = v7;
    v39 = CFStringCreateWithSubstring(v38, v19, v94);
    if (v39)
    {
      v40 = v39;
      IntValue = CFStringGetIntValue(v39);
      CFRelease(v40);
      v36 = IntValue;
    }
  }

  v42 = v71;
  if (v10 >= 1 && (v43 = v84, v44 = CFGetAllocator(cf), v95.location = v43, v95.length = v10, (v45 = CFStringCreateWithSubstring(v44, v19, v95)) != 0))
  {
    v46 = v45;
    v47 = CFStringGetIntValue(v45);
    Length = CFStringGetLength(v46);
    CFRelease(v46);
    v35 = v47;
  }

  else
  {
    Length = 0;
  }

  v49.length = v70;
  if (v70 < 1)
  {
    v50 = 1.0;
  }

  else
  {
    v49.location = v86.location;
    CFStringGetCharacters(v19, v49, buffer);
    if (buffer[0] == 45)
    {
      v50 = -1.0;
    }

    else
    {
      v50 = 1.0;
    }
  }

  v51 = 0.0;
  if (v69 >= 1)
  {
    v52 = v87;
    v53 = CFGetAllocator(cf);
    v96.location = v52;
    v96.length = v69;
    v54 = CFStringCreateWithSubstring(v53, v19, v96);
    if (v54)
    {
      v55 = v54;
      v56 = CFStringGetIntValue(v54);
      CFRelease(v55);
      v51 = v56;
    }
  }

  v57 = v34 * (v36 + v35 * __exp10(-Length));
  v58 = v57 * __exp10(v50 * v51);
LABEL_106:
  _figCSSTokenizer_PeekAheadBuffer(v3, 3, (v3 + 72), 0xCuLL, (v3 + 64));
  v59 = *(v3 + 64);
  if (v59 < 3)
  {
    if (v59 < 1)
    {
      goto LABEL_115;
    }

    v60 = *(v3 + 72);
  }

  else
  {
    v60 = *(v3 + 72);
    if (_figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(v60, *(v3 + 76), *(v3 + 80)))
    {
      _figCSSTokenizer_consume_a_name(v3, &v75);
      v61 = CFGetAllocator(v3);
      v62 = v75;
      v63 = FigCSSDimensionTokenCreate(v61, Mutable, v42, v75, &v76, v58);
      if (v63)
      {
        goto LABEL_109;
      }

LABEL_117:
      v64 = 0;
      *a2 = v76;
      v76 = 0;
      goto LABEL_118;
    }
  }

  if (v60 == 37)
  {
    _figCSSTokenizer_consume_next_input_code_point(v3, 0);
    v65 = CFGetAllocator(v3);
    v63 = FigCSSPercentageTokenCreate(v65, Mutable, v42, &v76, v58);
    goto LABEL_116;
  }

LABEL_115:
  v66 = CFGetAllocator(v3);
  v63 = FigCSSNumberTokenCreate(v66, Mutable, v42, &v76, v58);
LABEL_116:
  v62 = 0;
  if (!v63)
  {
    goto LABEL_117;
  }

LABEL_109:
  v64 = v63;
  if (v76)
  {
    CFRelease(v76);
  }

LABEL_118:
  if (v62)
  {
    CFRelease(v62);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v64;
}

uint64_t _figCSSTokenizer_PeekAheadBuffer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4, uint64_t *a5)
{
  if (a4 > 4 * a2)
  {
    return 4294949487;
  }

  v7 = a3;
  v9 = *(a1 + 40) - (*(a1 + 56) != 0) + 1;
  v10 = *(a1 + 48) - v9;
  if (a2 >= 1)
  {
    v11 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = vdupq_n_s64(a2 - 1);
    v13 = xmmword_196E73080;
    v14 = xmmword_196E73090;
    v15 = a3 + 2;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 2) = 0;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 1) = 0;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = 0;
        v15[1] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 4;
      v11 -= 4;
    }

    while (v11);
  }

  if (v10 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v10;
  }

  if (v18 < 1)
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v18 < 4)
  {
    v19 = v24;
  }

  else
  {
    v19 = malloc_type_calloc(2uLL, v18, 0x5E1B7E6CuLL);
    if (!v19)
    {
      _figCSSTokenizer_PeekAheadBuffer_cold_1(v24, &v25);
      return v25;
    }
  }

  v26.location = v9;
  v26.length = v18;
  CharactersForRange = FigTextContainerGetCharactersForRange(*(a1 + 16), v26, v19);
  if (!CharactersForRange)
  {
    v20 = v19;
    v21 = v18;
    do
    {
      v22 = *v20++;
      *v7++ = v22;
      --v21;
    }

    while (v21);
  }

  if (v18 >= 4)
  {
    free(v19);
  }

  if (a5 && !CharactersForRange)
  {
LABEL_29:
    CharactersForRange = 0;
    *a5 = v18;
  }

  return CharactersForRange;
}

BOOL FigCSSCodePointIs_hex_digit(unsigned int a1)
{
  if (a1 >= 0x30 && a1 <= 0x39)
  {
    return 1;
  }

  if (a1 >= 0x41 && a1 <= 0x46)
  {
    return 1;
  }

  return a1 >= 0x61 && a1 <= 0x66;
}

double _figCSSTokenizer_consume_a_unicode_range()
{
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949491, "<<<< FigCSSParser >>>>", 1557, v0);
}

BOOL FigCSSCodePointIs_name_start_code_point(unsigned int a1)
{
  v1 = a1 >= 0x41 && a1 <= 0x5A;
  if (!v1 && (a1 <= 0x7A ? (v2 = a1 < 0x61) : (v2 = 1), v2 ? (v3 = a1 < 0x80) : (v3 = 0), v3))
  {
    return a1 == 95;
  }

  else
  {
    return 1;
  }
}

void _figCSSTokenizer_consume_an_escaped_code_point(uint64_t a1, int *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = 65533;
  v31 = 65533;
  v30 = 0;
  v28 = 0;
  _figCSSTokenizer_consume_next_input_code_point(a1, &v31);
  if ((v31 < 0x30 || v31 > 0x39) && (v31 < 0x41 || v31 > 0x46) && (v31 < 0x61 || v31 > 0x66))
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      if (*(a1 + 40) >= v9)
      {
        v5 = 65533;
      }

      else
      {
        v5 = v31;
      }
    }

    goto LABEL_68;
  }

  v32 = v31;
  _figCSSTokenizer_PeekAheadBuffer(a1, 5, v33, 0x14uLL, &v30);
  if (v30 < 1)
  {
    v16 = 1;
  }

  else
  {
    v10 = 1;
    while (1)
    {
      v11 = v33[v10 - 1];
      if ((v11 < 0x30 || v11 > 0x39) && (v11 < 0x41 || v11 > 0x46) && (v11 < 0x61 || v11 > 0x66))
      {
        break;
      }

      v16 = v10 + 1;
      _figCSSTokenizer_consume_next_input_code_point(a1, 0);
      v15 = v30;
      if (v30 >= 5)
      {
        v15 = 5;
      }

      v22 = v10++ < v15;
      if (!v22)
      {
        goto LABEL_37;
      }
    }

    v16 = v10;
  }

LABEL_37:
  if (!_figCSSTokenizer_PeekAheadBuffer(a1, 1, &v29, 4uLL, &v28) && v28 >= 1 && (v29 == 10 || v29 == 9 || v29 == 32))
  {
    _figCSSTokenizer_consume_next_input_code_point(a1, 0);
  }

  v17 = 0;
  v18 = &v32;
  v5 = 65533;
  while (1)
  {
    v20 = *v18++;
    v19 = v20;
    v17 *= 16;
    v21 = v20 - 48;
    v22 = v20 < 0x30 || v19 > 0x39;
    if (!v22)
    {
      goto LABEL_59;
    }

    v23 = v19 - 65;
    if (v19 < 0x41 || v19 > 0x46)
    {
      v23 = v19 - 97;
      if (v19 < 0x61 || v19 > 0x66)
      {
        break;
      }
    }

    v21 = v23 + 10;
LABEL_59:
    v17 += v21;
    if (!--v16)
    {
      if (!v17)
      {
        goto LABEL_68;
      }

      goto LABEL_61;
    }
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v27, a2);
  if (!v17)
  {
    goto LABEL_68;
  }

LABEL_61:
  v26 = v17 > 0xD8FF || v17 < 0xD800;
  if (v26 && v17 <= 0x10FFFF)
  {
    v5 = v17;
  }

LABEL_68:
  *a2 = v5;
}

uint64_t OUTLINED_FUNCTION_4_104()
{

  return _figCSSTokenizer_consume_next_input_code_point(v0, 0);
}

float FigVideoCompositionInstructionEvaluateTweenedOpacity(const void *a1, float a2)
{
  v2 = 0.0;
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 4)
      {
        v7 = Count;
        if ((Count & 1) == 0)
        {
          v15 = 0;
          valuePtr = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
          CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr + 4);
          v9 = CFArrayGetValueAtIndex(a1, 1);
          CFNumberGetValue(v9, kCFNumberFloat32Type, &v15 + 4);
          if (*(&valuePtr + 1) <= a2)
          {
            v10 = 2;
            while (1)
            {
              v11 = CFArrayGetValueAtIndex(a1, v10);
              CFNumberGetValue(v11, kCFNumberFloat32Type, &valuePtr);
              v12 = v10 + 1;
              v13 = CFArrayGetValueAtIndex(a1, v12);
              CFNumberGetValue(v13, kCFNumberFloat32Type, &v15);
              if (*&valuePtr > a2)
              {
                break;
              }

              HIDWORD(valuePtr) = valuePtr;
              v2 = *&v15;
              HIDWORD(v15) = v15;
              v10 = v12 + 1;
              if (v10 >= v7)
              {
                return v2;
              }
            }

            return *(&v15 + 1) + (((*&v15 - *(&v15 + 1)) * (a2 - *(&valuePtr + 1))) / (*&valuePtr - *(&valuePtr + 1)));
          }

          else
          {
            return *(&v15 + 1);
          }
        }
      }
    }
  }

  return v2;
}

void FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(const __CFArray *result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  if (result && (v6 = CFGetTypeID(result), v6 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(result), Count >= 4) && (v8 = Count, (Count & 1) == 0))
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr + 4);
    v10 = CFArrayGetValueAtIndex(result, 1);
    FigGetCGAffineTransformFrom3x2MatrixArray(v10, &v34.a);
    if (*(&valuePtr + 1) <= a3)
    {
      v15 = 2;
      while (1)
      {
        v16 = CFArrayGetValueAtIndex(result, v15);
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        v17 = v15 + 1;
        v18 = CFArrayGetValueAtIndex(result, v17);
        FigGetCGAffineTransformFrom3x2MatrixArray(v18, &v33.a);
        if (*&valuePtr > a3)
        {
          break;
        }

        HIDWORD(valuePtr) = valuePtr;
        v34 = v33;
        v15 = v17 + 1;
        if (v15 >= v8)
        {
          v19 = *&v33.c;
          *a2 = *&v33.a;
          *(a2 + 16) = v19;
          v12 = *&v33.tx;
          goto LABEL_8;
        }
      }

      v20 = a3 - *(&valuePtr + 1);
      v21 = *&valuePtr - *(&valuePtr + 1);
      v38 = *&v34.a;
      __x[0] = *&v34.c;
      __x[1] = *&v34.tx;
      v37 = v33;
      vci_CGAffineTransformDecompose(&v38, &v40, 1, 1);
      vci_CGAffineTransformDecompose(&v37, &v38, 1, 1);
      if ((v40.f64[0] >= 0.0 || *(&v38 + 1) >= 0.0) && (v40.f64[1] >= 0.0 || *&v38 >= 0.0))
      {
        v22 = v41;
      }

      else
      {
        v40 = vnegq_f64(v40);
        v22 = v41 + dbl_196E78AD0[v41 < 0.0];
      }

      v23 = v20 / v21;
      v24 = fmod(v22, 6.28318531);
      v41 = v24;
      v25 = fmod(*__x, 6.28318531);
      *__x = v25;
      if (vabdd_f64(v24, v25) > 3.14159265)
      {
        v26 = v24 <= v25;
        if (v24 > v25)
        {
          v25 = v24;
        }

        v27 = &v38;
        if (!v26)
        {
          v27 = &v40;
        }

        v27[1].f64[0] = v25 + -6.28318531;
      }

      for (i = 0; i != 9; ++i)
      {
        v40.f64[i] = v40.f64[i] + v23 * (*(&__x[-1] + i * 8) - v40.f64[i]);
      }

      v29 = v43;
      *a2 = v42;
      *(a2 + 16) = v29;
      *(a2 + 32) = v44;
      v30 = *(a2 + 16);
      *&v37.a = *a2;
      *&v37.c = v30;
      *&v37.tx = *(a2 + 32);
      CGAffineTransformRotate(a2, &v37, v41);
      v31 = *(a2 + 16);
      *&v36.a = *a2;
      *&v36.c = v31;
      *&v36.tx = *(a2 + 32);
      CGAffineTransformScale(&v37, &v36, v40.f64[0], v40.f64[1]);
      v32 = *&v37.c;
      *a2 = *&v37.a;
      *(a2 + 16) = v32;
      v12 = *&v37.tx;
    }

    else
    {
      v11 = *&v34.c;
      *a2 = *&v34.a;
      *(a2 + 16) = v11;
      v12 = *&v34.tx;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    *(a2 + 16) = v14;
    v12 = *(v13 + 32);
  }

LABEL_8:
  *(a2 + 32) = v12;
}

uint64_t FigVideoCompositionInstructionEvaluateTweenedCropRectangle(uint64_t result, float a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v4 == result)
    {
      result = CFArrayGetCount(v3);
      if (result >= 4)
      {
        v5 = result;
        if ((result & 1) == 0)
        {
          valuePtr = 0.0;
          v16 = 0.0;
          memset(&rect, 0, sizeof(rect));
          memset(&v14, 0, sizeof(v14));
          ValueAtIndex = CFArrayGetValueAtIndex(v3, 1);
          v7 = CFArrayGetValueAtIndex(v3, 0);
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          TypeID = CFDictionaryGetTypeID();
          result = CFGetTypeID(ValueAtIndex);
          if (TypeID == result)
          {
            result = CGRectMakeWithDictionaryRepresentation(ValueAtIndex, &rect);
            if (result)
            {
              if (valuePtr <= a2)
              {
                for (i = 2; i < v5; i = v11 + 1)
                {
                  v10 = CFArrayGetValueAtIndex(v3, i);
                  CFNumberGetValue(v10, kCFNumberFloat32Type, &v16);
                  v11 = i + 1;
                  v12 = CFArrayGetValueAtIndex(v3, v11);
                  v13 = CFDictionaryGetTypeID();
                  result = CFGetTypeID(v12);
                  if (v13 == result)
                  {
                    result = CGRectMakeWithDictionaryRepresentation(v12, &v14);
                    if (result)
                    {
                      if (v16 > a2)
                      {
                        return result;
                      }

                      valuePtr = v16;
                      rect = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigVideoCompositionInstructionArrayIsValid(uint64_t result, uint64_t a2, uint64_t a3)
{
  memset(&v25, 0, sizeof(v25));
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v5);
      if (!Count)
      {
        return 1;
      }

      v8 = Count;
      for (i = 0; ; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        memset(&v24, 0, sizeof(v24));
        memset(&v23, 0, sizeof(v23));
        if (!ValueAtIndex)
        {
          break;
        }

        v11 = ValueAtIndex;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v11))
        {
          break;
        }

        Value = CFDictionaryGetValue(v11, @"StartTime");
        if (!Value)
        {
          break;
        }

        v14 = Value;
        v15 = CFDictionaryGetTypeID();
        if (v15 != CFGetTypeID(v14))
        {
          break;
        }

        v16 = CFDictionaryGetValue(v11, @"StartTime");
        CMTimeMakeFromDictionary(&v24, v16);
        v17 = CFDictionaryGetValue(v11, @"EndTime");
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = CFDictionaryGetTypeID();
        if (v19 != CFGetTypeID(v18))
        {
          break;
        }

        v20 = CFDictionaryGetValue(v11, @"EndTime");
        CMTimeMakeFromDictionary(&v23, v20);
        if (!i && (*(a2 + 12) & 1) != 0)
        {
          time1 = v24;
          v21 = *a2;
          if (CMTimeCompare(&time1, &v21) > 0)
          {
            break;
          }
        }

        if (v8 == 1 && (*(a3 + 12) & 1) != 0)
        {
          time1 = v23;
          v21 = *a3;
          if (CMTimeCompare(&time1, &v21) < 0)
          {
            break;
          }
        }

        if (i)
        {
          time1 = v25;
          v21 = v24;
          if (CMTimeCompare(&time1, &v21))
          {
            break;
          }
        }

        time1 = v24;
        v21 = v23;
        if (CMTimeCompare(&time1, &v21) >= 1)
        {
          break;
        }

        v25 = v23;
        result = 1;
        if (!--v8)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

double FigVideoCompositionInstructionCGAffineTransformDecompose(_OWORD *a1, uint64_t a2, uint64_t a3, _OWORD *a4, double *a5, double *a6, double *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v14[2] = a1[2];
  result = vci_CGAffineTransformDecompose(v14, &v15, a2, a3);
  if (a5)
  {
    result = v15;
    *a5 = v15;
  }

  if (a6)
  {
    result = v16;
    *a6 = v16;
  }

  if (a7)
  {
    result = v17;
    *a7 = v17;
  }

  if (a4)
  {
    v13 = v19;
    *a4 = v18;
    a4[1] = v13;
    result = *&v20;
    a4[2] = v20;
  }

  return result;
}

double vci_CGAffineTransformDecompose(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sqrt(v8 * v8 + *a1 * *a1);
  v12 = sqrt(v10 * v10 + v9 * v9);
  v13 = *a1 * v10 - v9 * v8;
  v14 = -v12;
  v15 = -v11;
  if (*a1 < v10)
  {
    v14 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v13 < 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v13 < 0.0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  v18 = 1.0 / v16;
  v19 = 0.0;
  if (v16 == 0.0)
  {
    v18 = 0.0;
  }

  v20 = 1.0 / v17;
  if (v17 == 0.0)
  {
    v20 = 0.0;
  }

  v21 = *(a1 + 16);
  *&v30.a = *a1;
  *&v30.c = v21;
  *&v30.tx = *(a1 + 32);
  CGAffineTransformScale(&v31, &v30, v18, v20);
  v22 = *&v31.c;
  *a1 = *&v31.a;
  *(a1 + 16) = v22;
  *(a1 + 32) = *&v31.tx;
  if (a4)
  {
    v19 = atan2(*(a1 + 8), *a1);
    v23 = *(a1 + 16);
    *&v30.a = *a1;
    *&v30.c = v23;
    *&v30.tx = *(a1 + 32);
    CGAffineTransformRotate(&v31, &v30, -v19);
    v24 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v31.tx;
  }

  if (!a3)
  {
    if (fmin(v16, v17) < 0.0)
    {
      v19 = -v19;
    }

    v25 = -1.0;
    if (v16 < 0.0)
    {
      v26 = -1.0;
    }

    else
    {
      v26 = 1.0;
    }

    if (v17 >= 0.0)
    {
      v25 = 1.0;
    }

    v27 = *(a1 + 16);
    *&v30.a = *a1;
    *&v30.c = v27;
    *&v30.tx = *(a1 + 32);
    CGAffineTransformScale(&v31, &v30, v26, v25);
    v28 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v28;
    *(a1 + 32) = *&v31.tx;
    v16 = fabs(v16);
    v17 = fabs(v17);
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime(const __CFAllocator *a1, CFTypeRef cf, __int128 *a3, __CFArray **a4)
{
  v42 = 0;
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_6(&v41);
    return LODWORD(v41.value);
  }

  if (!a4)
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_5(&v41);
    return LODWORD(v41.value);
  }

  v9 = *MEMORY[0x1E695E4D0];
  Value = CFDictionaryGetValue(cf, @"ContainsTweening");
  v11 = 0.0;
  if (v9 == Value)
  {
    v41 = *a3;
    FigVideoCompositionInstructionGetNormalizedTime(cf, &v41);
    v11 = v37;
  }

  FigCFDictionaryGetInt32IfPresent();
  v12 = CFDictionaryGetValue(cf, @"LayerStack");
  v13 = CFDictionaryGetValue(cf, @"RequiredVideoTrackIDArray");
  if (v42)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_1(&v41);
      return LODWORD(v41.value);
    }

    MutableCopy = Mutable;
    FigCFArrayAppendInt32();
    goto LABEL_35;
  }

  v16 = v13;
  if (!v12 || (v17 = CFGetTypeID(v12), v17 != CFArrayGetTypeID()))
  {
    if (v16 && (v35 = CFGetTypeID(v16), v35 == CFArrayGetTypeID()))
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v16);
      if (!MutableCopy)
      {
        FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_4(&v41);
        return LODWORD(v41.value);
      }
    }

    else
    {
      MutableCopy = 0;
    }

LABEL_35:
    result = 0;
    *a4 = MutableCopy;
    return result;
  }

  v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!v18)
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_3(&v41);
    return LODWORD(v41.value);
  }

  MutableCopy = v18;
  Count = CFArrayGetCount(v12);
  if (Count < 1)
  {
    goto LABEL_35;
  }

  v20 = Count;
  v39 = a4;
  v21 = 0;
  v22 = @"ConstantOpacity";
  while (1)
  {
    *&v40 = 1.0;
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v21);
    if (!ValueAtIndex || (v24 = ValueAtIndex, v25 = CFGetTypeID(ValueAtIndex), v25 != CFDictionaryGetTypeID()))
    {
      v38 = 561;
      goto LABEL_37;
    }

    if (!FigCFDictionaryGetFloatIfPresent())
    {
      *&v40 = 1.0;
    }

    if (v9 == Value && (v30 = CFDictionaryGetValue(v24, @"TweenedOpacity")) != 0 && (v31 = v30, v32 = v22, v33 = CFGetTypeID(v30), v34 = v33 == CFArrayGetTypeID(), v22 = v32, v34))
    {
      v26 = FigVideoCompositionInstructionEvaluateTweenedOpacity(v31, v11);
      *&v40 = v26;
    }

    else
    {
      v26 = *&v40;
    }

    if (v26 > 0.0)
    {
      break;
    }

LABEL_24:
    if (v20 == ++v21)
    {
      a4 = v39;
      goto LABEL_35;
    }
  }

  v27 = CFDictionaryGetValue(v24, @"SourceVideoTrackID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      CFArrayAppendValue(MutableCopy, v28);
      goto LABEL_24;
    }
  }

  v38 = 578;
LABEL_37:
  FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_2(v38, &v40, MutableCopy, &v41);
  return LODWORD(v41.value);
}

uint64_t FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime(int a1, const __CFDictionary *cf, uint64_t a3, CFMutableArrayRef *a4)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(cf, @"RequiredSampleDataTrackIDArray");
      if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFArrayGetTypeID()))
      {
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
        if (!MutableCopy)
        {
          FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_1(&v12);
          return v12;
        }
      }

      else
      {
        MutableCopy = 0;
      }

      result = 0;
      *a4 = MutableCopy;
    }

    else
    {
      FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_3(&v14);
    return v14;
  }

  return result;
}

uint64_t FigVideoCompositionInstructionGetLayerCountExcludingBackground(const void *a1, CFIndex *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_2(&v14);
    Count = 0;
    v11 = v14;
    goto LABEL_12;
  }

  if (!a2)
  {
    FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_1(&v13);
    Count = 0;
    v11 = v13;
    goto LABEL_12;
  }

  FigCFDictionaryGetInt32IfPresent();
  Value = CFDictionaryGetValue(a1, @"LayerStack");
  v6 = CFDictionaryGetValue(a1, @"RequiredVideoTrackIDArray");
  if (Value && (v7 = CFGetTypeID(Value), v7 == CFArrayGetTypeID()))
  {
    v8 = Value;
  }

  else
  {
    if (!v6 || (v9 = CFGetTypeID(v6), v9 != CFArrayGetTypeID()))
    {
      v11 = 0;
      Count = 0;
      goto LABEL_12;
    }

    v8 = v6;
  }

  Count = CFArrayGetCount(v8);
  v11 = 0;
LABEL_12:
  *a2 = Count;
  return v11;
}

uint64_t FigVirtualDisplayProcessorAccessoryCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  FigVirtualDisplayProcessorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 8) = dispatch_semaphore_create(0);
    *DerivedStorage = dispatch_queue_create("FVDProcessorAccessoryQueue", 0);
    *a3 = 0;
  }

  return v4;
}

void pa_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    pa_finalize_cold_1();
  }

  v3 = *DerivedStorage;
  if (*DerivedStorage)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pa_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_89;
    block[4] = a1;
    dispatch_sync(v3, block);
    if (*DerivedStorage)
    {
      dispatch_release(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }
}

uint64_t pa_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"processorType"))
  {
    v7 = @"AccessoryProcessor";
LABEL_7:
    v9 = CFRetain(v7);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (CFEqual(a2, @"IsIdle"))
  {
    v8 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 32) != 2)
    {
      v8 = MEMORY[0x1E695E4D0];
    }

    v7 = *v8;
    goto LABEL_7;
  }

  return 4294954512;
}

void pa_cleanup(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, a1, 0, 0);
  v4 = DerivedStorage[2];
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v5(v4, 0);
    }
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6, 0);
    }

    v8 = DerivedStorage[3];
    if (v8)
    {
      CFRelease(v8);
      DerivedStorage[3] = 0;
    }
  }

  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[6] = 0;
  }
}

uint64_t pa_plugSink(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pa_plugSink_block_invoke;
    block[3] = &unk_1E74908C8;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t pa_unplugSink(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_unplugSink_block_invoke;
  block[3] = &unk_1E74908F0;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v8;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t pa_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_start_block_invoke;
  block[3] = &unk_1E7490918;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t pa_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __pa_stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_37_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t pa_suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = DerivedStorage;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t pa_resume(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __pa_resume_block_invoke;
  v5[3] = &unk_1E74909A0;
  v5[4] = &v6;
  v5[5] = DerivedStorage;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef *__pa_plugSink_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[8] || *(v2 + 2))
  {
    *(*(result[4] + 1) + 24) = -12070;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 2) = v1[6];
  }

  return result;
}

void __pa_unplugSink_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 32) && (v3 = *(v2 + 16), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 16) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __pa_start_block_invoke(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v36 = 0;
  if (*(DerivedStorage + 32))
  {
    __pa_start_block_invoke_cold_1();
LABEL_42:
    v26 = -12070;
    goto LABEL_32;
  }

  v4 = DerivedStorage;
  if (!*(DerivedStorage + 16))
  {
    __pa_start_block_invoke_cold_3();
    goto LABEL_42;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(v5 + 36) = CFPreferenceNumberWithDefault;
  if (CFPreferenceNumberWithDefault <= 63)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(cf) = 0;
    v38[0] = OS_LOG_TYPE_DEFAULT;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_42;
  }

  *(v5 + 40) = CFPreferenceNumberWithDefault;
  v7 = FigGetCFPreferenceNumberWithDefault();
  v8 = *MEMORY[0x1E695E480];
  if (!v7)
  {
    goto LABEL_21;
  }

  cf = 0;
  v9 = getpid();
  v10 = CFStringCreateWithFormat(v8, 0, @"/tmp/vdpaccessory-tap-%d-%d.mov", v9, ++tapSinkCreate_count);
  if (FigVirtualDisplaySinkFileWriterCreate(v8, &cf))
  {
    *v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_18;
  }

  FigVirtualDisplaySinkGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    v35 = v10;
    v17 = v2;
LABEL_12:
    *v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = v17;
LABEL_15:
    v10 = v35;
    goto LABEL_16;
  }

  if (v13(v12, @"Destination", v10))
  {
    v35 = v10;
    v17 = v2;
    goto LABEL_12;
  }

  v14 = cf;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v15)
  {
    v35 = v10;
    v16 = v2;
    goto LABEL_14;
  }

  if (v15(v14, 0, 0))
  {
    v35 = v10;
    v16 = v2;
LABEL_14:
    *v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    v2 = v16;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  *(v5 + 24) = cf;
LABEL_21:
  FigGetCFPreferenceDoubleWithDefault();
  *&v20 = v20;
  *(v5 + 56) = LODWORD(v20);
  FigVirtualDisplaySinkGetCMBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v23)
  {
    v24 = v23(v22, @"displayInfo", v8, &v36);
    if (!v24)
    {
      if (v36)
      {
        FigCFDictionaryGetBooleanIfPresent();
        *(v4 + 32) = 2;
        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        CFNotificationCenterAddObserver(DistributedCenter, v2, pa_handleNotification, @"com.apple.stevenote.AudioDataValues", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v26 = 0;
        goto LABEL_32;
      }

      __pa_start_block_invoke_cold_2();
      goto LABEL_42;
    }

    v26 = v24;
  }

  else
  {
    v26 = -12782;
  }

  LODWORD(cf) = 0;
  v38[0] = OS_LOG_TYPE_DEFAULT;
  v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v28 = cf;
  v29 = v38[0];
  if (os_log_type_enabled(v27, v38[0]))
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 & 0xFFFFFFFE;
  }

  if (v30)
  {
    v40 = 136315650;
    v41 = "pa_startInternal";
    v42 = 1024;
    v43 = 440;
    v44 = 1024;
    v45 = v26;
    _os_log_send_and_compose_impl(v30, 0, v46, 128, &dword_1962D5000, v27, v29, "<<<< FigVirtualDisplayProcessorAccessory >>>> %s: %d: got error %d", &v40, 24, v34);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_32:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v26)
  {
    pa_cleanup(v2);
  }

  *(*(a1[4] + 8) + 24) = v26;
}

void pa_handleNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __pa_handleNotification_block_invoke;
  v8[3] = &__block_descriptor_tmp_24_1;
  v8[4] = a2;
  v8[5] = a5;
  dispatch_sync(v7, v8);
}

void __pa_stop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 32) = 0;
  pa_cleanup(v2);
}

uint64_t __pa_suspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 32) = 1;
  v2 = *(v1 + 16);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E4D0];

    return v6(v2, @"clearScreen", v7, 0);
  }

  return result;
}

uint64_t __pa_resume_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 2;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

void OUTLINED_FUNCTION_7_67(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 256) = a2;
  *(v2 + 116) = a1;
  *(v3 - 244) = 1024;
}

uint64_t OUTLINED_FUNCTION_8_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_14_43(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_22_27(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, os_log_type_t type, int a30)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_23_35(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigCaptionRendererTTMLRegionSetColor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  *(DerivedStorage + 72) = v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetInvisible(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695E4D0];
  if (!*(DerivedStorage + 144))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a2 = *v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetWidth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 80) = a2;
  *(DerivedStorage + 88) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetHeight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 96) = a2;
  *(DerivedStorage + 104) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetPositionX(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = a2;
  *(DerivedStorage + 120) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetPositionY(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 128) = a2;
  *(DerivedStorage + 136) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetShowBackground(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 152);
  *(DerivedStorage + 152) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetWritingMode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 160);
  *(DerivedStorage + 160) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetWritingMode(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 160);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetCellResolution(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a2[1];
  *(DerivedStorage + 176) = *a2;
  *(DerivedStorage + 192) = v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetCellResolution(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 192);
    *a2 = *(DerivedStorage + 176);
    a2[1] = v4;
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetDisplayAlignment(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 168);
  *(DerivedStorage + 168) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void FigCaptionRendererTTMLRegionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CGColorRelease(*(DerivedStorage + 72));
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 152);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 152) = 0;
  }

  v4 = *(DerivedStorage + 160);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 160) = 0;
  }

  v5 = *(DerivedStorage + 168);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 168) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererTTMLRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v17 = 4294954508;
LABEL_19:
    FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode_cold_1();
    return v17;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    v17 = 4294954514;
    goto LABEL_19;
  }

  v7 = v6(a2, &__s1);
  if (v7)
  {
    v17 = v7;
    goto LABEL_19;
  }

  v8 = strcmp(__s1, "FigCaptionRendererTTMLRegion");
  v9 = *(DerivedStorage + 160);
  if (v8)
  {
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (v10)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v11 + 112);
        if (v12)
        {
          v12(a2, v9);
        }
      }
    }
  }

  else
  {
    FigCaptionRendererTTMLRegionSetWritingMode(a2, *(DerivedStorage + 160));
  }

  v13 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 40);
  if (v16)
  {
    return v16(v13, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(MEMORY[0x1E695F050] + 16);
  v84[0] = *MEMORY[0x1E695F050];
  v84[1] = v7;
  v79 = v7;
  v80 = v84[0];
  v83[0] = v84[0];
  v83[1] = v7;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 72);
      if (v10)
      {
        v10(a1, v84);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 104);
      if (v13)
      {
        v13(a1, v83);
      }
    }
  }

  v14 = *(DerivedStorage + 152);
  if (!v14)
  {
    goto LABEL_18;
  }

  if (CFStringCompare(v14, *MEMORY[0x1E6960B98], 1uLL) == kCFCompareEqualTo)
  {
    v18 = (DerivedStorage + 216);
    if (*(DerivedStorage + 216))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v2 = 1;
  if (CFStringCompare(*(DerivedStorage + 152), *MEMORY[0x1E6960BA0], 1uLL) == kCFCompareEqualTo)
  {
    theArray.a = 0.0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v15 = CMBaseObjectGetProtocolVTable();
    if (v15)
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = *(v16 + 24);
        if (v17)
        {
          v17(a1, &theArray);
        }
      }
    }

    if (*&theArray.a)
    {
      v2 = CFArrayGetCount(*&theArray.a) < 1;
      goto LABEL_19;
    }

LABEL_18:
    v2 = 1;
  }

LABEL_19:
  v18 = (DerivedStorage + 216);
  if (*(DerivedStorage + 216))
  {
    goto LABEL_24;
  }

  if (v2)
  {
    goto LABEL_50;
  }

LABEL_23:
  if (!*(DerivedStorage + 72))
  {
    goto LABEL_50;
  }

LABEL_24:
  v82.origin = v80;
  v82.size = v79;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v19 = CMBaseObjectGetProtocolVTable();
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v20 + 104);
      if (v21)
      {
        v21(a1, &v82);
      }
    }
  }

  size = v82.size;
  v23 = *(a2 + 340);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v24 = CMBaseObjectGetProtocolVTable();
  if (!v24)
  {
    return 4294954508;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
    return 4294954508;
  }

  v26 = *(v25 + 200);
  if (!v26)
  {
    return 4294954514;
  }

  LODWORD(v3) = vcvtpd_s64_f64(size.width);
  LODWORD(v2) = vcvtpd_s64_f64(size.height);
  result = v26(a1, v3, v2, v23);
  if (!result)
  {
    data = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v28 = CMBaseObjectGetProtocolVTable();
    if (v28)
    {
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = *(v29 + 208);
        if (v30)
        {
          v30(a1, &data);
        }
      }
    }

    if (!data)
    {
      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_3();
      return 0;
    }

    v31 = *MEMORY[0x1E695F1C0];
    v32 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v32)
    {
      v33 = v32;
      v34 = CGBitmapContextCreate(data, *(a2 + 340) * v3, *(a2 + 340) * v2, 8uLL, 4 * *(a2 + 340) * v3, v32, 0x4001u);
      if (!v34)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v79.width, LODWORD(v79.height), LODWORD(v80.x));
        v78 = v77;
        CGColorSpaceRelease(v33);
        return v78;
      }

      v35 = v34;
      CGContextScaleCTM(v34, *(a2 + 340), *(a2 + 340));
      v36 = *(MEMORY[0x1E695EFD0] + 16);
      *&theArray.a = *MEMORY[0x1E695EFD0];
      *&theArray.c = v36;
      *&theArray.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGContextSetTextMatrix(v35, &theArray);
      CGColorSpaceRelease(v33);
      if (*v18 == 1)
      {
        v37 = CGColorSpaceCreateWithName(v31);
        *&theArray.a = xmmword_196E78AF8;
        *&theArray.c = unk_196E78B08;
        v38 = CGColorCreate(v37, &theArray.a);
      }

      else
      {
        v37 = 0;
        v38 = *(DerivedStorage + 72);
      }

      CGContextSaveGState(v35);
      v39 = v82.size;
      CGContextSetShadowWithColor(v35, *MEMORY[0x1E695F060], 0.0, 0);
      CGContextSetFillColorWithColor(v35, v38);
      v87.origin.x = 0.0;
      v87.origin.y = 0.0;
      v87.size = v39;
      CGContextFillRect(v35, v87);
      CGContextRestoreGState(v35);
      if (*v18 == 1)
      {
        CGColorRelease(v38);
        CFRelease(v37);
      }

      Image = CGBitmapContextCreateImage(v35);
      if (Image)
      {
        v41 = Image;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v42 = CMBaseObjectGetProtocolVTable();
        if (v42)
        {
          v43 = *(v42 + 16);
          if (v43)
          {
            v44 = *(v43 + 168);
            if (v44)
            {
              v44(a1, v41);
            }
          }
        }

        CGImageRelease(v41);
        CGContextRelease(v35);
LABEL_50:
        if (*(a2 + 296))
        {
          *&theArray.a = v80;
          *&theArray.c = v79;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v45 = CMBaseObjectGetProtocolVTable();
          if (v45)
          {
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = *(v46 + 104);
              if (v47)
              {
                v47(a1, &theArray);
              }
            }
          }

          Value = CFDictionaryGetValue(*(a2 + 296), a1);
          if (*(a2 + 336))
          {
            d = theArray.d;
          }

          else
          {
            v50 = *(MEMORY[0x1E695F058] + 16);
            v82.origin = *MEMORY[0x1E695F058];
            v82.size = v50;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v51 = CMBaseObjectGetProtocolVTable();
            if (v51)
            {
              v52 = *(v51 + 16);
              if (v52)
              {
                v53 = *(v52 + 72);
                if (v53)
                {
                  v53(a1, &v82);
                }
              }
            }

            v88.origin.x = theArray.a;
            v88.origin.y = theArray.b;
            v88.size = *&theArray.c;
            MidY = CGRectGetMidY(v88);
            v55 = CGRectGetMidY(v82);
            v56 = v55 + v55 - MidY;
            d = theArray.d;
            theArray.b = v56 + theArray.d * -0.5;
          }

          c = theArray.c;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v58 = CMBaseObjectGetProtocolVTable();
          if (v58)
          {
            v59 = *(v58 + 16);
            if (v59)
            {
              v60 = *(v59 + 88);
              if (v60)
              {
                v60(Value, c, d);
              }
            }
          }

          v89.origin.x = theArray.a;
          v89.origin.y = theArray.b;
          v89.size = *&theArray.c;
          MidX = CGRectGetMidX(v89);
          v90.origin.x = theArray.a;
          v90.origin.y = theArray.b;
          v90.size = *&theArray.c;
          v62 = CGRectGetMidY(v90);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v63 = CMBaseObjectGetProtocolVTable();
          if (v63)
          {
            v64 = *(v63 + 16);
            if (v64)
            {
              v65 = *(v64 + 72);
              if (v65)
              {
                v65(Value, MidX, v62);
              }
            }
          }

          v82.origin.x = 0.0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v66 = CMBaseObjectGetProtocolVTable();
          if (v66 && (v67 = *(v66 + 16)) != 0 && (v68 = *(v67 + 176)) != 0)
          {
            v68(a1, &v82);
            x = v82.origin.x;
          }

          else
          {
            x = 0.0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v70 = CMBaseObjectGetProtocolVTable();
          if (v70)
          {
            v71 = *(v70 + 16);
            if (v71)
            {
              v72 = *(v71 + 120);
              if (v72)
              {
                v72(Value, *&x);
              }
            }
          }
        }

        v73 = *DerivedStorage;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v74 = CMBaseObjectGetProtocolVTable();
        if (v74)
        {
          v75 = *(v74 + 16);
          if (v75)
          {
            v76 = *(v75 + 280);
            if (v76)
            {
              return v76(v73, a2);
            }

            return 4294954514;
          }
        }

        return 4294954508;
      }

      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_1(v35, &theArray);
    }

    else
    {
      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_2(&theArray);
    }

    return LODWORD(theArray.a);
  }

  return result;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, double *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = -1.0;
  v8 = 0;
  v9 = v5[11];
  if (v9 > 1886679839)
  {
    if (v9 == 1886679840 || v9 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v7 = v14;
      v6 = 0;
    }
  }

  else if (v9 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v6 = 1;
    v7 = v15 / 100.0;
  }

  else if (v9 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v11 = v10;
    FigGeometryDimensionGetCGFloat();
    v6 = 1;
    v7 = v11 / v12;
  }

  v16 = FCRRectNull;
  v17 = -1.0;
  v18 = v5[13];
  if (v18 > 1886679839)
  {
    if (v18 == 1886679840 || v18 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v17 = v22;
      v8 = 0;
    }
  }

  else if (v18 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v8 = 1;
    v17 = v23 / 100.0;
  }

  else if (v18 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v20 = v19;
    FigGeometryDimensionGetCGFloat();
    v8 = 1;
    v17 = v20 / v21;
  }

  v24 = 0;
  v25 = -1.0;
  v26 = v5[15];
  if (v26 > 1886679839)
  {
    if (v26 == 1886679840 || v26 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v25 = v30;
      v16 = 0;
    }
  }

  else if (v26 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    if (v44 / 100.0 < 0.0 || (FigGeometryDimensionGetCGFloat(), v25 = 1.0, v45 / 100.0 <= 1.0))
    {
      FigGeometryDimensionGetCGFloat();
      if (v56 / 100.0 >= 0.0)
      {
        FigGeometryDimensionGetCGFloat();
        v16 = 1;
        v25 = v132 / 100.0;
      }

      else
      {
        v16 = 1;
        v25 = 0.0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else if (v26 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v28 = v27;
    FigGeometryDimensionGetCGFloat();
    v16 = 1;
    v25 = v28 / v29;
  }

  v31 = -1.0;
  v32 = v5[17];
  if (v32 > 1886679839)
  {
    if (v32 == 1886679840 || v32 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v31 = v43;
      v24 = 0;
    }
  }

  else
  {
    if (v32 == 622862368)
    {
      v46 = v18 == 1886920736 || v18 == 1886679840;
      v31 = 1.0;
      if (v46)
      {
        v47 = 1.0;
      }

      else
      {
        v47 = v17;
      }

      FigGeometryDimensionGetCGFloat();
      v49 = v48 / 100.0;
      v50 = 0.0;
      if (v49 <= 1.0)
      {
        FigGeometryDimensionGetCGFloat();
        v50 = v51 / -100.0 + 1.0;
      }

      if (v50 - v47 <= 1.0)
      {
        FigGeometryDimensionGetCGFloat();
        v53 = v52 / 100.0;
        v54 = 0.0;
        if (v53 <= 1.0)
        {
          FigGeometryDimensionGetCGFloat();
          v54 = v55 / -100.0 + 1.0;
        }

        v31 = v54 - v47;
      }

      goto LABEL_55;
    }

    if (v32 == 1667591276)
    {
      FigGeometryDimensionGetCGFloat();
      v34 = v33;
      FigGeometryDimensionGetCGFloat();
      v36 = v34 / v35;
      v31 = 1.0;
      if (v36 > 1.0 || (FigGeometryDimensionGetCGFloat(), v38 = v37, FigGeometryDimensionGetCGFloat(), 1.0 - v38 / v39 <= 1.0))
      {
        FigGeometryDimensionGetCGFloat();
        v41 = v40;
        FigGeometryDimensionGetCGFloat();
        if (v41 / v42 > 1.0)
        {
          v24 = 1;
          v31 = 0.0;
          goto LABEL_56;
        }

        FigGeometryDimensionGetCGFloat();
        v58 = v57;
        FigGeometryDimensionGetCGFloat();
        v31 = 1.0 - v58 / v59;
      }

LABEL_55:
      v24 = 1;
    }
  }

LABEL_56:
  v60 = *v5;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v62 = *(ProtocolVTable + 16);
    if (v62)
    {
      v63 = *(v62 + 80);
      if (v63)
      {
        LOBYTE(v147) = v16;
        *(&v147 + 1) = 0;
        DWORD1(v147) = 0;
        *(&v147 + 1) = v25;
        LOBYTE(v148) = v24;
        *(&v148 + 1) = 0;
        DWORD1(v148) = 0;
        *(&v148 + 1) = v31;
        LOBYTE(v149) = v6;
        *(&v149 + 1) = 0;
        DWORD1(v149) = 0;
        *(&v149 + 1) = v7;
        LOBYTE(v150) = v8;
        DWORD1(v150) = 0;
        *(&v150 + 1) = 0;
        *(&v150 + 1) = v17;
        v63(v60, &v147);
      }
    }
  }

  v64 = CMBaseObjectGetDerivedStorage();
  v147 = FCRRectNull;
  v148 = *&byte_196E76830;
  v149 = xmmword_196E76840;
  v150 = *&byte_196E76850;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v65 = CMBaseObjectGetProtocolVTable();
  if (v65)
  {
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = *(v66 + 88);
      if (v67)
      {
        v67(a1, &v147);
      }
    }
  }

  v68 = FCRGetVideoPresentationBounds(a2[47], a2[48], a2[43], a2[44], a2[45], a2[46]);
  if (*(&v149 + 1) != -1.0)
  {
    v118 = v68 + *(&v147 + 1) * v70;
    v119 = v68 + *(&v147 + 1);
    if (v147)
    {
      v119 = v118;
    }

    v120 = v69 + *(&v148 + 1) * v71;
    v121 = v69 + *(&v148 + 1);
    if (v148)
    {
      v121 = v120;
    }

    v122 = *(&v149 + 1) * v70;
    if (!v149)
    {
      v122 = *(&v149 + 1);
    }

    v123 = v71 * *(&v150 + 1);
    if (!v150)
    {
      v123 = *(&v150 + 1);
    }

    v151 = CGRectIntegral(*&v119);
    x = v151.origin.x;
    y = v151.origin.y;
    width = v151.size.width;
    height = v151.size.height;
    v128 = *v64;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v129 = CMBaseObjectGetProtocolVTable();
    if (v129)
    {
      v130 = *(v129 + 16);
      if (v130)
      {
        v131 = *(v130 + 96);
        if (v131)
        {
          v131(v128, x, y, width, height);
        }
      }
    }
  }

  theArray = 0;
  v72 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v73 = CMBaseObjectGetProtocolVTable();
  if (v73)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = *(v74 + 24);
      if (v75)
      {
        v75(v72, &theArray);
      }
    }
  }

  Count = CFArrayGetCount(theArray);
  *cf2 = *(MEMORY[0x1E695F050] + 16);
  v139 = *MEMORY[0x1E695F050];
  v147 = *MEMORY[0x1E695F050];
  v148 = *cf2;
  v77 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v78 = CMBaseObjectGetProtocolVTable();
  if (v78)
  {
    v79 = *(v78 + 16);
    if (v79)
    {
      v80 = *(v79 + 104);
      if (v80)
      {
        v80(v77, &v147);
      }
    }
  }

  v144 = v139;
  *v145 = *cf2;
  v81 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v82 = CMBaseObjectGetProtocolVTable();
  if (v82)
  {
    v83 = *(v82 + 16);
    if (v83)
    {
      v84 = *(v83 + 152);
      if (v84)
      {
        v84(v81, &v144);
      }
    }
  }

  if (Count >= 1)
  {
    v85 = *&v144 - *&v147;
    v86 = *(&v144 + 1) - *(&v147 + 1);
    v87 = *MEMORY[0x1E6960A10];
    v88 = *MEMORY[0x1E6960A20];
    v89 = *MEMORY[0x1E6960A18];
    v90 = *MEMORY[0x1E69607B0];
    cf2a = *MEMORY[0x1E69607A0];
    v136 = *MEMORY[0x1E6960780];
    v135 = *MEMORY[0x1E6960790];
    v134 = *MEMORY[0x1E6960788];
    v91 = Count + 1;
    v140 = *MEMORY[0x1E695F060];
    v92 = *(&v144 + 1) - *(&v147 + 1);
    v93 = *&v144 - *&v147;
    v133 = *MEMORY[0x1E6960798];
    do
    {
      v143 = v140;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v91 - 2);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v95 = CMBaseObjectGetProtocolVTable();
      if (v95)
      {
        v96 = *(v95 + 16);
        if (v96)
        {
          v97 = *(v96 + 120);
          if (v97)
          {
            v97(ValueAtIndex, &v143);
          }
        }
      }

      v98 = *(DerivedStorage + 168);
      if (v98)
      {
        v99 = v86;
        if (CFStringCompare(v98, v87, 1uLL))
        {
          if (CFStringCompare(*(DerivedStorage + 168), v88, 1uLL) == kCFCompareEqualTo)
          {
            v100 = (v145[1] - *(&v143 + 1)) * 0.5;
            goto LABEL_90;
          }

          v99 = v92;
          if (CFStringCompare(*(DerivedStorage + 168), v89, 1uLL) == kCFCompareEqualTo)
          {
            v100 = v145[1] - *(&v143 + 1);
LABEL_90:
            v99 = v86 + v100;
          }
        }
      }

      else
      {
        v99 = v92;
      }

      __s1 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v101 = CMBaseObjectGetProtocolVTable();
      if (v101)
      {
        v102 = *(v101 + 16);
        if (v102)
        {
          v103 = *(v102 + 8);
          if (v103)
          {
            v103(ValueAtIndex, &__s1);
          }
        }
      }

      if (!__s1 || strcmp(__s1, "FigCaptionRendererCaption"))
      {
        goto LABEL_97;
      }

      theDict = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v110 = CMBaseObjectGetProtocolVTable();
      if (v110)
      {
        v111 = *(v110 + 16);
        if (v111)
        {
          v112 = *(v111 + 16);
          if (v112)
          {
            v112(ValueAtIndex, &theDict);
          }
        }
      }

      if (!theDict)
      {
        goto LABEL_97;
      }

      Value = CFDictionaryGetValue(theDict, v90);
      if (!Value)
      {
        goto LABEL_97;
      }

      v114 = Value;
      v93 = v85;
      if (CFEqual(Value, cf2a))
      {
        goto LABEL_97;
      }

      if (CFEqual(v114, v136))
      {
        v115 = v145[0];
LABEL_116:
        v93 = v85 + v115 - *&v143;
        goto LABEL_97;
      }

      if (CFEqual(v114, v135))
      {
        v115 = v145[0];
LABEL_119:
        v93 = v85 + (v115 - *&v143) * 0.5;
        goto LABEL_97;
      }

      v93 = v85;
      if (!CFEqual(v114, v134))
      {
        v116 = CFEqual(v114, v133);
        v115 = v145[0];
        if (v116)
        {
          goto LABEL_116;
        }

        goto LABEL_119;
      }

LABEL_97:
      FigCaptionRendererNodeProtocolGetProtocolID();
      v104 = CMBaseObjectGetProtocolVTable();
      if (v104)
      {
        v105 = *(v104 + 16);
        if (v105)
        {
          v106 = *(v105 + 128);
          if (v106)
          {
            v106(ValueAtIndex, v93, v99);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v107 = CMBaseObjectGetProtocolVTable();
      if (v107)
      {
        v108 = *(v107 + 16);
        if (v108)
        {
          v109 = *(v108 + 232);
          if (v109)
          {
            v109(ValueAtIndex, 1);
          }
        }
      }

      v92 = v99 + *(&v143 + 1);
      --v91;
    }

    while (v91 > 1);
  }

  FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(a1, a2);
  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Compose(const void *a1, const __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) == 1)
  {
    v5 = a2[37];
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 120);
          if (v9)
          {
            v9(Value, 0);
          }
        }
      }
    }

    Mutable = 0;
    v11 = 0;
  }

  else
  {
    v12 = DerivedStorage;
    v57 = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v14 + 248);
        if (v15)
        {
          v15(a1, &v57 + 1);
          if (HIBYTE(v57))
          {
            FigCaptionRendererNodeProtocolGetProtocolID();
            v16 = CMBaseObjectGetProtocolVTable();
            if (v16)
            {
              v17 = *(v16 + 16);
              if (v17)
              {
                v18 = *(v17 + 296);
                if (v18)
                {
                  v18(a1, a2);
                }
              }
            }
          }
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v20 + 240);
        if (v21)
        {
          v21(a1, &v57);
        }
      }
    }

    if (v57)
    {
      FigCaptionRendererNodeProtocolGetProtocolID();
      v22 = CMBaseObjectGetProtocolVTable();
      if (v22)
      {
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v23 + 288);
          if (v24)
          {
            v24(a1, a2);
          }
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v25 = CMBaseObjectGetProtocolVTable();
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v26 + 280);
        if (v27)
        {
          v27(a1, a2);
        }
      }
    }

    v28 = *v12;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v29 = CMBaseObjectGetProtocolVTable();
    if (v29 && (v30 = *(v29 + 16)) != 0)
    {
      v31 = *(v30 + 304);
      if (v31)
      {
        v11 = v31(v28, a2);
      }

      else
      {
        v11 = 4294954514;
      }
    }

    else
    {
      v11 = 4294954508;
    }

    if (!*(v12 + 145))
    {
      goto LABEL_60;
    }

    if (a2[37])
    {
      v32 = *(MEMORY[0x1E695F050] + 16);
      v56.origin = *MEMORY[0x1E695F050];
      v56.size = v32;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 104);
          if (v35)
          {
            v35(a1, &v56);
          }
        }
      }

      v36 = CFDictionaryGetValue(a2[37], a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v37 = CMBaseObjectGetProtocolVTable();
      if (v37)
      {
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = *(v38 + 104);
          if (v39)
          {
            v39(v36, 1);
          }
        }
      }
    }

    if (a2[40])
    {
      Mutable = CGPathCreateMutable();
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v40 = CMBaseObjectGetProtocolVTable();
      if (v40)
      {
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = *(v41 + 24);
          if (v42)
          {
            v42(a1, &theArray);
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              if (Count >= 1)
              {
                v44 = Count;
                v45 = 0;
                v53 = *(MEMORY[0x1E695F058] + 16);
                v54 = *MEMORY[0x1E695F058];
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v45);
                  v56.origin = v54;
                  v56.size = v53;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v47 = CMBaseObjectGetProtocolVTable();
                  if (v47)
                  {
                    v48 = *(v47 + 16);
                    if (v48)
                    {
                      v49 = *(v48 + 104);
                      if (v49)
                      {
                        v49(ValueAtIndex, &v56);
                      }
                    }
                  }

                  CGPathAddRect(Mutable, 0, v56);
                  ++v45;
                }

                while (v44 != v45);
              }

              CGContextAddPath(a2[40], Mutable);
              v50 = a2[41];
              if (v50)
              {
                CGContextAddPath(v50, Mutable);
              }

              CGContextClip(a2[40]);
              v51 = a2[41];
              if (v51)
              {
                CGContextClip(v51);
              }
            }
          }
        }
      }
    }

    else
    {
LABEL_60:
      Mutable = 0;
    }
  }

  CGPathRelease(Mutable);
  return v11;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = *(DerivedStorage + 8);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    v4(v8, v5);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a2;
  *(DerivedStorage + 48) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 56) = a2;
  *(DerivedStorage + 64) = a3;
  return 0;
}

uint64_t RegisterFigCaptionRendererTTMLRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigVideoCompositionProcessorType()
{
  result = _CFRuntimeRegisterClass();
  sFigVideoCompositionProcessorTypeID = result;
  return result;
}

uint64_t FigVideoCompositionProcessorCreateWithImageQueue(const __CFAllocator *a1, uint64_t a2, const void *a3, __int128 *a4, uint64_t a5, void *a6, __int128 *a7, __int128 *a8, const void *a9, uint64_t *a10)
{
  v12 = a5;
  v15 = a2;
  values = a6;
  v17 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  v24 = *a4;
  v22 = *a7;
  v23 = *(a7 + 2);
  v20 = *a8;
  v21 = *(a8 + 2);
  v18 = FigVideoCompositionProcessorCreateWithImageQueueArray(a1, v15, a3, &v24, v12, v17, 0, &v22, &v20, a9, a10);
  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

void videoprocessor_processUntilHighWaterMet(uint64_t a1)
{
  v114 = *MEMORY[0x1E69E9840];
  memset(v96, 0, sizeof(v96));
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  FigVCPTimingCopyProcessingState(*(a1 + 96), v94);
  FigSimpleMutexLock();
  if (!*(a1 + 160))
  {
    FigSimpleMutexUnlock();
    goto LABEL_222;
  }

  v105 = 0;
  v106 = 0;
  v103 = 0;
  cf = 0;
  v102 = 0;
  v2 = *(a1 + 96);
  v81 = FigVCPTimingUsesTimebase(v2);
  v82 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
  v86 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
  timebase = FigVCPTimingCopyTimebase(v2);
  v5 = *(a1 + 2256);
  v6 = *(a1 + 2257);
  Count = FigVCPSourceArrayGetCount(v3);
  v8 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  if (!v8)
  {
    videoprocessor_processUntilHighWaterMet_cold_4(time1);
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    v10 = 0;
    v93 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_195;
  }

  v88 = v8;
  v93 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  if (!v93)
  {
    videoprocessor_processUntilHighWaterMet_cold_3(time1);
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    v10 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_183;
  }

  v83 = v2;
  v9 = FigVCPSourceArrayGetCount(v4);
  v10 = malloc_type_calloc(v9, 8uLL, 0x2004093837F09uLL);
  v80 = v9;
  if (!v10)
  {
    videoprocessor_processUntilHighWaterMet_cold_2(time1);
LABEL_229:
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_183;
  }

  v11 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  if (!v11)
  {
    videoprocessor_processUntilHighWaterMet_cold_1(time1);
    goto LABEL_229;
  }

  v87 = v11;
  if (BYTE14(v96[1]))
  {
    SourceTrackIDForFrameTiming = FigVCPTimingGetSourceTrackIDForFrameTiming(v2);
    FigVCPSourceArrayGetSourceWithTrackID(v3, SourceTrackIDForFrameTiming);
    v13 = FigVCPProcessingStateSetCurrentTimeWithSourceFrameTiming();
    if (v13)
    {
      CanAccomodateFrame = v13;
      SInt32 = 0;
      v16 = 0;
      Mutable = 0;
      goto LABEL_183;
    }
  }

  if (!*(a1 + 160))
  {
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    CanAccomodateFrame = 0;
    goto LABEL_183;
  }

  v89 = 0;
  Mutable = 0;
  v79 = *(MEMORY[0x1E6960C70] + 12);
  v78 = *(MEMORY[0x1E6960C70] + 16);
  allocator = *MEMORY[0x1E695E480];
  v92 = (v5 | v6) != 0;
  v77 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v103)
    {
      CFRelease(v103);
      v103 = 0;
    }

    if (v102)
    {
      CFRelease(v102);
      v102 = 0;
    }

    if (BYTE14(v96[1]))
    {
LABEL_176:
      SInt32 = 0;
      CanAccomodateFrame = 0;
      goto LABEL_182;
    }

    HasReachedTheEnd = FigVCPProcessingStateHasReachedTheEnd(v94);
    if (HasReachedTheEnd)
    {
      if (v81)
      {
        goto LABEL_179;
      }

      if (FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104)))
      {
        FigVCPCompositorHostStopAcceptingRequest(*(a1 + 104));
        videoprocessor_setUpcomingImageInfo(a1);
      }

      if (FigVCPSourceArrayNoMoreImagesOnAnySource(v3) || (~LODWORD(v96[1]) & 5) == 0 || (v96[1] & 9) == 9)
      {
LABEL_179:
        SInt32 = 0;
        CanAccomodateFrame = 0;
        *(a1 + 160) = 0;
        goto LABEL_182;
      }
    }

    if (*(a1 + 20))
    {
      updated = videoprocessor_updateCoreAnimationThrottling(a1, *(a1 + 20));
      if (updated)
      {
        goto LABEL_180;
      }
    }

    if (v95)
    {
      v100 = 0;
      v101 = 0uLL;
      FigVCPTimingGetOutputFrameDuration(v83, &v100);
      v99 = *(v96 + 4);
      v17 = v100;
      v18 = v101;
      v110 = *(&v101 + 4);
      v111 = HIDWORD(v101);
      Rate = CMTimebaseGetRate(timebase);
      memset(&v109, 0, sizeof(v109));
      CMTimebaseGetTime(&v109, timebase);
      v112 = *MEMORY[0x1E6960C70];
      timescale = *(MEMORY[0x1E6960C70] + 8);
      if (Rate <= 0.0 || (*time1 = v109, time2 = v99, CMTimeCompare(time1, &time2) < 1))
      {
        v21 = v18;
        epoch = v78;
        flags = v79;
        if (Rate >= 0.0 || (*time1 = v109, time2 = v99, epoch = v78, flags = v79, (CMTimeCompare(time1, &time2) & 0x80000000) == 0))
        {
LABEL_34:
          if (flags)
          {
            *(v96 + 4) = v112;
            HIDWORD(v96[0]) = timescale;
            LODWORD(v96[1]) = flags;
            *(&v96[1] + 4) = epoch;
          }

          goto LABEL_36;
        }

        *time1 = v109;
        CMTimeConvertScale(&time2, time1, v21, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
        flags = time2.flags;
        timescale = time2.timescale;
        v112 = time2.value + (time2.value % v17 + v17) / v17 * v17 - (time2.value % v17 + v17);
        epoch = time2.epoch;
        *time1 = v99;
        Seconds = CMTimeGetSeconds(time1);
        time2 = v99;
        rhs.value = v112;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
      }

      else
      {
        *time1 = v109;
        CMTimeConvertScale(&time2, time1, v18, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
        flags = time2.flags;
        timescale = time2.timescale;
        v112 = ((v17 - time2.value) % v17 + v17) % v17 + time2.value;
        v21 = v18;
        epoch = time2.epoch;
        *time1 = v99;
        Seconds = CMTimeGetSeconds(time1);
        time2.value = v112;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        rhs = v99;
      }

      CMTimeSubtract(time1, &time2, &rhs);
      v24 = CMTimeGetSeconds(time1);
      *time1 = v17;
      *&time1[8] = v21;
      *&time1[12] = v110;
      *&time1[20] = v111;
      v25 = CMTimeGetSeconds(time1);
      FigVCPTallyUpdateSkips((a1 + 240), Seconds, v24, v25);
      goto LABEL_34;
    }

LABEL_36:
    if (!HasReachedTheEnd)
    {
      LOBYTE(rhs.value) = 0;
      memset(&v109, 0, sizeof(v109));
      time2 = *(v96 + 4);
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      FigVCPGetFoldedTime(&time2, time1, &v109);
      *time1 = v109;
      v43 = FigVCPInstructionSourceCopyInstructionAtTime(v82, time1, &rhs, &cf);
      if (v43 == -12301)
      {
        if (BYTE12(v96[1]))
        {
          videoprocessor_sendSeekCompleteNotification(a1, *&v94[72]);
          CanAccomodateFrame = 0;
          BYTE12(v96[1]) = 0;
        }

        else
        {
          CanAccomodateFrame = 0;
        }

LABEL_178:
        v16 = v89;
        SInt32 = 0;
        goto LABEL_183;
      }

      CanAccomodateFrame = v43;
      if (v43)
      {
        goto LABEL_178;
      }

      if (LOBYTE(rhs.value))
      {
        HIBYTE(v96[1]) = 1;
        *(a1 + 200) = 0;
      }
    }

    if (FigVCPOutputWasJustFlushed(v86))
    {
      HIBYTE(v96[1]) = 1;
    }

    if (cf)
    {
      memset(&v109, 0, sizeof(v109));
      time2 = *(v96 + 4);
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      FigVCPGetFoldedTime(&time2, time1, &v109);
      *time1 = v109;
      v26 = FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime(allocator, cf, time1, &v103);
      if (v103)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 0;
      }

      if (!v27 && v103)
      {
        CFRelease(v103);
        v103 = 0;
      }

      *time1 = v109;
      v28 = FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime(allocator, cf, time1, &v102);
      if (v102)
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 0;
      }

      if (!v29 && v102)
      {
        CFRelease(v102);
        v102 = 0;
      }
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v3, v30);
        LOBYTE(v109.value) = 0;
        v33 = v103;
        TrackID = FigVCPSourceGetTrackID(SourceAtIndex);
        if (videoprocessor_isTrackRequired(v33, TrackID))
        {
          LOBYTE(time2.value) = 0;
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPSourceCheckSampleAvailability(SourceAtIndex, *&v94[76], BYTE2(v95), time1, &v109, &time2);
          if (updated)
          {
            goto LABEL_180;
          }

          if (!LOBYTE(time2.value))
          {
            v31 = 0;
          }

          if (LOBYTE(v109.value))
          {
            *time1 = *(v96 + 4);
            *&time1[16] = *(&v96[1] + 4);
            updated = FigVCPSourceSetCurrentTime(SourceAtIndex, *&v94[76], time1);
            if (updated)
            {
              goto LABEL_180;
            }
          }
        }

        ++v30;
      }

      while (v30 < FigVCPSourceArrayGetCount(v3));
      if (!v31)
      {
        goto LABEL_176;
      }
    }

    if (FigVCPSourceArrayGetCount(v4) >= 1)
    {
      v36 = 0;
      v37 = 1;
      do
      {
        v38 = FigVCPSourceArrayGetSourceAtIndex(v4, v36);
        LOBYTE(v109.value) = 0;
        v39 = v102;
        v40 = FigVCPSourceGetTrackID(v38);
        if (v39 && videoprocessor_isTrackRequired(v39, v40))
        {
          LOBYTE(time2.value) = 0;
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPSourceCheckSampleAvailability(v38, *&v94[76], BYTE2(v95), time1, &v109, &time2);
          if (updated)
          {
            goto LABEL_180;
          }

          if (!LOBYTE(time2.value))
          {
            v37 = 0;
          }

          if (LOBYTE(v109.value))
          {
            *time1 = *(v96 + 4);
            *&time1[16] = *(&v96[1] + 4);
            updated = FigVCPSourceSetCurrentTime(v38, *&v94[76], time1);
            if (updated)
            {
              goto LABEL_180;
            }
          }
        }

        ++v36;
      }

      while (v36 < FigVCPSourceArrayGetCount(v4));
      if (!v37)
      {
        goto LABEL_176;
      }
    }

    if (!*(a1 + 200))
    {
      time2.value = 0;
      updated = FigVideoCompositionInstructionGetLayerCountExcludingBackground(cf, &time2.value);
      if (updated)
      {
        goto LABEL_180;
      }

      value = time2.value;
      *time1 = 0;
      v109.value = 0;
      if (v3)
      {
        v42 = FigVCPSourceArrayGetCount(v3) > 1;
      }

      else
      {
        v42 = 0;
      }

      if (!FigVCPCompositorHostDoesRequireDifferentSourcePixelBufferAttributesForMultiSource(*(a1 + 104)) || ((v44 = value > 1 || v42, v45 = *(a1 + 104), !v44) ? (v47 = CFGetAllocator(a1), v46 = FigVCPCompositorHostCopyProperty(v45, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v47, time1)) : (v46 = FigVCPCompositorHostCopySourcePixelBufferAttributesForMultiSource(*(a1 + 104), time1)), v46))
      {
LABEL_96:
        if (*time1)
        {
          CFRelease(*time1);
        }
      }

      else if (*time1)
      {
        FigVCPPreprocessParametersSetProperty();
        if (FigVCPSourceArrayGetCount(v3) >= 1)
        {
          v48 = 0;
          do
          {
            if (v109.value)
            {
              CFRelease(v109.value);
              v109.value = 0;
            }

            if (FigVCPPreprocessParametersCreateCopy(allocator, *(a1 + 24), &v109.value))
            {
              break;
            }

            v49 = FigVCPSourceArrayGetSourceAtIndex(v3, v48);
            FigVCPSourceSetPreprocessParameters(v49, v109.value);
            if (v109.value)
            {
              CFRelease(v109.value);
              v109.value = 0;
            }

            ++v48;
          }

          while (v48 < FigVCPSourceArrayGetCount(v3));
        }

        goto LABEL_96;
      }

      if (v109.value)
      {
        CFRelease(v109.value);
      }

      *(a1 + 200) = 1;
    }

    if (v92)
    {
      if (v106)
      {
        CFRelease(v106);
        v106 = 0;
      }

      if (v105)
      {
        CFRelease(v105);
        v105 = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v89)
      {
        CFRelease(v89);
      }

      v50 = MEMORY[0x1E695E9D8];
      v51 = MEMORY[0x1E695E9E8];
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v89 = CFDictionaryCreateMutable(allocator, 0, v50, v51);
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      break;
    }

LABEL_127:
    if (FigVCPSourceArrayGetCount(v4) >= 1)
    {
      v58 = 0;
      do
      {
        v59 = FigVCPSourceArrayGetSourceAtIndex(v4, v58);
        v60 = v10[v58];
        if (v60)
        {
          CFRelease(v60);
          v10[v58] = 0;
        }

        v87[v58] = FigVCPSourceGetTrackID(v59);
        v61 = v102;
        v62 = FigVCPSourceGetTrackID(v59);
        if (v61 && videoprocessor_isTrackRequired(v61, v62))
        {
          *time1 = 0;
          if (v92)
          {
            FigVCPSourceGetTrackID(v59);
            SInt32 = FigCFNumberCreateSInt32();
            v57 = FigVCPSourceCopyTimedSampleBuffers(v59, *&v94[76], &v105);
            if (v57)
            {
              goto LABEL_223;
            }

            FigCFDictionarySetValue();
            if (SInt32)
            {
              CFRelease(SInt32);
            }

            if (v105)
            {
              CFRelease(v105);
              v105 = 0;
            }
          }

          else
          {
            updated = FigVCPSourceCopySampleBuffer(v59, time1);
            if (updated)
            {
              goto LABEL_180;
            }

            v10[v58] = *time1;
          }
        }

        ++v58;
      }

      while (v58 < FigVCPSourceArrayGetCount(v4));
    }

    v63 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
    if (v63)
    {
      CFRelease(v63);
      HIBYTE(v96[1]) = 1;
    }

    v64 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    PendingFramesCount = FigVCPCompositorHostGetPendingFramesCount(*(a1 + 104));
    CanAccomodateFrame = FigVCPOutputAllOutputsCanAccomodateFrame(v64, PendingFramesCount);
    if (v64)
    {
      CFRelease(v64);
    }

    if (!CanAccomodateFrame)
    {
      goto LABEL_181;
    }

    if (!HasReachedTheEnd)
    {
      if (HIBYTE(v96[1]) || FigVCPTimingRepeatIdenticalFrames(v83) || v77 == CFDictionaryGetValue(cf, @"ContainsTweening"))
      {
        v66 = 0;
      }

      else
      {
        if (BYTE12(v96[1]))
        {
          videoprocessor_sendSeekCompleteNotification(a1, *&v94[72]);
          BYTE12(v96[1]) = 0;
        }

        if (v81 && FigVCPSourceArrayNoMoreImagesOnAnySource(*(a1 + 32)) && videoprocessor_willCompositionInstructionContinueForever(cf, *&v94[76]))
        {
          goto LABEL_176;
        }

        ++*(a1 + 2252);
        v66 = 1;
      }

      v67 = *(a1 + 104);
      v109 = *(v96 + 4);
      time2 = *v94;
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      updated = FigVCPCompositorHostAnticipateRendering(v67, &v109, &time2);
      if (updated)
      {
        goto LABEL_180;
      }

      if ((v66 & 1) == 0)
      {
        HIBYTE(v96[1]) = 0;
        v68 = *(a1 + 104);
        v69 = cf;
        if (v92)
        {
          time2 = *(v96 + 4);
          *time1 = *&v94[24];
          *&time1[16] = *&v94[40];
          v98 = *&v94[56];
          FigVCPGetFoldedTime(&time2, time1, &v109);
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPCompositorHostPrepareToComposeFromWindow(v68, v69, time1, &v109, SBYTE13(v96[1]), *&v94[72], *&v94[76], Mutable, v89);
          if (updated)
          {
            goto LABEL_180;
          }
        }

        else
        {
          time2 = *(v96 + 4);
          *time1 = *&v94[24];
          *&time1[16] = *&v94[40];
          v98 = *&v94[56];
          FigVCPGetFoldedTime(&time2, time1, &v109);
          v70 = BYTE13(v96[1]);
          v71 = *&v94[72];
          v72 = FigVCPSourceArrayGetCount(v3);
          v73 = FigVCPSourceArrayGetCount(v4);
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPCompositorHostPrepareToCompose(v68, v69, time1, &v109.value, v70, v71, SHIDWORD(v71), v72, v93, v88, v73, v87, v10);
          if (updated)
          {
            goto LABEL_180;
          }
        }

        updated = videoprocessor_setUpcomingImageInfo(a1);
        if (updated)
        {
          goto LABEL_180;
        }

        updated = FigVCPCompositorHostComposeFrameAsync(*(a1 + 104));
        if (updated)
        {
          goto LABEL_180;
        }
      }

      updated = FigVCPProcessingStateAdvanceCurrentTime(v94, v3, v83);
      if (updated)
      {
LABEL_180:
        CanAccomodateFrame = updated;
LABEL_181:
        SInt32 = 0;
        goto LABEL_182;
      }

      if (!FigVCPTimingIsProcessingStateFresh(v83, v94))
      {
        goto LABEL_176;
      }
    }

    if (!*(a1 + 160))
    {
      goto LABEL_176;
    }
  }

  v52 = 0;
  while (2)
  {
    v53 = FigVCPSourceArrayGetSourceAtIndex(v3, v52);
    v54 = *(v88 + 8 * v52);
    if (v54)
    {
      CFRelease(v54);
      *(v88 + 8 * v52) = 0;
    }

    v93[v52] = FigVCPSourceGetTrackID(v53);
    v55 = v103;
    v56 = FigVCPSourceGetTrackID(v53);
    if (!videoprocessor_isTrackRequired(v55, v56))
    {
      goto LABEL_126;
    }

    LOBYTE(v109.value) = 0;
    *time1 = 0;
    if (!v92)
    {
      updated = FigVCPSourceCopyConformedImage(v53, &v109, time1);
      if (updated)
      {
        goto LABEL_180;
      }

      *(v88 + 8 * v52) = *time1;
LABEL_124:
      if (LOBYTE(v109.value))
      {
        HIBYTE(v96[1]) = 1;
      }

LABEL_126:
      if (++v52 >= FigVCPSourceArrayGetCount(v3))
      {
        goto LABEL_127;
      }

      continue;
    }

    break;
  }

  FigVCPSourceGetTrackID(v53);
  SInt32 = FigCFNumberCreateSInt32();
  v57 = FigVCPSourceCopyConformedTimedImages(v53, *&v94[76], &v109, &v106);
  if (!v57)
  {
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v106)
    {
      CFRelease(v106);
      v106 = 0;
    }

    goto LABEL_124;
  }

LABEL_223:
  CanAccomodateFrame = v57;
LABEL_182:
  v16 = v89;
LABEL_183:
  if (Count >= 1)
  {
    v74 = v88;
    do
    {
      if (*v74)
      {
        CFRelease(*v74);
      }

      ++v74;
      --Count;
    }

    while (Count);
  }

  if (v10 && v80 >= 1)
  {
    for (i = 0; i != v80; ++i)
    {
      v76 = v10[i];
      if (v76)
      {
        CFRelease(v76);
      }
    }
  }

  v8 = v88;
LABEL_195:
  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  free(v93);
  free(v8);
  free(v87);
  free(v10);
  FigSimpleMutexUnlock();
  if (CanAccomodateFrame)
  {
    videoprocessor_reportProcessingError(a1, CanAccomodateFrame);
  }

  else
  {
LABEL_222:
    FigVCPTimingSaveProcessingState(*(a1 + 96), v94);
  }
}

void videoprocessor_OnLowOutputQueueLevel(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 160))
  {
    v2 = *(a2 + 128);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {

      v3(v2);
    }
  }
}

void videoprocessor_frameCompleteCallback(__n128 *a1, uint64_t a2)
{
  v35 = 0;
  cf = 0;
  v33 = *MEMORY[0x1E6960C70];
  v34 = *(MEMORY[0x1E6960C70] + 16);
  CompositionStartTime = FigVCPPendingFrameGetCompositionStartTime(a1);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CompletionStatus = FigVCPPendingFrameGetCompletionStatus(a1);
  v7 = 0;
  if (CompletionStatus == -12508)
  {
    goto LABEL_2;
  }

  v9 = CompletionStatus;
  v10 = 0;
  ComposedFrame = 0;
  if (CompletionStatus)
  {
    goto LABEL_63;
  }

  FigVCPPendingFrameGetFrameTime(a1, &v33);
  ComposedFrame = FigVCPPendingFrameGetComposedFrame(a1);
  ComposedTaggedBufferGroup = FigVCPPendingFrameGetComposedTaggedBufferGroup(a1);
  if (!(ComposedFrame | ComposedTaggedBufferGroup))
  {
    v30 = 1831;
LABEL_67:
    v7 = 0;
    if (videoprocessor_frameCompleteCallback_cold_1(v30, &v37))
    {
LABEL_2:
      ComposedFrame = 0;
      goto LABEL_55;
    }

    v9 = v37.n128_u32[0];
    v10 = 0;
    ComposedFrame = 0;
    goto LABEL_63;
  }

  v12 = ComposedTaggedBufferGroup;
  if (ComposedFrame && ComposedTaggedBufferGroup)
  {
    v30 = 1832;
    goto LABEL_67;
  }

  FigVCPTallyUpdateTimingInfo(a2 + 208, CompositionStartTime, UpTimeNanoseconds);
  if (ComposedFrame)
  {
    if (FigVCPPendingFrameSkipCoreAnimationPostProcessing(a1))
    {
      v10 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
      v13 = 0;
LABEL_28:
      v18 = FigVCPOutputConformerCopyConformedPixelBuffer(*(a2 + 112), ComposedFrame, &cf);
      if (v18)
      {
LABEL_70:
        v9 = v18;
        v7 = 0;
        ComposedFrame = v13;
        goto LABEL_63;
      }

      v19 = cf;
      FigVCPPendingFrameSetRenderedFrame(a1, cf);
      if (FigVCPPendingFrameShouldGenerateHDRStats(a1))
      {
        ComposedFrame = v13;
LABEL_31:
        if (FigVCPPendingFrameIsImmediateFrame(a1))
        {
          FigVCPCompositorHostDropEarlierPendingFrames(*(a2 + 104), a1);
        }

        v20 = FigVCPOutputCalculateAndStoreHDRStats(v10, a1);
        if (!v20)
        {
          v7 = 0;
          while (1)
          {
            if (v7)
            {
              CFRelease(v7);
            }

            v21 = FigVCPCompositorHostRemoveRetainedPendingFrameForOutput(*(a2 + 104));
            v7 = v21;
            if (!v21)
            {
              break;
            }

            HDRMetadataAndAttachToRenderedFrame = FigVCPPendingFrameGenerateHDRMetadataAndAttachToRenderedFrame(v21);
            if (HDRMetadataAndAttachToRenderedFrame || (RenderedFrame = FigVCPPendingFrameGetRenderedFrame(v7)) != 0 && (v24 = RenderedFrame, FigVCPPendingFrameGetFrameTime(v7, &v37), IsImmediateFrame = FigVCPPendingFrameIsImmediateFrame(v7), HDRMetadataAndAttachToRenderedFrame = FigVCPOutputEnqueueImage(v10, v24, &v37, IsImmediateFrame), HDRMetadataAndAttachToRenderedFrame))
            {
              v9 = HDRMetadataAndAttachToRenderedFrame;
              goto LABEL_63;
            }

            FigVCPCompositorHostFinishOutputFrame(*(a2 + 104));
            if (FigVCPPendingFrameIsImmediateFrame(v7))
            {
              Order = FigVCPPendingFrameGetOrder(v7);
              videoprocessor_sendSeekCompleteNotification(a2, Order);
            }
          }

LABEL_51:
          if (!v10)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        goto LABEL_69;
      }

      if (v19)
      {
        v27 = FigVCPPendingFrameIsImmediateFrame(a1);
        v37 = v33;
        v38 = v34;
        v18 = FigVCPOutputEnqueueImage(v10, v19, &v37, v27);
        if (!v18)
        {
          ComposedFrame = v13;
          goto LABEL_48;
        }

        goto LABEL_70;
      }

      ComposedFrame = v13;
LABEL_47:
      v28 = FigVCPPendingFrameIsImmediateFrame(a1);
      v37 = v33;
      v38 = v34;
      v20 = FigVCPOutputEnqueueTaggedBufferGroup(v10, v12, &v37, v28);
      if (v20)
      {
LABEL_69:
        v9 = v20;
        v7 = 0;
        goto LABEL_63;
      }

LABEL_48:
      FigVCPCompositorHostRemovePendingFrame(*(a2 + 104), a1);
      FigVCPPendingFrameSetRenderComplete(a1);
      if (FigVCPPendingFrameIsImmediateFrame(a1))
      {
        v29 = FigVCPPendingFrameGetOrder(a1);
        videoprocessor_sendSeekCompleteNotification(a2, v29);
      }

      v7 = 0;
      goto LABEL_51;
    }

    v31 = v33;
    v32 = v34;
    v39 = 0;
    v40 = 0;
    v15 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 144));
    if (v15)
    {
      v16 = FigVCPOutputConformerCopyProperty(*(a2 + 112), @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", *MEMORY[0x1E695E480], &v40);
      if (v16)
      {
        v9 = v16;
        goto LABEL_19;
      }

      v37 = v31;
      v38 = v32;
      v17 = FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime(v15, &v37, ComposedFrame, v40, &v39);
      ComposedFrame = v39;
      if (v17)
      {
        v9 = v17;
        if (!v39)
        {
LABEL_22:
          if (v40)
          {
            CFRelease(v40);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (v9)
          {
            v7 = 0;
            v10 = 0;
            goto LABEL_63;
          }

          v10 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
          v13 = ComposedFrame;
          if (ComposedFrame)
          {
            goto LABEL_28;
          }

          goto LABEL_11;
        }

        CFRelease(v39);
LABEL_19:
        ComposedFrame = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ComposedFrame = CFRetain(ComposedFrame);
    }

    v9 = 0;
    v39 = 0;
    goto LABEL_22;
  }

  v10 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
LABEL_11:
  v14 = FigVCPOutputConformerCopyConformedTaggedBufferGroup(*(a2 + 112), v12, &v35);
  if (!v14)
  {
    v12 = v35;
    FigVCPPendingFrameSetRenderedTaggedBufferGroup(a1, v35);
    ComposedFrame = 0;
    if (FigVCPPendingFrameShouldGenerateHDRStats(a1))
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  v9 = v14;
  v7 = 0;
  ComposedFrame = 0;
LABEL_63:
  videoprocessor_reportProcessingError(a2, v9);
  if (v10)
  {
LABEL_52:
    CFRelease(v10);
  }

LABEL_53:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (ComposedFrame)
  {
    CFRelease(ComposedFrame);
  }
}

void videoprocessor_completePrerollCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_didReachEndOfOutputCallback(uint64_t a1)
{
  videoprocessor_setUpcomingImageInfo(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFTypeRef videoprocessor_loadAndRetainAtomically(uint64_t a1, CFTypeRef *a2)
{
  FigSimpleMutexLock();
  if (*a2)
  {
    v3 = CFRetain(*a2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  if (!FigVCPIsValid(a1 + 16))
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_6(&time1);
    goto LABEL_16;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_1(&time1);
    goto LABEL_16;
  }

  time1 = *a3;
  v10 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v7;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_5(&time1);
    goto LABEL_16;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_2(&time1);
    goto LABEL_16;
  }

  time1 = *a2;
  *&time2.value = v10;
  time2.epoch = v7;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_4(&time1);
    goto LABEL_16;
  }

  time1 = *a3;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_3(&time1);
LABEL_16:
    value_low = LODWORD(time1.value);
    if (!v6)
    {
      return value_low;
    }

    goto LABEL_8;
  }

  time1 = *a2;
  time2 = *a3;
  value_low = FigVCPOutputSetOutputDurationHighAndLowWaterLevels(v6, &time1, &time2);
  if (v6)
  {
LABEL_8:
    CFRelease(v6);
  }

  return value_low;
}