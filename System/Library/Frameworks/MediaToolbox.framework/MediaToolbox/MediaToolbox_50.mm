uint64_t __serverXPCPlayer_getSharedInvalidationQueue_block_invoke()
{
  qword_1ED4CAF50 = FigDispatchQueueCreateWithPriority();

  return FigWatchdogMonitorDispatchQueue();
}

uint64_t __ServedPlayerStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAF60 = result;
  return result;
}

double servedPlayerState_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__CFString *servedPlayerState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlayerState %p", a1);
  return Mutable;
}

uint64_t serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(NSObject *a1, const void *a2)
{
  if (serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_once != -1)
  {
    serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_cold_1();
  }

  FigSimpleMutexLock();
  v4 = dispatch_time(0, 130000000000);
  v5 = dispatch_time(0, 115000000000);
  FigCFArrayAppendInt64();
  FigCFArrayAppendInt64();
  if (CFArrayGetCount(sAsyncTimeoutInfo_2) == 1)
  {
    dispatch_source_set_timer(sAsyncTimeoutInfo_0, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  if (CFArrayGetCount(sAsyncTimeoutInfo_3) == 1)
  {
    dispatch_source_set_timer(sAsyncTimeoutInfo_1, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  v6 = _Block_copy(a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_block_invoke;
  block[3] = &unk_1E748ED08;
  block[4] = v6;
  dispatch_async(a1, block);
  return FigSimpleMutexUnlock();
}

void serverXPCPlayer_prepareForAsyncTimeoutsOnce()
{
  v0 = dispatch_queue_attr_make_with_overcommit();
  v1 = dispatch_queue_create("com.apple.coremedia.player.timeout", v0);
  sAsyncTimeoutInfo_4 = FigSimpleMutexCreate();
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  sAsyncTimeoutInfo_2 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  sAsyncTimeoutInfo_3 = CFArrayCreateMutable(v2, 0, v3);
  v4 = MEMORY[0x1E69E9710];
  sAsyncTimeoutInfo_0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v1);
  sAsyncTimeoutInfo_1 = dispatch_source_create(v4, 0, 0, v1);
  dispatch_source_set_event_handler(sAsyncTimeoutInfo_0, &__block_literal_global_131);
  dispatch_source_set_event_handler(sAsyncTimeoutInfo_1, &__block_literal_global_135);
  dispatch_activate(sAsyncTimeoutInfo_0);
  dispatch_activate(sAsyncTimeoutInfo_1);
  if (v1)
  {

    dispatch_release(v1);
  }
}

void __serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  CFArrayRemoveValueAtIndex(sAsyncTimeoutInfo_2, 0);
  CFArrayRemoveValueAtIndex(sAsyncTimeoutInfo_3, 0);
  if (CFArrayGetCount(sAsyncTimeoutInfo_2) < 1)
  {
    v2 = sAsyncTimeoutInfo_0;
    v3 = -1;
    v4 = 0;
  }

  else
  {
    FigCFArrayGetInt64AtIndex();
    v2 = sAsyncTimeoutInfo_0;
    v3 = 0;
    v4 = 1000000000;
  }

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, v4);
  if (CFArrayGetCount(sAsyncTimeoutInfo_3) < 1)
  {
    v5 = sAsyncTimeoutInfo_1;
    v6 = -1;
    v7 = 0;
  }

  else
  {
    FigCFArrayGetInt64AtIndex();
    v5 = sAsyncTimeoutInfo_1;
    v6 = 0;
    v7 = 1000000000;
  }

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v7);
  FigSimpleMutexUnlock();
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
}

uint64_t __ServedPlaybackItemStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAF70 = result;
  return result;
}

double servedPlaybackItemState_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__CFString *servedPlaybackItemState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlaybackItemState %p", a1);
  return Mutable;
}

uint64_t serverXPCPlayer_handlePlayerSetPropertyGuts(int a1, int a2, __CFString *a3, CFTypeRef cf, _BYTE *a5, __CFString **a6, CFTypeRef *a7)
{
  if (cf)
  {
    v11 = CFRetain(cf);
  }

  else
  {
    v11 = 0;
  }

  if (CFEqual(a3, @"Server_DisplayList"))
  {
    v12 = @"DisplayList";
  }

  else
  {
    v12 = a3;
  }

  *a5 = 0;
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *a6 = v12;
  if (v11)
  {
    *a7 = CFRetain(v11);
    CFRelease(v11);
  }

  else
  {
    *a7 = 0;
  }

  return 0;
}

void serverXPCItem_rebuildTimebaseSync(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = 0;
  FigPlaybackItemGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"Timebase", *MEMORY[0x1E695E480], &v11);
    if (v11)
    {
      v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004059E634C0uLL);
      if (v9)
      {
        serverXPCItem_rebuildTimebaseSync_cold_2(a2, v9);
      }

      else if (!serverXPCItem_rebuildTimebaseSync_cold_1())
      {
        return;
      }

      v9[24] = 1;
      FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(fps_TimebaseSynchronizationUpdate_Callback, v9, fps_destroyTimebaseSyncState, v11, *(a2 + 64), &v10);
    }
  }

  FigSimpleMutexLock();
  v6 = v11;
  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a2 + 40) = v10;
  *(a2 + 48) = v6;
  FigSimpleMutexUnlock();
  if (v8)
  {
    FigSyncMomentSourceDestroy(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t serverXPCItem_NotificationFilter(uint64_t a1, CFTypeRef cf, const void *a3, __CFDictionary *a4, __CFDictionary **a5, void *a6)
{
  if (!cf || (v12 = CFGetTypeID(cf), v12 != FigPlaybackItemGetTypeID()))
  {
    serverXPCItem_NotificationFilter_cold_2();
    return 0;
  }

  if (!a4 || (v13 = CFGetTypeID(a4), v13 != CFDictionaryGetTypeID()))
  {
LABEL_9:
    MutableCopy = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a4, @"CFError");
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFErrorGetTypeID())
    {
      v16 = FigCFCopyCFErrorAsPropertyList();
      if (v16)
      {
        v17 = v16;
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a4);
        CFDictionaryRemoveValue(MutableCopy, @"CFError");
        CFDictionarySetValue(MutableCopy, @"Server_CFError", v17);
        CFRelease(v17);
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  MutableCopy = CFRetain(a4);
LABEL_11:
  if (CFEqual(a3, @"TimebaseChanged"))
  {
    serverXPCItem_rebuildTimebaseSync(cf, a1);
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  if (CFEqual(a3, @"TimeJumped"))
  {
    if (!*(a1 + 40))
    {
      serverXPCItem_NotificationFilter_cold_1();
    }

    goto LABEL_16;
  }

  if (CFEqual(a3, @"ReadyForPlayback"))
  {
    goto LABEL_24;
  }

  if (CFEqual(a3, @"SeekDidComplete"))
  {
    serverXPCItem_addTimeSyncUpdateToMessage();
    if (v21 || FigXPCMessageSetCFDictionary())
    {
LABEL_28:
      v19 = 0;
      goto LABEL_17;
    }
  }

  else if (CFEqual(a3, @"MetadataOutputChanged"))
  {
    fps_addMetadataOutputChangedNotificationPayloadToMessage(a6, MutableCopy);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!CFEqual(a3, @"LegibleOutputChanged"))
    {
LABEL_24:
      if (MutableCopy != a4)
      {
        *a5 = MutableCopy;
        return 4;
      }

      goto LABEL_28;
    }

    if (fps_addLegibleOutputChangedNotificationPayloadToMessage())
    {
      goto LABEL_16;
    }
  }

  v19 = 2;
LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v19;
}

uint64_t serverXPCItem_getSyntheticSyncMomentL(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E6960C70];
  v11 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v12 = v3;
  if (a2)
  {
    v9 = v2;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      result = v6(a1, &v11);
      if (!result)
      {
        memset(&v10, 0, sizeof(v10));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v10, HostTimeClock);
        result = 0;
        *(a2 + 32) = v12;
        *(a2 + 56) = v10.epoch;
        *(a2 + 64) = 0x3FF0000000000000;
        *a2 = 0x200000078;
        *(a2 + 8) = 0;
        *(a2 + 16) = v11;
        *(a2 + 40) = *&v10.value;
        *(a2 + 72) = v9;
        *(a2 + 88) = v3;
        *(a2 + 112) = v3;
        *(a2 + 96) = v9;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    serverXPCItem_getSyntheticSyncMomentL_cold_1(&v10);
    return LODWORD(v10.value);
  }

  return result;
}

uint64_t fps_addSampleBuffersToMessage(void *a1, const char *a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v7 = xpc_array_create(0, 0);
  if (Count >= 1)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E69E9660];
    do
    {
      CFArrayGetValueAtIndex(theArray, v8);
      SerializedAtomDataForSampleBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
      if (SerializedAtomDataForSampleBuffer)
      {
        v14 = SerializedAtomDataForSampleBuffer;
      }

      else
      {
        v11 = dispatch_data_create(0, 0, 0, v9);
        if (!v11)
        {
          fps_addSampleBuffersToMessage_cold_2(&v16);
LABEL_13:
          v14 = v16;
          goto LABEL_7;
        }

        v12 = v11;
        v13 = xpc_data_create_with_dispatch_data(v11);
        dispatch_release(v12);
        if (!v13)
        {
          fps_addSampleBuffersToMessage_cold_1(&v16);
          goto LABEL_13;
        }

        xpc_array_append_value(v7, v13);
        xpc_release(v13);
        v14 = 0;
      }

LABEL_7:
      if (v14)
      {
        goto LABEL_15;
      }

      ++v8;
    }

    while (Count != v8);
  }

  xpc_dictionary_set_value(a1, a2, v7);
  v14 = 0;
LABEL_15:
  FigXPCRelease();
  return v14;
}

void __HandlePlayerServerNoReplyMessage_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1, uint64_t a2)
{

  return FigXPCMessageCopyCFString();
}

uint64_t FPSupport_GetAudioSessionOutputChannelCount(uint64_t a1, int *a2)
{
  cf = 0;
  valuePtr = 2;
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce == -1)
  {
    if (!a1)
    {
      return 4294948075;
    }
  }

  else
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
    if (!a1)
    {
      return 4294948075;
    }
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    return 4294948075;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
    return 4294948071;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(a1, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], &cf);
  v8 = cf;
  if (!v7)
  {
    if (cf)
    {
      FPSupport_GetAudioSessionOutputChannelCount_cold_2(cf, &valuePtr, v6, a1);
    }

    *a2 = valuePtr;
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

void FPSupport_CreateMaxSampleRateDictonary(const __CFAllocator *a1, int a2, const __CFData *a3, CFMutableDictionaryRef *a4, double a5)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDataGetTypeID()))
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (BytePtr)
    {
      v12 = CFDataGetLength(a3) / 0x38uLL;
      goto LABEL_7;
    }
  }

  else
  {
    BytePtr = 0;
  }

  v12 = 0;
LABEL_7:
  if (a5 != 0.0 && v12 == 0)
  {
    if (!a2)
    {
      valuePtr = 2;
    }

    v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v21)
    {
      v22 = v21;
      FigCFDictionarySetDouble();
      CFRelease(v22);
    }

    else
    {
      FPSupport_CreateMaxSampleRateDictonary_cold_2();
    }
  }

  else if (v12)
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = BytePtr + 28;
    do
    {
      if ((*v15 & 0x80000000) == 0)
      {
        v16 = CFNumberCreate(v14, kCFNumberSInt32Type, v15);
        if (!v16)
        {
          FPSupport_CreateMaxSampleRateDictonary_cold_1();
          break;
        }

        v17 = v16;
        v18 = *(v15 - 7);
        if (v18 == 0.0)
        {
          v18 = *(v15 + 5);
        }

        if (v18 <= a5 || a5 == 0.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = a5;
        }

        if (!FigCFDictionaryGetDoubleIfPresent() || v20 > 0.0)
        {
          FigCFDictionarySetDouble();
        }

        CFRelease(v17);
      }

      v15 += 14;
      --v12;
    }

    while (v12);
  }

  *a4 = Mutable;
}

void FPSupport_ReleasePassthroughHelper(uint64_t result, uint64_t a2)
{
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }
}

uint64_t FPSupport_GetAudioDeviceUIDFromPassthroughHelper(uint64_t a1, uint64_t a2)
{
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }

  return 0;
}

uint64_t FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(uint64_t a1, CFAllocatorRef allocator, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_2(&v20);
    return v20;
  }

  v7 = Mutable;
  v8 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_1(&v19);
    v17 = v19;
    goto LABEL_22;
  }

  if (*(a1 + 12))
  {
    v9 = 4;
    do
    {
      FigCFArrayAppendInt32();
      v10 = *(a1 + 12);
      v11 = v9 - 3;
      ++v9;
    }

    while (v11 < v10);
    if (v10 && *a1)
    {
      FigCFArrayAppendInt32();
    }
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_spatialAudioSources", v8);
  v12 = FigCFDictionarySetInt32();
  if (v12)
  {
    v17 = v12;
LABEL_22:
    CFRelease(v7);
    if (!v8)
    {
      return v17;
    }

    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 1))
  {
    v15 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_prefersLossyAudioSources", v15);
  if (*(a1 + 2))
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_alwaysSpatialize", v16);
  v17 = 0;
  *a3 = v7;
LABEL_17:
  CFRelease(v8);
  return v17;
}

uint64_t FPSupport_CreateAudioSessionSpatializationCapabilities(uint64_t a1, int a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    v14 = 2449;
    goto LABEL_21;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    FigSpatializationCapabilitiesFromSpatialAudioPreferences = FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(&unk_196E77FB0, *MEMORY[0x1E695E480], &cf);
    if (!FigSpatializationCapabilitiesFromSpatialAudioPreferences)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
      v9 = 0;
      *a3 = cf;
      return v9;
    }

    goto LABEL_14;
  }

  if (a2 != 1836019574)
  {
    if (a2 == 1936684398)
    {
      v8 = kFigAudioSessionProperty_AudioOnlySpatializationCapabilities;
      if (!a1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v14 = 2481;
LABEL_21:
    FPSupport_CreateAudioSessionSpatializationCapabilities_cold_1(v14, v16);
    v9 = v16[0];
    goto LABEL_16;
  }

  v8 = kFigAudioSessionProperty_AudiovisualSpatializationCapabilities;
  if (!a1)
  {
LABEL_15:
    v9 = 4294948075;
    goto LABEL_16;
  }

LABEL_11:
  v10 = *v8;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v11 + 8);
  if (v12)
  {
    FigSpatializationCapabilitiesFromSpatialAudioPreferences = v12(a1, v10, *MEMORY[0x1E695E480], &cf);
    if (!FigSpatializationCapabilitiesFromSpatialAudioPreferences)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = FigSpatializationCapabilitiesFromSpatialAudioPreferences;
    goto LABEL_16;
  }

  v9 = 4294948071;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

__CFString *FPSupport_GetAudioSpatializationPreferencesMonitor(uint64_t a1, uint64_t a2)
{
  if (FPSupport_GetAudioSpatializationPreferencesMonitor_onceToken != -1)
  {
    FPSupport_GetAudioSpatializationPreferencesMonitor_cold_1();
  }

  return @"AudioSpatializationPreferencesChanged";
}

void FPSupport_AudioSpatializationPreferencesChanged(uint64_t a1)
{
  if (FPSupport_AudioSpatializationPreferencesChanged_onceToken != -1)
  {
    FPSupport_AudioSpatializationPreferencesChanged_cold_1();
  }

  v2 = FPSupport_AudioSpatializationPreferencesChanged_sAudioSpatializationPreferencesChangedQueue;

  dispatch_async(v2, &__block_literal_global_45);
}

uint64_t FPSupport_AudioChannelLayoutHasVerticalHeightChannel(void *inSpecifier, UInt32 a2)
{
  p_inSpecifiera = inSpecifier;
  outPropertyData = 0;
  if (!AudioFormatGetPropertyInfo(0x7370636Cu, a2, inSpecifier, &outPropertyData) && outPropertyData == 4 && !AudioFormatGetProperty(0x7370636Cu, a2, p_inSpecifiera, &outPropertyData, &outPropertyData + 4) && HIDWORD(outPropertyData))
  {
    return (HIDWORD(outPropertyData) >> 5) & 1;
  }

  v4 = 1668116588;
  inSpecifiera = -65536;
  if (*p_inSpecifiera == 0x10000)
  {
    p_inSpecifiera += 4;
    v4 = 1668116578;
    goto LABEL_16;
  }

  if (*p_inSpecifiera)
  {
LABEL_16:
    v8 = 4;
    goto LABEL_17;
  }

  LODWORD(v5) = *(p_inSpecifiera + 8);
  if (v5)
  {
    v6 = (p_inSpecifiera + 16);
    v7 = *(p_inSpecifiera + 8);
    while (!*(v6 - 1) || (*v6 & 3) == 0)
    {
      v6 += 20;
      if (!--v7)
      {
        goto LABEL_13;
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

LABEL_13:
  ioPropertyDataSize = 4;
  if (AudioFormatGetProperty(0x636D7074u, a2, p_inSpecifiera, &ioPropertyDataSize, &inSpecifiera))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_1();
    return 0;
  }

  v8 = ioPropertyDataSize;
  p_inSpecifiera = &inSpecifiera;
LABEL_17:
  ioPropertyDataSize = 0;
  if (AudioFormatGetPropertyInfo(v4, v8, p_inSpecifiera, &ioPropertyDataSize))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_2();
    v10 = 0;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], ioPropertyDataSize);
  v10 = Mutable;
  if (!Mutable)
  {
    goto LABEL_30;
  }

  CFDataSetLength(Mutable, ioPropertyDataSize);
  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  if (AudioFormatGetProperty(v4, v8, p_inSpecifiera, &ioPropertyDataSize, MutableBytePtr))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_3();
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(v10);
  p_inSpecifiera = BytePtr;
  if (!BytePtr)
  {
    goto LABEL_33;
  }

  LODWORD(v5) = *(BytePtr + 2);
  if (!v5)
  {
LABEL_30:
    p_inSpecifiera = 0;
    if (v10)
    {
      goto LABEL_33;
    }

    return p_inSpecifiera;
  }

LABEL_22:
  v5 = v5;
  v13 = (p_inSpecifiera + 28);
  while (1)
  {
    if (!*(v13 - 4))
    {
      goto LABEL_29;
    }

    v14 = *(v13 - 3);
    if (v14)
    {
      break;
    }

    if ((v14 & 2) != 0)
    {
      v15 = *(v13 - 1);
      goto LABEL_28;
    }

LABEL_29:
    v13 += 5;
    if (!--v5)
    {
      goto LABEL_30;
    }
  }

  v15 = *v13;
LABEL_28:
  if (v15 <= 0.0)
  {
    goto LABEL_29;
  }

  p_inSpecifiera = 1;
  if (v10)
  {
LABEL_33:
    CFRelease(v10);
  }

  return p_inSpecifiera;
}

uint64_t PopulateACLWithChannelLabels(uint64_t a1, uint64_t a2)
{
  result = FigCFDictionaryGetInt32IfPresent();
  v4 = 0;
  if (!result)
  {
    v4 = -1;
  }

  v5 = *(a2 + 8);
  *(a2 + 20 * v5 + 12) = v4;
  *(a2 + 8) = v5 + 1;
  return result;
}

uint64_t FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  inSpecifier = a1;
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }

  Property = AudioFormatGetProperty(0x66696569u, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (ioPropertyDataSize)
  {
    v4 = Property == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return outPropertyData;
  }

  else
  {
    return v2;
  }
}

uint64_t __fpSupport_isAnAudioDeviceAssumedAvailable_block_invoke()
{
  v0 = getenv("coremedia_assume_audio_device_available");
  if (v0 && !strcmp(v0, "true"))
  {
    byte_1ED4CAF79 = 1;
  }

  result = FigGetCFPreferenceBooleanWithDefault();
  byte_1ED4CAF7A = result;
  return result;
}

uint64_t RegisterFigStreamingAssetDownloadCacheTranslatorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigStreamingAssetDownloadCacheTranslatorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadCacheTranslatorGetClassID_sRegisterFigStreamingAssetDownloadCacheTranslatorBaseTypeOnce, RegisterFigStreamingAssetDownloadCacheTranslatorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fsadct_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fsadct_CopyDebugDescription()
{
  v0 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"\tFigStreamingAssetDownloadCacheTranslator : ");
  if (!v0)
  {
    fsadct_CopyDebugDescription_cold_1();
  }

  return v0;
}

uint64_t fsadct_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"FSADCT_MultiVariantPlaylist"))
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v7 = 0;
    *a4 = CFRetain(*DerivedStorage);
  }

  else
  {
    v7 = *(DerivedStorage + 20);
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t fsadct_CopyPersistentStreamIDFromNetworkURL(const __CFDictionary *a1, const __CFURL *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_5(&v7);
    return v7;
  }

  if (!a1)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_4(&v7);
    return v7;
  }

  if (!a3)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_3(&v7);
    return v7;
  }

  v5 = FigCFHTTPCreateURLString(a2);
  if (!v5)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_2(&v7);
    return v7;
  }

  fsadct_CopyPersistentStreamIDFromNetworkURL_cold_1(a1, v5, a3);
  return 0;
}

uint64_t fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 32);
  if (Mutable || (v6 = CFGetAllocator(a1), Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 32) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    return 0;
  }

  else
  {
    fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry_cold_1(&v8);
    return v8;
  }
}

uint64_t fsadct_WriteMediaPlaylistAndAddToMovpkg(const void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v5, 0);
  if (!Mutable)
  {
    fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_7(&dataLength);
    return dataLength;
  }

  v7 = Mutable;
  if (a2)
  {
    v8 = a2 + 3;
    if (a2[3])
    {
      fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_6(Mutable, a2 + 3);
LABEL_5:
      v9 = 0;
      v51 = 0;
      v10 = 0;
      DiscontinuityDomain = 0;
      v12 = 0;
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*v8);
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (v12 >= MediaSegmentSpecifiers)
        {
          CFStringAppendFormat(v7, 0, @"%s\n", "#EXT-X-ENDLIST");
          goto LABEL_29;
        }

        v14 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v8);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v12);
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) > DiscontinuityDomain)
        {
          DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex);
          CFStringAppendFormat(v7, 0, @"%s\n", "#EXT-X-DISCONTINUITY");
        }

        if (FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex) && (v51 != FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex) || v10 != FigMediaSegmentSpecifierGetIV(ValueAtIndex) && (v16 = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex), FigContentKeySpecifierGetKeySystem(v16) == 2)))
        {
          ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex);
          IV = FigMediaSegmentSpecifierGetIV(ValueAtIndex);
          appended = fsadct_AppendCryptKeyToPlaylistString(v7, ContentKeySpecifier, IV);
          if (appended)
          {
            goto LABEL_44;
          }

          v10 = FigMediaSegmentSpecifierGetIV(ValueAtIndex);
          v24 = ValueAtIndex;
        }

        else
        {
          if (!FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex))
          {
            goto LABEL_18;
          }

          MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          if (v10 == FigMediaSegmentSpecifierGetIV(MapSegmentSpecifier))
          {
            goto LABEL_18;
          }

          v18 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v19 = FigMediaSegmentSpecifierGetContentKeySpecifier(v18);
          if (FigContentKeySpecifierGetKeySystem(v19) != 2)
          {
            goto LABEL_18;
          }

          v25 = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex);
          v26 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v27 = FigMediaSegmentSpecifierGetIV(v26);
          appended = fsadct_AppendCryptKeyToPlaylistString(v7, v25, v27);
          if (appended)
          {
            goto LABEL_44;
          }

          v28 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v10 = FigMediaSegmentSpecifierGetIV(v28);
          v24 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
        }

        v51 = FigMediaSegmentSpecifierGetContentKeySpecifier(v24);
LABEL_18:
        if (v9 != FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex))
        {
          v20 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          appended = fsadct_AppendSegmentToPlaylistString(a1, a2, v7, v20, 1);
          if (appended)
          {
            goto LABEL_44;
          }

          v9 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
        }

        appended = fsadct_AppendSegmentToPlaylistString(a1, a2, v7, ValueAtIndex, 0);
        ++v12;
        if (appended)
        {
LABEL_44:
          v42 = appended;
          goto LABEL_42;
        }
      }
    }

    if (fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_1(&dataLength))
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

  fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_2(&dataLength);
  if ((v49 & 1) == 0)
  {
LABEL_29:
    blockBufferOut = 0;
    dataLength = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v30 = CFGetAllocator(a1);
    v31 = CMBlockBufferCreateEmpty(v30, 0, 0, &blockBufferOut);
    if (!v31)
    {
      CFGetAllocator(a1);
      BytesFromCFString = FigCreateBytesFromCFString();
      if (!BytesFromCFString)
      {
        fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_5(&v54);
        goto LABEL_53;
      }

      v33 = BytesFromCFString;
      v34 = blockBufferOut;
      v35 = dataLength;
      v36 = CFGetAllocator(a1);
      v31 = CMBlockBufferAppendMemoryBlock(v34, v33, v35, v36, 0, 0, dataLength, 0);
      if (!v31)
      {
        v37 = *a2;
        v38 = a2[2];
        v39 = blockBufferOut;
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v40)
        {
          v42 = 4294954514;
          goto LABEL_40;
        }

        v41 = v40(v37, @"OfflineAvailableMedia", v38, v39);
        v42 = v41;
        if (a3 || v41)
        {
LABEL_40:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          goto LABEL_42;
        }

        v43 = CFGetAllocator(a1);
        v44 = CFURLCreateCopyAppendingPathComponent(v43, *(DerivedStorage + 8), a2[1], 1u);
        if (v44)
        {
          v45 = v44;
          v46 = CFGetAllocator(a1);
          v47 = CFURLCreateCopyAppendingPathComponent(v46, v45, a2[2], 0);
          v42 = 0;
          *DerivedStorage = v47;
          if (!v47)
          {
            fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_3(&v54);
            v42 = v54;
          }

          CFRelease(v45);
          goto LABEL_40;
        }

        fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_4(&v54);
LABEL_53:
        v42 = v54;
        goto LABEL_40;
      }
    }

    v42 = v31;
    goto LABEL_40;
  }

LABEL_50:
  v42 = dataLength;
LABEL_42:
  CFRelease(v7);
  return v42;
}

void fsadct_DestroyMediaPlaylistWriterHelper(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction(int a1, CFTypeRef cf, uint64_t a3)
{
  v4 = *a3;
  if (!*a3)
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_5(&v13);
    goto LABEL_12;
  }

  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_4(&v13);
LABEL_12:
    v12 = v13;
LABEL_16:
    *(a3 + 8) = v12;
    return;
  }

  v13 = 0;
  Value = CFDictionaryGetValue(cf, @"URL");
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_3(&v14);
LABEL_15:
    v12 = v14;
    goto LABEL_16;
  }

  v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%lld", Value, v13);
  if (!v8)
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_2(&v14);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = CFDictionaryGetValue(cf, @"PATH");
  if (v10)
  {
    CFDictionarySetValue(v4, v9, v10);
    v11 = 0;
  }

  else
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_1(&v14);
    v11 = v14;
  }

  *(a3 + 8) = v11;
  CFRelease(v9);
}

uint64_t fsadct_AppendSegmentToPlaylistString(const void *a1, uint64_t a2, __CFString *a3, uint64_t a4, int a5)
{
  if (!a3)
  {
    fsadct_AppendSegmentToPlaylistString_cold_5(&URLString);
    return URLString;
  }

  if (!a4)
  {
    fsadct_AppendSegmentToPlaylistString_cold_4(&URLString);
    return URLString;
  }

  if (!a2)
  {
    fsadct_AppendSegmentToPlaylistString_cold_3(&URLString);
    return URLString;
  }

  v9 = CFGetAllocator(a1);
  URLString = 0;
  if (FigMediaSegmentSpecifierGetStartOffset(a4))
  {
    StartOffset = FigMediaSegmentSpecifierGetStartOffset(a4);
  }

  else
  {
    StartOffset = 0;
  }

  FigHLSPersistentStreamInfoGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v14 = v13(v12, @"StreamInfoMediaPlaylistNetworkURL", 0, &URLString);
    if (v14)
    {
      v24 = v14;
      v23 = 0;
      v21 = 0;
      v20 = 0;
    }

    else
    {
      v15 = CFURLCreateWithString(v9, URLString, 0);
      if (v15)
      {
        v16 = v15;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v18 = FigMediaSegmentSpecifierGetURLString(a4);
        v19 = CFURLCreateWithString(AllocatorForMedia, v18, v16);
        v20 = v19;
        if (v19)
        {
          v21 = FigCFHTTPCreateURLString(v19);
          if (v21)
          {
            v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%lld", v21, StartOffset);
            if (v22)
            {
              v23 = v22;
              v24 = 0;
LABEL_14:
              CFRelease(v16);
              goto LABEL_16;
            }
          }
        }

        else
        {
          v21 = 0;
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v34);
        v24 = v30;
        v23 = 0;
        goto LABEL_14;
      }

      fsadct_AppendSegmentToPlaylistString_cold_1(&v36);
      v23 = 0;
      v21 = 0;
      v20 = 0;
      v24 = v36;
    }
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v20 = 0;
    v24 = 4294954514;
  }

LABEL_16:
  if (URLString)
  {
    CFRelease(URLString);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (!v24)
  {
    Value = CFDictionaryGetValue(*(a2 + 32), v23);
    if (!Value)
    {
      fsadct_AppendSegmentToPlaylistString_cold_2(&URLString);
      v24 = URLString;
      if (!v23)
      {
        return v24;
      }

      goto LABEL_31;
    }

    v26 = Value;
    if (a5)
    {
      CFStringAppendFormat(a3, 0, @"%s:%s=%@\n", "#EXT-X-MAP", "URI", Value);
    }

    else
    {
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a4);
      CFStringAppendFormat(a3, 0, @"%s:%f,\n", "#EXTINF", *&TimeInSeconds);
      if (FigMediaSegmentSpecifierGetBitRate(a4) > 0.0)
      {
        BitRate = FigMediaSegmentSpecifierGetBitRate(a4);
        CFStringAppendFormat(a3, 0, @"%s:%llu\n", "#EXT-X-BITRATE", BitRate);
      }

      CFStringAppendFormat(a3, 0, @"%@\n", v26, v33, v34);
    }

    v24 = 0;
  }

  if (v23)
  {
LABEL_31:
    CFRelease(v23);
  }

  return v24;
}

void OUTLINED_FUNCTION_7_60(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  CFDictionaryApplyFunction(a1, fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction, va);
}

uint64_t OUTLINED_FUNCTION_10_42(void *value)
{

  return CFSetContainsValue(v1, value);
}

uint64_t OUTLINED_FUNCTION_11_45(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CFMutableArrayRef *a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a12, const void **a13, CFMutableDictionaryRef *a14)
{

  return FigStreamPlaylistParse(a1, v14, 0, a4, 0, 0, 1, a8, a9, a10, a11, a12, a13, a14);
}

double OUTLINED_FUNCTION_13_33(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  v26 = *(v24 - 104);

  return fsadct_MakeMediaPlaylistWriterHelper(a1, v23, v22, v26, va);
}

void fcrReleaseAndClearMediaAccessibilityParams(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  *(a1 + 128) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  memset_pattern16((a1 + 64), &xmmword_196E76490, 0x40uLL);
  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  *(a1 + 168) = 0xBFF0000000000000;
  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 152) = 0;
  }

  *(a1 + 176) = 0xBFF0000000000000;
  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 160) = 0;
  }

  v6 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x4044000000000000;
  v12 = a1 + 208;
  do
  {
    v13 = *(v12 + v6);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + v6) = 0;
    }

    v6 += 8;
  }

  while (v6 != 64);
  v14 = *(a1 + 288);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 288) = 0;
  }
}

void fcrCopyMediaAccessibilityParams(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v9;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  v10 = *(a2 + 144);
  v11 = *(a1 + 144);
  *(a2 + 144) = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  *(a2 + 168) = *(a1 + 168);
  v12 = *(a2 + 152);
  v13 = *(a1 + 152);
  *(a2 + 152) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *(a2 + 176) = *(a1 + 176);
  v14 = *(a2 + 160);
  v15 = *(a1 + 160);
  *(a2 + 160) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = 0;
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 272) = *(a1 + 272);
  v17 = a2 + 208;
  do
  {
    v18 = *(v17 + v16);
    v19 = *(a1 + 208 + v16);
    *(v17 + v16) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v16 += 8;
  }

  while (v16 != 64);
  v20 = *(a2 + 288);
  v21 = *(a1 + 288);
  *(a2 + 288) = v21;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {

    CFRelease(v20);
  }
}

void mediaAccessibilityDidChangeDoAsync(void *a1)
{
  v2 = *a1;
  memset(behavior, 0, 296);
  v3 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, behavior);
  behavior[18] = v3;
  if (v3)
  {
    CGColorGetComponents(v3);
  }

  v4 = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &behavior[1]);
  behavior[19] = v4;
  if (v4)
  {
    CGColorGetComponents(v4);
  }

  v5 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &behavior[2]);
  behavior[20] = v5;
  if (v5)
  {
    CGColorGetComponents(v5);
  }

  behavior[21] = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, &behavior[3]);
  behavior[22] = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &behavior[4]);
  behavior[23] = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &behavior[5]);
  behavior[24] = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, &behavior[6]);
  v6 = kMACaptionAppearanceFontStyleDefault;
  behavior[25] = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &behavior[7]);
  v7 = &behavior[8];
  do
  {
    behavior[v6 + 26] = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, v7, v6);
    ++v6;
    ++v7;
  }

  while (v6 != 8);
  behavior[34] = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &behavior[16]);
  active = MACaptionAppearancePrefCopyActiveProfileID();
  behavior[36] = MACaptionAppearancePrefCopyProfileName();
  if (active)
  {
    CFRelease(active);
  }

  fcrCopyMediaAccessibilityParams(behavior, (v2 + 4));
  if (v2[3])
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      v11 = v2[3];
      memcpy(__dst, behavior, sizeof(__dst));
      v11(v10, __dst);
      CFRelease(v10);
    }
  }

  fcrReleaseAndClearMediaAccessibilityParams(behavior);
  CFRelease(v2);
  free(a1);
}

uint64_t FigCaptionRendererMACacheCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererMACacheLocalGetTypeID_sRegisterFigCaptionRendererMACacheOnce, RegisterFigCaptionRendererMACacheClass);
  Instance = _CFRuntimeCreateInstance();
  fcrReleaseAndClearMediaAccessibilityParams((Instance + 4));
  snprintf(__str, 0x100uLL, "com.apple.coremedia.FigCaptionRendererMACache.msgQueue<%p>", Instance);
  v7 = dispatch_queue_create(__str, 0);
  Instance[42] = v7;
  if (!v7)
  {
    v11 = 4294950095;
LABEL_7:
    CFRelease(Instance);
    return v11;
  }

  if (a1)
  {
    if (a2)
    {
      Instance[3] = a1;
      v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      Instance[2] = v8;
      if (!v8)
      {
        FigCaptionRendererMACacheCreate_cold_1(__str);
        v11 = *__str;
        goto LABEL_7;
      }
    }
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v10);
  FigNotificationCenterAddWeakListener();
  v11 = 0;
  *a3 = Instance;
  return v11;
}

uint64_t RegisterFigCaptionRendererMACacheClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererMACacheID = result;
  return result;
}

double FigCaptionRendererMACacheInit(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigCaptionRendererMACache_Finalize(uint64_t a1)
{
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v3);
  FigNotificationCenterRemoveWeakListener();
  v4 = *(a1 + 336);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 336) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  fcrReleaseAndClearMediaAccessibilityParams(a1 + 32);
}

__CFString *FigCaptionRendererMACacheCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererMACache %p>", a1);
  return Mutable;
}

void *OUTLINED_FUNCTION_1_117()
{

  return malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
}

uint64_t FigAudioFileFormatWriterCanFileTypeSupportFormatDescription(uint64_t a1, CMFormatDescriptionRef desc)
{
  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    return 0;
  }

  outDataSize = 0;
  *v13 = 0;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (!StreamBasicDescription || (v5 = StreamBasicDescription, v13[1] = StreamBasicDescription->mFormatID, faf_audioFileTypeIDForFigFileType(a1, v13)))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (!AudioFileGetGlobalInfoSize(0x73646964u, 8u, v13, &outDataSize) && outDataSize >= 0x28)
    {
      v6 = malloc_type_malloc(outDataSize, 0x10000400A747E1EuLL);
      if (!v6 || AudioFileGetGlobalInfo(0x73646964u, 8u, v13, &outDataSize, v6) || outDataSize < 0x28)
      {
LABEL_40:
        v7 = 0;
        goto LABEL_41;
      }

      v8 = outDataSize / 0x28uLL;
      v9 = v6 + 8;
      mFormatID = v5->mFormatID;
      v11 = mFormatID - 1633772392;
      while (1)
      {
        if (mFormatID != *(v9 - 6))
        {
          goto LABEL_39;
        }

        if (mFormatID <= 1633772391)
        {
          if (mFormatID <= 1296122674)
          {
            if ((mFormatID - 778924081) >= 3 && mFormatID != 1096107074)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID <= 1363430705)
          {
            if (mFormatID != 1296122675 && mFormatID != 1296122678)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID != 1363430706 && mFormatID != 1363430723 && mFormatID != 1365470320)
          {
            goto LABEL_37;
          }
        }

        else if (mFormatID > 1634492770)
        {
          if (mFormatID <= 1768710754)
          {
            if (mFormatID != 1634492771 && mFormatID != 1634492791)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID != 1768710755 && mFormatID != 1768775988 && mFormatID != 1970037111)
          {
            goto LABEL_37;
          }
        }

        else if ((v11 > 0xB || ((1 << v11) & 0x911) == 0) && mFormatID != 1633889587 && mFormatID != 1634038579)
        {
LABEL_37:
          if (v5->mFormatFlags != *(v9 - 5))
          {
            goto LABEL_39;
          }
        }

        if (v5->mBitsPerChannel == *v9)
        {
          v7 = 1;
          break;
        }

LABEL_39:
        v9 += 10;
        if (!--v8)
        {
          goto LABEL_40;
        }
      }
    }
  }

LABEL_41:
  free(v6);
  return v7;
}

void FigAudioFileFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v5 = 1667327590;
  cf = 0;
  v25 = 1667327590;
  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v17 = v4;
    v18 = 1452;
LABEL_15:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", v18, v17);
    return;
  }

  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v17 = v4;
    v18 = 1455;
    goto LABEL_15;
  }

  v8 = theDict;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FileFormat");
    v11 = CFDictionaryGetValue(v8, @"AudioPrimingFormat");
    if (faf_audioFileTypeIDForFigFileType(Value, &v25))
    {
      return;
    }

    v12 = FigCFEqual();
    v13 = v25;
    if (v25 != 1667327590 || v12 == 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = @"AudioPrimingFormat_iTunesGaplessInfo";
    }

    if (v15)
    {
      LOBYTE(v8) = CFEqual(v15, @"AudioPrimingFormat_iTunesGaplessInfo") != 0;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v5 = v13;
  }

  FigFormatWriterGetClassID();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v20 = CFRetain(a2);
    Mutable = CFArrayCreateMutable(a1, 0, 0);
    if (Mutable)
    {
      *(DerivedStorage + 128) = v8;
      *(DerivedStorage + 40) = Mutable;
      *(DerivedStorage + 48) = v5;
      v22 = MEMORY[0x1E6960C70];
      v23 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 96) = *MEMORY[0x1E6960C70];
      v24 = *(v22 + 16);
      *(DerivedStorage + 112) = v24;
      *(DerivedStorage + 72) = v23;
      *(DerivedStorage + 88) = v24;
      *(DerivedStorage + 16) = a1;
      *(DerivedStorage + 24) = v20;
      if (a1)
      {
        CFRetain(a1);
      }

      *(DerivedStorage + 8) = FigReentrantMutexCreate();
      *a4 = cf;
    }

    else
    {
      if (v20)
      {
        CFRelease(v20);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t faf_audioFileTypeIDForFigFileType(uint64_t result, int *a2)
{
  v2 = 1667327590;
  *a2 = 1667327590;
  if (result)
  {
    v4 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      if (CFEqual(v4, @"CAFAudioFile"))
      {
        result = 0;
      }

      else if (CFEqual(v4, @"WAVEAudioFile"))
      {
        result = 0;
        v2 = 1380333108;
      }

      else if (CFEqual(v4, @"AIFFAudioFile"))
      {
        result = 0;
        v2 = 1095321155;
      }

      else
      {
        v6 = CFEqual(v4, @"AMRAudioFile");
        if (v6)
        {
          v2 = 1634562662;
        }

        else
        {
          v2 = 0;
        }

        if (v6)
        {
          result = 0;
        }

        else
        {
          result = 4294954516;
        }
      }

      *a2 = v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t figAudioFileWriter_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v2)
  {
    *v2 = 1;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (*(v2 + 56))
  {
    v3 = *(v2 + 40);
    if (v3 && CFArrayGetCount(v3))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 40), 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    outPropertyData = 0;
    v29 = 0;
    v25 = 0;
    valuePtr = 0;
    v23 = 0;
    if (!*(v2 + 120))
    {
      goto LABEL_42;
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(*(v2 + 120)))
    {
      goto LABEL_42;
    }

    Value = CFDictionaryGetValue(*(v2 + 120), @"EncodingDelayInFrame");
    v7 = CFDictionaryGetValue(*(v2 + 120), @"EncodingDrainInFrames");
    v8 = CFDictionaryGetValue(*(v2 + 120), @"DurationInFrames");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt32Type, &v25);
    }

    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberSInt64Type, &v23);
      outPropertyData = v23;
      v29 = __PAIR64__(v25, valuePtr);
    }

    else
    {
LABEL_42:
      if (!ValueAtIndex || !ValueAtIndex[3] && !ValueAtIndex[5] || (ioDataSize = 16, AudioFileGetProperty(*(v2 + 56), 0x706E666Fu, &ioDataSize, &outPropertyData)))
      {
LABEL_25:
        AudioFileClose(*(v2 + 56));
        *(v2 + 56) = 0;
        goto LABEL_26;
      }

      v9 = ValueAtIndex[3];
      v10 = ValueAtIndex[5];
      outPropertyData = outPropertyData + v29 + SHIDWORD(v29) - (v9 + v10);
      v29 = __PAIR64__(v10, v9);
    }

    ioDataSize = 16;
    v11 = AudioFileSetProperty(*(v2 + 56), 0x706E666Fu, 0x10u, &outPropertyData);
    if (v11 && v11 != 1886681407)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    }

    goto LABEL_25;
  }

LABEL_26:
  *v2 = 1;
  FigSimpleMutexUnlock();
  v12 = *(v2 + 24);
  if (v12)
  {
    CFRelease(v12);
    *(v2 + 24) = 0;
  }

  v13 = *(v2 + 40);
  if (v13)
  {
    Count = CFArrayGetCount(v13);
    if (Count >= 1)
    {
      v15 = Count;
      for (i = 0; i != v15; ++i)
      {
        v17 = CFArrayGetValueAtIndex(*(v2 + 40), i);
        v18 = v17[1];
        if (v18)
        {
          CFRelease(v18);
        }

        free(v17);
      }
    }

    CFRelease(*(v2 + 40));
    *(v2 + 40) = 0;
  }

  v19 = *(v2 + 16);
  if (v19)
  {
    CFRelease(v19);
    *(v2 + 16) = 0;
  }

  v20 = *(v2 + 120);
  if (v20)
  {
    CFRelease(v20);
    *(v2 + 120) = 0;
  }

  return 0;
}

uint64_t figAudioFileWriter_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = figAudioFileWriter_Invalidate(a1);
  if (DerivedStorage)
  {
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = FigSimpleMutexDestroy();
      *(DerivedStorage + 8) = 0;
    }
  }

  return result;
}

__CFString *figAudioFileWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigAudioFileWriter %p>: ByteStream: %@  FileFormat: %.4s", a1, DerivedStorage, DerivedStorage + 48);
  return Mutable;
}

uint64_t figAudioFileWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    figAudioFileWriter_CopyProperty_cold_1(&v13);
    value_low = LODWORD(v13.value);
  }

  else if (CFEqual(@"LongestMediaDecodeDuration", a2))
  {
    v13 = **&MEMORY[0x1E6960C70];
    if (CFArrayGetCount(*(DerivedStorage + 40)))
    {
      decodeDurationForTrack(a1, &v13);
      value_low = v9;
      if (v9)
      {
        figAudioFileWriter_CopyProperty_cold_2();
      }

      else
      {
        v12 = v13;
        *a4 = CMTimeCopyAsDictionary(&v12, a3);
      }
    }

    else
    {
      figAudioFileWriter_CopyProperty_cold_3(&v12);
      value_low = LODWORD(v12.value);
    }
  }

  else
  {
    value_low = 4294954666;
  }

  FigSimpleMutexUnlock();
  return value_low;
}

void figAudioFileWriter_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v7 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"iTunesGaplessInfo", a2))
    {
      if (!a3 || (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(a3)))
      {
        v10 = *(v7 + 15);
        if (v10)
        {
          CFRelease(v10);
          *(v7 + 15) = 0;
        }

        if (a3)
        {
          *(v7 + 15) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", 717, v3);
  }
}

double decodeDurationForTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  idx = 0;
  if (!*(DerivedStorage + 64))
  {
    v14 = MEMORY[0x1E6960CC0];
    v9 = *MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    epoch = *(v14 + 16);
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, 1, &idx);
  ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 40), idx);
  if (ValueAtIndex && (v7 = *(ValueAtIndex + 1)) != 0)
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v7);
    if (StreamBasicDescription && StreamBasicDescription->mSampleRate > 0.0)
    {
      CMTimeMake(&v16, *(v5 + 64) * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
      *&v9 = v16.value;
      *a2 = *&v16.value;
      epoch = v16.epoch;
LABEL_9:
      *(a2 + 16) = epoch;
      return *&v9;
    }

    emitter = fig_log_get_emitter();
    v12 = v2;
    v13 = 1607;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v12 = v2;
    v13 = 1603;
  }

  *&v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954513, "<<<< AudioFileFormatWriter >>>>", v13, v12);
  return *&v9;
}

void figAudioFileWriter_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 777;
    goto LABEL_9;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 780;
    goto LABEL_9;
  }

  if (a2 != 1936684398)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 783;
    goto LABEL_9;
  }

  v9 = DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 40));
  if (Count >= 1)
  {
    emitter = fig_log_get_emitter();
    v12 = v4;
    v13 = 788;
LABEL_9:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", v13, v12);
    return;
  }

  v14 = Count;
  v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040C7CCF50CuLL);
  if (v15)
  {
    *v15 = 1936684398;
    v15[7] = v14;
    CFArrayAppendValue(*(v9 + 40), v15);
    *a4 = v14 + 1;
  }
}

uint64_t figAudioFileWriter_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, __CFArray **a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = DerivedStorage;
    idx = 0;
    getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, a2, &idx);
    if (v11)
    {
      v15 = v11;
      figAudioFileWriter_CopyTrackProperty_cold_1();
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 40), idx);
      if (CFEqual(@"FormatDescriptionArray", a3))
      {
        Mutable = CFArrayCreateMutable(a4, 1, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v14 = Mutable;
          CFArrayAppendValue(Mutable, ValueAtIndex[1]);
          v15 = 0;
          *a5 = v14;
        }

        else
        {
          figAudioFileWriter_CopyTrackProperty_cold_2(&v18);
          return v18;
        }
      }

      else
      {
        return 4294954666;
      }
    }
  }

  else
  {
    figAudioFileWriter_CopyTrackProperty_cold_3(&idx);
    return idx;
  }

  return v15;
}

uint64_t figAudioFileWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    figAudioFileWriter_SetTrackProperty_cold_8(&sizeOut);
    return sizeOut;
  }

  v8 = DerivedStorage;
  idx = 0;
  getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, a2, &idx);
  if (v9)
  {
    v18 = v9;
    figAudioFileWriter_SetTrackProperty_cold_1();
    return v18;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 40), idx);
  if (!CFEqual(@"ReplacementFormatDescriptionArray", a3))
  {
    return 4294954666;
  }

  if (!a4 || (v11 = CFGetTypeID(a4), v11 != CFArrayGetTypeID()))
  {
    figAudioFileWriter_SetTrackProperty_cold_7(&sizeOut);
    return sizeOut;
  }

  if (CFArrayGetCount(a4) != 1)
  {
    figAudioFileWriter_SetTrackProperty_cold_2(&sizeOut);
    return sizeOut;
  }

  v12 = CFArrayGetValueAtIndex(a4, 0);
  equalityMaskOut = 0;
  if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CMFormatDescriptionGetTypeID()))
  {
    figAudioFileWriter_SetTrackProperty_cold_6(&sizeOut);
    return sizeOut;
  }

  if (CMFormatDescriptionGetMediaType(v13) != 1936684398)
  {
    figAudioFileWriter_SetTrackProperty_cold_3(&sizeOut);
    return sizeOut;
  }

  if (!CMAudioFormatDescriptionEqual(v13, ValueAtIndex[1], 0xFu, &equalityMaskOut))
  {
    v15 = equalityMaskOut;
    if (equalityMaskOut)
    {
      if ((equalityMaskOut & 4) == 0)
      {
        faf_setAudioChannelLayout(v8, v13, 1);
        v15 = equalityMaskOut;
      }

      if ((v15 & 2) == 0)
      {
        sizeOut = 0;
        MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v13, &sizeOut);
        v17 = AudioFileSetProperty(*(v8 + 56), 0x6D676963u, sizeOut, MagicCookie);
        if (v17)
        {
          figAudioFileWriter_SetTrackProperty_cold_4(v17, &v23);
          return v23;
        }
      }

      return 0;
    }

    figAudioFileWriter_SetTrackProperty_cold_5(&sizeOut);
    return sizeOut;
  }

  return 0;
}

void figAudioFileWriter_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ioNumPackets = 0;
  lengthAtOffsetOut = 0;
  packetDescriptionsSizeOut = 0;
  totalLengthOut = 0;
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    packetDescriptionsPointerOut = 0;
    timingArrayEntriesNeededOut = 0;
    dataPointerOut = 0;
    FigSimpleMutexLock();
    if (*v7)
    {
      figAudioFileWriter_AddSampleBufferToTrack_cold_1();
    }

    else if (a3)
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
      if (SampleTimingInfoArray != -12736)
      {
        value = SampleTimingInfoArray;
        if (!SampleTimingInfoArray)
        {
          if ((v7[108] & 1) == 0)
          {
            v10 = MEMORY[0x1E6960C88];
            *(v7 + 72) = *MEMORY[0x1E6960C88];
            *(v7 + 11) = *(v10 + 16);
            CMSampleBufferGetOutputPresentationTimeStamp(&v73, a3);
            *(v7 + 4) = v73;
          }

          FormatDescription = CMSampleBufferGetFormatDescription(a3);
          v12 = CMGetAttachment(a3, *MEMORY[0x1E69604B0], 0);
          v13 = *MEMORY[0x1E695E4D0];
          if (v12 != *MEMORY[0x1E695E4D0])
          {
            v12 = CMGetAttachment(a3, *MEMORY[0x1E69604F8], 0);
          }

          if (v12 != v13)
          {
            if (v7[129])
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outAudioFile, v56, v57);
              if (v14)
              {
                goto LABEL_98;
              }
            }

            idx = 0;
            getTrackInfoArrayIndexFromFigTrackID(v7, a2, &idx);
            if (v15)
            {
              value = v15;
              figAudioFileWriter_AddSampleBufferToTrack_cold_2();
              goto LABEL_88;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 5), idx);
            v17 = ValueAtIndex;
            if (*(v7 + 7))
            {
              if (!CMAudioFormatDescriptionEqual(FormatDescription, ValueAtIndex[1], 7u, 0))
              {
                figAudioFileWriter_AddSampleBufferToTrack_cold_14(&v73);
LABEL_26:
                value = v73.value;
                goto LABEL_88;
              }
            }

            else
            {
              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
              *&v57 = CMAudioFormatDescriptionGetMostCompatibleFormat(FormatDescription);
              v73.value = 0;
              MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v73);
              if (AudioFileInitializeWithCallbacks(v7, afReadProc, afWriteProc, afGetSizeProc, afSetSizeProc, *(v7 + 12), StreamBasicDescription, 0, v7 + 7) && (*(v7 + 12) != 1095321158 || (*(v7 + 12) = 1095321155, AudioFileInitializeWithCallbacks(v7, afReadProc, afWriteProc, afGetSizeProc, afSetSizeProc, 0x41494643u, StreamBasicDescription, 0, v7 + 7))) || (v17[1] = FormatDescription, CFRetain(FormatDescription), MagicCookie) && (v73.value - 1) <= 0xFFFFFFFE && AudioFileSetProperty(*(v7 + 7), 0x6D676963u, v73.value, MagicCookie))
              {
                fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outAudioFile, v56, v57);
                value = v21;
                if (v21)
                {
                  figAudioFileWriter_AddSampleBufferToTrack_cold_3();
                  goto LABEL_88;
                }
              }

              else
              {
                faf_setAudioChannelLayout(v7, FormatDescription, 0);
                *(v17 + 4) = *v57;
              }
            }

            v22 = faf_canProcessTrim(FormatDescription);
            v23 = v22;
            if (!v7[128] || v22)
            {
LABEL_49:
              AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a3, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
              if (AudioStreamPacketDescriptionsPtr)
              {
                value = AudioStreamPacketDescriptionsPtr;
                figAudioFileWriter_AddSampleBufferToTrack_cold_4();
                goto LABEL_88;
              }

              NumSamples = CMSampleBufferGetNumSamples(a3);
              if (!HIDWORD(NumSamples))
              {
                v30 = NumSamples;
                ioNumPackets = NumSamples;
                DataBuffer = CMSampleBufferGetDataBuffer(a3);
                if (DataBuffer)
                {
                  v32 = DataBuffer;
                  CFRetain(DataBuffer);
                  if (!v23)
                  {
LABEL_53:
                    DataPointer = CMBlockBufferGetDataPointer(v32, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
                    if (DataPointer)
                    {
                      value = DataPointer;
                      figAudioFileWriter_AddSampleBufferToTrack_cold_6();
                      goto LABEL_62;
                    }

                    if (lengthAtOffsetOut == totalLengthOut)
                    {
                      goto LABEL_59;
                    }

                    v73.value = 0;
                    Contiguous = CMBlockBufferCreateContiguous(*(v7 + 2), v32, *(v7 + 2), 0, 0, totalLengthOut, 0, &v73);
                    if (Contiguous)
                    {
                      figAudioFileWriter_AddSampleBufferToTrack_cold_7(Contiguous, &blockBufferOut);
                      value = blockBufferOut.value;
                      goto LABEL_62;
                    }

                    if (v32)
                    {
                      CFRelease(v32);
                    }

                    v32 = v73.value;
                    v73.value = 0;
                    v35 = CMBlockBufferGetDataPointer(v32, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
                    if (v35)
                    {
                      value = v35;
                      figAudioFileWriter_AddSampleBufferToTrack_cold_8();
                    }

                    else
                    {
LABEL_59:
                      DataLength = CMBlockBufferGetDataLength(v32);
                      if (HIDWORD(DataLength))
                      {
                        figAudioFileWriter_AddSampleBufferToTrack_cold_10(&v73);
                        value = v73.value;
                      }

                      else
                      {
                        value = AudioFileWritePackets(*(v7 + 7), 0, DataLength, packetDescriptionsPointerOut, *(v7 + 8), &ioNumPackets, dataPointerOut);
                        if (value)
                        {
                          figAudioFileWriter_AddSampleBufferToTrack_cold_9();
                        }

                        else
                        {
                          *(v7 + 8) += ioNumPackets;
                        }
                      }
                    }

LABEL_62:
                    FigSimpleMutexUnlock();
                    if (!v32)
                    {
                      goto LABEL_89;
                    }

                    goto LABEL_63;
                  }

                  v37 = CMBlockBufferGetDataLength(v32);
                  v73 = **&MEMORY[0x1E6960CC0];
                  blockBufferOut = v73;
                  v38 = CMSampleBufferGetFormatDescription(a3);
                  if (faf_canProcessTrim(v38))
                  {
                    v39 = CMAudioFormatDescriptionGetStreamBasicDescription(v38);
                    if (v39)
                    {
                      v40 = v39;
                      v56 = v37;
                      TrimsOfSampleBuffer = faf_getTrimsOfSampleBuffer(a3, &v73, &blockBufferOut);
                      if (TrimsOfSampleBuffer)
                      {
                        value = TrimsOfSampleBuffer;
LABEL_112:
                        fig_log_get_emitter();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outAudioFile, v56, v57);
                        goto LABEL_84;
                      }

                      if ((v73.flags & 0x1D) == 1)
                      {
                        time = v73;
                        *&v57 = (CMTimeGetSeconds(&time) * v40->mSampleRate + 0.5);
                        v42 = v57 * v40->mBytesPerFrame;
                      }

                      else
                      {
                        v42 = 0;
                        *&v57 = 0;
                      }

                      if ((blockBufferOut.flags & 0x1D) == 1)
                      {
                        time = blockBufferOut;
                        v45 = (CMTimeGetSeconds(&time) * v40->mSampleRate + 0.5);
                        v46 = v45 * v40->mBytesPerFrame;
                      }

                      else
                      {
                        v46 = 0;
                        v45 = 0;
                      }

                      v47 = CMSampleBufferGetNumSamples(a3);
                      v48 = CMSampleBufferGetDataBuffer(a3);
                      if (v48)
                      {
                        v49 = CMBlockBufferGetDataLength(v48);
                        v50 = v49 - (v46 + v42);
                        if (v49 <= v46 + v42 || v45 + v57 >= v47)
                        {
                          value = 0;
                        }

                        else
                        {
                          if (v50 == v56)
                          {
                            goto LABEL_53;
                          }

                          blockBufferOut.value = 0;
                          v51 = CMBlockBufferCreateWithBufferReference(*(v7 + 2), v32, v42, v50, 0, &blockBufferOut);
                          if (!v51)
                          {
                            CFRelease(v32);
                            v32 = blockBufferOut.value;
                            ioNumPackets = v30 - (v45 + v57);
                            goto LABEL_53;
                          }

                          value = v51;
                          figAudioFileWriter_AddSampleBufferToTrack_cold_5();
                        }

LABEL_84:
                        FigSimpleMutexUnlock();
LABEL_63:
                        CFRelease(v32);
                        goto LABEL_89;
                      }
                    }
                  }

                  fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outAudioFile, v56, v57);
                  value = v54;
                  if (!v54)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_112;
                }

                figAudioFileWriter_AddSampleBufferToTrack_cold_11();
                goto LABEL_87;
              }

              figAudioFileWriter_AddSampleBufferToTrack_cold_12(&v73);
              goto LABEL_26;
            }

            *&v73.value = *MEMORY[0x1E6960CC0];
            v24 = *(MEMORY[0x1E6960CC0] + 16);
            v73.epoch = v24;
            v57 = *&v73.value;
            *&blockBufferOut.value = *&v73.value;
            blockBufferOut.epoch = v24;
            time = **&MEMORY[0x1E6960C70];
            v14 = faf_getTrimsOfSampleBuffer(a3, &v73, &blockBufferOut);
            if (v14)
            {
LABEL_98:
              value = v14;
              goto LABEL_88;
            }

            lhs = v73;
            rhs = blockBufferOut;
            CMTimeAdd(&time, &lhs, &rhs);
            CMSampleBufferGetDuration(&lhs, a3);
            rhs = time;
            v25 = CMTimeCompare(&lhs, &rhs);
            if (v25 <= 0)
            {
              v26 = v57;
              if (!*(v17 + 32))
              {
                v73 = time;
                *&blockBufferOut.value = v57;
                blockBufferOut.epoch = v24;
LABEL_41:
                lhs = v73;
                *&rhs.value = v26;
                rhs.epoch = v24;
                if (CMTimeCompare(&lhs, &rhs) >= 1)
                {
                  v27 = *(v17 + 4);
                  lhs = v73;
                  CMTimeConvertScale(&v68, &lhs, v27, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                  v17[3] = (v17[3] + v68.value);
                  if (v25 > 0)
                  {
                    *(v17 + 32) = 1;
                    if (!*(v17 + 48))
                    {
LABEL_71:
                      lhs = blockBufferOut;
                      *&rhs.value = v57;
                      rhs.epoch = v24;
                      if (CMTimeCompare(&lhs, &rhs) >= 1)
                      {
                        v44 = *(v17 + 4);
                        lhs = blockBufferOut;
                        CMTimeConvertScale(&v66, &lhs, v44, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                        v17[5] = (v17[5] + v66.value);
                        *(v17 + 48) = 1;
                      }

                      goto LABEL_49;
                    }

LABEL_48:
                    fig_log_get_emitter();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", outAudioFile, v56, v57);
                    if (!v14)
                    {
                      goto LABEL_49;
                    }

                    goto LABEL_98;
                  }

                  if (!*(v17 + 48))
                  {
                    goto LABEL_71;
                  }

LABEL_70:
                  v43 = *(v17 + 4);
                  lhs = blockBufferOut;
                  CMTimeConvertScale(&v67, &lhs, v43, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                  v17[5] = (v17[5] + v67.value);
                  goto LABEL_49;
                }

                *(v17 + 32) = 1;
LABEL_46:
                if (!*(v17 + 48))
                {
                  goto LABEL_71;
                }

                if (v25 > 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_70;
              }

              *&v73.value = v57;
              v73.epoch = v24;
              blockBufferOut = time;
            }

            else
            {
              v26 = v57;
              if (!*(v17 + 32))
              {
                goto LABEL_41;
              }
            }

            lhs = v73;
            *&rhs.value = v26;
            rhs.epoch = v24;
            if (CMTimeCompare(&lhs, &rhs) > 0)
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          value = 0;
          v7[129] = 1;
        }

LABEL_88:
        FigSimpleMutexUnlock();
LABEL_89:
        if (value)
        {
          LODWORD(time.value) = value;
          v52 = *MEMORY[0x1E695E480];
          v73.value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time);
          if (v73.value)
          {
            v53 = CFDictionaryCreate(v52, kFigFormatWriterNotificationParameter_OSStatus, &v73, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          else
          {
            v53 = 0;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v53)
          {
            CFRelease(v53);
          }

          if (v73.value)
          {
            CFRelease(v73.value);
          }
        }

        return;
      }
    }

    else
    {
      figAudioFileWriter_AddSampleBufferToTrack_cold_13();
    }

LABEL_87:
    value = 0;
    goto LABEL_88;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", 1157, v3);
}

double figAudioFileWriter_BeginSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 40));
  v18 = **&MEMORY[0x1E6960C70];
  v17 = v18;
  v7 = *(DerivedStorage + 84);
  if ((~v7 & 5) != 0)
  {
    if (v7)
    {
      emitter = fig_log_get_emitter();
      v9 = v2;
      v10 = 1330;
    }

    else
    {
      if (Count)
      {
        if (*(DerivedStorage + 108))
        {
          decodeDurationForTrack(a1, &v18);
          if (v13)
          {
            emitter = fig_log_get_emitter();
            v9 = v2;
            v10 = 1343;
            goto LABEL_13;
          }

          lhs = *(DerivedStorage + 96);
          v15 = v18;
          CMTimeAdd(&v17, &lhs, &v15);
          lhs = *a2;
          v15 = v17;
          if (CMTimeCompare(&lhs, &v15))
          {
            fig_log_get_emitter();
            *&v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15.value, v15.timescale, LODWORD(v15.epoch));
            return *&v12;
          }
        }

        else
        {
          v11 = *&a2->value;
          *(DerivedStorage + 112) = a2->epoch;
          *(DerivedStorage + 96) = v11;
        }

        v12 = *&a2->value;
        *(DerivedStorage + 88) = a2->epoch;
        *(DerivedStorage + 72) = v12;
        return *&v12;
      }

      emitter = fig_log_get_emitter();
      v9 = v2;
      v10 = 1333;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v2;
    v10 = 1327;
  }

LABEL_13:

  *&v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", v10, v9);
  return *&v12;
}

void figAudioFileWriter_EndSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v17.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v17.epoch = v6;
  *&v16.value = *&v17.value;
  v16.epoch = v6;
  v7 = *(DerivedStorage + 84);
  if ((~v7 & 5) != 0)
  {
    if (v7)
    {
      v11 = DerivedStorage;
      v13 = *&v17.value;
      decodeDurationForTrack(a1, &v17);
      if (!v12)
      {
        lhs = *(v11 + 96);
        rhs = v17;
        CMTimeAdd(&v16, &lhs, &rhs);
        lhs = *a2;
        rhs = v16;
        CMTimeCompare(&lhs, &rhs);
        *(v11 + 72) = v13;
        *(v11 + 88) = v6;
        return;
      }

      emitter = fig_log_get_emitter();
      v9 = v2;
      v10 = 1371;
    }

    else
    {
      emitter = fig_log_get_emitter();
      v9 = v2;
      v10 = 1367;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v2;
    v10 = 1364;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", v10, v9);
}

const AudioChannelLayout *faf_setAudioChannelLayout(uint64_t a1, CMAudioFormatDescriptionRef desc, int a3)
{
  sizeOut = 0;
  result = CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
  if (a3)
  {
    v7 = sizeOut;
    if (HIDWORD(sizeOut))
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
    v7 = sizeOut;
    if (sizeOut - 1 < 0xFFFFFFFF)
    {
LABEL_6:
      result = AudioFileSetProperty(*(a1 + 56), 0x636D6170u, v7, result);
      if (result)
      {
        v10 = 0;
        v9 = 0;
        v12 = 0;
        v11 = 0;
        inPropertyData = CMAudioFormatDescriptionGetMostCompatibleFormat(desc)->mChannelLayoutTag;
        sizeOut = 12;
        return AudioFileSetProperty(*(a1 + 56), 0x636D6170u, 0xCu, &inPropertyData);
      }
    }
  }

  return result;
}

uint64_t afReadProc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  LODWORD(v7) = a3;
  v19 = 0;
  FigSimpleMutexLock();
  if (*a1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v12 = a2 + v7;
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v11 = v12 > v13;
  if (v12 <= v13)
  {
    v7 = v7;
  }

  else
  {
    v7 = (v13 - a2);
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v10 = v15(v14, v7, a2, a4, &v19);
    if (!v10)
    {
      *a5 = v19;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = -12782;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
LABEL_11:
  if (v11 && v10 == 0)
  {
    v16 = 4294967257;
  }

  else
  {
    v16 = v10;
  }

  FigSimpleMutexUnlock();
  return v16;
}

uint64_t afWriteProc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  v16 = 0;
  FigSimpleMutexLock();
  if (*a1)
  {
    goto LABEL_2;
  }

  v11 = *(a1 + 24);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v12)
  {
    v10 = 4294954514;
    goto LABEL_9;
  }

  v10 = v12(v11, a3, a2, a4, &v16);
  if (v10)
  {
LABEL_9:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    goto LABEL_10;
  }

  if (v16 != a3)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    v10 = v14;
    goto LABEL_10;
  }

  *a5 = a3;
  if (a3 + a2 > *(a1 + 32))
  {
    v10 = 0;
    *(a1 + 32) = a3 + a2;
    goto LABEL_10;
  }

LABEL_2:
  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

const __CFDictionary *faf_getTrimsOfSampleBuffer(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    faf_getTrimsOfSampleBuffer_cold_2(&v11);
    return LODWORD(v11.value);
  }

  if (!a3)
  {
    faf_getTrimsOfSampleBuffer_cold_1(&v11);
    return LODWORD(v11.value);
  }

  v6 = MEMORY[0x1E6960C70];
  v7 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v8 = *(v6 + 16);
  *(a2 + 16) = v8;
  *a3 = v7;
  *(a3 + 16) = v8;
  v9 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  if (v9)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, v9);
    if (v11.flags)
    {
      *a2 = v11;
    }
  }

  result = CMGetAttachment(a1, *MEMORY[0x1E6960558], 0);
  if (result)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, result);
    if (v11.flags)
    {
      *a3 = v11;
    }

    return 0;
  }

  return result;
}

uint64_t FigFileStarByteStreamEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;

  return CFEqual(v4, v3);
}

uint64_t FigFileStarByteStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 8))
    {
      fclose(*(DerivedStorage + 8));
      v2 = *DerivedStorage;
    }

    CFRelease(v2);
  }

  if (*(DerivedStorage + 40))
  {
    FigSimpleMutexDestroy();
  }

  return FigByteStreamStatsTeardownWorker();
}

__CFString *FigFileStarByteStreamCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = CFCopyDescription(*DerivedStorage);
  if (v3)
  {
    v4 = v3;
    CFStringAppendFormat(Mutable, 0, @"<FigFileStarByteStream %p>{%@}", DerivedStorage, v3);
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t FigFileStarByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70]))
  {
    memset(&v15, 0, sizeof(v15));
    fstat(*(DerivedStorage + 16), &v15);
    v7 = *MEMORY[0x1E695E480];
    p_st_size = &v15.st_size;
    v9 = kCFNumberSInt64Type;
LABEL_4:
    StatsDictionary = CFNumberCreate(v7, v9, p_st_size);
LABEL_5:
    v11 = StatsDictionary;
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF80]))
  {
    v13 = *MEMORY[0x1E695E4D0];
LABEL_11:
    StatsDictionary = CFRetain(v13);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
  {
    v13 = *DerivedStorage;
    goto LABEL_11;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960DC8]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6960DE0]) || !CFEqual(a2, *MEMORY[0x1E6960E08]))
    {
      return 4294954512;
    }

    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    goto LABEL_5;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14[1] = 0;
  v14[2] = 0;
  bzero(&v15, 0x400uLL);
  v14[0] = 0x400000000005;
  if (!CFURLGetFileSystemRepresentation(*DerivedStorage, 1u, &v15, 1024))
  {
    return 4294954513;
  }

  result = getattrlist(&v15, v14, v16, 0x24uLL, 0);
  if (!result)
  {
    v7 = *MEMORY[0x1E695E480];
    p_st_size = &v16[4];
    v9 = kCFNumberSInt32Type;
    goto LABEL_4;
  }

  return result;
}

uint64_t FigFileStarByteStreamRead(uint64_t a1, size_t a2, off_t a3, void *a4, uint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24) != a3)
  {
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 32) = 1;
  }

  if (a2 > 0x1000)
  {
    v10 = pread(*(DerivedStorage + 16), a4, a2, a3);
    *(DerivedStorage + 32) = 1;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(DerivedStorage + 32))
  {
    if (fseeko(*(DerivedStorage + 8), a3, 0))
    {
      FigFileStarByteStreamRead_cold_1(v16);
      v11 = v16[0];
      goto LABEL_17;
    }

    *(DerivedStorage + 32) = 0;
  }

  v10 = fread(a4, 1uLL, a2, *(DerivedStorage + 8));
  if (a5)
  {
LABEL_5:
    *a5 = v10;
  }

LABEL_6:
  v11 = 0;
  if (a2 && v10 <= 0)
  {
    if (v10)
    {
      fig_log_get_emitter();
      __error();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16[1]);
      v11 = v12;
    }

    else
    {
      v11 = 4294954423;
    }
  }

  *(DerivedStorage + 24) += v10;
LABEL_17:
  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FigFileStarByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    fstat(*(DerivedStorage + 16), &v7);
    if (a2 < 0 || v7.st_size <= a2)
    {
      result = 0;
      *a3 = 0;
    }

    else
    {
      result = 0;
      *a3 = v7.st_size - a2;
    }
  }

  else
  {
    FigFileStarByteStreamGetAvailableLengthAtOffset_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t FigFileStarByteStreamReadAndCreateBlockBuffer(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CFGetAllocator(a1);

  return CMCreateContiguousBlockBufferFromStream();
}

uint64_t EstimateMaximumTrimTimeForFileSize(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v6(a1, 0, 1986618469, &v37, &v35 + 4);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v7(a1, 0, 1936684398, &v36, &v35);
  }

  v8 = a2 - (a2 * 0.004);
  v10 = v36;
  v9 = v37;
  if (!v37)
  {
    if (!v36)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
LABEL_36:
      v28 = v16;
      goto LABEL_37;
    }

    v9 = v36;
    v29 = v8;
    v30 = 0;
LABEL_35:
    v16 = EstimateByteTimingForTrack(v9, v29, v30, a3);
    goto LABEL_36;
  }

  if (!v36)
  {
LABEL_34:
    v29 = v8;
    v30 = v10;
    goto LABEL_35;
  }

  v42 = 0;
  v43 = 0;
  cf = 0;
  FigTrackReaderGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = v13(v12, @"UneditedTrackDuration", *MEMORY[0x1E695E480], &v43);
  if (v14)
  {
    goto LABEL_45;
  }

  if (v43)
  {
    CMTimeMakeFromDictionary(&time, v43);
    Seconds = CMTimeGetSeconds(&time);
    CFRelease(v43);
  }

  else
  {
    Seconds = 1.0;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v17)
  {
    goto LABEL_27;
  }

  v14 = v17(v10, &v42);
  if (v14)
  {
    goto LABEL_45;
  }

  v18 = v42;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v19)
  {
LABEL_27:
    LODWORD(v10) = 0;
    v28 = 4294954514;
    goto LABEL_28;
  }

  v14 = v19(v18, &cf);
  if (!v14)
  {
    v20 = 0;
    while (1)
    {
      v39 = 0;
      time.value = 0;
      v38 = 0;
      v21 = cf;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (!v22)
      {
        break;
      }

      v14 = v22(v21, 0, 0, 0, &time, &v39, 0, 0, 0, 0);
      if (v14)
      {
        goto LABEL_45;
      }

      v23 = v39;
      value = time.value;
      v25 = cf;
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v26)
      {
        v27 = v26(v25, v23, &v38) != 0;
      }

      else
      {
        v27 = 1;
      }

      v20 += value;
      if (v39 != v38 || v27)
      {
        v28 = 0;
        LODWORD(v10) = (v20 / Seconds);
        goto LABEL_28;
      }
    }

    v28 = 4294954514;
    goto LABEL_43;
  }

LABEL_45:
  v28 = v14;
LABEL_43:
  LODWORD(v10) = 0;
LABEL_28:
  if (v42)
  {
    CFRelease(v42);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v28)
  {
    v9 = v37;
    goto LABEL_34;
  }

LABEL_37:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v28;
}

uint64_t checkFigVideoDecoderMaxSpeedTrace(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader(uint64_t a1, float *a2)
{
  if (sVDMSTCheckLogOnce != -1)
  {
    FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader_cold_1();
  }

  valuePtr = 0.0;
  theArray = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(v4, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v8 = theArray;
  if (v7)
  {
    v11 = 0;
    if (!theArray)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!theArray)
    {
      return 4294948176;
    }

    Count = CFArrayGetCount(theArray);
    v8 = theArray;
    if (Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (ValueAtIndex)
      {
        v11 = CFRetain(ValueAtIndex);
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
      v8 = theArray;
      if (!theArray)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      v7 = 4294948176;
      if (!theArray)
      {
        goto LABEL_16;
      }
    }
  }

  CFRelease(v8);
LABEL_16:
  if (!v7)
  {
    theArray = 0;
    FigTrackReaderGetFigBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v7 = v14(v13, @"NominalFrameRate", v6, &theArray);
      if (!v7 && theArray)
      {
        CFNumberGetValue(theArray, kCFNumberFloat32Type, &valuePtr);
        CFRelease(theArray);
        if (valuePtr < 1.0)
        {
LABEL_21:
          FigGetEstimatedMaxFullFramePlaybackSpeedForTrackReader_cold_2(&theArray);
          v7 = theArray;
          if (!v11)
          {
            return v7;
          }

          goto LABEL_25;
        }

        FigGetEstimatedMaxFullFramePlaybackSpeedForFormatDescriptionAndNominalFrameRate(v11, a2, valuePtr);
        v7 = v16;
        if (!v11)
        {
          return v7;
        }

LABEL_25:
        CFRelease(v11);
        return v7;
      }

      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 4294954514;
    }
  }

  if (v11)
  {
    goto LABEL_25;
  }

  return v7;
}

double vdmst_getCodecProperty(const __CFDictionary *a1, const void *a2, void *key, const void *a4, uint64_t a5, const void **a6)
{
  if (!a6)
  {
    vdmst_getCodecProperty_cold_3(&v23);
    return result;
  }

  *a6 = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_8;
  }

  v13 = Value;
  v14 = CFGetTypeID(Value);
  if (v14 != CFDictionaryGetTypeID())
  {
    vdmst_getCodecProperty_cold_1(&v21);
    return result;
  }

  v15 = CFDictionaryGetValue(v13, a2);
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 != CFDictionaryGetTypeID())
    {
      vdmst_getCodecProperty_cold_2(&v22);
      return result;
    }

    v18 = CFDictionaryGetValue(v16, a4);
    *a6 = v18;
    if (!v18)
    {
LABEL_9:
      v18 = CFDictionaryGetValue(a1, a4);
      *a6 = v18;
      if (!v18)
      {
        return result;
      }
    }
  }

  else
  {
LABEL_8:
    v18 = *a6;
    if (!*a6)
    {
      goto LABEL_9;
    }
  }

  if (CFGetTypeID(v18) != a5)
  {
    *a6 = 0;
    v20 = qword_1EAF174E8;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294954334, "<<<< VDMST >>>>", 110, v6);
  }

  return result;
}

double OUTLINED_FUNCTION_3_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{

  return vdmst_getCodecProperty(v7, v6, v8, v9, a5, a6);
}

const void *OUTLINED_FUNCTION_4_95()
{

  return CFArrayGetValueAtIndex(v0, 0);
}

uint64_t figTTMLDocumentWriterElement_Register()
{
  result = _CFRuntimeRegisterClass();
  sElementTypeID = result;
  return result;
}

uint64_t FigTTMLDocumentWriterElementCreate(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v7 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigTTMLDocumentWriterElementCreate_cold_3(&v17);
    return v17;
  }

  v9 = Instance;
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigTTMLDocumentWriterElementCreate_cold_2(&v16);
    v13 = v16;
LABEL_9:
    CFRelease(v9);
    return v13;
  }

  v11 = Mutable;
  v12 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    FigTTMLDocumentWriterElementCreate_cold_1(v11, &v15);
    v13 = v15;
    goto LABEL_9;
  }

  v13 = 0;
  *(v9 + 16) = a2;
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  *(v9 + 24) = a3;
  *a4 = v9;
  return v13;
}

uint64_t FigTTMLDocumentWriterElementWalkTree(CFArrayRef *a1, uint64_t (*a2)(CFArrayRef *, uint64_t), uint64_t (*a3)(CFArrayRef *, uint64_t), uint64_t (*a4)(void, void), uint64_t a5)
{
  if (a1)
  {
    v16 = a4;
    v8 = CFGetTypeID(a1);
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
    a4 = v16;
    if (v8 == sElementTypeID)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      result = a2(a1, a5);
      if (result == 2)
      {
        return result;
      }

      if (!result)
      {
LABEL_6:
        v10 = a1[4];
        if (v10)
        {
          Count = CFArrayGetCount(v10);
          if (Count >= 1)
          {
            v12 = Count;
            for (i = 0; i != v12; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a1[4], i);
              result = FigTTMLDocumentWriterElementWalkTree(ValueAtIndex, a2, a3, v16, a5);
              if (result == 1)
              {
                break;
              }

              if (result == 2)
              {
                return result;
              }
            }
          }
        }
      }

      if (a3)
      {

        return a3(a1, a5);
      }

      return 0;
    }
  }

  if (!a4)
  {
    return 0;
  }

  return a4(a1, a5);
}

uint64_t FigTTMLDocumentWriterElementInsertBeforeIfNotExist(CFArrayRef *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6[0] = a2;
    v6[1] = a3;
    v6[2] = 0;
    v7 = 0;
    FigTTMLDocumentWriterElementWalkTree(a1, insertBeforeIfNotExist, 0, 0, v6);
    result = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  else
  {
    FigTTMLDocumentWriterElementInsertBeforeIfNotExist_cold_1(&v8);
    return v8;
  }

  return result;
}

void FigTTMLDocumentWriterElementInsertChildNodeBeforeNode(uint64_t a1, void *a2, const void *a3)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v9.length = CFArrayGetCount(v6);
    v9.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v9, a3);
    if (FirstIndexOfValue < 0)
    {
      return;
    }
  }

  else
  {
    FirstIndexOfValue = 0;
  }

  CFArrayInsertValueAtIndex(*(a1 + 32), FirstIndexOfValue, a2);
  if (a2)
  {
    v8 = CFGetTypeID(a2);
    MEMORY[0x19A8D3660](&FigTTMLDocumentWriterElementGetTypeID_sRegisterElementOnce, figTTMLDocumentWriterElement_Register);
    if (v8 == sElementTypeID)
    {
      a2[3] = a1;
    }
  }
}

const void *FigTTMLDocumentWriterElementGetChildAtIndex(uint64_t a1, CFIndex a2)
{
  Count = CFArrayGetCount(*(a1 + 32));
  if (Count <= a2)
  {
    FigTTMLDocumentWriterElementGetChildAtIndex_cold_1(Count, v5, v6, v7, v8, v9, v10, v11, v14, v15, SHIDWORD(v15), vars0);
    return 0;
  }

  else
  {
    v12 = *(a1 + 32);

    return CFArrayGetValueAtIndex(v12, a2);
  }
}

uint64_t FigTTMLDocumentWriterElementCopyElementsAtPath(CFArrayRef *a1, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4)
{
  v8 = 0;
  if (!a3)
  {
    FigTTMLDocumentWriterElementCopyElementsAtPath_cold_2(&v10);
    return v10;
  }

  if (!a4)
  {
    FigTTMLDocumentWriterElementCopyElementsAtPath_cold_1(&v10);
    return v10;
  }

  v7[0] = a2;
  v7[1] = a3;
  LODWORD(v8) = -1;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigTTMLDocumentWriterElementWalkTree(a1, getElementsAtPathPreOrder, getElementsAtPathPostOrder, 0, v7);
  result = 0;
  *a4 = Mutable;
  return result;
}

uint64_t getElementsAtPathPreOrder(_DWORD *value, uint64_t a2)
{
  v2 = *(a2 + 16) + 1;
  *(a2 + 16) = v2;
  if (value[4] != *(*a2 + 4 * v2))
  {
    return 1;
  }

  if (*(a2 + 8) - 1 != v2)
  {
    return 0;
  }

  CFArrayAppendValue(*(a2 + 24), value);
  return 1;
}

uint64_t FigTTMLDocumentWriterElementWriteTree(CFArrayRef *a1, uint64_t a2)
{
  v3 = a2;
  v4 = 0;
  FigTTMLDocumentWriterElementWalkTree(a1, writeStartElement, writeEndElement, writeCaptionData, &v3);
  return v4;
}

double figTTMLDocumentWriterElement_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figTTMLDocumentWriterElement_Finalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

__CFString *figTTMLDocumentWriterElement_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFDictionaryGetCount(*(a1 + 40));
  v4 = CFArrayGetCount(*(a1 + 32));
  CFStringAppendFormat(Mutable, 0, @"[FigTTMLDocumentWriter_Element %p] nodeType=%d parent=%p attributes(%ld)={ ", a1, *(a1 + 16), *(a1 + 24), Count);
  CFDictionaryApplyFunction(*(a1 + 40), appendAttributeDebugDesc, Mutable);
  CFStringAppendFormat(Mutable, 0, @"} children(%ld)=[ ", v4);
  v6.location = 0;
  v6.length = v4;
  CFArrayApplyFunction(*(a1 + 32), v6, appendChildNodeDebugDesc, Mutable);
  CFStringAppendFormat(Mutable, 0, @"]");
  return Mutable;
}

uint64_t RegisterFigDiskCacheProviderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigDiskCacheProviderGetCFTypeID()
{
  MEMORY[0x19A8D3660](&FigDiskCacheProviderGetClassID_sRegisterFigDiskCacheProviderBaseTypeOnce, RegisterFigDiskCacheProviderBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigDiskCacheProviderRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigDiskCacheProviderRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _figHTTPRequestCreateErrorComment(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a3)
  {
    v9 = CFStringCreateWithFormatAndArguments(0, 0, a3, va);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 520);
      if (v11)
      {
        CFRelease(v11);
      }

      *(a1 + 520) = v10;
    }
  }
}

BOOL figHTTPShouldReportNetworkHistory(uint64_t a1)
{
  if (*(a1 + 488) && !*(a1 + 173))
  {
    v3 = CFURLCopyScheme(*(a1 + 72));
    if (FigCFEqual())
    {
      v1 = 0;
      if (!v3)
      {
        return v1;
      }
    }

    else
    {
      v1 = FigCFEqual() == 0;
      if (!v3)
      {
        return v1;
      }
    }

    CFRelease(v3);
    return v1;
  }

  return 0;
}

uint64_t figHTTPSetIsDormant(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 176) != a2)
  {
    v4 = result;
    *(result + 176) = a2;
    if (a2)
    {
      result = FigGetUpTimeNanoseconds();
      if (*(v4 + 496))
      {
        figHTTPCapUptimeToResponseEndTime(v4, result);
        result = FigNetworkHistoryRequestBecameInactive();
        *(v4 + 496) = 0;
        *(v4 + 177) = 0;
      }
    }

    else
    {
      if (*(result + 216) <= 0)
      {
        result = FigGetUpTimeNanoseconds();
      }

      if (!*(v4 + 496))
      {
        FigNetworkHistoryRequestBecameActive();
        figHTTPRequestProjectedResponseSize(v4);

        return FigNetworkHistorySetRequestLatency();
      }
    }
  }

  return result;
}

uint64_t figHTTPRequestProjectedResponseSize(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  v3 = 0;
  FigCFHTTPGetContentLengthFromHeaderString([*(a1 + 144) valueForKey:@"Content-Length"], &v5);
  result = v5;
  if (!v5)
  {
    if (FigCFHTTPGetContentRangeFromHeaderString([*(a1 + 144) valueForKey:@"Content-Range"], &v4, &v3, 0, 0))
    {
      return v3 - v4 + 1;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t figHTTPRequestPerformReadCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (!a1)
  {
    figHTTPRequestPerformReadCallback_cold_3(&v28);
    return v28;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 172))
  {
    figHTTPRequestPerformReadCallback_cold_1(&v26);
    return v26;
  }

  v13 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    figHTTPRequestPerformReadCallback_cold_2(&v27);
    return v27;
  }

  v25 = a3;
  v14 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  if (*(v13 + 376))
  {
    v15 = a5 | 4;
  }

  else
  {
    v15 = a5;
  }

  if (*(v13 + 377))
  {
    v16 = v15 | 8;
  }

  else
  {
    v16 = v15;
  }

  if ((v16 & 2) != 0)
  {
    *(v13 + 172) = 1;
    v24 = objc_autoreleasePoolPush();
    figHTTPSetActivelyUsingNetwork(a1, 0);
    objc_autoreleasePoolPop(v24);
  }

  v17 = *(v13 + 136);
  v19 = *(v13 + 24);
  v18 = *(v13 + 32);
  if (v18)
  {
    v20 = CFRetain(v18);
  }

  else
  {
    v20 = 0;
  }

  CFRetain(a1);
  FigRetainProxyUnlockAll();
  v19(a1, v17, v20, a2, v25, a4, v16, a6);
  FigRetainProxyRelock();
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(a1);
  IsInvalidated = FigRetainProxyIsInvalidated();
  if (IsInvalidated)
  {
    v22 = 4294954511;
  }

  else
  {
    v22 = 0;
  }

  if ((v16 & 2) != 0 && !IsInvalidated)
  {
    if (!*(v13 + 363))
    {
      v22 = 0;
      if (!v14)
      {
        return v22;
      }

      goto LABEL_27;
    }

    FigHTTPRequestCommonMandatoryRequestFinish();
    v22 = 0;
    *(v13 + 363) = 0;
  }

  if (v14)
  {
LABEL_27:
    CFRelease(v14);
  }

  return v22;
}

void sub_196697548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t figHTTPCapUptimeToResponseEndTime(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  if (!v4)
  {
    v4 = [*(a1 + 504) _incompleteTaskMetrics];
  }

  v5 = [objc_msgSend(v4 "transactionMetrics")];
  if (!v5)
  {
    return a2;
  }

  v6 = [v5 responseEndDate];
  if (!v6)
  {
    return a2;
  }

  [v6 timeIntervalSinceReferenceDate];
  v8 = (v7 - *(a1 + 184)) * 1000000000.0;
  if (*(a1 + 192) + v8 >= a2)
  {
    return a2;
  }

  else
  {
    return *(a1 + 192) + v8;
  }
}

void figHttpRequestEnsureNotTooManyBytes(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*(DerivedStorage + 168))
    {
      v11 = *(DerivedStorage + 416);
      if (v11 >= 1)
      {
        v12 = *(DerivedStorage + 424);
        if (v12 + a2 > v11)
        {
          _figHTTPRequestCreateErrorComment(DerivedStorage, v5, @"received more bytes  %lld + %zu = (%lld) than promised (%lld)", v6, v7, v8, v9, v10, v12, a2, v12 + a2, v11);
          v13 = qword_1EAF17508;

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954357, "HTTPRequest", 1236, v2);
        }
      }
    }
  }
}

uint64_t FigHTTPRequestNSURLSessionGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
  {
    FigHTTPRequestNSURLSessionGetClassID_cold_1();
  }

  return sFigHTTPRequestNSURLSessionID;
}

uint64_t __FigHTTPRequestNSURLSessionGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t _FigHTTPRequestCreateWithNSURLSession(const void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, void *a7, void *a8, void *a9, NSObject *a10, void *a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CFTypeRef *a18, _DWORD *a19)
{
  v26 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&sFigHTTPInit, figHTTPRequestRunOnce);
  if (a2)
  {
    if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
    {
      FigHTTPRequestNSURLSessionGetClassID_cold_1();
    }

    v21 = sFigHTTPRequestNSURLSessionID;
    if (v21 != CMBaseObjectGetClassID())
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_2(valuePtr);
      goto LABEL_8;
    }

    if (!*CMBaseObjectGetDerivedStorage() || FigRetainProxyIsInvalidated())
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_3(valuePtr);
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_28(valuePtr);
    goto LABEL_8;
  }

  if (a11)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a11))
    {
      _FigHTTPRequestCreateWithNSURLSession_cold_4(valuePtr);
      goto LABEL_8;
    }

    CFDictionaryGetValue(a11, @"FHRP_InterfaceName");
    FigCFDictionaryGetBooleanIfPresent();
    CFDictionaryGetValue(a11, @"FHRP_ClientAuditToken");
    CFDictionaryGetValue(a11, @"FHRP_ClientBundleIdentifier");
    CFDictionaryGetValue(a11, @"FHRP_CustomURLLoader");
    if (CFDictionaryGetValue(a11, @"FHRP_DependentPipelinePrecursor"))
    {
      if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
      {
        _FigHTTPRequestCreateWithNSURLSession_cold_5();
      }

      if (!CMBaseObjectIsMemberOfClass())
      {
        _FigHTTPRequestCreateWithNSURLSession_cold_6(valuePtr);
        goto LABEL_8;
      }
    }

    FigCFDictionaryGetDoubleIfPresent();
    CFDictionaryGetValue(a11, @"FHRP_NetworkHistory");
    CFDictionaryGetValue(a11, @"FHRP_CreateExpectedProgressTarget");
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetDataValue();
    CFDictionaryGetValue(a11, @"FHRP_URLRequestAttribution");
    CFDictionaryGetValue(a11, @"FHRP_NetworkActivity");
  }

  if (FigHTTPRequestNSURLSessionGetClassID_sRegisterFigHTTPRequestNSURLSessionTypeOnce != -1)
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_5();
  }

  if (CMDerivedObjectCreate())
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_8(valuePtr);
  }

  else
  {
    _FigHTTPRequestCreateWithNSURLSession_cold_27(valuePtr);
  }

LABEL_8:
  v22 = valuePtr[0];
  if (!valuePtr[0])
  {
    v22 = 0;
  }

  *a18 = 0;
  return v22;
}

double figHTTPRequestRunOnce(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  sFigDisableIncreasedNetworkQOS = CFPreferenceBooleanWithDefault;
  if (CFPreferenceBooleanWithDefault)
  {
    if (dword_1EAF17510)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

dispatch_queue_t figHTTPNotifyNetworkActivitySetupOnce()
{
  gApplicationNetworkActivityDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = dispatch_queue_create("com.apple.coremedia.networkactivitydict", 0);
  gApplicationNetworkActivityQueue = result;
  return result;
}

void __figHTTPSetActivelyUsingNetwork_block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v4 = dispatch_time(0, 100000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __figHTTPSetActivelyUsingNetwork_block_invoke_2;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = *(a1 + 32);
    dispatch_after(v4, gApplicationNetworkActivityQueue, v7);
    return;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(gApplicationNetworkActivityDict, *(a1 + 32));
  if (!Value)
  {
    valuePtr = 1;
    goto LABEL_7;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  if (!valuePtr++)
  {
LABEL_7:
    if (*(a1 + 32))
    {
      SBSSetStatusBarShowsActivityForApplication();
    }
  }

  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(gApplicationNetworkActivityDict, *(a1 + 32), v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

void __figHTTPSetActivelyUsingNetwork_block_invoke_2(uint64_t a1)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(gApplicationNetworkActivityDict, *(a1 + 32));
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (--valuePtr)
    {
      v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(gApplicationNetworkActivityDict, *(a1 + 32), v3);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        SBSSetStatusBarShowsActivityForApplication();
        v4 = *(a1 + 32);
      }

      CFDictionaryRemoveValue(gApplicationNetworkActivityDict, v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t __figHTTPGetConnectionRTT_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = v5 > a4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *(v4 + 24) = a4;
  }

  return 1;
}

uint64_t figHTTPRequestNSURLSessionCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v8 = 4294954511;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FHRP_HTTPFinalURL"))
  {
    v9 = *(DerivedStorage + 80);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"FHRP_HTTPResponseHeaders"))
  {
    v9 = *(DerivedStorage + 152);
    if (v9)
    {
LABEL_8:
      v10 = CFRetain(v9);
LABEL_9:
      v8 = 0;
      *a4 = v10;
      goto LABEL_22;
    }

LABEL_21:
    v8 = 4294954513;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"FHRP_PayloadLength"))
  {
    if (*(DerivedStorage + 144))
    {
      v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (DerivedStorage + 416));
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"FHRP_ErrorReturned"))
  {
    v11 = *(DerivedStorage + 512);
    if (v11)
    {
      v10 = v11;
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (CFEqual(a2, @"FHRP_ErrorComment"))
  {
    v9 = *(DerivedStorage + 520);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"FHRP_RemoteIPAddress"))
  {
    v9 = *(DerivedStorage + 368);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if (!CFEqual(a2, @"FHRP_CFNetworkTimingData"))
  {
    if (CFEqual(a2, @"FHRP_CFNetworkTransactionMetrics"))
    {
      v19 = 0;
      v18 = figHTTPRequestNSURLSessionCopyTaskMetrics(a1, &v19);
    }

    else
    {
      if (!CFEqual(a2, @"FHRP_ByteRange"))
      {
        if (CFEqual(a2, @"FHRP_HandlesNetworkTransitions"))
        {
          v15 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 536))
          {
            v15 = MEMORY[0x1E695E4C0];
          }

          v9 = *v15;
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"FHRP_IsExpensive"))
        {
          v8 = 4294954512;
          goto LABEL_22;
        }

        v8 = 0;
        if (*(DerivedStorage + 537))
        {
          v16 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v16 = MEMORY[0x1E695E4C0];
        }

        v17 = *v16;
LABEL_43:
        *a4 = v17;
        goto LABEL_22;
      }

      v19 = 0;
      figHTTPRequestNSURLSessionCopyByteRangeAsCFDictionary(a1, &v19);
    }

    v8 = v18;
    v17 = v19;
    goto LABEL_43;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [*(DerivedStorage + 504) _timingData];
  if (v14)
  {
    v8 = 0;
    *a4 = v14;
  }

  else
  {
    v8 = 4294954513;
  }

  objc_autoreleasePoolPop(v13);
LABEL_22:
  FigRetainProxyUnlockMutex();
  return v8;
}

uint64_t figHTTPAddHeaderFields(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {

      return [a3 setValue:a2 forHTTPHeaderField:a1];
    }
  }

  return result;
}

void __figHttpRequestSetupNSURLSessionTask_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    _FigHTTPRequestSessionNoteNativeConnectionForNSURLSession(v3, a2);

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_2_117(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return CFNumberGetValue(v9, kCFNumberSInt64Type, va);
}

uint64_t FigEndpointStreamAudioEngineResumeSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr[0] = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineResumeSync_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v24, v25, valuePtr[0], valuePtr[1]);
    return valuePtr[0];
  }

  v14 = SyncContext;
  v15 = SyncContext[1];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v14;
  dispatch_retain(*v14);
  VTable = CMBaseObjectGetVTable();
  v20 = *(VTable + 16);
  v19 = VTable + 16;
  v21 = *(v20 + 8);
  if (v21)
  {
    v21(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v14);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v19, -12782, v14);
  }

  if (!dispatch_semaphore_wait(v17, v5))
  {
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr[0] = -15486;
  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

LABEL_16:
  if (v17)
  {
    dispatch_release(v17);
  }

  return valuePtr[0];
}

void *inEndpointStreamUtil_createSyncContext()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (!v0)
  {
    v3 = 58;
LABEL_7:
    inEndpointStreamUtil_createSyncContext_cold_1(v0, v3, &v4);
    return v4;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0[1] = Mutable;
  if (!Mutable)
  {
    v3 = 61;
    goto LABEL_7;
  }

  *v0 = dispatch_semaphore_create(0);
  return v0;
}

void inEndpointStreamAudioEngineUtil_completionCallback(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(*(a3 + 8), v4);
  dispatch_semaphore_signal(*a3);
  if (*a3)
  {
    dispatch_release(*a3);
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  free(a3);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigEndpointStreamAudioEngineSuspendSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr[0] = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineSuspendSync_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v24, v25, valuePtr[0], valuePtr[1]);
    return valuePtr[0];
  }

  v14 = SyncContext;
  v15 = SyncContext[1];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v14;
  dispatch_retain(*v14);
  VTable = CMBaseObjectGetVTable();
  v20 = *(VTable + 16);
  v19 = VTable + 16;
  v21 = *(v20 + 16);
  if (v21)
  {
    v21(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v14);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v19, -12782, v14);
  }

  if (!dispatch_semaphore_wait(v17, v5))
  {
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr[0] = -15486;
  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

LABEL_16:
  if (v17)
  {
    dispatch_release(v17);
  }

  return valuePtr[0];
}

uint64_t FigEndpointStreamAudioEngineSetEndpointStreamSync(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr[0] = 0;
  if (a3)
  {
    v5 = dispatch_time(0, 1000000 * a3);
  }

  else
  {
    v5 = -1;
  }

  SyncContext = inEndpointStreamUtil_createSyncContext();
  if (!SyncContext)
  {
    FigEndpointStreamAudioEngineSetEndpointStreamSync_cold_1(0, v7, v8, v9, v10, v11, v12, v13, v24, v25, valuePtr[0], valuePtr[1]);
    return valuePtr[0];
  }

  v14 = SyncContext;
  v15 = SyncContext[1];
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v14;
  dispatch_retain(*v14);
  VTable = CMBaseObjectGetVTable();
  v20 = *(VTable + 16);
  v19 = VTable + 16;
  v21 = *(v20 + 24);
  if (v21)
  {
    v21(a1, a2, inEndpointStreamAudioEngineUtil_completionCallback, v14);
  }

  else
  {
    inEndpointStreamAudioEngineUtil_completionCallback(v19, -12782, v14);
  }

  if (!dispatch_semaphore_wait(v17, v5))
  {
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  valuePtr[0] = -15486;
  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

LABEL_16:
  if (v17)
  {
    dispatch_release(v17);
  }

  return valuePtr[0];
}

uint64_t MTSidebandVideoPropertiesGetTypeID(uint64_t TypeID_cold_1)
{
  if (_MergedGlobals_85 != -1)
  {
    MTSidebandVideoPropertiesGetTypeID_cold_1();
  }

  if (sFormatDescriptionToSidebandVideoPropertiesMappngCreateOnce != -1)
  {
    MTSidebandVideoPropertiesGetTypeID_cold_2();
  }

  return qword_1ED4CAFA8;
}

uint64_t registerSidebandVideoPropertiesClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void formatDescriptionToSidebandVideoPropertiesMappingCreateOnce()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = 14;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = CFSetCreateMutable(v0, 14, MEMORY[0x1E695E9F8]);
  v4 = &off_1E748EFD0;
  do
  {
    v5 = *v4;
    CFDictionarySetValue(Mutable, **(v4 - 1), **v4);
    CFSetAddValue(v3, *v5);
    v4 += 2;
    --v1;
  }

  while (v1);
  sFormatDescriptionToSidebandVideoPropertiesMapping = Mutable;
  sRecognizedSidebandVideoPropertiesKeys = v3;
}

uint64_t MTSidebandVideoPropertiesCreateMutable(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MTSidebandVideoPropertiesGetTypeID(a1);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(v4 + 24) = Mutable;
      if (Mutable)
      {
        result = 0;
        *(v4 + 16) = 1;
        *a2 = v4;
      }

      else
      {
        MTSidebandVideoPropertiesCreateMutable_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      MTSidebandVideoPropertiesCreateMutable_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MTSidebandVideoPropertiesCreateMutable_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t MTSidebandVideoPropertiesCreateMutableFromFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2, void *a3)
{
  context = 0;
  Mutable = MTSidebandVideoPropertiesCreateMutable(a1, &context);
  if (Mutable)
  {
    if (context)
    {
      CFRelease(context);
    }
  }

  else
  {
    if (a2)
    {
      Extensions = CMFormatDescriptionGetExtensions(a2);
      if (Extensions)
      {
        CFDictionaryApplyFunction(Extensions, sidebandVideoPropertiesApplier_applyRelevantKeysFromFormatDescriptionExtensions, context);
      }
    }

    v7 = context;
    *(context + 16) = 1;
    *a3 = v7;
  }

  return Mutable;
}

void sidebandVideoPropertiesApplier_applyRelevantKeysFromFormatDescriptionExtensions(void *key, const void *a2, uint64_t a3)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(sFormatDescriptionToSidebandVideoPropertiesMapping, key, &value))
  {
    CFDictionarySetValue(*(a3 + 24), value, a2);
  }
}

uint64_t MTSidebandVideoPropertiesCreateFromFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2, void *a3)
{
  cf = 0;
  v4 = MTSidebandVideoPropertiesCreateMutableFromFormatDescription(a1, a2, &cf);
  v5 = cf;
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(cf + 16) = 0;
    *a3 = v5;
  }

  return v4;
}

uint64_t MTSidebandVideoPropertiesCopyAsDictionary(uint64_t a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      Count = FigCFDictionaryGetCount();
      MutableCopy = CFDictionaryCreateMutableCopy(a2, Count + 1, *(a1 + 24));
      if (MutableCopy)
      {
        v8 = MutableCopy;
        FigCFDictionarySetInt16();
        result = 0;
        *a3 = v8;
      }

      else
      {
        MTSidebandVideoPropertiesCopyAsDictionary_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      MTSidebandVideoPropertiesCopyAsDictionary_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    MTSidebandVideoPropertiesCopyAsDictionary_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t MTSidebandVideoPropertiesCreateFromDictionary(uint64_t a1, const __CFDictionary *a2, void **a3)
{
  context = 0;
  if (!a2)
  {
    MTSidebandVideoPropertiesCreateFromDictionary_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    MTSidebandVideoPropertiesCreateFromDictionary_cold_1(&v8);
    return v8;
  }

  Mutable = MTSidebandVideoPropertiesCreateMutable(a1, &context);
  if (Mutable)
  {
    if (context)
    {
      CFRelease(context);
    }
  }

  else
  {
    CFDictionaryApplyFunction(a2, sidebandVideoPropertiesApplier_addKnownKeysFromExtensionsDictionary, context);
    *a3 = context;
  }

  return Mutable;
}

void sidebandVideoPropertiesApplier_addKnownKeysFromExtensionsDictionary(void *value, const void *a2, uint64_t a3)
{
  if (CFSetContainsValue(sRecognizedSidebandVideoPropertiesKeys, value))
  {
    v6 = *(a3 + 24);

    CFDictionarySetValue(v6, value, a2);
  }

  else if (CFEqual(value, @"LookupID"))
  {
    *(a3 + 18) = FigCFNumberGetSInt16();
  }
}

uint64_t MTSidebandVideoPropertiesSetValue(uint64_t a1, void *value, const void *a3)
{
  if (!a1)
  {
    MTSidebandVideoPropertiesSetValue_cold_4(&v7);
    return v7;
  }

  if (!value)
  {
    MTSidebandVideoPropertiesSetValue_cold_3(&v7);
    return v7;
  }

  if (!*(a1 + 16))
  {
    MTSidebandVideoPropertiesSetValue_cold_2(&v7);
    return v7;
  }

  if (!CFSetContainsValue(sRecognizedSidebandVideoPropertiesKeys, value))
  {
    MTSidebandVideoPropertiesSetValue_cold_1(&v7);
    return v7;
  }

  CFDictionarySetValue(*(a1 + 24), value, a3);
  return 0;
}

uint64_t MTSidebandVideoPropertiesRemoveValue(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16))
      {
        CFDictionaryRemoveValue(*(a1 + 24), a2);
        return 0;
      }

      else
      {
        MTSidebandVideoPropertiesRemoveValue_cold_1(&v3);
        return v3;
      }
    }

    else
    {
      MTSidebandVideoPropertiesRemoveValue_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    MTSidebandVideoPropertiesRemoveValue_cold_3(&v5);
    return v5;
  }
}

uint64_t FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions(uint64_t a1, __CFDictionary **a2)
{
  if (!a1)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_4(&v15);
    return v15;
  }

  if (!a2)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_3(&v15);
    return v15;
  }

  v3 = *MEMORY[0x1E695E480];
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24));
  if (!Copy)
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_2(&v15);
    return v15;
  }

  v5 = Copy;
  Count = CFDictionaryGetCount(Copy);
  Mutable = CFDictionaryCreateMutable(v3, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = &off_1E748EFD0;
    v10 = 14;
    do
    {
      v11 = *(v9 - 1);
      Value = CFDictionaryGetValue(v5, **v9);
      if (Value)
      {
        CFDictionarySetValue(v8, *v11, Value);
      }

      v9 += 2;
      --v10;
    }

    while (v10);
    v13 = 0;
    *a2 = v8;
  }

  else
  {
    FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions_cold_1(&v15);
    v13 = v15;
  }

  CFRelease(v5);
  return v13;
}

double MTSidebandVideoPropertiesSetLookupID(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return MTSidebandVideoPropertiesSetLookupID_cold_1();
  }

  *(result + 18) = a2;
  return v2;
}

uint64_t MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID()
{
  do
  {
    result = atomic_fetch_add(MTSidebandVideoPropertiesAcquireNextAvailableSidebandVideoPropertiesLookupID_sCurrentSidebandVideoPropertiesLookupID, 1u);
  }

  while (!result);
  return result;
}

uint64_t sidebandVideoProperties_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sidebandVideoProperties_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t sidebandVideoProperties_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CFEqual(*(a1 + 24), *(a2 + 24));
    }
  }

  return result;
}

CFStringRef sidebandVideoProperties_copyFormattingDesc(unsigned __int16 *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<MTSidebandVideoProperties %p | retainCount %d | identifier %d>", a1, v3, a1[9]);
}

CFStringRef sidebandVideoProperties_copyDebugDesc(unsigned __int16 *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<MTSidebandVideoProperties %p | retainCount %d | identifier %d>", a1, v3, a1[9]);
}

double createErrorLogEntry(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
    v6 = *(a1 + 16);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 16) = FigErrorLogCreateEntry(v4, 0, *a1, 0, -16670, @"CoreMediaErrorDomain", v5, 0, 0, 0, 4, 0, *(a1 + 8));
    if (v5)
    {
      CFRelease(v5);
    }
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950626, "<<<< SessionDataPlistParser >>>>", 228, v2);
}

uint64_t FigSessionDataParseJSONChapter(uint64_t a1, const __CFArray *cf, const void *a3, __CFArray **a4, double a5)
{
  v8 = cf;
  v89 = 0;
  v90[0] = 0;
  v87 = 0.0;
  v88 = 0;
  v9 = CFGetTypeID(cf);
  if (v9 != CFArrayGetTypeID())
  {
    createErrorLogEntry(a1, "Chapter JSON is not an array");
    value_low = v74;
    goto LABEL_74;
  }

  Count = CFArrayGetCount(v8);
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  v12 = Mutable;
  if (!Mutable)
  {
    FigSessionDataParseJSONChapter_cold_2(&v85);
    goto LABEL_102;
  }

  v75 = a4;
  v76 = Count - 1;
  if (Count < 1)
  {
    value_low = 0;
LABEL_72:
    if (!v75)
    {
      goto LABEL_93;
    }

    *v75 = v12;
LABEL_74:
    v12 = 0;
    goto LABEL_93;
  }

  v82 = 0;
  v13 = 0;
  v80 = Mutable;
  v14 = 0.0;
  v77 = a3;
  v78 = Count;
  v79 = v8;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
    seconds = 0.0;
    v16 = CFGetTypeID(ValueAtIndex);
    if (v16 != CFDictionaryGetTypeID())
    {
      v71 = "chapter entry is not a dictionary";
LABEL_88:
      createErrorLogEntry(a1, v71);
LABEL_89:
      value_low = ChapterMetadataArtworkItem;
      goto LABEL_93;
    }

    v17 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v17)
    {
      FigSessionDataParseJSONChapter_cold_1(&v85);
LABEL_102:
      value_low = LODWORD(v85.value);
      goto LABEL_93;
    }

    v18 = v17;
    v83 = v13;
    CFArraySetValueAtIndex(v12, v13, v17);
    CFRelease(v18);
    DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
    v20 = FigCFDictionaryGetDoubleIfPresent();
    if (!(DoubleIfPresent | v20))
    {
      v71 = "chapter dictionary must have start time or duration";
      goto LABEL_88;
    }

    v21 = v20;
    if (DoubleIfPresent && v87 < 0.0)
    {
      v71 = "chapter start time must be positive";
      goto LABEL_88;
    }

    if (v20 && seconds < 0.0)
    {
      v71 = "chapter duration must be positive";
      goto LABEL_88;
    }

    CMTimeMakeWithSeconds(&v85, v87, 100000);
    ChapterMetadataArtworkItem = FigCFDictionarySetCMTime();
    if (ChapterMetadataArtworkItem)
    {
      goto LABEL_89;
    }

    if (!v82)
    {
      goto LABEL_16;
    }

    if (!DoubleIfPresent)
    {
      v71 = "cannot determine chapter duration.  chapter has just duration, but previous chapter has just start time";
      goto LABEL_88;
    }

    CFArrayGetValueAtIndex(v12, v83 - 1);
    CMTimeMakeWithSeconds(&v85, v87 - v14, 100000);
    ChapterMetadataArtworkItem = FigCFDictionarySetCMTime();
    if (ChapterMetadataArtworkItem)
    {
      goto LABEL_89;
    }

LABEL_16:
    if (v21)
    {
      CMTimeMakeWithSeconds(&v85, seconds, 100000);
      value_low = FigCFDictionarySetCMTime();
      v24 = v83;
      if (value_low)
      {
        goto LABEL_93;
      }

      v82 = 0;
      v14 = v87;
      v87 = v87 + seconds;
    }

    else
    {
      v24 = v83;
      if (v83 == v76)
      {
        if (v87 >= a5)
        {
          v71 = "chapter start time is at or after the end of presentation";
          goto LABEL_88;
        }

        CMTimeMakeWithSeconds(&v85, a5 - v87, 100000);
        value_low = FigCFDictionarySetCMTime();
      }

      else
      {
        value_low = 0;
        v82 = 1;
      }

      v14 = v87;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"metadata");
    if (Value)
    {
      v26 = Value;
      v27 = CFGetTypeID(Value);
      if (v27 != CFArrayGetTypeID())
      {
        v72 = "metadata is not an array";
        goto LABEL_91;
      }

      v28 = CFArrayGetCount(v26);
      if (v28 >= 1)
      {
        v29 = v28;
        v30 = 0;
        while (1)
        {
          v31 = CFArrayGetValueAtIndex(v26, v30);
          v32 = CFGetTypeID(v31);
          if (v32 != CFDictionaryGetTypeID())
          {
            v72 = "metadata-list array element is not a dictionary";
            goto LABEL_91;
          }

          v33 = CFDictionaryGetValue(v31, @"key");
          v34 = CFGetTypeID(v33);
          if (v34 != CFStringGetTypeID())
          {
            v72 = "metadata-list key is not a string";
            goto LABEL_91;
          }

          v35 = CFDictionaryGetValue(v31, @"value");
          if (!v35)
          {
            v72 = "metadata list entry does not have a value";
            goto LABEL_91;
          }

          v36 = v35;
          v37 = CFDictionaryGetValue(v31, @"language");
          v38 = v37;
          if (v37)
          {
            v39 = CFGetTypeID(v37);
            if (v39 != CFStringGetTypeID())
            {
              v72 = "metadata-list language is not a string";
              goto LABEL_91;
            }
          }

          v40 = createMetadataItem(v33, v36, v38, @"mdta", &v88);
          v41 = v88;
          if (v40)
          {
            break;
          }

          v40 = sdpp_AddMetadataItemToChapterDictionary(v18, v88);
          if (v40)
          {
            break;
          }

          if (v41)
          {
            CFRelease(v41);
            v88 = 0;
          }

          if (v29 == ++v30)
          {
            value_low = 0;
            a3 = v77;
            v24 = v83;
            goto LABEL_39;
          }
        }

        value_low = v40;
        v12 = v80;
        if (v41)
        {
          CFRelease(v41);
        }

        goto LABEL_93;
      }
    }

LABEL_39:
    v42 = CFDictionaryGetValue(ValueAtIndex, @"titles");
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 != CFArrayGetTypeID())
      {
        v72 = "titles is not an array";
        goto LABEL_91;
      }

      v45 = CFArrayGetCount(v43);
      if (v45 >= 1)
      {
        break;
      }
    }

LABEL_54:
    v58 = CFDictionaryGetValue(ValueAtIndex, @"images");
    if (v58)
    {
      v59 = v58;
      v60 = CFGetTypeID(v58);
      v12 = v80;
      if (v60 != CFArrayGetTypeID())
      {
        v71 = "images is not an array";
        goto LABEL_88;
      }

      v61 = CFArrayGetCount(v59);
      if (v61 >= 1)
      {
        v62 = v61;
        v63 = 0;
        while (1)
        {
          v64 = CFArrayGetValueAtIndex(v59, v63);
          if (!v64 || (v65 = v64, v66 = CFGetTypeID(v64), v66 != CFDictionaryGetTypeID()))
          {
            v71 = "images entry is not a dictionary";
            goto LABEL_88;
          }

          v67 = CFDictionaryGetValue(v65, @"image-category");
          if (!v67)
          {
            v71 = "Missing image-category in images entry";
            goto LABEL_88;
          }

          v68 = v67;
          v69 = CFGetTypeID(v67);
          if (v69 != CFStringGetTypeID())
          {
            break;
          }

          ChapterMetadataArtworkItem = createChapterMetadataArtworkItem(a1, v68, v65, a3, v90);
          if (ChapterMetadataArtworkItem)
          {
            goto LABEL_89;
          }

          v70 = v90[0];
          ChapterMetadataArtworkItem = sdpp_AddMetadataItemToChapterDictionary(v18, v90[0]);
          if (ChapterMetadataArtworkItem)
          {
            goto LABEL_89;
          }

          if (v70)
          {
            CFRelease(v70);
            v90[0] = 0;
          }

          if (v62 == ++v63)
          {
            value_low = 0;
            v24 = v83;
            goto LABEL_69;
          }
        }

        v71 = "image-category is not a string";
        goto LABEL_88;
      }
    }

    else
    {
      v12 = v80;
    }

LABEL_69:
    v13 = v24 + 1;
    v8 = v79;
    if (v13 == v78)
    {
      goto LABEL_72;
    }
  }

  v46 = v45;
  v47 = 0;
  while (1)
  {
    v48 = CFArrayGetValueAtIndex(v43, v47);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v48))
    {
      v72 = "titles entry is not a dictionary";
      goto LABEL_91;
    }

    v50 = CFDictionaryGetValue(v48, @"language");
    if (!v50)
    {
      v72 = "Missing language in titles entry";
      goto LABEL_91;
    }

    v51 = v50;
    v52 = CFGetTypeID(v50);
    if (v52 != CFStringGetTypeID())
    {
      v72 = "title entry language is not a string";
      goto LABEL_91;
    }

    v53 = CFDictionaryGetValue(v48, @"title");
    if (!v53)
    {
      v72 = "Missing title value in titles entry";
      goto LABEL_91;
    }

    v54 = v53;
    v55 = CFGetTypeID(v53);
    if (v55 != CFStringGetTypeID())
    {
      break;
    }

    v56 = createMetadataItem(@"title", v54, v51, @"comn", &v89);
    if (v56)
    {
      goto LABEL_92;
    }

    v57 = v89;
    v56 = sdpp_AddMetadataItemToChapterDictionary(v18, v89);
    if (v56)
    {
      goto LABEL_92;
    }

    if (v57)
    {
      CFRelease(v57);
      v89 = 0;
    }

    if (v46 == ++v47)
    {
      value_low = 0;
      a3 = v77;
      v24 = v83;
      goto LABEL_54;
    }
  }

  v72 = "title value is not a string";
LABEL_91:
  createErrorLogEntry(a1, v72);
LABEL_92:
  value_low = v56;
  v12 = v80;
LABEL_93:
  if (v89)
  {
    CFRelease(v89);
  }

  if (v90[0])
  {
    CFRelease(v90[0]);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return value_low;
}

uint64_t createMetadataItem(void *value, const void *a2, const void *a3, const void *a4, CFMutableDictionaryRef *a5)
{
  Mutable = *a5;
  if (*a5 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*a5 = Mutable) != 0))
  {
    CFDictionaryAddValue(Mutable, @"key", value);
    CFDictionaryAddValue(*a5, @"keyspace", a4);
    if (a3)
    {
      CFDictionaryAddValue(*a5, @"extendedLanguageTag", a3);
    }

    if (a2)
    {
      CFDictionaryAddValue(*a5, @"value", a2);
    }

    return 0;
  }

  else
  {
    createMetadataItem_cold_1(&v12);
    return v12;
  }
}

uint64_t createChapterMetadataArtworkItem(uint64_t a1, const void *a2, const __CFDictionary *a3, const void *a4, __CFDictionary **a5)
{
  v30 = 0;
  v10 = createMetadataItem(@"artwork", 0, 0, @"comn", &v30);
  v11 = v30;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v30 == 0;
  }

  if (v12)
  {
    v24 = v10;
    v17 = v30;
    if (!v30)
    {
      return v24;
    }

    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(a3, @"url");
  if (!Value)
  {
    v26 = "missing chapter artwork url";
LABEL_23:
    createErrorLogEntry(a1, v26);
    v24 = v27;
LABEL_25:
    v17 = v11;
    goto LABEL_17;
  }

  v14 = Value;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v14))
  {
    v26 = "Chapter artwork URL is not a string";
    goto LABEL_23;
  }

  CFDictionaryAddValue(v11, @"URL", v14);
  if (a4)
  {
    CFDictionaryAddValue(v11, @"baseURL", a4);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createChapterMetadataArtworkItem_cold_1(&v31);
    v24 = v31;
    goto LABEL_25;
  }

  v17 = Mutable;
  CFDictionaryAddValue(Mutable, @"resolutionKey", a2);
  v18 = CFDictionaryGetValue(a3, @"pixel-height");
  if (v18)
  {
    v19 = v18;
    v20 = CFNumberGetTypeID();
    if (v20 != CFGetTypeID(v19))
    {
      v28 = "image height is not a number";
      goto LABEL_28;
    }

    CFDictionaryAddValue(v17, @"pixelHeight", v19);
  }

  v21 = CFDictionaryGetValue(a3, @"pixel-width");
  if (v21)
  {
    v22 = v21;
    v23 = CFNumberGetTypeID();
    if (v23 == CFGetTypeID(v22))
    {
      CFDictionaryAddValue(v17, @"pixelWidth", v22);
      goto LABEL_16;
    }

    v28 = "image width is not a number";
LABEL_28:
    createErrorLogEntry(a1, v28);
    v24 = v29;
    CFRelease(v11);
    goto LABEL_17;
  }

LABEL_16:
  CFDictionaryAddValue(v11, @"iTunesImageResolution", v17);
  v24 = 0;
  *a5 = v11;
LABEL_17:
  CFRelease(v17);
  return v24;
}

uint64_t FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntry(const void *a1, const void *a2, const __CFURL *a3, uint64_t a4, CFTypeRef *a5, CFDictionaryRef *a6, double a7)
{
  if (_os_feature_enabled_impl())
  {

    return FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryRemote(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {

    return FigHLSSessionDataCopyChapterMetadataAndCopyErrorLogEntryInProcess(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t FigHLSSessionDataCopyMetadataEntryInProcess(void *a1, const void *a2, const void *a3, CFURLRef url, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  if (url)
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
    if (!PathComponent)
    {
      FigHLSSessionDataCopyMetadataEntryInProcess_cold_1(&v16);
      return v16;
    }

    v10 = PathComponent;
    v11 = CFURLGetString(PathComponent);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = createMetadataItem(a1, a2, a3, @"mdta", &theDict);
  if (v12)
  {
    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  else
  {
    v13 = theDict;
    if (v11)
    {
      CFDictionarySetValue(theDict, @"baseURL", v11);
    }

    *a5 = v13;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t FigHLSSessionDataCopyMetadataEntry(void *a1, const void *a2, const void *a3, const __CFURL *a4, CFMutableDictionaryRef *a5)
{
  if (_os_feature_enabled_impl())
  {

    return FigHLSSessionDataCopyMetadataEntryRemote(a1, a2, a3, a4, a5);
  }

  else
  {

    return FigHLSSessionDataCopyMetadataEntryInProcess(a1, a2, a3, a4, a5);
  }
}

uint64_t sdpp_AddMetadataItemToChapterDictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, @"ChapterMetadataItems");
  if (Value)
  {
    CFArrayAppendValue(Value, a2);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      sdpp_AddMetadataItemToChapterDictionary_cold_1(&v8);
      return v8;
    }

    v6 = Mutable;
    CFDictionarySetValue(a1, @"ChapterMetadataItems", Mutable);
    CFArrayAppendValue(v6, a2);
    CFRelease(v6);
  }

  return 0;
}

CFDictionaryRef OUTLINED_FUNCTION_1_120@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CMTime *time, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeCopyAsDictionary(&time, v18);
}

uint64_t FigNeroidGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigNeroidGetClassID_sRegisterFigNeroidTypeOnce != -1)
  {
    FigNeroidGetClassID_cold_1();
  }

  return FigNeroidGetClassID_sFigNeroidClassID;
}

uint64_t __FigNeroidGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigNeroidGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigNeroidGetClassID_sRegisterFigNeroidTypeOnce != -1)
  {
    FigNeroidGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

double FigDCP_TruncateFile(uint64_t a1, off_t a2)
{
  DarwinFileDesc = FigFileGetDarwinFileDesc();
  if (ftruncate(DarwinFileDesc, a2))
  {
    emitter = fig_log_get_emitter();
    v7 = *__error();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< FDCP_Limited >>>>", 483, v2);
  }

  return result;
}

uint64_t FigLimitedDiskCacheProviderCreate(uint64_t a1, const void *a2, const void *a3, int a4, CFTypeRef *a5)
{
  if (!a2)
  {
    FigLimitedDiskCacheProviderCreate_cold_2(&v17);
    return v17;
  }

  if (!a5)
  {
    FigLimitedDiskCacheProviderCreate_cold_1(&v17);
    return v17;
  }

  *a5 = 0;
  FigDiskCacheProviderGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[7] = 0x100000;
  *DerivedStorage = CFRetain(a2);
  if (!a3)
  {
    v14 = 0;
    v15 = 2;
    goto LABEL_8;
  }

  v12 = CFRetain(a3);
  DerivedStorage[2] = v12;
  if (v12)
  {
    v13 = CFURLGetString(v12);
    v14 = CFRetain(v13);
    v15 = 1;
LABEL_8:
    DerivedStorage[v15] = v14;
  }

  DerivedStorage[9] = 0x200000000002;
  if (!a4)
  {
    FigDCP_InitializeDiskCache(DerivedStorage, a1, 1);
  }

  v10 = 0;
  *a5 = 0;
  return v10;
}

uint64_t FigLimitedDiskCacheProvider_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    return 0;
  }

  v3 = DerivedStorage;
  *(DerivedStorage + 88) = 1;
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  if (*(DerivedStorage + 91))
  {
    FigFileForkClose();
    *(v3 + 40) = 0;
    FigFileDeleteFile();
    v5 = *v3;
    v4 = *(v3 + 8);

    return FigShared_DeleteFromDiskCache(v4, v5);
  }

  else
  {
    v6 = FigShared_CheckIntoDiskCache(*(DerivedStorage + 8));
    FigFileForkClose();
    *(v3 + 40) = 0;
    return v6;
  }
}

void FigLimitedDiskCacheProvider_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *FigLimitedDiskCacheProvider_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 88))
  {
    v3 = "No";
  }

  else
  {
    v3 = "Yes";
  }

  CFStringAppendFormat(Mutable, 0, @"FigLimitedDiskCacheProvider <%p>\n\tValid: <%s>\n\tcacheFileKey: <%@>\n\tcacheFolder: <%@>\n\tcacheFileURL: <%@>", DerivedStorage, v3, *DerivedStorage, *(DerivedStorage + 8), *(DerivedStorage + 32));
  return Mutable;
}

uint64_t FigLimitedDiskCacheProvider_CopyProperty(const void *a1, const void *a2, uint64_t a3, __CFData **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigLimitedDiskCacheProvider_CopyProperty_cold_2(&v22);
    return v22;
  }

  if (!a4)
  {
    FigLimitedDiskCacheProvider_CopyProperty_cold_1(&v22);
    return v22;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"CacheIdentifier"))
  {
    v17 = CFGetAllocator(a1);
    FigDCP_InitializeDiskCache(v8, v17, 0);
    v18 = *(v8 + 64);
    if (v18)
    {
      v15 = CFRetain(v18);
      goto LABEL_11;
    }

    return 4294954513;
  }

  if (CFEqual(a2, @"CacheBlockSize"))
  {
    v10 = *(v8 + 80);
    v9 = (v8 + 80);
    if (!v10)
    {
      return 4294954513;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"CacheMapEntrySize"))
  {
    v11 = *(v8 + 84);
    v9 = (v8 + 84);
    if (v11)
    {
LABEL_9:
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberSInt32Type;
      v14 = v9;
LABEL_10:
      v15 = CFNumberCreate(v12, v13, v14);
LABEL_11:
      v16 = 0;
      *a4 = v15;
      return v16;
    }

    return 4294954513;
  }

  if (!CFEqual(a2, @"CacheMap"))
  {
    if (!CFEqual(a2, @"CacheSize"))
    {
      return 4294954512;
    }

    v22 = 0;
    FigDCP_GetCacheSizeLimit(v8, &v22);
    if (!v20)
    {
      v12 = *MEMORY[0x1E695E480];
      v14 = &v22;
      v13 = kCFNumberSInt64Type;
      goto LABEL_10;
    }

    return 4294954513;
  }

  v19 = CFGetAllocator(a1);
  v16 = 4294954513;
  if (!FigDCP_InitializeDiskCache(v8, v19, 0))
  {
    if (FigDCP_CopyAtomDataFromCacheFile(*(v8 + 48), 0, 1937011572, a4))
    {
      return 4294954513;
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

void FigDCP_NewDiskCacheFile(const __CFURL *a1, int a2, CFURLRef *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    __strlcat_chk();
    v5 = mkstemp(buffer);
    v6 = __error();
    if (v5 == -1)
    {
      FigDCP_NewDiskCacheFile_cold_2(v6, &v9 + 1);
    }

    else
    {
      close(v5);
      v7 = strlen(buffer);
      v8 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], buffer, v7, 0);
      *a3 = v8;
      if (v8)
      {
        FigFileForkOpenMainByCFURL();
      }

      else
      {
        FigDCP_NewDiskCacheFile_cold_1(&v9 + 1);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, buffer[0], buffer[2]);
  }
}

double OUTLINED_FUNCTION_4_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return FigDCP_FindAtomData(a1, a2, 1986359930, &a12, &a11);
}

uint64_t FigVTTStyleCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a3)
  {
    FigVTTNodeGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v7 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (v7)
      {
        return v7;
      }

      else
      {
        if (a2)
        {
          v8 = CFRetain(a2);
        }

        else
        {
          v8 = 0;
        }

        v5 = 0;
        *(DerivedStorage + 16) = v8;
        *a3 = 0;
      }
    }
  }

  else
  {
    FigVTTStyleCreate_cold_1(&v10);
    return v10;
  }

  return v5;
}

void figVTTStyle_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTStyle_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"style: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTStyle_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 6;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTStyle_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTStyle_copyNodeDocumentSerialization(const void *a1, CFStringRef *a2)
{
  theDict = 0;
  if (!a2)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_4(&v15);
    return v15;
  }

  *a2 = 0;
  MEMORY[0x19A8D3660](&getCaptionVTTAttributeToCSSPropertyMapping_once, initCaptionVTTAttributeToCSSPropertyMapping);
  v4 = sCaptionVTTAttributeToCSSPropertyMapping;
  if (!sCaptionVTTAttributeToCSSPropertyMapping)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_3(&v15);
    v8 = 0;
    goto LABEL_18;
  }

  v5 = FigVTTNodeCopyAttributes(a1, &theDict);
  if (v5)
  {
    v9 = v5;
    v8 = 0;
    goto LABEL_8;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  v8 = Mutable;
  if (!Mutable)
  {
    figVTTStyle_copyNodeDocumentSerialization_cold_2(&v15);
    goto LABEL_18;
  }

  context[1] = Mutable;
  v13 = 0;
  context[0] = v4;
  CFDictionaryApplyFunction(theDict, serializeOneAttributeToCSSProperty, context);
  v9 = v13;
  if (!v13)
  {
    StyleName = FigVTTStyleGetStyleName(a1);
    if (StyleName)
    {
      v9 = 0;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @".%@ {\n%@}", StyleName, v8);
      goto LABEL_8;
    }

    figVTTStyle_copyNodeDocumentSerialization_cold_1(&v15);
LABEL_18:
    v9 = v15;
  }

LABEL_8:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void initCaptionVTTAttributeToCSSPropertyMapping()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ background-color", FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ writing-mode", FigVTTDocumentWriterMapAttributeToCSS_WritingMode);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ color", FigVTTDocumentWriterMapAttributeToCSS_TextColor);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-weight", FigVTTDocumentWriterMapAttributeToCSS_FontWeight);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-style", FigVTTDocumentWriterMapAttributeToCSS_FontStyle);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-decoration", FigVTTDocumentWriterMapAttributeToCSS_Decoration);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ text-align", FigVTTDocumentWriterMapAttributeToCSS_TextAlign);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-family", FigVTTDocumentWriterMapAttributeToCSS_FontFamily);
  CFDictionaryAddValue(Mutable, @"https://www.w3.org/Style/CSS/ font-size", FigVTTDocumentWriterMapAttributeToCSS_FontSize);
  sCaptionVTTAttributeToCSSPropertyMapping = Mutable;
}

uint64_t FigFullDownloadDiskCacheProviderCreate(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v23 = 0;
  cf = 0;
  v22 = 0;
  MEMORY[0x19A8D3660](&FigFullDownloadDiskCacheProviderCreate_sCreateBusyCacheFileMappingOnce, FigDCP_SetupBusyCacheFileMapping);
  if (!_MergedGlobals_86)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_6(&v25);
LABEL_58:
    v9 = v25;
    goto LABEL_40;
  }

  if (!gFigFDCPBusyCacheFileToCacheIDDict)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_5(&v25);
    goto LABEL_58;
  }

  if (!qword_1ED4CAFB8)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_4(&v25);
    goto LABEL_58;
  }

  if (!a2)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_3(&v25);
    goto LABEL_58;
  }

  if (!a3)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_2(&v25);
    goto LABEL_58;
  }

  if (!a4)
  {
    FigFullDownloadDiskCacheProviderCreate_cold_1(&v25);
    goto LABEL_58;
  }

  FigDiskCacheProviderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v9 = v7;
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  *(DerivedStorage + 8) = CFRetain(a3);
  if (FigFileDoesFileExist() && FigFileForkOpenMainByCFURL())
  {
    v9 = 4294954754;
  }

  else
  {
    v10 = (DerivedStorage + 24);
    if (*(DerivedStorage + 24))
    {
      DarwinFileDesc = FigFileGetDarwinFileDesc();
      if (fgetxattr(DarwinFileDesc, "com.apple.coremedia.cachemap.offset", 0, 0, 0, 0) == -1)
      {
        if (!FigDCP_IsFileEmpty(*v10, 0))
        {
          v9 = 4294954756;
          goto LABEL_40;
        }
      }

      else
      {
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(_MergedGlobals_86, *(DerivedStorage + 8));
        v13 = *MEMORY[0x1E695E738];
        if (Value == *MEMORY[0x1E695E738])
        {
          Value = 0;
        }

        *(DerivedStorage + 32) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        v14 = CFDictionaryGetValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8));
        if (v14 == v13)
        {
          v14 = 0;
        }

        *(DerivedStorage + 40) = v14;
        v15 = (DerivedStorage + 40);
        if (v14)
        {
          CFRetain(v14);
        }

        FigSimpleMutexUnlock();
        if (*(DerivedStorage + 32))
        {
          *(DerivedStorage + 50) = 1;
        }

        else if (FigByteStreamCreateFromOpenFile() || *v10 && (v16 = FigFileGetDarwinFileDesc(), fgetxattr(v16, "com.apple.coremedia.cachemap.offset", &v22, 8uLL, 0, 0) == -1) && (fig_log_get_emitter(), __error(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, cf), v17) || (FigDCP_CheckCacheFileVersion(v23, v22), v21) || FigDCP_CopyIDFromCacheFile(v23, v22, (DerivedStorage + 40)) || FigDCP_CopyAtomDataFromCacheFile(v23, v22, 1937011572, (DerivedStorage + 32)))
        {
          if (*v15)
          {
            CFRelease(*v15);
            *v15 = 0;
          }
        }
      }
    }

    if (*(DerivedStorage + 40))
    {
      goto LABEL_30;
    }

    if (*v10)
    {
      FigFileForkClose();
      *v10 = 0;
    }

    v18 = FigFileForkOpenMainByCFURL();
    if (!v18)
    {
LABEL_30:
      v9 = 0;
      *a4 = cf;
      goto LABEL_42;
    }

    if (v18 == 69 || v18 == 28)
    {
      v9 = 4294954755;
    }

    else
    {
      v9 = 4294954756;
    }
  }

LABEL_40:
  if (!cf)
  {
    goto LABEL_43;
  }

  CFRelease(cf);
LABEL_42:
  cf = 0;
LABEL_43:
  if (v23)
  {
    CFRelease(v23);
  }

  return v9;
}

uint64_t FigDCP_SetupBusyCacheFileMapping()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  _MergedGlobals_86 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  gFigFDCPBusyCacheFileToCacheIDDict = CFDictionaryCreateMutable(v0, 0, v1, v2);
  result = FigSimpleMutexCreate();
  qword_1ED4CAFB8 = result;
  return result;
}

uint64_t FigFullDownloadDiskCacheProvider_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 48))
  {
    *(DerivedStorage + 48) = 1;
  }

  return 0;
}

void FigFullDownloadDiskCacheProvider_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  if (*(DerivedStorage + 24))
  {
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(_MergedGlobals_86, *(DerivedStorage + 8)))
    {
      FigSimpleMutexUnlock();
      FigFileForkClose();
      *(DerivedStorage + 24) = 0;
    }

    else
    {
      v4 = *MEMORY[0x1E695E738];
      if (*(DerivedStorage + 32))
      {
        v5 = *(DerivedStorage + 32);
      }

      else
      {
        v5 = *MEMORY[0x1E695E738];
      }

      CFDictionaryAddValue(_MergedGlobals_86, *(DerivedStorage + 8), v5);
      if (*(DerivedStorage + 40))
      {
        v6 = *(DerivedStorage + 40);
      }

      else
      {
        v6 = v4;
      }

      CFDictionaryAddValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8), v6);
      FigSimpleMutexUnlock();
      FigFileForkClose();
      *(DerivedStorage + 24) = 0;
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(_MergedGlobals_86, *(DerivedStorage + 8));
      CFDictionaryRemoveValue(gFigFDCPBusyCacheFileToCacheIDDict, *(DerivedStorage + 8));
      FigSimpleMutexUnlock();
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v7 = *(DerivedStorage + 8);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 8) = 0;
  }

  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 40) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *FigFullDownloadDiskCacheProvider_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = "No";
  if (*(DerivedStorage + 48))
  {
    v4 = "No";
  }

  else
  {
    v4 = "Yes";
  }

  if (*(DerivedStorage + 49))
  {
    v3 = "Yes";
  }

  CFStringAppendFormat(Mutable, 0, @"FigFullDownloadDiskCacheProvider <%p>\n\tValid: <%s>\n\tsourceURL: <%@>\n\tcacheFileURL: <%@>\n\tcacheFileSize: <%lld>\n\tcacheComplete: <%s>", DerivedStorage, v4, *DerivedStorage, *(DerivedStorage + 16), v3);
  return Mutable;
}

uint64_t FigFullDownloadDiskCacheProvider_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"CacheIdentifier"))
      {
        v8 = *(v7 + 40);
        if (v8)
        {
LABEL_5:
          v9 = CFRetain(v8);
LABEL_8:
          v10 = v9;
          result = 0;
          *a4 = v10;
          return result;
        }
      }

      else
      {
        if (CFEqual(a2, @"CacheSize"))
        {
          v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v7 + 16));
          goto LABEL_8;
        }

        if (!CFEqual(a2, @"CacheMap"))
        {
          if (CFEqual(a2, @"CacheIsComplete"))
          {
            v12 = MEMORY[0x1E695E4D0];
            v13 = *(v7 + 49);
          }

          else
          {
            if (!CFEqual(a2, @"CacheIsBusy"))
            {
              return 4294954512;
            }

            v12 = MEMORY[0x1E695E4D0];
            v13 = *(v7 + 50);
          }

          if (!v13)
          {
            v12 = MEMORY[0x1E695E4C0];
          }

          v8 = *v12;
          goto LABEL_5;
        }

        v8 = *(v7 + 32);
        if (v8)
        {
          goto LABEL_5;
        }
      }

      return 4294954513;
    }

    else
    {
      FigFullDownloadDiskCacheProvider_CopyProperty_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    FigFullDownloadDiskCacheProvider_CopyProperty_cold_2(&v15);
    return v15;
  }
}

void FigFullDownloadDiskCacheProvider_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigFullDownloadDiskCacheProvider_SetProperty_cold_3(&v16);
    return;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    FigFullDownloadDiskCacheProvider_SetProperty_cold_1(&v15);
    return;
  }

  if (CFEqual(a2, @"CacheIdentifier"))
  {
    v8 = *(v7 + 40);
    *(v7 + 40) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v8)
    {
      goto LABEL_7;
    }

    return;
  }

  if (CFEqual(a2, @"CacheSize"))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFNumberGetTypeID())
      {
        FigFullDownloadDiskCacheProvider_SetProperty_cold_2(v7, a3);
        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 692;
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"CacheMap"))
  {
    if (!CFEqual(a2, @"CacheIsComplete"))
    {
      return;
    }

    if (a3)
    {
      *(v7 + 49) = CFEqual(a3, *MEMORY[0x1E695E4D0]);
      return;
    }

    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 721;
    goto LABEL_13;
  }

  if (!a3)
  {

    FigDCP_RemoveCacheMap(v7, 0);
    return;
  }

  v13 = CFGetTypeID(a3);
  if (v13 != CFDataGetTypeID())
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 711;
LABEL_13:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FDCP_FullDownload >>>>", v12, v11);
    return;
  }

  if (!*(v7 + 48))
  {
    FigDCP_WriteOutCacheFile(v7, a3);
    if (!v14)
    {
      v8 = *(v7 + 32);
      *(v7 + 32) = a3;
      CFRetain(a3);
      if (v8)
      {
LABEL_7:
        CFRelease(v8);
      }
    }
  }
}

void FigDCP_WriteOutCacheFile(uint64_t a1, const __CFData *a2)
{
  cf = 0;
  v35 = 0x1000000;
  err = 0;
  v33 = 0;
  if (!*(a1 + 49))
  {
    v36 = 0;
    FigDCP_IsFileEmpty(*(a1 + 24), &v33);
    v4 = v33;
    v5 = *MEMORY[0x1E695E480];
    if (FigByteStreamCreateFromOpenFile())
    {
      goto LABEL_28;
    }

    v6 = CFPropertyListCreateData(v5, *(a1 + 40), kCFPropertyListXMLFormat_v1_0, 0, &err);
    if (err)
    {
      v7 = CFErrorCopyFailureReason(err);
      CFErrorGetCode(err);
      if (v7)
      {
        CFRelease(v7);
      }

      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v6)
      {
        FigDCP_WriteOutCacheFile_cold_1(&value);
        goto LABEL_28;
      }

      HIDWORD(v36) = 1684632691;
      LODWORD(v36) = bswap32(CFDataGetLength(v6) + 8);
      v9 = cf;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v10)
      {
        if (!v10(v9, 8, v4, &v36, 0))
        {
          v11 = cf;
          Length = CFDataGetLength(v6);
          BytePtr = CFDataGetBytePtr(v6);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v14)
          {
            v15 = v4 + 8;
            if (!v14(v11, Length, v15, BytePtr, 0))
            {
              v16 = CFDataGetLength(v6);
              HIDWORD(v36) = 1953723507;
              LODWORD(v36) = bswap32(CFDataGetLength(a2) + 8);
              v17 = cf;
              v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v18)
              {
                v19 = v16 + v15;
                if (!v18(v17, 8, v19, &v36, 0))
                {
                  v20 = cf;
                  v21 = CFDataGetLength(a2);
                  v22 = CFDataGetBytePtr(a2);
                  v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (v23)
                  {
                    v24 = v19 + 8;
                    if (!v23(v20, v21, v24, v22, 0))
                    {
                      v25 = CFDataGetLength(a2);
                      v36 = 0x7A7265760C000000;
                      v26 = cf;
                      v27 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v27)
                      {
                        v28 = v25 + v24;
                        if (!v27(v26, 8, v28, &v36, 0))
                        {
                          v29 = cf;
                          v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                          if (v30)
                          {
                            if (!v30(v29, 4, v28 + 8, &v35, 0))
                            {
                              value = v33;
                              if (*(a1 + 24))
                              {
                                DarwinFileDesc = FigFileGetDarwinFileDesc();
                                if (fsetxattr(DarwinFileDesc, "com.apple.coremedia.cachemap.offset", &value, 8uLL, 0, 0) == -1)
                                {
                                  fig_log_get_emitter();
                                  __error();
                                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", err, v33, v34);
                                }
                              }

                              FigFileForkTruncate();
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
        }
      }
    }

    CFRelease(v6);
LABEL_28:
    if (cf)
    {
      CFRelease(cf);
    }

    if (err)
    {
      CFRelease(err);
    }

    return;
  }

  v8 = *(a1 + 16);

  FigDCP_RemoveCacheMap(a1, v8);
}

uint64_t FigFullDownloadDiskCacheProvider_GetBacking(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48))
  {
    FigFullDownloadDiskCacheProvider_GetBacking_cold_1();
    return 0;
  }

  if (!(a4 | a5))
  {
    FigFullDownloadDiskCacheProvider_GetBacking_cold_2();
    return 0;
  }

  v9 = DerivedStorage;
  if (*(DerivedStorage + 50))
  {
    FigSimpleMutexLock();
    if (!CFDictionaryContainsKey(_MergedGlobals_86, *(v9 + 8)))
    {
      *(v9 + 50) = 0;
    }

    FigSimpleMutexUnlock();
    if (*(v9 + 50))
    {
      if (a4)
      {
        *a4 = *(v9 + 24);
      }

      if (a5)
      {
        result = 0;
        *a5 = -1;
        return result;
      }

      return 0;
    }
  }

  if (a4)
  {
    *a4 = *(v9 + 24);
  }

  if (a5)
  {
    *a5 = a3;
  }

  return 1;
}

uint64_t FigByteStreamFactorySetCachedFileByteStreamEnable(uint64_t a1)
{
  gUseCachedFileByteStream = a1;
  result = FigGetCFPreferenceBooleanWithDefault();
  gUseCachedFileByteStream = result;
  return result;
}

uint64_t FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync(const __CFURL *a1, __int16 a2, const __CFDictionary *a3, void (*a4)(uint64_t, const __CFNumber *, void, void, void, void), uint64_t a5)
{
  v10 = CFURLCopyScheme(a1);
  if (!FigCFURLIsLocalResource())
  {
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x80040803F642BuLL);
    if (!v14)
    {
      FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_9(&v102);
      v40 = v102;
      if (!v10)
      {
        return v40;
      }

      goto LABEL_36;
    }

    v15 = v14;
    *v14 = a4;
    v14[1] = a5;
    v90 = FigCFHTTPIsHTTPBasedURL(a1);
    LOBYTE(v103) = 0;
    v102 = 0;
    if (a3)
    {
      v89 = v15;
      v16 = CFURLGetTypeID();
      ValueOfType = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NetworkCacheURL", v16);
      v17 = CFURLGetTypeID();
      v18 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DownloadDestinationURL", v17);
      TypeID = CFDictionaryGetTypeID();
      v99 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_HTTPHeaders", TypeID);
      CFTypeID = FigCustomURLLoaderGetCFTypeID();
      cf = FigCFDictionaryGetValueOfType(a3, @"factoryOption_CustomURLLoader", CFTypeID);
      v21 = CFBooleanGetTypeID();
      v22 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_UseAWDL", v21);
      v23 = *MEMORY[0x1E695E4D0];
      v98 = v22 == *MEMORY[0x1E695E4D0];
      v24 = CFStringGetTypeID();
      FigCFDictionaryGetValueOfType(a3, @"factoryOption_Backing", v24);
      v25 = CFBooleanGetTypeID();
      v26 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NoPersistentCache", v25) != v23;
      v27 = CFNumberGetTypeID();
      number = FigCFDictionaryGetValueOfType(a3, @"factoryOption_NonPurgeableMemoryLimit", v27);
      v28 = CFBooleanGetTypeID();
      v95 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DisableNetworkLargeDownload", v28) == v23;
      v29 = CFBooleanGetTypeID();
      v94 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DisableNetworkProbeRequest", v29) == v23;
      v30 = CFNumberGetTypeID();
      v93 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_MaxSizeAllowedForCellularAccess", v30);
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v31 = CFDictionaryGetTypeID();
      v32 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_HTTPRequestOptions", v31);
      v33 = CFDictionaryGetTypeID();
      v34 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_AlternativeConfigurationOptions", v33);
      v35 = CFBooleanGetTypeID();
      BYTE4(v92) = FigCFDictionaryGetValueOfType(a3, @"factoryOption_RequiresCustomURLLoading", v35) == v23;
      v36 = CFBooleanGetTypeID();
      v96 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_DelayReadAheadUntilExplicitlyHinted", v36) != v23;
      v37 = CFBooleanGetTypeID();
      LOBYTE(v92) = FigCFDictionaryGetValueOfType(a3, @"factoryOption_AlwaysFollowRedirects", v37) == v23;
      v38 = CFBooleanGetTypeID();
      v91 = FigCFDictionaryGetValueOfType(a3, @"factoryOption_EnableMultiPath", v38) == v23;
      Value = CFDictionaryGetValue(a3, @"factoryOption_StoreBagSessionConfiguration");
      v102 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      a3 = CFDictionaryGetValue(a3, @"factoryOption_ParentNetworkActivity");
      if (v102)
      {
LABEL_10:
        v15 = v89;
        if (!v18)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v32)
      {
        v46 = CFDictionaryGetValue(v32, @"FHRP_ClientAuditToken");
        v47 = FigCFHTTPCopyClientProcessName(v46);
        FigRCLCreateConfiguration(v47, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS", 0, &v102);
        if (v47)
        {
          CFRelease(v47);
        }

        goto LABEL_10;
      }

      v15 = v89;
    }

    else
    {
      v98 = 0;
      v94 = 0;
      v95 = 0;
      number = 0;
      ValueOfType = 0;
      v18 = 0;
      v99 = 0;
      cf = 0;
      v92 = 0;
      v93 = 0;
      v34 = 0;
      v91 = 0;
      v26 = 1;
      v96 = 1;
    }

    FigRCLCreateConfiguration(0, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS", 0, &v102);
    v32 = 0;
    if (!v18)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (!v26 || FigCFEqual())
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, number, ValueOfType);
      v40 = v43;
      goto LABEL_33;
    }

    v26 = 1;
LABEL_43:
    v48 = malloc_type_calloc(1uLL, 0x98uLL, 0x10E0040B55CB63AuLL);
    if (!v48)
    {
      FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_8(&valuePtr);
      v40 = valuePtr;
      goto LABEL_33;
    }

    v49 = v48;
    *v48 = fbfs_createHHTPURLStreamCallback;
    v48[1] = v15;
    v50 = cf;
    if (cf)
    {
      v50 = CFRetain(cf);
    }

    *(v49 + 40) = v50;
    v51 = v99;
    if (v99)
    {
      v51 = CFRetain(v99);
    }

    *(v49 + 24) = v51;
    *(v49 + 93) = v98;
    *(v49 + 100) = v95;
    *(v49 + 101) = v94;
    v52 = v93;
    if (v93)
    {
      v52 = CFRetain(v93);
    }

    *(v49 + 104) = v52;
    *(v49 + 112) = 0;
    *(v49 + 113) = v103;
    if (v32)
    {
      v53 = CFRetain(v32);
    }

    else
    {
      v53 = 0;
    }

    *(v49 + 120) = v53;
    if (v34)
    {
      v54 = CFRetain(v34);
    }

    else
    {
      v54 = 0;
    }

    *(v49 + 80) = v54;
    *(v49 + 114) = BYTE4(v92);
    *(v49 + 115) = v92;
    *(v49 + 116) = v91;
    v55 = v102;
    if (v102)
    {
      v55 = CFRetain(v102);
    }

    *(v49 + 128) = v55;
    if (a3)
    {
      v56 = CFRetain(a3);
    }

    else
    {
      v56 = 0;
    }

    *(v49 + 136) = v56;
    if (v26 && (v18 || FigCFEqual()))
    {
      v57 = 1;
      v58 = v96;
    }

    else
    {
      if (FigCFEqual())
      {
        *(v49 + 72) |= 2u;
      }

      v58 = v96;
      if (v26)
      {
        if (!v96)
        {
          goto LABEL_93;
        }

        goto LABEL_69;
      }

      v57 = 4;
    }

    *(v49 + 72) |= v57;
    if (!v58)
    {
LABEL_93:
      *(v49 + 72) |= 8u;
      if ((a2 & 0x1000) != 0)
      {
LABEL_94:
        *(v49 + 72) |= 0x10u;
        if ((a2 & 8) != 0)
        {
LABEL_95:
          *(v49 + 88) |= 1u;
          if ((a2 & 0x20) == 0)
          {
LABEL_73:
            v59 = CFURLCopyAbsoluteURL(a1);
            if (!v59)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_7(&valuePtr);
              v40 = valuePtr;
LABEL_154:
              fbfs_FreeFigHTTPOpenCompletion(v49);
LABEL_33:
              v44 = v102;
              if (!v102)
              {
                if (!v40)
                {
                  goto LABEL_35;
                }

                goto LABEL_134;
              }

LABEL_133:
              CFRelease(v44);
              if (!v40)
              {
                goto LABEL_35;
              }

LABEL_134:
              free(v15);
              if (!v10)
              {
                return v40;
              }

              goto LABEL_36;
            }

            v60 = v59;
            *(v49 + 16) = CFRetain(v59);
            v61 = FigCFURLCreateCacheKey();
            if (!v61)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_6(&valuePtr);
              v40 = valuePtr;
LABEL_153:
              CFRelease(v60);
              goto LABEL_154;
            }

            v62 = v61;
            if ((a2 & 0x400) != 0)
            {
              GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
              if (GlobalNetworkBufferingLowPriorityQueue)
              {
                *(v49 + 144) = FigHTTPSchedulerRetain(GlobalNetworkBufferingLowPriorityQueue, v64);
              }
            }

            if (v18)
            {
              v40 = FigFullDownloadDiskCacheProviderCreate(*MEMORY[0x1E695E480], v60, v18, (v49 + 32));
              goto LABEL_80;
            }

            v70 = (*(v49 + 72) & 1) == 0 || FigCFHTTPIsDataURL(a1);
            v71 = *MEMORY[0x1E695E480];
            v72 = FigLimitedDiskCacheProviderCreate(*MEMORY[0x1E695E480], v62, ValueOfType, v70, (v49 + 32));
            v40 = v72;
            if ((v70 & 1) != 0 || v72)
            {
              if (!v70)
              {
                goto LABEL_80;
              }
            }

            else
            {
              valuePtr = 0;
              *keyExistsAndHasValidFormat = 0;
              FigDiskCacheProviderGetFigBaseObject();
              v74 = v73;
              v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v75 && !v75(v74, @"CacheSize", v71, &valuePtr))
              {
                CFNumberGetValue(valuePtr, kCFNumberSInt64Type, keyExistsAndHasValidFormat);
              }

              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              if (*keyExistsAndHasValidFormat >= 0x2000000)
              {
                goto LABEL_81;
              }
            }

            *(v49 + 72) = *(v49 + 72) & 0xFFFFFFFC | 2;
            if (*(v49 + 32))
            {
              FigDiskCacheProviderGetFigBaseObject();
              v77 = v76;
              v78 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v78)
              {
                v78(v77, @"NoPersistentCache", *MEMORY[0x1E695E4D0]);
              }
            }

LABEL_80:
            if (v40)
            {
LABEL_152:
              CFRelease(v62);
              goto LABEL_153;
            }

LABEL_81:
            v65 = *(v49 + 72);
            if (v65)
            {
              if (qword_1ED4CAFD0 != -1)
              {
                FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_3();
              }

              v69 = qword_1ED4CAFD8;
            }

            else
            {
              valuePtr = 0;
              keyExistsAndHasValidFormat[0] = 0;
              if ((v65 & 2) != 0)
              {
                v66 = v15;
                if (number)
                {
                  CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
                  v68 = 0;
                }

                else
                {
                  v68 = 1;
                }

                v67 = 0x2000000;
              }

              else
              {
                v66 = v15;
                if (qword_1ED4CAFE0 != -1)
                {
                  FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_4();
                }

                v67 = qword_1ED4CAFE8;
                v68 = 1;
              }

              AppIntegerValue = CFPreferencesGetAppIntegerValue(@"crabs_cache_max_mb", @"com.apple.coremedia", keyExistsAndHasValidFormat);
              if (keyExistsAndHasValidFormat[0])
              {
                v80 = AppIntegerValue << 20;
              }

              else
              {
                v80 = valuePtr;
              }

              if (keyExistsAndHasValidFormat[0])
              {
                v81 = 0;
              }

              else
              {
                v81 = v68;
              }

              if (v80 <= 0x100000)
              {
                v81 = 1;
              }

              if (v81)
              {
                v69 = v67;
              }

              else
              {
                v69 = v80;
              }

              v15 = v66;
            }

            if (v69 < 0)
            {
              FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_5(&valuePtr);
              v40 = valuePtr;
            }

            else
            {
              CacheMemoryAllocatorForCRABS = FigCreateCacheMemoryAllocatorForCRABS(v69, (v49 + 56));
              if (CacheMemoryAllocatorForCRABS)
              {
                v40 = CacheMemoryAllocatorForCRABS;
              }

              else
              {
                FlumeAsync = fbfs_CreateFlumeAsync(v49, v90);
                if (!FlumeAsync)
                {
                  CFRelease(v62);
                  CFRelease(v60);
                  v44 = v102;
                  if (!v102)
                  {
                    v40 = 0;
                    if (!v10)
                    {
                      return v40;
                    }

                    goto LABEL_36;
                  }

                  v40 = 0;
                  goto LABEL_133;
                }

                v40 = FlumeAsync;
                v85 = *(v49 + 56);
                if (v85)
                {
                  CFRelease(v85);
                  *(v49 + 56) = 0;
                }
              }
            }

            goto LABEL_152;
          }

LABEL_72:
          *(v49 + 88) |= 2u;
          goto LABEL_73;
        }

LABEL_71:
        if ((a2 & 0x20) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

LABEL_70:
      if ((a2 & 8) != 0)
      {
        goto LABEL_95;
      }

      goto LABEL_71;
    }

LABEL_69:
    if ((a2 & 0x1000) != 0)
    {
      goto LABEL_94;
    }

    goto LABEL_70;
  }

  v102 = 0;
  v11 = CFURLCopyAbsoluteURL(a1);
  v12 = v11;
  if (!v11)
  {
    FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_2(&valuePtr);
    v40 = valuePtr;
    goto LABEL_23;
  }

  if ((a2 & 0x802) != 0 || !gUseCachedFileByteStream)
  {
    FigGetDefaultManagedFilePool();
    ByteStreamForFile = FigManagedFilePoolCreateByteStreamForFile();
  }

  else
  {
    ByteStreamForFile = FigCachedFileByteStreamCreate(v11, 0, *MEMORY[0x1E695E480], &v102);
  }

  v40 = ByteStreamForFile;
  if (!ByteStreamForFile)
  {
    if (!a3 || (valuePtr = 0, *keyExistsAndHasValidFormat = 0, !CFDictionaryGetValue(a3, @"factoryOption_ByteRangeInFile")))
    {
LABEL_22:
      a4(a5, v102, 0, 0, 0, 0);
      v40 = 0;
      goto LABEL_23;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      if (FigCFDictionaryGetInt64IfPresent())
      {
        v41 = CMByteStreamCreateCompositeForRead();
        if (!v41)
        {
          v42 = v102;
          v102 = valuePtr;
          if (v42)
          {
            CFRelease(v42);
          }

          goto LABEL_22;
        }

        v40 = v41;
        goto LABEL_23;
      }

      v84 = 2126;
    }

    else
    {
      v84 = 2125;
    }

    FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync_cold_1(v84, &v103);
    v40 = v103;
  }

LABEL_23:
  if (v102)
  {
    CFRelease(v102);
  }

  if (v12)
  {
    CFRelease(v12);
    if (!v10)
    {
      return v40;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (v10)
  {
LABEL_36:
    CFRelease(v10);
  }

  return v40;
}

uint64_t FigByteStreamFactoryCreateStreamFromURL(const __CFURL *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v15 = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v18 = Mutable;
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"factoryOption_NetworkCacheURL", a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v18, @"factoryOption_DownloadDestinationURL", a4);
    }

    if (a6)
    {
      CFDictionaryAddValue(v18, @"factoryOption_HTTPHeaders", a6);
    }

    StreamFromURLWithOptions = FigByteStreamFactoryCreateStreamFromURLWithOptions(a1, v15, v18, a7, a8, a9, 0, a10);
    CFRelease(v18);
    return StreamFromURLWithOptions;
  }

  else
  {
    FigByteStreamFactoryCreateStreamFromURL_cold_1(&v21);
    return v21;
  }
}

void fbfs_createHHTPURLStreamCallback(void *a1)
{
  (*a1)(a1[1]);

  free(a1);
}

uint64_t FigByteStreamFactoryCreateStreamFromURLAsync(const __CFURL *a1, __int16 a2, const void *a3, const void *a4, const void *a5, void (*a6)(uint64_t, const __CFNumber *, void, void, void, void), uint64_t a7)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v15 = Mutable;
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"factoryOption_NetworkCacheURL", a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v15, @"factoryOption_DownloadDestinationURL", a4);
    }

    if (a5)
    {
      CFDictionaryAddValue(v15, @"factoryOption_HTTPHeaders", a5);
    }

    StreamFromURLWithOptionsAsync = FigByteStreamFactoryCreateStreamFromURLWithOptionsAsync(a1, a2, v15, a6, a7);
    CFRelease(v15);
    return StreamFromURLWithOptionsAsync;
  }

  else
  {
    FigByteStreamFactoryCreateStreamFromURLAsync_cold_1(&v18);
    return v18;
  }
}

uint64_t fbsfCompletionRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAFC8 = result;
  return result;
}

double fbsfCompletion_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t fbsfCompletion_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  return FigSemaphoreDestroy();
}

const void *FigCFDictionaryGetValueOfType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFGetTypeID(Value) != a3)
  {
    return 0;
  }

  return v5;
}

uint64_t fbfs_CreateFlumeAsync(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  cf = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *keys = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *values = 0u;
  v35 = 0u;
  v4 = MEMORY[0x1E695E480];
  if ((*(a1 + 72) & 4) == 0)
  {
    FigDiskCacheProviderGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, @"CacheIdentifier", *v4, &cf);
    }
  }

  v8 = MEMORY[0x1E695E4D0];
  if (*(a1 + 93))
  {
    v9 = &values[1];
    v10 = &keys[1];
    keys[0] = @"FBFCreateOption_UseAWDL";
    values[0] = *MEMORY[0x1E695E4D0];
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = keys;
    v9 = values;
  }

  if (*(a1 + 100))
  {
    *v10 = @"FBFCreateOption_DisableLargeDownload";
    *v9 = *v8;
    ++v11;
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    keys[v11] = @"FBFCreateOption_MaxSizeAllowedForCellularAccess";
    values[v11++] = v12;
  }

  if (*(a1 + 112))
  {
    keys[v11] = @"FBFCreateOption_DisallowsExpensiveNetworkAccess";
    values[v11++] = *v8;
  }

  if (*(a1 + 113))
  {
    keys[v11] = @"FBFCreateOption_DisallowsConstrainedNetworkAccess";
    values[v11++] = *v8;
  }

  v13 = *(a1 + 120);
  if (v13)
  {
    keys[v11] = @"FBFCreateOption_HTTPRequestOptions";
    values[v11++] = v13;
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    keys[v11] = @"FBFCreateOption_AlternativeConfigurationOptions";
    values[v11++] = v14;
  }

  if (*(a1 + 114))
  {
    keys[v11] = @"FBFCreateOption_DisableNativeHTTPReads";
    values[v11++] = *v8;
  }

  if (*(a1 + 115))
  {
    keys[v11] = @"FBFCreateOption_AlwaysFollowRedirects";
    values[v11++] = *v8;
  }

  if (*(a1 + 116))
  {
    keys[v11] = @"FBFCreateOption_EnableMultiPath";
    values[v11++] = *v8;
  }

  v15 = *(a1 + 128);
  if (v15)
  {
    keys[v11] = @"FBFCreateOption_StoreBagConfiguration";
    values[v11++] = v15;
  }

  if ((*(a1 + 72) & 0x10) != 0)
  {
    keys[v11] = @"FBFCreateOption_DoNotLogURLs";
    values[v11++] = *v8;
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    keys[v11] = @"FBFCreateOption_ParentNetworkActivity";
    values[v11++] = v16;
  }

  else if (!v11)
  {
    v17 = 0;
    if (a2)
    {
      goto LABEL_34;
    }

LABEL_37:
    v18 = *v4;
    goto LABEL_38;
  }

  v17 = CFDictionaryCreate(*v4, keys, values, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v17)
  {
    fbfs_CreateFlumeAsync_cold_1(&valuePtr);
    v22 = valuePtr;
    goto LABEL_55;
  }

  if (!a2)
  {
    goto LABEL_37;
  }

LABEL_34:
  v18 = *v4;
  if (!*(a1 + 114))
  {
    v19 = cf;
    goto LABEL_39;
  }

LABEL_38:
  v20 = FigCFHTTPIsDataURL(*(a1 + 16));
  v19 = cf;
  if (!v20)
  {
    FigByteFlumeCustomURLCreateWithURL(v18, *(a1 + 16), 0, cf, *(a1 + 24), *(a1 + 144), *(a1 + 88), *(a1 + 40), v17, (a1 + 48));
    goto LABEL_41;
  }

LABEL_39:
  v21 = FigByteFlumeCreateWithHTTP(v18, *(a1 + 16), 0, v19, *(a1 + 24), *(a1 + 144), *(a1 + 88), v17, (a1 + 48));
LABEL_41:
  v22 = v21;
  if (v21)
  {
    goto LABEL_53;
  }

  *(a1 + 64) = 0;
  v23 = FigThreadRegisterAbortAction();
  if (v23)
  {
    v22 = v23;
    goto LABEL_51;
  }

  valuePtr = 32;
  v24 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
  FigByteFlumeGetFigBaseObject();
  v26 = v25;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v27)
  {
    v27(v26, @"FBF_BandwidthSampleCount", v24);
  }

  CFRelease(v24);
  if (!*(a1 + 101))
  {
    v28 = *(a1 + 48);
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v29)
    {
      v22 = v29(v28, fbfs_FigHTTPOpenCallback, a1);
      if (!v22)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v22 = 4294954514;
    }

    FigThreadUnregisterAbortAction();
LABEL_51:
    v30 = *(a1 + 48);
    if (v30)
    {
      CFRelease(v30);
      *(a1 + 48) = 0;
    }

LABEL_53:
    if (!v17)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  fbfs_FigHTTPOpenCallback(a1, 0, 0);
  v22 = 0;
  if (v17)
  {
LABEL_54:
    CFRelease(v17);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

void fbfs_FreeFigHTTPOpenCompletion(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      CFRelease(v2);
      a1[6] = 0;
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[3];
    if (v4)
    {
      CFRelease(v4);
      a1[3] = 0;
    }

    v5 = a1[5];
    if (v5)
    {
      CFRelease(v5);
      a1[5] = 0;
    }

    v6 = a1[4];
    if (v6)
    {
      CFRelease(v6);
      a1[4] = 0;
    }

    v7 = a1[7];
    if (v7)
    {
      CFRelease(v7);
      a1[7] = 0;
    }

    v8 = a1[13];
    if (v8)
    {
      CFRelease(v8);
      a1[13] = 0;
    }

    v9 = a1[15];
    if (v9)
    {
      CFRelease(v9);
      a1[15] = 0;
    }

    v10 = a1[16];
    if (v10)
    {
      CFRelease(v10);
      a1[16] = 0;
    }

    v11 = a1[17];
    if (v11)
    {
      CFRelease(v11);
      a1[17] = 0;
    }

    v12 = a1[10];
    if (v12)
    {
      CFRelease(v12);
      a1[10] = 0;
    }

    FigHTTPSchedulerRelease(a1[18]);

    free(a1);
  }
}

uint64_t fbfs_GetCacheMemForDiskBackedMaxSizeOnce(uint64_t *a1)
{
  v5 = 8;
  v6 = 0;
  result = sysctlbyname("hw.memsize", &v6, &v5, 0, 0);
  v3 = 0x1000000;
  v4 = 0x2000000;
  if (v6 <= 0x10000000)
  {
    v4 = 0x1000000;
  }

  if (result != -1)
  {
    v3 = v4;
  }

  *a1 = v3;
  return result;
}

uint64_t fbfs_GetCacheMemMaxSizeOnce(uint64_t *a1)
{
  v7 = 8;
  v8 = 0;
  CelestialGetModelSpecificName();
  v2 = sysctlbyname("hw.memsize", &v8, &v7, 0, 0);
  result = FigCFEqual();
  v5 = (v8 >> 20) <= 2000 || v2 == -1 || result == 0;
  v6 = 0x2000000;
  if (!v5)
  {
    v6 = 0x8000000;
  }

  *a1 = v6;
  return result;
}

uint64_t fbfs_OpenAbortAction(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    v3 = *(v1 + 48);
    GlobalNetworkBufferingRunloop = FigThreadGetGlobalNetworkBufferingRunloop();
    v5 = *MEMORY[0x1E695E480];

    return MEMORY[0x1EEDBCE58](fbfs_DeferInvalidate, DefaultLocalCenter, 0, 0, 0, v3, GlobalNetworkBufferingRunloop, v5);
  }

  return result;
}

void fbfs_DeferInvalidate()
{
  FigByteFlumeGetFigBaseObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {

      v2(v1);
    }
  }
}

BOOL FigVideoCompositionTimeWindowDurationIsZero(uint64_t a1)
{
  if (*(a1 + 12))
  {
    time1 = *a1;
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if (*(a1 + 36))
  {
    time1 = *(a1 + 24);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if (*(a1 + 60))
  {
    time1 = *(a1 + 48);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 72);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationIsZeroWhenSeeking(uint64_t a1)
{
  if (*(a1 + 60))
  {
    time1 = *(a1 + 48);
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 72);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationIsZeroWhenNotSeeking(uint64_t a1)
{
  if (*(a1 + 12))
  {
    time1 = *a1;
    v3 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v3))
    {
      return 0;
    }
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    return 1;
  }

  time1 = *(a1 + 24);
  v3 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v3) == 0;
}

BOOL FigVideoCompositionTimeWindowDurationsEqual(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6960CC0];
  if ((*(a1 + 12) & 1) == 0)
  {
    *a1 = *MEMORY[0x1E6960CC0];
    *(a1 + 16) = *(v4 + 16);
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 24) = *v4;
    *(a1 + 40) = *(v4 + 16);
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 48) = *v4;
    *(a1 + 64) = *(v4 + 16);
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 72) = *v4;
    *(a1 + 88) = *(v4 + 16);
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    *a2 = *v4;
    *(a2 + 16) = *(v4 + 16);
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    *(a2 + 24) = *v4;
    *(a2 + 40) = *(v4 + 16);
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    *(a2 + 48) = *v4;
    *(a2 + 64) = *(v4 + 16);
  }

  if ((*(a2 + 84) & 1) == 0)
  {
    *(a2 + 72) = *v4;
    *(a2 + 88) = *(v4 + 16);
  }

  time1 = *a1;
  v6 = *a2;
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 48);
  v6 = *(a2 + 48);
  if (CMTimeCompare(&time1, &v6))
  {
    return 0;
  }

  time1 = *(a1 + 72);
  v6 = *(a2 + 72);
  return CMTimeCompare(&time1, &v6) == 0;
}

uint64_t FigVideoCompositionWindowSerializedConfigurationContainsTrack(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; v6 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          if (!ValueAtIndex)
          {
            break;
          }

          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent())
          {
            break;
          }

          if (!a2)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL FigVideoCompositionWindowSerializedConfigurationForTracksEqual(CFTypeRef cf, CFTypeRef a2)
{
  if (cf == a2)
  {
    return 1;
  }

  v29 = v2;
  v30 = v3;
  result = 0;
  if (cf && a2)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFArrayGetTypeID())
    {
      v8 = CFGetTypeID(a2);
      if (v8 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(cf);
        if (Count == CFArrayGetCount(a2))
        {
          if (Count < 1)
          {
            return 1;
          }

          v10 = 0;
          v11 = *MEMORY[0x1E6960CC0];
          v12 = *(MEMORY[0x1E6960CC0] + 16);
          v17 = *MEMORY[0x1E6960CC0];
          while (1)
          {
            v28[0] = 0;
            v24 = v11;
            *&v25[0] = v12;
            *(v25 + 8) = v11;
            *(&v25[1] + 1) = v12;
            v26 = v11;
            *&v27[0] = v12;
            *(&v27[1] + 1) = v12;
            *(v27 + 8) = v11;
            __dst = v11;
            *v21 = v12;
            *&v21[8] = v11;
            *&v21[24] = v12;
            v22 = v11;
            *v23 = v12;
            *&v23[24] = v12;
            *&v23[8] = v11;
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v10);
            if (!ValueAtIndex)
            {
              break;
            }

            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 != CFDictionaryGetTypeID())
            {
              break;
            }

            if (!FigCFDictionaryGetInt32IfPresent())
            {
              break;
            }

            FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(cf, v28[0], &v24);
            if (v15)
            {
              break;
            }

            if (!FigVideoCompositionWindowSerializedConfigurationContainsTrack(a2, v28[0]))
            {
              break;
            }

            FigVideoCompositionWindowGetFromSerializedConfigurationForTrack(a2, v28[0], &__dst);
            if (v16)
            {
              break;
            }

            v19[2] = v25[1];
            v19[3] = v26;
            v19[4] = v27[0];
            v19[5] = v27[1];
            v19[0] = v24;
            v19[1] = v25[0];
            v18[2] = *&v21[16];
            v18[3] = v22;
            v18[4] = *v23;
            v18[5] = *&v23[16];
            v18[0] = __dst;
            v18[1] = *v21;
            result = FigVideoCompositionTimeWindowDurationsEqual(v19, v18);
            if (result)
            {
              ++v10;
              result = 1;
              v11 = v17;
              if (Count != v10)
              {
                continue;
              }
            }

            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_135@<X0>(__int128 a1@<0:X2, 8:X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 a5, __int128 time2a, uint64_t time2_16, uint64_t a8, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  time2a = a5;
  time2_16 = v11;

  return CMTimeCompare(&time1a, &time2a);
}

double FigBufferedAirPlayOutputProxyRPStateCreate(uint64_t a1)
{
  if (FigBufferedAirPlayOutputProxyRPStateGetTypeID_onceToken != -1)
  {
    FigBufferedAirPlayOutputProxyRPStateCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    Instance[14] = 0u;
    Instance[15] = 0u;
    Instance[12] = 0u;
    Instance[13] = 0u;
    Instance[10] = 0u;
    Instance[11] = 0u;
    Instance[8] = 0u;
    Instance[9] = 0u;
    Instance[6] = 0u;
    Instance[7] = 0u;
    Instance[4] = 0u;
    Instance[5] = 0u;
    Instance[2] = 0u;
    Instance[3] = 0u;
    Instance[1] = 0u;
  }

  return result;
}

uint64_t __FigBufferedAirPlayOutputProxyRPStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gFigBufferedAirPlayOutputProxyRPStateTypeID = result;
  return result;
}

void FigBufferedAirPlayOutputProxyRPStateFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v3)
    {
      v3(v2, @"DownstreamConsumer", 0);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 68);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v11);
    a1[22] = 0;
  }
}

uint64_t FigAlternatePlaybackBitrateMonitorReportStall(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 112) == 1)
  {
    FigAlternatePlaybackBitrateMonitorReportStall_cold_1(DerivedStorage);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigAlternatePlaybackBitrateMonitorSubmitABRHistory(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  fampb_submitNetworkHistory(a1);
  fampb_releaseRecordingData(a1);
  FigSimpleMutexUnlock();
  return 0;
}

void fampb_releaseRecordingData(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 208))
  {
    FigNetworkHistoryDisableRecord();
  }

  *(DerivedStorage + 112) = 0;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 208);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 208) = 0;
  }

  v5 = CFGetAllocator(a1);
  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    v7 = v5;
    do
    {
      v8 = v6[3];
      v9 = v6[4];
      v10 = (v8 + 32);
      if (!v8)
      {
        v10 = (DerivedStorage + 168);
      }

      *v10 = v9;
      *v9 = v8;
      v11 = v6[1];
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v6[2];
      if (v12)
      {
        CFRelease(v12);
      }

      CFAllocatorDeallocate(v7, v6);
      v6 = *(DerivedStorage + 160);
    }

    while (v6);
  }

  v13 = CFGetAllocator(a1);
  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    v15 = v13;
    do
    {
      v16 = *(v14 + 40);
      v17 = *(v14 + 48);
      v18 = (v16 + 48);
      if (!v16)
      {
        v18 = (DerivedStorage + 192);
      }

      *v18 = v17;
      *v17 = v16;
      v19 = *(v14 + 8);
      if ((v19 - 13) < 3 || v19 == 12)
      {
        v20 = *(v14 + 16);
        if (v20)
        {
          CFRelease(v20);
        }
      }

      CFAllocatorDeallocate(v15, v14);
      v14 = *(DerivedStorage + 184);
    }

    while (v14);
  }
}

uint64_t FigAlternateFilterMonitorCreateForPlaybackBitrate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, _OWORD *a6, _OWORD *a7, const void *a8, uint64_t a9, char a10, CFTypeRef *a11)
{
  v61 = 0;
  cf = 0;
  if (!a11)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_7(&v60);
LABEL_43:
    value_low = LODWORD(v60.value);
    goto LABEL_30;
  }

  if (!a5)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_6(&v60);
    goto LABEL_43;
  }

  FigAlternateFilterMonitorGetClassID();
  inserted = CMDerivedObjectCreate();
  if (inserted)
  {
LABEL_35:
    value_low = inserted;
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = FigReentrantMutexCreate();
  *DerivedStorage = v20;
  if (!v20)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_5(&v60);
    goto LABEL_43;
  }

  v21 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v21;
  if (!v21)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_4(&v60);
    goto LABEL_43;
  }

  *(DerivedStorage + 40) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v22 = a6[1];
  *(DerivedStorage + 776) = *a6;
  *(DerivedStorage + 792) = v22;
  v23 = a6[5];
  v25 = a6[2];
  v24 = a6[3];
  *(DerivedStorage + 840) = a6[4];
  *(DerivedStorage + 856) = v23;
  *(DerivedStorage + 808) = v25;
  *(DerivedStorage + 824) = v24;
  v26 = a6[9];
  v28 = a6[6];
  v27 = a6[7];
  *(DerivedStorage + 904) = a6[8];
  *(DerivedStorage + 920) = v26;
  *(DerivedStorage + 872) = v28;
  *(DerivedStorage + 888) = v27;
  v29 = a6[13];
  v31 = a6[10];
  v30 = a6[11];
  *(DerivedStorage + 968) = a6[12];
  *(DerivedStorage + 984) = v29;
  *(DerivedStorage + 936) = v31;
  *(DerivedStorage + 952) = v30;
  v32 = a7[1];
  *(DerivedStorage + 1000) = *a7;
  *(DerivedStorage + 1016) = v32;
  v33 = a7[2];
  v34 = a7[3];
  v35 = a7[5];
  *(DerivedStorage + 1064) = a7[4];
  *(DerivedStorage + 1080) = v35;
  *(DerivedStorage + 1032) = v33;
  *(DerivedStorage + 1048) = v34;
  v36 = a7[6];
  v37 = a7[7];
  v38 = a7[9];
  *(DerivedStorage + 1128) = a7[8];
  *(DerivedStorage + 1144) = v38;
  *(DerivedStorage + 1096) = v36;
  *(DerivedStorage + 1112) = v37;
  v39 = a7[10];
  v40 = a7[11];
  v41 = a7[13];
  *(DerivedStorage + 1192) = a7[12];
  *(DerivedStorage + 1208) = v41;
  *(DerivedStorage + 1160) = v39;
  *(DerivedStorage + 1176) = v40;
  CMTimeMakeWithSeconds(&v60, 10.0, 1000);
  *(DerivedStorage + 364) = v60;
  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 24) = a4;
  *(DerivedStorage + 416) = 0x7FFFFFFF;
  v42 = MEMORY[0x1E6960C70];
  v43 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 600) = *MEMORY[0x1E6960C70];
  v44 = *(v42 + 16);
  *(DerivedStorage + 616) = v44;
  v59 = v43;
  *(DerivedStorage + 728) = v43;
  *(DerivedStorage + 744) = v44;
  *(DerivedStorage + 760) = -1;
  if (a8)
  {
    v45 = CFRetain(a8);
  }

  else
  {
    v45 = 0;
  }

  *(DerivedStorage + 752) = v45;
  *(DerivedStorage + 767) = 1;
  *(DerivedStorage + 336) = &stru_1F0B1AFB8;
  *(DerivedStorage + 80) = &stru_1F0B1AFB8;
  *(DerivedStorage + 520) = 0;
  *(DerivedStorage + 1240) = 1000000000 * FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 432) = 0x3FF0000000000000;
  *(DerivedStorage + 346) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"useStartupScoreForInitialAlternate", 1);
  *(DerivedStorage + 346) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 352) = 0x4008000000000000;
  *(DerivedStorage + 360) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"switchUpStallRiskFilterChoice", 8);
  *(DerivedStorage + 360) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 345) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"enablePairedLLABR", 1);
  *(DerivedStorage + 345) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 516) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"budgetSwitchBackDownWhenCurveKnown", 0);
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 516) = v46;
  v47 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 752), @"averageBWSwitchUpSafetyMargin", 1.0);
  *(DerivedStorage + 488) = v47;
  v48 = 0.0;
  if (v47 < 0.0 || (v48 = 5.0, v47 > 5.0))
  {
    *(DerivedStorage + 488) = v48;
  }

  *(DerivedStorage + 504) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 752), @"extraTargetDurationsReqToSwitchSecsAhead", 0.0);
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 504) = v49;
  *(DerivedStorage + 496) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"increaseBitsRequiredToSwitchVODSecsBackMargin", 1);
  *(DerivedStorage + 512) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"switchUpWalkBackMode", 0);
  FigGetCFPreferenceDoubleWithDefault();
  *(DerivedStorage + 512) = v50;
  *(DerivedStorage + 518) = FigIsItOKToLogURLs();
  *(DerivedStorage + 480) = 0x10000000000000;
  *(DerivedStorage + 112) = a10;
  *(DerivedStorage + 116) = FigRCLGetNumberWithDefault(*(DerivedStorage + 752), @"maxABRRecordSize", 0x40000);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (CFPreferenceNumberWithDefault >= 0xA0000)
  {
    v52 = 655360;
  }

  else
  {
    v52 = CFPreferenceNumberWithDefault;
  }

  *(DerivedStorage + 116) = v52;
  if (*(DerivedStorage + 112))
  {
    *(DerivedStorage + 120) = FigGetUpTimeNanoseconds();
    Current = CFAbsoluteTimeGetCurrent();
    *(DerivedStorage + 160) = 0;
    *(DerivedStorage + 128) = Current;
    *(DerivedStorage + 240) = v59;
    *(DerivedStorage + 256) = v44;
    *(DerivedStorage + 216) = v59;
    *(DerivedStorage + 232) = v44;
    *(DerivedStorage + 184) = 0;
    *(DerivedStorage + 192) = DerivedStorage + 184;
    *(DerivedStorage + 168) = DerivedStorage + 160;
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v54)
    {
      v55 = v54(a5, *MEMORY[0x1E6962A18], a1, DerivedStorage + 208);
      if (!v55)
      {
        FigNetworkHistoryEnableRecord();
        goto LABEL_19;
      }

      value_low = v55;
    }

    else
    {
      value_low = 4294954514;
    }

    *(DerivedStorage + 112) = 0;
    goto LABEL_30;
  }

LABEL_19:
  *(DerivedStorage + 48) = CFRetain(a5);
  inserted = FigNetworkHistoryObserverCreate();
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!*(DerivedStorage + 56))
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_3(&v60);
    goto LABEL_43;
  }

  inserted = FigAlternatePassthroughFilterCreate(a1, @"MonitorPassThoughFilter", 601, (DerivedStorage + 264));
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!*(DerivedStorage + 264))
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_2(&v60);
    goto LABEL_43;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  AllocatorForMedia = FigGetAllocatorForMedia();
  inserted = FigAlternateFilterTreeCreate(AllocatorForMedia, &v61);
  if (inserted)
  {
    goto LABEL_35;
  }

  if (!v61)
  {
    FigAlternateFilterMonitorCreateForPlaybackBitrate_cold_1(&v60);
    goto LABEL_43;
  }

  inserted = FigAlternateFilterTreeInsertLeaf(v61, *(DerivedStorage + 264), 500);
  if (inserted)
  {
    goto LABEL_35;
  }

  value_low = FigAlternateFilterTreeCreateFilter(v61, @"BitrateFilterTree", 600, (DerivedStorage + 64));
  if (!value_low)
  {
    fampb_setupDryTimer(cf);
    *a11 = cf;
    cf = 0;
    goto LABEL_32;
  }

LABEL_30:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  if (v61)
  {
    CFRelease(v61);
  }

  return value_low;
}