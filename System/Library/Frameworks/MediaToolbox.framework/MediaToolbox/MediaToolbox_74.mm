CFStringRef figPlayerInterstitialEvent_copyDebugDesc(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = *MEMORY[0x1E695E480];
  time = *(a1 + 32);
  Seconds = CMTimeGetSeconds(&time);
  v5 = *(a1 + 56);
  v6 = *(a1 + 24);
  v7 = *(a1 + 104);
  v8 = *(a1 + 108);
  time = *(a1 + 116);
  v9 = CMTimeGetSeconds(&time);
  time = *(a1 + 140);
  v10 = CMTimeGetSeconds(&time);
  v11 = *(a1 + 88);
  if (!v11)
  {
    v11 = *(a1 + 96);
  }

  v12 = CFStringCreateWithFormat(v3, 0, @"[FigPlayerInterstitialEvent %p item %p \n  start %f\n  date %@\n  identifier %@\n  restrictions 0x%X, snapOptions 0x%X\n  resume after %f\n  playout limit %f\n  timeline occupancy 0x%X\n, supplements primary 0x%X\n  content varies 0x%X\n  asset URL %@]", a1, v2, *&Seconds, v5, v6, v7, v8, *&v9, *&v10, *(a1 + 440), *(a1 + 444), *(a1 + 445), v11);
  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_5_129(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_7_100()
{
  result = *(v2 + 208);
  ++*(v2 + 216);
  *v1 = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_87(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigOctaviaClockCreateConsumingNeroClock(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v17 = 0;
  if (a4)
  {
    CMClockGetHostTimeClock();
    CMTimeMake(&v16, 1, 10);
    TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
    if (TimeCallback)
    {
      value_low = TimeCallback;
    }

    else
    {
      DerivedStorage = FigDerivedClockGetDerivedStorage();
      *DerivedStorage = a2;
      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      *(DerivedStorage + 80) = v9;
      v10 = dispatch_queue_create("octclock_queue", 0);
      *(DerivedStorage + 64) = v10;
      if (v10)
      {
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);
        *(DerivedStorage + 56) = v11;
        if (v11)
        {
          v12 = FigSimpleMutexCreate();
          *(DerivedStorage + 72) = v12;
          if (v12)
          {
            DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
            dispatch_sync(*(DerivedStorage + 64), DispatchSourceBlock);
            dispatch_source_set_event_handler(*(DerivedStorage + 56), DispatchSourceBlock);
            _Block_release(DispatchSourceBlock);
            dispatch_source_set_timer(*(DerivedStorage + 56), 0, 0x3E16927F8uLL, 0);
            dispatch_resume(*(DerivedStorage + 56));
            value_low = 0;
            *a4 = v17;
            return value_low;
          }
        }
      }

      value_low = 0;
    }
  }

  else
  {
    FigOctaviaClockCreateConsumingNeroClock_cold_1(&v16);
    value_low = LODWORD(v16.value);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return value_low;
}

CFStringRef octclock_CopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"OctaviaClock neroClock: 0x%llx", *DerivedStorage);
}

void octclock_Finalize(uint64_t a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  NeroTransportSendAsyncMessage();
  dispatch_source_cancel(*(DerivedStorage + 56));
  dispatch_sync(*(DerivedStorage + 64), &__block_literal_global_123);
  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 56) = 0;
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 64) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  v4 = *(DerivedStorage + 80);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 80) = 0;
  }
}

uint64_t octclock_GetAnchorTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a2)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    v16 = *(v6 + 8);
    v15 = *(v6 + 32);
    FigSimpleMutexUnlock();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    CMTimeMake(&lhs, UpTimeNanoseconds, 1000000000);
    flags = lhs.flags;
    timescale = lhs.timescale;
    value = lhs.value;
    epoch = lhs.epoch;
    v12 = v15;
    CMTimeSubtract(&rhs, &lhs, &v12);
    v12 = v16;
    CMTimeAdd(&lhs, &v12, &rhs);
    *a2 = lhs;
    if (flags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  flags = *(MEMORY[0x1E6960C70] + 12);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if ((flags & 1) == 0)
  {
LABEL_3:
    v10 = FigGetUpTimeNanoseconds();
    CMTimeMake(&v16, v10, 1000000000);
    value = v16.value;
    flags = v16.flags;
    timescale = v16.timescale;
    epoch = v16.epoch;
  }

LABEL_4:
  if (a3)
  {
    *a3 = value;
    *(a3 + 8) = timescale;
    *(a3 + 12) = flags;
    *(a3 + 16) = epoch;
  }

  return 0;
}

uint64_t FigInterstitialCreatePropertyListsFromJSONData(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CMTimeValue *a4, _OWORD *a5, CFTypeRef *a6)
{
  if (FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemoteOnce != -1)
  {
    FigInterstitialCreatePropertyListsFromJSONData_cold_1();
  }

  if (FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemote)
  {

    return FigInterstitialCreatePropertyListsFromJSONData_Remote(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return FigInterstitialCreatePropertyListsFromLocalJSONData(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t __FigInterstitialCreatePropertyListsFromJSONData_block_invoke(uint64_t a1)
{
  result = FigServer_IsMediaparserd();
  FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemote = result == 0;
  return result;
}

uint64_t FigAudioSessionGetMXNotificationTranslationInternal(uint64_t a1, uint64_t a2)
{
  if (FigAudioSessionGetMXNotificationTranslationInternal_onceToken != -1)
  {
    FigAudioSessionGetMXNotificationTranslationInternal_cold_1();
  }

  return FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation;
}

void __FigAudioSessionGetMXNotificationTranslationInternal_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = *MEMORY[0x1E69AFB80];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB80], @"Interruption");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AED88], @"ActiveAudioRouteDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AED98], @"ActiveNeroVisualStreamInfoDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB20], @"AvailableFormatsDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AEDA0], @"DisplayLayoutDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AEDA8], @"UserVolumeDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFAE8], @"AirPlayVideoWillBeInterrupted");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB00], @"ApplicationStateDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB08], @"AudioBehaviorDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB18], @"AudioModeDidChange");
  CFDictionarySetValue(Mutable, v2, @"Interruption");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB88], @"IsActiveDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBC8], @"PiPIsPossibleDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBD0], @"PickableRoutesDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBF0], @"RoutingContextDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB90], @"IsMutedDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBD8], @"PrefersConcurrentAirPlayAudioDidChange");
  FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation = CFDictionaryCreateCopy(v0, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

const void *FigAudioSessionGetNotificationNameForMXSessionNotificationNameInternal(void *key, uint64_t a2)
{
  if (FigAudioSessionGetMXNotificationTranslationInternal_onceToken != -1)
  {
    FigAudioSessionGetMXNotificationTranslationInternal_cold_1();
  }

  v3 = FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation;

  return CFDictionaryGetValue(v3, key);
}

const void *FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(void *key)
{
  if (ensureFigAudioSessionPropertyTranslation_onceToken != -1)
  {
    FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal_cold_1();
  }

  v2 = figAudioSessionResolvedPropertyTranslation;

  return CFDictionaryGetValue(v2, key);
}

const void *FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(void *key)
{
  if (ensureFigAudioSessionPropertyTranslation_onceToken != -1)
  {
    FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal_cold_1();
  }

  v2 = figAudioSessionRequestedPropertyTranslation;

  return CFDictionaryGetValue(v2, key);
}

uint64_t RegisterFigAudioSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioSessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAudioSessionGetClassID_sRegisterFigAudioSessionOnce, RegisterFigAudioSession);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAudioSessionCreateSiblingSession(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, CFTypeRef *a5)
{
  if (FPSupport_CanUseCMSession())
  {
    v10 = a3[1];
    v13 = *a3;
    v14 = v10;
    return FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession(a1, a2, &v13, a5);
  }

  else
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = v12;
    return FigAudioSessionCreateWithAVAudioSessionSiblingForFigAudioSession(a1, a2, &v13, a4, a5);
  }
}

void __ensureFigAudioSessionPropertyTranslation_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = __ensureFigAudioSessionPropertyTranslation_block_invoke_2;
  v8 = &__block_descriptor_tmp_102_1;
  v9 = Mutable;
  v10 = v4;
  if (*MEMORY[0x1E69AFDE8])
  {
    CFDictionarySetValue(v4, @"FAS_CoreSessionID", *MEMORY[0x1E69AFDE8]);
    v7(v6, @"FAS_RoutingContext", 0, *MEMORY[0x1E69B03B8]);
  }

  else
  {
    __ensureFigAudioSessionPropertyTranslation_block_invoke_2(v6, @"FAS_RoutingContext", 0, *MEMORY[0x1E69B03B8]);
  }

  figAudioSessionRequestedPropertyTranslation = CFDictionaryCreateCopy(v0, Mutable);
  figAudioSessionResolvedPropertyTranslation = CFDictionaryCreateCopy(v0, v5);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __ensureFigAudioSessionPropertyTranslation_block_invoke_2(uint64_t a1, void *key, const void *a3, void *value)
{
  if (a3)
  {
    CFDictionarySetValue(*(a1 + 32), key, a3);
  }

  if (value)
  {
    v7 = *(a1 + 40);

    CFDictionarySetValue(v7, key, value);
  }
}

uint64_t FigNeroGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigNeroGetTypeID_sRegisterNeroTypeOnce != -1)
  {
    FigNeroGetTypeID_cold_1();
  }

  return FigNeroGetTypeID_sNeroTypeID;
}

double nero_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
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

void nero_Finalize(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    dispatch_release(v3);
    a1[12] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    dispatch_release(v4);
    a1[7] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_release(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    dispatch_release(v6);
    a1[6] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    dispatch_release(v7);
    a1[8] = 0;
  }

  v8 = a1[4];
  if (v8)
  {
    dispatch_release(v8);
    a1[4] = 0;
  }
}

__CFString *nero_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigNero %p retainCount:%d", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"]\n");
  return Mutable;
}

uint64_t __FigNeroGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigNeroGetTypeID_sNeroTypeID = result;
  return result;
}

uint64_t FigNeroCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (FigNeroGetTypeID_sRegisterNeroTypeOnce != -1)
    {
      FigNeroGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      *(Instance + 88) = 0;
      *(Instance + 80) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      v4[4] = FigDispatchQueueCreateWithPriority();
      v4[12] = dispatch_queue_create("nero.timebaseRegistry", 0);
      v4[7] = dispatch_queue_create("nero.renderpipeline", 0);
      v4[5] = dispatch_queue_create("nero.clock", 0);
      v4[6] = FigDispatchQueueCreateWithPriority();
      v5 = dispatch_queue_create("nero.notifications", 0);
      result = 0;
      v4[8] = v5;
      *a2 = v4;
    }

    else
    {
      FigNeroCreate_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigNeroCreate_cold_3(&v8);
    return v8;
  }

  return result;
}

void __FigNeroSetup_block_invoke(uint64_t a1, uint64_t a2, CMBlockBufferRef theSourceBuffer)
{
  v5 = *(a1 + 32);
  destination = 0;
  if (!*(v5 + 122))
  {
    dispatch_semaphore_wait(*(v5 + 128), 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = 0;
  v6 = *(v5 + 160);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6, a2, theSourceBuffer, &v17);
    }
  }

  if (a2 <= 1684628835)
  {
    if (a2 == 1635151988)
    {
      if (theSourceBuffer)
      {
        CFRetain(theSourceBuffer);
      }

      v8 = *(v5 + 48);
      block = MEMORY[0x1E69E9820];
      v12 = 0x40000000;
      v13 = __nero_asyncMessageHandler_block_invoke_4;
      v14 = &__block_descriptor_tmp_89_0;
      v15 = theSourceBuffer;
      goto LABEL_24;
    }

    if (a2 != 1651470958)
    {
      return;
    }

    if (theSourceBuffer)
    {
      CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination);
    }

    *(v5 + 121) = 1;
    if (*(v5 + 136))
    {
      nero_tellOctaviaDisplayWasAttached(v5);
    }

    CFRetain(v5);
    v8 = *(v5 + 64);
    block = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v9 = __nero_asyncMessageHandler_block_invoke;
    v10 = &__block_descriptor_tmp_86_2;
    goto LABEL_23;
  }

  if (a2 == 1684628836)
  {
    *(v5 + 121) = 0;
    nero_reset(v5);
    CFRetain(v5);
    v8 = *(v5 + 64);
    block = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v9 = __nero_asyncMessageHandler_block_invoke_2;
    v10 = &__block_descriptor_tmp_87_0;
LABEL_23:
    v13 = v9;
    v14 = v10;
    v15 = v5;
    goto LABEL_24;
  }

  if (a2 != 1870031993)
  {
    return;
  }

  if (theSourceBuffer)
  {
    CFRetain(theSourceBuffer);
  }

  v8 = *(v5 + 48);
  block = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __nero_asyncMessageHandler_block_invoke_3;
  v14 = &__block_descriptor_tmp_88_0;
  v15 = v5;
  v16 = theSourceBuffer;
LABEL_24:
  dispatch_async(v8, &block);
}

void __FigNeroSetup_block_invoke_2(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer, uint64_t a4)
{
  v7 = *(a1 + 32);
  if (!*(v7 + 122))
  {
    dispatch_semaphore_wait(*(v7 + 128), 0xFFFFFFFFFFFFFFFFLL);
  }

  switch(a2)
  {
    case 1668703347:
      v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200404161829EuLL);
      v65 = 0;
      v66 = 0;
      v16[2] = dispatch_queue_create("nero.decompressionsession", 0);
      v16[3] = CFRetain(*(v7 + 24));
      CFTypeFromSerializedAtomDataBlockBuffer = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, v16 + 1);
      if (CFTypeFromSerializedAtomDataBlockBuffer)
      {
        goto LABEL_37;
      }

      v18 = *MEMORY[0x1E695E480];
      CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
      if (CFTypeFromSerializedAtomDataBlockBuffer)
      {
        goto LABEL_37;
      }

      if (CFArrayGetCount(v65) == 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v65, 0);
        v20 = CFArrayGetValueAtIndex(v65, 1);
        destination.decompressionOutputCallback = nds_didDecodeFrame;
        destination.decompressionOutputRefCon = v16;
        CFTypeFromSerializedAtomDataBlockBuffer = VTDecompressionSessionCreate(v18, ValueAtIndex, 0, v20, &destination, v16);
        if (CFTypeFromSerializedAtomDataBlockBuffer || (v60 = MEMORY[0x1E69E9820], v61 = 0x40000000, v62 = __nero_createVideoDecompressionSession_block_invoke, v63 = &__block_descriptor_tmp_125_2, v64 = v16, CFTypeFromSerializedAtomDataBlockBuffer = NeroTransportRegisterObject(), CFTypeFromSerializedAtomDataBlockBuffer))
        {
LABEL_37:
          BBufFromPointer = CFTypeFromSerializedAtomDataBlockBuffer;
LABEL_38:
          v10 = 0;
          goto LABEL_39;
        }

        BBufFromPointer = FigTransportCreateBBufFromPointer();
        if (BBufFromPointer)
        {
          goto LABEL_38;
        }

        v16 = 0;
        v10 = v66;
        v66 = 0;
      }

      else
      {
        v10 = 0;
        BBufFromPointer = 4294954516;
      }

LABEL_39:
      nds_destroy(v16);
      if (v66)
      {
        CFRelease(v66);
      }

      v15 = v65;
      if (!v65)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFRelease(v15);
      goto LABEL_43;
    case 1668706928:
      v65 = 0;
      v66 = 0;
      value = 0;
      cf = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v11 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v57);
      if (v11)
      {
        goto LABEL_13;
      }

      v12 = *MEMORY[0x1E695E480];
      v11 = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
      if (v11)
      {
        goto LABEL_13;
      }

      if (v65)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v65);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v23 = MutableCopy;
      v24 = *MEMORY[0x1E695E4D0];
      CFDictionaryAddValue(MutableCopy, @"AllowClientProcessDecode", *MEMORY[0x1E695E4D0]);
      if (v65)
      {
        CFRelease(v65);
      }

      v65 = v23;
      v25 = *(v7 + 104);
      if (v25)
      {
        v11 = FigToolViewCopyPixelBufferAttributes(v12, v25, &cf);
        if (!v11)
        {
          v11 = FigVisualContextCreateBasic(v12, 0, &v55);
          if (!v11)
          {
            if (v65)
            {
              Mutable = CFDictionaryCreateMutableCopy(v12, 0, v65);
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            v32 = Mutable;
            CFDictionaryAddValue(Mutable, @"ShouldRotateAndScale", v24);
            if (v65)
            {
              CFRelease(v65);
            }

            v65 = v32;
LABEL_74:
            if (*(v7 + 152))
            {
              v33 = v24;
            }

            else
            {
              v33 = *MEMORY[0x1E695E4C0];
            }

            v34 = CFArrayCreateMutable(v12, 2, MEMORY[0x1E695E9C0]);
            v14 = v34;
            if (v55)
            {
              CFArrayAppendValue(v34, v55);
            }

            if (v54)
            {
              CFArrayAppendValue(v14, v54);
            }

            v35 = FigImageQueueTableCreate(v12, &v52);
            if (v35 || (FigImageQueueTableUpdateToMatchOutputsArray(v52, v14, 0, 0, 0, 0), v35 = FigImageQueueTableCopyFigImageQueueArray(v52, &v53), v35))
            {
              BBufFromPointer = v35;
              v10 = 0;
              v13 = 0;
              goto LABEL_14;
            }

            if (v55)
            {
              v13 = FigImageQueueTableCopyFigImageQueueForVisualContext(v52, v55, v36, v37, v38, v39, v40, v41);
            }

            else
            {
              v13 = 0;
            }

            FigVideoRenderPipelineCreateWithFigImageQueueArray(v12, 0, cf, 0, 1, v53, 0, v65, &v56);
            if (v42)
            {
              goto LABEL_94;
            }

            FigRenderPipelineSetProperty_0(v56, @"ForceFullPowerDecode", v33);
            v43 = *(v7 + 136);
            if (v43)
            {
              nrp_setMinImageBounds(v56, v43);
            }

            DictionaryRepresentation = FigCGSizeCreateDictionaryRepresentation(1920.0, 1200.0);
            FigRenderPipelineSetProperty_0(v56, @"MaxImageBounds", DictionaryRepresentation);
            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }

            v42 = nrp_createWithFigRenderPipeline(v7, v56, v57, *(v7 + 56), v55, v13, &value);
            if (v42 || (v45 = value, CFArrayAppendValue(*(v7 + 144), value), nero_setVideoGravity(v7, 0), v60 = MEMORY[0x1E69E9820], v61 = 0x40000000, v62 = __nero_createVideoRenderPipeline_block_invoke, v63 = &__block_descriptor_tmp_108_1, v64 = v45, destination.decompressionOutputCallback = MEMORY[0x1E69E9820], destination.decompressionOutputRefCon = 0x40000000, v49 = __nero_createVideoRenderPipeline_block_invoke_2, v50 = &__block_descriptor_tmp_109_0, v51 = v45, v42 = NeroTransportRegisterObject(), v42))
            {
LABEL_94:
              BBufFromPointer = v42;
LABEL_95:
              v10 = 0;
              goto LABEL_14;
            }

            BBufFromPointer = FigTransportCreateBBufFromPointer();
            v10 = v66;
            if (BBufFromPointer)
            {
              if (v66)
              {
                CFRelease(v66);
                goto LABEL_95;
              }
            }

            else
            {
              value = 0;
              v66 = 0;
            }

LABEL_14:
            if (v65)
            {
              CFRelease(v65);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            nrp_destroy(value);
            if (v56)
            {
              CFRelease(v56);
            }

            if (v55)
            {
              CFRelease(v55);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (v54)
            {
              CFRelease(v54);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            if (v53)
            {
              CFRelease(v53);
            }

            v15 = v52;
            if (!v52)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }
        }
      }

      else if (*(v7 + 160))
      {
        FigLayerViewGetCMBaseObject();
        v28 = v27;
        v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v29)
        {
          v10 = 0;
          v13 = 0;
          v14 = 0;
          BBufFromPointer = 4294954514;
          goto LABEL_14;
        }

        v11 = v29(v28, @"PixelBufferAttributes", v12, &cf);
        if (!v11)
        {
          FigLayerViewGetCMBaseObject();
          CMBaseObjectCopyProperty_0(v30, @"VisualContext", v12, &v55);
          FigLayerViewGetCMBaseObject();
          CMBaseObjectCopyProperty_0(v31, @"ImageQueue", v12, &v54);
          goto LABEL_74;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v47, LODWORD(destination.decompressionOutputCallback));
      }

LABEL_13:
      BBufFromPointer = v11;
      v10 = 0;
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    case 1668771937:
      v60 = 0;
      destination.decompressionOutputCallback = 0;
      if (*(v7 + 112))
      {
        v8 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &destination);
        if (v8 || (v8 = FigNeroPlayServerSetOctaviaSender(*(v7 + 112), destination.decompressionOutputCallback), v8))
        {
          BBufFromPointer = v8;
        }

        else
        {
          BBufFromPointer = FigTransportCreateBBufFromPointer();
          v10 = v60;
          if (!BBufFromPointer || !v60)
          {
            goto LABEL_43;
          }

          CFRelease(v60);
        }

        v10 = 0;
      }

      else
      {
        v10 = 0;
        BBufFromPointer = 0;
      }

LABEL_43:
      (*(a4 + 16))(a4, BBufFromPointer, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      return;
  }

  v21 = *(a4 + 16);

  v21(a4, 4294955260, 0);
}

void nero_displayWasAttached(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v6 = CFRetain(cf);
  v7 = *(a2 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __nero_displayWasAttached_block_invoke;
  v8[3] = &__block_descriptor_tmp_126_2;
  v8[4] = a2;
  v8[5] = v6;
  dispatch_async(v7, v8);
}

void nero_displayWasDetached(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_displayWasDetached_block_invoke;
  block[3] = &__block_descriptor_tmp_127_2;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t FigNeroTeardown(uint64_t a1)
{
  *(a1 + 16) = 1;
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigNeroTeardown_block_invoke;
  block[3] = &__block_descriptor_tmp_54;
  block[4] = a1;
  dispatch_sync(v2, block);
  if (*(a1 + 160))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(a1 + 160);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigToolViewWaitUntilDoneThenDispose(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigNeroTeardown_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_55_0;
  v10[4] = a1;
  dispatch_sync(v4, v10);
  nero_reset(a1);
  dispatch_sync(*(a1 + 96), &__block_literal_global_58);
  dispatch_sync(*(a1 + 40), &__block_literal_global_61_2);
  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 112) = 0;
  }

  if (*(a1 + 120))
  {
    NeroTransportStopAcceptingConnections();
  }

  else
  {
    NeroTransportDisconnectFromReceiver();
  }

  CFArrayGetCount(*(a1 + 144));
  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 128) = 0;
  }

  FigTransportSetSharedTransport();
  NeroTransportInvalidate();
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 24) = 0;
  }

  return 0;
}

void __FigNeroTeardown_block_invoke(uint64_t a1)
{
  FigTransportGetLocalRootObject();
  NeroTransportUnregisterObject();
  Count = CFArrayGetCount(*(*(a1 + 32) + 144));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 144), i);
      NeroTransportUnregisterObject();
      v6 = *(ValueAtIndex + 5);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigNeroTeardown_block_invoke_2;
      block[3] = &__block_descriptor_tmp_53_0;
      block[4] = ValueAtIndex;
      dispatch_async(v6, block);
    }
  }

  CFArrayRemoveAllValues(*(*(a1 + 32) + 144));
}

void nrp_destroy(void *a1)
{
  if (a1)
  {
    if (a1[2])
    {
      nrp_setTimebase(a1, 0);
      CFDictionaryApplyFunction(sNeroRPNotificationNameToMessageTypeDict, nrp_unregisterNotificationListener, a1);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigRenderPipelineGetFigBaseObject();
      v3 = v2;
      v4 = *(CMBaseObjectGetVTable() + 8);
      if (*v4 >= 2uLL)
      {
        v5 = v4[8];
        if (v5)
        {
          v5(v3);
        }
      }
    }

    v6 = a1[9];
    if (v6)
    {
      CMBufferQueueRemoveTrigger(a1[8], v6);
    }

    v7 = a1[8];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[13];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[14];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = a1[5];
    if (v11)
    {
      dispatch_release(v11);
    }

    v12 = a1[6];
    if (v12)
    {
      v13 = *(*a1 + 104);
      if (v13)
      {
        FigToolViewRemoveVisualContext(v13, v12);
        v12 = a1[6];
      }

      CFRelease(v12);
    }

    v14 = a1[7];
    if (v14)
    {
      CFRelease(v14);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

void __FigNeroTeardown_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 136) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 121))
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      _FigNeroPlayServerSetDeviceUID(v4, 0);
    }

    FigTransportGetRemoteRootObject();

    NeroTransportSendAsyncMessage();
  }
}

void nero_reset(void *a1)
{
  v2 = a1[12];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_reset_block_invoke;
  block[3] = &__block_descriptor_tmp_128_0;
  block[4] = a1;
  dispatch_async(v2, block);
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __nero_reset_block_invoke_2;
  v10[3] = &__block_descriptor_tmp_129_2;
  v10[4] = a1;
  dispatch_async(v4, v10);
  v5 = a1[13];
  if (v5)
  {
    FigToolViewMarkNeedsClear(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
    a1[23] = 0;
  }

  v7 = a1[24];
  if (v7)
  {
    CFRelease(v7);
    a1[24] = 0;
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
    a1[25] = 0;
  }

  v9 = a1[28];
  if (v9)
  {
    CFRelease(v9);
    a1[28] = 0;
  }
}

__CFString *JNvfYIDgz(uint64_t a1, uint64_t a2)
{
  if (JNvfYIDgz_sRegisterValeriaNotificationBarrierOnce != -1)
  {
    JNvfYIDgz_cold_1();
  }

  return @"rU492mlgo";
}

uint64_t __JNvfYIDgz_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRegisterForBarrierSupport();
}

uint64_t g87kjbhgf(uint64_t result)
{
  if (LfJGfUJaT != result)
  {
    LfJGfUJaT = result;
    CMNotificationCenterGetDefaultLocalCenter();
    if (JNvfYIDgz_sRegisterValeriaNotificationBarrierOnce != -1)
    {
      JNvfYIDgz_cold_1();
    }

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t FigNeroGetNeroTransport()
{
  if (qword_1ED4CBB20 != -1)
  {
    FigNeroGetNeroTransport_cold_1();
  }

  return *(_MergedGlobals_136 + 24);
}

void nero_tellOctaviaDisplayWasAttached(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = MutableCopy;
  if (!*(a1 + 176))
  {
    v6 = FVDUtilsH264DecoderSupports444(MutableCopy, v4);
    v8 = MEMORY[0x1E695E4D0];
    if (v6)
    {
      CFDictionarySetValue(v5, @"H264DecoderSupports444", *MEMORY[0x1E695E4D0]);
    }

    CFPreferenceNumberWithDefault = FVDUtilsHEVCDecodeSupported(v6, v7);
    if (CFPreferenceNumberWithDefault)
    {
      CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
      if (CFPreferenceNumberWithDefault)
      {
        CFDictionarySetValue(v5, @"HEVCDecoderSupports444", *v8);
      }
    }

    if (FVDUtilsHEVCDecodeSupported(CFPreferenceNumberWithDefault, v10) && FigGetCFPreferenceNumberWithDefault())
    {
      CFDictionarySetValue(v5, @"HEVCDecoderSupports44410", *v8);
    }

    if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
    {
      FigTransportGetRemoteRootObject();
      NeroTransportSendAsyncMessage();
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __nero_asyncMessageHandler_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_asyncMessageHandler_block_invoke_2(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_asyncMessageHandler_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  cf = 0;
  v4 = CMBlockBufferGetDataLength(v3);
  if (v4 < 0x18)
  {
    goto LABEL_5;
  }

  v5 = v4;
  destination = 0;
  v54 = 0;
  dataLength = 0;
  CMBlockBufferCopyDataBytes(v3, 0, 0x18uLL, &destination);
  v6 = destination;
  if (destination <= 1)
  {
    v8 = SHIDWORD(destination);
    v9 = dataLength;
    if (HIDWORD(destination) && (v10 = v54) != 0 && (v11 = HIDWORD(v54)) != 0)
    {
      v12 = SHIDWORD(dataLength);
      if (v5 < SHIDWORD(dataLength) + 24)
      {
        goto LABEL_3;
      }

      if (dataLength != 1111970369)
      {
        if (dataLength != 1852994665)
        {
          goto LABEL_3;
        }

        v13 = &v2[3 * destination];
        v16 = v13[25];
        v15 = (v13 + 25);
        v14 = v16;
        if (v16)
        {
          CFRelease(v14);
          *v15 = 0;
          v12 = SHIDWORD(dataLength);
        }

        if (CMBlockBufferCreateWithBufferReference(0, v3, 0x18uLL, v12, 0, v15))
        {
          goto LABEL_3;
        }

        v15[1] = v8;
        v15[2] = v10;
        goto LABEL_22;
      }

      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(v3, 0x18uLL, 0, 0, &dataPointerOut);
      if (nero_createOverlayPixelBufferFromPool(v2, v6, v8, v10, &cf))
      {
        goto LABEL_3;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(cf);
      CVPixelBufferLockBaseAddress(cf, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(cf);
      v38 = 4 * v8;
      v39 = dataPointerOut;
      do
      {
        memcpy(BaseAddress, v39, v38);
        BaseAddress += BytesPerRow;
        v39 = &dataPointerOut[v11];
        dataPointerOut = v39;
        --v10;
      }

      while (v10);
      CVPixelBufferUnlockBaseAddress(cf, 0);
    }

    else
    {
      v17 = &v2[3 * destination];
      v20 = v17[25];
      v19 = v17 + 25;
      v18 = v20;
      if (v20)
      {
        CFRelease(v18);
        *v19 = 0;
      }

      v19[1] = 0;
      v19[2] = 0;
    }

    if (v9 == 1111970369)
    {
      goto LABEL_39;
    }

LABEL_22:
    v21 = v2[25];
    v22 = v2[28];
    if (v21)
    {
      if (v22)
      {
        v50 = 0;
        dataPointerOut = 0;
        v48 = 0;
        totalLengthOut = 0;
        v23 = v2[26];
        if (v23 != v2[29])
        {
          goto LABEL_3;
        }

        v24 = v2[27];
        if (v24 != v2[30] || nero_createOverlayPixelBufferFromPool(v2, 0, v23, v24, &cf))
        {
          goto LABEL_3;
        }

        CMBlockBufferGetDataPointer(v21, 0, 0, &totalLengthOut, &dataPointerOut);
        CMBlockBufferGetDataPointer(v22, 0, 0, &v48, &v50);
        CVPixelBufferLockBaseAddress(cf, 0);
        v26 = v50;
        v25 = dataPointerOut;
        v28 = v48;
        v27 = totalLengthOut;
        Width = CVPixelBufferGetWidth(cf);
        Height = CVPixelBufferGetHeight(cf);
        v31 = CVPixelBufferGetBaseAddress(cf);
        v32 = CVPixelBufferGetBytesPerRow(cf);
        DataSize = CVPixelBufferGetDataSize(cf);
        NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages(v25, v27, v26, v28, Width, Height, v31, v32, DataSize);
        goto LABEL_37;
      }

      dataPointerOut = 0;
      v34 = 27;
      v35 = 26;
    }

    else
    {
      if (!v22)
      {
LABEL_38:
        v6 = 0;
LABEL_39:
        v47 = v2[13];
        if (v47)
        {
          FigToolViewSetOverlayImage(v47, v6, cf);
        }

        goto LABEL_3;
      }

      dataPointerOut = 0;
      v34 = 30;
      v35 = 29;
      v21 = v22;
    }

    v50 = 0;
    if (nero_createOverlayPixelBufferFromPool(v2, 0, v2[v35], v2[v34], &cf))
    {
      goto LABEL_3;
    }

    CMBlockBufferGetDataPointer(v21, 0, 0, &v50, &dataPointerOut);
    CVPixelBufferLockBaseAddress(cf, 0);
    v41 = v50;
    v40 = dataPointerOut;
    v42 = CVPixelBufferGetWidth(cf);
    v43 = CVPixelBufferGetHeight(cf);
    v44 = CVPixelBufferGetBaseAddress(cf);
    v45 = CVPixelBufferGetBytesPerRow(cf);
    v46 = CVPixelBufferGetDataSize(cf);
    NeroTextImageCodec_Decompress32BPPImage(v40, v41, v42, v43, v44, v45, v46);
LABEL_37:
    CVPixelBufferUnlockBaseAddress(cf, 0);
    goto LABEL_38;
  }

LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_5:
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

void __nero_asyncMessageHandler_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IOAVControllerCreateWithLocation();
  destination = 0;
  if (v3)
  {
    v4 = v3;
    if (!CMBlockBufferCopyDataBytes(v2, 0, 4uLL, &destination))
    {
      v5 = nero_setIOAVProtectionType_firstTime == 1 && nero_setIOAVProtectionType_lastProtectionType == destination;
      if (!v5 && !IOAVControllerSetProtectionType())
      {
        nero_setIOAVProtectionType_firstTime = 1;
        nero_setIOAVProtectionType_lastProtectionType = destination;
      }
    }

    CFRelease(v4);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t nero_createOverlayPixelBufferFromPool(uint64_t a1, int a2, int a3, int a4, CVPixelBufferRef *a5)
{
  v8 = a1 + 8 * a2;
  v11 = *(v8 + 184);
  v10 = (v8 + 184);
  v9 = v11;
  if (v11)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v9);
    if (PixelBufferAttributes && (v13 = PixelBufferAttributes, valuePtr = 0, Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966130]), v15 = CFGetTypeID(Value), v15 == CFNumberGetTypeID()) && (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr), valuePtr == 1111970369) && (valuePtr = 0, v16 = CFDictionaryGetValue(v13, *MEMORY[0x1E6966208]), CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr), valuePtr == a3) && (valuePtr = 0, v17 = CFDictionaryGetValue(v13, *MEMORY[0x1E69660B8]), CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr), valuePtr == a4))
    {
      v18 = *v10;
      if (*v10)
      {
        v19 = *MEMORY[0x1E695E480];
LABEL_21:
        CVPixelBufferPoolCreatePixelBuffer(v19, v18, a5);
        return 0;
      }
    }

    else if (*v10)
    {
      CFRelease(*v10);
      *v10 = 0;
    }
  }

  v19 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v21 = Mutable;
  ftvCFDictionarySetSInt32Value(Mutable, *MEMORY[0x1E6966160], 2);
  v22 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v22)
  {
    CFRelease(v21);
    return 4294954510;
  }

  v23 = v22;
  ftvCFDictionarySetSInt32Value(v22, *MEMORY[0x1E6966130], 1111970369);
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966208], a3);
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E69660B8], a4);
  v28 = 0;
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(v23, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  FigGetAlignmentForIOSurfaceOutput();
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966140], SHIDWORD(v28));
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966020], v28);
  v25 = CVPixelBufferPoolCreate(v19, v21, v23, v10);
  if (!v25)
  {
    if (*v10)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4294954510;
    }
  }

  CFRelease(v21);
  CFRelease(v23);
  if (!v25)
  {
    v18 = *v10;
    goto LABEL_21;
  }

  return v25;
}

uint64_t FigRenderPipelineSetProperty_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigRenderPipelineGetFigBaseObject();
  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, a2, a3);
  }

  return result;
}

uint64_t nrp_createWithFigRenderPipeline(const void *a1, const void *a2, uint64_t a3, NSObject *a4, const void *a5, const void *a6, void *a7)
{
  v14 = malloc_type_calloc(1uLL, 0x88uLL, 0x10600401BDAA220uLL);
  *v14 = CFRetain(a1);
  *(v14 + 2) = 1986618469;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 2) = v15;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  dispatch_retain(a4);
  if (a5)
  {
    v16 = CFRetain(a5);
    *(v14 + 6) = v16;
    v17 = *(*v14 + 104);
    if (v17)
    {
      FigToolViewAddVisualContext(v17, v16);
    }
  }

  if (a6)
  {
    v18 = CFRetain(a6);
  }

  else
  {
    v18 = 0;
  }

  *(v14 + 7) = v18;
  FigRenderPipelineGetFigBaseObject();
  v20 = v19;
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v22 = v21(v20, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], v14 + 64);
    if (v22 || (v23 = MEMORY[0x1E6960C70], v24 = *MEMORY[0x1E6960C70], *(v14 + 5) = *MEMORY[0x1E6960C70], v25 = *(v23 + 16), *(v14 + 12) = v25, v26 = *(v14 + 8), *&v29.value = v24, v29.epoch = v25, v22 = CMBufferQueueInstallTrigger(v26, nrp_sourceQueueDidBecomeReady, v14, 5, &v29, v14 + 9), v22))
    {
      v27 = v22;
    }

    else
    {
      if (nrp_createWithFigRenderPipeline_sNeroRPNotificationNameToMessageTypeDictCreateOnce != -1)
      {
        nrp_createWithFigRenderPipeline_cold_1();
      }

      CFDictionaryApplyFunction(sNeroRPNotificationNameToMessageTypeDict, nrp_registerNotificationListener, v14);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v27 = 0;
      v14[129] = FigGetCFPreferenceNumberWithDefault() != 0;
      *a7 = v14;
      v14 = 0;
    }
  }

  else
  {
    v27 = 4294954514;
  }

  nrp_destroy(v14);
  return v27;
}

void nero_setVideoGravity(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (FigCFEqual() != 0);
  }

  v4 = *(a1 + 104);
  if (v4)
  {

    FigToolViewSetVideoGravity(v4, v3);
  }
}

void __nero_createVideoRenderPipeline_block_invoke(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a2 > 1920167792)
  {
    if (a2 > 1952604530)
    {
      if (a2 <= 1953721716)
      {
        if (a2 == 1952604531)
        {
          v18 = *(a1 + 32);

          nrp_setTimebase(v18, theSourceBuffer);
        }

        else if (a2 == 1953131888)
        {
          destination = 0;
          if (*(v4 + 120))
          {
            if (CMBlockBufferGetDataLength(theSourceBuffer) == 56)
            {
              block = 0uLL;
              *&v45 = 0;
              memset(&time, 0, sizeof(time));
              if (!CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &destination) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 8uLL, 0x18uLL, &block) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 0x20uLL, 0x18uLL, &time))
              {
                v5 = *(v4 + 120);
                *&timebaseTime.value = block;
                timebaseTime.epoch = v45;
                immediateSourceTime = time;
                CMTimebaseSetAnchorTime(v5, &timebaseTime, &immediateSourceTime);
              }
            }
          }
        }

        return;
      }

      if (a2 != 1953721717)
      {
        if (a2 == 1969450091)
        {
          v14 = *(*v4 + 72);
          if (v14)
          {
            v15 = *(v4 + 120);

            CMTimebaseSetSourceClock(v15, v14);
          }
        }

        return;
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      block = 0u;
      v45 = 0u;
      if (!*(v4 + 120) || CMBlockBufferGetDataLength(theSourceBuffer) != 72 || CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 0x48uLL, &block))
      {
        return;
      }

      if ((BYTE4(block) & 1) == 0)
      {
        if (BYTE12(v45))
        {
          v19 = *(v4 + 120);
          *&time.value = v45;
          time.epoch = v46;
          CMTimebaseSetTime(v19, &time);
        }

        return;
      }

      v32 = CMTimebaseCopySource(*(v4 + 120));
      v33 = *(v4 + 120);
      v34 = *(&block + 1);
      CMSyncGetTime(&time, v32);
      *&timebaseTime.value = v45;
      timebaseTime.epoch = v46;
      CMTimebaseSetRateAndAnchorTime(v33, v34, &timebaseTime, &time);
      if (!v32)
      {
        return;
      }

      v27 = v32;
LABEL_74:
      CFRelease(v27);
      return;
    }

    if (a2 != 1920167793)
    {
      if (a2 != 1936749168)
      {
        if (a2 == 1936875892)
        {
          LODWORD(destination) = 0;
          v39 = 0.0;
          v6 = MEMORY[0x1E6960C70];
          *&timebaseTime.value = *MEMORY[0x1E6960C70];
          v7 = *(MEMORY[0x1E6960C70] + 16);
          timebaseTime.epoch = v7;
          if (CMBlockBufferGetDataLength(theSourceBuffer) == 32 && !CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &v39) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 8uLL, 0x18uLL, &timebaseTime))
          {
            v8 = *(v6 + 12);
            if (*(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              v9 = *(v4 + 16);
              v10 = *&destination;
              v11 = v39;
              immediateSourceTime = timebaseTime;
              v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v12)
              {
                block = *&immediateSourceTime.value;
                *&v45 = immediateSourceTime.epoch;
                time.value = *v6;
                time.timescale = *(v6 + 8);
                time.flags = v8;
                time.epoch = v7;
                v12(v9, &block, &time, v10, v11);
              }
            }

            else if ((timebaseTime.flags & 0x1D) == 1)
            {
              block = 0uLL;
              *&v45 = 0;
              v35 = CMTimebaseCopySource(*(v4 + 120));
              v36 = v35;
              if ((v8 & 0x1D) == 1)
              {
                HostTimeClock = CMClockGetHostTimeClock();
                time.value = *v6;
                time.timescale = *(v6 + 8);
                time.flags = v8;
                time.epoch = v7;
                CMSyncConvertTime(&block, &time, HostTimeClock, v36);
              }

              else
              {
                CMSyncGetTime(&block, v35);
              }

              if (v36)
              {
                CFRelease(v36);
              }

              v38 = *(v4 + 120);
              time = timebaseTime;
              *&immediateSourceTime.value = block;
              immediateSourceTime.epoch = v45;
              CMTimebaseSetRateAndAnchorTime(v38, *&destination, &time, &immediateSourceTime);
            }

            else
            {
              CMTimebaseSetRate(*(v4 + 120), *&destination);
            }
          }
        }

        return;
      }

      *&block = 0;
      time.value = 0;
      if (!FigRemote_CreateKeyValuePairFromSerializedAtomDataBlockBuffer())
      {
        if (CFEqual(block, @"IsTimebaseStarter"))
        {
          value = time.value;
          *(v4 + 128) = time.value == *MEMORY[0x1E695E4D0];
        }

        else
        {
          value = time.value;
          if (CFEqual(block, @"NeroVideoGravity"))
          {
            nero_setVideoGravity(*v4, time.value);
            value = time.value;
          }
        }

        FigRenderPipelineGetFigBaseObject();
        v30 = v29;
        v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v31)
        {
          v31(v30, block, value);
        }
      }

      if (block)
      {
        CFRelease(block);
      }

LABEL_73:
      v27 = time.value;
      if (!time.value)
      {
        return;
      }

      goto LABEL_74;
    }

    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
    return;
  }

  if (a2 > 1886154614)
  {
    if (a2 == 1886154615)
    {
      v20 = *(v4 + 16);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {

        v21(v20);
      }

      return;
    }

    if (a2 != 1919249523)
    {
      if (a2 == 1920165236)
      {
        v13 = *(v4 + 64);

        CMBufferQueueReset(v13);
      }

      return;
    }

LABEL_42:
    v16 = *v4;
    if (*(v4 + 8) == 1986618469)
    {
      if (!*(v16 + 16))
      {
        v17 = *(v16 + 32);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 0x40000000;
        *&v45 = __nero_destroyVideoRenderPipeline_block_invoke;
        *(&v45 + 1) = &__block_descriptor_tmp_119_1;
        *&v46 = v16;
        *(&v46 + 1) = v4;
        dispatch_async(v17, &block);
      }
    }

    else
    {
      NeroTransportUnregisterObject();

      nrp_destroy(v4);
    }

    return;
  }

  switch(a2)
  {
    case 1684628836:
      goto LABEL_42;
    case 1717921124:
      time.value = 0;
      if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer())
      {
        DataBuffer = CMSampleBufferGetDataBuffer(time.value);
        *(v4 + 24) += CMBlockBufferGetDataLength(DataBuffer);
        v23 = CMGetAttachment(time.value, @"quaternion", 0);
        if (v23)
        {
          v24 = *v4;
          if (*(*v4 + 160))
          {
            block = 0u;
            v45 = 0u;
            v51.location = 0;
            v51.length = 32;
            CFDataGetBytes(v23, v51, &block);
            v25 = *(v24 + 160);
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v26)
            {
              v26(v25, &block);
            }
          }
        }

        CMBufferQueueEnqueue(*(v4 + 64), time.value);
      }

      goto LABEL_73;
    case 1768912244:
      *&block = 0;
      if (!theSourceBuffer || !FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      break;
  }
}

void __nero_createVideoRenderPipeline_block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2 == 1668050795)
  {
    v26 = 0;
    cf = 0;
    v10 = *MEMORY[0x1E695E480];
    FigRenderPipelineGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v13 || ((v14 = v13(v12, @"PreferredClock", v10, &v26), v15 = v26, !v14) ? (v16 = v26 == 0) : (v16 = 1), v16))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v15 = CFRetain(HostTimeClock);
      v26 = v15;
    }

    v18 = *v5;
    v19 = *(*v5 + 40);
    block = MEMORY[0x1E69E9820];
    v29 = 0x40000000;
    v30 = __nero_retainClockForOctavia_block_invoke;
    v31 = &__block_descriptor_tmp_122_0;
    v32 = v18;
    v33 = v15;
    dispatch_sync(v19, &block);
    BBufFromPointer = FigTransportCreateBBufFromPointer();
    v20 = *v5;
    if (BBufFromPointer)
    {
      v21 = *(v20 + 40);
      block = MEMORY[0x1E69E9820];
      v29 = 0x40000000;
      v30 = __nero_releaseClockForOctavia_block_invoke;
      v31 = &__block_descriptor_tmp_123_1;
      v32 = v20;
      v33 = v26;
      dispatch_async(v21, &block);
      if (cf)
      {
        CFRelease(cf);
      }

      v9 = 0;
    }

    else
    {
      nero_setPreferredClock(v20, v26);
      v9 = cf;
      cf = 0;
    }

    goto LABEL_30;
  }

  if (a2 == 1668313712)
  {
    cf = 0;
    block = 0;
    v26 = 0;
    v6 = *MEMORY[0x1E695E480];
    CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
    if (CFTypeFromSerializedAtomDataBlockBuffer)
    {
      goto LABEL_4;
    }

    FigRenderPipelineGetFigBaseObject();
    v24 = v23;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v25)
    {
      v9 = 0;
      BBufFromPointer = 4294954514;
      goto LABEL_26;
    }

    CFTypeFromSerializedAtomDataBlockBuffer = v25(v24, block, v6, &cf);
    if (CFTypeFromSerializedAtomDataBlockBuffer)
    {
LABEL_4:
      BBufFromPointer = CFTypeFromSerializedAtomDataBlockBuffer;
    }

    else
    {
      BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
      if (!BBufFromPointer)
      {
        v9 = v26;
        v26 = 0;
        goto LABEL_26;
      }
    }

    v9 = 0;
LABEL_26:
    if (block)
    {
      CFRelease(block);
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_30:
    if (v26)
    {
      CFRelease(v26);
    }

    (*(a4 + 16))(a4, BBufFromPointer, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    return;
  }

  v22 = *(a4 + 16);

  v22(a4, 4294955260, 0);
}

double nrp_sourceQueueDidBecomeReady(uint64_t a1)
{
  if (*(a1 + 92))
  {
    NeroTransportSendAsyncMessage();
  }

  CMBufferQueueGetMinPresentationTimeStamp(&v3, *(a1 + 64));
  result = *&v3.value;
  *(a1 + 80) = v3;
  return result;
}

CFDictionaryRef __nrp_createWithFigRenderPipeline_block_invoke()
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = @"SynchronousFrameEnqueued";
  keys[1] = @"FirstVideoFrameEnqueued";
  v0 = *MEMORY[0x1E69605B0];
  keys[2] = @"DecodeError";
  keys[3] = v0;
  v2[0] = *"mrfs";
  v2[1] = *"rred";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v2, 4, MEMORY[0x1E695E9D8], 0);
  sNeroRPNotificationNameToMessageTypeDict = result;
  return result;
}

uint64_t nrp_registerNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t nero_handleFirstVideoFrameEnqueued(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void nrp_reflectNotificationToOctavia(int a1, void *a2, void *key, uint64_t a4, uint64_t a5)
{
  if (CFDictionaryContainsKey(sNeroRPNotificationNameToMessageTypeDict, key))
  {
    CFDictionaryGetValue(sNeroRPNotificationNameToMessageTypeDict, key);
    if (!a5 || !FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
    {
      NeroTransportSendAsyncMessage();
    }
  }
}

void nrp_setTimebase(void *a1, CMBlockBufferRef theSourceBuffer)
{
  if (!theSourceBuffer)
  {
    v7 = a1 + 15;
    v6 = a1[15];
    if (!v6)
    {
      return;
    }

    v5 = 0;
    goto LABEL_23;
  }

  v20 = 0;
  if (CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v20))
  {
    return;
  }

  v3 = *a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v4 = *(v3 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_acquireNeroTimebaseForOctaviaTimebase_block_invoke;
  block[3] = &unk_1E7496BF0;
  block[5] = v3;
  block[6] = v20;
  block[4] = &v22;
  dispatch_sync(v4, block);
  v5 = v23[3];
  _Block_object_dispose(&v22, 8);
  v7 = a1 + 15;
  v6 = a1[15];
  if (v5 != v6)
  {
    if (!v6)
    {
LABEL_5:
      a1[15] = v5;
      FigRenderPipelineGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v10(v9, @"Timebase", v5);
      }

      v11 = a1[7];
      if (v11)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v12)
        {
          v12(v11, 0, 0);
        }

        v14 = a1[6];
        v13 = a1[7];
        v15 = a1[15];
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v13, v14, v15);
        }
      }

      if (*v7)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        CFRetain(a1[15]);
      }

      if (*(a1 + 2) == 1986618469)
      {
        v17 = *(*a1 + 160);
        if (v17)
        {
          v18 = a1[15];
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v19)
          {
            v19(v17, v18);
          }
        }
      }

      return;
    }

LABEL_23:
    nero_relinquishNeroTimebase(*a1, v6);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CFRelease(a1[15]);
    goto LABEL_5;
  }

  if (v5)
  {
    nero_relinquishNeroTimebase(*a1, v6);
  }
}

void nrp_timebaseRateChangedCallback(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = *MEMORY[0x1E695E480];
    if (!v5(v4, @"FigImageQueueArray", *MEMORY[0x1E695E480], &cf))
    {
      v7 = cf;
      if (cf)
      {
        v19.length = CFArrayGetCount(cf);
        v19.location = 0;
        CFArrayApplyFunction(v7, v19, nrp_timebaseRateChangedCallbackApply, *(a2 + 120));
      }

      if (*(a2 + 128))
      {
        outRelativeRate = 0.0;
        outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960C70];
        outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
        destinationBuffer = 0;
        v8 = CMTimebaseCopySource(*(a2 + 120));
        if (!CMSyncGetRelativeRateAndAnchorTime(*(a2 + 120), v8, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime))
        {
          v9 = CMBlockBufferCreateWithMemoryBlock(v6, 0, 0x38uLL, v6, 0, 0, 0x38uLL, 1u, &destinationBuffer);
          v10 = destinationBuffer;
          if (!v9)
          {
            v11 = CMBlockBufferReplaceDataBytes(&outRelativeRate, destinationBuffer, 0, 8uLL);
            v10 = destinationBuffer;
            if (!v11)
            {
              v12 = CMBlockBufferReplaceDataBytes(&outOfClockOrTimebaseAnchorTime, destinationBuffer, 8uLL, 0x18uLL);
              v10 = destinationBuffer;
              if (!v12)
              {
                v13 = CMBlockBufferReplaceDataBytes(&outRelativeToClockOrTimebaseAnchorTime, destinationBuffer, 0x20uLL, 0x18uLL);
                v10 = destinationBuffer;
                if (!v13)
                {
                  NeroTransportSendAsyncMessage();
                  v10 = destinationBuffer;
                }
              }
            }
          }

          if (v10)
          {
            CFRelease(v10);
          }
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void *__nero_acquireNeroTimebaseForOctaviaTimebase_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5] + 88;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 16) == result[6])
    {
      ++*(v2 + 32);
      *(*(result[4] + 8) + 24) = *(v2 + 24);
      break;
    }
  }

  if (!*(*(result[4] + 8) + 24))
  {
    v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004041EBAFA3uLL);
    v4 = v1[5];
    *(v3 + 2) = v1[6];
    *(v3 + 8) = 1;
    result = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], *(v4 + 72), v3 + 3);
    *(*(v1[4] + 8) + 24) = *(v3 + 3);
    v5 = *(v1[5] + 88);
    *v3 = v5;
    if (v5)
    {
      *(*(v1[5] + 88) + 8) = v3;
    }

    *(v1[5] + 88) = v3;
    *(v3 + 1) = v1[5] + 88;
  }

  return result;
}

void __nero_relinquishNeroTimebase_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 11;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[3] == *(a1 + 40))
    {
      v4 = *(v3 + 8) - 1;
      *(v3 + 8) = v4;
      if (!v4)
      {
        v5 = *v3;
        v6 = v3[1];
        if (*v3)
        {
          *(v5 + 8) = v6;
        }

        *v6 = v5;
        CFRelease(v3[3]);
        free(v3);
        v2 = *(a1 + 32);
      }

      break;
    }
  }

  CFRelease(v2);
}

uint64_t nrp_timebaseRateChangedCallbackApply(uint64_t a1, CMTimebaseRef timebase)
{
  if (timebase)
  {
    CFGetTypeID(timebase);
    CMTimebaseGetTypeID();
  }

  Rate = CMTimebaseGetRate(timebase);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(a1, Rate != 0.0);
  }

  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 48);
  if (v10)
  {
    v7.n128_f32[0] = Rate;

    return v10(a1, v7);
  }

  return result;
}

void __nero_destroyVideoRenderPipeline_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    v3 = *(v1 + 144);
    v8.length = CFArrayGetCount(v3);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, *(a1 + 40));
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 144), FirstIndexOfValue);
      NeroTransportUnregisterObject();
      v5 = *(a1 + 40);
      v6 = *(v5 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __nero_destroyVideoRenderPipeline_block_invoke_2;
      block[3] = &__block_descriptor_tmp_118_1;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

void nero_setPreferredClock(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_retainClockForOctavia_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsKey(*(*(a1 + 32) + 80), *(a1 + 40)))
  {
    v2 = CFDictionaryGetValue(*(*(a1 + 32) + 80), *(a1 + 40)) + 1;
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRetain(v3);
    }

    NeroTransportRegisterObject();
    v2 = 1;
  }

  CFDictionarySetValue(*(*(a1 + 32) + 80), *(a1 + 40), v2);
}

void __nero_retainClockForOctavia_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1919249523)
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __nero_releaseClockForOctavia_block_invoke;
    v6[3] = &__block_descriptor_tmp_123_1;
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 40);
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __nero_retainClockForOctavia_block_invoke_3(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1953066341)
  {
    v5 = *(a1 + 32);
    blockBufferOut = 0;
    clockTimeOut = **&MEMORY[0x1E6960C70];
    referenceClockTimeOut = clockTimeOut;
    AnchorTime = CMClockGetAnchorTime(v5, &clockTimeOut, &referenceClockTimeOut);
    if (AnchorTime)
    {
LABEL_7:
      (*(a4 + 16))(a4, AnchorTime, 0);
      return;
    }

    v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x18uLL, *MEMORY[0x1E695E480], 0, 0, 0x18uLL, 1u, &blockBufferOut);
    v8 = blockBufferOut;
    if (v7 || (v7 = CMBlockBufferReplaceDataBytes(&clockTimeOut, blockBufferOut, 0, 0x18uLL), v8 = blockBufferOut, v7))
    {
      AnchorTime = v7;
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_7;
    }

    (*(a4 + 16))(a4, 0, blockBufferOut);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = *(a4 + 16);

    v9(a4, 4294955260, 0);
  }
}

void __nero_releaseClockForOctavia_block_invoke(uint64_t a1)
{
  CFDictionaryContainsKey(*(*(a1 + 32) + 80), *(a1 + 40));
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 80), *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = Value - 1;
  if (Value == 1)
  {
    NeroTransportUnregisterObject();
    CFDictionaryRemoveValue(*(*(a1 + 32) + 80), *(a1 + 40));
    v6 = *(a1 + 40);
    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {
    v5 = *(*(a1 + 32) + 80);

    CFDictionarySetValue(v5, v3, v4);
  }
}

void nds_didDecodeFrame(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  sourceBytes = a2;
  v9 = a3;
  destinationBuffer = 0;
  if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL) && !CMBlockBufferReplaceDataBytes(&v9, destinationBuffer, 4uLL, 4uLL))
  {
    if (v9 || !FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer() && (v5 = destinationBuffer, DataLength = CMBlockBufferGetDataLength(0), !CMBlockBufferAppendBufferReference(v5, 0, 0, DataLength, 0)))
    {
      NeroTransportSendAsyncMessage();
    }
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }
}

void __nero_createVideoDecompressionSession_block_invoke(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer)
{
  v3 = *(a1 + 32);
  if (a2 > 1684628835)
  {
    if (a2 == 1684628836 || a2 == 1919249523)
    {
      v6 = *(a1 + 32);

      nds_destroy(v6);
    }
  }

  else if (a2 == 561406316)
  {
    if (v3)
    {
      v7 = *v3;

      VTDecompressionSessionInvalidate(v7);
    }
  }

  else if (a2 == 1684235365)
  {
    sampleBuffer = 0;
    destination = 0;
    if (!CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination))
    {
      SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
      v5 = sampleBuffer;
      if (!SampleBufferFromSerializedAtomDataBlockBuffer)
      {
        VTDecompressionSessionDecodeFrame(*v3, sampleBuffer, 0, destination, 0);
        v5 = sampleBuffer;
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

void nds_destroy(uint64_t a1)
{
  if (a1)
  {
    NeroTransportUnregisterObject();
    if (*a1)
    {
      CFRelease(*a1);
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void __nero_displayWasAttached_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v2 + 136);
  if (v4)
  {
    CFRelease(v4);
    v2 = *v3;
  }

  *(v2 + 136) = *(a1 + 40);
  Count = CFArrayGetCount(*(*(a1 + 32) + 144));
  if (Count >= 1)
  {
    __nero_displayWasAttached_block_invoke_cold_1(v3, Count);
  }

  v6 = *v3;
  if (*(*v3 + 121))
  {

    nero_tellOctaviaDisplayWasAttached(v6);
  }
}

void __nero_displayWasDetached_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 136) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 121))
  {
    FigTransportGetRemoteRootObject();

    NeroTransportSendAsyncMessage();
  }
}

uint64_t nrp_unregisterNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRemoveListener();
}

void __nero_reset_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 32) + 88); i; i = *(*(a1 + 32) + 88))
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      *(v3 + 8) = v4;
    }

    *v4 = v3;
    CFRelease(i[3]);
    free(i);
  }
}

uint64_t OUTLINED_FUNCTION_0_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CMNotificationCenterAddListener();
}

uint64_t OUTLINED_FUNCTION_1_186(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CMNotificationCenterAddListener();
}

uint64_t sessionCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!FVDUtilsSessionServerEnabled())
  {
    sessionCreateCommon_cold_3();
    v6 = 4294954514;
    goto LABEL_14;
  }

  if (!a4)
  {
    sessionCreateCommon_cold_2();
    v6 = 4294955226;
    goto LABEL_14;
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsr_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7496DC0;
  block[4] = v16;
  if (fvdsr_ensureClientEstablished_onceToken != -1)
  {
    dispatch_once(&fvdsr_ensureClientEstablished_onceToken, block);
  }

  v6 = *(v16[1] + 24);
  _Block_object_dispose(v16, 8);
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_19:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    v7 = FigXPCMessageSetCFDictionary();
    if (v7)
    {
      goto LABEL_18;
    }
  }

  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v10 = uint64;
  if (!uint64)
  {
    sessionCreateCommon_cold_1();
  }

  FigVirtualDisplaySessionGetClassID(uint64, v9);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_18:
    v6 = v7;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.vdsessionremote.stateq", 0);
  *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.vdsessionremote.notifq", 0);
  FigXPCRemoteClientAssociateObject();
  v6 = 0;
  *a4 = 0;
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t FigVirtualDisplaySessionRemoteFrameReceiverCreate(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Common = sessionCreateCommon(a1, a2, 1668441715, a4);
    if (Common)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 32) = _Block_copy(a3);
    }
  }

  else
  {
    FigVirtualDisplaySessionRemoteFrameReceiverCreate_cold_1();
    return 4294955226;
  }

  return Common;
}

void __fvdsr_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"SessionServerDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t fvdsr_handleDeadConnection(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 56) = 1;
  return result;
}

void fvdsr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fvdsr_finalize_cold_1();
  }

  if (sFVDSessionRemoteClient)
  {
    FigXPCRemoteClientDisassociateObject();
  }

  if (!*(DerivedStorage + 56))
  {
    fvdsr_sendBasicMessage(DerivedStorage, 1684632432, 0);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    _Block_release(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    _Block_release(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }
}

CFStringRef fvdsr_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  v4 = *DerivedStorage;
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v3, 0, @"<FigVirtualDisplaySessionRemote %p state: %d retainCount: %ld objectID: %llu>", a1, v4, v5, *(DerivedStorage + 6));
}

uint64_t fvdsr_sendBasicMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = FigXPCCreateBasicMessage();
  if (v4 || a3 && (v4 = FigXPCMessageSetCFDictionary(), v4))
  {
    v5 = v4;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_9;
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_9:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t sessionStart_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    sessionStart_cold_1();
  }

  v7 = *(DerivedStorage + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __sessionStart_block_invoke_0;
  v9[3] = &unk_1E7496E10;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = DerivedStorage;
  dispatch_sync(v7, v9);
  return 0;
}

uint64_t sessionStop_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStop_block_invoke;
  block[3] = &__block_descriptor_tmp_14_9;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t sessionSuspend_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionSuspend_block_invoke_0;
  block[3] = &__block_descriptor_tmp_15_9;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t sessionResume_0(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 1)
  {
    sessionResume_cold_1();
  }

  v3 = *(DerivedStorage + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __sessionResume_block_invoke_0;
  v6[3] = &unk_1E7496E78;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __sessionStart_block_invoke_0(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = a1[4];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    _Block_release(v5);
  }

  *(DerivedStorage + 24) = v3;
  if (!*DerivedStorage)
  {
    v7 = *MEMORY[0x1E695E480];
    if (v2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    v11 = getprogname();
    if (*(DerivedStorage + 32))
    {
      Value = CFDictionaryGetValue(v10, @"usage");
      if (!Value)
      {
LABEL_15:
        CFDictionarySetValue(v10, @"usage", @"Uncompressed");
        goto LABEL_16;
      }

      v13 = Value;
      if (!CFEqual(Value, @"Uncompressed") && !CFEqual(v13, @"UncompressedHDR"))
      {
        v24 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_15;
      }
    }

LABEL_16:
    if (v11)
    {
      v14 = CFStringCreateWithCString(v7, v11, 0x8000100u);
      CFDictionaryAddValue(v10, @"clientName", v14);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    getpid();
    FigCFDictionarySetInt32();
    v9 = fvdsr_sendBasicMessage(DerivedStorage, 1937011316, v10);
    if (v9)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v10)
      {
LABEL_24:
        CFRelease(v10);
      }
    }

    else
    {
      FigCFDictionaryGetBooleanIfPresent();
      if (v22)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      *DerivedStorage = v15;
      if (v10)
      {
        goto LABEL_24;
      }
    }

    if (!v9)
    {
      return;
    }

    goto LABEL_26;
  }

  v24 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v9 = -12070;
LABEL_26:
  v16 = a1[4];
  if (v16)
  {
    v17 = *(a1[7] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sessionStart_block_invoke_2_0;
    block[3] = &unk_1E7496DE8;
    block[4] = v16;
    v21 = v9;
    dispatch_async(v17, block);
  }
}

uint64_t __sessionStop_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fvdsr_sendBasicMessage(DerivedStorage, 1937010544, 0);
  *DerivedStorage = 0;
  return result;
}

_DWORD *__sessionSuspend_block_invoke_0(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result == 2)
  {
    v2 = result;
    result = fvdsr_sendBasicMessage(result, 1937077104, 0);
    *v2 = 1;
  }

  return result;
}

void __sessionResume_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*DerivedStorage == 1)
  {
    v4 = fvdsr_sendBasicMessage(DerivedStorage, 1919251309, 0);
    if (v4)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      *v3 = 2;
    }
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = -12070;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

BOOL OUTLINED_FUNCTION_16_54(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_24_34(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_25_36(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_27_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, char a22, os_log_type_t type, int a24)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_28_32(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigSampleAttachmentCollectionRulesBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleAttachmentCollectionRulesGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectionRulesGetClassID_sRegisterFigSampleAttachmentCollectionRulesBaseTypeOnce, RegisterFigSampleAttachmentCollectionRulesBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t rules_SampleAttachmentCollectionRulesCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  if (!a4)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_7(&v18);
    return v18;
  }

  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectionRulesGetClassID_sRegisterFigSampleAttachmentCollectionRulesBaseTypeOnce, RegisterFigSampleAttachmentCollectionRulesBaseType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = CFRetain(a3);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 32) = v9;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_6(&v18);
    return v18;
  }

  v11 = *MEMORY[0x1E69603B0];
  if (!*MEMORY[0x1E69603B0])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_5(&v18);
LABEL_24:
    v16 = v18;
    if (v18)
    {
      return v16;
    }

    CFArrayAppendValue(*(DerivedStorage + 8), 0);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E6960468];
  if (!*MEMORY[0x1E6960468])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_4(&v18);
    goto LABEL_24;
  }

  v13 = *MEMORY[0x1E6965F18];
  if (!*MEMORY[0x1E6965F18])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_3(&v18);
    goto LABEL_24;
  }

  if (FigCollectionRuleGetTypeID_oneTimeOnly != -1)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_2(&v18);
    goto LABEL_24;
  }

  v15 = Instance;
  *(Instance + 24) = 1;
  *(Instance + 16) = CFRetain(v11);
  v15[4] = CFRetain(v12);
  v15[5] = CFRetain(v13);
  v15[6] = rules_collectSceneIlluminationAttachment;
  CFArrayAppendValue(*(DerivedStorage + 8), v15);
  CFRelease(v15);
LABEL_14:
  v16 = 0;
  *a4 = 0;
  return v16;
}

uint64_t rules_collectSceneIlluminationAttachment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  FigBoxedMetadataGetValueOfItemAtIndexAsUInt32();
  FigCFDictionarySetUInt32();
  return 0;
}

uint64_t figCollectionRuleClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  sFigCollectionRuleTypeID = result;
  return result;
}

double figCollectionRuleInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figCollectionRuleFinalize(void *a1)
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

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

__CFString *figCollectionRuleCopyDebugDescription(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCollectionRule %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"mebx identifier %@, sbuf key %@, pbuf key %@", a1[2], a1[4], a1[5]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void figSampleAttachmentCollectionRulesFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *figSampleAttachmentCollectionRulesCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"FSACRules %p retainCount: %d allocator: %p", a1, v4, v5);
  return Mutable;
}

uint64_t figSampleAttachmentCollectionRulesCopyProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294954516;
  }
}

uint64_t figSampleAttachmentCollectionRulesSetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294954516;
  }
}

CFTypeRef OUTLINED_FUNCTION_2_181(uint64_t a1)
{
  v3 = *(a1 + 32);

  return CMGetAttachment(v1, v3, 0);
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7496EA0;
  block[4] = &v3;
  if (FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_sFigEndpointStreamAudioEngineRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_sFigEndpointStreamAudioEngineRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteXPCAudioEngine_CreateInternal(uint64_t a1, CFTypeRef *a2)
{
  v4 = *MEMORY[0x1E695E480];
  FigEndpointStreamAudioEngineGetClassID(a1, a2);
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = a1;
  DerivedStorage[4] = 1;
  Mutable = CFDictionaryCreateMutable(v4, 0, 0, &kFigEndpointStreamAudioEngineRemoteXPC_CompletionCallbackEntryDictionaryValueCallbacks);
  DerivedStorage[3] = Mutable;
  if (Mutable)
  {
    v8 = FigDispatchQueueCreateWithPriority();
    DerivedStorage[2] = v8;
    if (v8)
    {
      v9 = FigXPCRemoteClientAssociateObject();
      if (!v9)
      {
        *a2 = 0;
        return v9;
      }
    }

    else
    {
      v9 = 4294951816;
    }

    v11 = DerivedStorage[3];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v9 = 4294951816;
  }

  v12 = DerivedStorage[2];
  if (v12)
  {
    dispatch_release(v12);
  }

  return v9;
}

void remoteXPCAudioEngineClient_DeadConnectionCallback(uint64_t a1)
{
  *CMBaseObjectGetDerivedStorage() = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  context = -16722;
  v2 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __FigEndpointStreamAudioEngineRemoteXPC_runAllCallbacks_block_invoke;
  v5[3] = &unk_1E7496EC8;
  v5[5] = v11;
  v5[6] = DerivedStorage;
  v5[4] = &v7;
  dispatch_sync(v2, v5);
  v3 = v8[3];
  if (v3)
  {
    CFDictionaryApplyFunction(v3, FigEndpointStreamAudioEngineRemoteXPC_runOneCallback, &context);
    v4 = v8[3];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_runOneCallback(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  result = *a2;
  v9 = *(a2 + 8);
  v10 = *a3;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v9 <= 2)
  {
    if (v9 != 1 && v9 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v9 == 3)
  {
LABEL_8:
    v13 = *(a2 + 24);

    return v12(result, v10, v13, a4, a5, v11);
  }

  if (v9 == 4)
  {
    v18 = v5;
    v19 = v6;
    v16 = *MEMORY[0x1E6960C70];
    v17 = *(MEMORY[0x1E6960C70] + 16);
    v14 = v16;
    v15 = v17;
    return (v12)(result, v10, &v16, &v14, 0, v11, 0.0);
  }

  return result;
}

void __remoteXPCAudioEngineClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(*(*(a1 + 40) + 24), *(a1 + 48), &value))
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(value + 1);
    *(v2 + 24) = *value;
    *(v2 + 40) = v3;
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (v4)
    {
      CFRetain(v4);
    }

    CFDictionaryRemoveValue(*(*(a1 + 40) + 24), *(a1 + 48));
  }
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v10 = 0;
  cf = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v10);
  if (!ObjectID)
  {
    if (CFEqual(a2, @"endpointStream"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (ObjectID)
      {
        goto LABEL_26;
      }

      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (ObjectID)
      {
        goto LABEL_26;
      }

      if (xpc_dictionary_get_uint64(0, "StreamObjectID"))
      {
        ObjectID = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream();
        if (ObjectID)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v8 = 0;
      *a4 = cf;
      cf = 0;
      goto LABEL_24;
    }

    if (CFEqual(a2, @"inputSampleBufferConsumer"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          uint64 = xpc_dictionary_get_uint64(0, "SampleBufferConsumerObjectID");
          if (!uint64)
          {
            goto LABEL_23;
          }

          FigSampleBufferConsumerXPCRemoteRetainCopiedSampleBufferConsumer(uint64, &cf);
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else if (CFEqual(a2, @"transportAudioFormatDescription"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription();
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      if (!CFEqual(a2, @"supportedAudioFormatDescriptions"))
      {
        ObjectID = FigXPCSendStdCopyPropertyMessage();
        if (ObjectID)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray();
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

LABEL_26:
  v8 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCAudioEngine_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCAudioEngine_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_Resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v17 = 0;
  xdict = 0;
  v15 = 0;
  value = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v17);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v13 = ObjectID;
    MutableCopy = 0;
    goto LABEL_34;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v13 = 4294951816;
    goto LABEL_34;
  }

  v9 = FigCFDictionaryGetValue();
  if (v9)
  {
    xpc_dictionary_set_BOOL(xdict, "HasAudioSourceOption", 1);
    if (remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceFunctionLoadedOnce != -1)
    {
      FigEndpointStreamAudioEngineRemoteXPC_Resume_cold_1();
    }

    v10 = remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage;
    if (!remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage && !FigEndpointStreamAudioEngineRemoteXPC_Resume_cold_2(&v19))
    {
      v13 = v19;
LABEL_34:
      if (!a3)
      {
LABEL_27:
        if (!MutableCopy)
        {
          return FigXPCRelease();
        }

        goto LABEL_23;
      }

LABEL_26:
      a3(a1, v13, a4);
      goto LABEL_27;
    }

    v11 = v10(v9, xdict);
    if (v11)
    {
      goto LABEL_29;
    }

    CFDictionaryRemoveValue(MutableCopy, @"audioSourceOption");
  }

  else
  {
    xpc_dictionary_set_BOOL(xdict, "HasAudioSourceOption", 0);
  }

  if (FigCFDictionaryGetValue())
  {
    v11 = FigEndpointStreamXPCRemoteGetObjectID();
    if (v11)
    {
      goto LABEL_29;
    }

    xpc_dictionary_set_uint64(xdict, "EndpointStreamHintObjectID", value);
    CFDictionaryRemoveValue(MutableCopy, @"endpointStreamHint");
  }

  if (FigCFDictionaryGetValue())
  {
    v11 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription();
    if (v11)
    {
      goto LABEL_29;
    }

    CFDictionaryRemoveValue(MutableCopy, @"initialTransportAudioFormatDescriptionHint");
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_20;
  }

  v11 = FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray();
  if (v11)
  {
LABEL_29:
    v13 = v11;
    goto LABEL_34;
  }

  CFDictionaryRemoveValue(MutableCopy, @"supportedAudioFormatDescriptions");
LABEL_20:
  v11 = FigXPCMessageSetCFDictionary();
  if (v11)
  {
    goto LABEL_29;
  }

  v12 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 1, a3, a4, &v15);
  if (a3)
  {
    v13 = v12;
    if (v12)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v15))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_23:
  CFRelease(MutableCopy);
  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_Suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v12);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v9 = ObjectID;
    if (!a3)
    {
      return FigXPCRelease();
    }

    goto LABEL_8;
  }

  v8 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, v13, 2, a3, a4, &v11);
  if (a3)
  {
    v9 = v8;
    if (v8)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v11))
      {
LABEL_8:
        a3(a1, v9, a4);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_SetEndpointStream(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v14 = 0;
  xdict = 0;
  v12 = 0;
  value = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v14);
  if (ObjectID || a2 && (ObjectID = FigEndpointStreamXPCRemoteGetObjectID(), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v10 = ObjectID;
    if (!a3)
    {
      return FigXPCRelease();
    }

    goto LABEL_9;
  }

  xpc_dictionary_set_uint64(xdict, "StreamObjectID", value);
  v9 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 3, a3, a4, &v12);
  if (a3)
  {
    v10 = v9;
    if (v9)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v12))
      {
LABEL_9:
        a3(a1, v10, a4);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, void (*a4)(uint64_t, uint64_t, __int128 *, __int128 *, void, uint64_t, double), uint64_t a5, uint64_t a6, double a7)
{
  v22 = 0;
  xdict = 0;
  v21 = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v22);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(xdict, "Rate", a7), v19 = *a2, v20 = *(a2 + 2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (v19 = *a3, v20 = *(a3 + 2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v15 = ObjectID;
    if (!a4)
    {
      return FigXPCRelease();
    }

    goto LABEL_10;
  }

  v14 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 4, a4, a5, &v21);
  if (a4)
  {
    v15 = v14;
    if (v14)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v21))
      {
LABEL_10:
        v19 = *MEMORY[0x1E6960C70];
        v20 = *(MEMORY[0x1E6960C70] + 16);
        v17 = v19;
        v18 = v20;
        a4(a1, v15, &v19, &v17, 0, a5, 0.0);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (a4)
  {
    v13 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback_block_invoke;
    block[3] = &unk_1E7496F38;
    block[4] = &v21;
    block[5] = a1;
    block[6] = DerivedStorage;
    block[7] = a1;
    v17 = a3;
    v18 = 0;
    v19 = a4;
    v20 = a5;
    dispatch_sync(v13, block);
    xpc_dictionary_set_uint64(a2, "CompletionID", v22[3]);
  }

  v14 = FigXPCRemoteClientSendSyncMessage();
  if (a6)
  {
    *a6 = v22[3];
  }

  FigXPCRemoteClientKillServerOnTimeout();
  _Block_object_dispose(&v21, 8);
  return v14;
}

void *__remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
  if (result)
  {
    result = dlsym(result, "APAudioSourceSharedMemoryWriterSetMessageParameters");
    remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage = result;
  }

  return result;
}

void remoteXPCAudioEngine_freeCompletionCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigLayerViewGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigLayerViewGetClassID_sRegisterFigLayerViewTypeOnce != -1)
  {
    FigLayerViewGetClassID_cold_1();
  }

  return FigLayerViewGetClassID_sFigLayerViewClassID;
}

uint64_t __FigLayerViewGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigLayerViewGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigLayerViewGetClassID_sRegisterFigLayerViewTypeOnce != -1)
  {
    FigLayerViewGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPKDMSECPECryptorCreate(const void *cold_1, void *a2, const void *a3, const __CFAllocator *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v25[0] = 1;
  v25[1] = PersistentKeyUpdatedCallback_0;
  v25[2] = KeyRequestErrorOccurredCallback_0;
  v26 = 0;
  if (FigPKDMSECPECryptorCreate_once != -1)
  {
    FigPKDMSECPECryptorCreate_cold_1();
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v11 = 4294955146;
  if (!a6 || !a2 || !cold_1 || !a5)
  {
    goto LABEL_28;
  }

  MEMORY[0x19A8D3660](&FigPKDMSECPECryptorGetClassID_sRegisterFigPKDMSECPECryptorTypeOnce, RegisterFigPKDMSECPECryptorType);
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v14 = DerivedStorage, v15 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v14 + 8) = v15) == 0) || (v16 = FigReadWriteLockCreate(), (*(v14 + 16) = v16) == 0) || (v17 = dispatch_queue_create("AirPlayStreamingNotifications", 0), (*(v14 + 120) = v17) == 0))
  {
    v11 = 4294955145;
    goto LABEL_28;
  }

  *v14 = CFRetain(cold_1);
  *(v14 + 32) = CFRetain(a2);
  EnsureUUID_1(v26);
  if (v12)
  {
    goto LABEL_30;
  }

  v18 = *(v14 + 96);
  global_queue = dispatch_get_global_queue(0, 0);
  v12 = PKDKeyManagerInstallCallbacksForKeyID(a2, v18, v26, global_queue, v25);
  if (v12)
  {
    goto LABEL_30;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v12 = FigNotificationCenterAddWeakListener();
  if (v12)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    *(v14 + 56) = CFRetain(a3);
    goto LABEL_19;
  }

  v12 = FigCPEExternalProtectionMonitorCreateForMethods(a4, 4u, 0, 0, (v14 + 56));
  if (v12)
  {
LABEL_30:
    v11 = v12;
    goto LABEL_28;
  }

  *(v14 + 64) = 1;
LABEL_19:
  Value = CFDictionaryGetValue(a5, @"AssetID");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(v14 + 40) = Value;
  v21 = CFDictionaryGetValue(a5, @"CryptKeyAttributes");
  if (!v21)
  {
    *(v14 + 104) = 0;
    goto LABEL_27;
  }

  v22 = CFRetain(v21);
  *(v14 + 104) = v22;
  if (!v22)
  {
LABEL_27:
    FigPKDMSECPECryptorCreate_cold_2(&v27);
    v11 = v27;
    goto LABEL_28;
  }

  FigCPEExternalProtectionMonitorBeginMonitoring(*(v14 + 56));
  v11 = AddWeakListenerOnExternalProtectionMonitor_0(v26, *(v14 + 56));
  if (!v11)
  {
    *(v14 + 112) = 0;
    *(v14 + 152) = 1;
    *a6 = v26;
    return v11;
  }

LABEL_28:
  if (v26)
  {
    CFRelease(v26);
  }

  return v11;
}

void PersistentKeyUpdatedCallback_0(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    PersistentKeyUpdatedCallback_cold_1_0();
  }
}

void KeyRequestErrorOccurredCallback_0(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961018], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    KeyRequestErrorOccurredCallback_cold_1();
  }
}

void DecryptContextInvalidated(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    CFDictionaryGetValue(a5, @"AssetID");
    if (FigCFEqual())
    {

      InvalidateGuts(a2);
    }
  }
}

uint64_t AddWeakListenerOnExternalProtectionMonitor_0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      AddWeakListenerOnExternalProtectionMonitor_cold_1_0(&v3);
      return v3;
    }
  }

  else
  {
    AddWeakListenerOnExternalProtectionMonitor_cold_2_0(&v4);
    return v4;
  }
}

void FigCFRelease_13(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void FigPKDMSECPECryptorFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  InvalidateGuts(a1);
  if (*(DerivedStorage + 16))
  {
    FigReadWriteLockDestroy();
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 120) = 0;
  }
}

CFMutableStringRef FigPKDMSECPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    FigPKDMSECPECryptorCopyDebugDescription_cold_1(DerivedStorage, a1, Mutable);
  }

  FigReadWriteLockUnlockForRead();
  return Mutable;
}

void InvalidateGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 1;
  StopAndReleaseTimer((DerivedStorage + 88));
  FigReadWriteLockUnlockForWrite();
  if (!v3)
  {
    v4 = *DerivedStorage;
    *DerivedStorage = 0;
    v5 = *(DerivedStorage + 32);
    if (v5)
    {
      PKDKeyManagerRemoveKeyID(v5, *(DerivedStorage + 96));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 8) = 0;
    }

    v7 = *(DerivedStorage + 32);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 32) = 0;
    }

    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 40) = 0;
    }

    v9 = *(DerivedStorage + 56);
    if (v9)
    {
      RemoveWeakListenerOnExternalProtectionMonitor_0(a1, v9);
      FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 56));
      v10 = *(DerivedStorage + 56);
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 56) = 0;
      }
    }

    if (v4)
    {
      if (FigPKDCPEProtectorCryptorWasInvalidated(v4, a1) == -15844)
      {
        *(DerivedStorage + 25) = 1;
      }

      CFRelease(v4);
    }

    v11 = *(DerivedStorage + 80);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 80) = 0;
    }

    v12 = *(DerivedStorage + 96);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 96) = 0;
    }

    v13 = *(DerivedStorage + 104);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 104) = 0;
    }

    *(DerivedStorage + 112) = 0;
    v14 = *(DerivedStorage + 136);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 136) = 0;
    }

    v15 = *(DerivedStorage + 144);
    if (v15)
    {
      *(DerivedStorage + 144) = 0;

      free(v15);
    }
  }
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor_0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }

    else
    {
      RemoveWeakListenerOnExternalProtectionMonitor_cold_1_0(&v3);
      return v3;
    }
  }

  else
  {
    RemoveWeakListenerOnExternalProtectionMonitor_cold_2_0(&v4);
    return v4;
  }
}

uint64_t ExternalProtectionStatusChangedCallback_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t FigPKDMSECPECryptorTestAndSetKeyRequestState(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, uint64_t *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  if (!a2)
  {
    FigPKDMSECPECryptorTestAndSetKeyRequestState_cold_2(v16);
LABEL_18:
    v11 = v16[0];
    goto LABEL_9;
  }

  if (!a3)
  {
    FigPKDMSECPECryptorTestAndSetKeyRequestState_cold_1(v16);
    goto LABEL_18;
  }

  v10 = DerivedStorage;
  FigReadWriteLockLockForWrite();
  if (*(v10 + 24))
  {
    v11 = 4294954511;
  }

  else
  {
    v11 = PKDKeyManagerTestAndSetKeyRequestState(*(v10 + 32), *(v10 + 96), a2, a3, &v15, &v14);
    if (!v11 && a3 == 2 && v15)
    {
      StopAndReleaseTimer((v10 + 88));
      v11 = 0;
    }
  }

  FigReadWriteLockUnlockForWrite();
LABEL_9:
  if (dword_1EAF179B8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return v11;
}

uint64_t FigPKDMSECPECryptorCreatePackagedPersistentKey(uint64_t a1, uint64_t a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_1(a3, DerivedStorage, a2, &v7);
      return v7;
    }

    else
    {
      FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigPKDMSECPECryptorCreatePackagedPersistentKey_cold_3(&v9);
    return v9;
  }
}

uint64_t RegisterFigPKDMSECPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

void OUTLINED_FUNCTION_3_153(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17)
{
  *(v17 - 204) = 4;
  *(v17 - 200) = a17;
  *(v17 - 192) = a16;
  *(v17 - 184) = a14;
  *(v17 - 176) = a16;
  *(v17 - 156) = 0;
}

void OUTLINED_FUNCTION_4_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  *(v18 - 144) = 0u;
  *(v18 - 128) = 0u;
  *(v18 - 176) = 0u;
  *(v18 - 160) = 0u;
  *(v18 - 208) = 0u;
  *(v18 - 192) = 0u;
  *(v18 - 240) = 0u;
  *(v18 - 224) = 0u;

  bzero(va, 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_6_117(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CMBlockBufferRef *blockBufferOut, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMBlockBufferRef a15, size_t dataLength)
{
  v18 = dataLength;
  v19 = dataLength;

  return CMBlockBufferCreateWithMemoryBlock(v16, 0, v18, v16, 0, 0, v19, 1u, &a15);
}

uint64_t OUTLINED_FUNCTION_8_88(CMBlockBufferRef sourceBuffer, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateContiguous(v18, sourceBuffer, v18, 0, 0, 0, 0, &blockBufferOut);
}

double OUTLINED_FUNCTION_10_76(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void OUTLINED_FUNCTION_11_73(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 228) = 6;
  *(v1 - 224) = 0;
  *(v1 - 216) = 0;
  *(v1 - 208) = 0;
}

CFDataRef OUTLINED_FUNCTION_15_57@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return CFDataCreate(v11, va, (24 * a1));
}

uint64_t FigAirPlaySecureStopRouterCreateSecureStopUUID(CFStringRef theString, __CFString **a2)
{
  if (theString)
  {
    if (a2)
    {
      *a2 = 0;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
      if (MutableCopy)
      {
        v4 = MutableCopy;
        v5 = FigAtomicIncrement32();
        CFStringAppendFormat(v4, 0, @"_%u", v5);
        result = 0;
        *a2 = v4;
      }

      else
      {
        FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FigAirPlaySecureStopRouterCreateSecureStopUUID_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t FigAirPlaySecureStopRouterRegisterSecureStopManager(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0;
  v10 = 32;
  if (!a1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_3();
LABEL_9:
    v4 = v11;
    goto LABEL_6;
  }

  if (!a2)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_2();
    goto LABEL_9;
  }

  if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
  }

  *(v8 + 6) = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke;
  v6[3] = &unk_1E7496FE0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  dispatch_sync(sAirPlayManagerSingletonContext_1, v6);
  v4 = *(v8 + 6);
LABEL_6:
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke(uint64_t a1)
{
  if (!CFDictionaryContainsKey(sAirPlayManagerSingletonContext_0, *(a1 + 40)))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"FigAirPlaySSM_SecureStopManager", *(a1 + 48));
      CFDictionarySetValue(sAirPlayManagerSingletonContext_0, *(a1 + 40), v3);

      CFRelease(v3);
    }

    else
    {
      __FigAirPlaySecureStopRouterRegisterSecureStopManager_block_invoke_cold_1(a1);
    }
  }
}

uint64_t FigAirPlaySecureStopRouterUpdateRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0;
  v14 = 32;
  if (!a1)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_5();
LABEL_13:
    v8 = v15;
    goto LABEL_8;
  }

  if (!a2)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_4();
    goto LABEL_13;
  }

  if (!a3)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_3();
    goto LABEL_13;
  }

  if (!a4)
  {
    FigAirPlaySecureStopRouterUpdateRecord_cold_2();
    goto LABEL_13;
  }

  if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
  {
    FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
  }

  *(v12 + 6) = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigAirPlaySecureStopRouterUpdateRecord_block_invoke;
  v10[3] = &unk_1E7497008;
  v10[4] = &v11;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  dispatch_sync(sAirPlayManagerSingletonContext_1, v10);
  v8 = *(v12 + 6);
LABEL_8:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t FigAirPlaySecureStopRouterCommitToDisk(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
    {
      FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
    }

    *(v6 + 6) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlaySecureStopRouterCommitToDisk_block_invoke;
    block[3] = &unk_1E7497030;
    block[4] = &v5;
    block[5] = a1;
    dispatch_sync(sAirPlayManagerSingletonContext_1, block);
    v2 = *(v6 + 6);
  }

  else
  {
    FigAirPlaySecureStopRouterCommitToDisk_cold_2();
    v2 = v9;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (a1)
  {
    if (fassr_ensureAirPlayManagerSingletonContext_sFigSecureStopManagerAirPlayOnce != -1)
    {
      FigAirPlaySecureStopRouterRegisterSecureStopManager_cold_1();
    }

    *(v6 + 6) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke;
    block[3] = &unk_1E7497058;
    block[4] = &v5;
    block[5] = a1;
    dispatch_sync(sAirPlayManagerSingletonContext_1, block);
    v2 = *(v6 + 6);
  }

  else
  {
    FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_cold_2();
    v2 = v9;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), @"record");
  if (!Value)
  {
    __FigAirPlaySecureStopRouterFinalizeRecordAndCommitToDisk_block_invoke_cold_1(a1);
    goto LABEL_14;
  }

  *(*(*(a1 + 32) + 8) + 24) = FigSecureStopRecordCreateFromSerializedData(Value);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    goto LABEL_14;
  }

  v3 = MEMORY[0x38];
  if (!MEMORY[0x38])
  {
    v6 = 0;
    CFRelease(0);
    goto LABEL_15;
  }

  v4 = CFDictionaryGetValue(sAirPlayManagerSingletonContext_0, MEMORY[0x38]);
  if (!v4)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v5 = CFRetain(v4);
  v6 = v5;
  if (v5)
  {
    v7 = CFDictionaryGetValue(v5, @"FigAirPlaySSM_SecureStopManager");
    if (v7)
    {
      v8 = v7;
      v9 = CFDictionaryGetValue(v6, @"FigAirPlaySSM_AppID");
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0x30];
        v12 = MEMORY[0x38];
        v13 = MEMORY[0x10];
        v14 = MEMORY[0x18];
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        v16 = v15 ? v15(v8, v10, v11, v12, 0, v13, v14) : -12782;
        *(*(*(a1 + 32) + 8) + 24) = v16;
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          CFDictionaryRemoveValue(sAirPlayManagerSingletonContext_0, v3);
        }
      }
    }
  }

LABEL_15:
  if (v6)
  {
    CFRelease(v6);
  }
}

double __fassr_ensureAirPlayManagerSingletonContext_block_invoke()
{
  sAirPlayManagerSingletonContext_0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!sAirPlayManagerSingletonContext_0)
  {
    return __fassr_ensureAirPlayManagerSingletonContext_block_invoke_cold_1();
  }

  sAirPlayManagerSingletonContext_1 = dispatch_queue_create("com.apple.coremedia.airplaysecurestopmanager.singletoncontext", 0);
  if (!sAirPlayManagerSingletonContext_1)
  {
    return __fassr_ensureAirPlayManagerSingletonContext_block_invoke_cold_1();
  }

  return result;
}

uint64_t FigFairPlayOctaviaCPECryptorCreate(const void *a1, const void *a2, int a3, uint64_t a4, const void *a5, void *a6, const void *a7, CFTypeRef *a8)
{
  v62[5] = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = -12150;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  if (!a5)
  {
    goto LABEL_18;
  }

  v14 = a1;
  v15 = a6;
  if (!a6 || !a8 || !a7)
  {
    goto LABEL_18;
  }

  v16 = a2;
  MEMORY[0x19A8D3660](&FigFairPlayOctaviaCPECryptorGetClassID_sRegisterFigFairPlayOctaviaCPECryptorTypeOnce, RegisterFigFairPlayOctaviaCPECryptorType);
  v17 = CMDerivedObjectCreate();
  *(v58 + 6) = v17;
  if (v17)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v13 = -12151;
    goto LABEL_18;
  }

  v19 = DerivedStorage;
  if (a2)
  {
    v20 = CFRetain(a2);
  }

  else
  {
    v20 = 0;
  }

  *v19 = v20;
  *(v19 + 8) = FigFairPlayCopyDisposeStorageAllocator();
  *(v19 + 16) = CFRetain(v14);
  *(v19 + 40) = CFRetain(a5);
  *(v19 + 72) = CFRetain(a7);
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2000000000;
  v62[3] = 0;
  if (gContextAccessInitOnce != -1)
  {
    FigFairPlayOctaviaCPECryptorCreate_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyContextAccessQueue_block_invoke_2;
  block[3] = &unk_1E74970E8;
  block[4] = v62;
  block[5] = a7;
  dispatch_sync(gContextSerialAccessQueue, block);
  v21 = *(v62[1] + 24);
  _Block_object_dispose(v62, 8);
  *(v19 + 48) = v21;
  if (!v21)
  {
    v13 = -12158;
    goto LABEL_18;
  }

  if ((a3 & 1) == 0)
  {
    v13 = -12161;
LABEL_18:
    *(v58 + 6) = v13;
    goto LABEL_27;
  }

  DPInfoFromSinfExtensions = FigFairPlayGetDPInfoFromSinfExtensions(*(v19 + 40));
  if (!DPInfoFromSinfExtensions)
  {
    LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(*(v19 + 40));
    ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(*(v19 + 40));
    v24 = ExtendedSinfFromSinfExtensions;
    if (LegacySinfFromSinfExtensions)
    {
      BytePtr = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
      LODWORD(LegacySinfFromSinfExtensions) = CFDataGetLength(LegacySinfFromSinfExtensions);
      if (v24)
      {
LABEL_23:
        v26 = CFDataGetBytePtr(v24);
        Length = CFDataGetLength(v24);
        v25 = 0;
        v24 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      BytePtr = 0;
      if (ExtendedSinfFromSinfExtensions)
      {
        goto LABEL_23;
      }
    }

    v25 = 0;
    v26 = 0;
    Length = 0;
    goto LABEL_26;
  }

  v23 = DPInfoFromSinfExtensions;
  v24 = CFDataGetBytePtr(DPInfoFromSinfExtensions);
  v25 = CFDataGetLength(v23);
  v26 = 0;
  Length = 0;
  BytePtr = 0;
  LODWORD(LegacySinfFromSinfExtensions) = 0;
LABEL_26:
  v31 = *(v19 + 48);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = __FigFairPlayOctaviaCPECryptorCreate_block_invoke;
  v42[3] = &unk_1E74970A0;
  v43 = LegacySinfFromSinfExtensions;
  v44 = 0;
  v45 = BytePtr;
  v46 = Length;
  v47 = 0;
  v48 = v26;
  v49 = v25;
  v50 = 0;
  v51 = v24;
  v42[4] = &v57;
  v42[5] = &v53;
  v42[6] = v19;
  dispatch_sync(v31, v42);
  if (!*(v58 + 6))
  {
    v32 = FigCPEOctaviaExternalProtectionMonitorCreate(v16, v15, 0, *(v19 + 72), (v19 + 64));
    *(v58 + 6) = v32;
    if (!v32)
    {
      FigCPEExternalProtectionMonitorBeginMonitoring(*(v19 + 64));
      NeroCryptor = FigCPEOctaviaCreateNeroCryptor(cf, *(v19 + 64), v54[3], *(v19 + 72), (v19 + 24), (v19 + 32));
      *(v58 + 6) = NeroCryptor;
      if (!NeroCryptor)
      {
        *a8 = cf;
        cf = 0;
        goto LABEL_32;
      }
    }
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_32:
  v34 = v54[3];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(v58 + 6);
  if (v35 && dword_1EAF176B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v35 = *(v58 + 6);
  }

  v37 = FigFairPlayMapFairPlayErrorToCPEError(v35);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  return v37;
}

BOOL FigFairPlayOctaviaCPECryptorEqual(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && v3)
  {
    return *(DerivedStorage + 56) == *(v3 + 56);
  }

  else
  {
    return (DerivedStorage | v3) == 0;
  }
}

uint64_t FigFairPlayOctaviaCPECryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    v3 = *DerivedStorage;
    if (v3)
    {
      CFRelease(v3);
      *v2 = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
      v2[1] = 0;
    }

    v5 = v2[5];
    if (v5)
    {
      CFRelease(v5);
      v2[5] = 0;
    }

    FigCPEOctaviaReleaseRemoteCryptor(v2[3], v2[9]);
    v2[3] = 0;
    if (v2[7])
    {
      t6uy9jukl3();
      FAIRPLAY_CALL_LOG(v6);
      v2[7] = 0;
    }

    v7 = v2[6];
    if (v7)
    {
      dispatch_release(v7);
      v2[6] = 0;
    }

    v8 = v2[8];
    if (v8)
    {
      FigCPEExternalProtectionMonitorEndMonitoring(v8);
      v9 = v2[8];
      if (v9)
      {
        CFRelease(v9);
        v2[8] = 0;
      }
    }

    v10 = v2[2];
    if (v10)
    {
      CFRelease(v10);
      v2[2] = 0;
    }

    v11 = v2[9];
    if (v11)
    {
      CFRelease(v11);
      v2[9] = 0;
    }
  }

  return 0;
}

__CFString *FigFairPlayOctaviaCPECryptorCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  Mutable = CFStringCreateMutable(*DerivedStorage, 0);
  v4 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigFPOCPECryptor: protectorParent<%@> >", v2[2]);
  }

  return v4;
}

uint64_t FigFairPlayOctaviaCPECryptorSetProperty(uint64_t a1)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    return 4294955144;
  }

  else
  {
    return 4294955146;
  }
}

uint64_t RegisterFigFairPlayOctaviaCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

dispatch_queue_t __CopyContextAccessQueue_block_invoke()
{
  result = dispatch_queue_create("FPDS Context Management", 0);
  gContextSerialAccessQueue = result;
  return result;
}

void __CopyContextAccessQueue_block_invoke_2(uint64_t a1)
{
  v2 = gCurrentContextQueue;
  if (!gCurrentContextQueue)
  {
    gCurrentContextQueue = dispatch_queue_create("FPDS Context Access", 0);
    if (gCurrentContextQueue)
    {
      v10 = 0;
      dataPointerOut = 0;
      v8 = 0;
      lengthAtOffsetOut = 0;
      u8tyhm3ety(&v10);
      if (!FAIRPLAY_CALL_LOG(v3) && !FigCreateBlockBufferCopyingMemoryBlock())
      {
        FigTransportGetRemoteRootObject();
        if (!NeroTransportSendSyncMessageCreatingReply() && !CMBlockBufferGetDataPointer(0, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
        {
          Fhjfdethrte87erhy4();
          FAIRPLAY_CALL_LOG(v4);
        }
      }

      if (v10)
      {
        v5 = jEHf8Xzsv8K(v10);
        FAIRPLAY_CALL_LOG(v5);
        v10 = 0;
      }

      dispatch_release(gCurrentContextQueue);
      v2 = 0;
      gCurrentContextQueue = 0;
    }

    else
    {
      v2 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    dispatch_retain(v6);
  }
}

uint64_t DestroyFairPlayDSContext(uint64_t a1)
{
  sv65rt7ugf9si4();

  return FAIRPLAY_CALL_LOG(v1);
}

void AsyncMessageHandler_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1684628836 && gCurrentContextQueue != 0)
  {
    dispatch_release(gCurrentContextQueue);
    gCurrentContextQueue = 0;
  }
}

BOOL HardwareSupportsMetalCompositor()
{
  v1 = 0;
  v2 = 0;
  FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v2);
  FigVideoCompositorCopyDeviceSpecificCompositorName(0, &v1);
  return FigCFEqual() || FigCFEqual() != 0;
}

uint64_t FigVideoCompositorCreateMetal(uint64_t a1, CFTypeRef *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  FigVideoCompositorGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoCompositorCreateMetal_cold_2(v11);
    return *v11;
  }

  v5 = Mutable;
  value = 0;
  strcpy(v11, "v024f024ARGByuv2 ");
  v12 = 0;
  qmemcpy(v13, "024x02fxAhGR", sizeof(v13));
  DesiredSourcePixelBufferAttributes = FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(v11, 8, &value);
  if (!DesiredSourcePixelBufferAttributes)
  {
    CFDictionarySetValue(v5, @"SourcePixelBufferAttributes", value);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!DesiredSourcePixelBufferAttributes)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v5;
    v8 = FigDispatchQueueCreateWithPriority();
    DerivedStorage[5] = v8;
    if (v8)
    {
      DesiredSourcePixelBufferAttributes = 0;
      *a2 = 0;
      return DesiredSourcePixelBufferAttributes;
    }

    FigVideoCompositorCreateMetal_cold_1(v11);
    return *v11;
  }

  return DesiredSourcePixelBufferAttributes;
}

void mvc_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 40) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *mvc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Metal %p>\n", a1);
  CFDictionaryApplyFunction(*DerivedStorage, mvc_appendDebugDescriptionOfProperty, Mutable);
  return Mutable;
}

uint64_t mvc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    mvc_CopyProperty_cold_1(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      UInt32 = FigCFNumberCreateUInt32();
    }

    else
    {
      if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
      {
        result = 0;
        v9 = MEMORY[0x1E695E4C0];
        goto LABEL_4;
      }

      Value = CFDictionaryGetValue(*v7, a2);
      if (!Value)
      {
        v10 = 0;
        goto LABEL_8;
      }

      UInt32 = CFRetain(Value);
    }

    v10 = UInt32;
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = 0;
  v9 = MEMORY[0x1E695E4D0];
LABEL_4:
  v10 = *v9;
LABEL_9:
  *a4 = v10;
  return result;
}

uint64_t mvc_SetProperty(const void *a1, const void *a2, const void *a3)
{
  v19[5] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = 0;
    v19[0] = @"RenderDimensions";
    v19[1] = @"RenderPixelAspectRatio";
    v19[2] = @"RenderEdgeProcessingPixels";
    v19[3] = @"DestinationPixelBufferDesiredAttributes";
    v19[4] = @"RenderScale";
    while (!FigCFEqual())
    {
      v8 += 8;
      if (v8 == 40)
      {
        goto LABEL_11;
      }
    }

    CFGetAllocator(a1);
    mvc_CopyProperty(a1, a2, v9, &cf);
    if (!FigCFEqual())
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        CFRelease(v10);
        *(v7 + 8) = 0;
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_11:
    if (!a3)
    {
      goto LABEL_21;
    }

    CFDictionarySetValue(*v7, a2, a3);
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6966130]);
    if (!Value)
    {
      goto LABEL_21;
    }

    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFArrayGetTypeID())
    {
      if (!CFArrayGetValueAtIndex(v12, 0))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = CFGetTypeID(v12);
      if (v14 != CFNumberGetTypeID())
      {
LABEL_21:
        v16 = 0;
        goto LABEL_22;
      }
    }

    FigCFNumberGetUInt64();
    if (!VTMetalTransferSessionIsPixelFormatTypeSupportedOnDestination())
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a3);
      FigCFDictionarySetInt32();
      CFDictionarySetValue(*v7, a2, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    goto LABEL_21;
  }

  mvc_SetProperty_cold_1(v19);
  v16 = LODWORD(v19[0]);
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t mvc_RenderFrame(const void *a1, uint64_t a2, int *a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v13 = a2;
  v87 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v83 = 0;
  v82.width = 0.0;
  v82.height = 0.0;
  v81 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v71 = *(MEMORY[0x1E695EFD0] + 16);
  v72 = *MEMORY[0x1E695EFD0];
  *&v76.a = *MEMORY[0x1E695EFD0];
  *&v76.c = v71;
  v70 = *(MEMORY[0x1E695EFD0] + 32);
  *&v76.tx = v70;
  if (!DerivedStorage || (v16 = DerivedStorage, !*(DerivedStorage + 24)))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v67);
    RenderDimensions = v60;
LABEL_85:
    v68 = 0;
    v69 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_69;
  }

  RenderDimensions = FigVideoCompositorPropertiesGetRenderDimensions(*DerivedStorage, &v82);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  *&v85.a = *a9;
  v85.c = *(a9 + 16);
  RenderDimensions = FigVCLayerDefinitionCreateLayerDefinitionArray(v13, a3, a4, a8, &v85, &v81, v82.width, v82.height);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (v83)
  {
    *&v85.a = *a9;
    v85.c = *(a9 + 16);
    FigVideoCompositionInstructionGetNormalizedTime(a8, &v85);
  }

  RenderDimensions = FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(*v16, v81, v78 + 3);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  v18 = v78;
  v19 = v78[3];
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v68 = 0;
    v69 = 0;
LABEL_65:
    CFRetain(v19);
    goto LABEL_66;
  }

  v22 = v81;
  v23 = CMBaseObjectGetDerivedStorage();
  pixelBufferOut.a = 0.0;
  t1.a = 9.38084234e271;
  *&v85.a = *"v024f024ARGB ";
  v85.c = 2.89892896e-57;
  v24 = CMBaseObjectGetDerivedStorage();
  BestBitDepthForCompositorPropertiesAndLayerDefinitions = FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(*v24, v22);
  if (BestBitDepthForCompositorPropertiesAndLayerDefinitions <= 8)
  {
    p_t1 = &v85;
  }

  else
  {
    p_t1 = &t1;
  }

  if (BestBitDepthForCompositorPropertiesAndLayerDefinitions <= 8)
  {
    v27 = 6;
  }

  else
  {
    v27 = 2;
  }

  if (!v22)
  {
    goto LABEL_87;
  }

  if (CFArrayGetCount(v22) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    if (!ValueAtIndex)
    {
      goto LABEL_87;
    }

    SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
    if (!SourcePixelBuffer)
    {
      goto LABEL_87;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
    v31 = 0;
    while (*(&p_t1->a + v31) != PixelFormatType)
    {
      v31 += 4;
      if (4 * v27 == v31)
      {
        goto LABEL_25;
      }
    }

    *(&p_t1->a + v31) = LODWORD(p_t1->a);
    LODWORD(p_t1->a) = PixelFormatType;
  }

LABEL_25:
  v32 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v32, v27, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v67);
LABEL_87:
    Mutable = 0;
    goto LABEL_27;
  }

  do
  {
    p_t1 = (p_t1 + 4);
    FigCFArrayAppendInt32();
    --v27;
  }

  while (v27);
LABEL_27:
  v34 = (v23 + 8);
  if (*(v23 + 8))
  {
    v35 = FigCFEqual();
    v36 = *v34;
    if (v35)
    {
      if (v36)
      {
        goto LABEL_38;
      }
    }

    else if (v36)
    {
      CFRelease(v36);
      *v34 = 0;
    }
  }

  RenderDimensions = FigVideoCompositorCreateDestinationPixelBufferPool(*v23, @"metal-vc-output", Mutable, (v23 + 8), 1);
  if (RenderDimensions)
  {
    goto LABEL_42;
  }

  v37 = *(v23 + 16);
  *(v23 + 16) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v37)
  {
    CFRelease(v37);
  }

LABEL_38:
  RenderDimensions = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *v34, &pixelBufferOut);
  a = pixelBufferOut.a;
  if (RenderDimensions || (RenderDimensions = FigVideoCompositorSetDestinationPixelBufferColorProperties(*&pixelBufferOut.a, *v23, v22), a = pixelBufferOut.a, RenderDimensions) || (RenderDimensions = FigVideoCompositorSetDestinationPixelBufferGeometricProperties(*&pixelBufferOut.a, *v23), a = pixelBufferOut.a, RenderDimensions))
  {
    if (a != 0.0)
    {
      CFRelease(*&a);
    }
  }

  else
  {
    v18[3] = *&pixelBufferOut.a;
    pixelBufferOut.a = 0.0;
  }

LABEL_42:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  v86 = xmmword_196E75ED0;
  FigVideoCompositionInstructionGetBackgroundColorARGB(a8, &v86);
  RenderDimensions = v39;
  if (v39)
  {
    goto LABEL_85;
  }

  v75 = vextq_s8(v86, v86, 4uLL);
  RenderDimensions = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(*v16, 0, &v76, 0);
  if (RenderDimensions)
  {
    goto LABEL_85;
  }

  Count = CFArrayGetCount(v81);
  v20 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  if (Count < 1)
  {
    v21 = 0;
    v68 = 0;
    v69 = 0;
    goto LABEL_61;
  }

  v69 = malloc_type_calloc(Count, 0x30uLL, 0x1000040EED21634uLL);
  if (!v69)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v67);
    RenderDimensions = v61;
    v69 = 0;
LABEL_90:
    v68 = 0;
LABEL_92:
    v21 = 0;
    goto LABEL_69;
  }

  v68 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  if (!v68)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, 0);
    RenderDimensions = v62;
    goto LABEL_90;
  }

  v41 = malloc_type_calloc(Count, 0x20uLL, 0x1000040E0EAB150uLL);
  v21 = v41;
  v66 = a1;
  if (!v41)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, a1, v68);
    RenderDimensions = v63;
    goto LABEL_92;
  }

  v42 = 0;
  v43 = v68;
  v44 = v69;
  v45 = v41;
  do
  {
    v46 = CFArrayGetValueAtIndex(v81, v42);
    v47 = v46;
    if (v46)
    {
      v20[v42] = FigVCLayerDefinitionGetSourcePixelBuffer(v46);
      *v44 = v72;
      v44[1] = v71;
      v44[2] = v70;
      FigVCLayerDefinitionGetAffineTransform(v47, v44);
      RenderDimensions = v48;
      if (v48)
      {
        goto LABEL_69;
      }

      v49 = *v44;
      v50 = v44[2];
      *&t1.c = v44[1];
      *&t1.tx = v50;
      *&t1.a = v49;
      pixelBufferOut = v76;
      CGAffineTransformConcat(&v85, &t1, &pixelBufferOut);
      v51 = *&v85.a;
      v52 = *&v85.tx;
      v44[1] = *&v85.c;
      v44[2] = v52;
      *v44 = v51;
      RenderDimensions = FigVCLayerDefinitionGetOpacity(v47, v43);
      if (RenderDimensions)
      {
        goto LABEL_69;
      }

      RenderDimensions = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v47, v45);
      if (RenderDimensions)
      {
        goto LABEL_69;
      }
    }

    else
    {
      *v44 = v72;
      v44[1] = v71;
      v44[2] = v70;
      v53 = *v44;
      v54 = v44[2];
      *&t1.c = v44[1];
      *&t1.tx = v54;
      *&t1.a = v53;
      pixelBufferOut = v76;
      CGAffineTransformConcat(&v85, &t1, &pixelBufferOut);
      v55 = *&v85.a;
      v56 = *&v85.tx;
      v44[1] = *&v85.c;
      v44[2] = v56;
      *v44 = v55;
    }

    ++v42;
    ++v45;
    ++v43;
    v44 += 3;
  }

  while (Count != v42);
  a1 = v66;
LABEL_61:
  if (!*(v16 + 48))
  {
    RenderDimensions = VTMetalTransferSessionCreate();
    if (RenderDimensions)
    {
      goto LABEL_69;
    }
  }

  RenderDimensions = VTMetalTransferSessionComposeImageWithAffineMatrix();
  if (RenderDimensions)
  {
    goto LABEL_69;
  }

  v19 = v78[3];
  if (v19)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (a1)
  {
    CFRetain(a1);
  }

  v57 = *(v16 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __mvc_RenderFrame_block_invoke;
  block[3] = &unk_1E748B8C8;
  block[4] = &v77;
  block[5] = v16;
  block[6] = a10;
  block[7] = a1;
  dispatch_sync(v57, block);
  RenderDimensions = 0;
LABEL_69:
  v58 = v78[3];
  if (v58)
  {
    CFRelease(v58);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  if (v21)
  {
    free(v21);
  }

  if (v69)
  {
    free(v69);
  }

  if (v68)
  {
    free(v68);
  }

  if (v20)
  {
    free(v20);
  }

  _Block_object_dispose(&v77, 8);
  return RenderDimensions;
}

void sub_19682E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mvc_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __mvc_SetOutputCallback_block_invoke;
  v9[3] = &unk_1E748B8C8;
  v9[6] = a2;
  v9[7] = a3;
  v9[4] = &v10;
  v9[5] = DerivedStorage;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_19682E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mvc_CopySourcePixelBufferAttributesForMultiSource(uint64_t a1, CFMutableDictionaryRef *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *"ARGBAhGRAfGRv024f024ARGByuv2 ";
  v4 = 1380410945;
  return FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(&v3, 3, a2);
}

uint64_t FigVirtualDisplaySessionServerStart()
{
  result = FVDUtilsSessionServerEnabled();
  if (result)
  {
    FigVirtualDisplayScreenRecordingPostState();
    return FigXPCServerStart();
  }

  return result;
}

uint64_t fvdss_handleClientMessage(void *a1, void *a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v5 = OpCode;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955226;
  }

  return v5;
}

uint64_t fvdss_verifyConnection(_xpc_connection_s *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  xpc_connection_get_pid(a1);
  HasEntitlement = FigXPCConnectionHasEntitlement();
  if (!HasEntitlement)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return HasEntitlement;
}

void fvdss_releaseSession(const void *a1)
{
  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      v2(a1);
    }

    CFRelease(a1);
  }
}

void conduitDestroyContext(xpc_object_t *a1)
{
  if (a1)
  {
    xpc_release(*a1);

    free(a1);
  }
}

uint64_t conduitPushFrame(xpc_connection_t *a1, CMSampleBufferRef sbuf, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v42 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(bytes, 0, sizeof(bytes));
  if (!sbuf)
  {
    conduitPushFrame_cold_1();
    goto LABEL_11;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    goto LABEL_16;
  }

  v23 = ImageBuffer;
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  if (!IOSurface)
  {
    goto LABEL_16;
  }

  v25 = IOSurface;
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_18:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_11;
  }

  XPCObject = IOSurfaceCreateXPCObject(v25);
  if (!XPCObject)
  {
LABEL_16:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    goto LABEL_18;
  }

  xpc_dictionary_set_value(v41, "FrameSurface", XPCObject);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(bytes, 0, sizeof(bytes));
  CMSampleBufferGetPresentationTimeStamp(bytes, sbuf);
  *&bytes[24] = a4;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *&v36 = a7;
  *(&v36 + 1) = a8;
  *&v37 = a9;
  *(&v37 + 1) = a10;
  *&v38 = a11;
  DWORD2(v40) = a3;
  HIDWORD(v40) = CMGetAttachment(sbuf, *MEMORY[0x1E6983C38], 0) == *MEMORY[0x1E695E4D0];
  CVPixelBufferGetExtendedPixels(v23, &v38 + 1, &v39, &v39 + 1, &v40);
  xpc_dictionary_set_data(v41, "FrameData", bytes, 0x80uLL);
  v27 = CVBufferCopyAttachments(v23, kCVAttachmentMode_ShouldPropagate);
  if (v27)
  {
    v28 = v27;
    if (FigXPCMessageSetCFDictionary())
    {
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      xpc_connection_send_message(*a1, v41);
    }

    CFRelease(v28);
  }

  else
  {
    xpc_connection_send_message(*a1, v41);
  }

LABEL_11:
  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t conduitClearScreen(xpc_connection_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    xpc_connection_send_message(*a1, 0);
  }

  return FigXPCRelease();
}

void __fvdss_handleStart_block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (FigXPCCreateBasicMessage())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    xpc_dictionary_set_int64(0, "StartStatus", a2);
    xpc_connection_send_message(v4, 0);
  }

  FigXPCRelease();
  xpc_release(*(a1 + 32));
}

uint64_t FigTTMLDocumentWriterCreateRubySpanBuilder(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRubySpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRubySpanBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRubySpanBuilder_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v5);
  v45 = 0;
  cf = 0;
  if (!Length)
  {
    return 0;
  }

  v7 = Length;
  v8 = 0;
  v9 = *MEMORY[0x1E69614E0];
  v10 = *MEMORY[0x1E695E480];
  v41 = *MEMORY[0x1E6961248];
  cf2 = *MEMORY[0x1E6961420];
  v37 = *MEMORY[0x1E69613F8];
  v35 = *MEMORY[0x1E6961408];
  v34 = *MEMORY[0x1E6961400];
  v39 = *MEMORY[0x1E6961250];
  v38 = *MEMORY[0x1E6961430];
  v36 = *MEMORY[0x1E6961428];
  while (1)
  {
    v42 = 0;
    v43 = 0;
    if (v45)
    {
      CFRelease(v45);
      v45 = 0;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v11)
    {
      v27 = 4294954514;
      goto LABEL_57;
    }

    started = v11(a2, v8, v9, v10, &v45, &v42);
    if (started)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    started = FigCaptionDataCopySubrange();
    if (started)
    {
      break;
    }

    v13 = v45;
    v14 = *DerivedStorage;
    v15 = cf;
    if (!v45)
    {
      v27 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, cf);
      goto LABEL_51;
    }

    started = FigTTMLDocumentWriterStartElement(*DerivedStorage, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"ruby");
    if (started)
    {
      break;
    }

    v46 = 0;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v17)
    {
LABEL_35:
      v27 = 4294954514;
      goto LABEL_36;
    }

    v18 = v17(CMBaseObject, v41, v10, &v46);
    if (!v18)
    {
      if (v46)
      {
        InitialValue = FigCaptionDynamicStyleGetInitialValue();
        v20 = CFEqual(InitialValue, cf2);
        v21 = kFigTTML_AttributeValue_ry_align_start;
        if (!v20 && (v22 = CFEqual(InitialValue, v37), v21 = kFigTTML_AttributeValue_ry_align_center, !v22) && (v23 = CFEqual(InitialValue, v35), v21 = kFigTTML_AttributeValue_ry_align_spaceBetween, !v23) && (v24 = CFEqual(InitialValue, v34), v21 = kFigTTML_AttributeValue_ry_align_spaceAround, !v24) || !*v21)
        {
          figTTMLDocumentWriterRubySpanBuilder_AddCaptionData_cold_1(v47);
          goto LABEL_54;
        }

        v18 = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby align", *v21);
        if (v18)
        {
          goto LABEL_34;
        }

        if (v46)
        {
          CFRelease(v46);
          v46 = 0;
        }
      }

      v25 = FigCaptionDataGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_35;
      }

      v27 = v26(v25, v39, v10, &v46);
      v28 = v46;
      if (v27 || !v46)
      {
        goto LABEL_37;
      }

      v29 = FigCaptionDynamicStyleGetInitialValue();
      v30 = CFEqual(v29, v38);
      v31 = kFigTTML_AttributeValue_ry_position_before;
      if (!v30 && (v32 = CFEqual(v29, v36), v31 = kFigTTML_AttributeValue_ry_position_after, !v32) || !*v31)
      {
        figTTMLDocumentWriterRubySpanBuilder_AddCaptionData_cold_2(v47);
LABEL_54:
        v27 = v47[0];
        goto LABEL_36;
      }

      v18 = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby position", *v31);
    }

LABEL_34:
    v27 = v18;
LABEL_36:
    v28 = v46;
LABEL_37:
    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      goto LABEL_57;
    }

    started = FigTTMLDocumentWriterStartElement(v14, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"rb");
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterAddCaptionData(v14, v15);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterEndElement(v14);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterStartElement(v14, 5);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterSetAttribute(v14, @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby kind", @"rt");
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterAddCaptionData(v14, v13);
    if (started)
    {
      break;
    }

    started = FigTTMLDocumentWriterEndElement(v14);
    if (started)
    {
      break;
    }

    v27 = FigTTMLDocumentWriterEndElement(v14);
    if (v27)
    {
      goto LABEL_57;
    }

LABEL_51:
    v8 = v43 + v42;
    if (v43 + v42 == v7)
    {
      goto LABEL_57;
    }
  }

  v27 = started;
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v27;
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterRubySpanBuilder_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

uint64_t RegisterFigAlternateExpanderType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateExpanderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateExpanderGetClassID_sRegisterFigAlternateExpanderTypeOnce, RegisterFigAlternateExpanderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternatePathwayCloningExpanderCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAlternateExpanderGetClassID_sRegisterFigAlternateExpanderTypeOnce, RegisterFigAlternateExpanderType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

CFStringRef FigAlternateExpanderCopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = &stru_1F0B1AFB8;
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigAlternateExpander <%@:%p>]", v4, a1);
}

uint64_t fapce_equal(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();

  return FigCFEqual();
}

void fapce_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fapce_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  BaseID = FigPathwayCloneGetBaseID(*DerivedStorage);
  ID = FigPathwayCloneGetID(*DerivedStorage);
  return CFStringCreateWithFormat(v3, 0, @"[FigAlternateExpander <%@,%p>, basePathwayID %@, newPathwayID %@]", @"PathwayCloningExpander", a1, BaseID, ID);
}

uint64_t FigDataChannelResourceRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 4))
      {
        FigDataChannelResourceRemoteGetObjectID_cold_1(&v6);
        return v6;
      }

      else
      {
        v4 = DerivedStorage;
        result = 0;
        *a2 = *(v4 + 8);
      }
    }

    else
    {
      FigDataChannelResourceRemoteGetObjectID_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelResourceRemoteGetObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

uint64_t FigDataChannelResourceRemoteHandleDeadConnection(uint64_t result)
{
  if (result)
  {
    result = CMBaseObjectGetDerivedStorage();
    *(result + 4) = 1;
  }

  return result;
}

uint64_t FigDataChannelResourceRemoteCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigDataChannelResourceRemoteCreate_cold_2(v17);
    return v17[0];
  }

  if (!a5)
  {
    FigDataChannelResourceRemoteCreate_cold_1(v17);
    return v17[0];
  }

  FigDataChannelResourceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    *(DerivedStorage + 4) = 0;
    v10 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    *(DerivedStorage + 16) = v10;
    if (v10)
    {
      *(DerivedStorage + 8) = a3;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = 0;
      *a5 = 0;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      return v13;
    }
  }

  return v8;
}

void dataChannelResourceRemote_finalize(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF179F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (DerivedStorage && *(DerivedStorage + 16))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
      FigVideoReceiverRemoteDisassociateAndDisposeObjectID(v3, *(DerivedStorage + 8));
      CFRelease(v4);
    }

    else
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(DerivedStorage + 16);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 16) = 0;
    }
  }
}

CFStringRef dataChannelResourceRemote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  if (DerivedStorage)
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResourceRemote %p]: resourceID: %d objectID: %016llx", a1, *DerivedStorage, *(DerivedStorage + 1));
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"[DataChannelResourceRemote %p]", a1);
  }
}

uint64_t dataChannelResourceRemote_ProvidePayload(uint64_t a1, uint64_t a2, __n128 a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_ProvidePayload_cold_3(v14);
    return v14[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_ProvidePayload_cold_1(v14);
    return v14[0];
  }

  v7 = DerivedStorage;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v8)
  {
    dataChannelResourceRemote_ProvidePayload_cold_2(v14);
    return v14[0];
  }

  v9 = v8;
  v10 = *(v7 + 8);
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 64);
  if (v11)
  {
    v12 = v11(v9, v10, a2);
  }

  else
  {
    v12 = 4294954514;
  }

  CFRelease(v9);
  return v12;
}

uint64_t dataChannelResourceRemote_SetFailedToLoad(uint64_t a1, __n128 a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_3(v12);
    return v12[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_1(v12);
    return v12[0];
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    dataChannelResourceRemote_SetFailedToLoad_cold_2(v12);
    return v12[0];
  }

  v7 = v6;
  v8 = *(v5 + 8);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v9)
  {
    v10 = v9(v7, v8, 2);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v7);
  return v10;
}

uint64_t dataChannelResourceRemote_SetCancelled(uint64_t a1, __n128 a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1EAF179F8 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1)
  {
    dataChannelResourceRemote_SetCancelled_cold_3(v12);
    return v12[0];
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_SetCancelled_cold_1(v12);
    return v12[0];
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6)
  {
    dataChannelResourceRemote_SetCancelled_cold_2(v12);
    return v12[0];
  }

  v7 = v6;
  v8 = *(v5 + 8);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 72);
  if (v9)
  {
    v10 = v9(v7, v8, 3);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v7);
  return v10;
}

uint64_t dataChannelResourceRemote_GetProcessingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  if (!a1)
  {
    dataChannelResourceRemote_GetProcessingState_cold_3(0, a2, a3, a4, a5, a6, a7, a8, v29, v30, v31, v32);
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4))
  {
    dataChannelResourceRemote_GetProcessingState_cold_1(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v32);
    return 0;
  }

  v16 = DerivedStorage;
  v17 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v17)
  {
    dataChannelResourceRemote_GetProcessingState_cold_2(0, v18, v19, v20, v21, v22, v23, v24, v29, v30, v31, v32);
    return 0;
  }

  v25 = v17;
  v26 = *(v16 + 8);
  v27 = *(*(CMBaseObjectGetVTable() + 24) + 88);
  if (v27)
  {
    v27(v25, v26, &v31);
  }

  CFRelease(v25);
  return v31;
}

void FigCoreTelephonyMonitorCallbackEntryDoCallback(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = v4;
    CFRetain(v5);
    v4 = v7;
  }

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCoreTelephonyMonitorCallbackEntryDoCallback_block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  v9 = v4;
  v10 = a2;
  dispatch_async(v6, block);
}

uint64_t FigNetworkCostMonitorCreate(uint64_t cold_1, CFTypeRef *a2)
{
  if (a2)
  {
    if (figNetworkCostMonitorGlobalInitOnce_sFigNetworkCostMonitorInitOnce != -1)
    {
      FigNetworkCostMonitorCreate_cold_1();
    }

    if (sFigNetworkCostMonitorQueue)
    {
      if (sFigNetworkCostMonitorMutex)
      {
        if (sFigNetworkCostMonitorBag)
        {
          if (FigNetworkCostMonitorGetClassID_sRegisterFigNetworkCostMonitorTypeOnce != -1)
          {
            FigNetworkCostMonitorCreate_cold_2();
          }

          v3 = CMDerivedObjectCreate();
          FigNetworkCostMonitorCreate_cold_6(v3, &v6);
        }

        else
        {
          FigNetworkCostMonitorCreate_cold_7(&v6);
        }
      }

      else
      {
        FigNetworkCostMonitorCreate_cold_8(&v6);
      }
    }

    else
    {
      FigNetworkCostMonitorCreate_cold_9(&v6);
    }
  }

  else
  {
    FigNetworkCostMonitorCreate_cold_10(&v6);
  }

  v5 = v6;
  if (v6)
  {
    *a2 = 0;
  }

  return v5;
}

uint64_t figNetworkCostCTCallback(void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 18) = a2;
  figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(a1);

  return FigSimpleMutexUnlock();
}

uint64_t initValkCTConnectionInvalidatedNotification()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v0 = dlsym(CoreTelephonyLibrary_sLib, "kCTConnectionInvalidatedNotification");
  if (v0)
  {
    result = *v0;
    constantValkCTConnectionInvalidatedNotification = result;
  }

  else
  {
    result = constantValkCTConnectionInvalidatedNotification;
  }

  getkCTConnectionInvalidatedNotification = kCTConnectionInvalidatedNotificationFunction;
  return result;
}

void *__CoreTelephonyLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 2);
  CoreTelephonyLibrary_sLib = result;
  return result;
}

uint64_t init_CTServerConnectionCreateOnTargetQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v8 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionCreateOnTargetQueue");
  softLink_CTServerConnectionCreateOnTargetQueue = v8;

  return (v8)(a1, a2, a3, a4);
}

Class initCoreTelephonyClient()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass = CoreTelephonyClientFunction;
  return result;
}

uint64_t init_CTServerConnectionRegisterForNotification(uint64_t a1, uint64_t a2)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v4 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionRegisterForNotification");
  softLink_CTServerConnectionRegisterForNotification = v4;

  return (v4)(a1, a2);
}

uint64_t init_CTServerConnectionUnregisterForAllNotifications(uint64_t a1)
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initValkCTConnectionInvalidatedNotification_cold_1();
  }

  v2 = dlsym(CoreTelephonyLibrary_sLib, "_CTServerConnectionUnregisterForAllNotifications");
  softLink_CTServerConnectionUnregisterForAllNotifications = v2;

  return (v2)(a1);
}

CFMutableBagRef __figNetworkCostMonitorGlobalInitOnce_block_invoke(__n128 a1)
{
  sFigNetworkCostMonitorQueue = FigThreadGetGlobalNetworkBufferingQueue();
  sFigNetworkCostMonitorMutex = FigReentrantMutexCreate();
  result = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D0]);
  sFigNetworkCostMonitorBag = result;
  return result;
}

uint64_t FigNetworkCostMonitorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_autoreleasePoolPush();
  [+[FigCoreTelephonyServiceConnection sharedInstance](FigCoreTelephonyServiceConnection deregisterListener:"deregisterListener:", a1];
  objc_autoreleasePoolPop(v3);
  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    FigSimpleMutexLock();
    FigSimpleMutexLock();
    CFBagRemoveValue(sFigNetworkCostMonitorBag, *DerivedStorage);
    if (*DerivedStorage)
    {
      CFRelease(*DerivedStorage);
      *DerivedStorage = 0;
    }

    FigSimpleMutexUnlock();
    figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutex();
    FigSimpleMutexUnlock();
  }

  return FigSimpleMutexDestroy();
}

uint64_t figNetworkCostCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    figNetworkCostCopyProperty_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    figNetworkCostCopyProperty_cold_1(&v11);
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"FNCM_HighSpeedHighPower"))
  {
    v7 = 16;
LABEL_7:
    v8 = 0;
    if (*(DerivedStorage + v7))
    {
      v9 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    *a4 = *v9;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"FNCM_Expensive"))
  {
    v7 = 17;
    goto LABEL_7;
  }

  v8 = 4294954512;
LABEL_11:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t figNetworkCostSetProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(a2, @"FNCM_ConnectedPhysicalInterface"))
  {
    if (CFEqual(a2, @"FNCM_ConnectionExpensive"))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          figNetworkCostUpdateConnectedInterfaceIsExpensiveWithMutex(a1, Value);
          goto LABEL_16;
        }
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1068, v3);
      goto LABEL_54;
    }

    if (CFEqual(a2, @"FNCM_PlaybackSessionId"))
    {
      if (!a3 || (v19 = CFGetTypeID(a3), v19 != CFStringGetTypeID()))
      {
        v20 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1077, v3);
        goto LABEL_54;
      }

      v28 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = a3;
      CFRetain(a3);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    else if (CFEqual(a2, @"FNCM_MaximumMediaBitrate"))
    {
      if (!a3 || (v21 = CFGetTypeID(a3), v21 != CFNumberGetTypeID()))
      {
        v22 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1086, v3);
        goto LABEL_54;
      }

      *(DerivedStorage + 56) = FigCFNumberGetUInt64();
    }

    else if (CFEqual(a2, @"FNCM_BufferingInProgress"))
    {
      if (!a3 || (v23 = CFGetTypeID(a3), v23 != CFBooleanGetTypeID()))
      {
        v25 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1098, v3);
        goto LABEL_54;
      }

      v24 = CFBooleanGetValue(a3);
      if (*(DerivedStorage + 64) == v24)
      {
        goto LABEL_16;
      }

      *(DerivedStorage + 64) = v24;
    }

    else if (CFEqual(a2, @"FNCM_FullThrottleDutyCycleRequested"))
    {
      if (!a3 || (v26 = CFGetTypeID(a3), v26 != CFBooleanGetTypeID()))
      {
        v27 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1107, v3);
        goto LABEL_54;
      }

      *(DerivedStorage + 65) = CFBooleanGetValue(a3);
    }

    else if (CFEqual(a2, @"FNCM_FullThrottleDutyCycleAllowable"))
    {
      if (!a3 || (v29 = CFGetTypeID(a3), v29 != CFBooleanGetTypeID()))
      {
        v30 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1116, v3);
        goto LABEL_54;
      }

      *(DerivedStorage + 66) = CFBooleanGetValue(a3);
    }

    else
    {
      if (!CFEqual(a2, @"FNCM_ItemInactive"))
      {
        if (!CFEqual(a2, @"FNCM_DisableHighSpeedHighPowerBuffering"))
        {
          v17 = 4294954512;
          goto LABEL_55;
        }

        if (a3)
        {
          v33 = CFGetTypeID(a3);
          if (v33 == CFBooleanGetTypeID())
          {
            *(DerivedStorage + 33) = CFBooleanGetValue(a3);
LABEL_10:
            figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(a1);
            goto LABEL_16;
          }
        }

        v34 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1135, v3);
LABEL_54:
        v17 = v14;
        goto LABEL_55;
      }

      if (!a3 || (v31 = CFGetTypeID(a3), v31 != CFBooleanGetTypeID()))
      {
        v32 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1125, v3);
        goto LABEL_54;
      }

      *(DerivedStorage + 67) = CFBooleanGetValue(a3);
    }

    figNetworkCostMonitorUpdateEstimatedMaximumDemandWithMutex(a1);
    goto LABEL_16;
  }

  if (!a3 || (v8 = CFGetTypeID(a3), v8 != CFNumberGetTypeID()))
  {
    v13 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 4294954516, "<<<< FigNetworkCostMonitor >>>>", 1059, v3);
    goto LABEL_54;
  }

  UInt64 = FigCFNumberGetUInt64();
  if (*(DerivedStorage + 20) != UInt64)
  {
    *(DerivedStorage + 20) = UInt64;
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = (v10 + 24);
    if (!*(v10 + 24))
    {
      v12 = v10;
      if (FigNetworkInterfaceIsLocal(*(v10 + 20)) && !*v11)
      {
        if (FigNWPathEvaluatorCreate(*MEMORY[0x1E695E480], 0, 0, sFigNetworkCostMonitorQueue, a1, figNetworkCostHandleNetworkPathEvaluatorUpdate, v11))
        {
          figNetworkCostSetProperty_cold_1();
        }

        else
        {
          figNetworkCostSetProperty_cold_2(v11, v12, a1);
        }
      }
    }

    goto LABEL_10;
  }

LABEL_16:
  v17 = 0;
LABEL_55:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutex()
{
  cf = 0;
  v2 = 0;
  FigSimpleMutexLock();
  CFBagApplyFunction(sFigNetworkCostMonitorBag, figNetworkCostMonitorUpdateGlobalEstimatedMaximumDemandWithMutexApplierFunc, &cf);
  if (v2 != sFigNetworkCostMonitorGlobalEstimatedMaximumDemand)
  {
    sFigNetworkCostMonitorGlobalEstimatedMaximumDemand = v2;
    FigNetworkInterfaceReporterReportEstimatedMaximumDemand(cf);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return FigSimpleMutexUnlock();
}

void figNetworkCostUpdateHighSpeedHighPowerAndCheckForChangesWithMutex(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigNetworkInterfaceIsCellular(*(DerivedStorage + 20)))
  {
    v3 = 1;
  }

  else
  {
    v3 = FigNetworkInterfaceIsLocal(*(DerivedStorage + 20)) && *(DerivedStorage + 32) != 0;
  }

  if (*(DerivedStorage + 18))
  {
    v4 = *(DerivedStorage + 33) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5 & v3;
  if (*(DerivedStorage + 16) != v6)
  {
    *(DerivedStorage + 16) = v6;
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = *(v7 + 8);
    if (v8)
    {
      v9.length = CFArrayGetCount(*(v7 + 8));
    }

    else
    {
      v9.length = 0;
    }

    v9.location = 0;

    CFArrayApplyFunction(v8, v9, figNetworkCostMonitorDispatchHighSpeedHighPowerFn, a1);
  }
}

void figNetworkCostUpdateConnectedInterfaceIsExpensiveWithMutex(void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 17) != a2)
  {
    *(DerivedStorage + 17) = a2;
    v5 = *(DerivedStorage + 8);
    if (v5)
    {
      v6.length = CFArrayGetCount(*(DerivedStorage + 8));
    }

    else
    {
      v6.length = 0;
    }

    v6.location = 0;

    CFArrayApplyFunction(v5, v6, figNetworkCostMonitorDispatchIsExpensiveFn, a1);
  }
}

uint64_t __copy_helper_block_e8_48n27_8_8_pa0_42070_0_pa0_24404_8(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

uint64_t figNetworkCostMonitorSetDelegate(const void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFGetAllocator(a1);
  if (!a2)
  {
    figNetworkCostMonitorSetDelegate_cold_2(&v26);
    return v26;
  }

  v10 = v9;
  v11 = MEMORY[0x19A8CC720](v9, 32, 0xE0040A7658912, 0);
  if (!v11)
  {
    figNetworkCostMonitorSetDelegate_cold_1(&v26);
    return v26;
  }

  v12 = v11;
  v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *v12 = v13;
  if (v13)
  {
    if (a3)
    {
      v12[1] = *a3;
      v12[2] = a3[1];
      if (*a3)
      {
        v15 = 0;
      }

      else
      {
        v15 = a3[1] == 0;
      }

      if (v15)
      {
        a4 = 0;
        v14 = 0;
      }

      else
      {
        if (a4)
        {
          dispatch_retain(a4);
        }

        else
        {
          a4 = FigDispatchQueueCreateWithPriority();
        }

        v14 = 1;
      }
    }

    else
    {
      a4 = 0;
      v14 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    v12[3] = a4;
    FigSimpleMutexLock();
    v16 = CMBaseObjectGetDerivedStorage();
    Count = CFArrayGetCount(*(v16 + 8));
    if (Count >= 1)
    {
      v18 = Count + 1;
      do
      {
        CFArrayGetValueAtIndex(*(v16 + 8), v18 - 2);
        v19 = FigCFWeakReferenceHolderCopyReferencedObject();
        v20 = v19;
        if (v19)
        {
          v21 = v19 == a2;
        }

        else
        {
          v21 = 1;
        }

        if (!v21 || (CFArrayRemoveValueAtIndex(*(v16 + 8), v18 - 2), v20))
        {
          CFRelease(v20);
        }

        --v18;
      }

      while (v18 > 1);
    }

    if (v14)
    {
      CFArrayAppendValue(*(DerivedStorage + 8), v12);
      figNetworkCostMonitorDispatchHighSpeedHighPowerFn(v12, a1);
    }

    else
    {
      figNetworkCostMonitorDispatchHighSpeedHighPowerFn(v12, a1);
      fscm_delegateEntryCFArrayReleaseCallBack(v10, v12);
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0, 0);
    v22 = v24;
    if (v24)
    {
      fscm_delegateEntryCFArrayReleaseCallBack(v10, v12);
    }
  }

  return v22;
}

void fscm_delegateEntryCFArrayReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[3];
  if (v4)
  {
    dispatch_release(v4);
    ptr[3] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t __FigNetworkCostMonitorGetClassID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigFairPlayMapFairPlayErrorToCPEError(uint64_t result)
{
  if ((result + 49999) >> 6 <= 0x7C)
  {
    if (result <= 0x5B20u)
    {
      if (result - 22939 > 0xD || ((1 << (result + 101)) & 0x3F87) == 0)
      {
        return 4294955130;
      }
    }

    else
    {
      if (result - 23329 < 8 || result - 23431 < 6)
      {
        return 4294955135;
      }

      if (result - 23531 >= 2)
      {
        return 4294955130;
      }
    }
  }

  return result;
}

uint64_t FigContentKeySessionStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigContentKeySessionStartServer_block_invoke;
  block[3] = &unk_1E74972F8;
  block[4] = &v3;
  if (FigContentKeySessionStartServer_sFigContentKeySessionServerSetupOnce != -1)
  {
    dispatch_once(&FigContentKeySessionStartServer_sFigContentKeySessionServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigContentKeySessionStartServer_block_invoke(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, fcks_server_handleRemoteSyncMessage, fcks_server_handleRemoteAsyncMessage);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v2 = FigXPCServerStart();
  }

  *(*(*(a1 + 32) + 8) + 24) = v2;
}

uint64_t FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return FigXPCServerAssociateObjectWithNeighborProcess();
      }

      else
      {
        FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_1(&v4);
        return v4;
      }
    }

    else
    {
      FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_2(&v5);
      return v5;
    }
  }

  else
  {
    FigContentKeySessionServerGetIDForSessionByAssociatingWithClientConnection_cold_3(&v6);
    return v6;
  }
}

void FigCFRelease_14(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *fcks_server_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fcks_server_finalize(uint64_t a1)
{
  FigXPCRelease();
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }
}

uint64_t fcks_server_registerServerClassOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_183(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return fcks_server_copySessionByObjectIDForConnection(v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_5_131(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{

  return fcks_server_copySessionByObjectIDForConnection(v3, v4, a3);
}

const __CFNumber *figIOMF_CFDictionaryGetInt(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (*MEMORY[0x1E695E4C0] != v3);
    }

    else if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *array_dict(const __CFArray *a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v3 = ValueAtIndex;
  v4 = CFGetTypeID(ValueAtIndex);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

const void *dictionary_dict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v3;
}

uint64_t RegisterFigCaptionBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionGetClassID_sRegisterFigCaptionBaseTypeOnce, RegisterFigCaptionBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigCaptionCreate(uint64_t a1, __int128 *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigCaptionCreate_cold_2(v18);
LABEL_15:
    v12 = LODWORD(v18[0]);
    goto LABEL_10;
  }

  if (!a4)
  {
    FigCaptionCreate_cold_1(v18);
    goto LABEL_15;
  }

  FigCaptionCreateMutable(a1, &cf);
  if (v7)
  {
    goto LABEL_16;
  }

  v8 = cf;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v9)
  {
LABEL_9:
    v12 = 4294954514;
    goto LABEL_10;
  }

  v7 = v9(v8, @"CaptionData", a3);
  if (v7)
  {
LABEL_16:
    v12 = v7;
    goto LABEL_10;
  }

  v10 = cf;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v11)
  {
    goto LABEL_9;
  }

  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v12 = v11(v10, v18);
  if (!v12)
  {
    *a4 = cf;
    return v12;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigCaptionCreateMutableCopy(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (!a2)
  {
    FigCaptionCreateMutableCopy_cold_2(v22);
    return LODWORD(v22[0]);
  }

  if (!a3)
  {
    FigCaptionCreateMutableCopy_cold_1(v22);
    return LODWORD(v22[0]);
  }

  *a3 = 0;
  FigCaptionCreateMutable(a1, &v20);
  v8 = v20;
  if (v7)
  {
    v14 = v7;
    goto LABEL_26;
  }

  cf = 0;
  v9 = @"TimeRange";
  v10 = *MEMORY[0x1E6961270];
  v22[0] = @"TimeRange";
  v22[1] = v10;
  v22[2] = 0;
  v11 = 1;
  while (1)
  {
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v12)
    {
LABEL_14:
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v3, v20);
LABEL_15:
      v14 = v17;
      goto LABEL_17;
    }

    v13 = v12(a2, v9, a1, &cf);
    v14 = v13;
    if (v13 != -12784)
    {
      break;
    }

LABEL_10:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v9 = v22[v11++];
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v13)
  {
    goto LABEL_14;
  }

  v15 = cf;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v17 = v16(v8, v9, v15);
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v14 = 4294954514;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  v8 = v20;
  if (!v14)
  {
    *a3 = v20;
    return v14;
  }

LABEL_26:
  if (v8)
  {
    CFRelease(v8);
  }

  return v14;
}

uint64_t FigCaptionCreateCopyWithNewTiming(uint64_t a1, uint64_t a2, __int128 *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a2)
  {
    FigCaptionCreateCopyWithNewTiming_cold_2(v15);
    return LODWORD(v15[0]);
  }

  if (!a4)
  {
    FigCaptionCreateCopyWithNewTiming_cold_1(v15);
    return LODWORD(v15[0]);
  }

  v6 = FigCaptionCreateMutableCopy(a1, a2, &cf);
  v7 = cf;
  if (v6)
  {
    v9 = v6;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    v9 = 4294954514;
    v7 = cf;
LABEL_8:
    if (!v7)
    {
      return v9;
    }

LABEL_9:
    CFRelease(v7);
    return v9;
  }

  v15[0] = v11;
  v15[1] = v12;
  v15[2] = v13;
  v9 = v8(v7, v15);
  v7 = cf;
  if (v9)
  {
    goto LABEL_8;
  }

  *a4 = cf;
  return v9;
}

uint64_t FigRemote_CreateMetadataPropertiesBinaryPListData(void *cf, uint64_t a2, uint64_t a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {

    JUMPOUT(0x19A8D2A70);
  }

  v7 = FigRemote_CopyMetadataItemWithLocaleAsCFString(a2, cf);
  v8 = v7;
  if (!v7)
  {
    v7 = cf;
  }

  v9 = MEMORY[0x19A8D2A70](v7, a2, a3);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void figRemote_ID3ConvertStringToURL(const __CFString *a1, const __CFString *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"text", 0) == kCFCompareEqualTo && (v6 = CFGetTypeID(a2), v6 == CFStringGetTypeID()) && (v7 = CFURLCreateWithString(*MEMORY[0x1E695E480], a2, 0)) != 0)
  {
    v8 = v7;
    CFDictionaryAddValue(a3, a1, v7);

    CFRelease(v8);
  }

  else
  {

    CFDictionaryAddValue(a3, a1, a2);
  }
}

void figRemote_ID3ConvertURLToString(const __CFString *a1, const void *a2, __CFDictionary *a3)
{
  if (CFStringCompare(a1, @"text", 0) == kCFCompareEqualTo)
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFURLGetTypeID())
    {
      v7 = CFURLCopyAbsoluteURL(a2);
      if (v7)
      {
        v8 = v7;
        v9 = CFURLGetString(v7);
        if (v9)
        {
          v10 = CFRetain(v9);
          CFRelease(v8);
          if (v10)
          {
            CFDictionaryAddValue(a3, a1, v10);

            CFRelease(v10);
            return;
          }
        }

        else
        {
          CFRelease(v8);
        }
      }
    }
  }

  CFDictionaryAddValue(a3, a1, a2);
}

uint64_t FigRemote_CreateMetadataBinaryPListData(const __CFArray *cf, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    FigRemote_CreateMetadataBinaryPListData_cold_1(&v32);
    return v32;
  }

  v4 = cf;
  if (!cf || (v5 = CFGetTypeID(cf), v5 != CFArrayGetTypeID()) || (Count = CFArrayGetCount(v4), v7 = *MEMORY[0x1E695E480], Count <= 0))
  {

    JUMPOUT(0x19A8D2A70);
  }

  v8 = Count;
  v28 = a3;
  v29 = 0;
  Value = 0;
  v10 = 0;
  v11 = 0;
  v30 = Count;
  v31 = v4;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v11);
    v13 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v14 = CFGetTypeID(ValueAtIndex);
      if (v14 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v13, @"items");
      }
    }

    if (!Value)
    {
      goto LABEL_33;
    }

    v15 = CFGetTypeID(Value);
    if (v15 != CFArrayGetTypeID())
    {
      goto LABEL_33;
    }

    v16 = CFArrayGetCount(Value);
    if (v16 < 1)
    {
      goto LABEL_33;
    }

    v17 = v16;
    Mutable = 0;
    for (i = 0; i != v17; ++i)
    {
      v20 = CFArrayGetValueAtIndex(Value, i);
      if (v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFDictionaryGetTypeID()))
      {
        v10 = FigRemote_CopyMetadataItemWithLocaleAsCFString(v7, v21);
        if (!v10)
        {
          continue;
        }
      }

      else if (!v10)
      {
        continue;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
    }

    v8 = v30;
    v4 = v31;
    if (Mutable)
    {
      if (CFArrayGetCount(Mutable) < 1)
      {
        v23 = Mutable;
        goto LABEL_32;
      }

      v23 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(v23, @"items", Mutable);
      v24 = CFDictionaryGetValue(v13, @"format");
      if (v24)
      {
        CFDictionaryAddValue(v23, @"format", v24);
      }

      CFRelease(Mutable);
      if (v23)
      {
        v25 = v29;
        if (!v29)
        {
          v25 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
        }

        v29 = v25;
        CFArrayAppendValue(v25, v23);
LABEL_32:
        CFRelease(v23);
      }
    }

LABEL_33:
    ++v11;
  }

  while (v11 != v8);
  v26 = MEMORY[0x19A8D2A70](v29, v7, v28);
  if (v29)
  {
    CFRelease(v29);
  }

  return v26;
}

uint64_t FigRemote_CreateBinaryPListDataFromMetadataItemArray(CFTypeRef cf, uint64_t *a2)
{
  v12 = 0;
  if (!a2)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_3(&v13);
    return v13;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFArrayGetTypeID()) || (Count = CFArrayGetCount(cf)) == 0)
  {
    v10 = 0;
    *a2 = 0;
    return v10;
  }

  v6 = Count;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_2(&v13);
    return v13;
  }

  v9 = Mutable;
  if (v6 > 0)
  {
    FigRemote_CreateBinaryPListDataFromMetadataItemArray_cold_1(cf, v7, v6, Mutable);
  }

  v10 = MEMORY[0x19A8D2A70](v9, v7, &v12);
  *a2 = v12;
  CFRelease(v9);
  return v10;
}

CFMutableDictionaryRef OUTLINED_FUNCTION_2_184()
{

  return CFDictionaryCreateMutableCopy(v1, 0, v0);
}

CFTypeID OUTLINED_FUNCTION_3_155(int a1, CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_5_132(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
}

void OUTLINED_FUNCTION_6_118(__CFDictionary *a1)
{

  CFDictionaryReplaceValue(a1, v1, v2);
}

const void *OUTLINED_FUNCTION_7_102()
{

  return CFDictionaryGetValue(v0, v1);
}

double figHapticPlayer_CF_init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void figHapticPlayer_CF_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t __FigHapticPlayerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticPlayerGetTypeID_cfTypeID = result;
  return result;
}

void *figHapticEngine_CF_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figHapticEngine_CF_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t __FigHapticEngineGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticEngineGetTypeID_cfTypeID = result;
  return result;
}

uint64_t FigHapticEngineCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v33 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (dword_1EAF17A18)
  {
    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    FigHapticEngineCreate_cold_5(cf);
LABEL_32:
    v22 = LODWORD(cf[0]);
    goto LABEL_24;
  }

  if (FigHapticEngineGetTypeID_nonce != -1)
  {
    FigHapticEngineCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticEngineCreate_cold_4(cf);
    goto LABEL_32;
  }

  v9 = Instance;
  v10 = objc_autoreleasePoolPush();
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    v22 = 4294948075;
LABEL_23:
    objc_autoreleasePoolPop(v10);
    CFRelease(v9);
    goto LABEL_24;
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    v22 = 4294948071;
    goto LABEL_23;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = v12(a2, @"FAS_AudioSessionID", *MEMORY[0x1E695E480], &v33);
  if (v14)
  {
    v22 = v14;
    goto LABEL_23;
  }

  v30 = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3)
  {
    FigHapticEngineCreate_cold_2(a3, v15);
  }

  *(v9 + 16) = [objc_alloc(MEMORY[0x1E695F570]) initWithAudioSessionID:FigCFNumberGetSInt32() options:v15 error:&v30];

  if (!*(v9 + 16))
  {
    FigHapticEngineCreate_cold_3(&v30, cf);
    v22 = LODWORD(cf[0]);
    goto LABEL_23;
  }

  cf[0] = 0;
  v16 = *(CMBaseObjectGetVTable() + 16);
  if (!v16)
  {
    goto LABEL_37;
  }

  v17 = *(v16 + 48);
  if (!v17)
  {
    goto LABEL_37;
  }

  if (v17(a2, *MEMORY[0x1E69AFCC0], v13, cf))
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_37;
  }

  v18 = FigCFEqual();
  v19 = cf[0];
  if (v18 || (v20 = FigCFEqual(), v19 = cf[0], v20))
  {
    v21 = 1;
    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v21 = FigCFEqual() != 0;
    v19 = cf[0];
    if (cf[0])
    {
LABEL_19:
      CFRelease(v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }
  }

  if (!v21)
  {
LABEL_37:
    *(v9 + 32) = 0;
    [*(v9 + 16) setAutoShutdownTimeout:5.0];
    [*(v9 + 16) setAutoShutdownEnabled:1];
    goto LABEL_38;
  }

LABEL_29:
  [*(v9 + 16) setHighPriority:1];
  *(v9 + 32) = 1;
  [*(v9 + 16) setPlaysHapticsOnly:1];
LABEL_38:
  v24 = *(v9 + 16);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FigHapticEngineCreate_block_invoke;
  v29[3] = &__block_descriptor_40_e8_v16__0q8l;
  v29[4] = v24;
  [v24 setStoppedHandler:v29];
  *(v9 + 24) = dispatch_queue_create("com.coremedia.hapticEngine", 0);
  objc_autoreleasePoolPop(v10);
  if (dword_1EAF17A18)
  {
    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v32;
    v27 = type;
    if (os_log_type_enabled(v25, type))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v34 = 136315394;
      v35 = "FigHapticEngineCreate";
      v36 = 2112;
      v37 = v9;
      _os_log_send_and_compose_impl(v28, 0, cf, 128, &dword_1962D5000, v25, v27, "<<< FigHapticEngine >>> %s: Created %@", &v34, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = 0;
  *a4 = v9;
LABEL_24:
  if (v33)
  {
    CFRelease(v33);
  }

  return v22;
}

double __FigHapticEngineCreate_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17A18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t FigHapticEngineStart(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigHapticEngineStart_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __FigHapticEngineStart_block_invoke(uint64_t a1)
{
  result = figHapticEngineStartOnActivityQueue(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t figHapticEngineStartOnActivityQueue(uint64_t a1)
{
  v3 = 0;
  dispatch_assert_queue_V2(*(a1 + 24));
  if ([*(a1 + 16) startAndReturnError:&v3])
  {
    return 0;
  }

  else
  {
    return [v3 code];
  }
}

uint64_t FigHapticPlayerCreate(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t *a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHapticPlayerCreate_cold_4(&block);
    return LODWORD(block.start.value);
  }

  if (!a3)
  {
    FigHapticPlayerCreate_cold_3(&block);
    return LODWORD(block.start.value);
  }

  if (FigHapticPlayerGetTypeID_nonce != -1)
  {
    FigHapticPlayerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticPlayerCreate_cold_2(&block);
    return LODWORD(block.start.value);
  }

  v8 = Instance;
  v43[0] = 0;
  start.value = 0;
  *&start.timescale = &start;
  start.epoch = 0x3052000000;
  v40 = __Block_byref_object_copy__13;
  v41 = __Block_byref_object_dispose__13;
  v42 = 0;
  duration.value = 0;
  *&duration.timescale = &duration;
  duration.epoch = 0x3052000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  v9 = objc_autoreleasePoolPush();
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (!FormatDescription)
  {
    goto LABEL_18;
  }

  v12 = DataBuffer;
  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1751216244 || !v12)
  {
    goto LABEL_18;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (MediaSubType == 1634230640)
  {
    HapticPatternDictionaryFromAppleHapticBBuf = FigCreateHapticPatternDictionaryFromAppleHapticBBuf(v12, v43, 0);
    goto LABEL_19;
  }

  if (MediaSubType == 1634230642)
  {
    HapticPatternDictionaryFromAppleHapticBBuf = FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf(v12, v43, 0);
    goto LABEL_19;
  }

  if (MediaSubType != 1651866234)
  {
    goto LABEL_18;
  }

  DataLength = CMBlockBufferGetDataLength(v12);
  if (!DataLength)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v15 = [MEMORY[0x1E695DF88] dataWithLength:DataLength];
  v16 = v15;
  if (!v15)
  {
LABEL_18:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, LODWORD(block.start.value), block.start.timescale);
LABEL_19:
    v17 = HapticPatternDictionaryFromAppleHapticBBuf;
    if (HapticPatternDictionaryFromAppleHapticBBuf)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v17 = CMBlockBufferCopyDataBytes(v12, 0, DataLength, [v15 mutableBytes]);
  if (v17)
  {
    goto LABEL_23;
  }

  v18 = v16;
LABEL_21:
  v20 = *(a3 + 24);
  block.start.value = MEMORY[0x1E69E9820];
  *&block.start.timescale = 3221225472;
  block.start.epoch = __createCHHapticPlayer_block_invoke;
  block.duration.value = &unk_1E74973A8;
  p_duration = &duration;
  p_start = &start;
  v34 = a3;
  *&block.duration.timescale = v43[0];
  block.duration.epoch = v18;
  dispatch_sync(v20, &block);
  v21 = *(*&duration.timescale + 40);
  if (v21)
  {
    [v21 code];
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, LODWORD(block.start.value), block.start.timescale);
    v17 = v29;
  }

  else
  {
    v17 = 0;
    *(v8 + 88) = *(*&start.timescale + 40);
  }

LABEL_23:
  objc_autoreleasePoolPop(v9);
  _Block_object_dispose(&duration, 8);
  _Block_object_dispose(&start, 8);
  if (v17 || !*(v8 + 88))
  {
    CFRelease(v8);
  }

  else
  {
    v22 = *(a3 + 24);
    if (v22)
    {
      dispatch_retain(v22);
    }

    *(v8 + 96) = v22;
    v23 = CMGetAttachment(a2, *MEMORY[0x1E6960560], 0);
    if (v23)
    {
      CMTimeMakeFromDictionary(&block.start, v23);
      epoch = block.start.epoch;
      *(v8 + 16) = *&block.start.value;
    }

    else
    {
      v25 = MEMORY[0x1E6960CC0];
      *(v8 + 16) = *MEMORY[0x1E6960CC0];
      epoch = *(v25 + 16);
    }

    *(v8 + 32) = epoch;
    CMSampleBufferGetOutputPresentationTimeStamp(&start, a2);
    CMSampleBufferGetOutputDuration(&duration, a2);
    CMTimeRangeMake(&block, &start, &duration);
    v17 = 0;
    v26 = *&block.duration.timescale;
    v27 = *&block.start.epoch;
    *(v8 + 40) = *&block.start.value;
    *(v8 + 56) = v27;
    *(v8 + 72) = v26;
    *a4 = v8;
  }

  return v17;
}

void sub_1968367B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 FigHapticPlayerGetOutputTimeRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v2;
  result = *(a1 + 72);
  *(a2 + 32) = result;
  return result;
}

void FigHapticPlayerSetIsMuted(uint64_t a1, char a2)
{
  v2 = *(a1 + 96);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigHapticPlayerSetIsMuted_block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_sync(v2, v3);
}

uint64_t FigHapticPlayerSetVolumeNow(uint64_t a1, float a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticPlayerSetVolumeNow_block_invoke;
  block[3] = &unk_1E74924C0;
  v6 = a2;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __FigHapticPlayerSetVolumeNow_block_invoke(uint64_t a1)
{
  v5 = 0;
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 48);
    if (([*(*(a1 + 40) + 88) setVolume:&v5 atTime:v2 error:0.0] & 1) == 0)
    {
      [v5 code];
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
      *(*(*(a1 + 32) + 8) + 24) = v3;
    }
  }
}

uint64_t FigHapticPlayerSetActiveChannelIndexNow(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticPlayerSetActiveChannelIndexNow_block_invoke;
  block[3] = &unk_1E747EC60;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __FigHapticPlayerSetActiveChannelIndexNow_block_invoke(void *a1)
{
  v4 = 0;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1[5] + 88) activateChannelByIndex:a1[6] atTime:&v4 error:0.0] & 1) == 0)
  {
    [v4 code];
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
    *(*(a1[4] + 8) + 24) = v2;
  }
}

uint64_t FigHapticEngineStartPlayerAtHostTimeWithOffset(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = *(a2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticEngineStartPlayerAtHostTimeWithOffset_block_invoke;
  block[3] = &unk_1E7497380;
  block[4] = &v13;
  block[5] = a1;
  block[6] = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  v5 = *a4;
  v12 = *(a4 + 2);
  v11 = v5;
  dispatch_sync(v4, block);
  v6 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t FigHapticPlayerPauseNow(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigHapticPlayerPauseNow_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __FigHapticPlayerPauseNow_block_invoke(uint64_t a1)
{
  v4 = 0;
  if (([*(*(a1 + 40) + 88) pauseAtTime:&v4 error:0.0] & 1) == 0 && objc_msgSend(v4, "code") != -4805)
  {
    [v4 code];
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
    *(*(*(a1 + 32) + 8) + 24) = v2;
  }
}

uint64_t FigHapticEngineStopPlayerNow(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHapticEngineStopPlayerNow_block_invoke;
  block[3] = &unk_1E747EC60;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __FigHapticEngineStopPlayerNow_block_invoke(void *a1)
{
  v8[22] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v3 = a1[5];
  v4 = *(v3 + 32);
  if (v4)
  {
    if (v4 == 2)
    {
      return result;
    }

    if (v4 == 1)
    {
      *(v3 + 32) = 2;
      [*(v3 + 16) stopWithCompletionHandler:&__block_literal_global_20];
      if (dword_1EAF17A18)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return result;
    }

    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17A10, 4294948032, "<<< FigHapticEngine >>>", 736, v1);
LABEL_10:
    *(*(a1[4] + 8) + 24) = v7;
    return result;
  }

  if (([*(a1[6] + 88) stopAtTime:v8 error:0.0] & 1) == 0 && objc_msgSend(v8[0], "code") != -4805)
  {
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17A10, [v8[0] code], "<<< FigHapticEngine >>>", 731, v1);
    goto LABEL_10;
  }

  return result;
}

void FigHapticPlayerSetPlaybackRate(uint64_t a1, double a2)
{
  v2 = *(a1 + 96);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __FigHapticPlayerSetPlaybackRate_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a1;
  *&v3[5] = a2;
  dispatch_sync(v2, v3);
}

uint64_t __FigHapticPlayerSetPlaybackRate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + 88) setPlaybackRate:v1];
}

void __createCHHapticPlayer_block_invoke(void *a1)
{
  v2 = (a1 + 4);
  if (a1[4])
  {
    v3 = [objc_alloc(MEMORY[0x1E695F5A0]) initWithDictionary:a1[4] error:*(a1[6] + 8) + 40];
    if (v3)
    {
      v4 = v3;
      *(*(a1[7] + 8) + 40) = [*(a1[8] + 16) createAdvancedPlayerWithPattern:v3 error:*(a1[6] + 8) + 40];
    }
  }

  else
  {
    v2 = (a1 + 5);
    v5 = a1[5];
    if (!v5)
    {
      return;
    }

    *(*(a1[7] + 8) + 40) = [*(a1[8] + 16) createAdvancedPlayerWithRingtoneData:v5 error:*(a1[6] + 8) + 40];
  }

  v6 = *v2;
}

uint64_t FigTestSupportHTTPRequestCreateFakeFromDisk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v18 = *(gFigTestSupportFakeFromDiskCallbacks + 8);
  if (!v18)
  {
    return 4294947485;
  }

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t FigTestSupportHTTPRequestUseFakeFromDisk(uint64_t a1)
{
  if (!FigTestSupportIsActive())
  {
    return 0;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 0;
  }

  v2 = *(gFigTestSupportFakeFromDiskCallbacks + 16);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigTestSupportHTTPRequestSessionNativeConnectionSendPingFakeFromDisk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v14 = *(gFigTestSupportFakeFromDiskCallbacks + 24);
  if (!v14)
  {
    return 4294947485;
  }

  return v14(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t FigTestSupportNetworkInterfaceGetFakeInterfacePropertiesIfPresent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigTestSupportIsActive())
  {
    return 0;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 0;
  }

  v6 = *(gFigTestSupportFakeFromDiskCallbacks + 32);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t FigTestSupportUnregisterNSHTTPRequestSession(uint64_t a1)
{
  if (!FigTestSupportIsActive())
  {
    return 4294947486;
  }

  if (!gFigTestSupportFakeFromDiskCallbacks)
  {
    return 4294947485;
  }

  v2 = *(gFigTestSupportFakeFromDiskCallbacks + 40);
  if (!v2)
  {
    return 4294947485;
  }

  return v2(a1);
}

uint64_t FigTestSupportInstallFakeFromDiskCallbacks(uint64_t a1)
{
  result = FigTestSupportIsAllowed();
  if (!result)
  {
    result = FigUserCrashWithMessage("This functionality is for testing internal devices only!");
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = a1;
LABEL_6:
  gFigTestSupportFakeFromDiskCallbacks = v3;
  return result;
}

uint64_t __FigVirtualDisplayPrefsAllowed_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  FigVirtualDisplayPrefsAllowed_allowed = result;
  return result;
}

CFTypeRef airPlayMediaSelection_copySelectedMediaArray(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 120);
  if (v2)
  {
LABEL_8:
    v5 = CFRetain(v2);
    goto LABEL_9;
  }

  if (!*(a1 + 104) || (v3 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0 || (v4 = v3, FigSimpleMutexUnlock(), v5 = (*(a1 + 104))(v4), FigSimpleMutexLock(), CFRelease(v4), !v5))
  {
    v2 = *(a1 + 128);
    if (!v2)
    {
      if (CFArrayGetCount(*(a1 + 112)) < 1)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v2 = *(a1 + 112);
    }

    goto LABEL_8;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigAirPlayMediaSelectionCreate(uint64_t cold_1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (FigAirPlayMediaSelectionCreate_initFigAirPlayTracOnceCheck != -1)
  {
    FigAirPlayMediaSelectionCreate_cold_1();
  }

  if (FigAirPlayMediaSelectionGetTypeID_sRegisterFigAirPlayMediaSelectionTypeOnce != -1)
  {
    FigAirPlayMediaSelectionCreate_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v9 = Instance;
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v9[12] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v9[14] = Mutable;
    if (Mutable && (v11 = FigSimpleMutexCreate(), (v9[3] = v11) != 0))
    {
      if (a4)
      {
        v9[13] = a4;
      }

      FigCFDictionaryGetDictionaryValue();
      FigCFDictionaryApplyBlock();
      result = 0;
      *a5 = v9;
    }

    else
    {
      CFRelease(v9);
      return 4294954434;
    }
  }

  else
  {
    FigAirPlayMediaSelectionCreate_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t __FigAirPlayMediaSelectionCreate_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __FigAirPlayMediaSelectionCreate_block_invoke_2(uint64_t result, const void *a2, const __CFBoolean *a3)
{
  if (a2)
  {
    if (a3)
    {
      return FigAirPlayMediaSelectionSetProperty(*(result + 32), a2, a3);
    }
  }

  return result;
}

uint64_t airPlayMediaSelection_copyAssetProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v17 = 0;
  v16 = 0;
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v8)
  {
LABEL_12:
    v10 = 4294954514;
    goto LABEL_13;
  }

  v9 = v8(v7, &cf);
  if (v9)
  {
    goto LABEL_21;
  }

  v10 = cf;
  if (!cf)
  {
LABEL_16:
    CFRelease(v7);
    goto LABEL_17;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v11)
  {
    goto LABEL_12;
  }

  v9 = v11(v10, a3, &v17);
  if (v9)
  {
LABEL_21:
    v10 = v9;
    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_13;
  }

  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    goto LABEL_12;
  }

  v10 = v14(v13, a3, a2, &v16);
  if (!v10 && v16)
  {
    v10 = 0;
    *a4 = v16;
    v16 = 0;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}